/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Diagnostic services supported in boot mode
 *                 Declaration of functions, variables and constants
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
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
 *  02.00.00   2014-02-13  visci   ESCAN00073673    Updated implementation for FBL_Ford_SLP7
 *                                 ESCAN00066098    Wrong response in case of routine failure
 *                                 ESCAN00059341    No changes (see fbl_diag.def)
 *  02.01.00   2014-03-21  vishrf  ESCAN00073727    Session timeout is not executed when rx interrupt is enabled
 *                         visci   ESCAN00074423    Added gateway support
 *                                 ESCAN00074447    Negative response on unaligned erase request
 *  02.02.00   2014-05-28  visci   ESCAN00075558    Removed SIP version check
 *  02.03.00   2014-08-15  visci   ESCAN00076997    Reworked startup message check
 *  02.04.00   2014-10-16  visci   ESCAN00078054    Updated transparent gateway support for SLP7
 *                                 ESCAN00078099    Renamed FblDiagTask FblDiagTimerTask
 *                                 ESCAN00078681    Improved security level handling
 *                                 ESCAN00078424    [Gateway] Negative responses from sub nodes are not routed back to
 *                                                   the main network
 *  02.05.00   2015-02-16  visci   ESCAN00081013    Download of compressed SBL is rejected if bootloader option
 *                                                   'presence pattern' is disabled
 *  02.06.00   2015-05-19  vaddod  ESCAN00083057    Bootloader rejects a valid download during requestDownload
 *                                                   with NRC requestOutOfRange
 *  02.07.00   2015-10-22  visci   ESCAN00085448    SBL verification might be bypassed
 *                                 ESCAN00085459    Improved erase header handling
 *                                 ESCAN00085637    Wrong NRC if Data Processing Deinit fails (fbl_mem_oem.h)
 *  02.07.01   2015-11-12  visjop  ESCAN00086446    No changes
 *             2015-11-30  visci   ESCAN00086872    No changes
 *  02.08.00   2016-01-12  visci   ESCAN00087405    Harmonized configuration of maximum number of DIDs
 *                                 ESCAN00087747    Reworked configuration switches
 *                                 ESCAN00087748    Added support for routine UpdateSecurityBytes
 *                                 ESCAN00087750    Compressed block length passed to ApplFblValidateBlock
 *                                 ESCAN00087753    Bootloader defaultSession Verification Test fails
 *  02.09.00   2016-03-02  visdkl  ESCAN00088904    No changes
 *                                 ESCAN00088680    No changes
 *  02.09.01   2016-04-07  vistns  ESCAN00089238    Compiler warning: multiple warnings
 *  02.09.02   2016-04-27  visci   ESCAN00089381    No changes
 *  02.10.00   2016-05-02  vishrf  ESCAN00087939    Support sleep mode timeout in bootloader
 *                                 ESCAN00087940    Support multiple diagnostic tester
 *                                 ESCAN00089306    Add support for DID 0xD021 Current Diagnostic Application
 *                                 ESCAN00089677    Support transitional response handling configuration
 *                                 ESCAN00089842    No changes
 *  03.00.00   2016-07-01  visci   ESCAN00088607    RCR-RP is sent even though the service dispatcher is not in progress
 *                                 ESCAN00090374    Added support for software signing solution
 *  03.00.01   2017-03-13  visci   ESCAN00094120    Diag buffer is not locked before simulation programming session request
 *  03.01.00   2017-06-05  vadcel  ESCAN00095425    No changes
 *  03.01.01   2017-09-05  visdkl  ESCAN00096537    [Mazda] Add support for Security Level 0x01
 *  03.01.02   2017-10-30  vadjbi  ESCAN00096944    Allow multiple connections within programming session
 *                                 ESCAN00097248    Add missing memory qualifier
 *  03.02.00   2017-12-07  vadcel  ESCAN00097677    Call ApplFblValidateApp() if all mandatory blocks are valid
 *  03.02.01   2018-03-23  visdkl  ESCAN00098896    Bootloader does not properly use configuration of CLASS_DDD
 *  03.03.00   2018-04-10  visdkl  ESCAN00099059    Support non-kernelbuilder main module
 *  03.03.01   2018-06-14  visdkl  ESCAN00099687    Allow tester group connections
 *             2018-07-04  visdkl  ESCAN00099466    No changes
 *  03.03.02   2018-08-21  visci   ESCAN00100454    Introduced DemoAppl configuration switch
 *                                 ESCAN00100459    No changes (see fbl_valstruct_oem.h)
 *  03.04.00   2018-11-26  visdkl  ESCAN00100766    No changes
 *                         visrr   ESCAN00101451    No changes
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    No changes
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    No changes
 *                                 ESCAN00102061    Fbl Lib Lbt is not initialized
 *                                 ESCAN00102506    Added RoutineControl services for OTA
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    No changes
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    Fixed initialization of output verification function
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    No changes
 *  04.01.01   2019-09-09  visrcn  ESCAN00103863    Bootloader transition if SPRMIB is set in Session Control Request
 *  04.01.02   2019-09-18  visrcn  ESCAN00104292    No changes
 *  04.01.03   2019-10-07  visrcn  ESCAN00104507    No changes
 *  04.01.04   2020-01-14  visjdn  ESCAN00105039    No changes
 *  04.01.05   2020-01-22  visrcn  ESCAN00105356    ECU reset delay time can't be longer then 255ms
 *  04.01.06   2020-02-04  visrcn  ESCAN00104331    No changes
 *                                 ESCAN00105007    Wrong NRC priority for stop routine activate inactive memory
 *                                                  partition
 *  04.01.07   2020-03-20  visrie  ESCAN00104555    Gateway retry timeouts may finish too early
 *  04.01.08   2020-04-01  visjdn  ESCAN00105201    Internal diagnostic states may be overwritten
 *  04.01.09   2020-05-05  vistmo  ESCAN00105551    No changes
 *  04.01.10   2020-06-29  visjdn  ESCAN00106253    In routine 0x213 the pre-check condition is wrong.
 *  04.01.11   2020-07-07  visjdn  ESCAN00106303    [OTA] Wrong sequence for 0x213 is accepted
 *  04.01.12   2020-09-10  vistbe  ESCAN00107348    No changes
 *  04.02.00   2020-10-01  visrie  FBL-1611         Added support for Safe-Swap
 *  04.03.00   2020-11-16  vistmo  FBL-1288         Added support for Secure Boot RI 2
 *  04.04.00   2020-12-10  vistmo  FBL-2141         Add support for Software Signing Solution 2.0
 *                         visrcn  ESCAN00107410    No changes
 *  04.05.00   2021-01-11  visjdn  FBL-2439         Change of Routine 0x213 Implementation
 *  04.05.01   2021-02-24  vishor  ESCAN00108271    No changes
 *                                 FBL-3035         Added/adapted MemMap sections
 *  04.05.02   2021-04-19  vishor  ESCAN00108500    ApplFblGetApplicationSwash is called with the wrong partition selected
 *  04.05.03   2021-05-10  vistbe  ESCAN00109048    No changes
 *  04.06.00   2021-06-28  vistbe  FBL-3522         Updated signing solution (new token format)
 *                                 ESCAN00108908    Check against a wrong token service type
 *  04.06.01   2021-10-22  vistbe  ESCAN00110414    Wrong key is used for token signature check in mode 5
 *                                 ESCAN00110495    RTC Token Update return NRC$13 for Mode 0-4
 *  04.06.02   2022-01-31  visjdn  ESCAN00110767    FBL returns the final response to written data in the
 *                                                  RequestTransferExit response
 *  04.06.03   2022-03-29  visrie  ESCAN00111600    Token is always rejected
 *  04.07.00   2022-07-04  vismix  FBL-5233         Mode Switch Token Shall Take Server Message ID into Account
 *                                 ESCAN00109981    Compiler error: MemDriver_VerifySync is not defined
 *                                 ESCAN00106367    The FBL reject the request download with a NRC$31
 *                                 ESCAN00111443    Server Message ID not checked during token download
 *  04.08.00   2022-07-06  vismix  FBL-4527         Support User Callouts for Mode Switching
 *  04.08.01   2022-07-27  visjns  ESCAN00112049    Incorrect NRC order for routine use inactive memory partition
 *                                 ESCAN00112263    SecurityAccess performed after RequestDownload rejected with NRC22
 *  04.09.00   2022-08-15  vistmo  ESCAN00112435    The verification of the flash driver always fails
 *                                 ESCAN00112575    Ford tokens are wrongly rejected
 *  04.09.01   2022-10-17  vismix  ESCAN00112879    Routine Check Application Validity is failing
 *  04.09.02   2023-01-13  vismix  ESCAN00112890    DID D071 does not return the last successful token received
 *                                 ESCAN00113612    Server message ID check does not work correctly
 *  04.10.00   2023-02-09  vistmo  ESCAN00112972    Token with reserved bits set in SyncP is accepted
 *                                 ESCAN00113835    For token mode 5 reprogrammable keys are not extracted correctly
 *                                 ESCAN00113843    Token with "Has Key ID" bit set in SyncP is accepted
 *                                 ESCAN00113764    RID 7013 (token download) is always supported
 *                                 FBL-6438         No changes
 *  04.10.01   2023-03-13  visjns  ESCAN00113919    No changes
 *  04.10.02   2023-05-11  vismix  ESCAN00113831    Application validation fails in case of MAC update failure
 *                                                   regardless logical block is optional or mandatory
 **********************************************************************************************************************/

#define FBL_DIAG_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"    /* Common include files */
#include "fbl_diag.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLDIAG_14229_FORD_VERSION != 0x0410u ) || \
    ( FBLDIAG_14229_FORD_RELEASE_VERSION != 0x02u )
# error "Error in fbl_diag.c: Source and header file are inconsistent!"
#endif

#if ( FBLDIAG_14229_FORD_VERSION != _FBLDIAG_OEM_VERSION ) || \
    ( FBLDIAG_14229_FORD_RELEASE_VERSION != _FBLDIAG_OEM_RELEASE_VERSION )
# error "Error in fbl_diag.c: Source and v_ver.h are inconsistent!"
#endif


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define FBL_DIAG_IMPL_TYPE_OUTPUT               1
#define FBL_DIAG_IMPL_TYPE_STATEBITMAP          2
#define FBL_DIAG_IMPL_TYPE_SERVICEPROPERTY      3
#define FBL_DIAG_IMPL_TYPE_SERVICELIST          4
#define FBL_DIAG_IMPL_TYPE_SERVICELIST_HANDLER  5
#define FBL_DIAG_IMPL_TYPE_SERVICELIST_ENUM     6

#define kDiagInitSequenceNum     ((vuint8) 0x01u)
#define kDiagSegmentOutOfRange   ((vuint8) 0xFFu)
#define kDiagSubparamMask        ((vuint8) 0x7Fu)

/* Transfer types (used with transferType) */
# define DOWNLOAD_RAM            ((vuint8) 0x10u)
# define DOWNLOAD_FLASH          ((vuint8) 0x40u)

/* Allow external definition of RAM state table usage */
#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES ) || \
    defined( FBL_DIAG_DISABLE_RAM_STATETABLES )
#else
# define FBL_DIAG_ENABLE_RAM_STATETABLES
#endif
#define FBL_DIAG_STATE_ARRAYS
#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
# define FBL_DIAG_SERVICE_LIST_HANDLES
#endif

#define FBL_DIAG_CHECK_LIST_HANDLES 

/* Maximum wait time for ECU reset request */
#if !defined( kCwMaxWaitTimeEcuResetRequest )
# define kFblDiagMaxWaitTimeEcuResetRequest        kFblDiagTimeP2Star
#else
# define kFblDiagMaxWaitTimeEcuResetRequest        (kCwMaxWaitTimeEcuResetRequest / FBL_REPEAT_CALL_CYCLE)
#endif

/* Macros to access the ecuReset timer value */
#define TimeoutEcuResetValue()                 ecuResetTimeout
#define DecTimeoutEcuResetValue()              (ecuResetTimeout--)
#define ResetEcuResetTimeout()                 (ecuResetTimeout = (vuint16)(kFblDiagMaxWaitTimeEcuResetRequest/DIAG_CALL_CYCLE))
#define StopEcuResetTimeout()                  (ecuResetTimeout = 0)

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
/*
 * Negative return value for FblDiagGetSessionIndex(). This value has to be greater than 0x7F because the SPRMIB bit
 * restricts the value range.
 */
# define kDiagSessionNotFound    ((vuint8)0xFFu)
#endif /* FBL_DIAG_ENABLE_SESSION_PARAMETERS */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
/* Indicator for non-initialized security level index */
# define kDiagInvalidSecLvlIdx   ((vuint8)0xFFu)
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

/* Return values for DID 0xD021 - Current Diagnostic Application */
#define kFblDiagAppPbl           0x01u
#define kFblDiagAppSbl           0x02u
#define kFblDiagAppUnknown       0xFFu

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/* Define for customer for getting FESN */
# if !defined( FblDiagGetFesn )
#  define FblDiagGetFesn()       fblCommonData.FordElectronicSerialNumber
# endif

/* Defines for token parameter offset */
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
#  define FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET      0u
#  define FBL_DIAG_TOKEN_PARAM_CPU_DEST_OFFSET            1u
#  define FBL_DIAG_TOKEN_PARAM_SERVICE_TYPE_OFFSET        2u
#  define FBL_DIAG_TOKEN_PARAM_CRYPTOTYPE_OFFSET          6u
#  define FBL_DIAG_TOKEN_PARAM_PAYLOAD_SIZE_OFFSET        7u
#  define FBL_DIAG_TOKEN_PARAM_FESN_OFFSET                11u
#  define FBL_DIAG_TOKEN_PARAM_SERVERMESSAGEID_OFFSET     27u
#  define FBL_DIAG_TOKEN_PARAM_CMD_OFFSET                 35u
#  define FBL_DIAG_TOKEN_PARAM_KEY_INDEX_OFFSET           36u
#  define FBL_DIAG_TOKEN_PARAM_NAME_LENGTH_INDEX_OFFSET   37u
#  define FBL_DIAG_TOKEN_PARAM_NAME_INDEX_OFFSET          38u
#  define FBL_DIAG_TOKEN_PARAM_PAYLOAD_FESN_OFFSET        80u
#  define FBL_DIAG_TOKEN_PARAM_DEVKEY_MOD_OFFSET          107u
#  define FBL_DIAG_TOKEN_PARAM_DEVKEY_EXP_OFFSET          363u
#  define FBL_DIAG_TOKEN_PARAM_PRODKEY_MOD_OFFSET         619u
#  define FBL_DIAG_TOKEN_PARAM_PRODKEY_EXP_OFFSET         875u
#  define FBL_DIAG_TOKEN_PARAM_TOKENKEY_MOD_OFFSET        1131u
#  define FBL_DIAG_TOKEN_PARAM_TOKENKEY_EXP_OFFSET        1387u

/* Generic Defines for token handling */
#  define FBL_DIAG_TOKEN_RESBITS_REQ                0x03u
#  define FBL_DIAG_TOKEN_KEYID_REQ                  0x04u
#  define FBL_DIAG_TOKEN_FESN_REQ                   0x08u
#  define FBL_DIAG_TOKEN_FESN_SHIFT                 0x03u
#  define FBL_DIAG_TOKEN_FESN_LEN                   8u
#  define FBL_DIAG_TOKEN_MSGID_REQ                  0x10u
#  define FBL_DIAG_TOKEN_MOD5_FESN_LEN              3u
#  define FBL_DIAG_TOKEN_CPU_DEST                   0u
#  define FBL_DIAG_TOKEN_PROTOCOL_VERSION           0x20u
#  define FBL_DIAG_TOKEN_PROTOCOL_VERSION_MASK      0xE0u
#  define FBL_DIAG_TOKEN_NAME_LENGTH                0x0Bu
#  define FBL_DIAG_TOKEN_NAME                       "APP_SIGN_SW"
#  define FBL_DIAG_TOKEN_SERVICE_TYPE               0x110u
#  define FBL_DIAG_TOKEN_CRYPTOTYPE                 0x0Fu    /* Only RSA supported */
#  define FBL_DIAG_TOKEN_PAYLOAD_SIZE_MODE0_4       43u
#  define FBL_DIAG_TOKEN_PAYLOAD_SIZE_MODE5         1606u

#  define FBL_DIAG_TOKEN_KEY_INDEX_0                0u       /* Used for mode 5 tokens */
#  define FBL_DIAG_TOKEN_KEY_INDEX_1                1u       /* Used for mode 0-4 tokens */
#  define FBL_DIAG_TOKEN_KEY_EXP_MAX                256u

/* Defines Token Handling Commands */
#  define FBL_DIAG_TOKEN_CMD_REVERTPROD  0u
#  define FBL_DIAG_TOKEN_CMD_USEDEVPERM  1u
#  define FBL_DIAG_TOKEN_CMD_USEDEVTEMP  2u
#  define FBL_DIAG_TOKEN_CMD_USEDEVDATE  3u
#  define FBL_DIAG_TOKEN_CMD_USEDEVIGNI  4u
#  define FBL_DIAG_TOKEN_CMD_PROGKEY     5u

/* Defines Token Handling Macro */
#  define FblDiagIsTokenProtocolVersionCorrect(token)  (((token)[FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET] & FBL_DIAG_TOKEN_PROTOCOL_VERSION_MASK) == FBL_DIAG_TOKEN_PROTOCOL_VERSION)
#  define FblDiagIsTokenKeyIDRequired(token)      (((token)[FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET] & FBL_DIAG_TOKEN_KEYID_REQ) == FBL_DIAG_TOKEN_KEYID_REQ)
#  define FblDiagIsTokenMsgIDRequired(token)      (((token)[FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET] & FBL_DIAG_TOKEN_MSGID_REQ) == FBL_DIAG_TOKEN_MSGID_REQ)
#  define FblDiagIsTokenFesnRequired(token)       (((token)[FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET] & FBL_DIAG_TOKEN_FESN_REQ) == FBL_DIAG_TOKEN_FESN_REQ)
#  define FblDiagIsTokenReserverdBitsSet(token)   (((token)[FBL_DIAG_TOKEN_PARAM_SYNCP_ENC_DATA_OFFSET] & FBL_DIAG_TOKEN_RESBITS_REQ) != 0u)
#  define FblDiagGetTokenCPUDestination(token)    ((token)[FBL_DIAG_TOKEN_PARAM_CPU_DEST_OFFSET])
#  define FblDiagGetTokenServiceType(token)       (((vuint16)(token)[FBL_DIAG_TOKEN_PARAM_SERVICE_TYPE_OFFSET] << 8u) | \
                                                    (vuint16)(token)[FBL_DIAG_TOKEN_PARAM_SERVICE_TYPE_OFFSET + 1u] )
#  define FblDiagGetTokenCryptoType(token)        ((token)[FBL_DIAG_TOKEN_PARAM_CRYPTOTYPE_OFFSET])
#  define FblDiagGetTokenCommandType(token)       ((token)[FBL_DIAG_TOKEN_PARAM_CMD_OFFSET])
#  define FblDiagGetTokenPayloadSize(token)       (((vuint32)(token)[FBL_DIAG_TOKEN_PARAM_PAYLOAD_SIZE_OFFSET] << 24u) | \
                                                   ((vuint32)(token)[FBL_DIAG_TOKEN_PARAM_PAYLOAD_SIZE_OFFSET + 1u] << 16u) | \
                                                   ((vuint32)(token)[FBL_DIAG_TOKEN_PARAM_PAYLOAD_SIZE_OFFSET + 2u] << 8u) | \
                                                    (vuint32)(token)[FBL_DIAG_TOKEN_PARAM_PAYLOAD_SIZE_OFFSET + 3u] )
#  define FblDiagGetTokenTokenNameLength(token)   ((vuint8)(token)[FBL_DIAG_TOKEN_PARAM_NAME_LENGTH_INDEX_OFFSET])
#  define FblDiagGetTokenTokenName(token)         (&(token)[FBL_DIAG_TOKEN_PARAM_NAME_INDEX_OFFSET])
#  define FblDiagGetTokenFesn(token)              (&(token)[FBL_DIAG_TOKEN_PARAM_FESN_OFFSET])
#  define FblDiagGetTokenServerMsgIdPtr(token)    (&(token)[FBL_DIAG_TOKEN_PARAM_SERVERMESSAGEID_OFFSET])
#  define FblDiagGetTokenPayloadFesn(token)       (&(token)[FBL_DIAG_TOKEN_PARAM_PAYLOAD_FESN_OFFSET])
#  define FblDiagGetTokenKeyIndex(token)          ((token)[FBL_DIAG_TOKEN_PARAM_KEY_INDEX_OFFSET])
#  define FblDiagGetTokenDevKeyMod(token)         (&(token)[FBL_DIAG_TOKEN_PARAM_DEVKEY_MOD_OFFSET])
#  define FblDiagGetTokenDevKeyExp(token)         (&(token)[FBL_DIAG_TOKEN_PARAM_DEVKEY_EXP_OFFSET + FBL_DIAG_TOKEN_KEY_EXP_MAX - FBL_DIAG_KEY_EXP_LENGTH])
#  define FblDiagGetTokenProdKeyMod(token)        (&(token)[FBL_DIAG_TOKEN_PARAM_PRODKEY_MOD_OFFSET])
#  define FblDiagGetTokenProdKeyExp(token)        (&(token)[FBL_DIAG_TOKEN_PARAM_PRODKEY_EXP_OFFSET + FBL_DIAG_TOKEN_KEY_EXP_MAX - FBL_DIAG_KEY_EXP_LENGTH])
#  define FblDiagGetTokenTokenKeyMod(token)       (&(token)[FBL_DIAG_TOKEN_PARAM_TOKENKEY_MOD_OFFSET])
#  define FblDiagGetTokenTokenKeyExp(token)       (&(token)[FBL_DIAG_TOKEN_PARAM_TOKENKEY_EXP_OFFSET + FBL_DIAG_TOKEN_KEY_EXP_MAX - FBL_DIAG_KEY_EXP_LENGTH])

/* Key used for Key change */
# if !defined( FBL_DIAG_KEY_CHANGE_KEY_MOD )
#  define FBL_DIAG_KEY_CHANGE_KEY_MOD   SecM_RsaKeyChangeMod
# endif /* !FBL_DIAG_KEY_CHANGE_KEY_MOD */
# if !defined( FBL_DIAG_KEY_CHANGE_KEY_EXP )
#  define FBL_DIAG_KEY_CHANGE_KEY_EXP   SecM_RsaKeyChangeExp
#  endif /* !FBL_DIAG_KEY_CHANGE_KEY_EXP */
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */


/*****************************************************************************/
/* State handling ************************************************************/
/*****************************************************************************/

#define SPLIT_SHORT(id)  ((vuint8)(((id) >> 8u) & 0xFFu)), ((vuint8)((id) & 0xFFu))

# define STATE_CHECK_COUNT   2u
# define STATE_ADDCLR_COUNT  3u
#define STATE_COUNT          (STATE_CHECK_COUNT + STATE_ADDCLR_COUNT)

/* State array build macros */
#define STATE_ARRAYENTRY(mask, idx)    ((tStateBitmap)(((mask) >> ((idx) * STATE_BITS)) & kDiagStateMaskAll))
#if ( STATECHECK_ARRAYSIZE == 1u )
# define STATE_BUILDARRAYENTRIES(mask) STATE_ARRAYENTRY(mask, 0u)
#endif
#if ( STATECHECK_ARRAYSIZE == 2u )
# define STATE_BUILDARRAYENTRIES(mask) STATE_ARRAYENTRY(mask, 0u), STATE_ARRAYENTRY(mask, 1u)
#endif
#if ( STATECHECK_ARRAYSIZE == 3u )
# define STATE_BUILDARRAYENTRIES(mask) STATE_ARRAYENTRY(mask, 0u), STATE_ARRAYENTRY(mask, 1u), STATE_ARRAYENTRY(mask, 2u)
#endif
#if ( STATECHECK_ARRAYSIZE == 4u )
# define STATE_BUILDARRAYENTRIES(mask) STATE_ARRAYENTRY(mask, 0u), STATE_ARRAYENTRY(mask, 1u), STATE_ARRAYENTRY(mask, 2u), STATE_ARRAYENTRY(mask, 3u)
#endif
#if ( STATECHECK_ARRAYSIZE > 4u )
# error "Invalid array size for state check!"
#endif

#define STATE_BUILDARRAY(mask)         { STATE_BUILDARRAYENTRIES(mask) }

/* State masks and access macros */
#define kDiagStateMaskAllLong             STATE_MULTIMASKLONG(0u, ((STATECHECK_ARRAYSIZE * STATE_BITS) - 1u))

#define kDiagStateMask(state)             STATE_MASKLONG(state)

#define SetDiagState(state)               STATE_SET(fblStates, state)
#define ClrDiagState(state)               STATE_CLR(fblStates, state)

#define kDiagStateNone                    (0x00uL)

#define ClrDiagSession()                  STATE_MULTICLR(fblStates, kDiagStateIdxSessionDefault, kDiagStateIdxSessionProgramming)

#define kDiagStateSessionDefault          kDiagStateMask(kDiagStateIdxSessionDefault)
#define SetDiagDefaultDiagSession()       { \
                                             ClrDiagSession(); \
                                             SetDiagState(kDiagStateIdxSessionDefault); \
                                             SetDiagSessionType(kDiagSubDefaultSession); \
                                          }

#define kDiagStateSessionProgramming      kDiagStateMask(kDiagStateIdxSessionProgramming)
#define SetDiagProgrammingSession()       { \
                                             ClrDiagSession(); \
                                             SetDiagState(kDiagStateIdxSessionProgramming); \
                                             SetDiagSessionType(kDiagSubProgrammingSession); \
                                          }

#define kDiagStateSessionDefaultProgramming (kDiagStateSessionDefault | kDiagStateSessionProgramming)
#define kDiagStateSessionAll              kDiagStateSessionDefaultProgramming

#define kDiagStateSecurityKey01           kDiagStateMask(kDiagStateIdxSecurityKey01)
#define GetSecurityKeyAllowed()           GetDiagState(kDiagStateIdxSecurityKey01)
#define SetSecurityKeyAllowed()           SetDiagState(kDiagStateIdxSecurityKey01)
#define ClrSecurityKeyAllowed()           ClrDiagState(kDiagStateIdxSecurityKey01)

#define kDiagStateSecurityKeyAll          (kDiagStateSecurityKey01)

#define kDiagStateSecurityAccess01        kDiagStateMask(kDiagStateIdxSecurityAccess01)
#define GetSecurityAccess01()             GetDiagState(kDiagStateIdxSecurityAccess01)
#define SetCurrentSecLvl(secLvl)          diagCurrentSecLvl = (secLvl)

#define kDiagStateSecurityAccessAll       (kDiagStateSecurityAccess01)

/* Security access states are used in state machine definition */
#define kDiagStateSecurityAccessDelay01   kDiagStateNone

#define kDiagStateSecurityAccessDelayAll  (kDiagStateSecurityAccessDelay01)
#if !defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
# define kServiceCheckListSubFctSecCheck  kServiceCheckListSubFctCheck
#endif

#define kDiagStateFunctionalRequest       kDiagStateMask(kDiagStateIdxFunctionalRequest)
#define GetFunctionalRequest()            GetDiagState(kDiagStateIdxFunctionalRequest)
#define SetFunctionalRequest()            SetDiagState(kDiagStateIdxFunctionalRequest)
#define ClrFunctionalRequest()            ClrDiagState(kDiagStateIdxFunctionalRequest)


#define kDiagStateServiceInProgress       kDiagStateMask(kDiagStateIdxServiceInProgress)
#define SetServiceInProgress()            SetDiagState(kDiagStateIdxServiceInProgress)
#define ClrServiceInProgress()            ClrDiagState(kDiagStateIdxServiceInProgress)

#define kDiagStateTpConfirmationFlag      kDiagStateMask(kDiagStateIdxTpConfirmationFlag)
#define GetTpConfirmationFlag()           GetDiagState(kDiagStateIdxTpConfirmationFlag)
#define SetTpConfirmationFlag()           SetDiagState(kDiagStateIdxTpConfirmationFlag)
#define ClrTpConfirmationFlag()           ClrDiagState(kDiagStateIdxTpConfirmationFlag)

#define kDiagStateDiagIndication          kDiagStateMask(kDiagStateIdxDiagIndication)
#define GetDiagIndication()               GetDiagState(kDiagStateIdxDiagIndication)
#define SetDiagIndication()               SetDiagState(kDiagStateIdxDiagIndication)
#define ClrDiagIndication()               ClrDiagState(kDiagStateIdxDiagIndication)

#define kDiagStateSuppressPosRspMsg       kDiagStateMask(kDiagStateIdxSuppressPosRspMsg)
#define GetSuppressPosRspMsg()            GetDiagState(kDiagStateIdxSuppressPosRspMsg)
#define SetSuppressPosRspMsg()            SetDiagState(kDiagStateIdxSuppressPosRspMsg)
#define ClrSuppressPosRspMsg()            ClrDiagState(kDiagStateIdxSuppressPosRspMsg)

#define kDiagStateResponseProcessing      kDiagStateMask(kDiagStateIdxResponseProcessing)
#define SetResponseProcessing()           SetDiagState(kDiagStateIdxResponseProcessing)
#define ClrResponseProcessing()           ClrDiagState(kDiagStateIdxResponseProcessing)

#define kDiagStateRcrRpInProgress         kDiagStateMask(kDiagStateIdxRcrRpInProgress)
#define SetRcrRpInProgress()              SetDiagState(kDiagStateIdxRcrRpInProgress)
#define ClrRcrRpInProgress()              ClrDiagState(kDiagStateIdxRcrRpInProgress)

#define kDiagStateWaitForRcrRpConf        kDiagStateMask(kDiagStateIdxWaitForRcrRpConf)
#define GetWaitForRcrRpConf()             GetDiagState(kDiagStateIdxWaitForRcrRpConf)
#define SetWaitForRcrRpConf()             SetDiagState(kDiagStateIdxWaitForRcrRpConf)
#define ClrWaitForRcrRpConf()             ClrDiagState(kDiagStateIdxWaitForRcrRpConf)

#define kDiagStateMemDriverInitialized    kDiagStateMask(kDiagStateIdxMemDriverInitialized)
#define SetMemDriverInitialized()         SetDiagState(kDiagStateIdxMemDriverInitialized)
#define ClrMemDriverInitialized()         ClrDiagState(kDiagStateIdxMemDriverInitialized)

#define kDiagStateTransferDataAllowed     kDiagStateMask(kDiagStateIdxTransferDataAllowed)
#define GetTransferDataAllowed()          GetDiagState(kDiagStateIdxTransferDataAllowed)
#define SetTransferDataAllowed()          SetDiagState(kDiagStateIdxTransferDataAllowed)
#define ClrTransferDataAllowed()          ClrDiagState(kDiagStateIdxTransferDataAllowed)

#define kDiagStateTransferDataSucceeded   kDiagStateMask(kDiagStateIdxTransferDataSucceeded)
#define GetTransferDataSucceeded()        GetDiagState(kDiagStateIdxTransferDataSucceeded)
#define SetTransferDataSucceeded()        SetDiagState(kDiagStateIdxTransferDataSucceeded)
#define ClrTransferDataSucceeded()        ClrDiagState(kDiagStateIdxTransferDataSucceeded)

#define kDiagStateFirstDownloadReq        kDiagStateMask(kDiagStateIdxFirstDownloadReq)
#define GetFirstDownloadReq()             GetDiagState(kDiagStateIdxFirstDownloadReq)
#define SetFirstDownloadReq()             SetDiagState(kDiagStateIdxFirstDownloadReq)
#define ClrFirstDownloadReq()             ClrDiagState(kDiagStateIdxFirstDownloadReq)

#define kDiagStateEraseMemorySucceeded    kDiagStateMask(kDiagStateIdxEraseMemorySucceeded)
#define GetEraseMemorySucceeded()         GetDiagState(kDiagStateIdxEraseMemorySucceeded)
#define SetEraseMemorySucceeded()         SetDiagState(kDiagStateIdxEraseMemorySucceeded)
#define ClrEraseMemorySucceeded()         ClrDiagState(kDiagStateIdxEraseMemorySucceeded)

#if defined( FBL_DIAG_ENABLE_UPLOAD )
#define kDiagStateTransferDataUpload      kDiagStateMask(kDiagStateIdxTransferDataUpload)
#define GetTransferDataUpload()           GetDiagState(kDiagStateIdxTransferDataUpload)
#define SetTransferDataUpload()           SetDiagState(kDiagStateIdxTransferDataUpload)
#define ClrTransferDataUpload()           ClrDiagState(kDiagStateIdxTransferDataUpload)
#endif /* FBL_DIAG_ENABLE_UPLOAD */


#define kDiagStateResetMsgConfirmed       kDiagStateMask(kDiagStateIdxResetMsgConfirmed)
#define GetResetMsgConfirmed()            GetDiagState(kDiagStateIdxResetMsgConfirmed)
#define SetResetMsgConfirmed()            SetDiagState(kDiagStateIdxResetMsgConfirmed)
#define ClrResetMsgConfirmed()            ClrDiagState(kDiagStateIdxResetMsgConfirmed)

#define kDiagStateEcuResetFctFinished     kDiagStateMask(kDiagStateIdxEcuResetFctFinished)
#define GetEcuResetFctFinished()          GetDiagState(kDiagStateIdxEcuResetFctFinished)
#define SetEcuResetFctFinished()          SetDiagState(kDiagStateIdxEcuResetFctFinished)
#define ClrEcuResetFctFinished()          ClrDiagState(kDiagStateIdxEcuResetFctFinished)

#define kDiagStateWaitEcuReset            kDiagStateMask(kDiagStateIdxWaitEcuReset)
#define SetWaitEcuReset()                 {                                               \
                                             SetDiagState(kDiagStateIdxWaitEcuReset);     \
                                             ResetEcuResetTimeout();                      \
                                          }
#define ClrWaitEcuReset()                 {                                               \
                                             ClrDiagState(kDiagStateWaitEcuReset);        \
                                             ClrDiagState(kDiagStateResetMsgConfirmed);   \
                                             ClrDiagState(kDiagStateEcuResetFctFinished); \
                                             StopEcuResetTimeout();                       \
                                          }

#define kDiagStateDiagBufferLocked        kDiagStateMask(kDiagStateIdxDiagBufferLocked)
#define SetDiagBufferLocked()             SetDiagState(kDiagStateIdxDiagBufferLocked)
#define ClrDiagBufferLocked()             ClrDiagState(kDiagStateIdxDiagBufferLocked)

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# define kDiagStateDiagDevelopmentKey     kDiagStateMask(kDiagStateIdxDiagDevelopmentKey)
# define SetDiagDevelopmentKey()          SetDiagState(kDiagStateIdxDiagDevelopmentKey)
# define ClrDiagDevelopmentKey()          ClrDiagState(kDiagStateIdxDiagDevelopmentKey)
#endif

#define kDiagStateProcessingDone          kDiagStateMask(kDiagStateIdxProcessingDone)
#define GetProcessingDone()               GetDiagState(kDiagStateIdxProcessingDone)
#define SetProcessingDone()               SetDiagState(kDiagStateIdxProcessingDone)
#define ClrProcessingDone()               ClrDiagState(kDiagStateIdxProcessingDone)

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
# define SetDiagSessionType(type)         (currentDiagSessionIndex = FblDiagGetSessionIndex(type))
# define GetDiagSessionType()             (kDiagSessionParameters[currentDiagSessionIndex].sessionType)
# define GetDiagSessionTimingP2()         (kDiagSessionParameters[currentDiagSessionIndex].p2Timing)
# define GetDiagSessionTimingP2Star()     (kDiagSessionParameters[currentDiagSessionIndex].p2StarTiming)
#else
# define SetDiagSessionType(type)         (currentDiagSessionType = (type))
# define GetDiagSessionType()             (currentDiagSessionType)
# define GetDiagSessionTimingP2()         (kDiagSessionTimingP2)
# define GetDiagSessionTimingP2Star()     (kDiagSessionTimingP2Star)
#endif /* FBL_DIAG_ENABLE_SESSION_PARAMETERS */


/* Helper macro to get number of array entries */
#define ARRAY_SIZE(arr)                   (sizeof(arr) / sizeof((arr)[0]))

/*****************************************************************************/
/* Definitions for the state machine *****************************************/
/*****************************************************************************/

#define kDiagRqlUnlimited                 (0xFFFFu)

#define kDiagNoSubServices                (V_MEMROM1 tServiceList V_MEMROM2 V_MEMROM3 *)V_NULL
#define kDiagNoCheckList                  (tServiceCheckList *)V_NULL

#define kDiagNoServiceProp                (ptServiceProp)V_NULL

/* Typedefs and structures for internal use **********************************/

/* State machine */
#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
typedef V_MEMRAM1 struct tagServiceProp V_MEMRAM2 V_MEMRAM3 * ptServiceProp;
#else
typedef V_MEMROM1 struct tagServiceProp V_MEMROM2 V_MEMROM3 * ptServiceProp;
#endif

typedef struct tagServiceCheck
{
   vuint8      checkHandlerIdx;
   vuint8      NRC;
   vuint8      errorHandlerIdx;
} tServiceCheck;

typedef struct
{
   V_MEMROM1 struct tagServiceCheck V_MEMROM2 V_MEMROM3 *   list;
   vuint8                                                   count;
} tServiceCheckList;

typedef struct tagServiceList
{
   ptServiceProp     list;
   tCwDataLengthType bufPos;
   vuint8            idSize;
   vuint8            count;
} tServiceList;

#if defined( FBL_DIAG_STATE_ARRAYS )
# define FBL_DIAG_STATE_SET      0
# define FBL_DIAG_STATE_UNSET    1
# define FBL_DIAG_STATE_ADD      2
# define FBL_DIAG_STATE_CLR      3
# define FBL_DIAG_STATE_CLRFAIL  4

# define stateSet      states[FBL_DIAG_STATE_SET]
# define stateUnset    states[FBL_DIAG_STATE_UNSET]
# define stateAdd      states[FBL_DIAG_STATE_ADD]
# define stateClr      states[FBL_DIAG_STATE_CLR]
# define stateClrFail  states[FBL_DIAG_STATE_CLRFAIL]
#endif

typedef struct tagServiceProp
{
   V_MEMROM1 struct tagServiceList V_MEMROM2 V_MEMROM3 * subServices;
   V_MEMROM1 vuint8 V_MEMROM2 V_MEMROM3 *                serviceId;
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
#else
   V_MEMROM1 tServiceCheckList V_MEMROM2 V_MEMROM3 *     checks;
#endif
   vuint16                                               minLength;
   vuint16                                               maxLength;
#if defined( FBL_DIAG_STATE_ARRAYS ) && \
   ( STATE_COUNT > 0 )
   tStateBitmap                                          states[STATE_COUNT][STATECHECK_ARRAYSIZE];
#else
   tStateBitmap                                          stateSet[STATECHECK_ARRAYSIZE];
   tStateBitmap                                          stateUnset[STATECHECK_ARRAYSIZE];
   tStateBitmap                                          stateAdd[STATECHECK_ARRAYSIZE];
   tStateBitmap                                          stateClr[STATECHECK_ARRAYSIZE];
   tStateBitmap                                          stateClrFail[STATECHECK_ARRAYSIZE];
#endif
   vuint8                                                mainHandlerIdx;
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
   vuint8                                                checkListIdx;
#endif
} tServiceProp;

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
typedef struct
{
# if defined( FBL_DIAG_SERVICE_LIST_HANDLES )
# else
   V_MEMROM1 struct tagServiceList V_MEMROM2 V_MEMROM3 * subServices;
# endif
   V_MEMROM1 vuint8 V_MEMROM2 V_MEMROM3 *                serviceId;
# if defined( FBL_DIAG_CHECK_LIST_HANDLES )
# else
   V_MEMROM1 tServiceCheckList V_MEMROM2 V_MEMROM3 *     checks;
# endif
   vuint16                                               minLength;
   vuint16                                               maxLength;
   vuint8                                                stateUsage;
   vuint8                                                mainHandlerIdx;
# if defined( FBL_DIAG_CHECK_LIST_HANDLES )
   vuint8                                                checkListIdx;
# endif
# if defined( FBL_DIAG_SERVICE_LIST_HANDLES )
   vuint8                                                subServicesHandler;
# endif
} tServicePropROM;
#endif

#define FBL_DIAG_CHECK_HANDLER(name)      tFblResult name( const V_MEMRAM1 tServiceProp V_MEMRAM2 V_MEMRAM3 * properties,  \
                                                           V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer,            \
                                                           tCwDataLengthType length, tCwDataLengthType position,           \
                                                           V_MEMRAM1 ptServiceProp V_MEMRAM2 V_MEMRAM3 * result )
#define FBL_DIAG_ERROR_HANDLER(name)      tFblResult name( const V_MEMRAM1 tServiceProp V_MEMRAM2 V_MEMRAM3 *properties,   \
                                                           V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer,            \
                                                           tCwDataLengthType diagReqDataLen )
#define FBL_DIAG_MAIN_HANDLER(name)       tFblResult name( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer,            \
                                                           tCwDataLengthType diagReqDataLen )

typedef FBL_DIAG_CHECK_HANDLER((*tFblDiagCheckHandler));
typedef FBL_DIAG_ERROR_HANDLER((*tFblDiagErrorHandler));
typedef FBL_DIAG_MAIN_HANDLER((*tFblDiagMainHandler));

/* Check handler */

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
typedef struct
{
   vuint8  sessionType;    /* Diagnostic Session Type */
   vuint16 p2Timing;       /* P2 Timing Value [ms] */
   vuint16 p2StarTiming;   /* P2* Timing Value [ms] / 10 */
} tDiagSessionParameters;
#endif /* FBL_ENABLE_SESSION_PARAMETERS */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* Data buffer for diagnostic data */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * V_MEMRAM1 V_MEMRAM2 DiagBuffer;
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 diagErrorCode;             /* Diagnostic error code */
V_MEMRAM0 V_MEMRAM1 tCwDataLengthType V_MEMRAM2                      DiagDataLength;            /* Stores number of received data */
V_MEMRAM0 V_MEMRAM1_NEAR vuint16 V_MEMRAM2_NEAR                      P2Timeout;                 /* P2 timeout value */
V_MEMRAM0 V_MEMRAM1_NEAR vuint16 V_MEMRAM2_NEAR                      testerPresentTimeout;      /* Timer value for TesterPresent timeout */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 diagResponseFlag;          /* Flag to enable/suppress diagnostic response */
V_MEMRAM0 V_MEMRAM1_NEAR vuint8 V_MEMRAM2_NEAR                       diagServiceCurrent;        /* Currently processed diag service ID */
V_MEMRAM0 V_MEMRAM1_NEAR tStateBitmap V_MEMRAM2_NEAR                 fblStates[STATE_INDEX(kDiagNumberOfStates - 1u) + 1u]; /* State bitmap array */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 diagCurrentSecLvl;         /* Current security level */
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 diagRequestedSecLvlIdx;    /* Table index of currently requested security level */
#endif
#if defined( FBL_ENABLE_SLEEPMODE )
V_MEMRAM0 V_MEMRAM1 vuint32 V_MEMRAM2                                sleepCounter;              /* Counter, determines when to sleep */
#endif

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/* PRQA S 1514 1 */ /* MD_FblDiag_1514 */
V_MEMRAM0 V_MEMRAM1 vuint8             V_MEMRAM2                     tokenBuffer[FBL_DIAG_TOKEN_MAX_SIZE];   /* Buffer for keeping the token */
# endif
#endif

#if defined( FBL_ENABLE_DEBUG_STATUS )
/* Variables for error status reporting */ /* PRQA S 1514 6 */ /* MD_FblDiag_1514 */
V_MEMRAM0 V_MEMRAM1 vuint16 V_MEMRAM2                                errStatErrorCode;          /* Error status                       */
V_MEMRAM0 V_MEMRAM1 vuint16 V_MEMRAM2                                errStatFblStates;          /* FBL state flag                     */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 errStatLastServiceId;      /* Last received service identifier   */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2                                 errStatFlashDrvVersion[3]; /* Flash driver version information   */
V_MEMRAM0 V_MEMRAM1 vuint16 V_MEMRAM2                                errStatFlashDrvErrorCode;  /* Flash driver error code            */
V_MEMRAM0 V_MEMRAM1 tBlockDescriptor V_MEMRAM2                       errStatDescriptor;         /* Error status block descriptor      */
#endif

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )

# define FBLDIAG_START_SEC_CONST
# include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

V_MEMROM0 V_MEMROM1 tDiagSecAccessParams V_MEMROM2 kDiagSecAccessParams[] =
{
   { kDiagSecLevelFlash, kSecSeedLength, kSecKeyLength }
};

# define FBLDIAG_STOP_SEC_CONST
# include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* PRQA S 3218 TAG_FblDiag_3218_1 */ /* MD_FblDiag_3218 */

/* Temporary data used during download in TransferData */
V_MEMRAM0 static V_MEMRAM1 tDiagSegmentList V_MEMRAM2          diagSegmentList;     /* Complete list of download segments */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    currentSegment;      /* Index of currently processed download segment */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    currentBlock;        /* Index of currently processed download block */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    lastErasedBlock;
V_MEMRAM0 static V_MEMRAM1 tBlockHeader V_MEMRAM2              blockHeader[FBL_LBT_BLOCK_COUNT];  /* Structure with runtime information about logical blocks */
V_MEMRAM0 static V_MEMRAM1 tFblDiagAddr V_MEMRAM2              transferAddress;     /* Actual transfer address            */
V_MEMRAM0 static V_MEMRAM1 tFblLength V_MEMRAM2                transferRemainder;   /* Number of remaining transfer bytes */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    transferType;        /* Download into RAM/Flash or upload  */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    expectedSequenceCnt; /* Block sequence counter             */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    currentSequenceCnt;  /* Current Block sequence counter     */
V_MEMRAM0 static V_MEMRAM1_NEAR vuint16 V_MEMRAM2_NEAR         ecuResetTimeout;     /* Timeout for EcuReset request (CW)  */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    dataFormatId;        /* Combined encryption and compression method   */
V_MEMRAM0 static V_MEMRAM1 tFblLength V_MEMRAM2                totalProgramLength;  /* Total number of programmed bytes */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    diagRequestedSecLvl; /* Currently requested security level (via seed)  */
#endif

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
/* Internal index of the active diagnostic session (table kDiagSessionParameters) */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    currentDiagSessionIndex;
#else
/* Type of the active diagnostic session according to the SessionControl sub-function parameter */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2                    currentDiagSessionType;
#endif

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* State check masks */
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskSessions[STATECHECK_ARRAYSIZE]              = STATE_BUILDARRAY(kDiagStateSessionAll);
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskFunctional[STATECHECK_ARRAYSIZE]            = STATE_BUILDARRAY(kDiagStateFunctionalRequest);
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskSecurityAccess[STATECHECK_ARRAYSIZE]        = STATE_BUILDARRAY(kDiagStateSecurityAccess01);
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskSequenceError[STATECHECK_ARRAYSIZE]         = STATE_BUILDARRAY(kDiagStateSecurityKey01 | kDiagStateTransferDataAllowed);
 /* PRQA S 2790, 3494 1 */ /* MD_FblDiag_2790_kDiagStateMaskAllLong, MD_FblDiag_ConstValue */
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskGeneralConditions[STATECHECK_ARRAYSIZE]     = STATE_BUILDARRAY(kDiagStateMaskAllLong);
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2              kDiagStateMaskReset[STATECHECK_ARRAYSIZE]                 = STATE_BUILDARRAY(kDiagStateNone);

#define FBLDIAG_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* Concatenation of service properties */
V_MEMRAM0 static V_MEMRAM1_NEAR tServiceProp V_MEMRAM2_NEAR    serviceProperties;
/* Result of service execution */
V_MEMRAM0 static V_MEMRAM1_NEAR tFblResult V_MEMRAM2_NEAR      serviceResult;

#if defined( FBL_DIAG_ENABLE_UPLOAD )
/* maxNumberOfBlockLength is a 12 bit value that determines the maximum size */
/* of a block of data that can be transferred */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 maxNumberOfBlockLength;
#endif /* FBL_DIAG_ENABLE_UPLOAD */

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
V_MEMROM0 static V_MEMROM1 tDiagSessionParameters V_MEMROM2 kDiagSessionParameters[] =
{
   /* Default Session */
   { kDiagSubDefaultSession, 50, 500 },
   /* Programming Session */
   { kDiagSubProgrammingSession, kDiagSessionTimingP2, kDiagSessionTimingP2Star }
};

V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 kDiagNumberOfSessions = sizeof(kDiagSessionParameters) / sizeof(tDiagSessionParameters);
#endif /* FBL_DIAG_ENABLE_SESSION_PARAMETERS */

#define FBLDIAG_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/* SHA256 + CRC16 */
# define FBL_DIAG_VERIFY_BUFFER_SIZE   (SEC_VERIFY_CLASS_DDD_DIGEST_SIZE + SEC_SIZE_CHECKSUM_CRC)
# define FBL_DIAG_CRC_OFFSET           SEC_VERIFY_CLASS_DDD_CHECKSUM_OFFSET
#else
/* CRC16 */
# define FBL_DIAG_VERIFY_BUFFER_SIZE   (SEC_VERIFY_CLASS_DDD_DIGEST_SIZE)
# define FBL_DIAG_CRC_OFFSET           0u
#endif

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if defined( FBL_MEM_ENABLE_VERIFY_PIPELINED )
/* Parameters for pipelined signature calculation */
V_MEMRAM0 static V_MEMRAM1 SecM_SignatureParamType   V_MEMRAM2 pipeVerifyParam;
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
V_MEMRAM0 static V_MEMRAM1 SecM_SignatureParamType   V_MEMRAM2 pipeVerifyParamCrc;
# endif
/* Used to store hash value and optionally security module context */ /* PRQA S 3678 1 */ /* MD_FblDiag_3678 */
V_MEMRAM0 static V_MEMRAM1 vuint8                    V_MEMRAM2 pipeVerifyBuf[FBL_DIAG_VERIFY_BUFFER_SIZE];
V_MEMRAM0 static V_MEMRAM1 vuint32                   V_MEMRAM2 pipeVerifyLength;
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
V_MEMRAM0 static V_MEMRAM1 SecM_CRCParamType         V_MEMRAM2 pipeVerifyCrc;
V_MEMRAM0 static V_MEMRAM1 vuint32                   V_MEMRAM2 pipeVerifyLengthCrc;
# endif
#endif /* FBL_MEM_ENABLE_VERIFY_PIPELINED */

#if defined( FBL_MEM_ENABLE_VERIFY_OUTPUT )
V_MEMRAM0 static V_MEMRAM1 SecM_VerifyParamType      V_MEMRAM2 verifyParam;
V_MEMRAM0 static V_MEMRAM1 FL_SegmentInfoType        V_MEMRAM2 verifySegmentInfo[1];
#endif /* FBL_MEM_ENABLE_VERIFY_OUTPUT */

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
V_MEMRAM0 static V_MEMRAM1 vuint16                   V_MEMRAM2 verifyTokenSignLength;
#endif

/* Output buffer which keeps the verification result from FblMemBlockVerify (RequestTransferExit, CheckProgDep) */
V_MEMRAM0 static V_MEMRAM1 vuint8                    V_MEMRAM2 verifyOutputBuf[FBL_DIAG_VERIFY_BUFFER_SIZE];

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */


/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

static void FblDiagSegmentInit( void );
static vuint8 FblDiagSegmentNext( tFblDiagAddr segAddr, tFblLength segLength, vuint8 blockIdx );
static tCwDataLengthType FblDiagGetMaxTransferDataBlockLength(void);
static void DiagDiscardReception( void );
static void FblDeinitMemoryDriver( void );
static void FblDiagDeinit( void );

#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_RAMCODE_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
static void DiagResetResponseHandling( void );
#define FBLDIAG_RAMCODE_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

static V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * FblDiagMemGetActiveBuffer(void);

/*-- Service property functions ---------------------------------------------*/
static void FblDiagSetState (const V_MEMRAM1 tStateBitmap V_MEMRAM2 V_MEMRAM3 * state);
static void FblDiagClrState (const V_MEMRAM1 tStateBitmap V_MEMRAM2 V_MEMRAM3 * state);
static void FblDiagRetainState (V_MEMROM1 tStateBitmap V_MEMROM2 V_MEMROM3 * state);
static void FblDiagInitStateTables ( void );
static void FblDiagSetProperties(ptServiceProp source, tServiceProp * destination);
static void FblDiagMergeProperties(ptServiceProp source, tServiceProp * merge);
static void FblDiagDispatch ( void );

static tFblResult FblDiagSecAccessSeed(V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel);
static tFblResult FblDiagSecAccessKey(V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel);

/*-- Service check functions ------------------------------------------------*/
static FBL_DIAG_CHECK_HANDLER(FblDiagSearchService);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSession);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckLength);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckFunctional);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSuppressPosRsp);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecurityAccess);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSequenceError);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckGeneralConditions);
#if defined( FBL_DIAG_ENABLE_UPLOAD )
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckTransferMode);
#endif
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
static FBL_DIAG_CHECK_HANDLER(FblDiagSearchSecService);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecLength);
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecSequenceError);
#endif

/*-- Diagnostic error handler service functions -----------------------------*/
#if defined( FBL_ENABLE_USERSERVICE )
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerServiceNotFound);
#endif
#if defined( FBL_ENABLE_USERSUBFUNCTION )
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerSubFunctionNotFound);
#endif
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerExecMainHandler);

/*-- Diagnostic main handler service functions ------------------------------*/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerDefaultSession);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerProgrammingSession);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTesterPresent);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerEcuReset);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcEraseMemory);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcCheckProgDep);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcActivateSbl);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcCheckValidApp);
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcTokenDownload);
# endif
#endif
#if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcUpdateSecBytes);
#endif
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerSecAccessSeed);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerSecAccessKey);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestDownload);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTransferDataDownload);
#if defined( FBL_DIAG_ENABLE_UPLOAD )
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestUpload);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTransferDataUpload);
#endif
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestTransferExit);
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerReadDataById);
#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerWriteDataById);
#endif
#if defined( FBL_ENABLE_USERROUTINE )
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRoutineControl);
#endif

/*-- Ford specific functions --------------------------------------------*/
static void FblDiagInitDownloadSequence( void );
static tFblResult FblDiagPrepareDidResponse( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *pbDiagBuffer, vuint16 reqDid, tDidDataPtr didData, vuint16 didLen );
static tFblResult FblDiagCheckState( const  V_MEMRAM1 tServiceProp  V_MEMRAM2 V_MEMRAM3 *properties, V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 *pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, V_MEMROM1 tStateBitmap V_MEMROM2 * stateMask, ptServiceProp * result);
static tFblResult FblDiagSessionTransition( V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static void FblDiagSessionControlParamInit( V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
static vuint8 FblDiagGetSessionIndex( vuint8 diagnosticSessionType );
#endif
#if defined( FBL_MEM_ENABLE_VERIFY_OUTPUT )
static SecM_StatusType FblDiagVerification( V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * verifyPar );
#endif
#if defined( FBL_MEM_ENABLE_VERIFY_PIPELINED ) && ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
static SecM_StatusType FblDiagVerifySignature( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );
#endif
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
static tTokenHdlResult FblDiagValidateToken( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf );
static tFblResult FblDiagCheckServerMessageId( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf );
static tTokenHdlResult FblDiagTokenCallout( vuint8 cmdType, const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
# endif
#endif

#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/*****************************************************************************/
/*** State machine configuration *********************************************/
/*****************************************************************************/

/* The handler tables */
enum
{
   kServiceCheckHandlerSearchService
   ,kServiceCheckHandlerCheckSession
   ,kServiceCheckHandlerCheckLength
   ,kServiceCheckHandlerCheckFunctional
   ,kServiceCheckHandlerCheckSuppressPosRsp
   ,kServiceCheckHandlerCheckSecurityAccess
   ,kServiceCheckHandlerCheckSequenceError
   ,kServiceCheckHandlerCheckGeneralConditions
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,kServiceCheckHandlerTransferMode
#endif
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   ,kServiceCheckHandlerSearchSecService
   ,kServiceCheckHandlerCheckSecLength
   ,kServiceCheckHandlerCheckSecSequenceError
#endif
};

#define FBLDIAG_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

V_MEMROM0 static V_MEMROM1 tFblDiagCheckHandler V_MEMROM2 kServiceCheckHandlerFctTable[] =
{
   FblDiagSearchService
   ,FblDiagCheckSession
   ,FblDiagCheckLength
   ,FblDiagCheckFunctional
   ,FblDiagCheckSuppressPosRsp
   ,FblDiagCheckSecurityAccess
   ,FblDiagCheckSequenceError
   ,FblDiagCheckGeneralConditions
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,FblDiagCheckTransferMode
#endif
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   ,FblDiagSearchSecService
   ,FblDiagCheckSecLength
   ,FblDiagCheckSecSequenceError
#endif
};

enum
{
   kServiceErrorHandlerExecMainHandler
#if defined( FBL_ENABLE_USERSERVICE )
   ,kServiceErrorHandlerServiceNotFound
#endif
#if defined( FBL_ENABLE_USERSUBFUNCTION )
   ,kServiceErrorHandlerSubFunctionNotFound
#endif
   /*----------------------*/
   ,kServiceErrorHandlerNone
};

V_MEMROM0 static V_MEMROM1 tFblDiagErrorHandler V_MEMROM2 kServiceErrorHandlerFctTable[] =
{
   FblDiagErrorHandlerExecMainHandler
#if defined( FBL_ENABLE_USERSERVICE )
   ,FblDiagErrorHandlerServiceNotFound
#endif
#if defined( FBL_ENABLE_USERSUBFUNCTION )
   ,FblDiagErrorHandlerSubFunctionNotFound
#endif
};

enum
{
    kServiceMainHandlerDefaultSession
   ,kServiceMainHandlerProgrammingSession
   ,kServiceMainHandlerTesterPresent
   ,kServiceMainHandlerEcuReset
   ,kServiceMainHandlerRcEraseMemory
   ,kServiceMainHandlerRcCheckProgDep
   ,kServiceMainHandlerRcActivateSbl
   ,kServiceMainHandlerRcCheckValidApp
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
   ,kServiceMainHandlerRcTokenDownload
# endif
#endif
#if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
   ,kServiceMainHandlerRcUpdateSecBytes
#endif
   ,kServiceMainHandlerSecAccessSeed
   ,kServiceMainHandlerSecAccessKey
   ,kServiceMainHandlerRequestDownload
   ,kServiceMainHandlerTransferDataDownload
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,kServiceMainHandlerRequestUpload
   ,kServiceMainHandlerTransferDataUpload
#endif
   ,kServiceMainHandlerRequestTransferExit
   ,kServiceMainHandlerReadDataById
#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
   ,kServiceMainHandlerWriteDataById
#endif
#if defined( FBL_ENABLE_USERROUTINE )
   ,kServiceMainHandlerRoutineControl
#endif
   /*----------------------*/
   ,kServiceMainHandlerNone
};

V_MEMROM0 static V_MEMROM1 tFblDiagMainHandler V_MEMROM2 kServiceMainHandlerFctTable[] = {
   FblDiagMainHandlerDefaultSession
   ,FblDiagMainHandlerProgrammingSession
   ,FblDiagMainHandlerTesterPresent
   ,FblDiagMainHandlerEcuReset
   ,FblDiagMainHandlerRcEraseMemory
   ,FblDiagMainHandlerRcCheckProgDep
   ,FblDiagMainHandlerRcActivateSbl
   ,FblDiagMainHandlerRcCheckValidApp
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
   ,FblDiagMainHandlerRcTokenDownload
# endif
#endif
#if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
   ,FblDiagMainHandlerRcUpdateSecBytes
#endif
   ,FblDiagMainHandlerSecAccessSeed
   ,FblDiagMainHandlerSecAccessKey
   ,FblDiagMainHandlerRequestDownload
   ,FblDiagMainHandlerTransferDataDownload
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,FblDiagMainHandlerRequestUpload
   ,FblDiagMainHandlerTransferDataUpload
#endif
   ,FblDiagMainHandlerRequestTransferExit
   ,FblDiagMainHandlerReadDataById
#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
   ,FblDiagMainHandlerWriteDataById
#endif
#if defined( FBL_ENABLE_USERROUTINE )
   ,FblDiagMainHandlerRoutineControl
#endif
};



/*****************************************************************************/
/* Service checks */
V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagServiceChecks[] =
{
   {
      kServiceCheckHandlerSearchService
      ,kDiagNrcServiceNotSupported
# if defined( FBL_ENABLE_USERSERVICE )
      ,kServiceErrorHandlerServiceNotFound
# else
      ,kServiceErrorHandlerNone
# endif
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,kDiagNrcServiceNotSupportedInActiveSession
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,kDiagNrcIncorrectMessageLengthOrInvalidFormat
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,kDiagNrcSecurityAccessDenied
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,kDiagNrcRequestSequenceError
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagServiceCheckTable =
{
   kDiagServiceChecks
   ,(sizeof(kDiagServiceChecks)/sizeof(kDiagServiceChecks[0]))
};

/*****************************************************************************/

V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagSubFctChecks[] =
{
   /* No real check, but only needs to be set once here */
   {
      kServiceCheckHandlerCheckSuppressPosRsp
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerSearchService
      ,kDiagNrcSubFunctionNotSupported
# if defined( FBL_ENABLE_USERSUBFUNCTION )
      ,kServiceErrorHandlerSubFunctionNotFound
# else
      ,kServiceErrorHandlerNone
# endif
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,kDiagNrcSubfunctionNotSupportedInActiveSession
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,kDiagNrcIncorrectMessageLengthOrInvalidFormat
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,kDiagNrcSecurityAccessDenied
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,kDiagNrcRequestSequenceError
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagSubFctCheckTable =
{
   kDiagSubFctChecks
   ,(sizeof(kDiagSubFctChecks)/sizeof(kDiagSubFctChecks[0]))
};

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
/*****************************************************************************/
V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagSubFctSecChecks[] =
{
   /* No real check, but only needs to be set once here */
   {
      kServiceCheckHandlerCheckSuppressPosRsp
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerSearchSecService
      ,kDiagNrcSubFunctionNotSupported
# if defined( FBL_ENABLE_USERSUBFUNCTION )
      ,kServiceErrorHandlerSubFunctionNotFound
# else
      ,kServiceErrorHandlerNone
# endif
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,kDiagNrcSubfunctionNotSupportedInActiveSession
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecLength
      ,kDiagNrcIncorrectMessageLengthOrInvalidFormat
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecSequenceError
      ,kDiagNrcRequestSequenceError
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagSubFctSecCheckTable =
{
   kDiagSubFctSecChecks
   ,(sizeof(kDiagSubFctSecChecks)/sizeof(kDiagSubFctSecChecks[0]))
};
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

/*****************************************************************************/

V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagRcTypeChecks[] =
{
   /* No real check, but only needs to be set once here */
   {
      kServiceCheckHandlerCheckSuppressPosRsp
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerSearchService
      ,kDiagNrcSubFunctionNotSupported
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,kDiagNrcSubfunctionNotSupportedInActiveSession
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,kDiagNrcIncorrectMessageLengthOrInvalidFormat
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,kDiagNrcSecurityAccessDenied
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,kDiagNrcRequestSequenceError
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagRcTypeCheckTable =
{
   kDiagRcTypeChecks
   ,(sizeof(kDiagRcTypeChecks)/sizeof(kDiagRcTypeChecks[0]))
};

/*****************************************************************************/

V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagNonSubFctChecks[] =
{
   {
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagNonSubFctCheckTable =
{
   kDiagNonSubFctChecks
   ,(sizeof(kDiagNonSubFctChecks)/sizeof(kDiagNonSubFctChecks[0]))
};

/*****************************************************************************/

V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagSubRoutineChecks[] =
{
   {
      kServiceCheckHandlerSearchService
      ,kDiagNrcRequestOutOfRange
      ,kServiceErrorHandlerExecMainHandler
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,kDiagNrcNoResponse
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,kDiagNrcRequestOutOfRange
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,kDiagNrcSecurityAccessDenied
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagSubRoutineCheckTable =
{
   kDiagSubRoutineChecks
   ,(sizeof(kDiagSubRoutineChecks)/sizeof(kDiagSubRoutineChecks[0]))
};

#if defined( FBL_DIAG_ENABLE_UPLOAD )
/*****************************************************************************/
/* TransferData checks */
V_MEMROM0 static V_MEMROM1 tServiceCheck V_MEMROM2 kDiagTransferDataChecks[] =
{
   {
      kServiceCheckHandlerTransferMode
      ,kDiagErrorNone
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,kDiagNrcIncorrectMessageLengthOrInvalidFormat
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,kDiagNrcSecurityAccessDenied
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,kDiagNrcConditionsNotCorrect
      ,kServiceErrorHandlerNone
   }

};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 kDiagTransferDataCheckTable =
{
   kDiagTransferDataChecks
   ,(sizeof(kDiagTransferDataChecks)/sizeof(kDiagTransferDataChecks[0]))
};
#endif /* FBL_DIAG_ENABLE_UPLOAD */

/*****************************************************************************/

#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
/* The check list tables */
enum
{
   kServiceCheckListServiceCheck
   ,kServiceCheckListSubFctCheck
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   ,kServiceCheckListSubFctSecCheck
#endif
   ,kServiceCheckListNonSubFctCheck
   ,kServiceCheckListSubRoutineCheck
   ,kServiceCheckListRcTypeCheck
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,kServiceCheckListTransferDataCheck
#endif
   /*----------------------*/
   ,kServiceCheckListNone
};

V_MEMROM0 static V_MEMROM1 tServiceCheckList V_MEMROM2 V_MEMROM3 * V_MEMROM1 V_MEMROM2 kServiceCheckListTable[] =
{
   &kDiagServiceCheckTable
   ,&kDiagSubFctCheckTable
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   ,&kDiagSubFctSecCheckTable
#endif
   ,&kDiagNonSubFctCheckTable
   ,&kDiagSubRoutineCheckTable
   ,&kDiagRcTypeCheckTable
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,&kDiagTransferDataCheckTable
#endif
};
#endif

/* Service handlers **********************************************************/
/* PRQA S 0342 TAG_FblDiag_0342_1 */ /* MD_MSR_Rule20.10_0342 */
/* PRQA S 0841 TAG_FblDiag_0841_1 */ /* MD_MSR_Undef */
enum
{
#define FBL_DIAG_STATE_DEF(name, parent, firstChild, lastChild, bufPos, id, handler, checks, set, unset, add, clear, clearFail, rqlMin, rqlMax) kDiagService ## name
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_OUTPUT
#define FBL_DIAG_IMPL_OUTPUT  FBL_DIAG_STATE_RESULT,

#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */

#undef FBL_DIAG_STATE_DEF
#undef FBL_DIAG_IMPL_TYPE
#undef FBL_DIAG_IMPL_OUTPUT

   kDiagNumberOfServices
};

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
/* State Bitmaps ************************************************************/
V_MEMROM0 static V_MEMROM1 tStateBitmap V_MEMROM2 kDiagStateBitmaps[] =
{
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_STATEBITMAP
#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */
#undef FBL_DIAG_IMPL_TYPE
};

#endif
/* Service IDs ***************************************************************/

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
V_MEMRAM0 static V_MEMRAM1 tServiceProp V_MEMRAM2     kDiagServiceProperties[kDiagNumberOfServices];
#else
V_MEMROM0 static V_MEMROM1 tServiceProp V_MEMROM2     kDiagServiceProperties[kDiagNumberOfServices];
#endif

/* Service IDs ***************************************************************/
#define FBL_DIAG_STATE_DEF(name, parent, firstChild, lastChild, bufPos, id, handler, checks, set, unset, add, clear, clearFail, rqlMin, rqlMax) \
   V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 kDiagSrvId_ ## name [] = { id }
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_OUTPUT
#define FBL_DIAG_IMPL_OUTPUT  FBL_DIAG_STATE_RESULT;

#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */

#undef FBL_DIAG_STATE_DEF
#undef FBL_DIAG_IMPL_TYPE
#undef FBL_DIAG_IMPL_OUTPUT

/* Service Lists *************************************************************/

#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_SERVICELIST
#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */
#undef FBL_DIAG_IMPL_TYPE

#if defined( FBL_DIAG_SERVICE_LIST_HANDLES )
enum
{
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_SERVICELIST_ENUM
#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */
#undef FBL_DIAG_IMPL_TYPE
  kDiagServiceListHandler_None
};

V_MEMROM0 static V_MEMROM1 tServiceList V_MEMROM2 V_MEMROM3 * V_MEMROM1 V_MEMROM2 kDiagSubFctTblHandler[] =
{
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_SERVICELIST_HANDLER
#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */
#undef FBL_DIAG_IMPL_TYPE
   kDiagNoSubServices
};
#endif

/* Service Properties ********************************************************/

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
V_MEMROM0 static V_MEMROM1 tServicePropROM V_MEMROM2  kDiagServicePropertiesROM[] =
#else
V_MEMROM0 static V_MEMROM1 tServiceProp V_MEMROM2     kDiagServiceProperties[] =
#endif
{
#define FBL_DIAG_IMPL_TYPE    FBL_DIAG_IMPL_TYPE_SERVICEPROPERTY
#include "fbl_diag.def" /* PRQA S 5087 */ /* MD_FblDiag_5087_DiagDef */
#undef FBL_DIAG_IMPL_TYPE
};
/* PRQA L:TAG_FblDiag_0342_1 */
/* PRQA L:TAG_FblDiag_0881_1 */
/* PRQA L:TAG_FblDiag_0841_1 */
/* PRQA L:TAG_FblDiag_3410_1 */
/* PRQA L:TAG_FblDiag_3412_1 */
/* PRQA L:TAG_FblDiag_3431_1 */
/* PRQA L:TAG_FblDiag_3453_2 */
/* PRQA L:TAG_FblDiag_3218_1 */

#define FBLDIAG_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *   GLOBAL FUNCTIONS
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if defined( FBL_ENABLE_USERSERVICE )
/***********************************************************************************************************************
 *  FblDiagErrorHandlerServiceNotFound
 **********************************************************************************************************************/
/*! \brief       Execute callback for user specific service implementations
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   diagReqDataLen Request length
 *  \return      User service found
 **********************************************************************************************************************/
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerServiceNotFound)
{
   tFblResult result;
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)properties;
#endif

   ApplDiagUserService(&pbDiagBuffer[kDiagFmtRoutineIdHigh], diagReqDataLen);

   result = kFblFailed;
   if (DiagGetError() == kDiagErrorNone)
   {
      result = kFblOk;
   }

   return result;
}
#endif /* FBL_ENABLE_USERSERVICE */

#if defined( FBL_ENABLE_USERSUBFUNCTION )
/***********************************************************************************************************************
 *  FblDiagErrorHandlerSubFunctionNotFound
 **********************************************************************************************************************/
/*! \brief       Execute callback for user specific subfunction implementations
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   diagReqDataLen Request length
 *  \return      User subfunction found
 **********************************************************************************************************************/
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerSubFunctionNotFound)
{
   tFblResult result;
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)properties;
#endif

   ApplDiagUserSubFunction(&pbDiagBuffer[kDiagFmtRoutineIdHigh], diagReqDataLen);

   result = kFblFailed;
   if (DiagGetError() == kDiagErrorNone)
   {
      result = kFblOk;
   }

   return result;
}
#endif /* FBL_ENABLE_USERSUBFUNCTION */

/***********************************************************************************************************************
 *  FblDiagErrorHandlerExecMainHandler
 **********************************************************************************************************************/
/*! \brief       Execute main handler of parent service
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   diagReqDataLen Request length
 *  \return      Main handler execution result
 **********************************************************************************************************************/
static FBL_DIAG_ERROR_HANDLER(FblDiagErrorHandlerExecMainHandler)
{
   tFblResult result;

   result = kFblFailed;
   if (properties->mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
   {
      result = (kServiceMainHandlerFctTable[properties->mainHandlerIdx])(pbDiagBuffer, diagReqDataLen);
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagSearchService
 **********************************************************************************************************************/
/*! \brief       Search the subservice table using the id at the current request position
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Search successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Search failed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_CHECK_HANDLER(FblDiagSearchService)
{
   V_MEMROM1 tServiceList V_MEMROM2 V_MEMROM3 * localSubServices;
   ptServiceProp subSrvLst = V_NULL; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */
   ptServiceProp subService = V_NULL; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */

   vuint8      curPos;
   vuint8      subSrvIdx;
   tFblResult  valid;
   tFblResult  found;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)length;
#endif

   localSubServices = properties->subServices;
   subSrvLst = localSubServices->list;

   found = kFblFailed;
   for (subSrvIdx = 0; subSrvIdx < localSubServices->count; subSrvIdx++)
   {
      subService = &subSrvLst[subSrvIdx];

      valid = kFblOk;
      for (curPos = 0; curPos < localSubServices->idSize; curPos++)
      {
         if (subService->serviceId[curPos] != pbDiagBuffer[position + curPos])
         {
            valid = kFblFailed;
            /* Code size optimization, single break in loop allowed by MISRA */
            break;
         }
      }

      if (valid == kFblOk)
      {
         found = kFblOk;
         *result = subService;
         /* Code size optimization, single break in loop allowed by MISRA */
         break;
      }
   }

   return found;
}

/***********************************************************************************************************************
 *  FblDiagCheckState
 **********************************************************************************************************************/
/*! \brief       Check if the masked state matches the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in]   stateMask State mask
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
/* PRQA S 3673, 6060 1 */ /* MD_MSR_Rule8.13, MD_MSR_STPAR */
static tFblResult FblDiagCheckState( const  V_MEMRAM1 tServiceProp  V_MEMRAM2 V_MEMRAM3 *properties, V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 *pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, V_MEMROM1 tStateBitmap V_MEMROM2 * stateMask, ptServiceProp * result)
{
   vuint8 idx, valid;
   tStateBitmap maskedState;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 4 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)length;
   (void)position;
   (void)result;
#endif
   valid = kFblOk;

#if ( STATECHECK_ARRAYSIZE == 1u )
   idx = 0u;
#else
   for (idx = 0u; (idx < STATECHECK_ARRAYSIZE) && (valid == kFblOk); idx++)
#endif
   {
      /* Separate the state bits which have to be set */
      maskedState = properties->stateSet[idx] & stateMask[idx];

      /* Check if all of the required "Set" states are set */
      if ((maskedState != kDiagStateMaskNone) && ((maskedState & fblStates[idx]) != maskedState))
      {
         /* At least one of the required states is not set */
         valid = kFblFailed;
      }
      else
      {
         /* Separate the state bits which must not be set */
         maskedState = properties->stateUnset[idx] & stateMask[idx];

         /* Check if all of the required "Unset" states are cleared */
         if ((maskedState != kDiagStateMaskNone) && ((maskedState & fblStates[idx]) != kDiagStateMaskNone))
         {
            /* At least one of the required states is set */
            valid = kFblFailed;
         }
      }
   }

   /*
       Positive check result:
       - All of the required "Set" states are set
       - All of the required "Unset" states are cleared
    */
   return valid;
}

/***********************************************************************************************************************
 *  FblDiagCheckSession
 **********************************************************************************************************************/
/*! \brief       Check if the session states match the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSession)
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSessions, result);
}

/***********************************************************************************************************************
 *  FblDiagCheckFunctional
 **********************************************************************************************************************/
/*! \brief       Check if the functional request state matches the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckFunctional)
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskFunctional, result);
}

/***********************************************************************************************************************
 *  FblDiagCheckSecurityAccess
 **********************************************************************************************************************/
/*! \brief       Check if the security access states match the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecurityAccess)
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSecurityAccess, result);
}

/***********************************************************************************************************************
 *  FblDiagCheckSequenceError
 **********************************************************************************************************************/
/*! \brief       Check if the states leading to request sequence errors match the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSequenceError)
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSequenceError, result);
}

/***********************************************************************************************************************
 *  FblDiagCheckGeneralConditions
 **********************************************************************************************************************/
/*! \brief       Check if all possible session states match the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckGeneralConditions)
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskGeneralConditions, result);
}

/***********************************************************************************************************************
 *  FblDiagCheckLength
 **********************************************************************************************************************/
/*! \brief       Check if the request length matches the service requirements
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckLength)
{
   vuint8 valid;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 3 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)position;
   (void)result;
#endif
   valid = kFblOk;

   if ((properties->minLength > 0u) && (length < properties->minLength))
   {
      valid = kFblFailed;
   }

   if (length > properties->maxLength)
   {
      valid = kFblFailed;
   }

   return valid;
}

/***********************************************************************************************************************
 *  FblDiagCheckSuppressPosRsp
 **********************************************************************************************************************/
/*! \brief       Evaluate the suppress positive response message bit for subfunction requests
 *  \details     No real check, but should only be executed for services with subfunctions
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSuppressPosRsp)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 3 */ /* MD_MSR_DummyStmt */
   (void)properties;
   (void)length;
   (void)result;
#endif

   CheckSuppressPosRspMsgIndication(&pbDiagBuffer[position]);

   return kFblOk;
}

#if defined( FBL_DIAG_ENABLE_UPLOAD )
/***********************************************************************************************************************
 *  FblDiagCheckTransferMode
 **********************************************************************************************************************/
/*! \brief       Evaluate the requested transfer mode. This check is used to switch between download and upload transfers.
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckTransferMode)
{
   V_MEMROM1 tServiceList V_MEMROM2 * localSubServices;
   ptServiceProp subSrvLst = V_NULL; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */
   ptServiceProp subService = V_NULL; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */
   vuint8 subSrvIdx;
   vuint8 found;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 3 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)length;
   (void)position;
#endif

   localSubServices = properties->subServices;
   subSrvLst = localSubServices->list;

   found = kFblFailed;
   for (subSrvIdx = 0; (subSrvIdx < localSubServices->count) && (found != kFblOk); subSrvIdx++)
   {
      subService = &subSrvLst[subSrvIdx];
      if (STATE_TEST(subService->stateSet, kDiagStateIdxTransferDataUpload) == GetTransferDataUpload())
      {
         found = kFblOk;
      }
   }

   if (found == kFblOk)
   {
      *result = subService;
   }

   return found;
}
#endif /* FBL_DIAG_ENABLE_UPLOAD */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
/***********************************************************************************************************************
 *  FblDiagSearchSecService
 **********************************************************************************************************************/
/*! \brief       Search the sub service table using the id at the current request position. Special use case for security access
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Search successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Search failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagSearchSecService)
{
   V_MEMROM1 tServiceList V_MEMROM2 * localSubServices;
   ptServiceProp subSrvLst; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */
   ptServiceProp subService; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */

   vuint8 subSrvIdx;
   vuint8 found;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)length;
#endif

   localSubServices = properties->subServices;
   subSrvLst = localSubServices->list;
   subService = kDiagNoServiceProp;
   diagRequestedSecLvlIdx = kDiagInvalidSecLvlIdx;

   found = kFblFailed;

   /* Check if level is supported */
   for (subSrvIdx = 0; subSrvIdx < (sizeof(kDiagSecAccessParams)/sizeof(kDiagSecAccessParams[0])); subSrvIdx++)
   {
      if (kDiagSecAccessParams[subSrvIdx].secLevel == pbDiagBuffer[position] )
      {
         /* Level supported - Seed request */
         subService = &subSrvLst[0];
         found = kFblOk;
         break;
      }
      if (kDiagSecAccessParams[subSrvIdx].secLevel == (pbDiagBuffer[position] - 1u))
      {
         /* Level supported - Key request */
         subService = &subSrvLst[1];
         found = kFblOk;
         break;
      }
   }

   if (found == kFblOk)
   {
      /* Cache index of identified table entry for later usage */
      diagRequestedSecLvlIdx = subSrvIdx;

      *result = subService;
   }

   return found;
}

/***********************************************************************************************************************
 *  FblDiagCheckSecLength
 **********************************************************************************************************************/
/*! \brief       Check if the request length matches the service requirements
 *  \details     Special version for security access.
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecLength)
{
   vuint8 valid;

   assertFblInternal(diagRequestedSecLvlIdx != kDiagInvalidSecLvlIdx, kFblOemAssertInvalidSecLvlIdx);

   valid = kFblFailed;

   if (kDiagSecAccessParams[diagRequestedSecLvlIdx].secLevel == pbDiagBuffer[position])
   {
      /* Seed request -> use standard check
       * This works because pbDiagBuffer is not evaluated any more */
      valid = FblDiagCheckLength(properties, pbDiagBuffer, length, position, result);
   }
   if (kDiagSecAccessParams[diagRequestedSecLvlIdx].secLevel == (pbDiagBuffer[position] - 1u))
   {
      /* Key request */
      if ((kDiagSecAccessParams[diagRequestedSecLvlIdx].keyLength + 1u) == length)
      {
         valid = kFblOk;
      }
   }

   return valid;
}

/***********************************************************************************************************************
 *  FblDiagCheckSecSequenceError
 **********************************************************************************************************************/
/*! \brief       Check if the states leading to request sequence errors match the service requirements for security access
 *  \param[in]   properties Dispatching properties
 *  \param[in]   pbDiagBuffer Diagnostic buffer
 *  \param[in]   length Request length
 *  \param[in]   position Current request position
 *  \param[in,out]   result Resulting properties
 *  \return      Possible return values:
 *               - kFblOk: Check successful. If applicable, changed properties are returned via parameter 'result'
 *               - kFblFailed: Check failed
 **********************************************************************************************************************/
static FBL_DIAG_CHECK_HANDLER(FblDiagCheckSecSequenceError)
{
   vuint8 tmpSecLvl;
   tFblResult valid;

   assertFblInternal(diagRequestedSecLvlIdx != kDiagInvalidSecLvlIdx, kFblOemAssertInvalidSecLvlIdx);

   valid = kFblOk;

   if ((pbDiagBuffer[position] & 0x01u) == 0x01u)
   {
      /* Seed request: sub service equals security level */
      tmpSecLvl = pbDiagBuffer[position];
      if ((kDiagSecLevelNone != GetCurrentSecLvl()) && (tmpSecLvl != GetCurrentSecLvl()))
      {
         valid = kFblFailed;
      }
   }
   else
   {
      /* Key request: (sub service - 1) equals security level */
      tmpSecLvl = pbDiagBuffer[position] - 1;
      if (diagRequestedSecLvl != tmpSecLvl)
      {
         valid = kFblFailed;
      }
   }

   if ((kFblOk == valid ) && (kFblOk == ApplFblGetSecLvlSupport(tmpSecLvl)))
   {
      valid = FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSequenceError, result);
   }
   else
   {
      valid = kFblFailed;
   }

   return valid;
}

#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

/***********************************************************************************************************************
 *  FblDiagSetState
 **********************************************************************************************************************/
/*! \brief       Set states according to mask
 *  \param[in]   state State mask
 **********************************************************************************************************************/
static void FblDiagSetState (const V_MEMRAM1 tStateBitmap V_MEMRAM2 V_MEMRAM3 * state)
{
   vuint8 idx;

#if ( STATECHECK_ARRAYSIZE == 1u)
   idx = 0u;
#else
   for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
#endif
   {
      fblStates[idx] |= state[idx];
   }
}

/***********************************************************************************************************************
 *  FblDiagClrState
 **********************************************************************************************************************/
/*! \brief       Clear states according to mask
 *  \param[in]   state State mask
 **********************************************************************************************************************/
static void FblDiagClrState (const V_MEMRAM1 tStateBitmap V_MEMRAM2 V_MEMRAM3 * state)
{
   vuint8 idx;

#if ( STATECHECK_ARRAYSIZE == 1u)
   idx = 0u;
#else
   for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
#endif
   {
      fblStates[idx] &= FblInvertBits(state[idx], tStateBitmap);
   }
}

/***********************************************************************************************************************
 *  FblDiagRetainState
 **********************************************************************************************************************/
/*! \brief       Retain the value of all masked states, clear all others including the internal states
 *  \param[in]   state State mask
 **********************************************************************************************************************/
static void FblDiagRetainState (V_MEMROM1 tStateBitmap V_MEMROM2 V_MEMROM3 * state)
{
   vuint8 idx;

   /* Retain values of masked dispatcher states */
#if ( STATECHECK_ARRAYSIZE == 1u)
   idx = 0u;
#else
   for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
#endif
   {
      fblStates[idx] &= state[idx];
   }

   /* Clear all additional internal flags */
   for ( ; idx < ARRAY_SIZE(fblStates); idx++)
   {
      fblStates[idx] = 0;
   }
}

#if defined( FBL_DIAG_ENABLE_SESSION_PARAMETERS )
/***********************************************************************************************************************
 *  FblDiagGetSessionIndex
 **********************************************************************************************************************/
/*! \brief       Search the diagnostic session table for the requested session type and return the internal session index
 *  \param[in]   diagnosticSessionType SessionControl parameter
 *  \return      Session index
 **********************************************************************************************************************/
static vuint8 FblDiagGetSessionIndex(vuint8 diagnosticSessionType)
{
   vuint8 sessionIdx;

   for (sessionIdx = 0u; sessionIdx < kDiagNumberOfSessions; sessionIdx++)
   {
      if (kDiagSessionParameters[sessionIdx].sessionType == diagnosticSessionType)
      {
         /* Found valid session */
         break;
      }
   }

   if (sessionIdx == kDiagNumberOfSessions)
   {
      /*
       * Config error: this error can only appear if the dispatcher knows more
       * diagnostic session types than the session parameter table.
       */
      assertFblInternal(0u, kFblOemAssertSessionIndexNotFound); /* PRQA S 2214 */ /* MD_FblDiag_2214 */
      sessionIdx = kDiagSessionNotFound;
   }

   return sessionIdx;
}
#endif /* FBL_DIAG_ENABLE_SESSION_PARAMETERS */

#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* Diagnostic standard functions  ********************************************/

#define FBLDIAG_RAMCODE_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  DiagResetResponseHandling
 **********************************************************************************************************************/
/*! \brief       Reset the status for service handling
 *  \pre         Service response shall be finished
 **********************************************************************************************************************/
static void DiagResetResponseHandling( void )
{
   DiagClrError();

   /* Restart the tester present timer if not in default session */
   if (!GetDiagDefaultDiagSession())
   {
      ResetTesterTimeout();
   }

   /* Buffer is now available */
   ClrDiagBufferLocked();

   /* Reset flag for functional request after processing */
   ClrFunctionalRequest();

}

/***********************************************************************************************************************
 *  DiagExRCRResponsePending
 **********************************************************************************************************************/
/*! \brief       Transmit a busy message if timer expires
 *               (forceSend == kNotForceSendResponsePending) or if kForceSendResponsePending is passed.
 *  \param[in]   forceSend Determines if a message is sent independently from timer state.
 **********************************************************************************************************************/
void DiagExRCRResponsePending( vuint8 forceSend )
{
   static vuint8 rcrrpDiagBuffer[3];

   if (GetServiceInProgress())
   {
      if (((GetP2Timeout() > 0x00u) && (GetP2Timer() < (GetP2Timeout()))) || (forceSend == kForceSendResponsePending))
      {
         /* Prepare and transmit RCRRP buffer */
         rcrrpDiagBuffer[0] = kDiagRidNegativeResponse;
         rcrrpDiagBuffer[1] = diagServiceCurrent;
         rcrrpDiagBuffer[2] = kDiagNrcRcrResponsePending;
         FblCwTransmitRP(rcrrpDiagBuffer);

         /* Restart P2-Timer to P2* */
         SetP2Timer(kFblDiagTimeP2Star);
         SetP2Timeout(kFblDiagTimeP2Star); /* PRQA S 3493 */ /* MD_FblDiag_3493 */

         /* If response pending is transmitted and no response
          * is set, a positive response has to be transmitted anyway. */
         ClrSuppressPosRspMsg();

         /* Prepare parameter for the confirmation function */
         SetRcrRpInProgress();
      }
   }
}
#define FBLDIAG_RAMCODE_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  FblDiagMemGetActiveBuffer
 **********************************************************************************************************************/
/*! \brief       Function updates Diagnostic buffer (DiagBuffer) and returns updated pbDiagData to handler
 *  \return      updated pbDiagData buffer used by diagnostic handler functions *
 **********************************************************************************************************************/
static V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * FblDiagMemGetActiveBuffer(void)
{
   DiagBuffer = FblMemGetActiveBuffer();
   return DiagBuffer;
}

/***********************************************************************************************************************
 *  DiagDiscardReception
 **********************************************************************************************************************/
/*! \brief       Received diagnostic messages are discarded
 **********************************************************************************************************************/
static void DiagDiscardReception( void )
{
   SetResponseProcessing();   /* Set flag for running response procedure */

   FblCwDiscardReception();

   ClrResponseProcessing();
}

/***********************************************************************************************************************
 *  DiagResponseProcessor
 **********************************************************************************************************************/
/*! \brief       Send diagnostic response message
 *  \pre         List of preconditions:
 *               - Current SID must be in DiagBuffer[0]
 *               - diagErrorCode must be initialized
 *  \param[in]   dataLength Data length to be transmitted.
 **********************************************************************************************************************/
void DiagResponseProcessor( tCwDataLengthType dataLength )
{
   ClrServiceInProgress();
   ClrRcrRpInProgress();
   ClrP2Timer();
   ClrP2Timeout();
   DiagDiscardReception();
   FblErrStatSetSId(diagServiceCurrent);

   if (DiagGetError() != kDiagErrorNone)
   {
      if (GetFunctionalRequest()
           && ((DiagGetError() == kDiagNrcServiceNotSupported)
           ||  (DiagGetError() == kDiagNrcServiceNotSupportedInActiveSession)
           ||  (DiagGetError() == kDiagNrcSubFunctionNotSupported)
           ||  (DiagGetError() == kDiagNrcSubfunctionNotSupportedInActiveSession)
           ||  (DiagGetError() == kDiagNrcRequestOutOfRange)
         ))
      {
         /*
            No response for functionally addressed requests if
            service or subfunction not supported.
         */
         DiagResetResponseHandling();
         FblCwResetRxBlock();
      }
      else
      {
         /* Prepare response message */
         DiagBuffer[kDiagFmtSubparam]     = diagServiceCurrent;
         DiagBuffer[kDiagFmtServiceId]    = kDiagRidNegativeResponse;
         DiagBuffer[kDiagFmtNegResponse]  = DiagGetError();

         /* Send response in communication wrapper */
         FblCwTransmit(DiagBuffer, 3, kFblCwTxCallNegResponse );
      }
      /* Clear 'pending' error */
      DiagClrError();
   }
   else if (diagResponseFlag == kDiagPutResponse)
   {
      if (!GetSuppressPosRspMsg())
      {
         /* Transmit positive response if not suppressed */
         DiagBuffer[kDiagFmtServiceId] = (vuint8)(diagServiceCurrent + 0x40u);

         /* Send response in communication wrapper */
         FblCwTransmit(DiagBuffer, (tCwDataLengthType)(dataLength + 1u), kFblCwTxCallPosResponse);
      }
      else
      {
         DiagResetResponseHandling();
         FblCwResetRxBlock();
         ClrSuppressPosRspMsg();

         /* Check if a reset shall be generated without message transmission */
         if (GetWaitEcuReset())
         {
            /* If so, generate the reset immediately */
            SetResetMsgConfirmed();
         }
      }
   }
   else
   {
      /* Do not send a response, just reset internal state */
      DiagResetResponseHandling();
      FblCwResetRxBlock();
      ClrSuppressPosRspMsg();

      /* Check if a reset shall be generated without message transmission */
      if (GetWaitEcuReset())
      {
         /* If so, generate the reset immediately */
         SetResetMsgConfirmed();
      }
   }

   /* Response processing executed */
   SetProcessingDone();
}

/***********************************************************************************************************************
 *  FblRealTimeSupport
 **********************************************************************************************************************/
/*! \brief       Transmit busy messages and triggers the watchdog according to system timer
 *  \pre         P2Timer must be initialized
 *  \return      Return code of FblLookForWatchdog
 **********************************************************************************************************************/
vuint8 FblRealTimeSupport( void )
{
   vuint8 returnCode;

   returnCode = FblLookForWatchdog();

   DiagExRCRResponsePending(kNotForceSendResponsePending);

   return returnCode;
}

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
/***********************************************************************************************************************
 *  FblDiagInitStateTables
 **********************************************************************************************************************/
/*! \brief       Expand condensed service property tables from ROM to RAM
 **********************************************************************************************************************/
static void FblDiagInitStateTables ( void )
{
   vuint8  idx;
   vuint16 bitmapIdx;
   vuint8  stateIdx;
   vuint8  stateArrIdx;
   vuint8  stateMask;
   static V_MEMROM1 tStateBitmap V_MEMROM2 V_MEMROM3 * sourceState;
   static V_MEMRAM1 tStateBitmap V_MEMRAM2 V_MEMRAM3 * targetState;

   bitmapIdx = 0;

   for (idx = 0; idx < (sizeof(kDiagServicePropertiesROM)/sizeof(kDiagServicePropertiesROM[0])); idx++)
   {
# if defined( FBL_DIAG_SERVICE_LIST_HANDLES )
      kDiagServiceProperties[idx].subServices      = kDiagSubFctTblHandler[kDiagServicePropertiesROM[idx].subServicesHandler];
# else
      kDiagServiceProperties[idx].subServices      = kDiagServicePropertiesROM[idx].subServices;
# endif
      kDiagServiceProperties[idx].serviceId        = kDiagServicePropertiesROM[idx].serviceId;
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
#else
      kDiagServiceProperties[idx].checks           = kDiagServicePropertiesROM[idx].checks;
#endif
      kDiagServiceProperties[idx].minLength        = kDiagServicePropertiesROM[idx].minLength;
      kDiagServiceProperties[idx].maxLength        = kDiagServicePropertiesROM[idx].maxLength;
      kDiagServiceProperties[idx].mainHandlerIdx   = kDiagServicePropertiesROM[idx].mainHandlerIdx;
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
      kDiagServiceProperties[idx].checkListIdx     = kDiagServicePropertiesROM[idx].checkListIdx;
#endif

#if defined( FBL_DIAG_STATE_ARRAYS )
      stateMask = 0x01;
#endif

      for (stateArrIdx = 0; stateArrIdx < STATE_COUNT; stateArrIdx++)
      {
#if defined( FBL_DIAG_STATE_ARRAYS )
         targetState = kDiagServiceProperties[idx].states[stateArrIdx];
#else
         switch (stateArrIdx)
         {
            case 0:
               targetState = kDiagServiceProperties[idx].stateSet;
               stateMask = 0x01;
               break;
            case 1:
               targetState = kDiagServiceProperties[idx].stateUnset;
               stateMask = 0x02;
               break;
            case 2:
               targetState = kDiagServiceProperties[idx].stateAdd;
               stateMask = 0x04;
               break;
            case 3:
               targetState = kDiagServiceProperties[idx].stateClr;
               stateMask = 0x08;
               break;
            case 4:
               targetState = kDiagServiceProperties[idx].stateClrFail;
               stateMask = 0x10;
               break;
         }
#endif

         if ((kDiagServicePropertiesROM[idx].stateUsage & stateMask) == stateMask)
         {
            sourceState = &kDiagStateBitmaps[bitmapIdx];
            bitmapIdx += STATECHECK_ARRAYSIZE;
         }
         else
         {
            sourceState = kDiagStateMaskReset;
         }

# if ( STATECHECK_ARRAYSIZE == 1u)
         stateIdx = 0;
# else
         for (stateIdx = 0; stateIdx < STATECHECK_ARRAYSIZE; stateIdx++)
# endif
         {
            targetState[stateIdx] = sourceState[stateIdx];
         }

         stateMask <<= 1;
      }
   }
}
#endif

/***********************************************************************************************************************
 *  FblDiagInitDownloadSequence
 **********************************************************************************************************************/
/*! \brief       (Re-)initialize download sequence (initialization and session transition)
 **********************************************************************************************************************/
static void FblDiagInitDownloadSequence( void )
{
   vuint8 blockIdx;

   /* (Re-)initialize download sequence */
   transferRemainder   = 0u;
   transferType = DOWNLOAD_RAM;
   expectedSequenceCnt = 0u;
   lastErasedBlock = kBlockNrInvalid;

   /* Initialize download information structure */
   FblDiagSegmentInit();

   /* Initialize block information */
   currentBlock = kBlockNrInvalid;

   for (blockIdx = 0u; blockIdx < FBL_LBT_BLOCK_COUNT; blockIdx++)
   {
      blockHeader[blockIdx].state = kBlockState_Init;
      blockHeader[blockIdx].nrOfSegments = 0u;
   }

   /* Initialize security module */
   (void)ApplFblSecurityInit();
   SetCurrentSecLvl(kDiagSecLevelNone);
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   /* Initialize security access variables */
   diagRequestedSecLvl = kDiagSecLevelNone;
   diagRequestedSecLvlIdx = kDiagInvalidSecLvlIdx;
#endif
}

/***********************************************************************************************************************
 *  FblDiagInitPowerOn
 **********************************************************************************************************************/
/*! \brief       Initialize module variables
 **********************************************************************************************************************/
void FblDiagInitPowerOn( void )
{
   vuint8 idx;

   for (idx = 0u; idx < (sizeof(fblStates)/sizeof(fblStates[0])); idx++)
   {
      fblStates[idx] = (tStateBitmap)0x00u;
   }

   transferRemainder    = 0u;
   transferType         = DOWNLOAD_RAM;
   expectedSequenceCnt  = 0u;
   memSegment           = -1;
   diagResponseFlag     = kDiagPutResponse;

   /* Initialize variables of lib Lbt */
   FblLbtInitPowerOn();

   DiagClrError();
   /* Set diagnostic session (default session) */
   SetDiagDefaultDiagSession();

   /* Stop tester present timer */
   StopTesterTimeout();

   /* Clear timer for response pending transmission */
   ClrP2Timer();
   /* Clear P2 timeout to prevent erroneous sending of RCR-RP */
   ClrP2Timeout();

   ApplFblResetVfp();

   /* Initialize security module */
   (void)SecM_InitPowerOn(V_NULL);

#if defined( FBL_ENABLE_DEBUG_STATUS )
   /* Initialize error status */
   ApplFblInitErrStatus();
#endif
}

/***********************************************************************************************************************
 *  FblDiagInit
 **********************************************************************************************************************/
/*! \brief       Initialize module variables
 **********************************************************************************************************************/
/* PRQA S 6050 1 */ /* MD_MSR_STCAL */
void FblDiagInit( void )
{
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
   vuintx idx;
# endif
#endif
   /* Get aligned diag buffer pointer from memory library */
   DiagBuffer = FblMemInitPowerOn();

#if defined( FBL_DIAG_ENABLE_RAM_STATETABLES )
   FblDiagInitStateTables();
#endif

   /* Reset service properties */
   FblDiagSetProperties(&kDiagServiceProperties[0], &serviceProperties);

   StopEcuResetTimeout();

   /* Initialize communication wrapper */
   FblCwSetTxInit();

#if defined( FBL_CW_ENABLE_MULTIPLE_CONNECTIONS )
   FblCwResetResponseAddress();
#endif

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
#  if defined( FBL_DIAG_MULTIPLE_KEY )
   /* Initialized the correct software signing key */
   (void)FblDiagCopyUsedPersKeyToUsedNotPersKey();
#  endif
   /* Initialize the token to zero */
   for(idx = 0u; idx < FBL_DIAG_TOKEN_MAX_SIZE; idx++)
   {
      tokenBuffer[idx] = 0u;
   }
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

   /* Initialize verification component */
   (void)SecM_InitVerification(V_NULL);

#if defined( FBL_MEM_ENABLE_VERIFY_OUTPUT )
   /* Assign segment list array */
   verifyParam.segmentList.segmentInfo = verifySegmentInfo;
#endif /* FBL_MEM_ENABLE_VERIFY_OUTPUT */

   (void)RamDriver_InitSync(V_NULL);


   FblDiagInitDownloadSequence();

}

/***********************************************************************************************************************
 *  FblDiagGetLastErasedBlock
 **********************************************************************************************************************/
/*! \brief       Returns last erased logical block or kBlockNrInvalid if no block has been erased yet.
 **********************************************************************************************************************/
vuint8 FblDiagGetLastErasedBlock( void )
{
   return lastErasedBlock;
}

/***********************************************************************************************************************
 *  FblDiagSetLastErasedBlock
 **********************************************************************************************************************/
/*! \brief       Sets last erased logical block.
 *  \param[in]   blockNr Block number of last erased logical block
 **********************************************************************************************************************/
void FblDiagSetLastErasedBlock( vuint8 blockNr )
{
   lastErasedBlock = blockNr;
}

/***********************************************************************************************************************
 *  CheckSuppressPosRspMsgIndication
 **********************************************************************************************************************/
/*! \brief       This functions checks if a diagnostic response has to be sent and resets the positive response
 *               message indication bit if necessary
 *  \param[in,out]   subparam Diagnostic subparameter
 **********************************************************************************************************************/
void CheckSuppressPosRspMsgIndication( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *subparam )
{
   if (((*(subparam)) & (kDiagSuppressPosRspMsgIndicationBit)) != 0u)
   {
      SetSuppressPosRspMsg(); /* Set internal flag for response processor */
      (*(subparam)) &= FblInvertBits(kDiagSuppressPosRspMsgIndicationBit, vuint8); /* Clear indication bit */
   }
}

/***********************************************************************************************************************
 *  FblDiagSegmentInit
 **********************************************************************************************************************/
/*! \brief       Initialize the download segment table
 **********************************************************************************************************************/
static void FblDiagSegmentInit( void )
{
   currentSegment = kDiagSegmentOutOfRange;
   diagSegmentList.nrOfSegments = 0u;
}

/***********************************************************************************************************************
 *  FblDiagSegmentNext
 **********************************************************************************************************************/
/*! \brief       The parameters of a download section (received by the RequestDownload handler) will be copied into
 *               the segment table.
 *  \param[in]   segAddr Start address of download segment
 *  \param[in]   segLength Length of download segment
 *  \param[in]   blockIdx Index of the logical block which is the target of the download segment
 *  \return      Index of current list entry
 **********************************************************************************************************************/
static vuint8 FblDiagSegmentNext( tFblDiagAddr segAddr, tFblLength segLength, vuint8 blockIdx )
{
   vuint8 result;

   /* Compare currently used number of address regions against configured max. value */
   if (diagSegmentList.nrOfSegments < SWM_DATA_MAX_NOAR)
   {
      currentSegment = diagSegmentList.nrOfSegments;

      /* Store segment address, length and logical block index for later use */
      diagSegmentList.segmentInfo[currentSegment].targetAddress = FblDiagGetMemAddr(segAddr);
      diagSegmentList.segmentInfo[currentSegment].length = segLength;

      /* Store reference to this segment in blockHeader */
      blockHeader[blockIdx].segmentIdx[blockHeader[blockIdx].nrOfSegments] = currentSegment;

      /* Increment segment counters */
      diagSegmentList.nrOfSegments++;
      blockHeader[blockIdx].nrOfSegments++;

      /* Return index of current list entry */
      result = currentSegment;
   }
   else
   {
      /* Segment list full, reject creation of new entry */
      result = kDiagSegmentOutOfRange;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagGetMaxTransferDataBlockLength
 **********************************************************************************************************************/
/*! \brief       Evaluate maximum TransferData block length for active connection
 *  \details     Length is the minimum of link payload length and configured diagnostic buffer size
 *  \return      TransferData block length applicable for active connection
 **********************************************************************************************************************/
static tCwDataLengthType FblDiagGetMaxTransferDataBlockLength(void)
{
   tCwDataLengthType maxBlockLength;

   /* Get payload limit of active communication link */
   maxBlockLength = FblCwGetPayloadLimit();

   /* Limit block length to available diagnostic buffer size */
   if (FBL_DIAG_BUFFER_LENGTH < maxBlockLength)
   {
      maxBlockLength = FBL_DIAG_BUFFER_LENGTH;
   }

#if defined( FBL_ENABLE_UNALIGNED_DATA_TRANSFER )
#else
   /* Align length to maximum memory segment size */
   maxBlockLength = (tCwDataLengthType)(((maxBlockLength - 2u) & FblInvert32Bit(FBL_MAX_SEGMENT_SIZE - 1u)) + 2u);
#endif /* FBL_ENABLE_UNALIGNED_DATA_TRANSFER */

   return maxBlockLength;
}

/***********************************************************************************************************************
 *  FblDiagPostInit
 **********************************************************************************************************************/
/*! \brief       This function is called from FblInit()
 *  \details     The diagnostic buffer is prepared to be able to handle the diagnostic request.
 **********************************************************************************************************************/
void FblDiagPostInit( void )
{
   if (    (FblMainGetStartFromAppl())
        && (kFblOk == FblCwPrepareResponseAddress()))
   {
      if (FblDiagRxGetPhysBuffer(kDiagRqlDiagnosticSessionControl + 1u) == DiagBuffer)
      {

         /* Lock the TP buffer, because service buffer is allocated for pos. response */
         FblCwSetRxBlock();

         /* Lock diag buffer  */
         SetDiagBufferLocked();

         /* Prepare diag buffer */
         diagServiceCurrent = kDiagSidDiagnosticSessionControl;
         DiagBuffer[kDiagFmtServiceId] = kDiagSidDiagnosticSessionControl;
         DiagBuffer[kDiagFmtSubparam]  = kDiagSubProgrammingSession;
         /* Omit response for programming request */
         DiagBuffer[kDiagFmtSubparam] |= 0x80u;
         DiagDataLength = kDiagRqlDiagnosticSessionControl;


         /* Simulate data indication */
         FblDiagRxStartIndication();
         FblDiagRxIndication(DiagBuffer, DiagDataLength + 1u);
      }
   }
}


/***********************************************************************************************************************
 *  FblDiagSessionTransition
 **********************************************************************************************************************/
/*! \brief       Common tasks which shall be executed during session transition
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      kFblOk:     Session transition completed successfully
 *               kFblFailed: Session transition failed
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static tFblResult FblDiagSessionTransition(V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *pbDiagBuffer, tCwDataLengthType diagReqDataLen)
{
   tFblResult result = kFblOk;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)diagReqDataLen;
#endif

   /* Reset internal states */
   ClrSecurityKeyAllowed();
   ClrTransferDataAllowed();
   ClrTransferDataSucceeded();

   FblDiagInitDownloadSequence();


   return result;
}

/***********************************************************************************************************************
 *  FblDiagSessionControlParamInit
 **********************************************************************************************************************/
/*! \brief       General initialization of response parameter and download preparation.
 *  \pre         All other conditions for a successful session transition have been fulfilled.
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 **********************************************************************************************************************/
static void FblDiagSessionControlParamInit(V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *pbDiagBuffer, tCwDataLengthType diagReqDataLen)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /*
    * Save the requested session type and adapt the P2 timing (if required).
    * Note: the SPRMIB has been cleared by CheckSuppressPosRspMsgIndication()
    * before and doesn't have to be considered here.
    */
   SetDiagSessionType(pbDiagBuffer[kDiagFmtSubparam]);

   /* Diagnostic session timing */
   pbDiagBuffer[kDiagFmtSubparam + 1u] = (vuint8)(GetDiagSessionTimingP2() >> 8u);
   pbDiagBuffer[kDiagFmtSubparam + 2u] = (vuint8) GetDiagSessionTimingP2();
   pbDiagBuffer[kDiagFmtSubparam + 3u] = (vuint8)(GetDiagSessionTimingP2Star() >> 8u);
   pbDiagBuffer[kDiagFmtSubparam + 4u] = (vuint8) GetDiagSessionTimingP2Star();
}

/* Diagnostic service handlers  *********************************************/

/***********************************************************************************************************************
 *  FblDiagMainHandlerDefaultSession
 **********************************************************************************************************************/
/*! \brief       Switch to default session, issue reset if necessary
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerDefaultSession)
{
   /* Switch to default session by issuing a reset */

   /* Initialize parameters for SessionControl response */
   FblDiagSessionControlParamInit(pbDiagBuffer, diagReqDataLen);

   /* The response will be sent by FblDiagEcuReset */
   FblDiagEcuReset(kDiagResetPutResponse, RESET_RESPONSE_SDS_REQUIRED);

   /* Shutdown is performed in main loop */

   return kFblOk;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerProgrammingSession
 **********************************************************************************************************************/
/*! \brief       Switch to programming session
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerProgrammingSession)
{
   tFblResult result;
   V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * localPbDiagBuffer;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
#endif

   /* ESCAN00067433: Stop background operations of FblLib_Mem */
   DiagBuffer = FblMemInit();
   localPbDiagBuffer = DiagBuffer;

   /* Deinitialize loaded memory driver(s) */
   FblDeinitMemoryDriver();

   /* Initialize parameters for SessionControl response */
   FblDiagSessionControlParamInit(localPbDiagBuffer, diagReqDataLen);

   /*
    * ESCAN00042572: switch session immediately to ensure correct S3 timer
    * handling in DiagResponseProcessor()/FblDiagTpConfirmation().
    */
   SetDiagProgrammingSession();

   /* Send response */
   DiagProcessingDone(kDiagRslDiagnosticSessionControl);

   /* Execute common (post) session transition tasks */
   result = FblDiagSessionTransition(localPbDiagBuffer, diagReqDataLen);


   return result;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerTesterPresent
 **********************************************************************************************************************/
/*! \brief       TesterPresent service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTesterPresent)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)diagReqDataLen;
#endif

   /* Simply transmit a positive response message */
   DiagProcessingDone(kDiagRslTesterPresent);

   return kFblOk;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerEcuReset
 **********************************************************************************************************************/
/*! \brief       Issue reset
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerEcuReset)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)pbDiagBuffer;
   (void)diagReqDataLen;
#endif

   FblDiagEcuReset(kDiagResetPutResponse, RESET_RESPONSE_ECURESET_REQUIRED);

   /* Shutdown is performed in main loop */
   return kFblOk;
}

#if defined( FBL_ENABLE_USERROUTINE )
/***********************************************************************************************************************
 *  FblDiagMainHandlerRoutineControl
 **********************************************************************************************************************/
/*! \brief       RoutineControl - No (predefined) routine found
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRoutineControl)
{
   tFblResult result;

   result = kFblOk;

   /*
    * Call user function to process user specific routine(s). Pass pointer to
    * diag buffer which points after the SID.
    */
   ApplDiagRoutineControl(&(pbDiagBuffer[kDiagFmtSubparam]), diagReqDataLen);

   if (DiagGetError() == kDiagErrorNone)
   {
      /* No NRC returned, send the response */
      DiagProcessingDone(DiagDataLength);
   }
   else
   {
      result = kFblFailed;
   }

   return result;
}
#endif /* FBL_ENABLE_USERROUTINE */

/***********************************************************************************************************************
 *  FblDiagMainHandlerRcActivateSbl
 **********************************************************************************************************************/
/*! \brief       RoutineControl - Activate Secondary Bootloader subroutine
 *  \pre         SBL has been downloaded
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcActivateSbl)
{
   IO_ErrorType memErrorCode;
   tFblResult result;
   tBlockDescriptor blockDescriptor;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Send a RCRRP to avoid a timeout during SBL verification and activation */
   DiagExRCRResponsePending(kForceSendResponsePending);

   result = FblLbtGetBlockDescriptorByNr(FBL_LBT_SBL_BLOCK_NUMBER, &blockDescriptor);

   if (kFblOk == result)
   {
      /* Perform SBL block verification */
      result = ApplFblValidateBlock(blockDescriptor);
   }

   if (kFblOk == result)
   {
      /* Set SBL block state to 'verified' */
      blockHeader[FBL_MTAB_SBL_BLOCK_NUMBER].state = kBlockState_Verified;

      /* Initialize flash driver version */
      FblErrStatSetFlashDrvVersion();

      /* Turn on programming voltage (if necessary) */
      ApplFblSetVfp();

      /* ApplFbl[Set|Reset]Vfp() are not allowed to set a NRC */
      assertFblUser((DiagGetError() == kDiagErrorNone), kFblOemAssertIllegalReturnValue);

      /* Check version and initialize flash driver */
      FblCwSetOfflineMode();
      memErrorCode = MemDriver_InitSync(V_NULL);
      FblCwSetOnlineMode();

      /*
       * ESCAN00041016: Require all memory drivers to be correctly initialized
       * at this point (i.e. non-downloadable drivers, too).
       */
      if (memErrorCode == IO_E_OK)
      {
         /* Set Flash driver initialization flag */
         SetMemDriverInitialized();

         /* All following download requests are directed to non-volatile memory */
         transferType = DOWNLOAD_FLASH;

         result = kFblOk;
      }
      else
      {
         /* Flash driver initialization failure */
         result = kFblFailed;
         FblErrStatSetError(FBL_ERR_FLASHCODE_INIT_FAILED);
         FblErrStatSetFlashDrvError(memErrorCode);

         /* Reset programming voltage */
         ApplFblResetVfp();

         /* ApplFbl[Set|Reset]Vfp() are not allowed to set a NRC */
         assertFblUser((DiagGetError() == kDiagErrorNone), kFblOemAssertIllegalReturnValue);
      }
   }

   if (result == kFblOk)
   {
      /* Activation of SBL (and other memory drivers) succeeded, prepare positive response */
      pbDiagBuffer[kDiagFmtSubRoutineInfo] = (vuint8)((kDiagSubRoutineType1_Sync << 4u) | kDiagSubRoutineStatusCompleted);
   }
   else
   {
      /* ESCAN00066098: Activation of SBL failed, send negative response */
      DiagNRCConditionsNotCorrect();
   }

   /* Send response */
   DiagProcessingDone(kDiagRslRcActivateSbl);

   return result;
}


/***********************************************************************************************************************
 *  FblDiagMainHandlerRcCheckValidApp
 **********************************************************************************************************************/
/*! \brief       RoutineControl - Check Valid Application subroutine
 *  \pre         Application software has been downloaded
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 6010, 6030, 6050, 6080 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL, MD_MSR_STMIF */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcCheckValidApp)
{
   tFblResult result;
   tFblLbtBlockFilter blockFilter;
   tBlockDescriptor iterBlock;
   tDiagSegmentList localSegmentList;
   FL_SegmentListType localSegmentListSB;
   FL_SegmentInfoType segListPerBlock[SWM_DATA_MAX_NOAR];
   vuint8 idxSeg;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Initialize return value */
   result = kFblOk;
   /* Initialize localSegmentList */
   localSegmentList.nrOfSegments = 0u;
   for(idxSeg = 0u; idxSeg < SWM_DATA_MAX_NOAR; idxSeg++)
   {
      localSegmentList.segmentInfo[idxSeg].targetAddress = 0u;
      localSegmentList.segmentInfo[idxSeg].length = 0u;
   }

   /* Check if any data was downloaded besides the SBL */
   if ((kBlockNrInvalid != currentBlock) && (FBL_MTAB_SBL_BLOCK_NUMBER != currentBlock))
   {
      /* Send RCRRP message to avoid a P2 timeout during validation */
      DiagExRCRResponsePending(kForceSendResponsePending);

      /* Iterate over logical blocks to determine the validity of the downloaded software/data */
      FblLbtBlockFilterInit(&blockFilter);
      FblLbtBlockFilterSetBlockType(&blockFilter, kBlockTypeApplication);
      iterBlock = FblLbtBlockFirst(&blockFilter);
      while (FblLbtBlockDone() == FALSE)
      {
         /* Check validity of logical block by calling ApplFblValidateBlock() */
         if (kFblOk == ApplFblValidateBlock(iterBlock))
         {
            if (blockHeader[iterBlock.blockNr].state == kBlockState_Erased)
            {
               /* Get the segment list */
               (void)FblDiagGetSegmentList(iterBlock.blockNr, &localSegmentList);

               for(idxSeg = 0u; idxSeg < localSegmentList.nrOfSegments; idxSeg++)
               {
                  segListPerBlock[idxSeg].transferredAddress = localSegmentList.segmentInfo[idxSeg].targetAddress;
                  segListPerBlock[idxSeg].targetAddress = localSegmentList.segmentInfo[idxSeg].targetAddress;
                  segListPerBlock[idxSeg].length = localSegmentList.segmentInfo[idxSeg].length;
               }

               localSegmentListSB.nrOfSegments = localSegmentList.nrOfSegments;     /* PRQA S 2983 */ /* MD_FblDiag_2983_2985_RedundantAssignment */
               localSegmentListSB.segmentInfo = segListPerBlock;                    /* PRQA S 2983 */ /* MD_FblDiag_2983_2985_RedundantAssignment */

               /* Update MAC for Secure Boot */
               if (ApplFblUpdateBlockMac(&iterBlock, &localSegmentListSB) == kFblOk)      /* PRQA S 2741 */ /* MD_FblDiag_2741 */
               {
                  /* Set block state to 'verified' */
                  blockHeader[iterBlock.blockNr].state = kBlockState_Verified;
               }
               else
               {
                  /* Check logical block assignment */
                  if (iterBlock.mandatoryType == TRUE) /* PRQA S 2880 */ /* MD_FblDiag_2880_UnreachableCode */
                  {
                     /* MAC calculation on mandatory Block failed, set overall verification result to 'failed' */
                     result = kFblFailed;
                  }
               }
            }
            else
            {
               /* Set block state to 'verified' */
               blockHeader[iterBlock.blockNr].state = kBlockState_Verified;
            }
         }
         else
         {
            /* Check logical block assignment */
            if (iterBlock.mandatoryType == TRUE)
            {
               /* Mandatory Block not valid, set overall verification result to 'failed' */
               result = kFblFailed;
            }
         }

         /* Prepare next cycle */
         iterBlock = FblLbtBlockNext();
      }

      if (kFblOk == result)
      {
         /*
          * All mandatory logical blocks are valid. Let the user do the overall validity check (e.g. compatibility check,
          * multi-processor configurations). The result has to be persisted inside the user function and can be
          * evaluated during startup in ApplFblIsValidApp().
          */
         result = ApplFblValidateApp();
      }

      /*
       * There are three valid return states of the validation function:
       *
       * result      | DiagGetError()  | state
       * ------------|-----------------|---------------------------------------
       * kFblOk      | kDiagErrorNone  | download valid, pattern written
       * kFblFailed  | kDiagErrorNone  | download invalid, pattern not written
       * kFblFailed  | !kDiagErrorNone | download valid, pattern write error
       */

      /* Catch invalid combinations of return value and NRC state */
      assertFblUser(((result == kFblOk) && (DiagGetError() == kDiagErrorNone)) ||
                    ((result != kFblOk) && (DiagGetError() == kDiagErrorNone)) ||
                    ((result != kFblOk) && (DiagGetError() != kDiagErrorNone)),
                    kFblOemAssertIllegalReturnValue);

   }

   /* Proceed only if no NRC has been set in the user functions */
   if (DiagGetError() == kDiagErrorNone)
   {
      /* Check if all necessary files are present/compatible for the application to be considered valid */
      if (ApplFblIsValidApp() != kApplValid)
      {
         pbDiagBuffer[kDiagFmtSubRoutineCheckValidAppStatus] = kDiagSubRoutineApplInvalid;
      }
      else
      {
         pbDiagBuffer[kDiagFmtSubRoutineCheckValidAppStatus] = kDiagSubRoutineApplValid;
      }

      /* Routine is complete */
      pbDiagBuffer[kDiagFmtSubRoutineInfo] = (vuint8)((kDiagSubRoutineType1_Sync << 4) | kDiagSubRoutineStatusCompleted);

      /* Send positive response */
      DiagProcessingDone(kDiagRslRcCheckValidApp);
   }
   else
   {
      /* Assure correct return value */
      result = kFblFailed;
   }


   return result;
}

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/***********************************************************************************************************************
 *  FblDiagMainHandlerRcTokenDownload
 **********************************************************************************************************************/
/*! \brief       RoutineControl - Download a Token from the tester into internal RAM
 *  \pre         Diagnostic module shall be initialized
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673, 6010, 6030, 6080 1 */ /* MD_MSR_Rule8.13, MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcTokenDownload)
{
   SecM_SignatureParamType verifyToken;
   SecM_AsymKeyType keyChangeKey;
   vuint8 *tokenBufferPtr;
   tTokenHdlResult resultTkn;
   tFblResult result;
   vuint8 cmdType;
   vuint16 tokenLength;

   resultTkn = kTokenHdlrOk;

   tokenLength = diagReqDataLen - 3u;
   tokenBufferPtr = &pbDiagBuffer[kDiagFmtRoutineIdDataRecord];
   /* Token shall be verified with respective key */
   verifyTokenSignLength = tokenLength - SEC_SIZE_SIG_RSA2048;
   /* Extract command */
   cmdType = FblDiagGetTokenCommandType(tokenBufferPtr);

   /* Check that the token length is consistent with the received command */
   if (cmdType == FBL_DIAG_TOKEN_CMD_REVERTPROD)
   {
      /* Mode 0 tokens are supported with and without signature */
      if ( (tokenLength != FBL_DIAG_TOKEN_MIN_SIZE) &&
           (tokenLength != (FBL_DIAG_TOKEN_MIN_SIZE + SEC_SIZE_SIG_RSA2048)) )
      {
         DiagNRCIncorrectMessageLengthOrInvalidFormat();
         resultTkn = kTokenHdlrInternalFailed;
      }
   }
   else if (cmdType == FBL_DIAG_TOKEN_CMD_PROGKEY)
   {
      /* Mode 5 tokens */
      if (tokenLength != FBL_DIAG_TOKEN_MAX_SIZE)
      {
         DiagNRCIncorrectMessageLengthOrInvalidFormat();
         resultTkn = kTokenHdlrInternalFailed;
      }
   }
   else
   {
      /* Mode 1-4 tokens always require a signature */
      if (tokenLength != (FBL_DIAG_TOKEN_MIN_SIZE + SEC_SIZE_SIG_RSA2048))
      {
         DiagNRCIncorrectMessageLengthOrInvalidFormat();
         resultTkn = kTokenHdlrInternalFailed;
      }
   }

   /* Signature verification shall not be done for revert to production command */
   if ((cmdType != FBL_DIAG_TOKEN_CMD_REVERTPROD) && (resultTkn == kTokenHdlrOk))
   {
      /* Here the Token signature will be verified */
      /* This verification shall be in common between MKU and SKU */
      /* Forcing the usage of an internal workspace */
      verifyToken.currentHash.sigResultBuffer = (SecM_ResultBufferType)SEC_DEFAULT_WORKSPACE;   /* PRQA S 0306 */ /* MD_FblDiag_0306 */
      verifyToken.currentHash.length = SEC_DEFAULT_WORKSPACE_SIZE;
      verifyToken.currentDataLength = V_NULL;
      verifyToken.sigSourceBuffer = tokenBufferPtr;
      verifyToken.sigByteCount = verifyTokenSignLength;
      verifyToken.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport;     /* PRQA S 0313 */ /* MD_FblDiag_0313_WDTriggerFctType */

      if (FblDiagGetTokenKeyIndex(tokenBufferPtr) == FBL_DIAG_TOKEN_KEY_INDEX_0)
      {
         /* Key Index 0 is used for Mode 5 tokens and the Key Change Key must be used */
         keyChangeKey.individual.size = sizeof(FBL_DIAG_KEY_CHANGE_KEY_EXP);
         keyChangeKey.individual.data = FBL_DIAG_KEY_CHANGE_KEY_EXP;
         keyChangeKey.shared.size = sizeof(FBL_DIAG_KEY_CHANGE_KEY_MOD);
         keyChangeKey.shared.data = FBL_DIAG_KEY_CHANGE_KEY_MOD;
         verifyToken.key = (SecM_VerifyKeyType)&keyChangeKey; /* PRQA S 0314 */ /* MD_FblDiag_0314_KeyPtr */
      }
      else
      {
         /* For mode 1-4 use default internally configured key */
         verifyToken.key = V_NULL;
      }

      verifyToken.sigState = SEC_HASH_INIT;
      if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
      {
         resultTkn = kTokenHdlrSignatureFailed;
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_HASH_COMPUTE;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_HASH_FINALIZE;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_SIG_VERIFY;
         verifyToken.sigSourceBuffer = &tokenBufferPtr[verifyTokenSignLength];
         verifyToken.sigByteCount = SEC_SIZE_SIG_RSA2048;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }
   }

   /* Do token validation */
   if (resultTkn == kTokenHdlrOk)
   {
      resultTkn = FblDiagValidateToken(tokenBufferPtr);
   }

   /* Do token copy into local buffer after validation successfull */
   /* After the copy, this local token will be used for processing */
   if (resultTkn == kTokenHdlrOk)
   {
      /* Token shall be stored into local RAM buffer */
      /* PRQA S 0314 1 */ /* MD_FblDiag_0314_MemCpy */
      (void)MEMCPY(tokenBuffer, &pbDiagBuffer[kDiagFmtRoutineIdDataRecord], tokenLength);
   }

   /* For mode 3 and 4 perform only Token validation, other modes perform key switch or key reprogramming */
   if ((cmdType != FBL_DIAG_TOKEN_CMD_USEDEVDATE) && (cmdType != FBL_DIAG_TOKEN_CMD_USEDEVIGNI))
   {
#  if defined (FBL_DIAG_MULTIPLE_KEY)
      /* Multiple Key Use Case */
      if (resultTkn == kTokenHdlrOk)
      {
         switch (cmdType)
         {
            case FBL_DIAG_TOKEN_CMD_REVERTPROD:
            {
               /* Revert back to production key */
               if (FblDiagCopyProductionKeyToUsedPersKey() != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagCopyUsedPersKeyToUsedNotPersKey() != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else
               {
                  /* MISRA */
               }
               break;
            }
            case FBL_DIAG_TOKEN_CMD_USEDEVPERM:
            {
               /* Use development key until further request */
               if (FblDiagCopyDevelopmentKeyToUsedNotPersKey() != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagCopyDevelopmentKeyToUsedPersKey() != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else
               {
                  /* MISRA */
               }
               break;
            }
            case FBL_DIAG_TOKEN_CMD_USEDEVTEMP:
            {
               /* Use development key until next reset or Cmd 0 */
               if (FblDiagCopyDevelopmentKeyToUsedNotPersKey() != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               break;
            }
            case FBL_DIAG_TOKEN_CMD_PROGKEY:
            {
               /* Program the new keys contained in the token. */
               if (FblDiagSetDevelopmentModKey(FblDiagGetTokenDevKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetDevelopmentExpKey(FblDiagGetTokenDevKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetProductionModKey(FblDiagGetTokenProdKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetProductionExpKey(FblDiagGetTokenProdKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetTokenModKey(FblDiagGetTokenTokenKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetTokenExpKey(FblDiagGetTokenTokenKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetUsedPersModKey(FblDiagGetTokenProdKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetUsedPersExpKey(FblDiagGetTokenProdKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetUsedNotPersModKey(FblDiagGetTokenProdKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else if (FblDiagSetUsedNotPersExpKey(FblDiagGetTokenProdKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH) != SECM_OK)
               {
                  resultTkn = kTokenHdlrInternalFailed;
               }
               else
               {
                  /* MISRA */
               }
               break;
            }
            default:
            {
               resultTkn = kTokenHdlrInternalFailed;
               break;
            }
         }
      }
#  else
      /* Single Key Use Case */
      if (resultTkn == kTokenHdlrOk)
      {
         switch (cmdType)
         {
            case FBL_DIAG_TOKEN_CMD_REVERTPROD:
            {
               /* Revert back to production key */
               ClrDiagDevelopmentKey();
               break;
            }
            case FBL_DIAG_TOKEN_CMD_USEDEVPERM:
            {
               /* Use development key permanently (Not possible to revert to production key) */
               SetDiagDevelopmentKey();
               if (ApplFblWriteVerificationKey(V_NULL) != kFblOk)
               {
                  resultTkn = kTokenHdlrKeyChangeFailed;
                  /* Revert back to production key, in case of failure */
                  ClrDiagDevelopmentKey();
               }
               break;
            }
            case FBL_DIAG_TOKEN_CMD_USEDEVTEMP:
            {
               /* Use development key until next reset or Cmd 0 */
               SetDiagDevelopmentKey();
               break;
            }
            case FBL_DIAG_TOKEN_CMD_PROGKEY:
            {
               vuint8 isDevKeyActive = 0u;
               vuint8 localProdKey[FBL_DIAG_KEY_MOD_LENGTH + FBL_DIAG_KEY_EXP_LENGTH];

               /* Program the production key contained in the token (Not possible to revert to development key) */
               if (GetDiagDevelopmentKey())
               {
                  isDevKeyActive = 1u;
               }
               ClrDiagDevelopmentKey();
               /* Prepare one buffer with contiguos modulo and exponent */
               /* PRQA S 0314 2 */ /* MD_FblDiag_0314_MemCpy */
               (void)MEMCPY(localProdKey, FblDiagGetTokenProdKeyMod(tokenBuffer), FBL_DIAG_KEY_MOD_LENGTH);
               (void)MEMCPY(&localProdKey[FBL_DIAG_KEY_MOD_LENGTH], FblDiagGetTokenProdKeyExp(tokenBuffer), FBL_DIAG_KEY_EXP_LENGTH);
               /* The Production Key modulo contains sequentially also the exponent */
               if (ApplFblWriteVerificationKey(localProdKey) != kFblOk)
               {
                  resultTkn = kTokenHdlrKeyChangeFailed;
                  if (isDevKeyActive == 1u)
                  {
                     SetDiagDevelopmentKey();
                  }
               }
               break;
            }
            default:
            {
               resultTkn = kTokenHdlrInternalFailed;
               break;
            }
         }
      }
#  endif
   }

   /* Call callouts for every mode */
   if (resultTkn == kTokenHdlrOk)
   {
      resultTkn = FblDiagTokenCallout(cmdType, tokenBufferPtr, tokenLength);
   }

   if (DiagGetError() == kDiagErrorNone)
   {
      /* Send positive response */
      pbDiagBuffer[kDiagFmtSubRoutineInfo] = (vuint8)resultTkn;
      DiagProcessingDone(kDiagRslRcTokenDownload);
      result = kFblOk;
   }
   else
   {
      result = kFblFailed;
   }

   return result;
}
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

#if defined( FBL_DIAG_ENABLE_UPDATE_SEC_BYTES )
/***********************************************************************************************************************
 *  FblDiagMainHandlerRcUpdateSecBytes
 **********************************************************************************************************************/
/*! \brief       RoutineControl - Update Security Bytes subroutine (0x0305)
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcUpdateSecBytes)
{
   tFblResult result = kFblOk;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Check programming mode - is the SBL present and activated? */
   if (!GetMemDriverInitialized())
   {
      DiagNRCConditionsNotCorrect();
   }
   else
   {
      /* Check if write request is targeted at the correct security level */
      if (pbDiagBuffer[kDiagFmtSubRoutineUpdateSecBytesLevel] != kDiagSecLevelFlash)
      {
         /* Invalid security level */
         DiagNRCRequestOutOfRange();
      }
      else
      {
         /* Write security bytes to non-volatile memory */
         result = ApplFblWriteSecurityBytes(&pbDiagBuffer[kDiagFmtSubRoutineUpdateSecBytesValue], kSecSecretKeyLength);
      }
   }

   /* Send response immediately if no NRC has been set */
   if (DiagGetError() == kDiagErrorNone)
   {
      /* No NRC has been set, prepare positive response */
      pbDiagBuffer[kDiagFmtSubRoutineIdPar] = (vuint8)((kDiagSubRoutineType1_Sync << 4) | kDiagSubRoutineStatusCompleted );

      /* Send positive response */
      DiagProcessingDone(kDiagRslRcUpdateSecBytes);
   }
   else
   {
      /* NRC has been set, set correct return value */
      result = kFblFailed;
   }

   return result;
}
#endif /* FBL_DIAG_ENABLE_UPDATE_SEC_BYTES */

/***********************************************************************************************************************
 *  FblDiagMainHandlerRcEraseMemory
 **********************************************************************************************************************/
/*! \brief       RoutineControl - EraseMemory subroutine
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 6010, 6030, 6050 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcEraseMemory)
{
   tFblResult        result;
   tBlockDescriptor  eraseBlockDescriptor = {0};
   tFblMemBlockInfo  blockInfo;
   tFblAddress       eraseAddress = {0};
   tFblLength        eraseLength = {0};

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Initialize return value */
   result = kFblOk;

   ClrEraseMemorySucceeded();

   /* Extract erase region information from the diag buffer */
   eraseAddress = (tFblAddress)FblMemGetInteger(kDiagRqlRcEraseMemoryAddress, &pbDiagBuffer[kDiagFmtSubRoutineEraseMemoryAddress]);
   eraseLength = (tFblLength)FblMemGetInteger(kDiagRqlRcEraseMemoryLength, &pbDiagBuffer[kDiagFmtSubRoutineEraseMemorySize]);

   /* Check if the memory driver has been downloaded and initialized */
   if (! GetMemDriverInitialized())
   {
      /* Routine not supported in PBL */
      DiagNRCConditionsNotCorrect();
      result = kFblFailed;
   }


   if (result == kFblOk)
   {
      /* Retrieve index of logical block (blockNr is kBlockNrInvalid in case of failure) */
      result = FblLbtGetBlockDescriptorByAddressLength(eraseAddress, eraseLength, &eraseBlockDescriptor);
      if ((result != kFblOk)
          /* Check exact match of requested erase area with logical block */
          || (eraseBlockDescriptor.blockStartAddress != eraseAddress)
          || (eraseBlockDescriptor.blockLength != eraseLength)
         )
      {
         DiagNRCRequestOutOfRange();
         result = kFblFailed;
      }
   }

   if (result == kFblOk)
   {
#if defined( FBL_ENABLE_FLASH_ERASED_DETECTION )
      if (ApplFblGetBlockErased(eraseBlockDescriptor) == kFlashErased)
      {
         result = kFblOk;
      }
      else
#endif /* FBL_ENABLE_FLASH_ERASED_DETECTION */
      {
         /* Avoid P2 timeout during invalidation */
         DiagExRCRResponsePending(kForceSendResponsePending);

         /* Invalidate application before erase procedure */
         result = ApplFblInvalidateBlock(eraseBlockDescriptor);

         /* Catch invalid combinations of return value and NRC state */
         assertFblUser(((result == kFblOk) && (DiagGetError() == kDiagErrorNone)) ||
                       ((result == kFblFailed) && (DiagGetError() != kDiagErrorNone)),
                       kFblOemAssertIllegalReturnValue);

         /* Proceed only if all entry conditions and block invalidation succeeded */
         if (result == kFblOk)
         {
            /* Start erase procedure */
            blockInfo.targetAddress    = eraseBlockDescriptor.blockStartAddress;
            blockInfo.targetLength     = eraseBlockDescriptor.blockLength;
            blockInfo.logicalAddress   = eraseBlockDescriptor.blockStartAddress;
            blockInfo.logicalLength    = eraseBlockDescriptor.blockLength;
            /* Additional members are not used for erase indication */

            result = FblMemRemapStatus(FblMemBlockEraseIndication(&blockInfo));
         }

         if (result == kFblOk)
         {
#if defined( FBL_ENABLE_FLASH_ERASED_DETECTION )
            (void)ApplFblSetBlockErased(eraseBlockDescriptor);
#endif
         }
      }
   }

   if (result == kFblOk)
   {
      /* Remember erased state */
      SetEraseMemorySucceeded();
      lastErasedBlock = eraseBlockDescriptor.blockNr;
      blockHeader[eraseBlockDescriptor.blockNr].state = kBlockState_Erased;
   }

   /* Send response immediately if no NRC has been set */
   if (DiagGetError() == kDiagErrorNone)
   {
      /* No NRC has been set, prepare positive response */
      if (result == kFblOk)
      {
         pbDiagBuffer[kDiagFmtSubRoutineIdPar] = (vuint8)((kDiagSubRoutineType1_Sync << 4) | kDiagSubRoutineStatusCompleted );
         /* Send positive response */
         DiagProcessingDone(kDiagRslRcEraseMemory);
      }
      else
      {
         /* ESCAN00066098: Erase procedure failed, send negative response */
         DiagNRCGeneralProgrammingFailure();
      }
   }
   else
   {
      /* NRC has been set, set correct return value */
      result = kFblFailed;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerRcCheckProgDep
 **********************************************************************************************************************/
/*! \brief       RoutineControl - CheckProgrammingDependencies subroutine
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRcCheckProgDep)
{
   tFblAddress checkStartAddress;
   tFblLength checkLength;
   tFblResult result;
   tFblLbtBlockNr requestedCheckBlock;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Extract check address range */
   checkStartAddress = FblMemGetInteger(kDiagRqlRcCheckProgDepMemoryAddress, &pbDiagBuffer[kDiagFmtSubRoutineCheckMemoryAddress]);
   checkLength = FblMemGetInteger(kDiagRqlRcCheckProgDepMemorySize, &pbDiagBuffer[kDiagFmtSubRoutineCheckMemorySize]);

   /* Retrieve index of logical block (result is kBlockNrInvalid in case of failure) */
   result = FblLbtGetBlockNrByAddressLength(checkStartAddress, checkLength, &requestedCheckBlock);

   /* Ensure that a valid block number is set */
   if (result != kFblOk)
   {
      /* Requested download region is outside of the configured logical blocks; abort service handling */
      DiagNRCRequestOutOfRange();
   }
   else
   {
      /* Setup segment information */
      verifySegmentInfo[0].targetAddress = checkStartAddress;
      verifySegmentInfo[0].transferredAddress = checkStartAddress;
      verifySegmentInfo[0].length = checkLength;
      verifyParam.segmentList.nrOfSegments = 1;

      /* Trigger checksum calculation */
      verifyParam.blockStartAddress = checkStartAddress;
      verifyParam.blockLength = checkLength;
      /* No actual verification data included in request */
      verifyParam.verificationData = verifyOutputBuf;
      verifyParam.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport;   /* PRQA S 0313 */ /* MD_FblDiag_0313_WDTriggerFctType */
      /* Routine is restricted to ROM access */
      verifyParam.readMemory = (FL_ReadMemoryFctType)FblReadProm;

      /* Call HIS verification interface to calculate CRC */
      if (SECM_VER_OK == FblDiagVerification(&verifyParam))
      {
         /* RoutineInfo */
         pbDiagBuffer[kDiagFmtSubRoutineInfo] = (vuint8)((kDiagSubRoutineType1_Sync << 4) | kDiagSubRoutineStatusCompleted);

         /* CRC value is stored in last two byte of buffer */ /* PRQA S 0314 1 */ /* MD_FblDiag_0314_MemCpy */
         (void)MEMCPY(&pbDiagBuffer[kDiagFmtSubRoutineCrcHigh], &verifyOutputBuf[FBL_DIAG_CRC_OFFSET], SEC_SIZE_CHECKSUM_CRC);

         /* Send positive response */
         DiagProcessingDone(kDiagRslRcCheckProgDep);
      }
      else
      {
         /* ESCAN00066098: Verification failed (most likely memory read error), send negative response */
         DiagNRCGeneralReject();
         result = kFblFailed;
      }
   }

   return result;
}


/***********************************************************************************************************************
 *  FblDiagSecAccessSeed
 **********************************************************************************************************************/
/*! \brief       Process security seed request
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \param[in]   secLevel Requested security level
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static tFblResult FblDiagSecAccessSeed(V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel )
{
   vuint8 returnCode;
   vuint8 i;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
   (void)secLevel;
# if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
# else
   (void)pbDiagBuffer; /* PRQA S 3112 */ /* MD_MSR_DummyStmt */
# endif
#endif

#if ( SYSSERVICE_SECMODHIS_VERSION >= 0x0300u )
   /* Cancel all SecM jobs if security access is performed anew, for example if the download is restarted */
   SecM_CancelAllJobs();
#endif

   /* Get currently unlocked level */
   if (GetCurrentSecLvl() != kDiagSecLevelNone)
   {
      /* ECU is already unlocked, send zero seed */
      for (i = 0; i < GetRequestedSeedLength(); i++)
      {
         pbDiagBuffer[kDiagFmtSeedKeyStart + i] = 0x00u;
      }

      /* Security access already granted. Don't allow a key to be submitted. */
      ClrSecurityKeyAllowed();
      returnCode = kFblFailed;
   }
   else
   {
      /* Generate seed by application function */
      if (ApplFblSecuritySeed() == kFblOk)
      {
         /* Accept security key next */
         returnCode = kFblOk;
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
         /* Remember security level */
         diagRequestedSecLvl = pbDiagBuffer[kDiagFmtSubparam];
#endif
      }
      else
      {
         /* Error occurred during seed computation */
         FblErrStatSetError(FBL_ERR_SEED_GENERATION_FAILED);
         DiagNRCConditionsNotCorrect();
         returnCode = kFblFailed;
      }
   }

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   if (returnCode != kFblOk)
   {
      /* Invalidate requested security level */
      diagRequestedSecLvlIdx = kDiagInvalidSecLvlIdx;
   }
#endif

   /* Set response length used by fbl_diag: (SID +) sub parameter + seed length */
   DiagProcessingDone(1u + GetRequestedSeedLength());

   return returnCode;
}

/***********************************************************************************************************************
 *  FblDiagSecAccessKey
 **********************************************************************************************************************/
/*! \brief       Process security key request
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \param[in]   secLevel Requested security level
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static tFblResult FblDiagSecAccessKey(V_MEMRAM1 vuint8  V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel)
{
   vuint8 returnCode;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 2 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
   (void)secLevel;
#endif

   /*
    * Clearing the SecurityKeyAllowed state cannot be done automatically
    * (by the dispatcher) because errors other than key comparison (e.g.
    * length check) should not reset the state.
    */
   ClrSecurityKeyAllowed();

   /* Check security access key in application function */
   returnCode = ApplFblSecurityKey();

   if (returnCode != kFblOk)
   {
      /* Set NRC */
      DiagNRCInvalidKey();
   }
   else
   {
      SetCurrentSecLvl((vuint8)(pbDiagBuffer[kDiagFmtSubparam] - 1u));
      DiagProcessingDone(kDiagRslSecurityAccessKey);
   }

   return returnCode;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerSecAccessSeed
 **********************************************************************************************************************/
/*! \brief       SecurityAccess - Seed handling for security level "Flash"
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerSecAccessSeed)
{
   return FblDiagSecAccessSeed(pbDiagBuffer, diagReqDataLen, kDiagSecLevelFlash);
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerSecAccessKey
 **********************************************************************************************************************/
/*! \brief       SecurityAccess - Key handling for security level "Flash Programming"
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerSecAccessKey)
{
   return FblDiagSecAccessKey(pbDiagBuffer, diagReqDataLen, kDiagSecLevelFlash);
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerRequestDownload
 **********************************************************************************************************************/
/*! \brief       RequestDownload service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 2889, 6010, 6030, 6050 1 */ /* MD_FblDiag_2889, MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestDownload)
{
   vuint8 lengthFormat = 0u;
   vuint8 addrFormat = 0u;
   tFblLbtBlockNr requestedDownloadBlock = 0u;
   tBlockDescriptor logicalBlockDescriptor = {0};
   tFblLength transferLength = 0u;
   tFblMemSegmentInfo segInfo;
   tFblMemBlockInfo blockInfo;
   tFblResult result;
   tCwDataLengthType maxBlockLength;
   V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * localPbDiagBuffer = V_NULL;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
# if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
# endif
#endif

   localPbDiagBuffer = pbDiagBuffer;

   /* Get encryption and compression method */
   dataFormatId   = localPbDiagBuffer[kDiagFmtSubparam];

#if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
   if (localPbDiagBuffer[kDiagFmtFormatOffset] != ((vuint8)(kDiagSubMaxLengthFormat << 4u) | kDiagSubMaxAddrFormat))
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   lengthFormat   = kDiagSubMaxLengthFormat;
   addrFormat     = kDiagSubMaxAddrFormat;
#else
   /* Get address- and length format */
   lengthFormat   = (vuint8)((localPbDiagBuffer[kDiagFmtFormatOffset] & kDiagFmtLengthMask) >> 4u);
   addrFormat     = (vuint8)(localPbDiagBuffer[kDiagFmtFormatOffset] & kDiagFmtAddrMask);

   if ((lengthFormat < kDiagSubMinLengthFormat)
     || (lengthFormat > kDiagSubMaxLengthFormat)
     || (addrFormat < kDiagSubMinAddrFormat)
     || (addrFormat > kDiagSubMaxAddrFormat) )
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   if (diagReqDataLen != (kDiagRqlRequestDownload + lengthFormat + addrFormat))
   {
      DiagNRCIncorrectMessageLengthOrInvalidFormat();
      return kFblFailed;
   }
#endif /* FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI */

#if defined( FBL_ENABLE_DATA_PROCESSING )
# if defined( FBL_ENABLE_ENCRYPTION_MODE )
# else
   /* No encrypted data supported */
   if (FblDiagGetEncryptionMode(dataFormatId) != kDiagSubNoEncryption)
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }
# endif /* FBL_ENABLE_ENCRYPTION_MODE */
# if defined( FBL_ENABLE_COMPRESSION_MODE )
# else
   /* No compressed data supported */
   if (FblDiagGetCompressionMode(dataFormatId) != kDiagSubNoCompression)
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }
# endif /* FBL_ENABLE_COMPRESSION_MODE */
#else
   if (dataFormatId != kDiagSubNoDataProcessing)
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }
#endif /* FBL_ENABLE_DATA_PROCESSING */

   /* Init expected sequence counter for TransferData */
   expectedSequenceCnt = kDiagInitSequenceNum;
   /* Init current sequence counter for TransferData */
   currentSequenceCnt = kDiagInitSequenceNum;

   /* Extract address and length from request */
   transferAddress = (tFblAddress)FblMemGetInteger(addrFormat, &localPbDiagBuffer[kDiagFmtAddrOffset]);
   transferRemainder = (tFblLength)FblMemGetInteger(lengthFormat, &localPbDiagBuffer[kDiagFmtAddrOffset + addrFormat]);

   /* Check if length is equal to zero */
   if (transferRemainder == 0u)
   {
      /* Length zero is unaccepted */
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

#if defined( FBL_ENABLE_PROCESSED_DATA_LENGTH )
   /*
    * If the requested download contains compressed or encrypted data, the requested download length refers to the
    * size of the transfer data (i.e. the length of the processed (decrypted/decompressed) data may differ from the
    * requested download length).
    */
   if (dataFormatId != kDiagSubNoDataProcessing)
   {
      /*
       * Check the start address only. Flash boundary check not possible here because the resulting length of the
       * processed data is not known. Additional check performed in programming routine.
       */
      transferLength = 1u;
   }
   else
#endif /* FBL_ENABLE_PROCESSED_DATA_LENGTH */
   {
      transferLength = transferRemainder;
   }

   /* Retrieve block descriptor of requested logical block */
   result = FblLbtGetBlockDescriptorByAddressLength(transferAddress, transferLength, &logicalBlockDescriptor);

   /* Ensure that a valid block is set */
   if (result != kFblOk)
   {
      /* Requested download region is outside of the configured logical blocks; abort service handling */
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   requestedDownloadBlock = logicalBlockDescriptor.blockNr;

   if (transferType == DOWNLOAD_FLASH)
   {
      /* Check state flags */
      if (!GetMemDriverInitialized())
      {
         DiagNRCConditionsNotCorrect();
         return kFblFailed;
      }
   }
   else /* transferType == DOWNLOAD_RAM */
   {
      assertFbl(!GetMemDriverInitialized(), kFblOemAssertIllegalExecutionPath);

      /* Check type of requested block */
      if (requestedDownloadBlock != FBL_MTAB_SBL_BLOCK_NUMBER)
      {
         /* Still in PBL: reject all downloads which are not directed to the SBL block */
         DiagNRCRequestOutOfRange();
         return kFblFailed;
      }

      /* Restrict execution sequence and perform auto-erase */
      if (blockHeader[requestedDownloadBlock].state == kBlockState_Init)
      {
         /* "Erase" flash code array (remove spurious code in buffer, support writing of presence pattern) */
         /* Note: since the block state is reset in SessionControl, this will also clean up the flashcode buffer */
         assertFbl(FLASH_SIZE == logicalBlockDescriptor.blockLength, kFblSysAssertParameterOutOfRange);
         if (kFblMemStatus_Ok == FblMemEraseRegion(logicalBlockDescriptor.blockStartAddress, logicalBlockDescriptor.blockLength))
         {
            blockHeader[requestedDownloadBlock].state = kBlockState_Erased;
         }
      }
   }

   /* Check if the respective logical block has been erased */
   if (blockHeader[requestedDownloadBlock].state != kBlockState_Erased)
   {
      /* Requested download region has not been erased; abort service handling */
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   (void)ApplFblAdjustLbtBlockData(&logicalBlockDescriptor);

   /* Check if requested download block overwrites presence pattern (or exceeds logical block) */
   if ((transferAddress + transferLength) > (logicalBlockDescriptor.blockStartAddress + logicalBlockDescriptor.blockLength))
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /* Copy data and address of segment to initialize diagSegmentList */
   if (FblDiagSegmentNext(transferAddress, transferRemainder, requestedDownloadBlock) == kDiagSegmentOutOfRange)
   {
      FblErrStatSetError(FBL_ERR_TOO_MANY_SEGMENTS_IN_MODULE);
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /*** Download request has been accepted ***/

   /* Initialize block data used by FblLib_Mem */
   blockInfo.targetAddress                   = logicalBlockDescriptor.blockStartAddress;
   blockInfo.targetLength                    = logicalBlockDescriptor.blockLength;
   blockInfo.logicalAddress                  = blockInfo.targetAddress;
   blockInfo.logicalLength                   = blockInfo.targetLength;
   blockInfo.verifyRoutineInput.function     = V_NULL;
   blockInfo.verifyRoutineInput.param        = V_NULL;
   blockInfo.segmentList                     = &verifyParam.segmentList;
   blockInfo.maxSegments                     = 1u; /* Only a single segment per block */
#if defined( FBL_MEM_ENABLE_VERIFY_PIPELINED )
   /* Check if a customer function is configured for this logical block */
   if (SecM_Default != logicalBlockDescriptor.verifyOutput)
   {
      /* Switch to output verification (customer function will be set in FblDiagVerification() */
      blockInfo.verifyRoutineOutput.function    = FblDiagVerification;
      blockInfo.verifyRoutineOutput.param       = &verifyParam;
      blockInfo.verifyRoutinePipe.function      = V_NULL;
      blockInfo.verifyRoutinePipe.param         = V_NULL;
   }
   else
   {
      /* Initialize the calculation (CCC: SHA256, DDD: CRC16) */
      pipeVerifyParam.currentHash.sigResultBuffer = (vuint32)pipeVerifyBuf; /* PRQA S 0306 */ /* MD_FblDiag_0306 */
      pipeVerifyParam.currentHash.length        = sizeof(pipeVerifyBuf);
      pipeVerifyParam.currentDataLength         = &pipeVerifyLength;
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
      /* Initialize the calculation (CCC: CRC16) */
      pipeVerifyParamCrc.currentHash.sigResultBuffer = (vuint32)&pipeVerifyCrc; /* PRQA S 0306 */ /* MD_FblDiag_0306 */
      pipeVerifyParamCrc.currentHash.length     = sizeof(pipeVerifyCrc);
      pipeVerifyParamCrc.currentDataLength      = &pipeVerifyLengthCrc;
      blockInfo.verifyRoutinePipe.function      = FblDiagVerifySignature;
# else
      blockInfo.verifyRoutinePipe.function      = SecM_VerifyClassDDD;
# endif /* SEC_ENABLE_SECURITY_CLASS_CCC */
      blockInfo.verifyRoutinePipe.param         = &pipeVerifyParam;
      blockInfo.verifyRoutineOutput.function    = V_NULL;
      blockInfo.verifyRoutineOutput.param       = V_NULL;
   }
#else
   blockInfo.verifyRoutineOutput.function    = FblDiagVerification;
   blockInfo.verifyRoutineOutput.param       = &verifyParam;
   blockInfo.verifyRoutinePipe.function      = V_NULL;
   blockInfo.verifyRoutinePipe.param         = V_NULL;
#endif /* FBL_MEM_ENABLE_VERIFY_PIPELINED */
   blockInfo.readFct                         = FblReadProm; /* FblWrapperRam required! */

   /* Indicate the start of a new download block */
   result = FblMemRemapStatus(FblMemBlockStartIndication(&blockInfo));
   (void)FblDiagMemGetActiveBuffer();
   if (result != kDiagErrorNone)
   {
      DiagSetError(result);
      return kFblFailed;
   }

   /* Initialize segment data */
   segInfo.targetAddress  = transferAddress;
   segInfo.targetLength   = transferRemainder;
   segInfo.logicalAddress = segInfo.targetAddress;
   segInfo.logicalLength  = segInfo.targetLength;
   segInfo.type           = kFblMemType_ROM;  /* FblWrapperRam required! */
   segInfo.dataFormat     = dataFormatId;

   /* Indicate start of new segment */
   result = FblMemRemapStatus(FblMemSegmentStartIndication(&segInfo));
   localPbDiagBuffer = FblDiagMemGetActiveBuffer();
   if (result != kDiagErrorNone)
   {
      DiagSetError(result);
      return kFblFailed;
   }

   /* Download of segment accepted: set logical block as "active" */
   currentBlock = requestedDownloadBlock;

#if defined( FBL_ENABLE_FLASH_ERASED_DETECTION )
   (void)ApplFblClrBlockErased(logicalBlockDescriptor);
#endif

   /* Evaluate maximum block length for TransferData requests */
   maxBlockLength = FblDiagGetMaxTransferDataBlockLength();

   /* Length format dependent on maximum block length */
   /* PRQA S 2880, 2992, 2996 TAG_FblDiag_ConstValue_1 */ /* MD_FblDiag_ConstValue */
   if (maxBlockLength > 0xFFFFFFuL)
   {
      lengthFormat = 4u;
   }
   else if (maxBlockLength > 0xFFFFu)
   {
      lengthFormat = 3u;
   }
   else
   {
      /* Use at least two length bytes */
      lengthFormat = 2u;
   }
   /* PRQA L:TAG_FblDiag_ConstValue_1 */

   /* Set length format and maximum block length */
   localPbDiagBuffer[kDiagFmtSubparam] = lengthFormat << 4u;
   FblMemSetInteger(lengthFormat, maxBlockLength, &localPbDiagBuffer[kDiagFmtMaxBlockLengthHigh]);

   DiagProcessingDone(kDiagRslRequestDownload + lengthFormat);


   return kFblOk;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerTransferDataDownload
 **********************************************************************************************************************/
/*! \brief       TransferData service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 2889, 3673 1 */ /* MD_FblDiag_2889, MD_MSR_Rule8.13 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTransferDataDownload)
{
   tFblResult result;

   /* Check if the requested sequence number is expected */
   if (pbDiagBuffer[kDiagFmtSubparam] != expectedSequenceCnt )
   {
      /* Check if sequence number corresponds to a retry */
      if (pbDiagBuffer[kDiagFmtSubparam] == currentSequenceCnt)
      {
         /* Handle the retries here */

         /* Repetition of last transferData request */
         /* Simply send a positive response without loading data to memory */
         DiagProcessingDone(kDiagRslTransferData);

         return kFblOk;
      }
      else /* Sequence number is not for a retry */
      {
         /* Send a WrongSequenceError */
         DiagNRCWrongBlockSequenceCounter();
         return kFblFailed;
      }
   }

   result = FblMemRemapStatus(FblMemDataIndication(DiagBuffer, kDiagFmtDataOffset, (tFblLength)diagReqDataLen - 1u));
   (void)FblDiagMemGetActiveBuffer();
   if (result != kDiagErrorNone)
   {
      DiagSetError(result);
      ClrTransferDataAllowed();
      return kFblFailed;
   }

   transferRemainder -= ((tFblLength)diagReqDataLen - 1u);

   if (transferRemainder == 0u)
   {
      /* Finalize writing the data */
      result = FblMemRemapStatus(FblMemSegmentEndIndication(&totalProgramLength));

      if (result != kDiagErrorNone)
      {
         DiagSetError(result);
         return kFblFailed;
      }

      result = FblMemRemapStatus(FblMemBlockEndIndication());
      if (result != kDiagErrorNone)
      {
         DiagSetError(result);
         return kFblFailed;
      }

   }

   /* Memorize current counter */
   currentSequenceCnt = expectedSequenceCnt;

   /* Sequence counter value of next transferData request */
   expectedSequenceCnt++;

   DiagProcessingDone(kDiagRslTransferData);
   return kFblOk;
}

#if defined( FBL_DIAG_ENABLE_UPLOAD )
/***********************************************************************************************************************
 *  FblDiagMainHandlerRequestUpload
 **********************************************************************************************************************/
/*! \brief       RequestUpload service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 2889 1 */ /* MD_FblDiag_2889 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestUpload)
{
   vuint8 lengthFormat, addrFormat;
   vuint8 requestedUploadBlock;
   tFblResult result;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
# if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
# endif
#endif


#if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
   if (pbDiagBuffer[kDiagFmtFormatOffset] != ((vuint8)(kDiagSubMaxLengthFormat << 4) | kDiagSubMaxAddrFormat))
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   lengthFormat   = kDiagSubMaxLengthFormat;
   addrFormat     = kDiagSubMaxAddrFormat;
#else
   /* Get address- and length format */
   lengthFormat   = (vuint8)((pbDiagBuffer[kDiagFmtFormatOffset] & kDiagFmtLengthMask) >> 4);
   addrFormat     = pbDiagBuffer[kDiagFmtFormatOffset] & kDiagFmtAddrMask;

   if ((lengthFormat < kDiagSubMinLengthFormat) || (lengthFormat > kDiagSubMaxLengthFormat) || (addrFormat < kDiagSubMinAddrFormat) || (addrFormat > kDiagSubMaxAddrFormat))
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   if (diagReqDataLen != (kDiagRqlRequestDownload + lengthFormat + addrFormat))
   {
      DiagNRCIncorrectMessageLengthOrInvalidFormat();
      return kFblFailed;
   }
#endif /* FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI */

   /* Get encryption and compression method */
   dataFormatId   = pbDiagBuffer[kDiagFmtSubparam];

   /* No encrypted or compressed data supported */
   if (dataFormatId != kDiagSubNoDataProcessing)
   {
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /* Extract address and length from request */
   transferAddress = (tFblAddress)FblMemGetInteger(addrFormat, &pbDiagBuffer[kDiagFmtAddrOffset]);
   transferRemainder = (tFblLength)FblMemGetInteger(lengthFormat, &pbDiagBuffer[kDiagFmtAddrOffset + addrFormat]);

   /* Check if length is equal to zero */
   if (transferRemainder == 0u)
   {
      /* Length zero is unaccepted */
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /* Retrieve index of logical block (result is kBlockNrInvalid in case of failure) */
   result = FblLbtGetBlockNrByAddressLength(transferAddress, transferRemainder, &requestedUploadBlock);

   /* Ensure that a valid block number is set */
   if (result != kFblOk)
   {
      /* Requested download region is outside of the configured logical blocks; abort service handling */
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /* Save data and address of segment for CRC calculation in TransferExit */
   if (FblDiagSegmentNext(transferAddress, transferRemainder, requestedUploadBlock) == kDiagSegmentOutOfRange)
   {
      FblErrStatSetError(FBL_ERR_TOO_MANY_SEGMENTS_IN_MODULE);
      DiagNRCRequestOutOfRange();
      return kFblFailed;
   }

   /* Check programming mode - is the SBL present and activated? */
   if (!GetMemDriverInitialized())
   {
      DiagNRCConditionsNotCorrect();
      return kFblFailed;
   }

   /* Init expected sequence counter for TransferData */
   expectedSequenceCnt = kDiagInitSequenceNum;
   /* Init current sequence counter for TransferData */
   currentSequenceCnt = kDiagInitSequenceNum;

   /* Use whole diag buffer size as block length for TransferDataUpload */
   maxNumberOfBlockLength = (vuint16)FBL_DIAG_BUFFER_LENGTH;

   /* Number of bytes reserved for maximum block length */
   pbDiagBuffer[kDiagFmtSubparam] = kDiagMaxNumberOfBlockLengthLength << 4u;

   /* Report block length which will be used in TransferDataUpload */
   pbDiagBuffer[kDiagFmtMaxBlockLengthHigh] = (vuint8)((maxNumberOfBlockLength >> 8) & 0xFFu);
   pbDiagBuffer[kDiagFmtMaxBlockLengthLow] = (vuint8)(maxNumberOfBlockLength & 0xFFu);

   DiagProcessingDone(kDiagRslRequestUpload + kDiagMaxNumberOfBlockLengthLength);

   return kFblOk;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerTransferDataUpload
 **********************************************************************************************************************/
/*! \brief       TransferData service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 2889 1 */ /* MD_FblDiag_2889 */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerTransferDataUpload)
{
   /* The transfer data length is static to account for potential retries */
   static tCwDataLengthType transferDataUpLength;
   /* Temporary buffer used to backup data from the diag buffer that is */
   /* overwritten by a retry upload request */
   static vuint8 tmpUploadBuffer[kDiagFmtTransferDataUploadRetryBackupSize];

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
#endif

   /* Check if the requested sequence number is expected */
   if (DiagBuffer[kDiagFmtSequenceCnt] != expectedSequenceCnt )
   {
      /* Check if sequence number corresponds to a retry */
      if (DiagBuffer[kDiagFmtSequenceCnt] == currentSequenceCnt)
      {
         vuintx i;

         /*
          * Repetition of last TransferData request: retrieve the saved data
          * from temporary buffer.
          */
         for (i = 0u; i < kDiagFmtTransferDataUploadRetryBackupSize; i++)
         {
            pbDiagBuffer[kDiagFmtDataOffset + i] = tmpUploadBuffer[i];
         }

         /* Re-upload the data that is still in the buffer */
         DiagProcessingDone(transferDataUpLength + 1u);
         return kFblOk;
      }
      else /* Sequence number is not for a retry */
      {
         /* Send a WrongSequenceError */
         DiagNRCWrongBlockSequenceCounter();
         return kFblFailed;
      }
   }
   else /* Sequence number is equal to the one expected */
   {
      /* Check if anymore data is expected */
      if (transferRemainder == 0u)
      {
         /* Send NRC TransferDataSuspended and abort, no more data expected! */
         DiagNRCTransferDataSuspended();
         ClrTransferDataAllowed();
         return kFblFailed;
      }
   }

   /* Memorize current counter */
   currentSequenceCnt = expectedSequenceCnt;

   /* Sequence counter value of next TransferData request */
   expectedSequenceCnt++;

   /*
    * Check if the requested length exceeds the diag buffer size.
    * kDiagFmtDataOffset accounts for service ID and block sequence counter.
    */
   if (transferRemainder > ((tFblLength)maxNumberOfBlockLength - kDiagFmtDataOffset))
   {
      transferDataUpLength = ((tCwDataLengthType)maxNumberOfBlockLength - kDiagFmtDataOffset);
   }
   else
   {
      transferDataUpLength = (tCwDataLengthType)transferRemainder;
   }

   transferRemainder -= transferDataUpLength;

   /*
    * Address being passed is either within flash boundaries or within some
    * other type of memory supported by the application.
    */
   if (FblReadProm(transferAddress, &pbDiagBuffer[kDiagFmtDataOffset], transferDataUpLength) != transferDataUpLength)
   {
      /* Tried accessing non supported memory location */
      DiagNRCConditionsNotCorrect();
      return kFblFailed;
   }
   else /* Success */
   {
      vuintx i;

      transferAddress += transferDataUpLength;

      /*
       * Backup the DATA bytes in the diag buffer which might be overwritten
       * by the single frame reception with a retry upload request.
       */
      for (i = 0u; i < kDiagFmtTransferDataUploadRetryBackupSize; i++)
      {
         tmpUploadBuffer[i] = pbDiagBuffer[kDiagFmtDataOffset + i];
      }
   }

   DiagProcessingDone(transferDataUpLength + 1u);

   return kFblOk;
}
#endif /* FBL_DIAG_ENABLE_UPLOAD */

/***********************************************************************************************************************
 *  FblDiagMainHandlerRequestTransferExit
 **********************************************************************************************************************/
/*! \brief       RequestTransferExit service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 3673, 2889, 6010, 6030, 6050 1 */ /* MD_MSR_Rule8.13, MD_FblDiag_2889, MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STCAL */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerRequestTransferExit)
{
   tFblResult result;
   tFblMemVerifyStatus verifyResult;
   tFblMemBlockVerifyData verifyData;
#if defined( FBL_MEM_ENABLE_VERIFY_PIPELINED )
   tExportFct exportFct;
#endif

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)diagReqDataLen;
# if defined( FBL_DIAG_ENABLE_UPLOAD )
# else
   (void)pbDiagBuffer; /* PRQA S 3112 */ /* MD_MSR_DummyStmt */
# endif /* FBL_DIAG_ENABLE_UPLOAD */
#endif

   assertFblInternal(currentSegment != kDiagSegmentOutOfRange, kFblOemAssertIllegalParameter);
   assertFblInternal(currentBlock != kBlockNrInvalid, kFblOemAssertIllegalParameter);

#if defined( FBL_DIAG_ENABLE_UPLOAD )
   if (GetTransferDataUpload())
   {
      /* This service is allowed after all bytes of the segment are transferred */
      if (transferRemainder != 0u)
      {
         DiagNRCRequestSequenceError();
         return kFblFailed;
      }
   }
#endif

   /* Send an initial response pending message */
   DiagExRCRResponsePending(kForceSendResponsePending);

   /* Calculate CRC16-CITT value of the given memory area */
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   if (GetTransferDataUpload())
   {
      result = kFblOk;

      /* Setup segment information */
      verifySegmentInfo[0].targetAddress        = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifySegmentInfo[0].transferredAddress   = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifySegmentInfo[0].length               = diagSegmentList.segmentInfo[currentSegment].length;
      verifyParam.segmentList.nrOfSegments      = 1u;

      /* Trigger checksum calculation */
      verifyParam.blockStartAddress = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifyParam.blockLength       = diagSegmentList.segmentInfo[currentSegment].length;
      /* No actual verification data included in request; result of CRC calculation will be stored here */
      verifyParam.verificationData  = verifyOutputBuf;
      verifyParam.wdTriggerFct      = (FL_WDTriggerFctType)FblRealTimeSupport;   /* PRQA S 0313 */ /* MD_FblDiag_0313_WDTriggerFctType */
      /* Upload is restricted to ROM content */
      verifyParam.readMemory        = (FL_ReadMemoryFctType)FblReadProm;

      if (SECM_VER_OK != FblDiagVerification(&verifyParam))
      {
         /* An error occurred during checksum calculation */
         return kFblFailed;
      }

      /* Restore the segmentInfo entry for download purposes */
      diagSegmentList.nrOfSegments--;
   }
   else
#endif /* FBL_DIAG_ENABLE_UPLOAD */
   {
#if defined( FBL_ENABLE_PROCESSED_DATA_LENGTH )
      /* Update segment information with actually programmed length */
      diagSegmentList.segmentInfo[currentSegment].length = totalProgramLength;
#endif /* FBL_ENABLE_PROCESSED_DATA_LENGTH */

      verifyData.verifyDataInput.length = 0u;
      verifyData.verifyDataInput.data = V_NULL;
#if defined( FBL_MEM_ENABLE_VERIFY_OUTPUT ) && !defined( FBL_MEM_ENABLE_VERIFY_PIPELINED )
      /* Output and pipelined verification use the same data as they are used exclusively */
      /* No actual verification data included in request */
      verifyData.verifyDataOutput.length  = FBL_DIAG_VERIFY_BUFFER_SIZE;
      verifyData.verifyDataOutput.data    = verifyOutputBuf;
      verifyData.verifyDataPipe.length    = 0u;
      verifyData.verifyDataPipe.data      = V_NULL;
#else /* FBL_MEM_ENABLE_VERIFY_PIPELINED */
      /* Check if customer verification function is configured for this block */
      result = FblLbtGetBlockVerifyOutputFuncByNr(currentBlock, &exportFct);
      if (result == kFblOk)
      {
         if (SecM_Default == exportFct)
         {
            verifyData.verifyDataOutput.length  = 0u;
            verifyData.verifyDataOutput.data    = V_NULL;
            verifyData.verifyDataPipe.length    = FBL_DIAG_VERIFY_BUFFER_SIZE;
            verifyData.verifyDataPipe.data      = verifyOutputBuf;
         }
         else
         {
            /* Customer verification function: switch to output verification */
            verifyData.verifyDataOutput.length  = FBL_DIAG_VERIFY_BUFFER_SIZE;
            verifyData.verifyDataOutput.data    = verifyOutputBuf;
            verifyData.verifyDataPipe.length    = 0u;
            verifyData.verifyDataPipe.data      = V_NULL;
         }
      }
      else
      {
         /* Should never happen */
         DiagNRCRequestOutOfRange();
         return kFblFailed;
      }
#endif /* FBL_MEM_ENABLE_VERIFY_PIPELINED */

      /* Handle LibMem state flags and perform state checks */
      result = FblMemRemapStatus(FblMemBlockVerify(&verifyData, &verifyResult));
      if (result == kDiagErrorNone)
      {
         /* Store segment checksum for later verification in routine CheckValidApp */ /* PRQA S 0314 1 */ /* MD_FblDiag_0314_MemCpy */
         (void)MEMCPY(diagSegmentList.segmentInfo[currentSegment].checksum, verifyOutputBuf, SEC_VERIFY_CLASS_DDD_DIGEST_SIZE);
      }
      else
      {
         DiagSetError(result);
         return kFblFailed;
      }
   }

   if (DiagGetError() == kDiagErrorNone)
   {
      /* No NRC returned, send the response */

      /* CRC value is stored in last two byte of buffer */ /* PRQA S 0314 1 */ /* MD_FblDiag_0314_MemCpy */
      (void)MEMCPY(&pbDiagBuffer[kDiagFmtRoutineIdHigh], &verifyOutputBuf[FBL_DIAG_CRC_OFFSET], SEC_SIZE_CHECKSUM_CRC);
      DiagProcessingDone(kDiagRslRequestTransferExit);
   }
   else
   {
      result = kFblFailed;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagPrepareDidResponse
 **********************************************************************************************************************/
/*! \brief       ReadDataByIdentifier service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   reqDid Requested DID
 *  \param[in]   didData Pointer to DID data
 *  \param[in]   didLength Data length of the DID
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static tFblResult FblDiagPrepareDidResponse ( vuint8 *pbDiagBuffer, vuint16 reqDid, tDidDataPtr didData, vuint16 didLen )
{
   vuint16 dataIdx;
   tFblResult result = kFblOk;

   /* Check if data fits into diag buffer */
   if ((DiagDataLength + didLen) < FBL_DIAG_BUFFER_LENGTH)
   {
      /* Write DID to the diag buffer */
      pbDiagBuffer[0] = (vuint8)(reqDid >> 8u);
      pbDiagBuffer[1] = (vuint8)(reqDid & 0xFFu);

      if (didData != kDiagComplexDidData)
      {
         /* Extract the requested information from DID table */
         for (dataIdx = 0u; dataIdx < (didLen - kDiagFmtDataIdSize); dataIdx++)
         {
            pbDiagBuffer[kDiagFmtDataIdSize + dataIdx] = didData[dataIdx];
         }
      }
      else
      {
         /* User callback provides the requested information */
         result = ApplFblReadDataByIdentifier(pbDiagBuffer, didLen - kDiagFmtDataIdSize);
      }
   }
   else
   {
      /* Requested data doesn't fit into diag buffer */
      DiagNRCResponseTooLong();
      result = kFblFailed;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagMainHandlerReadDataById
 **********************************************************************************************************************/
/*! \brief       ReadDataByIdentifier service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
/* PRQA S 2889, 6010, 6030 1 */ /* MD_FblDiag_2889, MD_MSR_STPTH, MD_MSR_STCYC */
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerReadDataById)
{
   vuint16 reqDid[FBL_MAX_DID_COUNT];
   vuint16 didLen = 0u;
   vuint8 numberOfDids, didIdx, tableIdx;
   tFblResult result = kFblFailed;
   V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * localPbDiagBuffer;

   /* Check if the length is an odd value. */
   if ((diagReqDataLen % 2u) == 1u)
   {
      DiagNRCIncorrectMessageLengthOrInvalidFormat();
      return kFblFailed;
   }

   /* Increase pointer to point to the DID(s) and reset response length */
   localPbDiagBuffer = &pbDiagBuffer[1];
   DiagDataLength = 0u;

   /* Extract DIDs from diag buffer, do while in order to always initialize reqDid */
   numberOfDids = 0u;
   do
   {
      reqDid[numberOfDids] = (vuint16)FblMemGetInteger(2u, &localPbDiagBuffer[numberOfDids * 2u]);
      numberOfDids++;
   } while (numberOfDids < (diagReqDataLen / 2u));

   /* Process requested DIDs */
   for (didIdx = 0u; (didIdx < numberOfDids) && (DiagGetError() == kDiagErrorNone); didIdx++)
   {
      /* Handle watchdog but omit transmission of RCRRP (REQPROD 74147) */
      (void)FblLookForWatchdog();

      result = kFblFailed;
      switch (reqDid[didIdx])
      {
         /* Active Diagnostic Session */
         case kDiagDataIdActiveDiagnosticSession:
         {
            /* Bootloader supports programming session only */
            vuint8 diagSessionType = GetDiagSessionType();
            didLen = kDiagFmtDataIdSize + kDiagFmtDataIdActiveDiagnosticSessionSize;
            result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], (tDidDataPtr)&diagSessionType, didLen);
            break;
         }
         /* Software Download Specification Version */
         case kDiagDataIdSwdlVersion:
         {
            /* SWDL issue kDiagSwdlVersion */
            vuint8 swdlVersion = kDiagSwdlVersion;
            didLen = kDiagFmtDataIdSize + kDiagFmtDataIdSwdlVersionSize;
            result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], (tDidDataPtr)&swdlVersion, didLen);
            break;
         }
#if defined( FBL_DIAG_ENABLE_DID_CURRENT_DIAG_APP )
         /* DID 0xD021: Current Diagnostic Application */
         case kDiagDataIdBootloaderCurrentDiagnosticApp:
         {
            vuint8 currentDiagnosticApp = kFblDiagAppUnknown;
            didLen = kDiagFmtDataIdSize + kDiagFmtDataIdBootloaderCurrentDiagAppSize;
            if (GetMemDriverInitialized())
            {
               currentDiagnosticApp = kFblDiagAppSbl;
            }
            else
            {
               currentDiagnosticApp = kFblDiagAppPbl;
            }
            result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], (tDidDataPtr)&currentDiagnosticApp, didLen);
            break;
         }
#endif
         /* User handles the other DIDs */
         default:
         {
            /* Search table of supported DIDs */
            for (tableIdx = 0; tableIdx < kNrOfDids; tableIdx++)
            {
               if (fblDidTable[tableIdx].did == reqDid[didIdx])
               {
                  /* Calculate overall data length for range check and pointer handling */
                  didLen = kDiagFmtDataIdSize + fblDidTable[tableIdx].size;
                  result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], fblDidTable[tableIdx].ptr, didLen);
                  break;
               }
            }
            break;
         }
      }

      if (result == kFblOk)
      {
         /* Adjust response length and pointer to diag buffer */
         DiagDataLength += didLen;
         localPbDiagBuffer = &localPbDiagBuffer[didLen];
      }
   }

   if (DiagGetError() == kDiagErrorNone)
   {
      /* Check if at least one DID has been found */
      if (DiagDataLength == 0u)
      {
         DiagNRCRequestOutOfRange();
         result = kFblFailed;
      }
      else
      {
         /* No NRC returned, send the response */
         DiagProcessingDone(DiagDataLength);
      }
   }
   else
   {
      result = kFblFailed;
   }

   return result;
}

#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
/***********************************************************************************************************************
 *  FblDiagMainHandlerWriteDataById
 **********************************************************************************************************************/
/*! \brief       WriteDataByIdentifier service handling
 *  \param[in]   pbDiagBuffer Pointer to the data in the pbDiagBuffer (without SID)
 *  \param[in]   diagReqDataLen Length of data (without SID)
 *  \return      Possible return values:
 *               - kFblOk: Service processed successfully (goto next state)
 *               - kFblFailed: Service processing failed.
 **********************************************************************************************************************/
static FBL_DIAG_MAIN_HANDLER(FblDiagMainHandlerWriteDataById)
{
   tFblResult result;


   /* Pass pointer to diag buffer which points after the SID. */
   result = ApplFblWriteDataByIdentifier(&(pbDiagBuffer[kDiagFmtDataIdHigh]), diagReqDataLen);

   /* Catch invalid combinations of return value and NRC state */
   assertFblUser(((result == kFblOk) && (DiagGetError() == kDiagErrorNone)) ||
                 ((result == kFblFailed) && (DiagGetError() != kDiagErrorNone)),
                 kFblOemAssertIllegalReturnValue);

   if (DiagGetError() == kDiagErrorNone)
   {
      /* No NRC returned, send the response */
      DiagProcessingDone(kDiagRslWriteDataByIdentifier);
   }
   else
   {
      result = kFblFailed;
   }

   return result;
}
#endif

/* Diagnostic service functions  *********************************************/

/***********************************************************************************************************************
 *  FblDiagEcuReset
 **********************************************************************************************************************/
/*! \brief       Initiate ECU reset
 *  \param[in]   resetOptions OR combination of:
 *               - kDiagResetNoResponse (timeout of TesterPresent)
 *               - kDiagResetPutResponse (service EcuReset received)
 *               - kDiagResetStayInBoot (do not reset active boot mode)
 *  \param[in]   responseFlag Value written to reset response flag
 **********************************************************************************************************************/
void FblDiagEcuReset(vuint8 resetOptions, vuint8 responseFlag)
{
#if defined( FBL_ENABLE_ECURESET_DELAY )
   vuint8 tmpFuncReq = GetFunctionalRequest();
#endif

   /* Disable tester present timeout monitoring */
   StopTesterTimeout();

   /* ESCAN00067433: Stop background operations of FblLib_Mem */
   FblMemDeinit();

   /* Check if a response is required */
   if (GetResetOptionPutResponse(resetOptions) && (!GetSuppressPosRspMsg()))
   {
      /* Request for reset/FBL-shutdown */
      SetWaitEcuReset();

      /* Check if response address has been stored successfully */
      if (kFblOk == FblCwSaveResponseAddress()) /* PRQA S 2741 */ /* MD_FblDiag_ConstValue */
      {
         /* Transmit response if required */
         switch (responseFlag)
         {
            case RESET_RESPONSE_SDS_REQUIRED:
            {
               DiagProcessingDone(kDiagRslDiagnosticSessionControl);
               break;
            }
            case RESET_RESPONSE_ECURESET_REQUIRED:
            {
               DiagProcessingDone(kDiagRslEcuReset);
               break;
            }
            default:
            {
               /* Invalid combination of reset option and response flag */
               assertFblInternal(0u, kFblOemAssertParameterOutOfRange);
               break;
            }
         }
      }
      else
      {  /* PRQA S 2880 1 */ /* MD_FblDiag_ConstValue */
         DiagNRCGeneralReject();
      }
      SetEcuResetFctFinished();
   }
   else
   {
      /* Do not transmit response message */
      DiagSetNoResponse();
      DiagProcessingDone(0u);
      FblDiagDeinit();
   }

#if defined( FBL_ENABLE_ECURESET_DELAY )
   /* Functionally addressed request: wait for a pre-defined time for
    * responses from the sub nodes */
   if (tmpFuncReq != 0)
   {
      vuint16 i = FBL_ECURESET_DELAY_TIME;


      while (i != 0)
      {
         /* Watchdog function calls FblCw polling tasks */
         if ((FblLookForWatchdog() & FBL_TM_TRIGGERED) == FBL_TM_TRIGGERED)
         {
            i--;
         }
      }
   }
#endif /* FBL_ENABLE_ECURESET_DELAY */

}

/***********************************************************************************************************************
 *  FblDiagSetProperties
 **********************************************************************************************************************/
/*! \brief       Copy service properties from source to target
 *  \param[in]   source Source service properties
 *  \param[out]  target Target service properties
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static void FblDiagSetProperties(ptServiceProp source, tServiceProp * destination)
{
   vuint8 idx;
   vuint8 stateIdx;

   destination->serviceId        = source->serviceId;
   destination->minLength        = source->minLength;
   destination->maxLength        = source->maxLength;
   destination->mainHandlerIdx   = source->mainHandlerIdx;
   destination->subServices      = source->subServices;

#if defined( FBL_DIAG_STATE_ARRAYS )
   for (stateIdx = 0u; stateIdx < STATE_COUNT; stateIdx++)
   {
#if ( STATECHECK_ARRAYSIZE == 1u)
      idx = 0;
#else
      for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
#endif
      {
         destination->states[stateIdx][idx] = source->states[stateIdx][idx];
      }
   }
#else
#if ( STATECHECK_ARRAYSIZE == 1u)
   idx = 0u;
#else
   for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
#endif
   {
      destination->stateSet[idx]       = source->stateSet[idx];
      destination->stateUnset[idx]     = source->stateUnset[idx];
      destination->stateAdd[idx]       = source->stateAdd[idx];
      destination->stateClr[idx]       = source->stateClr[idx];
      destination->stateClrFail[idx]   = source->stateClrFail[idx];
   }
#endif
}

/***********************************************************************************************************************
 *  FblDiagMergeProperties
 **********************************************************************************************************************/
/*! \brief       Merge existing contents of target service properties with the one from source.
 *  \details     Service ID, subservices and handlers will be overwritten if present. Length will be updated if values
 *               are more restrictive. Resulting states are the OR concatenation of the inputs.
 *  \param[in]   source Source service properties
 *  \param[out]  merge Input service properties, merged with source
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
static void FblDiagMergeProperties(ptServiceProp source, tServiceProp * merge)
{
   vuint8 idx;
#if defined( FBL_DIAG_STATE_ARRAYS )
   vuint8 stateIdx;
#endif

   /* PRQA S 2918 TAG_FblDiag_2918_1 */ /* MD_FblDiag_2918 */
   merge->serviceId        = source->serviceId;
   if (source->minLength > merge->minLength)
   {
      merge->minLength     = source->minLength;
   }
   if (source->maxLength < merge->maxLength)
   {
      merge->maxLength     = source->maxLength;
   }
   if (source->mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
   {
      merge->mainHandlerIdx   = source->mainHandlerIdx;
   }
   merge->subServices      = source->subServices;
   /* PRQA L: TAG_FblDiag_2918_1 */

#if defined( FBL_DIAG_STATE_ARRAYS )
   for (stateIdx = 0u; stateIdx < STATE_COUNT; stateIdx++)
   {
# if ( STATECHECK_ARRAYSIZE == 1u)
      idx = 0u;
# else
      for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
# endif
      {
         merge->states[stateIdx][idx] |= source->states[stateIdx][idx];
      }
   }
#else
# if ( STATECHECK_ARRAYSIZE == 1u)
   idx = 0u;
# else
   for (idx = 0u; idx < STATECHECK_ARRAYSIZE; idx++)
# endif
   {
      merge->stateSet[idx]       |= source->stateSet[idx];
      merge->stateUnset[idx]     |= source->stateUnset[idx];
      merge->stateAdd[idx]       |= source->stateAdd[idx];
      merge->stateClr[idx]       |= source->stateClr[idx];
      merge->stateClrFail[idx]   |= source->stateClrFail[idx];
   }
#endif
}

/***********************************************************************************************************************
 *  FblDiagDispatch
 **********************************************************************************************************************/
/*! \brief       Dispatch the current request in the diagnostic buffer
 **********************************************************************************************************************/
/* PRQA S 6010, 6030 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC */
static void FblDiagDispatch ( void )
{
   /* Variables to traverse the service tables */
   ptServiceProp                                      prevProp; /* PRQA S 3679 */ /* MD_MSR_Rule8.13 */
   ptServiceProp                                      currProp;
   V_MEMROM1 tServiceList V_MEMROM2 V_MEMROM3 *       localSubServices;
   V_MEMROM1  V_MEMROM2 V_MEMROM3 *  checkList;
   V_MEMROM1 tServiceCheck V_MEMROM2 V_MEMROM3 *      checkFct;

   vuint8 chkFctIdx;
   tCwDataLengthType bufferPos;

   tFblResult done;

   /* Set service table entry point */
   FblDiagSetProperties(&kDiagServiceProperties[0], &serviceProperties);

   /* Init traversal variables */
   currProp = (ptServiceProp)&kDiagServiceProperties[0];
   prevProp = currProp;
   localSubServices = currProp->subServices;
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
   checkList = kServiceCheckListTable[currProp->checkListIdx];
#else
   checkList = currProp->checks;
#endif
   bufferPos = localSubServices->bufPos;

   checkFct = (V_MEMROM1 tServiceCheck V_MEMROM2 V_MEMROM3 *)0;

   done = kFblFailed;

   /* Run until service was found or error occurred */
   while (done != kFblOk)
   {
      /* Assume operation finished */
      done = kFblOk;

      /* Run over all check functions of current service */
      for (chkFctIdx = 0; chkFctIdx < checkList->count; chkFctIdx++)
      {
         /* Execute check function */
         checkFct = &(checkList->list)[chkFctIdx];

         if ((kServiceCheckHandlerFctTable[checkFct->checkHandlerIdx])(&serviceProperties, DiagBuffer, DiagDataLength, bufferPos, &currProp) == kFblOk)
         {
            /* Current service has potentially changed */
            if (currProp != prevProp)
            {
               /* Merge new properties with existing one */
               FblDiagMergeProperties(currProp, &serviceProperties);
               prevProp = currProp;

               /* Not finished yet */
               done = kFblFailed;
            }
         }
         else
         {
            /* Invalidate service */
            currProp = kDiagNoServiceProp;
            break;
         }
      }

      /* Service property has changed */
      if (done == kFblFailed)
      {
         /* Assume operation finished */
         done = kFblOk;

         /* Valid service found */
         if (currProp != kDiagNoServiceProp)
         {
            /* Get new check functions */
#if defined( FBL_DIAG_CHECK_LIST_HANDLES )
            if (currProp->checkListIdx != (vuint8)kServiceCheckListNone)
            {
               checkList = kServiceCheckListTable[currProp->checkListIdx];
#else
            checkList = currProp->checks;
            if (checkList != (void *)0)
            {
#endif
               /* Initialize check function */
               checkFct = (V_MEMROM1 tServiceCheck V_MEMROM2 V_MEMROM3 *)0;

               /* Not finished yet, new check functions present */
               done = kFblFailed;
            }

            /* Get subservices of current service */
            localSubServices = currProp->subServices;
            if (localSubServices != (void *)0)
            {
               /* Move to next buffer position */
               bufferPos = localSubServices->bufPos;
            }
         }
      }
   }

   /* Assume dispatching failed */
   serviceResult = kFblFailed;

   /* No valid subservice found */
   if (currProp == kDiagNoServiceProp)
   {
      /* Failed check function is known */
      if (checkFct != (void *)0)
      {
         /* Execute error handler */
         if (checkFct->errorHandlerIdx != (vuint8)kServiceErrorHandlerNone)
         {
            /* Result of error handler changes execution state */
            serviceResult = (kServiceErrorHandlerFctTable[checkFct->errorHandlerIdx])(&serviceProperties, DiagBuffer, DiagDataLength);
         }

         /* Error handler wasn't successful and NRC was not set directly */
         if ((serviceResult != kFblOk) && (DiagGetError() == kDiagErrorNone))
         {
            /* Set NRC according to check function configuration */
            if (checkFct->NRC == kDiagNrcNoResponse)
            {
               /* Quiet failure */
               DiagSetNoResponse();
               DiagProcessingDone(0);
            }
            else
            {
               /* Set NRC */
               DiagSetError(checkFct->NRC);
            }
         }
      }
      else
      {
         /*
            Operation failed but check function is unknown
            Set generic NRC
         */
         DiagNRCGeneralReject();
      }
   }
   else
   {
      /* Execute main handler */
      if (serviceProperties.mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
      {
         serviceResult = (kServiceMainHandlerFctTable[serviceProperties.mainHandlerIdx])(DiagBuffer, DiagDataLength);
      }
   }

   /* Set and clear state flags according to execution result */
   if (serviceResult == kFblOk)
   {
      FblDiagClrState(serviceProperties.stateClr);
      FblDiagSetState(serviceProperties.stateAdd);
   }
   else
   {
      FblDiagClrState(serviceProperties.stateClrFail);
   }
}

/***********************************************************************************************************************
 *  FblDiagTimerTask
 **********************************************************************************************************************/
/*! \brief       This function handles the surveillance of the tester present timer. When a timeout occurs, a reset
 *               is executed.
 *  \pre         FblDiagInit has to be executed
 **********************************************************************************************************************/
void FblDiagTimerTask( void )
{
   /* Tester present timing */
   if (TimeoutTesterValue() != 0u)
   {
      DecTimeoutTesterValue();
      if (TimeoutTesterValue() == 0u)
      {
         /*
          * Tester present timer expired:
          * Exit bootloader via reset, but force no response!!
          */
         FblDiagEcuReset(kDiagResetNoResponse, RESET_RESPONSE_NOT_REQUIRED);
      }
   }

   /* ECU reset is pending */
   if (TimeoutEcuResetValue() != 0u)
   {
      DecTimeoutEcuResetValue();
      if (TimeoutEcuResetValue() == 0u)
      {
         /* ECU reset timer expired                       */
         /* Exit bootloader via Reset, but force no response!! */
         FblDiagEcuReset(kDiagResetNoResponse, RESET_RESPONSE_NOT_REQUIRED);
      }
   }

}

/***********************************************************************************************************************
 *  FblDiagStateTask
 **********************************************************************************************************************/
/*! \brief       Handle diagnostic indications.
 *  \pre         FblDiagInit has to be executed
 **********************************************************************************************************************/
void FblDiagStateTask( void )
{

   /* Diagnostic request pending */
   if (GetDiagIndication())
   {
      /* Setup state flags */
      ClrDiagIndication();
      ClrSuppressPosRspMsg();
      ClrProcessingDone();
      DiagClrError();

      /* Indicate an ongoing service processing */
      SetServiceInProgress();

      /* Dispatch request */
      FblDiagDispatch();

      /* Call response processor in case of NRC */
      if (DiagGetError() != kDiagErrorNone)
      {
         DiagResponseProcessor(0);
      }

      /* Reset internal state in case no response was sent */
      if ((!GetProcessingDone()) && (!GetWaitForRcrRpConf()))
      {
         DiagSetNoResponse();
         DiagResponseProcessor(0);
      }
   }

   /* Check for reset request */
   /* The following preconditions have to be fulfilled:
      * Reset message confirmed
      * Pre-reset function (e.g. flag written to NV-memory) has finished
   */
   if (GetWaitEcuReset() && GetResetMsgConfirmed() && GetEcuResetFctFinished())
   {
      FblDiagDeinit();
   }

   /* ESCAN00061727: Resume suspended LibMem operation */
   FblMemResumeIndication();
}

/***********************************************************************************************************************
 *  FblDiagDeinit
 **********************************************************************************************************************/
/*! \brief       Function prepares for FBL shutdown on diagnostic service request.
 **********************************************************************************************************************/
static void FblDiagDeinit(void)
{
   /* Deinitialize verification component */
   (void)SecM_DeinitVerification(V_NULL);

   /* Deinitialize loaded memory driver(s) */
   FblDeinitMemoryDriver();

   /* Reset internal FBL states */
   FblDiagRetainState(kDiagStateMaskReset);

   /* Clear negative response indicator */
   DiagClrError();

   /* Request shutdown from communication wrapper */
   FblCwShutdownRequest(kFblCwResetEcuRegularCase);
}

/***********************************************************************************************************************
 *  FblDeinitMemoryDriver
 **********************************************************************************************************************/
/*! \brief       Deinitialize memory driver if present
 **********************************************************************************************************************/
static void FblDeinitMemoryDriver( void )
{
   if (GetDiagProgrammingSession())
   {
      if (GetMemDriverInitialized())
      {
         /* Deinitialize memory driver flash */
         ClrMemDriverInitialized();

         /* Remove memory driver from RAM-buffer */
         FblCwSetOfflineMode();
         (void)MemDriver_DeinitSync(V_NULL);
         FblCwSetOnlineMode();
      }

      /* Turn off programming voltage */
      ApplFblResetVfp();
   }
}

/* Ford specific functions  **********************************************/
#if defined( FBL_MEM_ENABLE_VERIFY_OUTPUT )
/***********************************************************************************************************************
 *  FblDiagVerification - Ford specific
 **********************************************************************************************************************/
/*! \brief       This function calls the HIS verification interface to calculate the CRC16 value over the requested
 *               address region in non-volatile memory.
 *  \pre         Address region check has been performed (FblDiagAddressRegionCheck)
 *  \param[in]   verifyParam Parameter structure for verification
 *  \return      Result of operation
 **********************************************************************************************************************/
static SecM_StatusType FblDiagVerification(V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * verifyPar)
{
   tBlockDescriptor blockDescriptor;
   tFblMemVerifyFctOutput verifyFct;

   /* Set default verification function */
   verifyFct = SecM_VerificationClassDDD;

   /*
    * Note: general address region check is expected to be performed before this
    * function is called (e.g. in FblDiagMainHandlerRequestDownload/Upload, FblDiagMainHandlerRcCheckProgDep).
    */
   if (FblLbtGetBlockDescriptorByAddressLength(verifyPar->blockStartAddress, verifyPar->blockLength, &blockDescriptor) == kFblOk)
   {
      if (SecM_Default != blockDescriptor.verifyOutput)
      {
         /* Logical block no. has been determined successfully: assign block specific verification function */
         verifyFct = (tFblMemVerifyFctOutput)blockDescriptor.verifyOutput; /* PRQA S 0313 */ /* MD_FblDiag_0313_VerifyFctOutput */
      }
   }

   /* Perform verification */
   return verifyFct(verifyPar);
}
#endif

#if defined( FBL_MEM_ENABLE_VERIFY_PIPELINED ) && ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/***********************************************************************************************************************
 *  FblDiagVerifySignature
 **********************************************************************************************************************/
/*! \brief       This function calls the HIS verification interface to calculate the CRC16 value over the requested
 *               address region in non-volatile memory (pipelined mode).
 *  \pre         Address region check has been performed (FblDiagAddressRegionCheck)
 *  \param[in]   pVerifyParam Parameter structure for verification
 *  \return      Result of operation
 **********************************************************************************************************************/
static SecM_StatusType FblDiagVerifySignature( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   SecM_StatusType result;
   SecM_LengthType byteCount;

   result = SECM_VER_ERROR;

   pipeVerifyParamCrc.sigState         = pVerifyParam->sigState;
   pipeVerifyParamCrc.sigSourceBuffer  = pVerifyParam->sigSourceBuffer;
   pipeVerifyParamCrc.sigByteCount     = pVerifyParam->sigByteCount;
   pipeVerifyParamCrc.wdTriggerFct     = pVerifyParam->wdTriggerFct;

   switch (pVerifyParam->sigState)
   {
      case SEC_HASH_INIT:
      case SEC_HASH_COMPUTE:
      case SEC_HASH_FINALIZE:
      {
         result = SecM_VerifyClassDDD(pVerifyParam);
         (void)SecM_VerifyChecksumCrc(&pipeVerifyParamCrc);

         break;
      }
      case SEC_SIG_VERIFY:
      {
         result = SecM_VerifyClassDDD(pVerifyParam);

         byteCount = pVerifyParam->sigByteCount;
         pipeVerifyParamCrc.sigSourceBuffer = &pVerifyParam->sigSourceBuffer[byteCount];
         pipeVerifyParamCrc.sigByteCount -= byteCount;

         (void)SecM_VerifyChecksumCrc(&pipeVerifyParamCrc);

         pVerifyParam->sigByteCount += pipeVerifyParamCrc.sigByteCount;

         break;
      }
      default:
      {
         /* Nothing to do */
         break;
      }
   }

   return result;
}
#endif /* FBL_MEM_ENABLE_VERIFY_PIPELINED && ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC ) */


#if defined( FBL_ENABLE_STAY_IN_BOOT )
/***********************************************************************************************************************
 *  FblDiagCheckStartMsg - Ford Specific
 **********************************************************************************************************************/
/*! \brief       Check if the OEM specific start message has been received
 *  \pre         Start message reception has to be verified by ComWrapper
 *  \param[in]   pData Pointer to received data
 *  \param[in]   length Length of received data
 *  \return      Possible return values:
 *               - kFblOk: OEM specific start message has been identified
 *               - kFblFailed: Received message doesn't equal the OEM specific start message
 **********************************************************************************************************************/
vuint8 FblDiagCheckStartMsg(const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *pData, vuintx length)
{
   vuint8 result;

   /* Initialize variables */
   result = kFblFailed;

   /* Check if received data is long enough */
   if (length >= (kDiagRqlDiagnosticSessionControl + 2u))
   {
   /* Check complete message contents for Stay-In-Boot */
   /* For Ford, this is: 0x02 0x10 0x02 (DiagnosticSessionControl/ProgrammingSession) */
      if (   ( pData[0] == (kDiagRqlDiagnosticSessionControl + 1u)) /* Add the service ID */
          && ( pData[kDiagFmtServiceId + 1u] == kDiagSidDiagnosticSessionControl)
          && ((pData[kDiagFmtSubparam + 1u] & 0x7Fu) == kDiagSubProgrammingSession)) /* Suppressed bit may be true or false */
      {
         /* Start message received */
         result = kFblOk;
      }
   }

   return result;
}
#endif /* FBL_ENABLE_STAY_IN_BOOT */

/***********************************************************************************************************************
 *  FblDiagGetSegmentList
 **********************************************************************************************************************/
/*! \brief       Returns a list of download segments which have been programmed into a certain logical block
 *  \param[in]   blockIdx Index of the logical block for which the associated download segments shall be returned
 *  \param[out]  blockSegList Pointer to local segment list which shall keep the respective download segments
 *  \return      Number of download segment which are associated with the requested logical block
 **********************************************************************************************************************/
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, V_MEMRAM1 tDiagSegmentList V_MEMRAM2 V_MEMRAM3 * blockSegList)
{
   vuint8 listIdx;

   blockSegList->nrOfSegments = 0u;

   for (listIdx = 0u; listIdx < blockHeader[blockIdx].nrOfSegments; listIdx++)
   {
      blockSegList->segmentInfo[blockSegList->nrOfSegments] = diagSegmentList.segmentInfo[blockHeader[blockIdx].segmentIdx[listIdx]];
      blockSegList->nrOfSegments++;
   }

   return blockSegList->nrOfSegments;
}

#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* Communication wrapper callback functions **********************************/
#define FBLDIAG_RAMCODE_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblDiagTxErrorIndication
 **********************************************************************************************************************/
/*! \brief       Indicates that an error has occurred during transmission.
 *  \details     According to ISO-14229, now the S3 timer must be restarted.
 *  \pre         TP must been initialized
 *  \param[in]   cwMsgType Message type of indication (defined in CW layer):
 *               - kFblCwMsgTypeRcrRp: Request correctly received/response pending message
 *               - kFblCwMsgTypeNormal: Normal request message
 **********************************************************************************************************************/
void FblDiagTxErrorIndication( vuint8 cwMsgType )
{
   /* Do not reset states for RCR-RP confirmation */
   if (cwMsgType != kFblCwMsgTypeRcrRp)
   {
      DiagResetResponseHandling();
   }
}

/***********************************************************************************************************************
 *  FblDiagRxStartIndication
 **********************************************************************************************************************/
/*! \brief       Data reception call-back function to start diagnostic service processing.
 *  \details     Valid TesterPresent requests will simply start the S3 timer and will not be processed.
 *  \pre         TP reception successful
 **********************************************************************************************************************/
void FblDiagRxStartIndication( void )
{
   /* Halts the S3 timer while receiving a diagnostic message */
   StopTesterTimeout();
}

/***********************************************************************************************************************
 *  FblDiagRxErrorIndication
 **********************************************************************************************************************/
/*! \brief       Indicates that an error has occurred during reception.
 *  \details     According to ISO-14229, now the S3 timer must be restarted.
 *  \pre         TP must been initialized
 **********************************************************************************************************************/
void FblDiagRxErrorIndication( void )
{
   DiagResetResponseHandling();
}

/***********************************************************************************************************************
 *  FblDiagRxIndication
 **********************************************************************************************************************/
/*! \brief       Data reception call-back function to start diagnostic service processing.
 *  \details     Valid TesterPresent requests will simply start the S3 timer and will not be processed.
 *  \pre         TP reception successful
 *  \param[in]   pbDiagBuffer Pointer to diagnostic buffer
 *  \param[in]   rxDataLength Number of bytes to be received
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
void FblDiagRxIndication( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType rxDataLength )
{
   /* Check for functionally addressed valid TesterPresent message with SuppressPosRsp */
   if ((kDiagSidTesterPresent == pbDiagBuffer[kDiagFmtServiceId])
        && (kDiagSuppressPosRspMsgIndicationBit == pbDiagBuffer[kDiagFmtSubparam])
        && (kDiagRqlTesterPresent == (rxDataLength - 1u))
        && GetFunctionalRequest()
      )
   {
      /* Bypass logic for this TesterPresent message */
      DiagResetResponseHandling();  /* Reset tester timeout */
      FblCwResetRxBlock();
   }
   else
   {
      /* Start regular service processing */
      DiagClrError();
      diagResponseFlag = kDiagPutResponse;
      diagServiceCurrent = pbDiagBuffer[kDiagFmtServiceId];

      SetP2Timer(kFblDiagTimeP2);   /* Reset P2 timer (initial timing) */
      SetP2Timeout(kFblDiagTimeP2); /* PRQA S 3493 */ /* MD_FblDiag_3493 */
      DiagDataLength = rxDataLength - 1u;
      SetDiagIndication();

#if defined( FBL_MEM_ENABLE_PIPELINING )
      if (FblMemTaskIsPending())
      {
         FblMemRxNotification();
      }
#endif
   }

   /* Initialize security seed */
   (void)ApplFblSecuritySeedInit();

#if defined( FBL_ENABLE_SLEEPMODE )
   /* Request received - reload sleep counter */
   FblSleepCounterReload();
#endif
}

/***********************************************************************************************************************
 *  FblDiagTxConfirmation
 **********************************************************************************************************************/
/*! \brief       TP transmission call-back function.
 *  \pre         TP transmission successful
 *  \param[in]   cwMsgType Message type of indication (defined in CW layer):
 *               - kFblCwMsgTypeRcrRp: Request correctly received/response pending message
 *               - kFblCwMsgTypeNormal: Normal request message
 **********************************************************************************************************************/
void FblDiagTxConfirmation( vuint8 cwMsgType )
{
   /* Do not reset states for RCR-RP confirmation */
   if (cwMsgType != kFblCwMsgTypeRcrRp)
   {
      DiagResetResponseHandling();
   }

   /* Diag wants to reset FBL after sending an RCR-RP */
   if (GetWaitEcuReset())
   {
      SetResetMsgConfirmed();
   }
}

/***********************************************************************************************************************
 *  FblDiagRxGetPhysBuffer
 **********************************************************************************************************************/
/*! \brief       Diagnostic buffer management function for physical requests.
 *  \param[in]   rxDataLength Number of bytes to be received
 *  \return      Possible return values:
 *               - Pointer to diagnostic buffer
 *               - V_NULL in case no buffer is available
 **********************************************************************************************************************/
vuint8* FblDiagRxGetPhysBuffer( tCwDataLengthType rxDataLength )
{
   vuint8* result;

   /* Check request length and if buffer is free */
   if ((rxDataLength > 0u )
        && (FBL_DIAG_BUFFER_LENGTH >= rxDataLength)
        && (!GetDiagBufferLocked()))
   {
      /* Initialize state variables */
      ClrFunctionalRequest();

      /* Lock buffer  */
      SetDiagBufferLocked();

      /* Return diagnostic buffer */
      result = DiagBuffer;
   }
   else
   {
      /* Illegal buffer request, return null pointer */
      result = V_NULL;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagRxGetFuncBuffer
 **********************************************************************************************************************/
/*! \brief       Diagnostic buffer management function for functional requests.
 *  \param[in]   rxDataLength Number of bytes to be received
 *  \return      Possible return values:
 *               - Pointer to diagnostic buffer
 *               - V_NULL in case no buffer is available
 **********************************************************************************************************************/
vuint8* FblDiagRxGetFuncBuffer( tCwDataLengthType rxDataLength )
{
   /* Process functional request like physical request */
   vuint8* diagnosticBuffer = FblDiagRxGetPhysBuffer(rxDataLength);

   /* Set functional request indication */
   if (V_NULL != diagnosticBuffer)
   {
      SetFunctionalRequest();
   }

   return diagnosticBuffer;
}
#define FBLDIAG_RAMCODE_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  FblDiagMemPreWrite
 **********************************************************************************************************************/
/*! \brief       Function performs actions before FblLib_Mem calls the memory driver write function.
 *  \return      Possible return values:
 *               - kFblOk: Pre-write operations are successful
 *               - kFblFailed: Pre-write operations failed
 **********************************************************************************************************************/
tFblResult FblDiagMemPreWrite( void )
{
   FblCwSetOfflineMode();

   return kFblOk;

}

/***********************************************************************************************************************
 *  FblDiagMemPostWrite
 **********************************************************************************************************************/
/*! \brief       Checks if message is the platform message or not
 *  \return      Possible return values:
 *               - kFblOk: Post-write operations are successful
 *               - kFblFailed: Post-write operations failed
 **********************************************************************************************************************/
tFblResult FblDiagMemPostWrite( void )
{
   FblCwSetOnlineMode();

   return kFblOk;
}

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/***********************************************************************************************************************
 *  FblDiagValidateToken
 **********************************************************************************************************************/
/*! \brief       Validate the token against main validity rules
 *  \return      Possible return values:
 *               - tTokenHdlResult: result of the validation operation
 **********************************************************************************************************************/
/* PRQA S 6010, 6030 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC */
static tTokenHdlResult FblDiagValidateToken( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf )
{
   tTokenHdlResult result;
   vuintx idx;
   vuint8 const *fesnPtr = FblDiagGetFesn();

   result = kTokenHdlrInternalFailed;

   /* Check if Server Message ID is required and valid */
   if (FblDiagIsTokenMsgIDRequired(tokenBuf))
   {
      if (FblDiagCheckServerMessageId(tokenBuf) == kFblOk)
      {
         result = kTokenHdlrOk;
      }
   }

   /* Is KeyID present? */
   if ( (result == kTokenHdlrOk) &&
        (FblDiagIsTokenKeyIDRequired(tokenBuf)) )
   {
      /* KeyID must not be present */
      result = kTokenHdlrInternalFailed;
   }

   /* Are reserved bits set? */
   if ( (result == kTokenHdlrOk) &&
        (FblDiagIsTokenReserverdBitsSet(tokenBuf)) )
   {
      /* Reserved bits must not be set */
      result = kTokenHdlrInternalFailed;
   }

   /* Is FESN present? */
   if ( (result == kTokenHdlrOk) &&
        FblDiagIsTokenFesnRequired(tokenBuf) &&
        (FblDiagGetTokenCommandType(tokenBuf) != FBL_DIAG_TOKEN_CMD_PROGKEY) )
   {
      /* Check if FESN match */
      for (idx = 0u; idx < FBL_DIAG_TOKEN_FESN_LEN; idx++)
      {
         if (FblDiagGetTokenFesn(tokenBuf)[idx] != fesnPtr[idx])
         {
            result = kTokenHdlrFesnFailed;
         }
      }
   }

   /* For Mode 5 check the first three characters of the FESN */
   if ( (result == kTokenHdlrOk) &&
        (FblDiagGetTokenCommandType(tokenBuf) == FBL_DIAG_TOKEN_CMD_PROGKEY) )
   {
      if (FblDiagIsTokenFesnRequired(tokenBuf))
      {
         /* FESN required bit must not be set for mode 5 token */
         result = kTokenHdlrFesnFailed;
      }
      else
      {
         /* Check if the first 3 character of the FESN match */
         for (idx = 0u; idx < FBL_DIAG_TOKEN_MOD5_FESN_LEN; idx++)
         {
            if (FblDiagGetTokenPayloadFesn(tokenBuf)[idx] != fesnPtr[idx])
            {
               result = kTokenHdlrFesnFailed;
            }
         }
      }
   }

   /* Check if CPU destination match */
   if ((result == kTokenHdlrOk)
        && (FblDiagGetTokenCPUDestination(tokenBuf) != FBL_DIAG_TOKEN_CPU_DEST))
   {
      result = kTokenHdlrInternalFailed;
   }

   /* Check if service type match */
   if ((result == kTokenHdlrOk)
        && (FblDiagGetTokenServiceType(tokenBuf) != FBL_DIAG_TOKEN_SERVICE_TYPE))
   {
      result = kTokenHdlrInternalFailed;
   }

   /* Check if crypto type match */
   if ((result == kTokenHdlrOk)
        && (FblDiagGetTokenCryptoType(tokenBuf) != FBL_DIAG_TOKEN_CRYPTOTYPE))
   {
      result = kTokenHdlrInternalFailed;
   }

   /* Check if payload size match */
   if (result == kTokenHdlrOk)
   {
      if (FblDiagGetTokenCommandType(tokenBuf) == FBL_DIAG_TOKEN_CMD_PROGKEY)
      {
         if (FblDiagGetTokenPayloadSize(tokenBuf) != FBL_DIAG_TOKEN_PAYLOAD_SIZE_MODE5)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
      else
      {
         if (FblDiagGetTokenPayloadSize(tokenBuf) != FBL_DIAG_TOKEN_PAYLOAD_SIZE_MODE0_4)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }

   /* Check if correct key index match the token public key */
   if (result == kTokenHdlrOk)
   {
      if (FblDiagGetTokenCommandType(tokenBuf) == FBL_DIAG_TOKEN_CMD_PROGKEY)
      {
         if (FblDiagGetTokenKeyIndex(tokenBuf) != FBL_DIAG_TOKEN_KEY_INDEX_0)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
      else
      {
         if (FblDiagGetTokenKeyIndex(tokenBuf) != FBL_DIAG_TOKEN_KEY_INDEX_1)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }

   /* Check protocol version */
   if ( (result == kTokenHdlrOk) &&
        (!FblDiagIsTokenProtocolVersionCorrect(tokenBuf)))
   {
      result = kTokenHdlrProtocolFailed;
   }

   /* Check token name length */
   if ( (result == kTokenHdlrOk) &&
        (FblDiagGetTokenTokenNameLength(tokenBuf) != FBL_DIAG_TOKEN_NAME_LENGTH) )
   {
      result = kTokenHdlrInternalFailed;
   }

   /* Check token name */
   if (result == kTokenHdlrOk)
   {
      vuint8 const tokenName[(FBL_DIAG_TOKEN_NAME_LENGTH + 1u)] = FBL_DIAG_TOKEN_NAME;

      for (idx = 0u; idx < FBL_DIAG_TOKEN_NAME_LENGTH; idx++)
      {
         if (FblDiagGetTokenTokenName(tokenBuf)[idx] != tokenName[idx])
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagCheckServerMessageId
 **********************************************************************************************************************/
/*! \brief       Check if Server Message ID is valid
 *  \return      Possible return values:
 *               - kFblOk: Server Message ID is valid
 *               - kFblFailed: Server Message ID is not valid
 **********************************************************************************************************************/
/* PRQA S 6010, 6030 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC */
static tFblResult FblDiagCheckServerMessageId( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf )
{
   tFblResult result = kFblOk;
   tFblResult srvMsgIdCompareFinished = kFblFailed;
   vuint8 lastServerMessageId[8] = {0};
   const vuint8 *currentServerMessageId = V_NULL;
   vuint8 srvMsgIdFlag;
   vuintx idx;

   /* Check if Server Message ID was stored before */
   if (ApplFblReadSrvMsgIDFlag(&srvMsgIdFlag) == kFblOk)
   {
      if (srvMsgIdFlag == (vuint8)FBL_DIAG_SRVMSGID_STORED)
      {
         /* Read last Server Message ID from NV Memory */
         result = ApplFblReadLastServerMsgId(lastServerMessageId);
      }
      else
      {
         /* Initialize last Server Message ID */
         result = ApplFblWriteLastServerMsgId(lastServerMessageId);

         if (result == kFblOk)
         {
            /* Set Server Message ID Flag so next time it will be read from NV Memory */
            srvMsgIdFlag = (vuint8)FBL_DIAG_SRVMSGID_STORED;
            result = ApplFblWriteSrvMsgIDFlag(&srvMsgIdFlag);
         }
      }
   }
   else
   {
      result = kFblFailed;
   }

   if (result == kFblOk)
   {
      result = kFblFailed;

      /* Read current Server Message ID from token buffer and compare with last Server Message ID */
      currentServerMessageId = FblDiagGetTokenServerMsgIdPtr(tokenBuf);

      /* Check each byte, starting from MSB (index 0 due to network byte order) */
      for (idx = 0u; idx < 8u; idx++)
      {
         if (currentServerMessageId[idx] > lastServerMessageId[idx])
         {
            /* Received server message ID is higher than last server message ID */
            result = kFblOk;
            srvMsgIdCompareFinished = kFblOk;
         }
         else if (currentServerMessageId[idx] < lastServerMessageId[idx])
         {
            /* Received server message ID is lower than last server message ID. Break loop so result
             * cannot be ok if a byte with lower significance has a higher value in the current server
             * message ID */
            srvMsgIdCompareFinished = kFblOk;
         }
         else
         {
            /* Values are the same, continue with check */
         }

         if (srvMsgIdCompareFinished == kFblOk)
         {
            break;
         }
      }
   }

   if (result == kFblOk)
   {
      result = ApplFblWriteLastServerMsgId(currentServerMessageId);
   }

   return result;
}

/***********************************************************************************************************************
 *  FblDiagTokenCallout
 **********************************************************************************************************************/
/*! \brief       Calls for each Token mode the related Callout
 *  \param[in]   cmdType The Token mode from TokenCommandType
 *  \return      Possible return values:
 *               - tTokenHdlResult: result of the callout function
 **********************************************************************************************************************/
static tTokenHdlResult FblDiagTokenCallout( vuint8 cmdType, const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
   tTokenHdlResult result;

   result = kTokenHdlrOk;

   switch (cmdType)
   {
      case FBL_DIAG_TOKEN_CMD_REVERTPROD:
      {
         ApplFblTokenRevertKey(tokenBuf, tokenLength);
         break;
      }
      case FBL_DIAG_TOKEN_CMD_USEDEVPERM:
      {
         ApplFblTokenUseDevPermKey(tokenBuf, tokenLength);
         break;
      }
      case FBL_DIAG_TOKEN_CMD_USEDEVTEMP:
      {
         ApplFblTokenUseDevTempKey(tokenBuf, tokenLength);
         break;
      }
      case FBL_DIAG_TOKEN_CMD_USEDEVDATE:
      {
         result = ApplFblTokenUseDevDateKey(tokenBuf, tokenLength);
         break;
      }
      case FBL_DIAG_TOKEN_CMD_USEDEVIGNI:
      {
         result = ApplFblTokenUseDevIgniKey(tokenBuf, tokenLength);
         break;
      }
      case FBL_DIAG_TOKEN_CMD_PROGKEY:
      {
         ApplFblTokenProgKey(tokenBuf, tokenLength);
         break;
      }
      default:
      {
         result = kTokenHdlrInternalFailed;
         break;
      }
   }

   return result;
}
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */


#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblDiag_0306:
      Reason: Address conversion between integer values and pointers is required to allow for hardware independent
              configuration and address range checks.
      Risk: The size of integer required to hold the result of a pointer cast is implementation-defined.
      Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                  specific basis. The correctness of the respective implementation is verified by runtime tests.

   MD_FblDiag_0313_WDTriggerFctType:
      Reason: Security module expects a watchdog handler with return type 'void'. The usage of a wrapper function is
              avoided due to higher voted requirements for minimized stack and runtime usage applied on the code.
      Risk: Potentially undefined behavior of the used compiler which usually leads to a warning or error during
            compilation.
      Prevention: The respective functionality is part of integration testing and will hence be verified before delivery.

   MD_FblDiag_0313_VerifyFctOutput:
      Reason: Signature/checksum verification functions are stored as void pointers as actual type is not known at
              configuration time.
      Risk: Function signature not compatible with expected type.
      Prevention: Integrator has to take care the configured functions match with the expected signature.

   MD_FblDiag_0314_MemCpy:
      Reason: The copy function have a void pointer as a function parameter.
      Risk: No risk, because the underlying vuint8 pointer type is known.
      Prevention: No prevention necessary.

   MD_FblDiag_0314_KeyPtr:
      Reason: The verification parameter structure has a void pointer member for the key to support different
              key types for different use cases
      Risk: No risk, because the underlying key pointer type is known.
      Prevention: No prevention necessary.

   MD_FblDiag_1514:
      Reason: The variable is used by other modules and can't be declared static.
      Risk: Name conflicts.
      Prevention: Compile and link of the different variants in the component and integration test.

   MD_FblDiag_2214:
      Reason: Assertion macros have to be disabled in production code and are used only for development.
      Risk: Assertion code may be enabled in production code unintentionally. If a assertion condition is unexpectedly
            false, the code is active. A problem may occur if the Macro is additionally changed from single statement
            to multiple statement.
      Prevention: Macro is not allowed to be changed without review. Development code is automatically disabled via
                  configuration of project state "Production".

   MD_FblDiag_2741:
      Reason: Some if conditions seems to be static only on certain compiling conditions.
      Risk: A condition is always false or true independently from the compiling configuration.
      Prevention: Code inspection and test of the different variants in the component test.

   MD_FblDiag_2790_kDiagStateMaskAllLong:
      Reason: Create a mask where all bits are set. Generic implementation shifts therefore too many bytes.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblDiag_2880_UnreachableCode:
      Reason: A code section can be executed only based on some static compile time configurations.
      Risk: A code section is never executed independently from the compiling configuration.
      Prevention: Code inspection and test of the different variants in the component test.

   MD_FblDiag_2889:
      Reason: Multiple return paths are used to reduce code complexity, increase readability and reducing nesting level.
      Risk: Some operations intended to conclude the function (e.g. states cleaning) can be unintentionally jumped.
      Prevention: Code inspection and runtime tests.

   MD_FblDiag_2918:
      Reason: Assignment to pointer is done within a function to make code more readable
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblDiag_2983_2985_RedundantAssignment:
      Reason: Assignments are redundant only on certain configurations
      Risk: Some code part can be really redundant in all possible configurations.
      Prevention: Code review.

   MD_FblDiag_3218:
      Reason: The local data of this module is kept at a central location for a better overview and maintenance.
      Risk: Scope is larger than required (whole file instead of one function). Some other function could access
            the variable.
      Prevention: Restrict the functionality in this module to the intended purpose. Don't add functions which shall not
                  be able to access the local data.

   MD_FblDiag_3493:
      Reason: Depending on the configuration the value is not always true.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblDiag_3678:
      Reason: The buffer is actually modified and can therefore not be a const buffer.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblDiag_5087_DiagDef:
      Reason: Multiple includes of fbl_diag.def are required for building the configuration tables of the diagnostic layer.
      Risk: Resulting code is difficult to understand and maintain.
      Prevention: All changes to the affected code parts have to be reviewed by the module responsible. On a mid term
       view, the respective implementation will be replaced by generated code.

   MD_FblDiag_ConstValue:
      Reason: Value is constant depending on configuration aspects or platform specific implementation. This leads to
              constant control expressions, unreachable code or redundant operations.
      Risk: Wrong or missing functionality.
      Prevention: Code inspection and test of the different variants in the component test.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_DIAG.C
 **********************************************************************************************************************/

