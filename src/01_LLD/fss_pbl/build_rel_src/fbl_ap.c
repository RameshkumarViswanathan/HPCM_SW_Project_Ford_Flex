/* Kernbauer Version: 1.12 Konfiguration: FBL Erzeugungsgangnummer: 1 */

/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Application dependent routines
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
 *  05.00.00   2019-06-03  visrie  ESCAN00103307    Align Ford SLP7 (derived from 03.06.01) and JLR SLP2 (derived from
 *                                                  04.00.00)
 *  05.01.00   2020-06-08  visjdn  FBL-1982         Support of the new FblMio
 *  05.02.00   2020-09-21  visrie  FBL-2129         Added support for vHsm configuration
 *  05.03.00   2021-09-13  visjdn  FBL-2859         MISRA 2012 environment creation
 *  05.03.01   2022-06-30  visjdn  ESCAN00110613    No changes
 *                                 ESCAN00110614    Compiler error: function "ApplFblStartSeparationTime" has no
 *                                                   prototype
 *                                 ESCAN00111531    Compiler error: Missing function ApplFblStateTask
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

#define FBL_AP_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
#if defined( FBL_ENABLE_VALSTRUCT )
# include "fbl_valstruct.h"
#endif
# include "Det.h"
# if (DET_ENABLED == STD_ON)
#   include "Can.h"
#   include "CanTp.h"
# endif
# if defined( V_GEN_GENERATOR_MSR )
#  include "CanTp_Cbk.h"
# endif

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLKBAPI_FRAME_FORD_VERSION != 0x0503u ) || \
    ( FBLKBAPI_FRAME_FORD_RELEASE_VERSION != 0x01u )
#error "Error in fbl_ap.c: Source and header file are inconsistent!"
#endif

#if ( FBLKBAPI_FRAME_FORD_VERSION != _FBLKBAPI_FRAME_OEM_VERSION ) || \
    ( FBLKBAPI_FRAME_FORD_RELEASE_VERSION != _FBLKBAPI_FRAME_OEM_RELEASE_VERSION )
#error "Error in fbl_ap.c: Source and v_ver.h are inconsistent!"
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

#if defined( FBL_ENABLE_DATA_PROCESSING )
/* PRQA S 3453 TAG_FblAp_3453_1 */ /* MD_MSR_19.7 */
# if !defined( GetOemProcessingModeSupported )
/* Accept compression and encryption */
#  define GetOemProcessingModeSupported(m) (GetOemCompressionMode((m)) || GetOemEncryptionMode((m)))
# endif /* GetOemProcessingModeSupported */

# if !defined( GetOemCompressionMode )
#  if defined( FBL_ENABLE_COMPRESSION_MODE )
/* Accept compression routine "1" */
#   define GetOemCompressionMode(m) (((m) & kDiagFmtCompressionMask) == 0x10u)
#  else
/* No compression routine supported */
#   define GetOemCompressionMode(m) (0 != 0)
#  endif /* FBL_ENABLE_COMPRESSION_MODE */
# endif /* GetOemCompressionMode */

# if !defined( GetOemEncryptionMode )
#  if defined( FBL_ENABLE_ENCRYPTION_MODE )
/* Accept encryption routine "1" */
#   define GetOemEncryptionMode(m) (((m) & kDiagFmtEncryptionMask) == 0x01u)
#  else
/* No encryption routine supported */
#   define GetOemEncryptionMode(m) (0 != 0)
#  endif /* FBL_ENABLE_ENCRYPTION_MODE */
# endif /* GetOemEncryptionMode */
/* PRQA L:TAG_FblAp_3453_1 */

/* Configuration check of AES encryption */
#  if defined( FBL_ENABLE_ENCRYPTION_MODE )
#   if defined( SEC_ENABLE_DECRYPTION )
#   else
#    error "FBL_ENABLE_ENCRYPTION_MODE needs SEC_ENABLE_DECRYPTION to be configured."
#   endif /* SEC_ENABLE_DECRYPTION */
#  endif /* FBL_ENABLE_ENCRYPTION_MODE */
# if defined( FBL_ENABLE_ENCRYPTION_MODE )
/*
   Handling of AES initialization vector
   Possible values:
      SEC_DECRYPTION_MODE_AES_128_PKCS_CBC_IV - Explicit IV included in data
      SEC_DECRYPTION_MODE_AES_128_PKCS_CBC - Implicit IV of 0 used
*/
#  define SEC_MODE_AES  SEC_DECRYPTION_MODE_AES_128_PKCS_CBC
# endif /* FBL_ENABLE_ENCRYPTION_MODE */
#endif /* FBL_ENABLE_DATA_PROCESSING */


/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

/* Common data structure definition */
V_MEMROM0 V_MEMROM1 tFblCommonData V_MEMROM2 fblCommonData =
    {
        /* ECU Core Assembly Number-24 Bytes */
        /*"TEST-VECTOR-VI0123456789",*/
        "LX6800-0014G07500-00BA00",

        /* ECU Delivery Assembly Number-24 Bytes */
        /* "TEST-VECTOR-VI0123456789", */
        "LX6800-0007P12000-00BA00",

        /* ECU Serial Number-16 Bytes */
        /*"TEST-VECTOR-VI00",*/
        "LX680-07P120-BA0",

        /* Boot Software Identification 24 Bytes */
        {
            0x01, /* Number of modules */
            /*"TEST-VECTOR-VI0123456789" */
            "LX6800-0014G07200-00BA00"}

        /* Bootloader Generation Tool Version Number */
        ,
        {0x08, /* Generation tool supplier: Vector */
         {
             (vuint8)(_VECTOR_SIP_VERSION >> 8u), /* SIP main version */
             (_VECTOR_SIP_VERSION & 0xFFu),       /* SIP sub version */
             _VECTOR_SIP_RELEASE_VERSION,         /* SIP release version */
             VGEN_DELIVERY_VERSION_BYTE_3,        /* License number (MSB) */
             VGEN_DELIVERY_VERSION_BYTE_4,        /* License number */
             VGEN_DELIVERY_VERSION_BYTE_5,        /* License number */
             VGEN_DELIVERY_VERSION_BYTE_6,        /* License number (LSB) */
             _VECTOR_SIP_BUILD_VERSION,           /* Build version */
             VGEN_DELIVERY_VERSION_BYTE_8,        /* Reserved */
             VGEN_DELIVERY_VERSION_BYTE_9         /* Reserved */
         }}
        /* Ford Electronic Serial Number */
        ,
        "FORD-123"};


#if defined( FBL_ENABLE_MULTIPLE_NODES )
/* Handle which specifies the set of communication parameters to use */
V_MEMRAM0 V_MEMRAM1 vuint8  V_MEMRAM2 fblEcuHandle;
V_MEMROM0 V_MEMROM1 vuint16 V_MEMROM2 CanTxId[] = FBL_MULTIPLE_TXID;
V_MEMROM0 V_MEMROM1 vuint16 V_MEMROM2 CanRxId[] = FBL_MULTIPLE_RXID;
V_MEMRAM0 V_MEMRAM1 CanTransmitHandle V_MEMRAM2 fblTpTxHandle;
#endif /* FBL_ENABLE_MULTIPLE_NODES */



/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_COMPRESSION_MODE )
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 cmprBitPos;
#endif /* FBL_ENABLE_COMPRESSION_MODE */
#if defined( FBL_ENABLE_ENCRYPTION_MODE )
/* Initialization state */
V_MEMRAM0 static V_MEMRAM1 tFblResult V_MEMRAM2 decInitializeState;
V_MEMRAM0 static V_MEMRAM1 tFblResult V_MEMRAM2 decFinalizeState;
/* Buffer for temporary input remainder */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 decTmpInBuffer[SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC];
/* Temporary input buffer usage */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 decTmpInUsed;
# if defined( FBL_ENABLE_COMPRESSION_MODE )
/* Buffer for temporary output */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 decTmpOutBuffer[16 * SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC];
/* Temporary output buffer usage */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 decTmpOutUsed;
# endif /* FBL_ENABLE_COMPRESSION_MODE */
#endif /* FBL_ENABLE_ENCRYPTION_MODE */


/***********************************************************************************************************************
 *  EXTERNAL DATA
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/
 /* PRQA S 3673 EOF */ /* MD_FblAp_3673 */

/***********************************************************************************************************************
 *  ApplFblInit
 **********************************************************************************************************************/
/*! \brief       Function is called before any other FBL initialization
 **********************************************************************************************************************/
void ApplFblInit( void )
{

}

/***********************************************************************************************************************
 *  ApplFblStartup
 **********************************************************************************************************************/
/*! \brief       Bootloader initialization callback
 *  \details     This function is called during the Bootloader initialization if the application software is
 *               not started. It can be used to perform initializations which are not needed if the application
 *               software is started. Please note that the function is called several times with different
 *               initposition values. Timer and hardware can be accessed in post-init phase only.
 *  \param[in]   initposition Initialization state of Bootloader.
 **********************************************************************************************************************/
/* PRQA S 6030 1 */ /* MD_MSR_STCYC */
void ApplFblStartup( vuint8 initposition )
{
   switch (initposition)
   {
      case (kFblInitPreCallback | kFblInitBaseInitialization):
      {
         break;
      }
      case (kFblInitPostCallback | kFblInitBaseInitialization):
      {
         /* Basic hardware initialization */
         ApplFblInit();


#if defined( FBL_DIAG_ENABLE_STATIC_SEED )
         /* Init Seed response status */
         securitySeedResponse = kNewSeedRequest;
#endif

         break;
      }
      case (kFblInitPreCallback | kFblInitFblCommunication):
      {
         break;
      }
      case (kFblInitPostCallback | kFblInitFblCommunication):
      {
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
         /* Initialize state variable */
         ApplFblSetSigValidationState(0xFF);
#endif
         break;
      }
      case (kFblInitPreCallback | kFblInitFblFinalize):
      {
         break;
      }
      case (kFblInitPostCallback | kFblInitFblFinalize):
      {
#if defined( FBLBM_ENABLE_SECURE_BOOT )
         ApplFblSbStartup();
#endif /* FBLBM_ENABLE_SECURE_BOOT */
         break;
      }
      default:
      {
         /* PRQA S 2741, 4558 1 */ /* MD_FblKbApiOem_2741_4558 */
         assertFblInternal(0u, kFblSysAssertParameterOutOfRange);
         break;
      }
   }
}

#if defined( FBL_DIAG_ENABLE_SERVICE_PREHANDLER )
/***********************************************************************************************************************
 *  ApplFblCheckConditions
 **********************************************************************************************************************/
/*! \brief         Check conditions for diagnostic services
 *  \details       This function is called for each diagnostic service.
 *  \param[in,out] pbDiagData Pointer to diagnostic data buffer
 *  \param[in]     diagReqDataLen The request data length
 *  \return        kFblOk or kFblFailed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
tFblResult ApplFblCheckConditions( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)pbDiagData;
   (void)diagReqDataLen;
#endif

   /* Parse Service IDs */

   /*
   switch (diagServiceCurrent)
   {
      case kDiagSidDiagnosticSessionControl:
      {
         if (...)
         {
            DiagNRCConditionsNotCorrect();
            return kFblFailed;
         }

         break;
      }
      case kDiagSidEcuReset:
      {
         break;
      }
      case kDiagSidReadDataByIdentifier:
      {
         break;
      }
      case kDiagSidSecurityAccess:
      {
         break;
      }
      case kDiagSidCommunicationControl:
      {
         break;
      }
      case kDiagSidWriteDataByIdentifier:
      {
         break;
      }
      case kDiagSidRoutineControl:
      {
         break;
      }
      case kDiagSidRequestDownload:
      {
         break;
      }
      case kDiagSidTransferData:
      {
         break;
      }
      case kDiagSidRequestTransferExit:
      {
         break;
      }
      case kDiagSidTesterPresent:
      {
         break;
      }
      case kDiagSidControlDTCSetting:
      {
         break;
      }
      default:
      {
         break;
      }
   }
   */

   return kFblOk;
}
#endif /* FBL_DIAG_ENABLE_SERVICE_PREHANDLER */

#if defined( FBL_DIAG_ENABLE_CHECK_PROGRAMMING_PRECONDITIONS )
/***********************************************************************************************************************
 *  ApplFblCheckProgConditions
 **********************************************************************************************************************/
/*! \brief       This function is called after receiving the service request sessionControl ProgrammingSession to check
 *               the programming conditions like reprogramming counter, ambient temperature, programming voltage, etc.
 *  \return      If all conditions are correct, the function returns kFblOk, otherwise kFblFailed.
 **********************************************************************************************************************/
tFblResult ApplFblCheckProgConditions( void )
{
   tFblResult result;

   result = kFblOk;

   /* Example: Test if programming preconditions are fulfilled */
   /*
   if (preCondition != OK)
   {
      DiagNRCConditionsNotCorrect();
   }
   */


  return result;
}
#endif /* FBL_DIAG_ENABLE_CHECK_PROGRAMMING_PRECONDITIONS */

/***********************************************************************************************************************
 *  ApplTrcvrNormalMode
 **********************************************************************************************************************/
/*! \brief       Activate transceiver if necessary (e.g. pin configuration ENABLE = 1, _STDBY = 1)
 **********************************************************************************************************************/
void ApplTrcvrNormalMode( void )
{
}

/***********************************************************************************************************************
 *  ApplFblSetVfp
 **********************************************************************************************************************/
/*! \brief       Function is called when the FBL enters programming mode.
 *  \details     Port bits have to be set so that the required programming voltage is available.
 **********************************************************************************************************************/
void ApplFblSetVfp( void )
{
}

/***********************************************************************************************************************
 *  ApplFblResetVfp
 **********************************************************************************************************************/
/*! \brief       This function is called when the programming is done.
 **********************************************************************************************************************/
void ApplFblResetVfp( void )
{
}

/***********************************************************************************************************************
 *  ApplFblReset
 **********************************************************************************************************************/
/*! \brief       This function performs a reset.
 *  \details     The function will wait until the reset is performed. Please note: This function will
 *               never return to the calling code.
 **********************************************************************************************************************/
void ApplFblReset( void )
{
   /* CAUTION:
    * If ApplFblReset() is located in RAM, the code will not be present if the bootloader is entered via
    * fbl_main.c::FblStart(). In that case, macro APPL_FBL_RESET in fbl_ap.h can be adapted to implement
    * the reset code directly in FblStart().
    * The recommended solution is to keep function ApplFblReset() in ROM.
    */

   /* Reset ECU */
   BrsHwSoftwareResetECU();
}

#if defined( FBL_ENABLE_APPL_TASK ) || \
    defined( FBL_ENABLE_APPL_TIMER_TASK )
/***********************************************************************************************************************
 *  ApplFblTask
 **********************************************************************************************************************/
/*! \brief       1ms user task.
 *  \details     This function is called every millisecond if the Bootloader is in idle state. It is not called during
 *               flash operations.
 **********************************************************************************************************************/
void ApplFblTask( void )
{
   static V_MEMRAM1 vuint16 V_MEMRAM2 flashlight;
   static Can_PduType dummy;
   static uint8 myMsg[8] = { 'T', 'E', 'C', 'M', 'P', 'B', 'L', '0' };   
   //static uint8 myMsg[8] = { 'J', 'E', 'L', 'L', 'O', 'S', 'B', 'L' };   // SBL Built with this msg
   flashlight++;
   if (flashlight >= 500u)
   {
      flashlight = 0u;
      //dummy.id = 0x123;                /* ID of dummy message for application*/
	  dummy.id = 0x456;                /* ID of dummy message for bootloader*/
      //dummy.id = 0x789;                /* ID of dummy message for "new" bootloader embedded in updater*/
      dummy.length = sizeof(myMsg);    /* Set message length to 8 */
      dummy.sdu = (uint8*)&myMsg[0];
      dummy.swPduHandle = 0;
      Can_Write(0, &dummy);  // comment out for XCP testing

   }
}
#endif /* FBL_ENABLE_APPL_TASK || FBL_ENABLE_APPL_TIMER_TASK */

#if defined( FBL_ENABLE_APPL_TASK ) ||\
    defined( FBL_ENABLE_APPL_STATE_TASK )
/***********************************************************************************************************************
 *  ApplFblStateTask
 **********************************************************************************************************************/
/*! \brief       Background user task.
 *  \details     This function is polled if the Bootloader is in idle state. It is not called during flash operations.
 **********************************************************************************************************************/
void ApplFblStateTask( void )
{
}
#endif /* FBL_ENABLE_APPL_TASK || FBL_ENABLE_APPL_STATE_TASK */

#if defined( FBL_ENABLE_ASSERTION )
/***********************************************************************************************************************
 *  ApplFblFatalError
 **********************************************************************************************************************/
/*! \brief       If the bootloader assertions are enabled, this function will be called in case an invalid bootloader
 *               state is encountered.
 *  \param[in]   errorCode Code number of the encountered assertion
 *  \param[in]   module Name of the affected module (Only if extended info is enabled)
 *  \param[in]   line Line number where the assertion occurred (Only if extended info is enabled)
 **********************************************************************************************************************/
void ApplFblFatalError( FBL_DECL_ASSERT_EXTENDED_INFO(vuint8 errorCode) )
{
# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)errorCode; /* PRQA S 3112 */ /* MD_MSR_14.2 */
# endif
}
#endif

#if (DET_ENABLED == STD_ON)
# define FBLAP_RAMCODE_START_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  ApplFbl_DetEntryHandler
 **********************************************************************************************************************/
/*! \brief       Called by DET module to check if a DET error is intended bootloader behavior or not.
 *  \param[in]   ModuleId Code number of the encountered assertion
 *  \param[in]   InstanceId Name of the affected module (Only if extended info is enabled)
 *  \param[in]   ApiId Line number where the assertion occurred (Only if extended info is enabled)
 *  \param[in]   ErrorId Line number where the assertion occurred (Only if extended info is enabled)
 *  \return      Report if error should be handed over to DET or not (E_OK or FALSE depending on interface)
 **********************************************************************************************************************/
# if ((DET_AR_RELEASE_MAJOR_VERSION >= 4u) && (DET_AR_RELEASE_MINOR_VERSION >= 3u))
FUNC(Std_ReturnType, DET_CODE) ApplFbl_DetEntryHandler( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId )
# else
FUNC(boolean, DET_APPL_CODE) ApplFbl_DetEntryHandler( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId )
# endif
{
# if ((DET_AR_RELEASE_MAJOR_VERSION >= 4u) && (DET_AR_RELEASE_MINOR_VERSION >= 3u))
   Std_ReturnType result = E_OK;
# else
   boolean result = FALSE;
# endif

# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)InstanceId;
   (void)ApiId;
# endif

   switch (ModuleId)
   {
#  if defined( CANTP_MODULE_ID )
      case CANTP_MODULE_ID:
      {
         switch (ErrorId)
         {
            /* CAN TP errors which can be triggered from outside shouldn't trigger a DET. */
            case CANTP_E_PARAM_CONFIG:
            case CANTP_E_INVALID_RX_BUFFER:
            case CANTP_E_INVALID_RX_LENGTH:
            case CANTP_E_INVALID_TATYPE:
            case CANTP_E_INVALID_FRAME_TYPE:
            case CANTP_E_RX_TIMEOUT_AR:
            case CANTP_E_RX_TIMEOUT_BR:
            case CANTP_E_RX_TIMEOUT_CR:
            case CANTP_E_RX_INVALID_SN:
            case CANTP_E_RX_WFTMAX:
            case CANTP_E_RX_RESTART:
            case CANTP_E_TX_TIMEOUT_AS:
            case CANTP_E_TX_TIMEOUT_BS:
            case CANTP_E_TX_TIMEOUT_CS:
            case CANTP_E_TX_FC_OVFL:
            case CANTP_E_TX_INVALID_FS:
            case CANTP_E_TX_RES_STMIN:
            case CANTP_E_TX_TRANSMIT_ERROR:
            case CANTP_E_NO_ERROR:
            {
#   if ((DET_AR_RELEASE_MAJOR_VERSION >= 4u) && (DET_AR_RELEASE_MINOR_VERSION >= 3u))
               result = E_NOT_OK;
#   else
               result = TRUE;
#   endif
               break;
            }
            default:
            {
               /* Keep error */
               break;
            }
         }
         break;
      }
#  endif /* CANTP_MODULE_ID */
#  if defined( CAN_MODULE_ID )
      case CAN_MODULE_ID:
      {
         switch (ErrorId)
         {
            case CAN_E_DATALOST:
            {
#   if ((DET_AR_RELEASE_MAJOR_VERSION >= 4u) && (DET_AR_RELEASE_MINOR_VERSION >= 3u))
               result = E_NOT_OK;
#   else
               result = TRUE;
#   endif
               break;
            }
            default:
            {
               /* Keep error */
               break;
            }
         }
         break;
      }
#  endif /* CAN_MODULE_ID */
      default:
      {
         /* Unknown module. Keep error. */
         break;
      }
   }

   return result;
}
# define FBLAP_RAMCODE_STOP_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif



#if defined( FBL_ENABLE_DATA_PROCESSING )
/***********************************************************************************************************************
 *  ApplFblInitDataProcessing
 **********************************************************************************************************************/
/*! \brief         This function is called to initialize the application specific data processing function.
 *  \param[in,out] procParam Processing parameter data structure
 *  \return        kFblOk/kFblFailed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
tFblResult ApplFblInitDataProcessing( tProcParam * procParam )
{
   tFblResult result = kFblFailed;

   /* Check if data format is supported */
   if (GetOemProcessingModeSupported(procParam->mode))
   {
# if defined( FBL_ENABLE_COMPRESSION_MODE )
      /* Default compression mode */
      if (GetOemCompressionMode(procParam->mode)) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
      {
         LZSS_Init();
         cmprBitPos = 0u;

         result = kFblOk;
      }
# endif /* FBL_ENABLE_COMPRESSION_MODE */

# if defined( FBL_ENABLE_ENCRYPTION_MODE )
      if (GetOemEncryptionMode(procParam->mode))
      {
         /* Initialize decryption */
         if (SecM_InitDecryption(V_NULL) != SECM_OK)
         {
            result = kFblFailed;
         }
         else
         {
            /* Initialize decryption on first run */
            decInitializeState = kFblOk;

            /* Prevent multiple finalization calls */
            decFinalizeState = kFblOk;

            /* Initialize input buffer length */
            decTmpInUsed = 0u;

#   if defined( FBL_ENABLE_COMPRESSION_MODE )
            /* Initialize output buffer length */
            decTmpOutUsed = 0u;
#   endif /* FBL_ENABLE_COMPRESSION_MODE */

            result = kFblOk;
         }
      }
# endif /* FBL_ENABLE_ENCRYPTION_MODE */
   }

   return result;
}

/***********************************************************************************************************************
 *  ApplFblDataProcessing
 **********************************************************************************************************************/
/*! \brief         Data processing function.
 *  \pre           Data processing has to be initialized by call of ApplFblInitDataProcessing
 *  \param[in,out] procParam Processing parameter data structure
 *  \return        kFblOk/kFblFailed
 **********************************************************************************************************************/
/* PRQA S 3673, 6010, 6030, 6080 1 */ /* MD_FblKbApi_3673, MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */
tFblResult ApplFblDataProcessing( tProcParam * procParam )
{
   tFblResult result = kFblFailed;

# if defined( FBL_ENABLE_COMPRESSION_MODE )
   LZSS_InputBuffer_T inBuf;
   LZSS_OutputBuffer_T outBuf;
# endif /* FBL_ENABLE_COMPRESSION_MODE */

# if defined( FBL_ENABLE_ENCRYPTION_MODE )
   vuint16                 index;
   tFblResult              finalize;

   SecM_DecInputParamType  decInBlock;
   SecM_DecOutputParamType decOutBlock;
   SecM_DecParamType       decParam;

   vuint16                 consumedLen;
   vuint16                 producedLen;
   vuint16                 remainder;
#  if defined( FBL_ENABLE_COMPRESSION_MODE )
   vuint16                 offset;
#  endif /* FBL_ENABLE_COMPRESSION_MODE */
# endif /* FBL_ENABLE_ENCRYPTION_MODE */

   /* Check if data format is supported */
   if (GetOemProcessingModeSupported(procParam->mode))
   {
      result = kFblOk;

# if defined( FBL_ENABLE_ENCRYPTION_MODE )
      /* Check if encryption mode is supported */
      if (GetOemEncryptionMode(procParam->mode))
      {
#   if defined( FBL_ENABLE_COMPRESSION_MODE )
         /* Check if compression did not consume all data during last cycle */
         if (decTmpOutUsed > 0u)
         {
            /* No decryption during this cycle, only decompression of remainder from last cycle */
            producedLen = decTmpOutUsed;
            consumedLen = 0u;
         }
         else
         {
            /* Check if compression mode is supported */
            if (GetOemCompressionMode(procParam->mode))
            {
               /* Place decryption output in temporary buffer */
               decOutBlock.DataBuffer = decTmpOutBuffer;
               decOutBlock.Length = sizeof(decTmpOutBuffer);
            }
            else
#   endif /* FBL_ENABLE_COMPRESSION_MODE */
            {
               /* Place decryption output in buffer provided by caller, use complete buffer */
               decOutBlock.DataBuffer = procParam->dataOutBuffer;
               decOutBlock.Length = procParam->dataOutMaxLength;
            }

            producedLen = 0u;
            remainder = 0u;

            if (0u != decTmpInUsed)
            {
               decInBlock.DataBuffer = decTmpInBuffer;

               /* Calculate remaining space in decTmpInBuffer */
               remainder = SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC - decTmpInUsed;

               if (remainder > procParam->dataLength)
               {
                  remainder = procParam->dataLength;

                  /* Do not decrypt as not enough input data is available */
                  decInBlock.Length = 0u;
               }
               else
               {
                  /* Decrypt input data in decTmpInBuffer */
                  decInBlock.Length = SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC;
               }

               /* Copy input data until decTmpInBuffer full or no more input data available */
               for (index = 0u; index < remainder; index++)
               {
                  decTmpInBuffer[decTmpInUsed + index] = procParam->dataBuffer[index];
               }

               decTmpInUsed += remainder;
               consumedLen = remainder;
            }
            else
            {
               /* Use input data provided by caller */
               decInBlock.DataBuffer = procParam->dataBuffer;
               decInBlock.Length = procParam->dataLength;

               /* Limit input size to output length (decryption module requires this internally) */
               if (decOutBlock.Length < decInBlock.Length)
               {
                  decInBlock.Length = decOutBlock.Length;
               }

               consumedLen = decInBlock.Length;

               /* Round down to next multiple of SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC and calculate remainder */
               decTmpInUsed = decInBlock.Length & (SEC_DECRYPTION_BLOCK_SIZE_AES_PKCS_CBC - 1u);
               decInBlock.Length -= decTmpInUsed;

               /* Temporarily store remainder */
               for (index = 0u; index < decTmpInUsed; index++)
               {
                  decTmpInBuffer[index] = decInBlock.DataBuffer[decInBlock.Length + index];
               }
            }

            /* Pass watchdog trigger */
            decParam.wdTriggerFct = (FL_WDTriggerFctType)FblLookForWatchdogVoid;

            /* Set mode for initialization vector handling */
            decParam.mode = SEC_MODE_AES;

            if (kFblOk == decInitializeState)
            {
               decParam.mode |= SEC_DECRYPTION_MODE_INIT;
               /* Only perform single initialization call */
               decInitializeState = kFblFailed;
            }

            /* If actual decryption is not called, no data will be consumed or produced */
            /* Finalize decryption in case no new input data is provided */
            if ((decInBlock.Length == 0u) && (decTmpInUsed == 0u))
            {
               decParam.mode |= SEC_DECRYPTION_MODE_FINALIZE;
               finalize = decFinalizeState;
               /* Prevent multiple finalization calls */
               decFinalizeState = kFblFailed;
            }
            else
            {
               finalize = kFblFailed;
            }

            if ((decInBlock.Length > 0u) || (kFblOk == finalize))
            {
               /* Perform decryption */
               if (SecM_Decryption(&decInBlock, &decOutBlock, &decParam) == SECM_OK)
               {
                  producedLen = decOutBlock.Length;

                  if (0u != remainder)
                  {
                     /* Data from decTmpInBuffer has been processed, buffer no longer in use */
                     decTmpInUsed = 0u;
                  }
               }
               else
               {
                  result = kFblFailed;
               }
            }
#   if defined( FBL_ENABLE_COMPRESSION_MODE )
         }

         if (GetOemCompressionMode(procParam->mode)) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
         {
            decTmpOutUsed = producedLen;

            /* Pass temporary output buffer to decompression */
            inBuf.buffer = decTmpOutBuffer;
            inBuf.length = decTmpOutUsed;
         }
         else
#   endif /* FBL_ENABLE_COMPRESSION_MODE */
         {
            /* Resulting output length */
            procParam->dataOutLength = producedLen;
         }

         /* Update processed input length */
         procParam->dataLength = consumedLen;
      }
      else
# endif /* FBL_ENABLE_ENCRYPTION_MODE */
      {
# if defined( FBL_ENABLE_COMPRESSION_MODE )
         /* Directly pass input buffer to decompression */
         inBuf.buffer = procParam->dataBuffer;
         inBuf.length = procParam->dataLength;
# endif /* FBL_ENABLE_COMPRESSION_MODE */
      }

# if defined( FBL_ENABLE_COMPRESSION_MODE )
      /* Check if compression mode is supported */
      if (GetOemCompressionMode(procParam->mode)) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
      {
         /* Check if optional decryption was successful */
         if (result == kFblOk) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
         {
            /* Decompression buffers are initialized above (inBuf) */
            inBuf.bitPos = cmprBitPos;

            outBuf.buffer = procParam->dataOutBuffer;
            outBuf.length = procParam->dataOutMaxLength;

            /* Decompress block */
            LZSS_ExpandData(&inBuf, &outBuf);

            /* Remember bit position */
            cmprBitPos = inBuf.bitPos;

#   if defined( FBL_ENABLE_ENCRYPTION_MODE )
            if (GetOemEncryptionMode(procParam->mode))
            {
               /* Update buffer usage */
               offset = decTmpOutUsed - (vuint16)(inBuf.length);
               decTmpOutUsed = (vuint16)(inBuf.length);

               /* Copy unprocessed temporary data to front */
               for (index = 0u; index < decTmpOutUsed; index++)
               {
                  decTmpOutBuffer[index] = decTmpOutBuffer[offset + index];
               }
            }
            else
#   endif /* FBL_ENABLE_ENCRYPTION_MODE */
            {
               /* Processed input length */
               procParam->dataLength -= (vuint16)(inBuf.length);
            }

            /* Resulting output length */
            procParam->dataOutLength = (vuint16)(outBuf.length);

            /* Some data was processed or no input data given */
            if ((inBuf.length == 0u) || (procParam->dataLength != 0u) || (procParam->dataOutLength != 0u))
            {
               result = kFblOk;
            }
         }
         else
         {
            result = kFblFailed; /* PRQA S 2880 */ /* MD_FblKbApiOem_2880_UnreachableCode */
         }
      }
# endif /* FBL_ENABLE_COMPRESSION_MODE */
   }

   return result;
} /* PRQA S 6010, 6030, 6080 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */

/***********************************************************************************************************************
 *  ApplFblDeinitDataProcessing
 **********************************************************************************************************************/
/*! \brief         Deinitialize data processing function.
 *  \pre           Data processing has to be initialized by call of ApplFblInitDataProcessing
 *  \param[in,out] procParam Processing parameter data structure
 *  \return        kFblOk/kFblFailed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
tFblResult ApplFblDeinitDataProcessing( tProcParam * procParam )
{
   tFblResult result = kFblFailed;

# if (defined( FBL_ENABLE_COMPRESSION_MODE )) || \
    (defined( FBL_ENABLE_ENCRYPTION_MODE ))
   /* Conclude data processing in last round */
   result =  ApplFblDataProcessing(procParam);
# endif /* FBL_ENABLE_COMPRESSION_MODE || FBL_ENABLE_ENCRYPTION_MODE */

# if defined( FBL_ENABLE_COMPRESSION_MODE )
   if (GetOemCompressionMode(procParam->mode)) /* PRQA S 2991, 2995 */ /* MD_FblKbApiOem_ConstValue */
   {
      cmprBitPos = 0u;
   }
# endif /* FBL_ENABLE_COMPRESSION_MODE */

# if defined( FBL_ENABLE_ENCRYPTION_MODE )
   if (GetOemEncryptionMode(procParam->mode))
   {
      if (SecM_DeinitDecryption(V_NULL) != SECM_OK)
      {
         result = kFblFailed;
      }

      /* Reset buffer usage */
      decTmpInUsed = 0u;

#   if defined( FBL_ENABLE_COMPRESSION_MODE )
      /* Reset buffer usage */
      decTmpOutUsed = 0u;
#   endif /* FBL_ENABLE_COMPRESSION_MODE */
   }
# endif /* FBL_ENABLE_ENCRYPTION_MODE */

   return result;
}
#endif /* FBL_ENABLE_DATA_PROCESSING */

#if defined( FBL_ENABLE_MULTIPLE_NODES ) || \
    defined( FBL_ENABLE_CAN_CONFIGURATION) || \
    defined( FBL_CW_ENABLE_MULTIPLE_NODES )
/***********************************************************************************************************************
 *  ApplFblCanParamInit
 **********************************************************************************************************************/
/*! \brief       Overwrite default CAN parameters
 *  \details     This function is called before CAN controller initialization so that default initialization values
 *               can be overridden according to the boot mode.
 *               If this function is empty, the default/reset settings are used to initialize the CAN controller.
 *  \pre         fblCanIdTable has to be initialized with default/reset
 **********************************************************************************************************************/
void ApplFblCanParamInit( void )
{
#if defined( FBL_ENABLE_MULTIPLE_NODES )
   vuint8 currentEcu = 1;
#endif

   if (GetFblMode() == START_FROM_APPL)
   {
      /*
       * At this position, it is possible to read CAN init parameters from
       * EEPROM, which have been programmed by the ECU application before
       * the FBL was started.
       */
   }

#if defined( FBL_ENABLE_MULTIPLE_NODES )
   /* This is only an example:      */
   /* currentEcu = GetCurrentEcu(); */

   switch (currentEcu)
   {
      case 0:
         fblEcuHandle = FBL_ECU_HDLE_Demo0;
         fblTpTxHandle = CanTxDiagDemo0;
         break;
      case 1:
         fblEcuHandle = FBL_ECU_HDLE_Demo1;
         fblTpTxHandle = CanTxDiagDemo1;
         break;
      default:
         /* Invalid ECU configuration: use fallback parameters */
         fblEcuHandle = FBL_ECU_HDLE_Demo0;
         fblTpTxHandle = CanTxDiagDemo0;
         break;
   }
#endif /* FBL_ENABLE_MULTIPLE_NODES */
}
#endif

#if defined( C_ENABLE_TX_OBSERVE )
/***********************************************************************************************************************
 *  ApplCanInit
 **********************************************************************************************************************/
/*! \brief       This function is called on initialization of the CAN controller.
 **********************************************************************************************************************/
#if ( C_VERSION_REF_IMPLEMENTATION >= 0x140 )
void ApplCanInit( CAN_CHANNEL_CANTYPE_FIRST CanObjectHandle txHwObjectFirstUsed, CanObjectHandle txHwObjectFirstUnused )
#else
void ApplCanInit( void )
#endif
{
}

/***********************************************************************************************************************
 *  ApplCanTxObjStart
 **********************************************************************************************************************/
/*! \brief       This call-back function is called every time, a transmit request is initiated in the CAN Controller.
 **********************************************************************************************************************/
#if ( C_VERSION_REF_IMPLEMENTATION >= 0x140 )
void ApplCanTxObjStart( CAN_CHANNEL_CANTYPE_FIRST CanObjectHandle logTxObjHandle )
#else
void ApplCanTxObjStart( void )
#endif
{
}

/***********************************************************************************************************************
 *  ApplCanTxObjConfirmed
 **********************************************************************************************************************/
/*! \brief       This call-back function is called every time,
 *               a successful transmission is confirmed by the CAN controller.
 **********************************************************************************************************************/
#if ( C_VERSION_REF_IMPLEMENTATION >= 0x140 )
void ApplCanTxObjConfirmed( CAN_CHANNEL_CANTYPE_FIRST CanObjectHandle logTxObjHandle )
#else
void ApplCanTxObjConfirmed( void )
#endif
{
}
#endif /* C_ENABLE_TX_OBSERVE */

#if defined( C_ENABLE_RECEIVE_FCT )
/***********************************************************************************************************************
 *  ApplCanMsgReceived
 **********************************************************************************************************************/
/*! \brief       This function is called every time a message is received from the CAN controller.
 *  \param[in]   rxStruct Pointer to receive information structure
 *  \return      kCanCopyData - Receive processing will be continued,
 *               kCanNoCopyData - Receive processing will be terminated
 **********************************************************************************************************************/
vuint8 ApplCanMsgReceived( CanRxInfoStructPtr rxStruct )
{
   /* -- Do not change this section -- */
   vuint16 rxId = CanRxActualId(rxStruct);


   if (GetResponseProcessing() != 0)
   {
      /* Diag response is currently processed, discard message */
      return kCanNoCopyData;
   }

#if defined( FBL_ENABLE_MULTIPLE_NODES )
   /* Check if received message applies to the configured node */
   if ((rxId != (vuint16)CAN_TP_RXID) &&
       (rxId != (vuint16)CAN_TP_FUNC_RXID))
   {
      /* Ignore message if it doesn't apply to the currently configured node */
      return kCanNoCopyData;
   }
#endif /* FBL_ENABLE_MULTIPLE_NODES */

   /* All conditions passed: process message */
   return kCanCopyData;
   /* -- End -- */
}
#endif /* C_ENABLE_RECEIVE_FCT */

/***********************************************************************************************************************
 *  ApplCanWakeUp
 **********************************************************************************************************************/
/*! \brief       This call-back function is called if a wake-up condition on the CAN bus is detected during sleep mode
 *               of the CAN controller.
 *  \param[in]   channel Handle of a CAN channel (MRC only)
 **********************************************************************************************************************/
void ApplCanWakeUp( CAN_CHANNEL_CANTYPE_ONLY )
{
}


/***********************************************************************************************************************
 *  ApplFblCanBusOff
 **********************************************************************************************************************/
/*! \brief       This call-back function is called if the CAN controller enters bus-off state.
 **********************************************************************************************************************/
void ApplFblCanBusOff( void )
{
   /* Bus off detected, issue ECU reset */
   ApplFblReset(); /* PRQA S 2987 */ /* MD_FblKbApiOem_2987 */
}



#if defined( FBL_ENABLE_SLEEPMODE )
/***********************************************************************************************************************
 *  ApplFblCwBusSleepMode
 **********************************************************************************************************************/
/*! \brief       This call-back function is called if the NM enters bus sleep mode
 **********************************************************************************************************************/
void ApplFblCwBusSleepMode( void )
{
   /* Insert your use-case specific sleep mode implementation here, e.g. power down of your ECU. */

#if defined( FBL_WATCHDOG_ON )
   /* Wait for watchdog to be triggered */
   while (FblLookForWatchdog() != FBL_WD_TRIGGERED)
   {
      ;
   }
#endif

   /* Set transceiver in sleep mode, low-power mode */
   ApplTrcvrSleepMode();

   /* Wait for power down, check for wake-up request */
   while (ApplFblCwWakeUp() != kFblOk)
   {
      ;
   }
   /* Wake-up request received, generate reset */
   ApplFblReset();
}
#endif /* FBL_ENABLE_SLEEPMODE */

/***********************************************************************************************************************
 *  ApplTrcvrSleepMode
 **********************************************************************************************************************/
/*! \brief       Turn off the transceiver to enter sleep mode (e.g. pin configuration ENABLE = 1, _STDBY = 0)
 **********************************************************************************************************************/
void ApplTrcvrSleepMode( void )
{
}

/***********************************************************************************************************************
 *  ApplFblCwWakeUp
 **********************************************************************************************************************/
/*! \brief       This call-back function is called if a wake-up condition is detected during sleep mode
 *  \pre         Transceiver in sleep mode
 *  \return      kFblOk if wake-up detected, otherwise kFblFailed
 **********************************************************************************************************************/
vuint8 ApplFblCwWakeUp( void )
{
   /* TODO_CUSTOMER: Insert your use-case specific wake-up mode implementation here. */
   tFblResult result;
   /* TODO_CUSTOMER: Insert your use-case specific wake-up mode implementation here. */
//# error "Error in fbl_ap.h: Customer TODO - change wake-up implementation to match to your use-case."

   return result;
}

#if defined( FBL_MIO_ENABLE_HOOKS )
/***********************************************************************************************************************
 *  ApplFblPreMemDriver
 **********************************************************************************************************************/
/*! \brief        Function is called before the memory driver is executed.
 *  \param[in]    device   Memory device, which is going to be used.
 *  \param[in]    function Function of the memory device, which is going to be called.
 **********************************************************************************************************************/
void ApplFblPreMemDriver( vuint8 device, vuint8 function )
{

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */
   /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)device;
   (void)function;
#endif /* V_ENABLE_USE_DUMMY_STATEMENT */

}
#endif /* FBL_MIO_ENABLE_HOOKS */

#if defined( FBL_MIO_ENABLE_HOOKS )
/***********************************************************************************************************************
 *  ApplFblPostMemDriver
 **********************************************************************************************************************/
/*! \brief        Function is called after the memory driver has finished the operation.
 *  \param[in]    device   Memory device, which is going to be used.
 *  \param[in]    function Function of the memory device, which is going to be called.
 **********************************************************************************************************************/
void ApplFblPostMemDriver( vuint8 device, vuint8 function )
{

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */
   /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)device;
   (void)function;
#endif /* V_ENABLE_USE_DUMMY_STATEMENT */

}
#endif /* FBL_MIO_ENABLE_HOOKS */



# if defined( V_GEN_GENERATOR_MSR ) && (CANTP_STMIN_BY_APPL == STD_ON)
/***********************************************************************************************************************
 *  ApplFblStartSeparationTime
 **********************************************************************************************************************/
/*! \brief       Callout from TP that lets application measure STMin.
 *  \param[in]   CanTpTxSduId Id of PDU.
 *  \param[in]   STmin Value of STMin.
 *  \return      TRUE / FALSE
 **********************************************************************************************************************/
FUNC (boolean, CANTP_CODE) ApplFblStartSeparationTime(PduIdType CanTpTxSduId, uint8 STmin)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)STmin;    /* PRQA S 3112 */ /* MD_MSR_DummyStmt */
#endif

   /* ECU can assume STmin of test tool is zero without further validation.
    * Stop seperation timer immediately. Consecutive frames will be sent without delay. */
# if (CANTP_STMIN_BY_APPL == STD_ON)
   CanTp_StopSeparationTime(CanTpTxSduId);
# endif
   /* Return TRUE to inform TP that STmin will be (was) handled by the application */
   return TRUE;
}
# endif


/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblAp_3673:
     Reason: Function is part of the bootloader API which provides the possibility to influence the bootloader behavior
             by modifying the output parameters. The provided default implementation of the function doesn't
             necessarily make use of all available parameters.
     Risk: The parameter value might be changed unintentionally, thus causing malfunction in the calling instance.
     Prevention: Provide detailed information about the API and its usage in the user documentation.

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
 *  END OF FILE: FBL_AP.C
 **********************************************************************************************************************/

