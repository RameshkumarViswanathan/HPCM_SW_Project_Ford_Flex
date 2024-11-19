/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief     External flash driver interface
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
 *  03.00.00   2015-03-05  visfr   ESCAN00080101    Fixed support for S25FL032P
 *                         viscel  ESCAN00080423    Correct external flash length for S25FL512S
 *                         visawh  ESCAN00080631    Add FLASH_DEVICE_W25Q64
 *                         visci   ESCAN00080707    Added support for S79FL512S and dual-quad mode
 *                         visci   ESCAN00081451    Adapted implementation for SPI driver interface version 2
 *  03.01.00   2015-03-19  visjhg  ESCAN00081920    No changes
 *                         visjhg  ESCAN00081921    Added software reset and clear status register commands
 *  03.02.00   2015-10-16  visci   ESCAN00085816    Added dynamic device support
 *  05.00.00   2016-08-31  visci   ESCAN00091687    Adapted implementation for SPI driver interface version 3 and
 *                                                  extended dynamic device support
 *  05.01.00   2016-11-04  visci   ESCAN00092562    No changes
 *                                 ESCAN00092575    No changes
 *  05.02.00   2017-05-23  visrie  ESCAN00095272    Added support for read-only flash driver
 *                                 ESCAN00093824    No changes
 *                                 ESCAN00093829    No changes
 *                                 ESCAN00094465    No changes
 *  05.03.00   2017-08-04  visdod  ESCAN00095557    No changes
 *                                 ESCAN00095746    Support configurable flash segment size
 *                                 ESCAN00096175    No changes
 *  05.04.00   2017-08-31  visrie  ESCAN00096483    No changes
 *                                 ESCAN00096486    No changes
 *  05.04.01   2017-10-11  visrie  ESCAN00096953    No changes
 *  05.05.00   2018-03-14  visci   ESCAN00098008    Added new manufacturer IDs for ISSI and Microchip
 *                                 ESCAN00098743    No changes
 *                                 ESCAN00095745    No changes
 *  05.06.00   2018-05-04  visrie  ESCAN00099309    No changes
 *  05.07.00   2018-07-27  visci   ESCAN00100191    No changes
 *                                 ESCAN00100192    Changed default write segment size to 16 byte
 *  05.08.00   2019-03-29  visshs  ESCAN00102701    No changes
 *  05.08.01   2019-10-02  vistmo  ESCAN00104503    No changes
 *  05.09.00   2020-02-21  vistmo  ESCAN00105709    Added configurable read and write size
 *  05.10.00   2020-11-27  visrcn  FBL-2476         Add support for Giga Devices (manufacturer ID)
 *  05.11.00   2021-02-24  vistmo  FBL-2104         Add support for write enable for volatile registers
 *                                                  Adding new MICRON manufacturer ID
 *                                                  Added/adapted MemMap sections
 *  05.12.00   2021-10-20  visrie  FBL-4114         No changes
 **********************************************************************************************************************/

#ifndef FBLDRVFLASH_XD2_XSTM25PXXEHIS_H
#define FBLDRVFLASH_XD2_XSTM25PXXEHIS_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "flashdrv_xd2_cfg.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblDrvFlash_XStm25pxxEHis CQComponent : Implementation */
#define FBLDRVFLASH_XD2_XSTM25PXXEHIS_VERSION           0x0512u
#define FBLDRVFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION   0x00u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define FLASH_DRIVER_XD2_VERSION_MCUTYPE       0x53u
#define FLASH_DRIVER_XD2_VERSION_INTERFACE     0x03u
#define FLASH_DRIVER_XD2_VERSION_MASKTYPE      0xFFu

/* Specify the offset of the driver relative to the beginning of the flashCode_XD2 array */
#define FLASH_DRIVER_XD2_HEADER_BASE           0x00

/* Flash Driver software information */
#define FLASH_DRIVER_XD2_VERSION_MAJOR         ((tFlashUint8_XD2)(FBLDRVFLASH_XD2_XSTM25PXXEHIS_VERSION >> 8u))
#define FLASH_DRIVER_XD2_VERSION_MINOR         ((tFlashUint8_XD2)(FBLDRVFLASH_XD2_XSTM25PXXEHIS_VERSION & 0x00FFu))
#define FLASH_DRIVER_XD2_VERSION_PATCH         ((tFlashUint8_XD2)FBLDRVFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION)

/* Defines to access version and type information */
#define FLASH_DRIVER_XD2_MCUTYPE(flashCode)    (*(tFlashUint8_XD2*)((flashCode) + 3u + FLASH_DRIVER_XD2_HEADER_BASE))
#define FLASH_DRIVER_XD2_MASKTYPE(flashCode)   (*(tFlashUint8_XD2*)((flashCode) + 2u + FLASH_DRIVER_XD2_HEADER_BASE))
#define FLASH_DRIVER_XD2_INTERFACE(flashCode)  (*(tFlashUint8_XD2*)((flashCode) + 0u + FLASH_DRIVER_XD2_HEADER_BASE))

/* Function call table offsets */
#define FLASH_DRIVER_XD2_HEADER_OFFSET         (0x04u + FLASH_DRIVER_XD2_HEADER_BASE)
#define FLASH_DRIVER_XD2_INIT_OFFSET           (FLASH_DRIVER_XD2_HEADER_OFFSET + 0x00u)
#define FLASH_DRIVER_XD2_DEINIT_OFFSET         (FLASH_DRIVER_XD2_HEADER_OFFSET + 0x04u)
#define FLASH_DRIVER_XD2_ERASE_OFFSET          (FLASH_DRIVER_XD2_HEADER_OFFSET + 0x08u)
#define FLASH_DRIVER_XD2_WRITE_OFFSET          (FLASH_DRIVER_XD2_HEADER_OFFSET + 0x0Cu)
#define FLASH_DRIVER_XD2_READ_OFFSET           (FLASH_DRIVER_XD2_HEADER_OFFSET + 0x10u)

#if ! defined( FBL_FLASH_XD2_DELETED )
# define FBL_FLASH_XD2_DELETED                 0xFFu
#endif

/* Error codes ********************************************************************************************************/

/*-- Routine specific error groups ---------------------------------*/
#define kFlashFctInit_XD2             0x00u
#define kFlashFctDeinit_XD2           0x20u
#define kFlashFctErase_XD2            0x40u
#define kFlashFctWrite_XD2            0x60u
#define kFlashFctUsrFct_XD2           0x80u

/*-- Common error codes --------------------------------------------*/
#define kFlashOk_XD2                  0x00u   /* Function call successful    */
#define kFlashFailed_XD2              0x01u   /* Function call failed        */
#define kFlashVerify_XD2              0x02u   /* Verify error                */
#define kFlashInvalidParam_XD2        0x03u   /* Invalid parameter           */
#define kFlashInvalidAddr_XD2         0x04u   /* Invalid flash address       */
#define kFlashInvalidSize_XD2         0x05u   /* Invalid flash size          */
#define kFlashInvalidClock_XD2        0x06u   /* Missing/wrong clock supply  */
#define kFlashProtect_XD2             0x07u   /* Protection error            */
#define kFlashAcc_XD2                 0x08u   /* Access error                */
#define kFlashCmdBufFull_XD2          0x09u   /* Command buffer not empty    */
#define kFlashInvalidDevice_XD2       0x0Au   /* Invalid flash type          */
#define kFlashInvalidVersion_XD2      0x0Bu   /* Incorrect driver version    */
#define kFlashSecured_XD2             0x0Cu   /* Flash device is secured     */
#define kFlashInvalidConfig_XD2       0x0Du   /* Flash device configuration doesn't match driver configuration */
#define kFlashUninitialized_XD2       0xFFu   /* Flash device not initialized */

/*-- Flash init error codes ----------------------------------------*/
#define kFlashInitFailed_XD2          (kFlashFctInit_XD2 | kFlashFailed_XD2)
#define kFlashInitInvalidDevice_XD2   (kFlashFctInit_XD2 | kFlashInvalidDevice_XD2)
#define kFlashInitAcc_XD2             (kFlashFctInit_XD2 | kFlashAcc_XD2)
#define kFlashInitInvalidVersion_XD2  (kFlashFctInit_XD2 | kFlashInvalidVersion_XD2)
#define kFlashInitSecure_XD2          (kFlashFctInit_XD2 | kFlashSecured_XD2)
#define kFlashInitInvalidConfig_XD2   (kFlashFctInit_XD2 | kFlashInvalidConfig_XD2)

/*-- Flash deinit error codes --------------------------------------*/
#define kFlashDeinitFailed_XD2        (kFlashFctDeinit_XD2 | kFlashFailed_XD2)
#define kFlashDeinitInvalidParam_XD2  (kFlashFctDeinit_XD2 | kFlashInvalidParam_XD2)

/*-- Flash erase error codes ---------------------------------------*/
#define kFlashEraseFailed_XD2         (kFlashFctErase_XD2 | kFlashFailed_XD2)
#define kFlashEraseVerify_XD2         (kFlashFctErase_XD2 | kFlashVerify_XD2)
#define kFlashEraseInvalidParam_XD2   (kFlashFctErase_XD2 | kFlashInvalidParam_XD2)
#define kFlashEraseInvalidAddr_XD2    (kFlashFctErase_XD2 | kFlashInvalidAddr_XD2)
#define kFlashEraseInvalidSize_XD2    (kFlashFctErase_XD2 | kFlashInvalidSize_XD2)
#define kFlashEraseInvalidClock_XD2   (kFlashFctErase_XD2 | kFlashInvalidClock_XD2)
#define kFlashEraseProtect_XD2        (kFlashFctErase_XD2 | kFlashProtect_XD2)
#define kFlashEraseAcc_XD2            (kFlashFctErase_XD2 | kFlashAcc_XD2)
#define kFlashEraseCmdBufFull_XD2     (kFlashFctErase_XD2 | kFlashCmdBufFull_XD2)

/*-- Flash write error codes ----------------------------------------*/
#define kFlashWriteFailed_XD2         (kFlashFctWrite_XD2 | kFlashFailed_XD2)
#define kFlashWriteVerify_XD2         (kFlashFctWrite_XD2 | kFlashVerify_XD2)
#define kFlashWriteInvalidParam_XD2   (kFlashFctWrite_XD2 | kFlashInvalidParam_XD2)
#define kFlashWriteInvalidAddr_XD2    (kFlashFctWrite_XD2 | kFlashInvalidAddr_XD2)
#define kFlashWriteInvalidSize_XD2    (kFlashFctWrite_XD2 | kFlashInvalidSize_XD2)
#define kFlashWriteInvalidClock_XD2   (kFlashFctWrite_XD2 | kFlashInvalidClock_XD2)
#define kFlashWriteProtect_XD2        (kFlashFctWrite_XD2 | kFlashProtect_XD2)
#define kFlashWriteAcc_XD2            (kFlashFctWrite_XD2 | kFlashAcc_XD2)
#define kFlashWriteCmdBufFull_XD2     (kFlashFctWrite_XD2 | kFlashCmdBufFull_XD2)

/***********************************************************************************************************************
 *  GLOBAL DATA TYPES AND STRUCTURES
 **********************************************************************************************************************/

/* Generic data types */
typedef vuint8             tFlashUint8_XD2;
typedef vuint16            tFlashUint16_XD2;
typedef vuint32            tFlashUint32_XD2;

typedef tFlashUint8_XD2   tFlashData_XD2;
typedef tFlashUint32_XD2  tFlashAddress_XD2;
typedef tFlashUint32_XD2  tFlashLength_XD2;
typedef tFlashUint16_XD2  tFlashErrorCode_XD2;

/* Flasher structure */
typedef struct
{
   /* Version information */
   tFlashUint8_XD2           patchLevel;       /* Patch level */
   tFlashUint8_XD2           minorVersion;     /* Minor version number */
   tFlashUint8_XD2           majorVersion;     /* Major version number */
   tFlashUint8_XD2           reserved1;        /* Reserved for future use */

   /* Return value/error code */
   tFlashErrorCode_XD2       errorCode;        /* Return value/error code */
   tFlashUint16_XD2          reserved2;        /* Reserved for future use */

   /* Erase/write input parameters */
   tFlashAddress_XD2         address;          /* Logical target address */
   tFlashLength_XD2          length;           /* Length (in bytes) */
   tFlashData_XD2*           data;             /* Pointer to data buffer (read only) */

   /* Pointer to watchdog trigger function */
   tFlashUint8_XD2           (* wdTriggerFct)(void);

   /* Erase/write output parameters */
   tFlashData_XD2            intendedData[2u]; /* Intended data at error address */
   tFlashData_XD2            actualData[2u];   /* Actual data at error address */
   tFlashAddress_XD2         errorAddress;     /* Error address */

   /* Pointer to the SPI driver functions ... */
   tFblSpiInitFct             spiInitFct;
   tFblSpiTransferSyncFct     spiTransferSyncFct;
   tFblSpiSetTransferModeFct  spiSetTransferModeFct;
   tFblSpiDeinitFct           spiDeinitFct;
   /* ... and the parameter structure */
   tFblSpiTransferParam       spiParam;

   /* Buffer to read-back the written data */
   tFlashData_XD2*           readBuffer;       /* Buffer provided by flio to read written data back */
   tFlashLength_XD2          readBufferLength; /* Length of the provided buffer */
} tFlashParam_XD2;

/* Pointer to flash functions */
typedef void (* tFlashFct_XD2)( tFlashParam_XD2 * flashParam );

/* Device Configuration Structure (definition in flashdrv_xd2_cfg.c) */
typedef tFlashUint8_XD2         tFlashOpCode_XD2;
typedef tFlashUint8_XD2         tFlashRegisterId_XD2;
typedef tFlashUint8_XD2         tFlashRegisterValue_XD2;

typedef struct
{
   tFlashUint8_XD2              manufacturerId;
   tFlashUint8_XD2              memoryType;
   tFlashUint8_XD2              memoryCapacity;
} tFlashId_XD2;

typedef struct
{
   tFlashLength_XD2             memorySize;
   tFlashLength_XD2             blockSize;
   tFlashLength_XD2             sectorSize;
} tFlashDeviceParam_XD2;

/* Flash Register Support

   Access mode       | regParam1  | regParam2  | regParam3  | regParam4  |
   ------------------+------------+------------+------------+------------+
   - explicit        | Read CMD   | Storage*   | Write CMD  | Write Mask |
   - address-based   | Addr [3]   | Addr [2]   | Addr [1]   | Addr [0]   |

   *Storage: MSB defines storage type (1 = volatile, 0 = non-volatile)
 */
typedef struct
{
   tFlashUint8_XD2              regParam1;
   tFlashUint8_XD2              regParam2;
   tFlashUint8_XD2              regParam3;
   tFlashUint8_XD2              regParam4;
} tFlashRegSupport_XD2;

/* Flash Configuration Options

   Config. Type         | cfgParam1      | cfgParam2      | cfgParam3      |
   ---------------------+----------------+----------------+----------------+
   - n/a (CFG_NA)       |      ---       |      ---       |      ---       |
   - register (CFG_REG) | Register Index | Register Mask  | Register Value |
   - command (CFG_CMD)  | Command Opcode | Transfer Mode* | Read Latency   |

   *Transfer Mode: high nibble = transfer mode address, low nibble = transfer mode data
 */
typedef struct
{
   tFlashUint8_XD2              cfgType;
   tFlashUint8_XD2              cfgParam1;
   tFlashUint8_XD2              cfgParam2;
   tFlashUint8_XD2              cfgParam3;
} tFlashConfigOption_XD2;

typedef struct
{
   struct
   {
      tFlashLength_XD2          memorySize;
      tFlashLength_XD2          blockSize;
      tFlashLength_XD2          sectorSize;
   } deviceParam;
   struct
   {
      tFlashConfigOption_XD2    quadMode;
      tFlashConfigOption_XD2    latencyCode;
      tFlashConfigOption_XD2    extendedAddressMode;
      tFlashConfigOption_XD2    quadRead;
      tFlashConfigOption_XD2    quadPageProgram;
      tFlashConfigOption_XD2    resetEnable;
      tFlashConfigOption_XD2    resetExecute;
      tFlashConfigOption_XD2    statusClear;
      tFlashConfigOption_XD2    wipFlag;
      tFlashConfigOption_XD2    errorFlags;
   } configOptions;
   struct
   {
      tFlashUint8_XD2           regInfo; /* High nibble: register access mode
                                             Low nibble: amount of configured registers */
      tFlashRegSupport_XD2      reg[FLASH_XD2_MAX_DEVICE_REGISTERS];
   } registerSupport;
} tFlashDeviceConfig_XD2;

typedef struct
{
   tFlashId_XD2                    deviceId;
   const tFlashDeviceConfig_XD2 *  deviceConfig;
} tFlashDeviceSupport_XD2;

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Manufacturer ID values */
#define FLASH_XD2_MANUFACTURER_ID_SPANSION_CYPRESS   0x01u
#define FLASH_XD2_MANUFACTURER_ID_ATMEL              0x1Fu
#define FLASH_XD2_MANUFACTURER_ID_ST_NUMONYX_MICRON  0x20u
#define FLASH_XD2_MANUFACTURER_ID_MICRON             0x2Cu
#define FLASH_XD2_MANUFACTURER_ID_ISSI               0x9Du
#define FLASH_XD2_MANUFACTURER_ID_MICROCHIP          0xBFu
#define FLASH_XD2_MANUFACTURER_ID_MACRONIX           0xC2u
#define FLASH_XD2_MANUFACTURER_ID_WINBOND            0xEFu
#define FLASH_XD2_MANUFACTURER_ID_GIGADEVICE         0xC8u

/* Write in Progress bit */
#define FLASH_XD2_WIP              0x01u

/* Pseudo value for unsupported commands (NOP) */
#define FLASH_XD2_CMD_NA           0x00u

/* External flash commands */
/* Write enable */
#define FLASH_XD2_WREN             0x06u
/* Write enable volatile. Apply only to some specific devices */
#if defined ( FLASH_XD2_WRENV )
#else
# define FLASH_XD2_WRENV           0x50u
#endif
/* Read Status register */
#define FLASH_XD2_RDSR             0x05u
/* Write Status register */
#define FLASH_XD2_WRSR             0x01u
/* Read any register */
#define FLASH_XD2_RDAR             0x65u
#if defined( FLASH_XD2_RDAR_LATENCY )
#else
# define FLASH_XD2_RDAR_LATENCY    0x01u
#endif
/* Write any register */
#define FLASH_XD2_WRAR             0x71u
/* Block Erase: 64kB */
#define FLASH_XD2_BE               0xD8u
/* Sector Erase: 4kB */
#define FLASH_XD2_SE               0x20u
/* Bulk erase: all flash */
#define FLASH_XD2_BU               0xC7u
/* Release from Deep power-down */
#define FLASH_XD2_RES              0xABu
/* Read Identification - the RDID instruction is available only
   for parts made with Technology T9HX (0.11um) */
#define FLASH_XD2_RDID             0x9Fu

#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
/* Read/program commands for quad mode are defined in configuration structure */
#else
/* Read commands for single mode */
/* Read data 1...oo */
# if defined( FLASH_XD2_ENABLE_FAST_READ )
#  define FLASH_XD2_READ           0x0Bu
#  define FLASH_XD2_READ_LATENCY 0x01u
# else
#  define FLASH_XD2_READ           0x03u
#  define FLASH_XD2_READ_LATENCY   0x00u
# endif
/* Page Program: 1...256B */
# define FLASH_XD2_PP              0x02u
#endif /* FLASH_XD2_ENABLE_QUAD_MODE */

#if !defined ( FLASH_PAGE_SIZE_XD2 )
/* Assume page size of 256 B (512 B in dual-quad mode) */
# define FLASH_PAGE_SIZE_XD2       (0x100u * FLASH_XD2_STACKED_DEVICE_COUNT)
#endif

/* Minimum number of bytes that have to be programmed at a time */
#if !defined ( FLASH_XD2_SEGMENT_SIZE )
# if defined( FLASH_XD2_ENABLE_QUAD_MODE )
#  define FLASH_XD2_SEGMENT_SIZE    FLASH_PAGE_SIZE_XD2
# else
#  define FLASH_XD2_SEGMENT_SIZE    0x10uL
# endif
#endif

#if !defined ( FLASH_XD2_READ_CHUNK_SIZE )
/* Maximum read length for a single command */
# define FLASH_XD2_READ_CHUNK_SIZE        FLASH_XD2_MAX_READ_LENGTH
#endif

#if !defined ( FLASH_XD2_WRITE_CHUNK_SIZE )
/* Maximum write length for a single command */
# define FLASH_XD2_WRITE_CHUNK_SIZE       FLASH_XD2_SEGMENT_SIZE
#endif

#if defined( FLASH_XD2_MAX_DUMMY_BYTES )
#else
# if defined( FLASH_XD2_ENABLE_QUAD_MODE )
/* Actual value defined in configuration structure */
#  define FLASH_XD2_MAX_DUMMY_BYTES    5u
# else
/* Always provide at least one dummy byte for RDAR */
#  define FLASH_XD2_MAX_DUMMY_BYTES    1u
# endif
#endif /* FLASH_XD2_MAX_DUMMY_BYTES */

/* Bit definition for register access */
#define FLASH_XD2_BIT0   0x01u
#define FLASH_XD2_BIT1   0x02u
#define FLASH_XD2_BIT2   0x04u
#define FLASH_XD2_BIT3   0x08u
#define FLASH_XD2_BIT4   0x10u
#define FLASH_XD2_BIT5   0x20u
#define FLASH_XD2_BIT6   0x40u
#define FLASH_XD2_BIT7   0x80u

/* SPI Communication Modes */
#define FLASH_XD2_COM_MODE_TX             FLASH_XD2_BIT0
#define FLASH_XD2_COM_MODE_RX             FLASH_XD2_BIT1
#define FLASH_XD2_COM_MODE_SINGLE         FLASH_XD2_BIT2
#define FLASH_XD2_COM_MODE_QUAD           FLASH_XD2_BIT3

/* Defines used in configuration structure */
#define FLASH_XD2_CFG_NA                  0x00u
#define FLASH_XD2_CFG_REG                 0x01u
#define FLASH_XD2_CFG_CMD                 0x02u

#define FLASH_XD2_REG_NA                  0xFFu
#define FLASH_XD2_REG_NV                  0x00u
#define FLASH_XD2_REG_V                   0x80u
#define FLASH_XD2_REG_WEV                 (FLASH_XD2_REG_V | 0x01u)
#define FLASH_XD2_REG_ACCESS_EXPLICIT     0xE0u
#define FLASH_XD2_REG_ACCESS_ADDRESS      0xA0u
#define FLASH_XD2_REG_STORAGE_MSK         0x80u
#define FLASH_XD2_REG_WREN_MSK            (FLASH_XD2_REG_STORAGE_MSK | 0x01u)

#define FLASH_XD2_REG_IDX(n)              (n)
#define FLASH_XD2_REG_MSK(n)              FLASH_XD2_BIT ## n   /* PRQA S 0342 */ /* MD_FblDrvFlash_0342 */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define FLASHDRV_XD2_START_SEC_CONST
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

extern const tFlashDeviceSupport_XD2 flashDeviceSupport_XD2[]; /* PRQA S 3684 */ /* MD_FblDrvFlash_3684 */
extern const tFlashUint8_XD2 kNrOfFlashDevices_XD2;

#define FLASHDRV_XD2_STOP_SEC_CONST
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FLASHDRV_XD2_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
#else
extern void ExpFlashWrite_XD2(tFlashParam_XD2 * flashParam);
extern void ExpFlashErase_XD2(tFlashParam_XD2 * flashParam);
#endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */
extern void ExpFlashRead_XD2( tFlashParam_XD2 * flashParam );
extern void ExpFlashInit_XD2(tFlashParam_XD2 * flashParam);
extern void ExpFlashDeinit_XD2(tFlashParam_XD2 * flashParam);

#define FLASHDRV_XD2_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MACROS
 **********************************************************************************************************************/

/* Flash write function */
# define FLASH_DRIVER_XD2_WRITE(ramBuffer, flashParam) \
   ((tFlashFct_XD2)(*(tFlashUint32_XD2 *)&(ramBuffer)[FLASH_DRIVER_XD2_WRITE_OFFSET]))(flashParam)

/* Flash read function */
# define FLASH_DRIVER_XD2_READ(ramBuffer, flashParam) \
   ((tFlashFct_XD2)(*(tFlashUint32_XD2 *)&(ramBuffer)[FLASH_DRIVER_XD2_READ_OFFSET]))(flashParam)

/* Flash erase function */
# define FLASH_DRIVER_XD2_ERASE(ramBuffer, flashParam) \
   ((tFlashFct_XD2)(*(tFlashUint32_XD2 *)&(ramBuffer)[FLASH_DRIVER_XD2_ERASE_OFFSET]))(flashParam)

/* Flash init function */
# define FLASH_DRIVER_XD2_INIT(ramBuffer, flashParam) \
   ((tFlashFct_XD2)(*(tFlashUint32_XD2 *)&(ramBuffer)[FLASH_DRIVER_XD2_INIT_OFFSET]))(flashParam)

/* Flash deinitialization function */
# define FLASH_DRIVER_XD2_DEINIT(ramBuffer, flashParam) \
   ((tFlashFct_XD2)(*(tFlashUint32_XD2 *)&(ramBuffer)[FLASH_DRIVER_XD2_DEINIT_OFFSET]))(flashParam)

# if defined( FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER )
#  define FLASH_DRIVER_XD2_STATIC_READ(flashParam)       (ExpFlashRead_XD2(flashParam))
#  define FLASH_DRIVER_XD2_STATIC_INIT(flashParam)       (ExpFlashInit_XD2(flashParam))
#  define FLASH_DRIVER_XD2_STATIC_DEINIT(flashParam)     (ExpFlashDeinit_XD2(flashParam))
# endif /* FLASH_XD2_ENABLE_STATIC_READ_ONLY_DRIVER */


/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

/* Plausibility checks of configuration settings *****************************/

#if defined( FLASH_XD2_ENABLE_DEVICE_CONFIGURATION )
#else
# if defined( FLASH_XD2_ENABLE_QUAD_MODE ) || \
     defined( FLASH_XD2_ENABLE_4_BYTE_ADDRESSING ) || \
     defined( FLASH_XD2_ENABLE_PARAMSECT_TOP ) || \
     defined( FLASH_XD2_ENABLE_LATENCY_CONFIGURATION )
#  error "flashdrv_xd2_cfg.h: Please enable device configuration."
# endif
#endif


#if defined( FLASH_XD2_ENABLE_QUAD_MODE ) 
# if defined( FLASH_XD2_ENABLE_FAST_READ )
#  error "flashdrv_xd2_cfg.h: Neither Dual Mode and Fast Read nor Quad Mode and Fast Read shall be configured at the same time."
# endif
#endif

#if defined( FLASH_XD2_ENABLE_QUAD_MODE )
#else
# if ( FLASH_XD2_STACKED_DEVICE_COUNT > 1 )
#  error "flashdrv_xd2_cfg.h: The selected device requires activation of Quad Mode."
# endif
#endif

#if (FLASH_XD2_STACKED_DEVICE_COUNT > 2u)
# error "flashdrv_xd2_cfg.h: Currently, stacked devices are restricted to two devices."
#endif

#endif /* FBLDRVFLASH_XD2_XSTM25PXXEHIS_H */

/***********************************************************************************************************************
 *  END OF FILE: FLASHDRV_XD2.H
 **********************************************************************************************************************/
