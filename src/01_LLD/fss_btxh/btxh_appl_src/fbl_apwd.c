/* Kernbauer Version: 1.12 Konfiguration: FBL Erzeugungsgangnummer: 1 */

/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Application dependent watchdog routines
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
 *  Copyright (c) 2018 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  AUTHOR IDENTITY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Name                          Initials      Company
 *  --------------------------------------------------------------------------------------------------------------------
 *  Christian Baeuerle            CB            Vector Informatik GmbH
 *  Armin Happel                  Hp            Vector Informatik GmbH
 *  Konrad Lazarus                Ls            Vector Informatik GmbH
 *  Alexandre C. Plombin          ACP           Vector CANtech, Inc.
 *  Ahmad Nasser                  AN            Vector CANtech, Inc.
 *  Robert Schaeffner             Rr            Vector Informatik GmbH
 *  Marco Wierer                  WM            Vector Informatik GmbH
 *  Joern Herwig                  JHG           Vector Informatik GmbH
 *  Andre Caspari                 Ci            Vector Informatik GmbH
 *  Michael F. Radwick            MFR           Vector CANtech, Inc.
 *  Andreas Wenckebach            AWh           Vector Informatik GmbH
 *  Achim Strobelt                Ach           Vector Informatik GmbH
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  03.00.00   2004-07-09  WM                       First implementation
 *  03.01.00   2004-09-22  WM                       Minor changes
 *  03.02.00   2005-01-21  Rr                       Changed version defines due to naming
 *                                                  conventions
 *  03.03.00   2005-04-20  WM      ESCAN00012125    Support copying of the
 *                                                  watchdog function by the startup code
 *  03.04.00   2007-01-17  JHG     ESCAN00017120    Added token for additional functions
 *                         Ls      ESCAN00014726    FBL_COPY_CODE_TO_RAM_ON_STARTUP
 *                         AMN                      Added new watchdog functions
 *  03.05.00   2007-01-22  WM                       Added V_VER.H version cross check
 *  03.06.00   2007-03-29  MFR     ESCAN00020057    Add tokens for local data,
 *                                                  prototypes, etc.
 *  03.07.00   2008-03-07  Hp                       No changes
 *  03.08.00   2009-11-11  AWh     ESCAN00039075    Added Kb-includes for own apwd-defines
 *  03.09.00   2012-03-30  QPs     ESCAN00058043    No changes
 *  03.10.00   2012-12-06  Ach     ESCAN00062912    Adapted comments to use Doxygen
 *  03.10.01   2018-02-02  AWh     ESCAN00098254    Sbc use case: include "CanTrcv_30_Sbc.h"
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

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
#if defined( FBL_ENABLE_VALSTRUCT )
/* # include "fbl_valstruct.h" */     /* commented by FblIntegrationAssistant */
#endif
//# include "Det.h"
# if (DET_ENABLED == STD_ON)
/* #   include "Can.h" */     /* commented by FblIntegrationAssistant */
/* #   include "CanTp.h" */     /* commented by FblIntegrationAssistant */
# endif

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLKBAPI_FRAMEWD_VERSION != 0x0310u ) || \
    ( FBLKBAPI_FRAMEWD_RELEASE_VERSION != 0x01u )
# error "Error in FBL_APWD.C: Source and header file are inconsistent!"
#endif

#if ( FBLKBAPI_FRAMEWD_VERSION != _FBLKBAPI_FRAMEWD_VERSION ) || \
    ( FBLKBAPI_FRAMEWD_RELEASE_VERSION != _FBLKBAPI_FRAMEWD_RELEASE_VERSION )
# error "Error in FBL_APWD.C: Source and V_VER.H are inconsistent!"
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


/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  EXTERNAL DATA
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *   GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  ApplFblWDInit
 **********************************************************************************************************************/
/*! \brief       Initialize watchdog.
 *  \details     WDTimer has to be initialized here.
 **********************************************************************************************************************/
void ApplFblWDInit( void )
{
#if defined( FBL_WATCHDOG_ON )
   WDTimer = (tWdTime)FBL_WATCHDOG_TIME;
#endif /* FBL_WATCHDOG_ON */

}

/***********************************************************************************************************************
 *  ApplFblWDLong
 **********************************************************************************************************************/
/*! \brief       Synchronize window watchdog for application.
 *  \details     This function is called just before application start.
 **********************************************************************************************************************/
void ApplFblWDLong( void )
{
}

/***********************************************************************************************************************
 *  ApplFblWDShort
 **********************************************************************************************************************/
/*! \brief       Synchronize window watchdog for bootloader.
 *  \details     This function is called right after start of the bootloader from the application.
 **********************************************************************************************************************/
void ApplFblWDShort( void )
{
#if defined( FBL_WATCHDOG_ON )
   WDTimer = 1;
#endif
}

# define WDTRIGGER_START_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  ApplFblWDTrigger
 **********************************************************************************************************************/
/*! \brief       Cyclic function to handle the actual watchdog trigger.
 *  \details     This function is called by FblLookForWatchdog() and contains the actual watchdog trigger
 *               code. Depending on the configuration, please note the following points:
 *               - If the function is copied by FblCopyWatchdog(), it has to be relocatable and normally
 *                 no function calls out of this function are allowed.
 *               - If the function is placed to RAM by the linker, it has to be present before the first call.
 *                 If any function calls are done, the called functions have to be placed in RAM as well.
 *  \pre         This function has to be executed from RAM.
 **********************************************************************************************************************/
void V_CALLBACK_NEAR ApplFblWDTrigger( void )
{
}
# define WDTRIGGER_STOP_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */

/* Additional watchdog functions **********************************************/


/***********************************************************************************************************************
 *  END OF FILE: FBL_APWD.C
 **********************************************************************************************************************/

