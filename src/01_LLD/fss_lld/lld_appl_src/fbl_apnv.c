/* Kernbauer Version: 1.12 Konfiguration: FBL Erzeugungsgangnummer: 1 */

/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Application dependent nonvolatile memory access routines
 *
 *  \note          Please note, that this file contains a collection of callback functions to be used with the
 *                 Flash Bootloader. These functions may influence the behavior of the bootloader in principle.
 *                 Therefore, great care must be taken to verify the correctness of the implementation.
 *                 The contents of the originally delivered files are only examples resp. implementation proposals.
 *                 With regard to the fact that these functions are meant for demonstration purposes only, Vector
 *                 Informatik's liability shall be expressly excluded in cases of ordinary negligence, to the extent
 *                 admissible by law or statute.
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2022 by Vector Informatik GmbH.                                                  All rights reserved.
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
 *  07.00.00   2021-02-23  visrie  FBL-1525         Added support for STJLR.18.089 Issue 5
 *  07.00.01   2022-07-05  vismix  FBL-5233         No changes
 *  07.00.02   2022-07-26  visjns  ESCAN00110436    Compiler error: ApplFblOtpWriteEntry 3rd parameter expected vuint8*
 *  07.00.03   2022-08-03  visjns  ESCAN00111421    Public Key Hash request ($D03F) returns incorrect Hash
 *  07.01.00   2022-08-15  vistmo  FBL-5514         No changes
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY (kbFbl_apAPI.c)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2018-09-14  visrie  ESCAN00100739    Added support for FblLib_NvPattern
 *                                                  Removed unused code
 *                         viscb   ESCAN00101418    Callout function for memory condition check
 *                         visach  ESCAN00101686    Added interface definition for vendor verification routine
 *  02.01.00   2019-02-26  visrie  ESCAN00102257    Added additional callout functions
 *  02.01.01   2019-09-23  visrie  FBL-452          Added support for FrArTp
 *  02.02.00   2019-12-05  visrie  FBL-458          Added FblMio callout functions
 *  02.03.00   2020-05-07  visrie  FBL-1414         Added callout functions for One-Step-Updater
 *  02.03.01   2020-06-02  visjdn  ESCAN00106533    Update to latest MISRA version
 *  02.03.02   2020-09-14  visrcn  FBL-2257         Add MISRA justifications
 *  02.03.03   2020-11-23  visrcn  FBL-2564         Add MISRA justifications
 *  02.03.04   2021-03-19  visjdn  FBL-2916         Add MISRA justifications
 *  02.04.00   2021-05-26  vishor  FBL-3165         MISRA corrections and justifications
 *  02.05.00   2021-06-15  visrie  FBL-3591         Provide default implementation for ApplFbl_DetEntryHandler
 *                                                  Add MISRA justifications
 *  02.06.00   2021-07-15  visjdn  FBL-3381         Re-mapping of EcuM_SetWakeupEvent
 *  02.07.00   2021-07-22  visrie  FBL-3822         Update to QAC9 Helix-2021
 *  02.08.00   2021-09-14  visjdn  FBL-2859         Add MISRA justifications
 *  02.09.00   2021-10-12  vistmo  FBL-3901         Add authentication callbacks
 *  02.10.00   2021-10-15  visrie  FBL-3945         Remove content of ApplFblStartApplication
 *  02.10.01   2021-11-12  vishor  ESCAN00110133    Compiler error: Unknown symbols
 *                                                   ApplFblSave/RestoreStatusSector/Dynamic
 *  02.10.02   2022-06-27  visrie  FBL-4694         Add MISRA justifications
 *  02.10.03   2022-10-20  visjns  FBL-5452         Add MISRA justifications
 *  02.11.00   2022-12-22  vistbe  FBL-5691         Add support for LZSS compression
 *  02.11.01   2023-04-25  visjns  ESCAN00113808    Compiler error: TPLIN_VERSION/tLinFrameHandleType is not defined
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY (KbFbl_apOem.c, Ford)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  09.00.00   2021-02-23  visrie  FBL-1525         Added support for STJLR.18.089 Issue 5
 *  09.00.01   2021-04-19  vistbe  ESCAN00108065    Compile error
 *  09.00.02   2021-06-17  vishor  ESCAN00109177    Public Key Hash Calculation Returns Incorrect Hash
 *                                 ESCAN00108819    FESN isn't part of the initialization
 *  09.01.00   2021-06-28  vistbe  FBL-3522         Updated signing solution (new token format)
 *  09.02.00   2021-09-06  visjdn  FBL-2859         MISRA 2012 environment creation
 *  09.02.01   2023-01-17  visrie  ESCAN00112646    Security Bytes in RAM in ApplFblSecurityKey is not cleared after use
 *                                 ESCAN00112929    Wrong answer length for DID D071
 *  09.03.00   2023-02-09  vistmo  FBL-6438         Implement unsupported requirements for SyncP
 *  09.03.01   2023-03-15  visjns  ESCAN00113286    Compiler error: undefined symbols CheckSuppressPosRspMsgIndication/
 *                                                   kDiagSubRoutineType1_Sync in ApplDiagRoutineControl
 *  09.03.02   2023-05-26  vismix  ESCAN00108784    [XCP] Bootloader does not process XCP messages
 **********************************************************************************************************************/

#define FBL_APNV_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

/* PRQA S 0857 EOF */ /* MD_MSR_1.1_857 */
#include "fbl_inc.h"
#if defined( FBL_ENABLE_VALSTRUCT )
# include "fbl_valstruct.h"
#endif
# include "Det.h"
# if (DET_ENABLED == STD_ON)
#   include "Can.h"
#   include "CanTp.h"
# endif

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLKBAPI_FRAMENV_FORD_VERSION != 0x0701u ) || \
    ( FBLKBAPI_FRAMENV_FORD_RELEASE_VERSION != 0x00u )
# error "Error in fbl_apnv.c: Source and header file are inconsistent!"
#endif

#if ( FBLKBAPI_FRAMENV_FORD_VERSION != _FBLKBAPI_FRAMENV_OEM_VERSION ) || \
    ( FBLKBAPI_FRAMENV_FORD_RELEASE_VERSION != _FBLKBAPI_FRAMENV_OEM_RELEASE_VERSION )
# error "Error in fbl_apnv.c: Source and v_ver.h are inconsistent!"
#endif


#if ( FBLKBAPI_FORD_VERSION != 0x0903u ) || \
    ( FBLKBAPI_FORD_RELEASE_VERSION != 0x02u )
# error "Error in fbl_apXX.c: Source and header file are inconsistent!"
#endif

#if ( FBLKBAPI_FORD_VERSION != _FBLKBAPI_OEM_VERSION ) || \
    ( FBLKBAPI_FORD_RELEASE_VERSION != _FBLKBAPI_OEM_RELEASE_VERSION )
# error "Error in fbl_apXX.c: Source and v_ver.h are inconsistent!"
#endif

#if ( FBLKBAPI_VERSION != 0x0211u ) || \
    ( FBLKBAPI_RELEASE_VERSION != 0x01u )
# error "Error in FBL_APxx.C: Source and header file are inconsistent!"
#endif
#if ( FBLKBAPI_VERSION != _FBLKBAPI_VERSION ) || \
    ( FBLKBAPI_RELEASE_VERSION != _FBLKBAPI_RELEASE_VERSION )
# error "Error in FBL_APxx.C: Source and V_VER.H are inconsistent!"
#endif


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* PRQA S 3453 TAG_FblApNv_3453_1 */ /* MD_MSR_FctLikeMacro */

#if defined( FBL_APPL_ENABLE_OTP )
/* One-time-programmable (OTP) storage location in PBL area */
/* Helper macro to align size of OTP entries to memory write segment size*/
# define FblOtpAlignSize(size)                        (((((size) + FLASH_SEGMENT_SIZE) - 1u) / FLASH_SEGMENT_SIZE) * FLASH_SEGMENT_SIZE)

/* Size of OTP storage members */

# if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
#  define FBL_OTP_SECURITY_BYTES_SIZE                 (SEC_ECU_KEY_LENGTH)
# else
#  define FBL_OTP_SECURITY_BYTES_SIZE                 0u
# endif /* FBL_DIAG_ENABLE_UPDATE_SEC_BYTES */
# define FBL_OTP_SECURITY_BYTES_SIZE_ALIGNED          (FblOtpAlignSize(FBL_OTP_SECURITY_BYTES_SIZE))

# if defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
#  define FBL_OTP_PRODKEY_MOD_SIZE                    sizeof(SecM_RsaMod)
#  define FBL_OTP_PRODKEY_EXP_SIZE                    sizeof(SecM_RsaExp)
# else
#  define FBL_OTP_PRODKEY_MOD_SIZE                    0u
#  define FBL_OTP_PRODKEY_EXP_SIZE                    0u
# endif /* FBL_DIAG_ENABLE_PRODKEY_UPDATE */
# define FBL_OTP_PRODKEY_KEY_SIZE                     (FBL_OTP_PRODKEY_MOD_SIZE + FBL_OTP_PRODKEY_EXP_SIZE)
# define FBL_OTP_PRODKEY_KEY_SIZE_ALIGNED             (FblOtpAlignSize(FBL_OTP_PRODKEY_KEY_SIZE))

# define FBL_OTP_TOTAL_SIZE                           (FBL_OTP_SECURITY_BYTES_SIZE_ALIGNED + FBL_OTP_PRODKEY_KEY_SIZE_ALIGNED)

/* Offset values for OTP area members */
# define FBL_OTP_BASE_OFFSET                          0u
# define FBL_OTP_SECURITY_BYTES_OFFSET                (FBL_OTP_BASE_OFFSET)
# define FBL_OTP_PRODKEY_KEY_OFFSET                   (FBL_OTP_SECURITY_BYTES_OFFSET   + FBL_OTP_SECURITY_BYTES_SIZE_ALIGNED)
# define FBL_OTP_PRODKEY_MOD_OFFSET                   (FBL_OTP_PRODKEY_KEY_OFFSET)
# define FBL_OTP_PRODKEY_EXP_OFFSET                   (FBL_OTP_PRODKEY_MOD_OFFSET      + FBL_OTP_PRODKEY_MOD_SIZE)

/* Absolute addresses of OTP area members */
# define FBL_OTP_BASE_ADDRESS                         ((tFblAddress)(&nvOtpArea[FBL_OTP_BASE_OFFSET]))
# define FBL_OTP_SECURITY_BYTES_ADDRESS               ((tFblAddress)(&nvOtpArea[FBL_OTP_SECURITY_BYTES_OFFSET]))
# define FBL_OTP_PRODKEY_MOD_ADDRESS                  ((tFblAddress)(&nvOtpArea[FBL_OTP_PRODKEY_MOD_OFFSET]))
# define FBL_OTP_PRODKEY_EXP_ADDRESS                  ((tFblAddress)(&nvOtpArea[FBL_OTP_PRODKEY_EXP_OFFSET]))
#endif /* FBL_APPL_ENABLE_OTP */

#if defined( FBL_CW_ENABLE_MULTIPLE_CONNECTIONS )
# define kFblCwDefaultConnection    0u
#endif

/* PRQA L:TAG_FblApNv_3453_1 */

/***********************************************************************************************************************
 *  TYPES
 **********************************************************************************************************************/

# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
typedef enum
{
   kFblUseProductionKey,
   kFblUseDevelopmentKey /* PRQA S 3205 */ /* MD_FblKbApiFrame_3205 */
} tFblKeyState;
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

#if defined( FBL_APPL_ENABLE_OTP )
# if defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
typedef struct
{
   vuintx alignDummy;
   vuint8 data[FBL_OTP_PRODKEY_KEY_SIZE];
} tAlignedPublicKeyWriteBuffer;
# endif /* FBL_DIAG_ENABLE_PRODKEY_UPDATE */
#endif /* FBL_APPL_ENABLE_OTP */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2 applSignValidState; /* PRQA S 1514 */ /* MD_FblKbApiFrame_1514 */
#endif

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#if defined( FBL_APPL_ENABLE_OTP )
/* This ROM array is intended to show location and size of the OTP area so this area can be spared in the linker
   command file. Before writing to the OTP area, ensure that the array is removed by a post-build script. */
# define FBLAP_OTP_START_SEC_CONST
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 nvOtpArea[FBL_OTP_TOTAL_SIZE];
# define FBLAP_OTP_STOP_SEC_CONST
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
#endif /* FBL_APPL_ENABLE_OTP */

/***********************************************************************************************************************
 *  EXTERNAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#if defined( FBL_APPL_ENABLE_OTP )
static tFlashStatus ApplFblOtpGetMemAreaErased( tFblAddress memAddress, tFblLength memLength );
static IO_ErrorType ApplFblOtpReadEntry ( tFblAddress address, tFblLength length, vuint8 * readBuffer  );
static tFblResult ApplFblOtpWriteEntry( tFblAddress address, tFblLength length, vuint8 * writeBuffer );
#endif
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
static tFblResult ApplFblGetKeyState(tFblKeyState * keyState);
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

#if defined( FBL_APPL_ENABLE_OTP )
/***********************************************************************************************************************
 *  ApplFblOtpGetMemAreaErased
 **********************************************************************************************************************/
/*! \brief       Check whether the given memory area is erased (contains the respective erased value)
 *  \param[in]   memAddress Start address of the memory area
 *  \param[in]   memLength Length of the memory area
 *  \return      kFlashErased = memory area are in state 'erased'
 *               kFlashNotErased = non-erased memory area detected
 **********************************************************************************************************************/
static tFlashStatus ApplFblOtpGetMemAreaErased( tFblAddress memAddress, tFblLength memLength )
{
   tFlashStatus result;
   tFblLength readLength;
   IO_ErrorType memDrvResult;
   vuint16 bufIdx;
   vuint8 readBuffer[16u];
   tFblAddress localAddress;
   tFblLength localLength;

   result = kFlashErased;
   localAddress = memAddress;
   localLength = memLength;

   while ((localLength > 0u) && (kFlashErased == result))
   {
      readLength = (localLength >= sizeof(readBuffer)) ? sizeof(readBuffer) : localLength;
      memDrvResult = FlashDriver_RReadSync(readBuffer, readLength, localAddress);

      if ((IO_E_OK == memDrvResult) || (IO_E_ERASED == memDrvResult))
      {
         for (bufIdx = 0u; bufIdx < readLength; bufIdx++)
         {
            /* Check if the pattern is in its initial state (i. e. the memory at the pattern address is erased) */
            if (readBuffer[bufIdx] != (vuint8)FBL_FLASH_DELETED)
            {
               /* Memory content has been modified - return with negative result */
               result = kFlashNotErased;
               break;
            }
         }

         localAddress += readLength;
         localLength -= readLength; /* PRQA S 3382 */ /* MD_FblKbApiFrame_3382 */
      }
      else
      {
         /* Failure reported by read function */
         result = kFlashNotErased;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  ApplFblOtpReadEntry
 **********************************************************************************************************************/
/*! \brief       Read entry in one-time-programmable (OTP) area and return erased status as well as memory content
 *  \param[in]   address Start address for read operation within OTP area
 *  \param[in]   length Length of OTP entry
 *  \param[out]  readBuffer Pointer to memory buffer which shall receive the data which has been read from the OTP area
 *  \return      IO_E_OK = Read data available in buffer
 *               IO_E_NOT_OK = Error occurred during memory read operation, buffer content invalid
 *               IO_E_ERASED = OTP entry is still in erased state
 **********************************************************************************************************************/
static IO_ErrorType ApplFblOtpReadEntry(tFblAddress address, tFblLength length, vuint8 * readBuffer)
{
   IO_ErrorType result;

   if (kFlashNotErased == ApplFblOtpGetMemAreaErased(address, FblOtpAlignSize(length)))
   {
      /* Only read entry if buffer has been provided */
      if (V_NULL != readBuffer)
      {
         /* Read actual data */
         result = FlashDriver_RReadSync(readBuffer, length, address);
      }
      else
      {
         /* OTP entry seems to be available, but no data buffer provided */
         result = IO_E_NOT_OK;
      }
   }
   else
   {
      /* Obviously, the OTP entry has not been written yet */
      result = IO_E_ERASED;
   }

   return result;
}

/***********************************************************************************************************************
 *  ApplFblOtpWriteEntry
 **********************************************************************************************************************/
/*! \brief       Write entry in one-time-programmable (OTP) area
 *  \param[in]   address Start address for write operation within OTP area
 *  \param[in]   length Length of OTP entry
 *  \param[in]   writeBuffer Pointer to memory buffer which shall receive the data which has been read from the OTP area
 *  \return      kFblOk = OTP entry written successfully, kFblFailed = OTP write operation failed
 **********************************************************************************************************************/
static tFblResult ApplFblOtpWriteEntry(tFblAddress address, tFblLength length, vuint8 * writeBuffer)
{
   tFblResult result;
   tFblLength alignedLength, paddedLength;
   IO_ErrorType memDrvResult;
   vuint8 padBuffer[FLASH_SEGMENT_SIZE], padIdx;

   /* Check whether OTP area is aligned to memory write segment size */ /* PRQA S 0306 1 */ /* MD_FblKbApiFrame_0306 */
   assertFblUser((FBL_OTP_BASE_ADDRESS & (FLASH_SEGMENT_SIZE - 1u)) == 0u, kFblSysAssertParameterOutOfRange);

   /* Enhance write length based on memory write segment size */
   paddedLength = FblOtpAlignSize(length);
   /* Calculate amount of data which can be written aligned (without padding) */
   alignedLength = (paddedLength != length) ? (paddedLength - FLASH_SEGMENT_SIZE) : length;

   /* Check if write request is correctly addressed to OTP memory area */ /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
   if ((address >= FBL_OTP_BASE_ADDRESS) && ((address - FBL_OTP_BASE_ADDRESS) < FBL_OTP_TOTAL_SIZE) &&
       (alignedLength <= FBL_OTP_TOTAL_SIZE) && ((address - FBL_OTP_BASE_ADDRESS) <= (FBL_OTP_TOTAL_SIZE - alignedLength)))
   {
      /* Check if OTP entry is still erased */
      memDrvResult = ApplFblOtpReadEntry(address, length, V_NULL);
      if (IO_E_ERASED == memDrvResult)
      {
         MemDriver_RWriteBegin(0u); /* PRQA S 3109 */ /* MD_MSR_14.3 */

         /* Write aligned portion of data */
         memDrvResult = FlashDriver_RWriteSync(writeBuffer, alignedLength, address);

         if ((IO_E_OK == memDrvResult) && (alignedLength < length))
         {
            /* Write remaining (padded) portion of data */
            for (padIdx = 0u; padIdx < FLASH_SEGMENT_SIZE; padIdx++)
            {
               padBuffer[padIdx] = (vuint8)(((alignedLength + padIdx) < length) ? writeBuffer[alignedLength + padIdx]
                                                                                : 0x00u);
            }

            memDrvResult = FlashDriver_RWriteSync(padBuffer, FLASH_SEGMENT_SIZE, address + alignedLength);
         }

         MemDriver_RWriteEnd(0u);   /* PRQA S 3109 */ /* MD_MSR_14.3 */
      }
      result = (tFblResult)((IO_E_OK == memDrvResult) ? kFblOk : kFblFailed);
   }
   else
   {
      /* Write request out of range */
      result = kFblFailed;
   }

   return result;
}
#endif /* FBL_APPL_ENABLE_OTP */

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  ApplFblExtProgRequest
 **********************************************************************************************************************/
/*! \brief       Function is called on power-on reset to check if an external programming request exists.
 *  \details     If the flag is set, the flag is cleared and the function returns kProgRequest.
 *  \return      kProgRequest = external programming request, kNoProgRequest = programming request flag not set
 **********************************************************************************************************************/
tFblProgStatus ApplFblExtProgRequest( void )
{
   tFblProgStatus progStatus;
   return progStatus;
}

/***********************************************************************************************************************
 *  ApplFblIsValidApp
 **********************************************************************************************************************/
/*! \brief       Function is called on power-up to check if the application is successfully validated or not.
 *  \details     Returns kApplValid if application is valid (all mandatory blocks available) and application start is
 *               allowed. Otherwise it returns kApplInvalid.
 **********************************************************************************************************************/
/* PRQA S 2889 1 */ /* MD_FblKbApi_2889 */
tApplStatus ApplFblIsValidApp( void )
{
   /* DemoAppl: disable application start */
   return kApplInvalid;
}

/***********************************************************************************************************************
 *  ApplFblValidateApp
 **********************************************************************************************************************/
/*! \brief       Function is called after a successful download to validate a file.
 *  \pre         Complete file must be successfully downloaded
 *  \return      kFblOk = validation successfully performed, kFblFailed = validation failed
 **********************************************************************************************************************/
/* PRQA S 6080 1 */ /* MD_MSR_STMIF */
tFblResult ApplFblValidateApp( void )
{
   /*
    * This function is called in the context of RoutineControl/CheckValidApp at the end of the download. It can be used
    * to perform an overall validity/compatibility check of the downloaded software parts. The result has to be stored
    * in non-volatile memory so it can be evaluated by function ApplFblIsValidApp. In particular, this approach might
    * be useful if the overall check takes too much time to be performed at startup in ApplFblIsValidApp (e.g. if
    * inter-processor communication is required).
    */
   tFblResult result = kFblFailed;
   vuint8 blockNr; /* PRQA S 0781 */ /* MD_FblKbApiOem_0781 */
   tBlockDescriptor blockDescriptor;

   /* Set application valid */
   blockNr = FblDiagGetLastErasedBlock();
   if (FblLbtGetBlockDescriptorByNr(blockNr, &blockDescriptor) == kFblOk)
   {
      result = ApplFblSetApplPresence(&blockDescriptor);
   }

   return result;
} /* PRQA S 6080 */ /* MD_MSR_STMIF */

/***********************************************************************************************************************
 *  ApplFblInvalidateApp
 **********************************************************************************************************************/
/*! \brief       Function is called before erasure of the application
 *  \return      kFblOk = invalidation successfully performed, kFblFailed = invalidation failed
 **********************************************************************************************************************/
tFblResult ApplFblInvalidateApp( void )
{
   tFblResult retCode = kFblFailed;
# if defined( FBL_ENABLE_PRESENCE_PATTERN )
   tBlockDescriptor iterBlock;
   tFblLbtBlockFilter blockFilter;
# else
#  error "Disabling presence pattern requires user specific adaptation of the code!"
# endif /* FBL_ENABLE_PRESENCE_PATTERN */

# if defined( FBL_ENABLE_PRESENCE_PATTERN )
   /* Search all modules for an application valid pattern and clear it */
   FblLbtBlockFilterInit(&blockFilter);
   FblLbtBlockFilterSetBlockType(&blockFilter, kBlockTypeApplication);

   iterBlock = FblLbtBlockFirst(&blockFilter);
   while (FblLbtBlockDone() == FALSE)
   {
      retCode = ApplFblClrApplPresence(&iterBlock);
      if (retCode != kFblOk)
      {
         break;
      }
      iterBlock = FblLbtBlockNext();
   }
# else
#  error "Disabling presence pattern requires user specific adaptation of the code!"
# endif /* FBL_ENABLE_PRESENCE_PATTERN */

   return retCode;
}

/***********************************************************************************************************************
 *  ApplFblValidateBlock
 **********************************************************************************************************************/
/*! \brief       Function is called after a successful download (CRC check was successful) to validate the logical block
 *  \pre         Logical block must be successfully downloaded
 *  \param[in]   blockDescriptor Block descriptor structure
 *  \return      kFblOk: validation successfully performed, kFblFailed: validation failed
 **********************************************************************************************************************/
/* PRQA S 6010, 6030, 6050, 6080 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL, MD_MSR_STMIF */
tFblResult ApplFblValidateBlock( tBlockDescriptor blockDescriptor )
{
   tFblResult retCode;
#if defined( FBL_ENABLE_VALSTRUCT )
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
   vuint8 localSigValidationState;
# endif /* SEC_SECURITY_CLASS_VERIFY */
#endif /* FBL_ENABLE_VALSTRUCT */
   tBlockDescriptor localBlockDescriptor;

   localBlockDescriptor = blockDescriptor;

   /*
    * This function is called in the context of RoutineControl/CheckMemory. It is used to check and persist the
    * validity of a single logical block. The default implementation uses a validation structure which is embedded
    * in the download to perform the actual validity check. By default, the result of this check will be persisted
    * within the last bytes of the respective logical block using the so-called presence pattern mechanism.
    */

   /* Restrict verification to invalid blocks */
#if defined( FBL_ENABLE_PRESENCE_PATTERN )
   retCode = ApplFblChkModulePresence(&localBlockDescriptor);
#else
   /* User specific: get block validity (e.g. from EEPROM) */
   retCode = kFblFailed;
# error "Disabling presence pattern requires user specific adaptation of the code!"
#endif

   if (kFblOk != retCode)
   {
      /* Block validation */
#if defined( FBL_ENABLE_VALSTRUCT )
      /* Use embedded validation structure to verify the block content */
      /* Note: in case of error, retCode will contain an OEM specific error code */
      {
         retCode = FblValStructValidateBlock(&localBlockDescriptor);
      }
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
      localSigValidationState = ApplFblGetSigValidationState();
      /* Report only the first occurrence of an error, overwrite VerificationOk (0x00) and VerificationNotExecuted (0xFF) */
      if (   ((localSigValidationState == kFblOk) && (retCode != kFblOk))
          || (localSigValidationState == 0xFFu))
      {
         /* Remember current state for reporting */
         ApplFblSetSigValidationState(retCode);
      }
# endif /* SEC_SECURITY_CLASS_VERIFY */
#else

      /* User specific: verify block content */
# error "Disabling validation structure requires user specific adaptation of the code!"
#endif /* FBL_ENABLE_VALSTRUCT */

      if (kFblOk == retCode)
      {
         /* Block valid: store validity status in non-volatile memory */
         /* Don't use OTA callbacks for SBL */
         if (localBlockDescriptor.blockType != kBlockTypeSbl)
         {
            /* Block valid: store validity status in non-volatile memory */
# if defined( FBL_ENABLE_PRESENCE_PATTERN )
            /* Set presence pattern in last flashed logical block. */
            if (kFblOk != ApplFblSetModulePresence(&localBlockDescriptor))
            {
               retCode = kFblFailed;
            }
# else
            /* User specific: set block validity (e.g. in EEPROM) */
#  error "Disabling presence pattern requires user specific adaptation of the code!"
# endif /* FBL_ENABLE_PRESENCE_PATTERN */
         }
      }
   }


   return retCode;
} /* PRQA S 6010, 6030, 6050, 6080 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL, MD_MSR_STMIF */

/***********************************************************************************************************************
 *  ApplFblInvalidateBlock
 **********************************************************************************************************************/
/*! \brief       Whenever the bootloader needs to delete data, this function is called
 *               to invalidate the current logical block.
 *  \param[in]   blockDescriptor Block descriptor structure
 *  \return      kFblOk: invalidation successfully performed, kFblFailed: invalidation failed
 **********************************************************************************************************************/
tFblResult ApplFblInvalidateBlock( tBlockDescriptor blockDescriptor )
{
   tFblResult retCode;
   tBlockDescriptor localBlockDescriptor;

   localBlockDescriptor = blockDescriptor;

   /*
    * This function is called in the context of RoutineControl/EraseMemory. It is used to revert the validity of a
    * single logical block. The default implementation uses the so-called presence pattern mechanism.
    */

   /* Restrict invalidation of application validity in case a mandatory block is downloaded */
   retCode = ApplFblInvalidateApp();

#if defined( FBL_ENABLE_PRESENCE_PATTERN )
   retCode |= ApplFblClrModulePresence(&localBlockDescriptor);
#else
   /* User specific: clear block validity (e.g. in EEPROM) */
# error "Disabling presence pattern requires user specific adaptation of the code!"
#endif /* FBL_ENABLE_PRESENCE_PATTERN */

   return retCode;
}

#if defined( FBL_ENABLE_SECMOD_FORD )
/***********************************************************************************************************************
 *  ApplFblReadSecurityBytes
 **********************************************************************************************************************/
/*! \brief       Provide secret key used for HMAC calculation.
 *  \param[out]  key Target pointer to key buffer
 *  \param[in]   length Requested key length
 **********************************************************************************************************************/
void ApplFblReadSecurityBytes( vuint8 * key, vuint16 length )
{
   const vuint8 staticKey[SEC_ECU_KEY_LENGTH] = SEC_ECU_KEY_BYTE_ARRAY;
# if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
   vuint8 progKey[SEC_ECU_KEY_LENGTH];
# endif

   assertFblGen((SEC_ECU_KEY_LENGTH == length), kFblOemAssertParameterOutOfRange);

# if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
   if (IO_E_ERASED != ApplFblOtpReadEntry(FBL_OTP_SECURITY_BYTES_ADDRESS, length, progKey)) /* PRQA S 0306 */ /* MD_FblKbApiFrame_0306 */
   {
      /* Use key from OTP area */ /* PRQA S 0314 1 */ /* MD_FblKbApiFrame_0314_MemCpy */
      (void)MEMCPY(key, progKey, length);
   }
   else
# endif
   {
      /* Use secret key which is configured in GENy */ /* PRQA S 0314 1 */ /* MD_FblKbApiFrame_0314_MemCpy */
      (void)MEMCPY(key, staticKey, length);
   }
}

# if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
/***********************************************************************************************************************
 *  ApplFblWriteSecurityBytes
 **********************************************************************************************************************/
/*! \brief       Function is called by the diagnostic layer to update the fixed security bytes which are used by the
 *               seed/key implementation
 *  \param[in]   key Source pointer to key buffer
 *  \param[in]   length Requested key length
 *  \return      kFblOk = security bytes have been written successfully, kFblFailed = error writing security bytes
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
tFblResult ApplFblWriteSecurityBytes( vuint8 * key, vuint16 length )
{
   tFblResult result;
   vuint8 memContent[FBL_OTP_SECURITY_BYTES_SIZE];

   assertFblGen((length <= FBL_OTP_SECURITY_BYTES_SIZE), kFblOemAssertParameterOutOfRange);

   if (IO_E_ERASED == ApplFblOtpReadEntry(FBL_OTP_SECURITY_BYTES_ADDRESS, FBL_OTP_SECURITY_BYTES_SIZE, memContent)) /* PRQA S 0306 */ /* MD_FblKbApiFrame_0306 */
   {
      vuint16 i;

      /* Storage location is in 'erased' state: write security bytes */
      for (i = 0; i < length; i++)
      {
         memContent[i] = key[i];
      }

      result = ApplFblOtpWriteEntry(FBL_OTP_SECURITY_BYTES_ADDRESS, FBL_OTP_SECURITY_BYTES_SIZE, memContent); /* PRQA S 0306 */ /* MD_FblKbApiFrame_0306 */
      if (kFblFailed == result)
      {
         DiagNRCGeneralProgrammingFailure();
      }
   }
   else
   {
      /* Security bytes already programmed, reject write request (OTP) */
      DiagNRCRequestOutOfRange();
      result = kFblFailed;
   }

   return result;
}
# endif /* FBL_DIAG_ENABLE_UPDATE_SEC_BYTES */
#endif /* FBL_ENABLE_SECMOD_FORD */

/***********************************************************************************************************************
 *  ApplFblAdjustLbtBlockData
 **********************************************************************************************************************/
/*! \brief         This function is called whenever the bootloader queries the range for the logical blocks.
 *  \details       This info is typically stored in fbl_mtab.c and generated from GENy. This function
 *                 can be used to spare a range from the LBT at runtime that shall not be flashed, e.g. PresencePattern.
 *  \param[in,out] blockDescriptor Pointer to LBT-Descriptor
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
tFblResult ApplFblAdjustLbtBlockData( tBlockDescriptor * blockDescriptor )
{
   tFblResult        result;
#if defined( FBL_ENABLE_PRESENCE_PATTERN )
   IO_PositionType   presPtnAddress;
   IO_SizeType       presPtnLen;
#endif

#if !defined( FBL_ENABLE_PRESENCE_PATTERN ) && \
    !defined( FBLBM_ENABLE_SECURE_BOOT )
# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)blockDescriptor;
# endif
#endif

   /* Initialize variables */
   result = kFblOk;

#if defined( FBL_ENABLE_PRESENCE_PATTERN )
   /* Calculate location of presence pattern.           */
   /* Note that the end of the block descriptor already */
   /* points to the presence pattern itself.            */
   if (result == kFblOk) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
   {
      /* PRQA S 4342, 4521 1 */ /* MD_FblKbApiOem_4342_4521_ConfigurationEnumLengthCast */
      memSegment = FblNvPatternGetBaseAddr(blockDescriptor->blockNr, (tFblNvPatternId)(kFblNvPatternId_Last - 1u), &presPtnAddress, &presPtnLen);

      if (memSegment >= 0)
      {
         /* Reduce length by NvPattern area */
         blockDescriptor->blockLength = presPtnAddress - blockDescriptor->blockStartAddress;
      }
      else
      {
         result = kFblFailed;
      }
   }
#endif


   return result;
}

# if defined( FBL_CW_ENABLE_MULTIPLE_CONNECTIONS )
/***********************************************************************************************************************
*  ApplFblWriteDcmDslRxTesterSourceAddr
**********************************************************************************************************************/
/*! \brief       Function to write DcmDsl Rx Tester Source Address to non-volatile memory
 *  \param[in]   buffer Pointer to byte array containing the tester source address
 *  \return      Result of write operation
**********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
tFblResult ApplFblWriteDcmDslRxTesterSourceAddr(vuint8* buffer)
{
   /* Write TP target address from CAN initialization table */
   return kFblOk;
}

/***********************************************************************************************************************
*  ApplFblReadDcmDslRxTesterSourceAddr
**********************************************************************************************************************/
/*! \brief       Function to read DcmDsl Rx Tester Source Address from non-volatile memory
 *  \param[out]  buffer Pointer to byte array containing the tester source address
 *  \return      Result of read operation
**********************************************************************************************************************/
tFblResult ApplFblReadDcmDslRxTesterSourceAddr(vuint8* buffer)
{
   /* Read TP target address from CAN initialization table */
   FblMemSetInteger(sizeof(FblCw_RxTesterSourceAddressOfDcmDslConnectionInfo16BitType), kFblCwDefaultConnection, buffer);
//# error "This is a dummy implementation which assumes that connection kFblCwDefaultConnection (0) is used. Adapt in case this does not fit your configruation."
   return kFblOk;
}
# endif

# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/***********************************************************************************************************************
 *  ApplFblReadVerificationKey
 **********************************************************************************************************************/
/*! \brief         Provide public key for signature calculation (production)
 *  \param[in,out] Key length information (in) and pointer to data buffers (out)
 *  \return        kFblOk = checksum available in buffer, kFblFailed = read operation failed, buffer content not valid
 *  **********************************************************************************************************************/
tFblResult ApplFblReadVerificationKey( SecM_AsymKeyType * publicKey )
{
   tFblResult result;
   tFblKeyState keyState;

   result = ApplFblGetKeyState(&keyState);

   if (result == kFblOk) /* PRQA S 2991, 2995 */ /* MD_FblKbApiFrame_ConstValue */
   {
#  if defined( FBL_DIAG_MULTIPLE_KEY )
      static vuint8 rsaExpBuffer[FBL_DIAG_KEY_EXP_LENGTH];
      static vuint8 rsaModBuffer[FBL_DIAG_KEY_MOD_LENGTH];
      SecM_WordType rsaExpLength;
      SecM_WordType rsaModLength;

      publicKey->individual.data = rsaExpBuffer;
      publicKey->shared.data = rsaModBuffer;
      rsaExpLength = publicKey->individual.size;
      rsaModLength = publicKey->shared.size;

      assertFblGen((publicKey->individual.size == FBL_DIAG_KEY_EXP_LENGTH), kFblOemAssertParameterOutOfRange);
      assertFblGen((publicKey->shared.size == FBL_DIAG_KEY_MOD_LENGTH), kFblOemAssertParameterOutOfRange);

      if ((SECM_OK != SecM_GetKeyElement_RsaExpCurrentUsedKey(rsaExpBuffer, &rsaExpLength)) ||
          (rsaExpLength != publicKey->individual.size))
      {
         result = kFblFailed;
      }
      else if ((SECM_OK != SecM_GetKeyElement_RsaModCurrentUsedKey(rsaModBuffer, &rsaModLength)) ||
               (rsaModLength != publicKey->shared.size))
      {
         result = kFblFailed;
      }
      else
      {
         /* Variable result already set to kFblOk */
      }
#  else /* ! FBL_DIAG_MULTIPLE_KEY */
      if (kFblUseProductionKey == keyState) /* PRQA S 2991, 2995 */ /* MD_FblKbApiFrame_ConstValue */
      {
#   if defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
         IO_ErrorType readModResult, readExpResult;

         assertFblGen((FBL_OTP_PRODKEY_MOD_SIZE == publicKey->shared.size), kFblOemAssertParameterOutOfRange);
         assertFblGen((FBL_OTP_PRODKEY_EXP_SIZE == publicKey->individual.size), kFblOemAssertParameterOutOfRange);

         /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
         readModResult = ApplFblOtpReadEntry(FBL_OTP_PRODKEY_MOD_ADDRESS, publicKey->shared.size, V_NULL);
         readExpResult = ApplFblOtpReadEntry(FBL_OTP_PRODKEY_EXP_ADDRESS, publicKey->individual.size, V_NULL);

         /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
         if ((IO_E_ERASED != readModResult) &&
             (IO_E_ERASED != readExpResult))
         {
            /* Production key seems to be available, set pointers */
            /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
            publicKey->shared.data = (SecM_RomDataType)FBL_OTP_PRODKEY_MOD_ADDRESS;
            publicKey->individual.data = (SecM_RomDataType)FBL_OTP_PRODKEY_EXP_ADDRESS;
         }
         else
#   endif /* FBL_DIAG_ENABLE_PRODKEY_UPDATE */
         {
            /* Public key not present or feature not enabled/supported, use the internal key */
            publicKey->shared.data = SecM_RsaMod;
            publicKey->individual.data = SecM_RsaExp;
         }
      }
      else if (kFblUseDevelopmentKey == keyState) /* PRQA S 2991, 2995 */ /* MD_FblKbApiFrame_ConstValue */
      {
#   if defined( FBL_DIAG_ENABLE_DEVKEY )
#    if defined( FBL_DIAG_ENABLE_DEVKEY_UPDATE )
         IO_ErrorType readModResult, readExpResult;

         assertFblGen((FBL_OTP_PRODKEY_MOD_SIZE == publicKey->shared.size), kFblOemAssertParameterOutOfRange);
         assertFblGen((FBL_OTP_PRODKEY_EXP_SIZE == publicKey->individual.size), kFblOemAssertParameterOutOfRange);

         /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
         readModResult = ApplFblOtpReadEntry(FBL_OTP_PRODKEY_MOD_ADDRESS, publicKey->shared.size, V_NULL);
         readExpResult = ApplFblOtpReadEntry(FBL_OTP_PRODKEY_EXP_ADDRESS, publicKey->individual.size, V_NULL);

         /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
         if ((IO_E_ERASED != readModResult) &&
             (IO_E_ERASED != readExpResult))
         {
            /* Production key seems to be available, set pointers */
            /* PRQA S 0306 2 */ /* MD_FblKbApiFrame_0306 */
            publicKey->shared.data = (SecM_RomDataType)FBL_OTP_PRODKEY_MOD_ADDRESS;
            publicKey->individual.data = (SecM_RomDataType)FBL_OTP_PRODKEY_EXP_ADDRESS;
         }
         else
#    endif
         {
            /* Set the development key */
            publicKey->shared.data     = SecM_RsaModDevelopment;
            publicKey->individual.data = SecM_RsaExpDevelopment;
         }
#   else
         /* Feature not supported/enabled */ /* PRQA S 2741, 4558 1 */ /* MD_FblKbApiFrame_2741_4558_Assert */
         assertFbl(0u, kFblSysAssertParameterOutOfRange);
#   endif /* FBL_DIAG_ENABLE_DEVKEY */
      }
      else
      { /* PRQA S 3201 */ /* MD_FblKbApi_3201 */
         /* Not an expected value */
         result = kFblFailed;
      }
#  endif /* FBL_DIAG_MULTIPLE_KEY */
   }

   return result;
}

#  if defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
/***********************************************************************************************************************
 *  ApplFblWriteVerificationKey
 **********************************************************************************************************************/
/*! \brief       Function is called by ApplFblWriteDataByIdentifier to persist the public key (production)
 *  \param[in]   key Source pointer to key buffer
 *  \return      kFblOk = security bytes have been written successfully, kFblFailed = error writing security bytes
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
tFblResult ApplFblWriteVerificationKey( vuint8 * key )
{
   tFblResult result = kFblOk;

   /* Write public key to non-volatile memory */
   tAlignedPublicKeyWriteBuffer writeBuffer;

#   if defined( FBL_DIAG_ENABLE_DEVKEY_UPDATE )
   if (GetDiagDevelopmentKey())
   {
      vuint8 keyModBuffer[sizeof(SecM_RsaModDevelopment)];
      vuint8 keyExpBuffer[sizeof(SecM_RsaExpDevelopment)];

      MemDriver_RReadBegin(kMioDeviceFlash);
      /* PRQA S 0306 5 */ /* MD_FblKbApiFrame_0306 */
      if (IO_E_OK != FlashDriver_RReadSync(keyModBuffer, sizeof(SecM_RsaModDevelopment), (vuint32)SecM_RsaModDevelopment))
      {
         result = kFblFailed;
      }
      else if (IO_E_OK != FlashDriver_RReadSync(keyExpBuffer, sizeof(SecM_RsaExpDevelopment), (vuint32)SecM_RsaExpDevelopment))
      {
         result = kFblFailed;
      }
      else
      {
         /* Result already initialized to kFblOk */
      }
      MemDriver_RReadEnd(kMioDeviceFlash);

      if (kFblOk == result)
      {
         /* PRQA S 0306 5 */ /* MD_FblKbApiFrame_0306 */
         if (kFblOk != ApplFblOtpWriteEntry(FBL_OTP_PRODKEY_MOD_ADDRESS, FBL_OTP_PRODKEY_MOD_SIZE, keyModBuffer))
         {
            result = kFblFailed;
         }
         else if (kFblOk != ApplFblOtpWriteEntry(FBL_OTP_PRODKEY_EXP_ADDRESS, FBL_OTP_PRODKEY_EXP_SIZE, keyExpBuffer))
         {
            result = kFblFailed;
         }
         else
         {
            /* Result already initialized to kFblOk */
         }
      }
   }
   else
#   endif /* FBL_DIAG_ENABLE_DEVKEY_UPDATE */
   {
      /* Copy key to aligned write buffer */ /* PRQA S 0314 1 */ /* MD_FblKbApiFrame_0314_MemCpy */
      (void)MEMCPY(writeBuffer.data, key, FBL_OTP_PRODKEY_KEY_SIZE);
      /* PRQA S 0306 3 */ /* MD_FblKbApiFrame_0306 */
      result  = ApplFblOtpWriteEntry(FBL_OTP_PRODKEY_MOD_ADDRESS, FBL_OTP_PRODKEY_MOD_SIZE, writeBuffer.data);
      result |= ApplFblOtpWriteEntry(FBL_OTP_PRODKEY_EXP_ADDRESS, FBL_OTP_PRODKEY_EXP_SIZE, &writeBuffer.data[sizeof(SecM_RsaMod)]);
   }

   if (kFblOk != result)
   {
      /* OTP write operation failed - usually because the entry has already been written */
      DiagNRCRequestOutOfRange();
   }

   return result;
}
#  endif /* FBL_DIAG_ENABLE_PRODKEY_UPDATE */

/***********************************************************************************************************************
 *  ApplFblGetKeyState
 **********************************************************************************************************************/
/*! \brief         Callback from ApplFblValStructGetPublicKey determines to use production or development key
 *  \param[in]     key Pointer to the public key container
 *  \return        kFblOk Correct key could be determined
 *                 kFblFailed Correct key could not be determined
 **********************************************************************************************************************/
static tFblResult ApplFblGetKeyState(tFblKeyState * keyState)
{
   /* Example: always use production key
    * Warning: If this function does return an unexpected value, the ECU cannot be updated anymore.
    * If development key cannot be retrieved, it would also be possible to implement a fall back to the production key */

#  if defined( FBL_DIAG_ENABLE_DEVKEY_UPDATE )
   if (GetDiagDevelopmentKey())
   {
#   if defined( FBL_DIAG_ENABLE_DEVKEY )
      *keyState = kFblUseDevelopmentKey;
#   else
      /* Feature not supported/enabled */ /* PRQA S 2741, 4558 1 */ /* MD_FblKbApiFrame_2741_4558_Assert */
      assertFbl(0u, kFblSysAssertParameterOutOfRange);
#   endif /* FBL_DIAG_ENABLE_DEVKEY */
   }
   else
#  endif /* FBL_DIAG_ENABLE_DEVKEY_UPDATE */
   {
      *keyState = kFblUseProductionKey;
   }

   return kFblOk;
}
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */


/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblKbApiFrame_0306:
      Reason: Address conversion between integer values and pointers is required to allow for hardware independent
              configuration and address range checks.
      Risk: The size of integer required to hold the result of a pointer cast is implementation-defined.
      Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                  specific basis.

   MD_FblKbApiFrame_0314_MemCpy:
      Reason: The copy function have a void pointer as a function parameter.
      Risk: No risk, because the underlying vuint8 pointer type is known.
      Prevention: No prevention necessary.

   MD_FblKbApiFrame_1514:
      Reason: The variable is used by other modules and can't be declared static.
      Risk: Name conflicts.
      Prevention: Compile and link of the different variants in the component and integration test.

   MD_FblKbApiFrame_2741_4558_Assert:
      Reason: The assertion macro has been designed to have an invariant condition and not using bool variable.
      Risk: No identifiable risk. Assertion macro are disable in production code.
      Prevention: No prevention required.

   MD_FblKbApiFrame_3205:
      Reason:     Some enumerations are not used in all the configurations.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiFrame_3382:
      Reason: Subtraction from unsigned value without explicit range check directly before operation.
              Instead limitation of subtracted value is located above as it is required before.
      Risk: Distance between limitation and subtraction makes correlation less obvious.
      Prevention: Ensure correct limitation of subtracted value through code inspection.

   MD_FblKbApiFrame_ConstValue:
      Reason: Code is shared between different configurations. In other configurations,
              the result of the comparison/logical operation is not invariant.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApi_2889:
      Reason:     Multiple return paths are used to reduce code complexity, increase readability and reducing nesting level.
      Risk:       Some operations intended to conclude the function (e.g. states cleaning) can be unintentionally jumped.
      Prevention: Code inspection and runtime tests.

   MD_FblKbApi_3201:
      Reason: Configuration or platform specific dependent unreachable code.
      Risk: Incorrect behavior depend on settings.
      Prevention: No prevention required.

   MD_FblKbApi_3206:
      Reason:     Function is part of the bootloader API and the modification or not of the parameter is dependent on
                  configuration and/or platform.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApi_3218_FileScopeStatic:
      Reason: Configuration constants/tables are kept at a central location for a better overview and maintenance.
      Risk: Unintended use of object in wrong scope.
      Prevention: Architectural pattern supports prevention of incorrect use of objects in wrong context.
                  Code inspection focus on correct use of objects.

   MD_FblKbApi_3325:
      Reason: This control expression is always true or false depend on configuration aspect and used platform specific
              implementation.
      Risk: Incorrect behavior depend on settings.
      Prevention: No prevention required.

   MD_FblKbApi_3353:
      Reason: Variable is set in an other function via call-by-reference.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApi_3673:
      Reason: Function is part of the bootloader API which provides the possibility to influence the bootloader behavior
              by modifying the output parameters. The provided default implementation of the function doesn't
              necessarily make use of all available parameters.
      Risk: The parameter value might be changed unintentionally, thus causing malfunction in the calling instance.
      Prevention: Provide detailed information about the API and its usage in the user documentation.


   MD_FblKbApiOem_0290:
      Reason: Deviation is caused by shift operation which is required for efficient coding.
      Risk: Operation might not return the intended value.
      Prevention: The correct functionality has been assured for the specific use case.

   MD_FblKbApiOem_0306:
      Reason: Address conversion between integer values and pointers is required to allow for hardware independent
              configuration and address range checks.
      Risk: The size of integer required to hold the result of a pointer cast is implementation-defined.
      Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                  specific basis.

   MD_FblKbApiOem_0313:
      Reason: Security module expects a watchdog handler with return type 'void'. The usage of a wrapper function is
              avoided due to higher voted requirements for minimized stack and runtime usage applied on the code.
      Risk: Potentially undefined behavior of the used compiler which usually leads to a warning or error during compilation.
      Prevention: The respective functionality is part of integration testing and will hence be verified before delivery.

   MD_FblKbApiOem_0314:
      Reason:     Type conversion to void * is necessary to use the standard MEMCPY API
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_0315:
      Reason:     The implicit conversion from a pointer to object type to a pointer to void is used in order to pass
                  values between two types that have a known alignement and the cast is, thus, safe.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_0781:
      Reason: The variable is being used as a structure/union member as well as being a label, tag or ordinary
              identifier. This way it is more clear to the reader which purpose the variable has.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_2741_4558:
      Reason: Assertion macros have to be disabled in production code and are used only for development.
      Risk: Assertion code may be enabled in production code unintentionally. If a assertion condition is unexpectedly
            false, the code is active. A problem may occur if the Macro is additionally changed from single statement
            to multiple statement.
      Prevention: Macro is not allowed to be changed without review. Development code is automatically disabled via
                  configuration of project state "Production".

   MD_FblKbApiOem_2880_UnreachableCode:
      Reason: A code section can be executed only based on some static compile time configurations.
      Risk: A code section is never executed independently from the compiling configuration.
      Prevention: Code inspection and test of the different variants in the component test.

   MD_FblKbApiOem_ConstValue:
      Reason: Code is shared between different configurations. In other configurations,
              the result of the comparison/logical operation is not invariant.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_2987:
      Reason: The function may have no side effect in the tested configuration but additional functions can
              be added either from the HW-layer during the KB process or by the customer during integration.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_3425:
      Reason: The WrapNv call uses the ternary operator to remap the return value of IO_E_OK to kFblOk. As both of
              them are defined to the value zero the remapping has no side affects.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_4342_4521_ConfigurationEnumLengthCast:
      Reason: The last element of an enum is used to determine the number of entries. This is required for
              configurable code. The enum must have more than one entry - therefore it is always possible to
              determine the last (length - 1) one.
      Risk: No identifiable risk.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_APNV.C
 **********************************************************************************************************************/

