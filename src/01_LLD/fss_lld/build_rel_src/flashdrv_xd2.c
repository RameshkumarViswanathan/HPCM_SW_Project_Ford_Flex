/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief     External flash driver implementation
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2021 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2014-04-08  visrie  ESCAN00074478    Added support for external SPI driver
 *  02.01.00   2014-07-14  visrie  ESCAN00076704    Added support for N25Q128A, reworked module
 *                                 ESCAN00076811    Reworked SPI support defines
 *  02.02.00   2014-09-04  visrie  ESCAN00077064    Reworked SPI switches
 *  02.03.00   2014-10-28  visci   ESCAN00078936    Enabled support for S25FL256S
 *  02.04.00   2014-11-20  viscel  ESCAN00078845    Support of Quad Mode
 *                         visci   ESCAN00079404    Improved device configuration options
 *                         viscel  ESCAN00079475    Add support for S25FL512S
 *  03.00.00   2015-03-05  visfr   ESCAN00080101    No changes
 *                         viscel  ESCAN00080423    No changes
 *                         visawh  ESCAN00080631    No changes
 *                         visci   ESCAN00080707    Added support for S79FL512S and dual-quad mode
 *                         visci   ESCAN00081451    Adapted implementation for SPI driver interface version 2
 *  03.01.00   2015-03-19  visjhg  ESCAN00081920    Abort status polling in case of program or erase error
 *                         visjhg  ESCAN00081921    Added software reset and clear status register commands
 *  03.02.00   2015-10-16  visci   ESCAN00085816    Added dynamic device support
 *  05.00.00   2016-08-31  visci   ESCAN00091687    Adapted implementation for SPI driver interface version 3 and
 *                                                  extended dynamic device support
 *  05.01.00   2016-11-04  visci   ESCAN00092562    Activation of extended address mode not handled correctly
 *                                 ESCAN00092575    Flash block cannot be erased if overlapped by parameter sectors
 *  05.02.00   2017-05-23  visrie  ESCAN00095272    Added support for read-only flash driver
 *                                 ESCAN00093824    Added missing parameter
 *                                 ESCAN00093829    Fixed transfer length when sending ClearStatus command
 *                                 ESCAN00094465    Fixed error codes in erase and write function
 *  05.03.00   2017-08-04  visdod  ESCAN00095557    Flash driver init can cause undefined behavior
 *                                 ESCAN00095746    No changes
 *                                 ESCAN00096175    Incorrect usage may cause infinite loop that erases entire memory
 *  05.04.00   2017-08-31  visrie  ESCAN00096483    Limit read length to 16 bit per request
 *                                 ESCAN00096486    Evaluate command data mode
 *  05.04.01   2017-10-11  visrie  ESCAN00096953    Fixed compiler/linker error for FlashSpiBufferAddByte
 *  05.05.00   2018-03-14  visci   ESCAN00098008    No changes
 *                                 ESCAN00098743    Added support for devices without error flags
 *                                 ESCAN00095745    Incorrect instruction sequence used for opcode 0x65
 *  05.06.00   2018-05-04  visrie  ESCAN00099309    Added support for optional verification of written data
 *  05.07.00   2018-07-27  visci   ESCAN00100191    Flash block cannot be erased if overlapped by parameter sectors
 *                                 ESCAN00100192    No changes
 *  05.08.00   2019-03-29  visshs  ESCAN00102701    Make max. read size configurable
 *  05.08.01   2019-10-02  vistmo  ESCAN00104503    No changes
 *  05.09.00   2020-02-21  vistmo  ESCAN00105709    Added configurable read and write size
 *  05.10.00   2020-11-27  visrcn  FBL-2476         No changes
 *  05.11.00   2021-02-24  vistmo  FBL-2104         Add support for write enable for volatile registers
 *                                                  Added/adapted MemMap sections
 *  05.12.00   2021-10-20  visrie  FBL-4114         Update to MISRA-2012
 **********************************************************************************************************************/

#define FLASHDRV_XD2_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "flashdrv_xd2.h"
#include "flashdrv_xd2_cfg.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblDrvFlash_XStm25pxxEHis CQComponent : Implementation */
#if ( (FBLDRVFLASH_XD2_XSTM25PXXEHIS_VERSION != 0x0512u) || \
      (FBLDRVFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION != 0x00u) )
# error "Error in flashdrv_xd2.c: Source and header file versions are inconsistent!"
#endif

/* Interface version compatibility check */
#if ( FBLDRVSPI_VECTORIF_API_VERSION_MAJOR != 0x03u ) || \
    ( FBLDRVSPI_VECTORIF_API_VERSION_MINOR < 0x00u )
# error "Error in fbl_spi_<...>.c: Interface version compatibility check failed!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define FlashLookForWatchdog()            flashParam->wdTriggerFct()
#define FlashInvert8Bit(val)              FblInvert8Bit(val)


/* Flash signature / flash identification */
#define FLASH_ID_LENGTH                   0x03u

#define currentDeviceConfig               (flashDeviceSupport_XD2[flashDeviceIdx].deviceConfig)

#define FlashStatusCheckWip(devStatus)    (((devStatus) & FlashGetCfgRegMask(wipFlag)) != 0u)
#define FlashStatusCheckError(devStatus)  ((FLASH_XD2_REG_NA != FlashGetCfgRegIdx(errorFlags)) && \
                                           (((devStatus) & FlashGetCfgRegMask(errorFlags)) != 0u))

#define kFlashStatus_Ready                0u
#define kFlashStatus_Busy                 1u
#define kFlashStatus_Failure              2u

/* Macros for configuration structure access */
#define FlashGetRegAccessMode()           (currentDeviceConfig->registerSupport.regInfo & 0xF0u)
#define FlashGetRegCount()                (currentDeviceConfig->registerSupport.regInfo & 0x0Fu)
#define FlashGetRegReadCmd(regIdx)        (currentDeviceConfig->registerSupport.reg[regIdx].regParam1)
#define FlashGetRegStorage(regIdx)        (currentDeviceConfig->registerSupport.reg[regIdx].regParam2 & FLASH_XD2_REG_STORAGE_MSK)
#define FlashGetRegWren(regIdx)           (currentDeviceConfig->registerSupport.reg[regIdx].regParam2 & FLASH_XD2_REG_WREN_MSK)
#define FlashGetRegWriteCmd(regIdx)       (currentDeviceConfig->registerSupport.reg[regIdx].regParam3)
#define FlashGetRegWriteMask(regIdx)      (currentDeviceConfig->registerSupport.reg[regIdx].regParam4)
#define FlashGetRegAddress(regIdx)        (((tFlashUint32_XD2)(currentDeviceConfig->registerSupport.reg[regIdx].regParam1) << 24u) | \
                                           ((tFlashUint32_XD2)(currentDeviceConfig->registerSupport.reg[regIdx].regParam2) << 16u) | \
                                           ((tFlashUint32_XD2)(currentDeviceConfig->registerSupport.reg[regIdx].regParam3) <<  8u) | \
                                           ((tFlashUint32_XD2)(currentDeviceConfig->registerSupport.reg[regIdx].regParam4)))

#define FlashGetCfgType(cfg)              (currentDeviceConfig->configOptions.cfg.cfgType)
#define FlashGetCfgRegIdx(cfg)            (currentDeviceConfig->configOptions.cfg.cfgParam1)
#define FlashGetCfgRegMask(cfg)           (currentDeviceConfig->configOptions.cfg.cfgParam2)
#define FlashGetCfgRegValue(cfg)          (currentDeviceConfig->configOptions.cfg.cfgParam3)
#define FlashGetCfgCmd(cfg)               (currentDeviceConfig->configOptions.cfg.cfgParam1)
#define FlashGetCfgCmdModeAddr(cfg)       (((currentDeviceConfig->configOptions.cfg.cfgParam2 & 0xF0u) == 0x40u) ? FLASH_XD2_COM_MODE_QUAD : \
                                                                                                                   FLASH_XD2_COM_MODE_SINGLE)
#define FlashGetCfgCmdModeData(cfg)       (((currentDeviceConfig->configOptions.cfg.cfgParam2 & 0x0Fu) == 0x04u) ? FLASH_XD2_COM_MODE_QUAD : \
                                                                                                                   FLASH_XD2_COM_MODE_SINGLE)
#define FlashGetCfgCmdLatency(cfg)        (currentDeviceConfig->configOptions.cfg.cfgParam3)

/* Macros for device specific register manipulation */
#define FlashConfigIsDirty(cfgOpt)        ((configRegisters->reg[(cfgOpt)->cfgParam1].val & (cfgOpt)->cfgParam2) != (cfgOpt)->cfgParam3)
#define FlashConfigApply(cfgOpt)          { \
                                             configRegisters->reg[(cfgOpt)->cfgParam1].val = (configRegisters->reg[(cfgOpt)->cfgParam1].val & FlashInvert8Bit((cfgOpt)->cfgParam2)) | (cfgOpt)->cfgParam3; \
                                             configRegisters->reg[(cfgOpt)->cfgParam1].dirty = 1u; \
                                          }

/* Defines for flash configuration states */
#define kFlashConfig_QuadMode             FLASH_XD2_BIT0
#define kFlashConfig_LatencyCode          FLASH_XD2_BIT1
#define kFlashConfig_ExtAddressMode       FLASH_XD2_BIT2

#define FlashSetConfigState(s)            flashConfigStates |= (s)
#define FlashGetConfigState(s)            ((flashConfigStates & (s)) == (s))

#if ( FLASH_XD2_STACKED_DEVICE_COUNT == 1u )
/** Copy data bytes into SPI buffer (single device configuration) */
# define FlashSpiBufferAddByte_XD2(buf, cnt, byte)   {                          \
                                                         (buf)[*(cnt)] = (byte); \
                                                         (*(cnt))++;             \
                                                      }
#endif

/***********************************************************************************************************************
 *  LOCAL DATA TYPES AND STRUCTURES
 **********************************************************************************************************************/

# if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
# else
/* Flash header structure */
typedef struct
{
   /* Definition of the 4-byte flash algorithm header */
   tFlashUint8_XD2 version;
   tFlashUint8_XD2 reserved;
   tFlashUint8_XD2 maskType;
   tFlashUint8_XD2 CPUType;
   tFlashFct_XD2 flashInitFct;
   tFlashFct_XD2 flashDeinitFct;
   tFlashFct_XD2 flashEraseFct;
   tFlashFct_XD2 flashWriteFct;
   tFlashFct_XD2 flashReadFct;
} tFlashHeader;
# endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */

#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
/* Flash device specific configuration registers */
typedef struct
{
   tFlashUint8_XD2 val;            /**< Current register value */
   tFlashUint8_XD2 dirty;          /**< Dirty status (actual device config differs from driver config) */
} tFlashConfigRegister;

typedef struct
{
   tFlashConfigRegister reg[FLASH_XD2_MAX_DEVICE_REGISTERS]; /**< Keeps current device register values */
} tFlashConfigRegisters;
#endif /* FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */

#if  defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER ) && \
    !defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
#else
/* Data type used to store the flash device status */
typedef tFlashUint8_XD2 tFlashDeviceStatus;
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER && !FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */

/* Return type of local functions */
typedef tFlashUint8_XD2 tFlashResult;

typedef struct
{
   tFlashUint8_XD2 * buffer;
   tFlashUint16_XD2  length;
   tFlashUint8_XD2   mode;
} tFlashCmd;

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FLASHDRV_XD2_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

static tFlashResult  FlashSetCmd( const tFlashParam_XD2 * flashParam, tFlashOpCode_XD2 cmd, tFlashAddress_XD2 address );
static tFlashResult  FlashExecuteCmd( const tFlashParam_XD2 * flashParam, const tFlashCmd * flashCmd, tFlashUint8_XD2 flashCmdCnt );
static tFlashResult  FlashReadSignature( tFlashParam_XD2 * flashParam );
#if  defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER ) && \
    !defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
#else /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER && !FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */
static tFlashResult  FlashReadRegister( tFlashParam_XD2 * flashParam, tFlashUint8_XD2 regIdx, tFlashRegisterValue_XD2 * value );
static tFlashDeviceStatus FlashReadFlashStatus( tFlashParam_XD2 * flashParam );
static void          FlashWriteEnable( tFlashParam_XD2 * flashParam, tFlashOpCode_XD2 wrenCmd );
#endif
#if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
#else
static void          FlashPageProgram( tFlashParam_XD2 * flashParam, const tFlashData_XD2 * writeBuffer, tFlashLength_XD2 writeLength, tFlashAddress_XD2 writeAddress );
static void          FlashSectorErase( tFlashParam_XD2 * flashParam, tFlashAddress_XD2 sectorAddress, tFlashOpCode_XD2 eraseCmd );
static void          FlashBulkErase( tFlashParam_XD2 * flashParam );
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */
#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
static void          FlashWriteRegister( tFlashParam_XD2 * flashParam, tFlashUint8_XD2 regIdx, const tFlashRegisterValue_XD2 * regData, tFlashUint8_XD2 dataLen );
static void          FlashReadDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters );
static void          FlashModifyDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters, const tFlashConfigOption_XD2 * configOption );
static void          FlashWriteDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters );
static void          FlashDeviceConfig( tFlashParam_XD2 * flashParam );
#endif /* FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */
#if ( FLASH_XD2_STACKED_DEVICE_COUNT > 1u )
static void          FlashSpiBufferAddByte_XD2( tFlashUint8_XD2 * buf, tFlashUint8_XD2 * cnt, tFlashUint8_XD2 byte );
#endif
static void          FlashAssembleCmd( tFlashCmd * cmdParts, tFlashUint8_XD2 * cmdPartCnt,
                                       tFlashUint8_XD2 * dataBuf,  tFlashUint16_XD2 dataLen, tFlashUint8_XD2 mode );

#define FLASHDRV_XD2_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

# if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
# else
#  define FLASHDRV_XD2_FLASHHEADER_START_SEC_CONST
#  include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
const tFlashHeader flashHeader_XD2 =  /* PRQA S 3408 */ /* MD_FblDrvFlash_3408 */
{
   FLASH_DRIVER_XD2_VERSION_INTERFACE,
   0x00,
   FLASH_DRIVER_XD2_VERSION_MASKTYPE,
   FLASH_DRIVER_XD2_VERSION_MCUTYPE,
   &ExpFlashInit_XD2,
   &ExpFlashDeinit_XD2,
   &ExpFlashErase_XD2,
   &ExpFlashWrite_XD2,
   &ExpFlashRead_XD2
};
#  define FLASHDRV_XD2_FLASHHEADER_STOP_SEC_COST
#  include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
# endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#define FLASHDRV_XD2_START_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

static tFlashUint8_XD2 flashDeviceIdx;
#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
static tFlashUint8_XD2 flashConfigStates;
#endif

#define FLASHDRV_XD2_STOP_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

#define FLASHDRV_XD2_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  ExpFlashInit_XD2
 **********************************************************************************************************************/
/*! \brief         Initialization function
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
void ExpFlashInit_XD2( tFlashParam_XD2 * flashParam )
{
   /* Report actually used versions back to flio */
   flashParam->majorVersion = FLASH_DRIVER_XD2_VERSION_MAJOR;
   flashParam->minorVersion = FLASH_DRIVER_XD2_VERSION_MINOR;
   flashParam->patchLevel   = FLASH_DRIVER_XD2_VERSION_PATCH;

   flashParam->errorCode = kFlashOk_XD2;

   /* User Macro for special init settings */
   FLASH_XD2_USER_INIT();

   /* Initialize SPI bus here */
   if (kFblOk != flashParam->spiInitFct(FLASH_XD2_SPI_HANDLE_PARAM_ONLY))
   {
      /* Failed to setup the SPI bus properly */
      flashParam->errorCode = kFlashInitFailed_XD2;
   }
   else
   {
      /* Verify that the external chip is connected */
      if (kFlashOk_XD2 != FlashReadSignature(flashParam))
      {
         /* Failed to read signature */
         flashParam->errorCode = kFlashInitFailed_XD2;
      }
      else
      {
         /* Prepare SPI parameter structure */
         flashParam->spiParam.pTransmitBuffer = V_NULL;
         flashParam->spiParam.pReceiveBuffer = V_NULL;
         flashParam->spiParam.transferLength = 0u;

         if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(resetEnable))
         {
            /* Issue software reset enable command */
            (void)FlashSetCmd(flashParam, FlashGetCfgCmd(resetEnable), 0u);
         }

         if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(resetExecute))
         {
            /* Issue software reset command */
            (void)FlashSetCmd(flashParam, FlashGetCfgCmd(resetExecute), 0u);
         }

         if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(statusClear))
         {
            /* Clear status register, e.g. pending errors */
            (void)FlashSetCmd(flashParam, FlashGetCfgCmd(statusClear), 0u);
         }

#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
         /* Perform device configuration */
         FlashDeviceConfig(flashParam);
#endif
      }
   }
}

#if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
#else
/***********************************************************************************************************************
 *  ExpFlashErase_XD2
 **********************************************************************************************************************/
/*! \brief         Erase flash
 *  \pre           ExpFlashInit_XD2 has to be called before
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
void ExpFlashErase_XD2( tFlashParam_XD2 * flashParam )
{
   tFlashAddress_XD2 eraseAddress;
   tFlashLength_XD2  eraseLength, actualLength;

   /* Extract the address and length to be erased */
   eraseAddress = flashParam->address;
   eraseLength = flashParam->length;

   if ((eraseLength > currentDeviceConfig->deviceParam.memorySize) ||
       (eraseAddress > (currentDeviceConfig->deviceParam.memorySize - eraseLength)))
   {
      /* Either the length surpasses flash or the flash offset is wrong */
      flashParam->errorCode = kFlashEraseInvalidSize_XD2;
   }
   /* Verify address- and length alignment for erase */
   else if ((0u != (eraseAddress & (currentDeviceConfig->deviceParam.sectorSize - 1u))) ||
       (0u != (eraseLength & (currentDeviceConfig->deviceParam.sectorSize - 1u))))
   {
      /* Erase address/length is not aligned to sector size */
      flashParam->errorCode = kFlashEraseInvalidSize_XD2;
   }
   else
   {
      /* Satisfy MISRA */
   }

   if (kFlashOk_XD2 == flashParam->errorCode)
   {
      /* Pre-check already verified that erase range is inside flash device */
      if (currentDeviceConfig->deviceParam.memorySize == eraseLength)
      {
         FlashBulkErase(flashParam);
      }
      else /* Partial erase */
      {
         /* Check if a single sector is requested */
         if (eraseLength == currentDeviceConfig->deviceParam.sectorSize)
         {
            FlashSectorErase(flashParam, eraseAddress, FLASH_XD2_SE);
         }
         else
         {
            /* Erase request consists of one or more blocks */
            while (   (eraseLength > 0u)
                   && (kFlashOk_XD2 == flashParam->errorCode))
            {
               /* Calculate actual erase length (take unaligned start address into account) */
               actualLength = currentDeviceConfig->deviceParam.blockSize -
                              (eraseAddress & (currentDeviceConfig->deviceParam.blockSize - 1u));

               FlashSectorErase(flashParam, eraseAddress, FLASH_XD2_BE);

               /* Erase successful, so prepare next sector */
               eraseAddress += actualLength;
               eraseLength -= actualLength;
            }
         }
      }
   }
}

/***********************************************************************************************************************
 *  ExpFlashWrite_XD2
 **********************************************************************************************************************/
/*! \brief         Write to Flash memory.
 *  \pre           ExpFlashInit_XD2 has to be called before
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
void ExpFlashWrite_XD2( tFlashParam_XD2 * flashParam )
{
   tFlashAddress_XD2 pageEndAddress;
   tFlashLength_XD2 currentLength;
   tFlashLength_XD2 bufferIndex;
   const tFlashUint8_XD2 * writeBuffer;
   tFlashLength_XD2 writeLength;
   tFlashAddress_XD2 writeAddress;

   bufferIndex = 0u;

   writeBuffer = flashParam->data;
   writeLength = flashParam->length;
   writeAddress = flashParam->address;

   if ((writeLength > currentDeviceConfig->deviceParam.memorySize) ||
       (writeAddress > (currentDeviceConfig->deviceParam.memorySize - writeLength)))
   {
      /* Either the length surpasses flash or the flash offset is wrong */
      flashParam->errorCode = kFlashWriteInvalidSize_XD2;
      /* Set write length to zero to leave loop below immediately */
      writeLength = 0u;
   }

   while (writeLength > 0u)
   {
      currentLength = writeLength;

      /* Get the end address of the page where writeAddress belongs */
      pageEndAddress = ((writeAddress & (~((tFlashLength_XD2)(FLASH_PAGE_SIZE_XD2 - 1u)))) | (FLASH_PAGE_SIZE_XD2 - 1u));

      /* Check if data crosses page boundary */
      if ((writeAddress + currentLength) > pageEndAddress)
      {
         /* Adapt currentLength so that data belongs to the same page */
         currentLength = (pageEndAddress - writeAddress) + 1u;
      }

      /* Program data into the given address */
      FlashPageProgram(flashParam, &writeBuffer[bufferIndex], currentLength, writeAddress);

      if (kFlashOk_XD2 != flashParam->errorCode)
      {
         break;
      }

      /* Update write address to point to the not programmed data */
      writeAddress += currentLength;

      /* Check if any data is remaining */
      if (writeLength > currentLength)
      {
         /* Prepare bufferIndex for next loop */
         bufferIndex += currentLength;
         writeLength -= currentLength;
      }
      else
      {
         /* All data was programmed */
         writeLength = 0u;
      }
   }
}
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */

/***********************************************************************************************************************
 *  ExpFlashRead_XD2
 **********************************************************************************************************************/
/*! \brief         Read from Flash memory.
 *  \pre           ExpFlashInit_XD2 has to be called before
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
void ExpFlashRead_XD2( tFlashParam_XD2 * flashParam )
{
   tFlashUint8_XD2 * localReadBuffer;
   tFlashLength_XD2 localReadLength;
   tFlashLength_XD2 maxLength;
   tFlashAddress_XD2 localReadAddress;
   tFlashOpCode_XD2 readCmd;
   tFlashLength_XD2 currentLength;

   localReadBuffer = flashParam->data;
   localReadLength = flashParam->length;
   localReadAddress = flashParam->address;

   if ((localReadLength > currentDeviceConfig->deviceParam.memorySize) ||
       (localReadAddress > (currentDeviceConfig->deviceParam.memorySize - localReadLength)))
   {
      /* Either the length surpasses flash or the flash offset is wrong */
      flashParam->errorCode = kFlashFailed_XD2;
   }
   else
   {
      flashParam->errorCode = kFlashOk_XD2;

#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
      readCmd = FlashGetCfgCmd(quadRead);
#else
      readCmd = FLASH_XD2_READ;
#endif /* FLASH_XD2_ENABLE_QUAD_MODE */

      while (   (localReadLength > 0u)
             && (flashParam->errorCode == kFlashOk_XD2))
      {
         /* Limit current read length according to the capabilities of the used SPI driver */
#if (FLASH_XD2_READ_CHUNK_SIZE < FLASH_XD2_MAX_READ_LENGTH)
         maxLength = FLASH_XD2_READ_CHUNK_SIZE;
#else
         maxLength = FLASH_XD2_MAX_READ_LENGTH;
#endif

         if (localReadLength > maxLength)
         {
            currentLength = maxLength;
         }
         else
         {
            currentLength = localReadLength;
         }
         /* Initialize SPI parameter structure */  /* PRQA S 3225 2 */ /* MD_FblDrvFlash_2916_3225 */
         flashParam->spiParam.pTransmitBuffer = V_NULL;
         flashParam->spiParam.pReceiveBuffer = localReadBuffer;
         flashParam->spiParam.transferLength = (tFlashUint16_XD2)currentLength;

         /* Enter the instruction code for READ data */
         if (FlashSetCmd(flashParam, readCmd, localReadAddress) != kFblOk)
         {
            flashParam->errorCode = kFlashFailed_XD2;
         }

         /* Prepare parameters for next cycle */
         localReadLength  -= currentLength;
         localReadAddress += currentLength;
         localReadBuffer   = &localReadBuffer[currentLength];
      }
   }
}

/***********************************************************************************************************************
 *  ExpFlashDeinit_XD2
 **********************************************************************************************************************/
/*! \brief         Flash driver cleanup function
 *  \pre           ExpFlashInit_XD2 has to be called before
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
void ExpFlashDeinit_XD2( tFlashParam_XD2 * flashParam )
{
   /* User macro for special deinitialization settings */
   FLASH_XD2_USER_DEINIT();

   /* Prepare SPI parameter structure */
   flashParam->spiParam.pTransmitBuffer = V_NULL;
   flashParam->spiParam.pReceiveBuffer = V_NULL;
   flashParam->spiParam.transferLength = 0u;

   if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(resetEnable))
   {
      /* Issue software reset enable command */
      (void)FlashSetCmd(flashParam, FlashGetCfgCmd(resetEnable), 0u);
   }

   if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(resetExecute))
   {
      /* Issue software reset command */
      (void)FlashSetCmd(flashParam, FlashGetCfgCmd(resetExecute), 0u);
   }

   /* Disable SPI */
   flashParam->errorCode = flashParam->spiDeinitFct(FLASH_XD2_SPI_HANDLE_PARAM_ONLY);
}

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

#if ( FLASH_XD2_STACKED_DEVICE_COUNT > 1u )
/***********************************************************************************************************************
 *  FlashSpiBufferAddByte_XD2
 **********************************************************************************************************************/
/*! \brief         Wrap write access to SPI transfer buffer in order to support dual-quad mode
 *  \param[out]    buf Pointer to SPI buffer
 *  \param[in,out] cnt Current amount of data bytes in buffer
 *  \param[in]     byte Data byte to be written into SPI buffer
 **********************************************************************************************************************/
static void FlashSpiBufferAddByte_XD2( tFlashUint8_XD2 * buf, tFlashUint8_XD2 * cnt, tFlashUint8_XD2 byte )
{
   tFlashUint8_XD2 devId;
   for (devId = 0u; devId < FLASH_XD2_STACKED_DEVICE_COUNT; devId++)
   {
      buf[*cnt + devId] = byte;
   }

   /* Auto-increment element counter */
   *cnt += FLASH_XD2_STACKED_DEVICE_COUNT;
}
#endif

/***********************************************************************************************************************
 *  FlashAssembleCmd
 **********************************************************************************************************************/
/*! \brief         Store single command part (opcode, address or data) in command execution list
 *  \param[out]    cmdParts Pointer to command execution list
 *  \param[in,out] cmdPartCnt Number of elements in execution list
 *  \param[in]     dataBuf Pointer to data buffer which keeps the command part
 *  \param[in]     dataLen Length of command part
 *  \param[in]     mode Transfer mode which shall be used for the respective command part
 **********************************************************************************************************************/
static void FlashAssembleCmd( tFlashCmd * cmdParts, tFlashUint8_XD2 * cmdPartCnt,
                              tFlashUint8_XD2 * dataBuf,  tFlashUint16_XD2 dataLen, tFlashUint8_XD2 mode )
{
   cmdParts[*cmdPartCnt].buffer = dataBuf;
   cmdParts[*cmdPartCnt].length = dataLen;
   cmdParts[*cmdPartCnt].mode   = mode;
   (*cmdPartCnt)++;
}

/***********************************************************************************************************************
 *  FlashExecuteCmd
 **********************************************************************************************************************/
/*! \brief         Process command list and send the command to the device using the SPI driver
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     flashCmd List which contains all required command parts (opcode, optional address, optional data)
 *  \param[in]     flashCmdCnt Amount of command parts in list
 *  \return        Result of SPI transmission
 **********************************************************************************************************************/
static tFlashResult FlashExecuteCmd( const tFlashParam_XD2 * flashParam, const tFlashCmd * flashCmd, tFlashUint8_XD2 flashCmdCnt )
{
   tFblSpiTransferParam spiTransferParam;
   tFlashUint8_XD2 flashCmdIdx;
   tFlashResult result;

   result = kFblOk;

   FLASH_XD2_SET_CS();

   /* Process command list */
   for (flashCmdIdx = 0u; flashCmdIdx < flashCmdCnt; flashCmdIdx++)
   {
      /* Configure chip select handling */
      if (flashCmdCnt == 1u)
      {
         spiTransferParam.chipSelectMode = FBL_SPI_CHIP_SELECT_MODE_BOTH; /* Set and clear CS */
      }
      else if (flashCmdIdx == 0u)
      {
         spiTransferParam.chipSelectMode = FBL_SPI_CHIP_SELECT_MODE_SET;  /* Set CS */
      }
      else if (flashCmdIdx == (flashCmdCnt - 1u))
      {
         spiTransferParam.chipSelectMode = FBL_SPI_CHIP_SELECT_MODE_CLR;  /* Clear CS */
      }
      else
      {
         spiTransferParam.chipSelectMode = FBL_SPI_CHIP_SELECT_MODE_NONE; /* Keep CS active */
      }

      /* Configure data buffer */
      if ((flashCmd[flashCmdIdx].mode & FLASH_XD2_COM_MODE_TX) == FLASH_XD2_COM_MODE_TX)
      {
         spiTransferParam.pTransmitBuffer = flashCmd[flashCmdIdx].buffer;
         spiTransferParam.pReceiveBuffer = V_NULL;
      }
      else /* FLASH_COM_MODE_RX */
      {
         spiTransferParam.pTransmitBuffer = V_NULL;
         spiTransferParam.pReceiveBuffer = flashCmd[flashCmdIdx].buffer;
      }

      /* Set transfer length */
      spiTransferParam.transferLength = flashCmd[flashCmdIdx].length;

#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
      /* Set transfer mode */
      if ((flashCmd[flashCmdIdx].mode & FLASH_XD2_COM_MODE_QUAD) == FLASH_XD2_COM_MODE_QUAD)
      {
         if ((flashCmd[flashCmdIdx].mode & FLASH_XD2_COM_MODE_TX) == FLASH_XD2_COM_MODE_TX)
         {
            (void)flashParam->spiSetTransferModeFct(FLASH_XD2_SPI_HANDLE_PARAM_FIRST FBL_SPI_TRANSFER_MODE_QUAD_TX);
         }
         else /* FLASH_XD2_COM_MODE_RX */
         {
            (void)flashParam->spiSetTransferModeFct(FLASH_XD2_SPI_HANDLE_PARAM_FIRST FBL_SPI_TRANSFER_MODE_QUAD_RX);
         }
      }
      else /* FLASH_XD2_COM_MODE_SINGLE */
      {
         (void)flashParam->spiSetTransferModeFct(FLASH_XD2_SPI_HANDLE_PARAM_FIRST FBL_SPI_TRANSFER_MODE_SINGLE);
      }
#endif /* FLASH_XD2_ENABLE_QUAD_MODE */

      /* Set polling function */
      spiTransferParam.pollingFct = (tFblSpiPollingFct)(flashParam->wdTriggerFct);  /* PRQA S 0313 */ /* MD_FblDrvFlash_0313 */

      /* Initiate SPI transfer */
      result = flashParam->spiTransferSyncFct(FLASH_XD2_SPI_HANDLE_PARAM_FIRST &spiTransferParam);

      if (kFblOk != result)
      {
         break;
      }
   }

   FLASH_XD2_CLR_CS();

   return result;
}

/***********************************************************************************************************************
 *  FlashSetCmd
 **********************************************************************************************************************/
/*! \brief         Set a specific SPI command
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     cmd Command to be placed on SPI
 *  \param[in]     address Address to be placed on SPI
 *  \return        result of transmission
 **********************************************************************************************************************/
/* PRQA S 6010, 6030 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC */
static tFlashResult FlashSetCmd( const tFlashParam_XD2 * flashParam, tFlashOpCode_XD2 cmd, tFlashAddress_XD2 address )
{
   tFlashUint8_XD2 spiCmdBuffer[1u * FLASH_XD2_STACKED_DEVICE_COUNT];
   tFlashUint8_XD2 spiCmdLength;
   tFlashUint8_XD2 spiAddrBuffer[(4u + FLASH_XD2_MAX_DUMMY_BYTES) * FLASH_XD2_STACKED_DEVICE_COUNT];
   tFlashUint8_XD2 spiAddrLength;
   tFlashUint8_XD2 transferMode;
   tFlashUint8_XD2 * transferBuffer;
   tFlashCmd flashCmd[3u];
   tFlashUint8_XD2 flashCmdCnt;
   tFlashOpCode_XD2 readCmd, progCmd;
   tFlashUint8_XD2 readLatencyBytes;
   tFlashAddress_XD2 localAddress;

   /* Initialize local variables */
   spiCmdLength = 0u;
   spiAddrLength = 0u;
   flashCmdCnt = 0u;
   transferMode = FLASH_XD2_COM_MODE_SINGLE;
#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
   readCmd = FlashGetCfgCmd(quadRead);
   progCmd = FlashGetCfgCmd(quadPageProgram);
#else
   readCmd = FLASH_XD2_READ;
   progCmd = FLASH_XD2_PP;
#endif /* FLASH_XD2_ENABLE_QUAD_MODE */
   localAddress = address;

   /* Insert command byte */
   FlashSpiBufferAddByte_XD2(spiCmdBuffer, &spiCmdLength, cmd);
   FlashAssembleCmd(flashCmd, &flashCmdCnt, spiCmdBuffer, spiCmdLength, FLASH_XD2_COM_MODE_SINGLE | FLASH_XD2_COM_MODE_TX);

   /* Insert address information after command */
   if ((FLASH_XD2_SE == cmd) || (FLASH_XD2_BE == cmd) || (readCmd == cmd) || (progCmd == cmd) ||
       ((FlashGetRegAccessMode() == FLASH_XD2_REG_ACCESS_ADDRESS) && ((FLASH_XD2_RDAR == cmd) || (FLASH_XD2_WRAR == cmd))))
   {
#if (FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
      /* Dual-quad mode: adapt address for word access */
      localAddress >>= 1u;
      /* Note: length stays the same because SPI driver works byte-wise */
#endif
#if defined( FLASH_XD2_ENABLE_4_BYTE_ADDRESSING )
      if (FlashGetConfigState(kFlashConfig_ExtAddressMode))
      {
         FlashSpiBufferAddByte_XD2(spiAddrBuffer, &spiAddrLength, (tFlashUint8_XD2)((localAddress >> 24u)));
      }
#endif
      FlashSpiBufferAddByte_XD2(spiAddrBuffer, &spiAddrLength, (tFlashUint8_XD2)((localAddress >> 16u)));
      FlashSpiBufferAddByte_XD2(spiAddrBuffer, &spiAddrLength, (tFlashUint8_XD2)((localAddress >>  8u)));
      FlashSpiBufferAddByte_XD2(spiAddrBuffer, &spiAddrLength, (tFlashUint8_XD2)((localAddress)));

      /* Insert dummy cycles if required (read latency) */
      if (readCmd == cmd)
      {
#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
         readLatencyBytes = FlashGetCfgCmdLatency(quadRead);
#else
         readLatencyBytes = FLASH_XD2_READ_LATENCY;
#endif
      }
      else if (FLASH_XD2_RDAR == cmd)
      {
         readLatencyBytes = FLASH_XD2_RDAR_LATENCY;
      }
      else
      {
         readLatencyBytes = 0u;
      }

      while (readLatencyBytes > 0u)
      {
         FlashSpiBufferAddByte_XD2(spiAddrBuffer, &spiAddrLength, 0x00u);
         readLatencyBytes--;
      }

#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
      /* Set transfer mode according to configuration structure */
      if (readCmd == cmd)
      {
         transferMode = FlashGetCfgCmdModeAddr(quadRead);
      }
      if (progCmd == cmd)
      {
         transferMode = FlashGetCfgCmdModeAddr(quadPageProgram);
      }
#endif /* FLASH_XD2_ENABLE_QUAD_MODE */

      FlashAssembleCmd(flashCmd, &flashCmdCnt, spiAddrBuffer, spiAddrLength, transferMode | FLASH_XD2_COM_MODE_TX);
   }

   /* Check if there is any additional data to be sent or received */
   if (flashParam->spiParam.transferLength > 0u)
   {
#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
      /* Set transfer mode according to configuration structure */
      if (readCmd == cmd)
      {
         transferMode = FlashGetCfgCmdModeData(quadRead);
      }
      if (progCmd == cmd)
      {
         transferMode = FlashGetCfgCmdModeData(quadPageProgram);
      }
#endif

      if (flashParam->spiParam.pTransmitBuffer != V_NULL)
      {
         transferBuffer = (vuint8*)flashParam->spiParam.pTransmitBuffer; /* PRQA S 0311 */ /* MD_FblDrvFlash_0311 */
         transferMode |= FLASH_XD2_COM_MODE_TX;
      }
      else
      {
         transferBuffer = flashParam->spiParam.pReceiveBuffer;
         transferMode |= FLASH_XD2_COM_MODE_RX;
      }

      FlashAssembleCmd(flashCmd, &flashCmdCnt, transferBuffer, flashParam->spiParam.transferLength, transferMode);
   }

   return FlashExecuteCmd(flashParam, flashCmd, flashCmdCnt);
}

#if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
#else
/***********************************************************************************************************************
 *  FlashPageProgram
 **********************************************************************************************************************/
/*! \brief         Program an external flash page (1-256 bytes)
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     writeBuffer Data to be written
 *  \param[in]     writeLength Number of bytes to be written
 *  \param[in]     writeAddress Target address of data to be written
 **********************************************************************************************************************/
/* PRQA S 6030 1 */ /* MD_MSR_STCYC */
static void FlashPageProgram( tFlashParam_XD2 * flashParam, const tFlashData_XD2 * writeBuffer, tFlashLength_XD2 writeLength, tFlashAddress_XD2 writeAddress )
{
   tFlashDeviceStatus statusByte;
   tFlashResult result;
   tFlashLength_XD2 localWriteLength;
   tFlashLength_XD2 currWriteLength;
   tFlashAddress_XD2 localWriteOffset;
# if defined( FLASH_XD2_ENABLE_WRITE_VERIFICATION )
   tFlashLength_XD2 spiReadLength;
   tFlashLength_XD2 readPos, i;
   tFlashOpCode_XD2 readCmd;
# endif /* FLASH_XD2_ENABLE_WRITE_VERIFICATION */
   tFlashOpCode_XD2 progCmd;

# if defined( FLASH_XD2_ENABLE_QUAD_MODE )
   progCmd = FlashGetCfgCmd(quadPageProgram);
# else
   progCmd = FLASH_XD2_PP;
# endif /* FLASH_XD2_ENABLE_QUAD_MODE */

   localWriteLength = writeLength;
   localWriteOffset = 0u;

   flashParam->errorCode = kFlashOk_XD2;

   while ( (localWriteLength > 0u) && (kFlashOk_XD2 == flashParam->errorCode) )
   {
      /* Set the Write Enable Latch prior to programming */
      FlashWriteEnable(flashParam, FLASH_XD2_WREN);

      if (kFlashOk_XD2 == flashParam->errorCode)
      {
         if (localWriteLength > FLASH_XD2_WRITE_CHUNK_SIZE)
         {
            currWriteLength = FLASH_XD2_WRITE_CHUNK_SIZE;
         }
         else
         {
            currWriteLength = localWriteLength;
         }

         /* Setting up the current transfer */
         flashParam->spiParam.pTransmitBuffer = &writeBuffer[localWriteOffset];
         flashParam->spiParam.pReceiveBuffer = V_NULL;
         flashParam->spiParam.transferLength = (tFlashUint16_XD2)currWriteLength;

         /* Enter the instruction code */
         result = FlashSetCmd(flashParam, progCmd, writeAddress + localWriteOffset);

         if (result == kFblOk)
         {
            do
            {
               /* Wait until flash programming operation has been finished */
               (void)FlashLookForWatchdog();
               statusByte = FlashReadFlashStatus(flashParam);
            }
            while (   (kFlashStatus_Busy == statusByte)
                   && (kFlashOk_XD2 == flashParam->errorCode));

            if (kFlashStatus_Failure == statusByte)
            {
               flashParam->errorCode = kFlashWriteFailed_XD2;
            }
         }
         else
         {
            flashParam->errorCode = kFlashWriteFailed_XD2;
         }

         localWriteLength -= currWriteLength;
         localWriteOffset += currWriteLength;
      }
   }

# if defined( FLASH_XD2_ENABLE_WRITE_VERIFICATION )
#  if defined( FLASH_XD2_ENABLE_QUAD_MODE )
   readCmd = FlashGetCfgCmd(quadRead);
#  else
   readCmd = FLASH_XD2_READ;
#  endif /* FLASH_XD2_ENABLE_QUAD_MODE */

   readPos = 0u;
   while (   (readPos < writeLength)
          && (kFlashOk_XD2 == flashParam->errorCode))
   {
      /* Get remaining length to verify */
      spiReadLength = ((writeLength - readPos) < flashParam->readBufferLength) ? (writeLength - readPos) : flashParam->readBufferLength;

      /* Verify Data */
      /* Initialize SPI parameter structure */  /* PRQA S 3225 2 */ /* MD_FblDrvFlash_2916_3225 */
      flashParam->spiParam.pTransmitBuffer = V_NULL;
      flashParam->spiParam.pReceiveBuffer = flashParam->readBuffer;
      flashParam->spiParam.transferLength = (tFlashUint16_XD2)spiReadLength;

      /* Enter the instruction code for READ data */
      result = FlashSetCmd(flashParam, readCmd, writeAddress + readPos);

      if (result != kFblOk)
      {
         flashParam->errorCode = kFlashWriteVerify_XD2;
      }
      else
      {
         for (i = 0u; i < spiReadLength; i++ )
         {
            if (flashParam->readBuffer[i] != writeBuffer[i + readPos])
            {
               /* Initialize error return parameters */
               flashParam->intendedData[0] = (tFlashData_XD2)writeBuffer[i + readPos];
               flashParam->actualData[0]   = (tFlashData_XD2)flashParam->readBuffer[i];
               flashParam->errorAddress    = (tFlashAddress_XD2)(writeAddress + readPos + i);

               flashParam->errorCode = kFlashWriteVerify_XD2;
               break;
            }
         }
         (void)FlashLookForWatchdog();
         readPos += spiReadLength;
      }
   }
# endif /* FLASH_XD2_ENABLE_WRITE_VERIFICATION */
}

/***********************************************************************************************************************
 *  FlashSectorErase
 **********************************************************************************************************************/
/*! \brief         Erase a sector in external flash memory
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     sectorAddress Address of sector to be erased
 *  \param[in]     eraseCmd Erase command to be used
 **********************************************************************************************************************/
static void FlashSectorErase( tFlashParam_XD2 * flashParam, tFlashAddress_XD2 sectorAddress, tFlashOpCode_XD2 eraseCmd )
{
   tFlashDeviceStatus statusByte;
   tFlashResult result;

   /* Set the Write Enable Latch prior to programming */
   FlashWriteEnable(flashParam, FLASH_XD2_WREN);

   if (flashParam->errorCode == kFlashOk_XD2)
   {
      flashParam->spiParam.pTransmitBuffer = V_NULL;
      flashParam->spiParam.pReceiveBuffer = V_NULL;
      flashParam->spiParam.transferLength = 0u;

      /* Enter the instruction code for sector erase */
      result = FlashSetCmd(flashParam, eraseCmd, sectorAddress);

      if (result == kFblOk)
      {
         do
         {
            /* Wait until flash erase operation has been finished */
            (void)FlashLookForWatchdog();
            statusByte = FlashReadFlashStatus(flashParam);
         }
         while (   (kFlashStatus_Busy == statusByte)
                && (kFlashOk_XD2 == flashParam->errorCode));

         if (kFlashStatus_Failure == statusByte)
         {
            flashParam->errorCode = kFlashEraseFailed_XD2;
         }
      }
      else
      {
         flashParam->errorCode = kFlashEraseFailed_XD2;
      }
   }
}

/***********************************************************************************************************************
 *  FlashBulkErase
 **********************************************************************************************************************/
/*! \brief         Erase all sectors of external flash
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
static void FlashBulkErase( tFlashParam_XD2 * flashParam )
{
   tFlashDeviceStatus statusByte;
   tFlashResult result;

   /* Set the Write Enable Latch prior to programming*/
   FlashWriteEnable(flashParam, FLASH_XD2_WREN);

   flashParam->spiParam.pTransmitBuffer = V_NULL;
   flashParam->spiParam.pReceiveBuffer = V_NULL;
   flashParam->spiParam.transferLength = 0u;

   /* Enter the instruction code for bulk erase */
   result = FlashSetCmd(flashParam, FLASH_XD2_BU, 0u);

   if (result == kFblOk)
   {
      do
      {
         /* Wait until flash erase operation has been finished */
         (void)FlashLookForWatchdog();
         statusByte = FlashReadFlashStatus(flashParam);
      }
      while (   (kFlashStatus_Busy == statusByte)
             && (kFlashOk_XD2 == flashParam->errorCode));

      if (kFlashStatus_Failure == statusByte)
      {
         flashParam->errorCode = kFlashEraseFailed_XD2;
      }
   }
   else
   {
      flashParam->errorCode = kFlashEraseFailed_XD2;
   }
}
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */

#if  defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER ) && \
    !defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
#else
/***********************************************************************************************************************
 *  FlashReadRegister
 **********************************************************************************************************************/
/*! \brief         Read current register value
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     regIdx Index of register as defined in the configuration structure
 *  \param[out]    value Value of status register
 *  \return        Operation result
 **********************************************************************************************************************/
static tFlashResult FlashReadRegister( tFlashParam_XD2 * flashParam, tFlashUint8_XD2 regIdx, tFlashRegisterValue_XD2 * value )
{
   tFlashResult result;
   tFlashOpCode_XD2 cmd;
   tFlashAddress_XD2 regAddr;

   /* Determine access mode */
   if (FlashGetRegAccessMode() == FLASH_XD2_REG_ACCESS_EXPLICIT)
   {
      /* Extract read command for this register */
      cmd = FlashGetRegReadCmd(regIdx);
      regAddr = 0u;
   }
   else
   {
      /* Address-based access mode: use fixed read command */
      cmd = FLASH_XD2_RDAR;
      regAddr = FlashGetRegAddress(regIdx);
   }

   /* Initialize SPI parameter structure */  /* PRQA S 2916 2 */ /* MD_FblDrvFlash_2916_3225 */
   flashParam->spiParam.pTransmitBuffer = V_NULL;
   flashParam->spiParam.pReceiveBuffer = value;
   flashParam->spiParam.transferLength = FLASH_XD2_STACKED_DEVICE_COUNT; /* One status byte per device */

   /* Enter the instruction code to read the register */
   result = FlashSetCmd(flashParam, cmd, regAddr);

   if (result != kFblOk)
   {
      flashParam->errorCode = kFlashFailed_XD2;
   }

   return result;
}
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER && !FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */

#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
/***********************************************************************************************************************
 *  FlashWriteRegister
 **********************************************************************************************************************/
/*! \brief         Write hardware register(s)
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in]     regIdx Index of register as defined in the configuration structure
 *  \param[in]     regData Data to be written into the register(s)
 *  \param[in]     dataLen Length of the passed data
 **********************************************************************************************************************/
static void FlashWriteRegister( tFlashParam_XD2 * flashParam, tFlashUint8_XD2 regIdx, const tFlashRegisterValue_XD2 * regData, tFlashUint8_XD2 dataLen )
{
   tFlashResult result;
   tFlashDeviceStatus statusByte;
   tFlashOpCode_XD2 cmd;
   tFlashAddress_XD2 regAddr;

   flashParam->errorCode = kFlashOk_XD2;

   /* Remove protection */
   /* [Winbond] [Cypress] Switch write operation to volatile instance of register
    * (perform config changes quickly and without affecting the NV register bit endurance)
    */
   if ((FlashGetRegAccessMode()    == FLASH_XD2_REG_ACCESS_EXPLICIT) &&
       (FlashGetRegWren(regIdx)    == FLASH_XD2_REG_WEV))
   {
      FlashWriteEnable(flashParam, FLASH_XD2_WRENV);
   }
   else
   {
      FlashWriteEnable(flashParam, FLASH_XD2_WREN);
   }

   /* Determine access mode */
   if (FlashGetRegAccessMode() == FLASH_XD2_REG_ACCESS_EXPLICIT)
   {
      /* Extract read command for this register */
      cmd = FlashGetRegWriteCmd(regIdx);
      regAddr = 0u;
   }
   else
   {
      /* Address-based access mode: use fixed read command */
      cmd = FLASH_XD2_WRAR;
      regAddr = FlashGetRegAddress(regIdx);
   }

   /* Initialize SPI parameter structure */  /* PRQA S 2916 2 */ /* MD_FblDrvFlash_2916_3225 */
   flashParam->spiParam.pTransmitBuffer = regData;
   flashParam->spiParam.pReceiveBuffer = V_NULL;
   flashParam->spiParam.transferLength = dataLen;

   /* Enter the instruction code to write the configuration register (CR1) */
   result = FlashSetCmd(flashParam, cmd, regAddr);

   if (result == kFblOk)
   {
      do
      {
         /* Wait until register write operation has been finished */
         (void)FlashLookForWatchdog();
         statusByte = FlashReadFlashStatus(flashParam);
      }
      while (   (kFlashStatus_Busy == statusByte)
             && (kFlashOk_XD2 == flashParam->errorCode));

      if (kFlashStatus_Failure == statusByte)
      {
         flashParam->errorCode = kFlashFailed_XD2;
      }
   }
   else
   {
      flashParam->errorCode = kFlashFailed_XD2;
   }
}

/***********************************************************************************************************************
 *  FlashReadDeviceConfig
 **********************************************************************************************************************/
/*! \brief         Retrieve the current device configuration (hardware specific)
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[out]    configRegisters Structure in which the values of the registers are returned
 **********************************************************************************************************************/
static void FlashReadDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters )
{
   tFlashResult result;
   tFlashRegisterValue_XD2 regVal[FLASH_XD2_STACKED_DEVICE_COUNT];
   tFlashUint8_XD2 regIdx;

   flashParam->errorCode = kFlashOk_XD2;

   /* Iterate over all registers which are defined in the configuration structure */
   for (regIdx = 0u; regIdx < FlashGetRegCount(); regIdx++)
   {
      /* Read register */
      result = FlashReadRegister(flashParam, regIdx, regVal);

      if (result == kFblOk)
      {
         /* Device count > 1: Use value from first flash device, discard others */
         configRegisters->reg[regIdx].val = regVal[0u];
      }
      else
      {
         /* Inform calling instance about read error */
         flashParam->errorCode = kFlashFailed_XD2;
         break;
      }
   }
}

/***********************************************************************************************************************
 *  FlashModifyDeviceConfig
 **********************************************************************************************************************/
/*! \brief         Modify the device configuration structure (hardware specific)
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in,out] configRegisters Structure containing the current values of the registers which shall be written
 *  \param[in]     configOption Pointer to configuration option parameters (type, related register, mask & value)
 **********************************************************************************************************************/
static void FlashModifyDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters, const tFlashConfigOption_XD2 * configOption )
{
   /* Proceeding depends on the configuration type */
   switch (configOption->cfgType)
   {
      case FLASH_XD2_CFG_REG:
      {
         /* Modify register to enable the configuration option */
         if (FLASH_XD2_REG_NA != configOption->cfgParam1)
         {
            if (FlashConfigIsDirty(configOption))
            {
               /* Pre-set intended register value */
               FlashConfigApply(configOption);

               /* Write new configuration to the device */
               FlashWriteDeviceConfig(flashParam, configRegisters);
            }
         }
         else
         {
            /* Register index n/a: inconsistency between feature configuration and configuration structure */
            flashParam->errorCode = kFlashInitInvalidConfig_XD2;
         }
         break;
      }
      case FLASH_XD2_CFG_CMD:
      {
         /* Enable configuration option via explicit command */
         if (FLASH_XD2_CMD_NA != configOption->cfgParam1)
         {
            /* Prepare SPI parameter structure */
            flashParam->spiParam.pTransmitBuffer = V_NULL;
            flashParam->spiParam.pReceiveBuffer = V_NULL;
            flashParam->spiParam.transferLength = 0u;

            /* Send command to enable configuration */
            (void)FlashSetCmd(flashParam, configOption->cfgParam1, 0u);
         }
         else
         {
            /* Command opcode n/a: inconsistency between feature configuration and configuration structure */
            flashParam->errorCode = kFlashInitInvalidConfig_XD2;
         }
         break;
      }
      default: /* CFG_NA */
      {
         /* Configuration not supported: inconsistency between feature configuration and configuration structure */
         flashParam->errorCode = kFlashInitInvalidConfig_XD2;
         break;
      }
   }
}

/***********************************************************************************************************************
 *  FlashWriteDeviceConfig
 **********************************************************************************************************************/
/*! \brief         Write the intended device configuration (hardware specific)
 *  \param[in,out] flashParam Flash parameter handle
 *  \param[in,out] configRegisters Structure containing the current values of the registers which shall be written
 **********************************************************************************************************************/
/* PRQA S 6080 1 */ /* MD_MSR_STMIF */
static void FlashWriteDeviceConfig( tFlashParam_XD2 * flashParam, tFlashConfigRegisters * configRegisters )
{
   tFlashRegisterValue_XD2 regVal[4u * FLASH_XD2_STACKED_DEVICE_COUNT] = {0};
   tFlashUint8_XD2 regValLength;
   tFlashUint8_XD2 regIdx, regIdx2, regMask;
# if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE )
# else
   tFlashUint8_XD2 regStorage;
# endif

   flashParam->errorCode = kFlashOk_XD2;
   regValLength = 0u;

   /* Iterate over all registers which are defined in the configuration structure */
   for (regIdx = 0u; regIdx < FlashGetRegCount(); regIdx++)
   {
# if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE )
# else
      /* Assume volatile configuration bits */
      regStorage = FLASH_XD2_REG_V;
# endif

      /* Check if register shall be written (value changed) */
      if (configRegisters->reg[regIdx].dirty == 1u)
      {
         /* Determine access mode */
         if (FlashGetRegAccessMode() == FLASH_XD2_REG_ACCESS_EXPLICIT)
         {
            /* Check if write command is configured */
            if (FLASH_XD2_CMD_NA != FlashGetRegWriteCmd(regIdx))
            {
               /* Handle multi-byte write commands */
               regMask = FlashGetRegWriteMask(regIdx);
               for (regIdx2 = 0u; regIdx2 < FlashGetRegCount(); regIdx2++)
               {
                  if ((regMask & 0x01u) == 0x01u)
                  {
                     /* Register is affected by write command, so add value to SPI command buffer */
                     FlashSpiBufferAddByte_XD2(regVal, &regValLength, configRegisters->reg[regIdx2].val);
# if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE )
# else
                     /* Check if non-volatile configuration bits shall be modified */
                     if ((configRegisters->reg[regIdx2].dirty == 1u) && (FlashGetRegStorage(regIdx2) == FLASH_XD2_REG_NV))
                     {
                        regStorage = FLASH_XD2_REG_NV;
                     }
# endif
                     configRegisters->reg[regIdx2].dirty = 0u;
                  }
                  regMask >>= 1u;
               }
            }
         }
         else
         {
            /* Address-based access mode: no multi-byte write command allowed */
            FlashSpiBufferAddByte_XD2(regVal, &regValLength, configRegisters->reg[regIdx].val);
            configRegisters->reg[regIdx].dirty = 0u;
# if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE )
# else
            /* Check if non-volatile configuration bits shall be modified */
            if (FlashGetRegStorage(regIdx) == FLASH_XD2_REG_NV)
            {
               regStorage = FLASH_XD2_REG_NV;
            }
# endif
         }

# if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE )
         /* Send write request to modify the respective device register value(s) */
         FlashWriteRegister(flashParam, regIdx, regVal, regValLength);
# else
         /* Check if non-volatile configuration bits are involved */
         if (FLASH_XD2_REG_V == regStorage)
         {
            /* Send write request to modify the respective device register value(s) */
            FlashWriteRegister(flashParam, regIdx, regVal, regValLength);
         }
         else
         {
            /* Omit writing non-volatile registers and abort with error */
            flashParam->errorCode = kFlashInitInvalidConfig_XD2;
         }
# endif /* FLASH_XD2_ENABLE_DEVICE_CONFIGURATION_WRITE */
      }

      /* Leave loop in case of errors */
      if (kFlashOk_XD2 != flashParam->errorCode)
      {
         break;
      }
   }
}

/***********************************************************************************************************************
 *  FlashDeviceConfig
 **********************************************************************************************************************/
/*! \brief         Write the device configuration register(s)
 *  \pre           Device is in powerup state
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
static void FlashDeviceConfig( tFlashParam_XD2 * flashParam )
{
   tFlashConfigRegisters configRegisters;
   tFlashUint8_XD2 idx;

   /* Initialize internal configuration state flags */
   flashConfigStates = 0u;

   /* Initialize dirty flags */
   for (idx = 0u; idx < FLASH_XD2_MAX_DEVICE_REGISTERS; idx++)
   {
      configRegisters.reg[idx].dirty = 0u;
   }

   /* Read current device configuration */
   FlashReadDeviceConfig(flashParam, &configRegisters);

   /* Adapt registers according to user configuration */
# if defined( FLASH_XD2_ENABLE_QUAD_MODE )
   /* ##Ci: If quad mode is disabled, no consistency check will be performed! If the consistency check would be
    *       performed if quad mode is disabled, the correct setting of the configuration option in the structure
    *       cannot be assumed. */
   if (kFlashOk_XD2 == flashParam->errorCode)
   {
      /* Operation mode (quad or dual/serial) */
      FlashModifyDeviceConfig(flashParam, &configRegisters, &(currentDeviceConfig->configOptions.quadMode));
      if (kFlashOk_XD2 == flashParam->errorCode)
      {
         FlashSetConfigState(kFlashConfig_QuadMode);
      }

   }
# endif /* FLASH_XD2_ENABLE_QUAD_MODE */

# if defined( FLASH_XD2_ENABLE_4_BYTE_ADDRESSING )
   if (kFlashOk_XD2 == flashParam->errorCode)
   {
      /* 4-byte addressing (extended address mode) */
      FlashModifyDeviceConfig(flashParam, &configRegisters, &(currentDeviceConfig->configOptions.extendedAddressMode));
      if (kFlashOk_XD2 == flashParam->errorCode)
      {
         FlashSetConfigState(kFlashConfig_ExtAddressMode);
      }
   }
# endif /* FLASH_XD2_ENABLE_4_BYTE_ADDRESSING */

# if defined( FLASH_XD2_ENABLE_LATENCY_CONFIGURATION )
   if (kFlashOk_XD2 == flashParam->errorCode)
   {
      FlashModifyDeviceConfig(flashParam, &configRegisters, &(currentDeviceConfig->configOptions.latencyCode));
      if (kFlashOk_XD2 == flashParam->errorCode)
      {
         FlashSetConfigState(kFlashConfig_LatencyCode);
      }
   }
# endif /* FLASH_XD2_ENABLE_LATENCY_CONFIGURATION */

}
#endif /* FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */

/***********************************************************************************************************************
 *  FlashReadSignature
 **********************************************************************************************************************/
/*! \brief         Read the signature the memory chip and compare against expected value
 *  \param[in,out] flashParam Flash parameter handle
 *  \return        Result of comparison
 **********************************************************************************************************************/
static tFlashResult FlashReadSignature( tFlashParam_XD2 * flashParam )
{
   tFlashResult result;
   tFlashUint8_XD2 flashId[FLASH_ID_LENGTH * FLASH_XD2_STACKED_DEVICE_COUNT];

   /* flashDeviceIdx must be initialized before first call of FlashSetCmd */
   flashDeviceIdx = 0u;

#if defined( FLASH_XD2_ENABLE_RDP )
   flashParam->spiParam.pTransmitBuffer = V_NULL;
   flashParam->spiParam.pReceiveBuffer = V_NULL;
   flashParam->spiParam.transferLength = 0u;

   /* [MACRONIX] Release from Deep Power-down (RDP command) */
   /* Note: [SPANSION] restricts this command to a maximum clock frequency of 50 MHz */
   result = FlashSetCmd(flashParam, FLASH_XD2_RES, 0u);

   if (result == kFblOk)
#endif
   {
      /* Initialize SPI parameter structure */  /* PRQA S 3225 2 */ /* MD_FblDrvFlash_2916_3225 */
      flashParam->spiParam.pTransmitBuffer = V_NULL;
      flashParam->spiParam.pReceiveBuffer = flashId;
      flashParam->spiParam.transferLength = sizeof(flashId);

      /* Read identification */
      result = FlashSetCmd(flashParam, FLASH_XD2_RDID, 0u);

      if (result == kFblOk)
      {
         result = kFlashFailed_XD2;
         for (; flashDeviceIdx < kNrOfFlashDevices_XD2; flashDeviceIdx++) /* PRQA S 2461 */ /* MD_FblDrvFlash_2461 */
         {
            /* Check the flash IDs */
            if (   (flashId[0u * FLASH_XD2_STACKED_DEVICE_COUNT] == flashDeviceSupport_XD2[flashDeviceIdx].deviceId.manufacturerId)
                && (flashId[1u * FLASH_XD2_STACKED_DEVICE_COUNT] == flashDeviceSupport_XD2[flashDeviceIdx].deviceId.memoryType)
                && (flashId[2u * FLASH_XD2_STACKED_DEVICE_COUNT] == flashDeviceSupport_XD2[flashDeviceIdx].deviceId.memoryCapacity))
            {
               /* Device identified, exit loop */
               result = kFlashOk_XD2;
               break;
            }
         }
      }
      else
      {
         result = kFlashFailed_XD2;
      }
   }

   return result;
}

#if  defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER ) && \
    !defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
#else
/***********************************************************************************************************************
 *  FlashWriteEnable
 **********************************************************************************************************************/
/*! \brief         Set the Write Enable Latch bit to allow a flash programming operation
 *  \param[in,out] flashParam Flash parameter handle
 **********************************************************************************************************************/
static void FlashWriteEnable( tFlashParam_XD2 * flashParam, tFlashOpCode_XD2 wrenCmd )
{
   tFlashResult result;

   flashParam->spiParam.pTransmitBuffer = V_NULL;
   flashParam->spiParam.pReceiveBuffer = V_NULL;
   flashParam->spiParam.transferLength = 0u;

   /* Enter the instruction code */
   result = FlashSetCmd(flashParam, wrenCmd, 0u);

   if (result != kFblOk)
   {
      flashParam->errorCode = kFlashWriteProtect_XD2;
   }
}

/***********************************************************************************************************************
 *  FlashReadFlashStatus
 **********************************************************************************************************************/
/*! \brief         Check current status of the requested flash programming operation
 *  \param[in,out] flashParam Flash parameter handle
 *  \return        Current device status (kFlashStatus_Ready, kFlashStatus_Busy or kFlashStatus_Failure)
 **********************************************************************************************************************/
static tFlashDeviceStatus FlashReadFlashStatus( tFlashParam_XD2 * flashParam )
{
   tFlashRegisterValue_XD2 devStatus1[FLASH_XD2_STACKED_DEVICE_COUNT];
   tFlashRegisterValue_XD2 devStatus2[FLASH_XD2_STACKED_DEVICE_COUNT];
   const tFlashRegisterValue_XD2 * devStatusWip;
   const tFlashRegisterValue_XD2 * devStatusErr;
   tFlashRegisterId_XD2 regErrorFlags;
   tFlashDeviceStatus status;
   tFlashUint8_XD2 devId;

   status = kFlashStatus_Ready;

   /* Read status register value (work-in-progress flag) */
   (void)FlashReadRegister(flashParam, FlashGetCfgRegIdx(wipFlag), devStatus1);

   /* WIP is always contained in devStatus1 */
   devStatusWip = devStatus1;

   /* Initialize devStatusErr (even if it's actually not used) */
   devStatusErr = devStatusWip;

   /* Retrieve ID of register that contains the error flags */
   regErrorFlags = FlashGetCfgRegIdx(errorFlags);

   /* Check if error flags are available */
   if (FLASH_XD2_REG_NA != regErrorFlags)
   {
      if (FlashGetCfgRegIdx(wipFlag) != regErrorFlags)
      {
         /* Read register which contains the error flags) */
         (void)FlashReadRegister(flashParam, regErrorFlags, devStatus2);
         devStatusErr = devStatus2;
      }
   }

   devId = 0u;
# if ( FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
   while ((devId < FLASH_XD2_STACKED_DEVICE_COUNT) && (status == kFlashStatus_Ready))
# endif
   {
      /* Abort in case of program or erase error
         WIP flag remains set! */
      if (FlashStatusCheckError(devStatusErr[devId]))
      {
         status = kFlashStatus_Failure;

         /* [SPANSION] [MICRON] Send CLEAR STATUS command to reset WIP bit (unblock device) */
         if (FLASH_XD2_CMD_NA != FlashGetCfgCmd(statusClear))
         {
            /* Prepare SPI parameter structure */
            flashParam->spiParam.pTransmitBuffer = V_NULL;
            flashParam->spiParam.pReceiveBuffer = V_NULL;
            flashParam->spiParam.transferLength = 0u;

            /* Clear status register, e.g. pending errors */
            (void)FlashSetCmd(flashParam, FlashGetCfgCmd(statusClear), 0u);
         }
      }
      else
      {
         if (FlashStatusCheckWip(devStatusWip[devId]))
         {
            status = kFlashStatus_Busy;
         }
# if ( FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
         else
         {
            devId++;
         }
# endif
      }
   }

   return status;
}
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER && !FLASH_XD2_ENABLE_DEVICE_CONFIGURATION */

#define FLASHDRV_XD2_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblDrvFlash_0311:
      Reason:     Provide simplified function interface and reduce stack consumption by avoiding separate pointers for
                  transmission and reception buffer.
      Risk:       The content of the transmission buffer might be accidentally overwritten.
      Prevention: The pointer to the transmission buffer is reverted to const in the called sub function before passing
                  it to the SPI driver.

   MD_FblDrvFlash_0313:
      Reason:     The SPI driver expects a watchdog handler with return type 'void'. The usage of a wrapper function is
                  avoided due to higher voted requirements for minimized stack and runtime usage applied on the code.
      Risk:       Potentially undefined behavior of the used compiler which usually leads to a warning or error during compilation.
      Prevention: The respective functionality is part of integration testing and will hence be verified before delivery.

   MD_FblDrvFlash_0342:
      Reason:     Usage of glue operator unifies naming scheme, without relying on massive use of copy&paste.
      Risk:       Not supported by outdated compilers.
      Prevention: No prevention required.

   MD_FblDrvFlash_2461:
      Reason:     Global variable is used as loop counter to select correct index in array.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblDrvFlash_2916_3225:
      Reason:     Pointer to a local variable is assigned to a global structure.
      Risk:       The locally defined variable will ceased to exit after a return from the function.
      Prevention: All changes to the affected code parts have to be reviewed by the module responsible.

   MD_FblDrvFlash_3408:
      Reason:     Variable has external linkage but is being defined without any previous declaration.
      Risk:       No risk.
      Prevention: No prevention required as Variable is only used locally.

   MD_FblDrvFlash_3684:
      Reason:     The unspecific declaration has been used to ease the manual configuration of the driver. Entries can
                  be added to or removed from the configuration structure without having to adapt kNrOfFlashDevices
                  afterwards (the value will be calculated automatically).
      Risk:       No risk.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: FLASHDRV_XD2.C
 **********************************************************************************************************************/
