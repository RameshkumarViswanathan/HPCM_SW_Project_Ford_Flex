/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief     External flash driver wrapper functions
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
 *  03.00.00   2015-03-05  visci   ESCAN00080708    Added support for dual-quad mode
 *                                 ESCAN00081454    Adapted implementation for SPI driver interface version 2
 *  03.01.00   2015-10-16  visci   ESCAN00085819    Moved address-/length check into driver
 *  05.00.00   2016-08-31  visci   ESCAN00091688    Adapted implementation for SPI driver interface version 3 and
 *                                                  extended dynamic device support
 *  05.01.00   2017-05-22  visrie  ESCAN00079839    Added support of downloadable driver
 *  05.02.00   2017-08-31  visrie  ESCAN00096466    Allow unaligned read requests
 *  05.03.00   2017-11-15  visrie  ESCAN00097371    Support read-only driver for statically linked driver
 *  05.03.01   2018-01-16  visrie  ESCAN00097824    Fixed initialization handling
 *  05.03.02   2019-10-07  vistmo  ESCAN00104517    Fixed missing XD token
 *  05.03.03   2021-03-13  vistbe  ESCAN00106172    ReadSync API function uses wrong Flash driver located in RAM
 *                                 FBL-3234         Added/adapted MemMap sections
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
# include "flashrom_xd2.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_VERSION != 0x0503u ) || \
    ( FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION != 0x03u )
# error "Error in fbl_flio_xd2.c: Source and header file are inconsistent!"
#endif

#if ( FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_VERSION != _FBLWRAPPERFLASH_XD2_HW_VERSION ) || \
    ( FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION != _FBLWRAPPERFLASH_XD2_HW_RELEASE_VERSION )
# error "Error in fbl_flio_xd2.c: Source and v_ver.h are inconsistent!"
#endif

/***********************************************************************************************************************
 *  CONFIGURATION CHECK
 **********************************************************************************************************************/

#if ( FLASH_DRIVER_XD2_VERSION_INTERFACE < 0x01u )
# error "Please use FLASH_DRIVER_VERSION_INTERFACE version 0x01 or higher."
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define FBLWRAPPERFLASH_WD_TRIGGER_INTERVAL_MASK   0x3Fu

#if !defined( FBL_FLIO_XD2_READ_BUFFER_SIZE )
# define FBL_FLIO_XD2_READ_BUFFER_SIZE            0x10u
#endif /* FBL_FLIO_XD2_READ_BUFFER_SIZE */

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/** Flash driver state handling */
typedef enum
{
   kFlashInitState_Uninit = 0u,  /**< Flash driver has not be initialized yet */
   kFlashInitState_ReadDriver,   /**< Read-only flash driver is active/initialized */
   kFlashInitState_FullDriver    /**< Full flash driver (read, write and erase) is active/initialized */
} tFlashInitState;

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

# define FBLFLIO_FLASHCODE_XD2_START_SEC_VAR
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2 flashCode_XD2[FLASH_SIZE_XD2]; /* RAM buffer for flash driver */
# define FBLFLIO_FLASHCODE_XD2_STOP_SEC_VAR
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/
#define FBLFLIO_XD2_START_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

/** Flash parameter structure - used to exchange data with flash driver */
V_MEMRAM0 static V_MEMRAM1 tFlashParam_XD2  V_MEMRAM2 flashParam;

/** Buffer provided for the flash driver to read the written data back */ /* PRQA S 3218 1 */ /* MD_FblWrapperFlash_3218 */
V_MEMRAM0 static V_MEMRAM1 tFlashUint8_XD2  V_MEMRAM2 flashReadBuffer[FBL_FLIO_XD2_READ_BUFFER_SIZE];

/** Current initialization state of the flash driver */
V_MEMRAM0 static V_MEMRAM1 tFlashInitState   V_MEMRAM2 initState;

#define FBLFLIO_XD2_STOP_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/
#define FBLFLIO_XD2_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

/***********************************************************************************************************************
 *  Flash_XD2Driver_InitPowerOnSync
 **********************************************************************************************************************/
/*! \brief       Initialize modules variables and read-only driver
 *  \return      The return code shows the success of the initialization
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR Flash_XD2Driver_InitPowerOnSync( void )
{
   IO_ErrorType result;

   /* Initialize state */
   initState = kFlashInitState_Uninit;
   result = IO_E_OK;

   /* Initialize input parameters for initialization function */
   flashParam.wdTriggerFct = (tFlashUint8_XD2 (*)(void))FblLookForWatchdog;

   flashParam.majorVersion = FLASH_DRIVER_XD2_VERSION_MAJOR;
   flashParam.minorVersion = FLASH_DRIVER_XD2_VERSION_MINOR;
   flashParam.patchLevel = FLASH_DRIVER_XD2_VERSION_PATCH;
   flashParam.reserved1 = 0x00u;
   flashParam.reserved2 = 0x00u;
   flashParam.errorCode = kFlashOk_XD2;

   flashParam.readBuffer = flashReadBuffer;
   flashParam.readBufferLength = FBL_FLIO_XD2_READ_BUFFER_SIZE;

   /* SPI function pointers */
   flashParam.spiInitFct = FlashSpiInit_XD2;
   flashParam.spiTransferSyncFct = FlashSpiTransferSync_XD2;
   flashParam.spiSetTransferModeFct = FlashSpiSetTransferMode_XD2;
   flashParam.spiDeinitFct = FlashSpiDeinit_XD2;
   flashParam.spiParam.pollingFct = FblLookForWatchdogVoid;

   /* Call init routine of the read-only flash driver */
   FLASH_DRIVER_XD2_STATIC_INIT(&flashParam);
   if (flashParam.errorCode == kFlashOk_XD2)
   {
      initState = kFlashInitState_ReadDriver;
   }
   else
   {
      result = IO_E_NOT_OK;
   }

   return result;
}

/***********************************************************************************************************************
 *  Flash_XD2Driver_InitSync
 **********************************************************************************************************************/
/*! \brief       Check if the proper memory chip is installed
 *  \param       address Not used; conformance to HIS interface
 *  \return      The return code shows the success of the initialization
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblWrapperFlash_3673 */
IO_ErrorType V_API_NEAR Flash_XD2Driver_InitSync( void * address )
{
   IO_ErrorType result;
   IO_U16 index;

   /* Initialize variables */
   result = IO_E_OK;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_14.2 */
   (void)address;
#endif
   /* Copy flash driver into RAM buffer */
# if defined( FBL_ENABLE_SYSTEM_CHECK )
   /* Check if address and length is correct */
#  if (FLASH_SIZE_XD2 < FLASHDRV_XD2_BLOCK0_LENGTH)
#   error "Flash code does not fit into reserved buffer, check FLASH_SIZE_XD2 define"
#  endif
#  if defined( FLASH_DRIVER_XD2_RELOCATABLE )
#  else
   if (flashCode_XD2 != (IO_U8 *)FLASHDRV_XD2_BLOCK0_ADDRESS)
   {
      result = IO_E_NOT_OK;
   }
   else
#  endif
# endif /* FBL_ENABLE_SYSTEM_CHECK */
   {
      for (index = 0u; index < FLASHDRV_XD2_BLOCK0_LENGTH; index++)
      {
# if defined( FBL_WATCHDOG_ON )
         if (0u == (index & FBLWRAPPERFLASH_WD_TRIGGER_INTERVAL_MASK))
         {
            (void)FblLookForWatchdog();
         }
# endif
         flashCode_XD2[index] = FLASHDRV_XD2_DECRYPTDATA(flashDrv_XD2Blk0[index]);
      }
   }

   /* Verify if flashCode signature is correct */  /* PRQA S 0488 3 */ /* MD_FblWrapperFlash_0488 */
   if (   (FLASH_DRIVER_XD2_MCUTYPE(flashCode_XD2)   != FLASH_DRIVER_XD2_VERSION_MCUTYPE)
       || (FLASH_DRIVER_XD2_MASKTYPE(flashCode_XD2)  != FLASH_DRIVER_XD2_VERSION_MASKTYPE)
       || (FLASH_DRIVER_XD2_INTERFACE(flashCode_XD2) != FLASH_DRIVER_XD2_VERSION_INTERFACE))
   {
      /* Flash driver signature mismatch, wrong flash driver */
      result =  IO_E_NOT_OK;
   }

   if (result == IO_E_OK) /* PRQA S 3355, 3358 */ /* MD_FblWrapperFlash_3355_3358 */
   {
      if (initState == kFlashInitState_ReadDriver)
      {
         /* Call deinit function of the read-only flash driver, result is ignored */
         FLASH_DRIVER_XD2_STATIC_DEINIT(&flashParam);

         initState = kFlashInitState_Uninit;
      }

      /* Initialize error code */
      flashParam.errorCode = kFlashOk_XD2;

      /* Call init routine of the flash driver */
      /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
      FLASH_DRIVER_XD2_INIT(flashCode_XD2, &flashParam);
      if (flashParam.errorCode == kFlashOk_XD2)
      {
         /* Flash driver initialized, set flag */
         initState = kFlashInitState_FullDriver;
      }
      else
      {
         /* Initialization of flash driver failed, re-initialize read-only flash driver */
         FLASH_DRIVER_XD2_STATIC_INIT(&flashParam);
         if (flashParam.errorCode == kFlashOk_XD2)
         {
            initState = kFlashInitState_ReadDriver;
         }

         result = IO_E_NOT_OK;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Flash_XD2Driver_DeinitSync
 **********************************************************************************************************************/
/*! \brief       De-initialize the flash algorithm
 *  \param       address Not used; conformance to HIS interface
 *  \return      The return code shows the success of the de-initialization
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblWrapperFlash_3673 */
IO_ErrorType V_API_NEAR Flash_XD2Driver_DeinitSync( void * address )
{
   IO_ErrorType result;
   IO_U16 i;

   /* Initialize variables */
   result = IO_E_OK;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_14.2 */
   (void)address;
#endif

   flashParam.errorCode = kFlashOk_XD2;

   /* Check if flash driver has been initialized */
   if (initState == kFlashInitState_FullDriver)
   {
      /* Call deinitialization function */
      /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
      FLASH_DRIVER_XD2_DEINIT(flashCode_XD2, &flashParam);

      /* Clear flash driver initialized flag */
      initState = kFlashInitState_Uninit;
   }

   /* Remove the flash code from RAM */
   for (i = 0u; i < FLASH_SIZE_XD2; i++)
   {
      flashCode_XD2[i] = 0u;
#  if defined( FBL_WATCHDOG_ON )
      if (0u == (i & FBLWRAPPERFLASH_WD_TRIGGER_INTERVAL_MASK))
      {
         (void)FblLookForWatchdog();
      }
#  endif /* FBL_WATCHDOG_ON */
   }

   if (flashParam.errorCode != kFlashOk_XD2)
   {
      result = IO_E_NOT_OK;
   }

   if (initState != kFlashInitState_ReadDriver)
   {
      /* Initialize read-only flash driver, even if de-initialization failed */
      FLASH_DRIVER_XD2_STATIC_INIT(&flashParam);
      if (flashParam.errorCode == kFlashOk_XD2)
      {
         initState = kFlashInitState_ReadDriver;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Flash_XD2Driver_RWriteSync
 **********************************************************************************************************************/
/*! \brief       Program external flash by calling this routine
 *  \pre         External flash driver has to be initialized
 *  \param[in]   writeBuffer Data buffer
 *  \param[in]   writeLength Size of data to be written in bytes
 *  \param[in]   writeAddress Start address of data to be written
 *  \return      Status of flash programming
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR Flash_XD2Driver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress )
{
   IO_ErrorType result;

   /* Initialize variables */
   result = IO_E_OK;

#if ( FLASH_XD2_BASE_ADDRESS != 0u )
   /* Check if the address passed is valid*/
   if (writeAddress < FLASH_XD2_BASE_ADDRESS)
   {
      /* Either the address is incorrect or the flash offset is wrong */
      result = IO_E_NOT_OK;
   }
   else
   {
      /* Translate the write address to an external flash address by removing the offset */
      writeAddress -= FLASH_XD2_BASE_ADDRESS;
   }
#endif


#if ( FLASH_XD2_SEGMENT_SIZE > 1u )
   /* Check alignment of address and length with write segment size */
   if (0u != (writeAddress & (FLASH_XD2_SEGMENT_SIZE - 1u)))
   {
      result = IO_E_NOT_OK;
   }
   if (0u != (writeLength & (FLASH_XD2_SEGMENT_SIZE - 1u)))
   {
      result = IO_E_NOT_OK;
   }
#endif

   /* Check if flash driver has been initialized */
   if (initState != kFlashInitState_FullDriver)
   {
      result = IO_E_NOT_OK;
   }

   if (result == IO_E_OK)
   {
      /* Initialize parameter field */
      flashParam.address = writeAddress;                        /* Flash memory target address */
      flashParam.length = writeLength;                          /* Number of bytes to program */
      flashParam.data = (tFlashData_XD2 *)writeBuffer;         /* Pointer to source data buffer */
      flashParam.errorCode = kFlashOk_XD2;

      /* Call flash write function in RAM */
      /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
      FLASH_DRIVER_XD2_WRITE(flashCode_XD2, &flashParam);
      if (flashParam.errorCode != kFlashOk_XD2)
      {
         result = IO_E_NOT_OK;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Flash_XD2Driver_REraseSync
 **********************************************************************************************************************/
/*! \brief       Erase external flash memory
 *  \pre         External flash driver has to be initialized
 *  \param[in]   eraseLength Size of data to be erased in bytes
 *  \param[in]   eraseAddress Start address of data to be erased
 *  \return      Status of flash erase
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR Flash_XD2Driver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress )
{
   IO_ErrorType result;

   /* Initialize variables */
   result = IO_E_OK;

#if ( FLASH_XD2_BASE_ADDRESS != 0u )
   /* Check if the address passed is valid */
   if (eraseAddress < FLASH_XD2_BASE_ADDRESS)
   {
      /* Either the address is incorrect or the flash offset is wrong */
      result = IO_E_NOT_OK;
   }
   else
   {
      /* Translate the erase address to an external flash address by removing the offset */
      eraseAddress -= FLASH_XD2_BASE_ADDRESS;
   }
#endif


   /* Check if flash driver has been initialized */
   if (initState != kFlashInitState_FullDriver)
   {
      result = IO_E_NOT_OK;
   }

   if (result == IO_E_OK)
   {
      flashParam.address = eraseAddress;  /* Flash erase address */
      flashParam.length = eraseLength;    /* Number of bytes to be erased */
      flashParam.errorCode = kFlashOk_XD2;

      /* Call the erase function in RAM */
      /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
      FLASH_DRIVER_XD2_ERASE(flashCode_XD2, &flashParam);
      if (flashParam.errorCode != kFlashOk_XD2)
      {
         result = IO_E_NOT_OK;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Flash_XD2Driver_RReadSync
 **********************************************************************************************************************/
/*! \brief       Read external flash memory
 *  \pre         External flash driver has to be initialized
 *  \param[out]  readBuffer Data buffer
 *  \param[in]   readLength Size of data to be read in bytes
 *  \param[in]   readAddress Start address of data to be read
 *  \return      Status of flash read
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR Flash_XD2Driver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress )
{
   IO_ErrorType result;
   IO_PositionType bufferIndex;
#if (FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
   IO_SizeType alignment;
   IO_PositionType unalignedAddress;
   IO_SizeType unalignedLength;
   IO_U8 tempBuffer[FLASH_XD2_STACKED_DEVICE_COUNT];
   IO_U32 index;
#endif /* FLASH_XD2_STACKED_DEVICE_COUNT > 1u */

   /* Initialize variables */
   result = IO_E_OK;
   bufferIndex = 0u;
#if (FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
   alignment = FLASH_XD2_STACKED_DEVICE_COUNT - 1u;
   unalignedLength = 0u;
#endif /* FLASH_XD2_STACKED_DEVICE_COUNT > 1u */

#if ( FLASH_XD2_BASE_ADDRESS != 0u )
   /* Check if the address passed is valid */
   if (readAddress < FLASH_XD2_BASE_ADDRESS)
   {
      /* Either the address is incorrect or the flash offset is wrong */
      result = IO_E_NOT_OK;
   }
   else
   {
      /* Translate the read address to an external flash address by removing the offset */
      readAddress -= FLASH_XD2_BASE_ADDRESS;
   }
#endif


   /* Check if flash driver has been initialized */
   if (initState == kFlashInitState_Uninit)
   {
      result = IO_E_NOT_OK;
   }

#if (FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
   if (result == IO_E_OK)
   {
      /* Get start address part unaligned to "stacked device count" byte boundary */
      unalignedAddress = readAddress & (alignment);

      /* Check for unaligned start address for special handling */
      if (unalignedAddress != 0u)
      {
         /* Align address to next, "stacked device count" byte boundary */
         readAddress &= FblInvert32Bit(alignment);
         readLength += FLASH_XD2_STACKED_DEVICE_COUNT - unalignedAddress;

         /* Initialize parameter field */
         flashParam.address = readAddress;                     /* Flash memory target address */
         flashParam.length = FLASH_XD2_STACKED_DEVICE_COUNT;  /* Number of bytes to read, always read "stacked device count" bytes */
         flashParam.data = (tFlashData_XD2 *)tempBuffer;           /* Pointer to source data buffer */ /* PRQA S 3217 */ /* MD_FblWrapperFlash_3217 */
         flashParam.errorCode = kFlashOk_XD2;

         if (initState == kFlashInitState_ReadDriver)
         {
            FLASH_DRIVER_XD2_STATIC_READ(&flashParam);
         }
         else
         {
            /* Call flash read function in RAM */ /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
            FLASH_DRIVER_XD2_READ(flashCode_XD2, &flashParam);
         }

         if (flashParam.errorCode == kFlashOk_XD2)
         {
            /* Copy data from temporary read buffer into provided read buffer */
            for (index = unalignedAddress; index < FLASH_XD2_STACKED_DEVICE_COUNT; index++)
            {
               readBuffer[bufferIndex] = tempBuffer[index];
               bufferIndex++;
            }
         }
         else
         {
            result = IO_E_NOT_OK;
         }

         /* Update variables */
         readAddress += FLASH_XD2_STACKED_DEVICE_COUNT;
         readLength -= FLASH_XD2_STACKED_DEVICE_COUNT;
      }

      /* Check now if length is unaligned and align it if necessary */
      unalignedLength = readLength & alignment;
      readLength &= FblInvert32Bit(alignment);
   }
#endif /* FLASH_XD2_STACKED_DEVICE_COUNT > 1u */

   if (result == IO_E_OK)
   {
      /* Initialize parameter field */
      flashParam.address = readAddress;                              /* Flash memory target address */
      flashParam.length = readLength;                                /* Number of bytes to read */
      flashParam.data = (tFlashData_XD2 *)&readBuffer[bufferIndex]; /* Pointer to source data buffer */
      flashParam.errorCode = kFlashOk_XD2;

      if (initState == kFlashInitState_ReadDriver)
      {
         FLASH_DRIVER_XD2_STATIC_READ(&flashParam);
      }
      else
      {
         /* Call flash read function in RAM */ /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
         FLASH_DRIVER_XD2_READ(flashCode_XD2, &flashParam);
      }

      if (flashParam.errorCode != kFlashOk_XD2)
      {
         result = IO_E_NOT_OK;
      }
   }

#if (FLASH_XD2_STACKED_DEVICE_COUNT > 1u)
   if (result == IO_E_OK)
   {
      /* Check for unaligned length for special handling */
      if (unalignedLength != 0u)
      {
         /* Adapt variables */
         readAddress += readLength;
         bufferIndex += readLength;

         /* Initialize parameter field */
         flashParam.address = readAddress;                  /* Flash memory target address */
         flashParam.length = FLASH_XD2_STACKED_DEVICE_COUNT;    /* Number of bytes to read, always read "stacked device count" bytes */
         flashParam.data = (tFlashData_XD2 *)tempBuffer;        /* Pointer to source data buffer */ /* PRQA S 3217 */ /* MD_FblWrapperFlash_3217 */
         flashParam.errorCode = kFlashOk_XD2;

         if (initState == kFlashInitState_ReadDriver)
         {
            FLASH_DRIVER_XD2_STATIC_READ(&flashParam);
         }
         else
         {
            /* Call flash read function in RAM */ /* PRQA S 0305,0310,3305 1 */ /* MD_FblWrapperFlash_0305_0310_3305 */
            FLASH_DRIVER_XD2_READ(flashCode_XD2, &flashParam);
         }

         if (flashParam.errorCode == kFlashOk_XD2)
         {
            /* Copy data from temporary read buffer into provided read buffer */
            for (index = 0; index < unalignedLength; index++)
            {
               readBuffer[bufferIndex] = tempBuffer[index];
               bufferIndex++;
            }
         }
         else
         {
            result = IO_E_NOT_OK;
         }
      }
   }
#endif /* FLASH_XD2_STACKED_DEVICE_COUNT > 1u */

   return result;
} /* PRQA S 6010, 6030 */ /* MD_MSR_STPTH, MD_MSR_STCYC */


/***********************************************************************************************************************
 *  Flash_XD2Driver_GetVersionOfDriver
 **********************************************************************************************************************/
/*! \brief        Get actual version of flash driver
 *  \pre          Flash driver has to be initialized
 *  \return       BCD coded version of flash driver
 **********************************************************************************************************************/
IO_U32 V_API_NEAR Flash_XD2Driver_GetVersionOfDriver( void )
{
   IO_U32 version;

   /* Check if flash code is present */
   /* PRQA S 0488 3 */ /* MD_FblWrapperFlash_0488 */
   if (   (FLASH_DRIVER_XD2_MCUTYPE(flashCode_XD2)   == FLASH_DRIVER_XD2_VERSION_MCUTYPE)
       && (FLASH_DRIVER_XD2_MASKTYPE(flashCode_XD2)  == FLASH_DRIVER_XD2_VERSION_MASKTYPE)
       && (FLASH_DRIVER_XD2_INTERFACE(flashCode_XD2) == FLASH_DRIVER_XD2_VERSION_INTERFACE))
   {
      /* Flash driver is present, return actual version */
      version = (IO_U32)(((IO_U32)flashParam.majorVersion << 16u) | \
                         ((IO_U32)flashParam.minorVersion <<  8u) | \
                         ((IO_U32)flashParam.patchLevel   <<  0u));
   }
   else
   {
      /* Flash driver not present, statically linked or signature mismatch: return built-in version */
      version = (IO_U32)(((IO_U32)FLASH_DRIVER_XD2_VERSION_MAJOR << 16u) | \
                         ((IO_U32)FLASH_DRIVER_XD2_VERSION_MINOR <<  8u) | \
                         ((IO_U32)FLASH_DRIVER_XD2_VERSION_PATCH <<  0u));
   }

   return version;
}
#define FBLFLIO_XD2_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

/* module specific MISRA deviations:

   MD_FblWrapperFlash_0305_0310_3305:
      Reason:     A function-like macro is used to get the function pointer of flash function from a flash code buffer.
      Risk:       The buffer could be corrupted and wrong function pointers are referenced.
      Prevention: No prevention required as the buffer is validated by flash download and init function.

   MD_FblWrapperFlash_0488
      Reason:     Performing pointer arithmetic to get version information of flash driver from flash code buffer.
      Risk:       If "unsigned char" doesn't have a size of 1 Byte, the comparison will lead to wrong results.
      Prevention: Check if "unsigned char" has a size of 1 Byte on used platform.

   MD_FblWrapperFlash_3217:
      Reason:     Address of automatic data assigned to pointer with linkage or wider scope.
      Risk:       The locally defined variable will no longer exist after a return from the function.
      Prevention: All changes to the affected code parts have to be reviewed by the module responsible.

   MD_FblWrapperFlash_3218:
      Reason:     The local data buffers of this module are kept at a central location for a better overview and
                  maintenance.
      Risk:       Scope is larger than required (whole file instead of one function). Some other function could access
                  the variable.
      Prevention: Restrict the functionality in this module to the intended purpose. Don't add functions which shall not
                  be able to access the local data buffers.

   MD_FblWrapperFlash_3355_3358:
      Reason:     The 'if' condition is required due to configuration specific execution paths which will indeed modify
                  the variable value.
      Risk:       No risk.
      Prevention: No prevention required.

   MD_FblWrapperFlash_3673:
      Reason:     According to HIS flash driver API a parameter 'address' should be passed to the function.
      Risk:       No risk.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_FLIO_XD2.C
 **********************************************************************************************************************/
