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
 *  07.00.01   2022-07-05  vismix  FBL-5233         Mode Switch Token Shall Take Server Message ID into Account
 *  07.00.02   2022-07-26  visjns  ESCAN00110436    No changes
 *  07.00.03   2022-08-03  visjns  ESCAN00111421    No changes
 *  07.01.00   2022-08-15  vistmo  FBL-5514         Support Additional OTA functionality
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2018-09-14  visrie  ESCAN00100739    Added support for FblLib_NvPattern
 *                                                  Removed unused code
 *                         viscb   ESCAN00101418    Callout function for memory condition check
 *                         visach  ESCAN00101686    No changes
 *  02.01.00   2019-02-26  visrie  ESCAN00102257    Added additional callout functions
 *  02.01.01   2019-09-23  visrie  FBL-452          No changes
 *  02.02.00   2019-12-05  visrie  FBL-458          Added FblMio callout functions
 *  02.03.00   2020-05-07  visrie  FBL-1414         Added callout functions for One-Step-Updater
 *  02.03.01   2020-06-02  visjdn  ESCAN00106533    No changes
 *  02.03.02   2020-09-14  visrcn  FBL-2257         No changes
 *  02.03.03   2020-11-23  visrcn  FBL-2564         No changes
 *  02.03.04   2021-03-19  visjdn  FBL-2916         No changes
 *  02.04.00   2021-05-25  vishor  FBL-3165         MISRA corrections and justifications
 *  02.05.00   2021-06-15  visrie  FBL-3591         No changes
 *  02.06.00   2021-07-15  visjdn  FBL-3381         Re-mapping of EcuM_SetWakeupEvent
 *  02.07.00   2021-07-23  visrie  FBL-3822         No changes
 *  02.08.00   2021-09-14  visjdn  FBL-2859         No changes
 *  02.09.00   2021-10-12  vistmo  FBL-3901         Add authentication callbacks
 *  02.10.00   2021-10-15  visrie  FBL-3945         Remove content of ApplFblStartApplication
 *  02.10.01   2021-11-12  vishor  ESCAN00110133    Compiler error: Unknown symbols
 *                                                   ApplFblSave/RestoreStatusSector/Dynamic
 *  02.10.02   2022-06-27  visrie  FBL-4694         No changes
 *  02.10.03   2022-10-20  visjns  FBL-5452         No changes
 *  02.11.00   2022-12-22  vistbe  FBL-5691         No changes
 *  02.11.01   2023-04-25  visjns  ESCAN00113808    No changes
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY (KbFbl_apOem.h, Ford)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  09.00.00   2021-02-23  visrie  FBL-1525         Added support for STJLR.18.089 Issue 5
 *  09.00.01   2021-04-19  vistbe  ESCAN00108065    No changes
 *  09.00.02   2021-06-17  vishor  ESCAN00109177    No changes
 *                                 ESCAN00108819    No changes
 *  09.01.00   2021-06-28  vistbe  FBL-3522         No changes
 *  09.02.00   2021-09-06  visjdn  FBL-2859         No changes
 *  09.02.01   2023-01-17  visrie  ESCAN00112646    No changes
 *                                 ESCAN00112929    No changes
 *  09.03.00   2023-02-09  vistmo  FBL-6438         No changes
 *  09.03.01   2023-03-15  visjns  ESCAN00113286    No changes
 *  09.03.02   2023-05-26  vismix  ESCAN00108784    No changes
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY (KbFbl_apHW.h, Brs)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2018-02-26  viscsz                   Initial version
 *  01.00.01   2018-03-08  viscsz  ESCAN00102984    No changes
 *  01.00.02   2019-04-16  viscsz  ESCAN00102985    No changes
 *  02.00.00   2020-04-08  visrie  FBL-1016         No changes
 *  02.01.00   2020-07-13  visjdn  ESCAN00106756    No changes
 *  02.01.01   2022-10-20  visjns  ESCAN00112300    No changes
 *  02.02.00   2022-12-13  visjdn  FBL-6267         No changes
 *  02.02.01   2023-01-09  vishor  ESCAN00113543    No changes
 **********************************************************************************************************************/

#ifndef FBL_APNV_H
#define FBL_APNV_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ---  Module Version --- */
/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi_FrameNv_Ford CQComponent : Implementation */
#define FBLKBAPI_FRAMENV_FORD_VERSION              0x0701u
#define FBLKBAPI_FRAMENV_FORD_RELEASE_VERSION      0x00u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/


/* PRQA S 3453 COMPILER_3453_TAG */ /* MD_MSR_FctLikeMacro */


/* Server Message ID flag access macros */ /* PRQA S 3453 2 */ /* MD_MSR_FctLikeMacro */
#define ApplFblReadSrvMsgIDFlag(buffer)         ApplFblNvReadServerMsgIdFlag(buffer)
#define ApplFblWriteSrvMsgIDFlag(buffer)        ApplFblNvWriteServerMsgIdFlag(buffer)

/* Last Server Message ID access macros */ /* PRQA S 3453 2 */ /* MD_MSR_FctLikeMacro */
#define ApplFblReadLastServerMsgId(buf)         ApplFblNvReadLastServerMsgId(buf)
#define ApplFblWriteLastServerMsgId(buf)        ApplFblNvWriteLastServerMsgId(buf)

/* Automatic configuration */
#if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES ) || \
    defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
/* Enable support for storage of one-time-programmable data */
# define FBL_APPL_ENABLE_OTP
#endif


#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# define ApplFblSetSigValidationState(state)        (applSignValidState = (state))
# define ApplFblGetSigValidationState()             (applSignValidState)
#endif

#if defined( FBL_ENABLE_PRESENCE_PATTERN )
# define ApplFblChkModulePresence(bd)        FblNvPatternGet((bd), kFblNvPatternId_ModuleValidity)
# define ApplFblSetModulePresence(bd)        FblNvPatternSet((bd), kFblNvPatternId_ModuleValidity)
# define ApplFblClrModulePresence(bd)        FblNvPatternClr((bd), kFblNvPatternId_ModuleValidity)
# define ApplFblChkApplPresence(bd)          FblNvPatternGet((bd), kFblNvPatternId_PartitionValidity)
# define ApplFblSetApplPresence(bd)          FblNvPatternSet((bd), kFblNvPatternId_PartitionValidity)
# define ApplFblClrApplPresence(bd)          FblNvPatternClr((bd), kFblNvPatternId_PartitionValidity)
#endif /* FBL_ENABLE_PRESENCE_PATTERN */


#if defined( FBL_ENABLE_FLASH_ERASED_DETECTION )
# define ApplFblGetBlockErased(bd)     ((FblNvPatternGet(&(bd), kFblNvPatternId_ErasedState) == kFblOk) ? kFlashErased \
                                                                                                        : kFlashNotErased)
# define ApplFblSetBlockErased(bd)     FblNvPatternSet(&(bd), kFblNvPatternId_ErasedState)
# define ApplFblClrBlockErased(bd)     FblNvPatternClr(&(bd), kFblNvPatternId_ErasedState)
#endif

#if defined( FBLBM_ENABLE_SECURE_BOOT )
# if defined( FBLSB_ENABLE_GENERATE_CMAC )
#  define ApplFblUpdateBlockMac(block, segList)    FblSb_UpdateBlockMac((block), (segList))
# endif /* FBLSB_ENABLE_GENERATE_CMAC */
#endif /* FBLBM_ENABLE_SECURE_BOOT */
#if !defined( ApplFblUpdateBlockMac )
# define ApplFblUpdateBlockMac(block, segList)     (kFblOk)
#endif

/* PRQA L:COMPILER_3453_TAG */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2 applSignValidState;
#endif

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

tFblProgStatus ApplFblExtProgRequest( void );
tApplStatus ApplFblIsValidApp( void );
tFblResult ApplFblValidateApp( void );
tFblResult ApplFblInvalidateApp( void );
tFblResult ApplFblValidateBlock( tBlockDescriptor blockDescriptor );
tFblResult ApplFblInvalidateBlock( tBlockDescriptor blockDescriptor );

tFblResult ApplFblAdjustLbtBlockData(tBlockDescriptor * blockDescriptor);


#if defined( FBL_ENABLE_SECMOD_FORD )
void ApplFblReadSecurityBytes( vuint8 * key, vuint16 length );
# if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
tFblResult ApplFblWriteSecurityBytes( vuint8 * key, vuint16 length );
# endif
#endif
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
tFblResult ApplFblReadVerificationKey( SecM_AsymKeyType * publicKey );
#  if defined( FBL_DIAG_ENABLE_PRODKEY_UPDATE )
tFblResult ApplFblWriteVerificationKey( vuint8 * key );
#  endif /* FBL_DIAG_ENABLE_PRODKEY_UPDATE */
# endif /* SEC_ENABLE_SECURITY_CLASS_CCC */

#if defined( FBL_CW_ENABLE_MULTIPLE_CONNECTIONS )
tFblResult ApplFblWriteDcmDslRxTesterSourceAddr(vuint8* buffer);
tFblResult ApplFblReadDcmDslRxTesterSourceAddr(vuint8* buffer);
#endif


/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

#endif /* FBL_APNV_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_APNV.C
 **********************************************************************************************************************/

