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
 *                                 ESCAN00066098    No changes
 *                                 ESCAN00059341    No changes
 *  02.01.00   2014-02-17  vishrf  ESCAN00073727    Session timeout is not executed when rx interrupt is enabled
 *                         visci   ESCAN00074423    Added gateway support
 *                                 ESCAN00074447    No changes
 *  02.02.00   2014-05-28  visci   ESCAN00075558    Removed SIP version check
 *  02.03.00   2014-08-15  visci   ESCAN00076997    Reworked startup message check
 *  02.04.00   2014-10-16  visci   ESCAN00078054    Updated transparent gateway support for SLP7
 *                                 ESCAN00078099    Renamed FblDiagTask FblDiagTimerTask
 *                                 ESCAN00078681    Improved security level handling
 *                                 ESCAN00078424    No changes
 *  02.05.00   2015-02-16  visci   ESCAN00081013    No changes
 *  02.06.00   2015-05-19  vaddod  ESCAN00083057    No changes
 *  02.07.00   2015-10-22  visci   ESCAN00085448    SBL verification might be bypassed
 *                                 ESCAN00085459    No changes
 *                                 ESCAN00085637    No changes
 *  02.07.01   2015-11-12  visjop  ESCAN00086446    No changes
 *             2015-11-30  visci   ESCAN00086872    No changes
 *  02.08.00   2016-01-12  visci   ESCAN00087405    Harmonized configuration of maximum number of DIDs
 *                                 ESCAN00087747    Reworked configuration switches
 *                                 ESCAN00087748    Added support for routine UpdateSecurityBytes
 *                                 ESCAN00087750    No changes
 *                                 ESCAN00087753    No changes
 *  02.09.00   2016-03-02  visdkl  ESCAN00088680    Added support for Mazda Security Algorithm
 *                                 ESCAN00088680    Support configurable SWDL Version
 *  02.09.01   2016-04-07  vistns  ESCAN00089238    Compiler warning: multiple warnings
 *  02.09.02   2016-04-27  visci   ESCAN00089381    No changes
 *  02.10.00   2016-05-02  vishrf  ESCAN00087939    Support sleep mode timeout in bootloader
 *                                 ESCAN00087940    Support multiple diagnostic tester
 *                                 ESCAN00089306    Add support for DID 0xD021 Current Diagnostic Application
 *                                 ESCAN00089677    Support transitional response handling configuration
 *                                 ESCAN00089842    Support DID 0xF186 Active Diagnostic Session
 *  03.00.00   2016-07-01  visci   ESCAN00088607    No changes
 *                                 ESCAN00090374    Added support for software signing solution
 *  03.00.01   2017-03-13  visci   ESCAN00094120    No changes
 *  03.01.00   2017-06-05  vadcel  ESCAN00095425    No changes
 *  03.01.01   2017-09-05  visdkl  ESCAN00096537    No changes
 *  03.01.02   2017-10-30  vadjbi  ESCAN00096944    No changes
 *                                 ESCAN00097248    No changes
 *  03.02.00   2017-12-07  vadcel  ESCAN00097677    No changes
 *  03.02.01   2018-03-23  visdkl  ESCAN00098896    No changes
 *  03.03.00   2018-04-10  visdkl  ESCAN00099059    Support non-kernelbuilder main module
 *  03.03.01   2018-06-14  visdkl  ESCAN00099687    No changes
 *             2018-07-04  visdkl  ESCAN00099466    Compiler error: shift count is too large
 *  03.03.02   2018-08-21  visci   ESCAN00100454    No changes
 *                                 ESCAN00100459    No changes (see fbl_valstruct_oem.h)
 *  03.04.00   2018-11-26  visdkl  ESCAN00100766    No changes
 *                         visrr   ESCAN00101451    No changes
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    No changes
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    No changes
 *                                 ESCAN00102061    No changes
 *                                 ESCAN00102506    Added RoutineControl services for OTA
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    No changes
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    No changes
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    No changes
 *  04.01.01   2019-09-09  visrcn  ESCAN00103863    No changes
 *  04.01.02   2019-09-18  visrcn  ESCAN00104292    No changes
 *  04.01.03   2019-10-07  visrcn  ESCAN00104507    Missing compatibility macros
 *  04.01.04   2020-01-14  visjdn  ESCAN00105039    No changes
 *  04.01.05   2020-01-22  visrcn  ESCAN00105356    No changes
 *  04.01.06   2020-02-04  visrcn  ESCAN00104331    No changes
 *                                 ESCAN00105007    No changes
 *  04.01.07   2020-03-20  visrie  ESCAN00104555    No changes
 *  04.01.08   2020-04-01  visjdn  ESCAN00105201    No changes
 *  04.01.09   2020-05-05  vistmo  ESCAN00105551    No changes
 *  04.01.10   2020-06-29  visjdn  ESCAN00106253    No changes
 *  04.01.11   2020-07-07  visjdn  ESCAN00106303    No changes
 *  04.01.12   2020-09-10  vistbe  ESCAN00107348    No changes
 *  04.02.00   2020-10-01  visrie  FBL-1611         No changes
 *  04.03.00   2020-11-16  vistmo  FBL-1288         No changes
 *  04.04.00   2020-12-10  vistmo  FBL-2141         Add support for Software Signing Solution 2.0
 *                         visrcn  ESCAN00107410    No changes
 *  04.05.00   2021-01-11  visjdn  FBL-2439         No changes
 *  04.05.01   2021-02-24  vishor  ESCAN00108271    Read Data by ID Software Download Specification Version returns the wrong value
 *                                 FBL-3035         Added/adapted MemMap sections
 *  04.05.02   2021-04-19  vishor  ESCAN00108500    No changes
 *  04.05.03   2021-05-10  vistbe  ESCAN00109048    No changes
 *  04.06.00   2021-06-28  vistbe  FBL-3522         Updated signing solution (new token format)
 *                                 ESCAN00108908    No changes
 *  04.06.01   2021-10-22  vistbe  ESCAN00110414    No changes
 *                                 ESCAN00110495    RTC Token Update return NRC$13 for Mode 0-4
 *  04.06.02   2022-01-31  visjdn  ESCAN00110767    No changes
 *  04.06.03   2022-03-29  visrie  ESCAN00111600    No changes
 *  04.07.00   2022-07-04  vismix  FBL-5233         No changes
 *                                 ESCAN00109981    No changes
 *                                 ESCAN00106367    No changes
 *                                 ESCAN00111443    No changes
 *  04.08.00   2022-07-06  vismix  FBL-4527         Support User Callouts for Mode Switching
 *  04.08.01   2022-07-27  visjns  ESCAN00112049    No changes
 *                                 ESCAN00112263    No changes
 *  04.09.00   2022-08-15  vistmo  ESCAN00112435    No changes
 *                                 ESCAN00112575    No changes
 *  04.09.01   2022-10-17  vismix  ESCAN00112879    No changes
 *  04.09.02   2023-01-13  vismix  ESCAN00112890    No changes
 *                                 ESCAN00113612    No changes
 *  04.10.00   2023-02-09  vistmo  ESCAN00112972    No changes
 *                                 ESCAN00113835    No changes
 *                                 ESCAN00113843    No changes
 *                                 ESCAN00113764    RID 7013 (token download) is always supported
 *                                 FBL-6438         No changes
 *  04.10.01   2023-03-13  visjns  ESCAN00113919    No changes
 *  04.10.02   2023-05-11  vismix  ESCAN00113831    No changes
 **********************************************************************************************************************/

#ifndef FBL_DIAG_H
#define FBL_DIAG_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblDiag_14229_Ford CQComponent : Implementation */
#define FBLDIAG_14229_FORD_VERSION           0x0410u
#define FBLDIAG_14229_FORD_RELEASE_VERSION   0x02u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#ifndef kDiagCallCycle
# define kDiagCallCycle                                  TpCallCycle /* Same call cycle as TP */
#endif

#define kDiagPutResponse                                 ((vuint8) 0x01u)

/* -- Defines of diag services -- */
#define kDiagSidDiagnosticSessionControl                 ((vuint8) 0x10u)
#define kDiagSidEcuReset                                 ((vuint8) 0x11u)
#define kDiagSidReadDataByIdentifier                     ((vuint8) 0x22u)
#define kDiagSidSecurityAccess                           ((vuint8) 0x27u)
#define kDiagSidWriteDataByIdentifier                    ((vuint8) 0x2Eu)
#define kDiagSidRoutineControl                           ((vuint8) 0x31u)
#define kDiagSidRequestDownload                          ((vuint8) 0x34u)
#define kDiagSidRequestUpload                            ((vuint8) 0x35u)
#define kDiagSidTransferData                             ((vuint8) 0x36u)
#define kDiagSidRequestTransferExit                      ((vuint8) 0x37u)
#define kDiagSidTesterPresent                            ((vuint8) 0x3Eu)

/* -- Defines for address and length format identifier -- */
/* Not more than 4 byte addresses and lengths can be handled */
#if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
#define kDiagSubMinLengthFormat                          ((vuint8) 0x04u)
#else
#define kDiagSubMinLengthFormat                          ((vuint8) 0x01u)
#endif
#define kDiagSubMaxLengthFormat                          ((vuint8) 0x04u)
/* Includes memory identifier */
#if defined( FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI )
#define kDiagSubMinAddrFormat                            ((vuint8) 0x04u)
#else
#define kDiagSubMinAddrFormat                            ((vuint8) 0x02u)
#endif
#define kDiagSubMaxAddrFormat                            ((vuint8) 0x04u)
#define kDiagSubMemType                                  ((vuint8) 0x00u)
#define kDiagSubFlashDrvMemType                          ((vuint8) 0x02u)

#define kDiagSubNoEncryption                             ((vuint8) 0x00u)
#define kDiagSubNoCompression                            ((vuint8) 0x00u)
#define kDiagSubNoDataProcessing                         ((vuint8) ((kDiagSubNoCompression << 4u) | kDiagSubNoEncryption))
#define kDiagSubDefaultCompression                       ((vuint8) 0x01u)

/* -- Defines of diag subservices -- */
#define kDiagSuppressPosRspMsgIndicationBit              ((vuint8) 0x80u)

/* DiagnosticSessionControl */
#define kDiagSubDefaultSession                           ((vuint8) 0x01u)
#define kDiagSubProgrammingSession                       ((vuint8) 0x02u)

/* ECUReset */
#define kDiagSubHardReset                                ((vuint8) 0x01u)

/* TesterPresent */
#define kDiagSubZeroSubFunction                          ((vuint8) 0x00u)

/* RoutineControl request, routineControlType */
#define kDiagSubStartRoutine                             ((vuint8) 0x01u)
#define kDiagSubStopRoutine                              ((vuint8) 0x02u)
#define kDiagSubRequestRoutineResults                    ((vuint8) 0x03u)

/* RoutineControl response, RoutineType (Ford specific) */
#define kDiagSubRoutineType1_Sync                        ((vuint8) 0x01u)
#define kDiagSubRoutineType2_AsyncFiniteNoStop           ((vuint8) 0x02u)
#define kDiagSubRoutineType3_AsyncFiniteOrStop           ((vuint8) 0x03u)

/* RoutineControl response, RoutineStatus (Ford specific) */
#define kDiagSubRoutineStatusCompleted                   ((vuint8) 0x00u)
#define kDiagSubRoutineStatusAborted                     ((vuint8) 0x01u)
#define kDiagSubRoutineStatusActive                      ((vuint8) 0x02u)
#define kDiagSubRoutineApplInvalid                       ((vuint8) 0x01u)
#define kDiagSubRoutineApplValid                         ((vuint8) 0x02u)

/* RoutineControl, RoutineIdentifier */
#define kDiagRoutineIdEraseMemory                        ((vuint16) 0xFF00u)
#define kDiagRoutineIdCheckProgDep                       ((vuint16) 0xFF01u)
#define kDiagRoutineIdActivateSbl                        ((vuint16) 0x0301u)
#define kDiagRoutineIdCheckValidApp                      ((vuint16) 0x0304u)
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
# define kDiagRoutineIdTokenDownload                     ((vuint16) 0x7013u)
# endif
#endif
#define kDiagRoutineIdUseInactMemPart                    ((vuint16) 0x0210u)
#define kDiagRoutineIdActInactiveMemPart                 ((vuint16) 0x0213u)
#define kDiagRoutineIdUpdateSecBytes                     ((vuint16) 0x0305u)

/* -- Response Identifier -- */
/* Negative response SID */
#define kDiagRidNegativeResponse                         ((vuint8) 0x7Fu)

/* Data identifier for ReadDataByIdentifier service */
#if !defined( kDiagDataIdActiveDiagnosticSession )
# define kDiagDataIdActiveDiagnosticSession              ((vuint16) 0xD100u)
#endif
#define kDiagDataIdSwdlVersion                           ((vuint16) 0xF162u)
#if defined( FBL_DIAG_ENABLE_DID_CURRENT_DIAG_APP )
# if !defined( kDiagDataIdBootloaderCurrentDiagnosticApp )
#  define kDiagDataIdBootloaderCurrentDiagnosticApp      ((vuint16) 0xD021u)
# endif
#endif
#if !defined( kDiagSwdlVersion )
# define kDiagSwdlVersion                                ((vuint8) 0x07u)
#endif

/* -- Negative Response Codes -- */
#define kDiagErrorNone                                   ((vuint8) 0x00u)
#define kDiagNrcGeneralReject                            ((vuint8) 0x10u)
#define kDiagNrcServiceNotSupported                      ((vuint8) 0x11u)
#define kDiagNrcSubFunctionNotSupported                  ((vuint8) 0x12u)
#define kDiagNrcIncorrectMessageLengthOrInvalidFormat    ((vuint8) 0x13u)
#define kDiagNrcResponseTooLong                          ((vuint8) 0x14u)
#define kDiagNrcBusyRepeatRequest                        ((vuint8) 0x21u)
#define kDiagNrcConditionsNotCorrect                     ((vuint8) 0x22u)
#define kDiagNrcRequestSequenceError                     ((vuint8) 0x24u)
#define kDiagNrcRequestOutOfRange                        ((vuint8) 0x31u)
#define kDiagNrcSecurityAccessDenied                     ((vuint8) 0x33u)
#define kDiagNrcInvalidKey                               ((vuint8) 0x35u)
#define kDiagNrcExceedNumberOfAttempts                   ((vuint8) 0x36u)
#define kDiagNrcRequiredTimeDelayNotExpired              ((vuint8) 0x37u)
#define kDiagNrcUploadDownloadNotAccepted                ((vuint8) 0x70u)
#define kDiagNrcTransferDataSuspended                    ((vuint8) 0x71u)
#define kDiagNrcGeneralProgrammingFailure                ((vuint8) 0x72u)
#define kDiagNrcWrongBlockSequenceCounter                ((vuint8) 0x73u)
#define kDiagNrcRcrResponsePending                       ((vuint8) 0x78u)
#define kDiagNrcSubfunctionNotSupportedInActiveSession   ((vuint8) 0x7Eu)
#define kDiagNrcServiceNotSupportedInActiveSession       ((vuint8) 0x7Fu)
#define kDiagNrcNoResponse                               ((vuint8) 0xFFu)

/* Length (number of bytes) of the maxNumberOfBlockLength parameter in the RequestDownload/-Upload response */
#define kDiagMaxNumberOfBlockLengthLength                ((vuint8) 0x02u)

/* Maximum supported DID requests */
#if !defined( FBL_MAX_DID_COUNT )
# define FBL_MAX_DID_COUNT                               5u
#endif

/* PRQA S 3453 TAG_FblDiag_3453_2 */ /* MD_MSR_FctLikeMacro */
/* -- Macros for diag exceptions -- */
#define DiagSetError(errorNo)                            (diagErrorCode = (errorNo))
#define DiagClrError()                                   (diagErrorCode = kDiagErrorNone)
#define DiagGetError()                                   (diagErrorCode)
#define DiagNRCGeneralReject()                           DiagSetError(kDiagNrcGeneralReject)
#define DiagNRCServiceNotSupported()                     DiagSetError(kDiagNrcServiceNotSupported)
#define DiagNRCSubFunctionNotSupported()                 DiagSetError(kDiagNrcSubFunctionNotSupported)
#define DiagNRCIncorrectMessageLengthOrInvalidFormat()   DiagSetError(kDiagNrcIncorrectMessageLengthOrInvalidFormat)
#define DiagNRCResponseTooLong()                         DiagSetError(kDiagNrcResponseTooLong)
#define DiagNRCBusyRepeatRequest()                       DiagSetError(kDiagNrcBusyRepeatRequest)
#define DiagNRCConditionsNotCorrect()                    DiagSetError(kDiagNrcConditionsNotCorrect)
#define DiagNRCRequestSequenceError()                    DiagSetError(kDiagNrcRequestSequenceError)
#define DiagNRCRequestOutOfRange()                       DiagSetError(kDiagNrcRequestOutOfRange)
#define DiagNRCSecurityAccessDenied()                    DiagSetError(kDiagNrcSecurityAccessDenied)
#define DiagNRCInvalidKey()                              DiagSetError(kDiagNrcInvalidKey)
#define DiagNRCExceedNumberOfAttempts()                  DiagSetError(kDiagNrcExceedNumberOfAttempts)
#define DiagNRCRequiredTimeDelayNotExpired()             DiagSetError(kDiagNrcRequiredTimeDelayNotExpired)
#define DiagNRCUploadDownloadNotAccepted()               DiagSetError(kDiagNrcUploadDownloadNotAccepted)
#define DiagNRCTransferDataSuspended()                   DiagSetError(kDiagNrcTransferDataSuspended)
#define DiagNRCGeneralProgrammingFailure()               DiagSetError(kDiagNrcGeneralProgrammingFailure)
#define DiagNRCWrongBlockSequenceCounter()               DiagSetError(kDiagNrcWrongBlockSequenceCounter)
#define DiagNRCRcrResponsePending()                      DiagSetError(kDiagNrcRcrResponsePending)
#define DiagNRCSubfunctionNotSupportedInActiveSession()  DiagSetError(kDiagNrcSubfunctionNotSupportedInActiveSession)
#define DiagNRCServiceNotSupportedInActiveSession()      DiagSetError(kDiagNrcServiceNotSupportedInActiveSession)

/* Defines for length of service request parameters */
#define kDiagRqlDiagnosticSessionControlParameter        ((tCwDataLengthType)  0x00u)
#define kDiagRqlSecurityAccessSeedParameter              ((tCwDataLengthType)  0x00u)
#define kDiagRqlSecurityAccessKeyParameter               (kSecKeyLength)
#define kDiagRqlRcActivateSblMemoryAddress               ((tCwDataLengthType)  0x04u)
#define kDiagRqlRcEraseMemoryMemoryId                    ((tCwDataLengthType)  0x00u)
#define kDiagRqlRcEraseMemoryAddress                     ((tCwDataLengthType)  0x04u)
#define kDiagRqlRcEraseMemoryLength                      ((tCwDataLengthType)  0x04u)
#define kDiagRqlRcCheckProgDepMemoryAddress              ((tCwDataLengthType)  0x04u)
#define kDiagRqlRcCheckProgDepMemorySize                 ((tCwDataLengthType)  0x04u)
#define kDiagRqlRcUpdateSecBytesSecLevel                 ((tCwDataLengthType)  0x01u)
#define kDiagRqlRcUpdateSecBytesSecBytes                 ((tCwDataLengthType)  0x01u)

/* Defines for length of service requests (excluding service ID) */
#define kDiagRqlSubfunctionService                       ((tCwDataLengthType)  0x01u)
#define kDiagRqlDiagnosticSessionControl                 ((tCwDataLengthType) (0x01u+kDiagRqlDiagnosticSessionControlParameter))
#define kDiagRqlEcuReset                                 ((tCwDataLengthType)  0x01u)
#define kDiagRqlSecurityAccessSeed                       ((tCwDataLengthType) (0x01u+kDiagRqlSecurityAccessSeedParameter))
#define kDiagRqlSecurityAccessKey                        ((tCwDataLengthType) (0x01u+kDiagRqlSecurityAccessKeyParameter))
#define kDiagRqlMinReadDataByIdentifier                  ((tCwDataLengthType)  0x02u)
#define kDiagRqlMaxReadDataByIdentifier                  ((tCwDataLengthType) ((FBL_MAX_DID_COUNT) * 2u))
#define kDiagRqlWriteDataByIdentifier                    ((tCwDataLengthType)  0x03u) /* DID + at least one additional data byte */
#define kDiagRqlRoutineControl                           ((tCwDataLengthType)  0x03u)
#define kDiagRqlRcEraseMemory                            ((tCwDataLengthType) (kDiagRqlRoutineControl+kDiagRqlRcEraseMemoryMemoryId+kDiagRqlRcEraseMemoryAddress+kDiagRqlRcEraseMemoryLength))
#define kDiagRqlRcCheckProgDep                           ((tCwDataLengthType) (kDiagRqlRoutineControl+kDiagRqlRcCheckProgDepMemoryAddress+kDiagRqlRcCheckProgDepMemorySize))
#define kDiagRqlRcActivateSbl                            ((tCwDataLengthType) (kDiagRqlRoutineControl+kDiagRqlRcActivateSblMemoryAddress))
#define kDiagRqlRcCheckValidApp                          ((tCwDataLengthType) (kDiagRqlRoutineControl))
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
#  define kDiagRqlRcTokenDownloadMin                      ((tCwDataLengthType) (kDiagRqlRoutineControl + FBL_DIAG_TOKEN_MIN_SIZE))
#  define kDiagRqlRcTokenDownloadMax                      ((tCwDataLengthType) (kDiagRqlRoutineControl + FBL_DIAG_TOKEN_MAX_SIZE))
# endif
#endif
#define kDiagRqlRcUseInactiveMemPart                     ((tCwDataLengthType) (kDiagRqlRoutineControl))
#define kDiagRqlRcActivateInactiveMemPart                ((tCwDataLengthType) (kDiagRqlRoutineControl))
#define kDiagRqlRcUpdateSecBytes                         ((tCwDataLengthType) (kDiagRqlRoutineControl+kDiagRqlRcUpdateSecBytesSecLevel+kSecSecretKeyLength))
#define kDiagRqlRequestDownload                          ((tCwDataLengthType)  0x02u)
#define kDiagRqlRequestUpload                            ((tCwDataLengthType)  0x02u)
#define kDiagRqlTransferDataDownload                     ((tCwDataLengthType)  0x02u) /* + Download data, at least one data byte mandatory */
#define kDiagRqlTransferDataUpload                       ((tCwDataLengthType)  0x01u) /* Block sequence counter only, data in response message */
#define kDiagRqlRequestTransferExit                      ((tCwDataLengthType)  0x00u)
#define kDiagRqlTesterPresent                            ((tCwDataLengthType)  0x01u)

/* Defines for length of service response parameters */
#define kDiagRslEcuResetParameter                        ((tCwDataLengthType)  0x00u)
#define kDiagRslDiagnosticSessionControlParameter        ((tCwDataLengthType)  0x04u)
#define kDiagRslSecurityAccessSeedParameter              (kSecSeedLength)
#define kDiagRslSecurityAccessKeyParameter               ((tCwDataLengthType)  0x00u)
#define kDiagRslRcEraseMemoryParameter                   ((tCwDataLengthType)  0x01u)
#define kDiagRslRcCheckProgDepParameter                  ((tCwDataLengthType)  0x03u)
#define kDiagRslRcActivateSblParameter                   ((tCwDataLengthType)  0x01u)
#define kDiagRslRcCheckValidAppParameter                 ((tCwDataLengthType)  0x02u)
#if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
# define kDiagRslRcTokenDownloadParameter                ((tCwDataLengthType)  0x01u)
#endif
#define kDiagRslRcUseInactiveMemPartParameter            ((tCwDataLengthType)  0x01u)
#define kDiagRslRcActivateInactiveMemPartParameter       ((tCwDataLengthType)  0x01u)
#define kDiagRslRcUpdateSecBytesParameter                ((tCwDataLengthType)  0x01u)
#define kDiagRslTransferDataParameter                    ((tCwDataLengthType)  0x00u)
#define kDiagRslRequestTransferExitParameter             ((tCwDataLengthType) (kSecCrcLength))

/* Defines for length of service responses (excluding service ID) */
#define kDiagRslDiagnosticSessionControl                 ((tCwDataLengthType) (0x01u+kDiagRslDiagnosticSessionControlParameter))
#define kDiagRslEcuReset                                 ((tCwDataLengthType) (0x01u+kDiagRslEcuResetParameter))
#define kDiagRslSecurityAccessSeed                       ((tCwDataLengthType) (0x01u+kDiagRslSecurityAccessSeedParameter))
#define kDiagRslSecurityAccessKey                        ((tCwDataLengthType) (0x01u+kDiagRslSecurityAccessKeyParameter))
#define kDiagRslReadDataByIdentifier                     ((tCwDataLengthType)  0x02u)
#define kDiagRslWriteDataByIdentifier                    ((tCwDataLengthType)  0x02u)
#define kDiagRslRcEraseMemory                            ((tCwDataLengthType) (0x03u+kDiagRslRcEraseMemoryParameter))
#define kDiagRslRcCheckProgDep                           ((tCwDataLengthType) (0x03u+kDiagRslRcCheckProgDepParameter))
#define kDiagRslRcActivateSbl                            ((tCwDataLengthType) (0x03u+kDiagRslRcActivateSblParameter))
#define kDiagRslRcCheckValidApp                          ((tCwDataLengthType) (0x03u+kDiagRslRcCheckValidAppParameter))
#if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
# define kDiagRslRcTokenDownload                         ((tCwDataLengthType) (0x03u+kDiagRslRcTokenDownloadParameter))
#endif
#define kDiagRslRcUseInactiveMemPart                     ((tCwDataLengthType) (0x03u+kDiagRslRcUseInactiveMemPartParameter))
#define kDiagRslRcActivateInactiveMemPart                ((tCwDataLengthType) (0x03u+kDiagRslRcActivateInactiveMemPartParameter))
#define kDiagRslRcUpdateSecBytes                         ((tCwDataLengthType) (0x03u+kDiagRslRcUpdateSecBytesParameter))
#define kDiagRslRequestDownload                          ((tCwDataLengthType)  0x01u) /* + maxNumberOfBlockLength */
#define kDiagRslRequestUpload                            ((tCwDataLengthType)  0x01u) /* + maxNumberOfBlockLength */
#define kDiagRslTransferData                             ((tCwDataLengthType) (0x01u+kDiagRslTransferDataParameter))
#define kDiagRslRequestTransferExit                      ((tCwDataLengthType) (0x00u+kDiagRslRequestTransferExitParameter))
#define kDiagRslTesterPresent                            ((tCwDataLengthType)  0x01u)

/* Diagnostic service format definitions */
#define kDiagFmtSequenceCnt                              ((tCwDataLengthType) (kDiagFmtServiceId+0x01u))     /* Position of sequence counter */
#define kDiagFmtDataOffset                               ((tCwDataLengthType) (kDiagFmtSequenceCnt+0x01u))   /* Offset to download data in TransferData frame */
#define kDiagFmtSeedKeyStart                             ((tCwDataLengthType) (kDiagFmtSubparam+0x01u))      /* Start index of seed/key value */
#define kDiagFmtAddrOffset                               ((tCwDataLengthType)  0x03u)
#define kDiagFmtFormatOffset                             ((tCwDataLengthType)  0x02u)
#define kDiagFmtServiceId                                ((tCwDataLengthType)  0x00u)
#define kDiagFmtSubparam                                 ((tCwDataLengthType) (kDiagFmtServiceId+0x01u))
#define kDiagFmtRoutineIdHigh                            ((tCwDataLengthType) (kDiagFmtServiceId+0x01u))
#define kDiagFmtRoutineIdLow                             ((tCwDataLengthType) (kDiagFmtRoutineIdHigh+0x01u))
#define kDiagFmtRoutineIdPar                             ((tCwDataLengthType) (kDiagFmtRoutineIdLow+0x01u))
#define kDiagFmtRoutineIdDataRecord                      ((tCwDataLengthType) (kDiagFmtRoutineIdPar+0x01u))
#define kDiagFmtSubRoutineIdHigh                         ((tCwDataLengthType) (kDiagFmtSubparam+0x01u))
#define kDiagFmtSubRoutineIdLow                          ((tCwDataLengthType) (kDiagFmtSubRoutineIdHigh+0x01u))
#define kDiagFmtSubRoutineIdPar                          ((tCwDataLengthType) (kDiagFmtSubRoutineIdLow+0x01u))
#define kDiagFmtSubRoutineIdDataRecord                   ((tCwDataLengthType) (kDiagFmtSubRoutineIdPar+0x01u))
#define kDiagFmtSubRoutineEraseMemoryAddress             ((tCwDataLengthType) (kDiagFmtSubRoutineIdPar))
#define kDiagFmtSubRoutineEraseMemorySize                ((tCwDataLengthType) (kDiagFmtSubRoutineEraseMemoryAddress+kDiagRqlRcEraseMemoryAddress))
#define kDiagFmtSubRoutineCheckMemoryAddress             ((tCwDataLengthType) (kDiagFmtSubRoutineIdPar))
#define kDiagFmtSubRoutineCheckMemorySize                ((tCwDataLengthType) (kDiagFmtSubRoutineCheckMemoryAddress+kDiagRqlRcCheckProgDepMemoryAddress))
#define kDiagFmtSubRoutineInfo                           ((tCwDataLengthType) (kDiagFmtSubRoutineIdPar))
#define kDiagFmtSubRoutineCheckValidAppStatus            ((tCwDataLengthType) (kDiagFmtSubRoutineInfo+0x01u))
#define kDiagFmtSubRoutineCrcHigh                        ((tCwDataLengthType) (kDiagFmtSubRoutineInfo+0x01u))
#define kDiagFmtSubRoutineCrcLow                         ((tCwDataLengthType) (kDiagFmtSubRoutineCrcHigh+0x01u))
#define kDiagFmtSubRoutineUpdateSecBytesLevel            ((tCwDataLengthType) (kDiagFmtSubRoutineIdPar))
#define kDiagFmtSubRoutineUpdateSecBytesValue            ((tCwDataLengthType) (kDiagFmtSubRoutineUpdateSecBytesLevel+kDiagRqlRcUpdateSecBytesSecLevel))
#define kDiagFmtNegResponse                              ((tCwDataLengthType) (kDiagFmtSubparam+0x01u))      /* Position of negative response code */
#define kDiagFmtLengthMask                               ((vuint8)  0xF0u)
#define kDiagFmtAddrMask                                 ((vuint8)  0x0Fu)
#define kDiagFmtEncryptionMask                           ((vuint8)  0x0Fu)
#define kDiagFmtCompressionMask                          ((vuint8)  0xF0u)
#define kDiagFmtMaxBlockLengthHigh                       ((vuint8) (kDiagFmtSubparam+0x01u))
#define kDiagFmtMaxBlockLengthLow                        ((vuint8) (kDiagFmtMaxBlockLengthHigh+0x01u))
#define kDiagFmtDataIdHigh                               ((vuint8) (kDiagFmtSubparam))
#define kDiagFmtDataIdLow                                ((vuint8) (kDiagFmtDataIdHigh+0x01u))
#define kDiagFmtDataIdDataRecord                         ((vuint8) (kDiagFmtDataIdLow+0x01u))
#define kDiagFmtDataIdActiveDiagnosticSessionSize        ((vuint8)  0x01u)
#define kDiagFmtDataIdSwdlVersionSize                    ((vuint8)  0x01u)
#if defined( FBL_DIAG_ENABLE_DID_CURRENT_DIAG_APP )
# define kDiagFmtDataIdBootloaderCurrentDiagAppSize      ((vuint8)  0x01u)
#endif
#define kDiagFmtDataIdSize                               ((vuint8)  0x02u)
#define kDiagFmtTransferDataUploadRetryBackupSize        ((vuint8)  0x05u)

/* Diagnostic session timing */
#define kDiagSessionTimingP2     ((vuint16) (kFblDiagTimeP2 * FBL_REPEAT_CALL_CYCLE))
#define kDiagSessionTimingP2Star ((vuint16) ((vuint32)(kFblDiagTimeP2Star * FBL_REPEAT_CALL_CYCLE) / 10u))

/* Macros for P2 timeout */
#define GetP2Timeout()           (P2Timeout)
#define SetP2Timeout(val)        (P2Timeout = (((val) > 0x01u) ? ((val) / 0x02u) : 0x01u))
#define ClrP2Timeout()           (P2Timeout = 0x00u)

/* State machine states */
#if defined( FBL_DIAG_ENABLE_ENUMS_IDX )
enum
{
    kDiagStateIdxSessionDefault
   ,kDiagStateIdxSessionProgramming
   ,kDiagStateIdxSecurityKey01
   ,kDiagStateIdxSecurityAccess01
   ,kDiagStateIdxFunctionalRequest
   ,kDiagStateIdxTransferDataAllowed
   ,kDiagStateIdxTransferDataSucceeded
#if defined( FBL_DIAG_ENABLE_UPLOAD )
   ,kDiagStateIdxTransferDataUpload
#endif
   ,kDiagStateIdxFirstDownloadReq
   ,kDiagStateIdxSuppressPosRspMsg
   /* States below are not relevant for service dispatching */
   ,kDiagStateIdxServiceInProgress
   ,kDiagStateIdxTpConfirmationFlag
   ,kDiagStateIdxDiagIndication
   ,kDiagStateIdxResponseProcessing
   ,kDiagStateIdxRcrRpInProgress
   ,kDiagStateIdxMemDriverInitialized
   ,kDiagStateIdxEraseMemorySucceeded
   ,kDiagStateIdxWaitForRcrRpConf
   ,kDiagStateIdxWaitEcuReset
   ,kDiagStateIdxResetMsgConfirmed
   ,kDiagStateIdxEcuResetFctFinished
   ,kDiagStateIdxDiagBufferLocked
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
   ,kDiagStateIdxDiagDevelopmentKey
#endif
   ,kDiagStateIdxProcessingDone
   /*----------------------*/
   , kDiagNumberOfStates
};
#else
# define kDiagStateIdxSessionDefault         (0u)
#  define kDiagStateIdxSessionProgramming    (kDiagStateIdxSessionDefault          + 1u)
# define kDiagStateIdxSecurityKey01          (kDiagStateIdxSessionProgramming      + 1u)
# define kDiagStateIdxSecurityAccess01       (kDiagStateIdxSecurityKey01           + 1u)
#  define kDiagStateIdxFunctionalRequest     (kDiagStateIdxSecurityAccess01        + 1u)
# define kDiagStateIdxTransferDataAllowed    (kDiagStateIdxFunctionalRequest       + 1u)
# define kDiagStateIdxTransferDataSucceeded  (kDiagStateIdxTransferDataAllowed     + 1u)
# if defined( FBL_DIAG_ENABLE_UPLOAD )
#  define kDiagStateIdxTransferDataUpload    (kDiagStateIdxTransferDataSucceeded   + 1u)
#  define kDiagStateIdxFirstDownloadReq      (kDiagStateIdxTransferDataUpload      + 1u)
# else
#  define kDiagStateIdxFirstDownloadReq      (kDiagStateIdxTransferDataSucceeded   + 1u)
# endif /* FBL_DIAG_ENABLE_UPLOAD */
# define kDiagStateIdxSuppressPosRspMsg      (kDiagStateIdxFirstDownloadReq        + 1u)
/*----------------------*/
# define kDiagNumberOfDispatchStates         (kDiagStateIdxSuppressPosRspMsg       + 1u)
/*----------------------*/
/* States below are not relevant for service dispatching */
# define kDiagStateIdxServiceInProgress      (kDiagStateIdxSuppressPosRspMsg       + 1u)
# define kDiagStateIdxTpConfirmationFlag     (kDiagStateIdxServiceInProgress       + 1u)
# define kDiagStateIdxDiagIndication         (kDiagStateIdxTpConfirmationFlag      + 1u)
# define kDiagStateIdxResponseProcessing     (kDiagStateIdxDiagIndication          + 1u)
# define kDiagStateIdxRcrRpInProgress        (kDiagStateIdxResponseProcessing      + 1u)
# define kDiagStateIdxMemDriverInitialized   (kDiagStateIdxRcrRpInProgress         + 1u)
# define kDiagStateIdxEraseMemorySucceeded   (kDiagStateIdxMemDriverInitialized    + 1u)
# define kDiagStateIdxWaitForRcrRpConf       (kDiagStateIdxEraseMemorySucceeded    + 1u)
# define kDiagStateIdxWaitEcuReset           (kDiagStateIdxWaitForRcrRpConf        + 1u)
# define kDiagStateIdxResetMsgConfirmed      (kDiagStateIdxWaitEcuReset            + 1u)
# define kDiagStateIdxEcuResetFctFinished    (kDiagStateIdxResetMsgConfirmed       + 1u)
# define kDiagStateIdxDiagBufferLocked       (kDiagStateIdxEcuResetFctFinished     + 1u)
# define kDiagStateIdxDiagDevelopmentKey     (kDiagStateIdxDiagBufferLocked        + 1u)
# define kDiagStateIdxProcessingDone         (kDiagStateIdxDiagDevelopmentKey      + 1u)
/*----------------------*/
# define kDiagNumberOfStates                 (kDiagStateIdxProcessingDone          + 1u)
/*----------------------*/
#endif

/* State array settings */
#define STATE_BITS                     FBL_STATE_BITS

#if ( STATE_BITS == 32u )
typedef vuint32 tStateBitmap;

#define kDiagStateMaskNone             (tStateBitmap)(0x00000000uL)
#define kDiagStateMaskAll              (tStateBitmap)(0xFFFFFFFFuL)
#endif

#if ( STATE_BITS == 16u )
typedef vuint16 tStateBitmap;

#define kDiagStateMaskNone             (tStateBitmap)(0x0000uL)
#define kDiagStateMaskAll              (tStateBitmap)(0xFFFFuL)
#endif

#if ( STATE_BITS == 8u )
typedef vuint8 tStateBitmap;

#define kDiagStateMaskNone             (tStateBitmap)(0x00uL)
#define kDiagStateMaskAll              (tStateBitmap)(0xFFuL)
#endif

#if defined( FBL_DIAG_ENABLE_ENUMS_IDX )
/*
   Size of service state array
   This has to be set manually,
   because the state enum constants
   can not be evaluated at preprocess time
*/
# if ( STATE_BITS == 32u )
#  define STATECHECK_ARRAYSIZE   (0x01u)
# endif

# if ( STATE_BITS == 16u )
#  define STATECHECK_ARRAYSIZE   (0x01u)
# endif

# if ( STATE_BITS == 8u )
#  define STATECHECK_ARRAYSIZE   (0x02u)
# endif
#else
# define STATECHECK_ARRAYSIZE    (((kDiagNumberOfDispatchStates - 1u) / STATE_BITS) + 1u)
#endif

#if !defined( STATECHECK_ARRAYSIZE )
# error "Invalid STATE_BITS value"
#endif

/* State mask build macros */
#define STATE_MASK(bit)                ((tStateBitmap)(1uL << ((bit) % STATE_BITS)))
#define STATE_MULTIMASK(min, max)      ((((kDiagStateMaskAll) >> ((min) % STATE_BITS)) << ((min) % STATE_BITS)) ^ (((kDiagStateMaskAll) >> (((max) + 1u) % STATE_BITS)) << (((max) + 1u) % STATE_BITS)))
#define STATE_MASKLONG(bit)            (1uL << (bit))
#define STATE_MULTIMASKLONG(min, max)  ((((~0uL) >> (min)) << (min)) ^ (((max) < (STATE_BITS - 1u)) ? (((~0uL) >> ((max) + 1u)) << ((max) + 1u)) : 0uL))
#define STATE_INDEX(bit)               ((bit) / STATE_BITS)
#define STATE_SET(arr, bit)            ((arr)[STATE_INDEX(bit)] |= STATE_MASK(bit))
#define STATE_CLR(arr, bit)            ((arr)[STATE_INDEX(bit)] &= FblInvertBits(STATE_MASK(bit), tStateBitmap))
#define STATE_MULTICLR(arr, min, max)  ((arr)[STATE_INDEX(min)] &= FblInvertBits(STATE_MULTIMASK((min), (max)), tStateBitmap))
#define STATE_TEST(arr, bit)           (((arr)[STATE_INDEX(bit)] & STATE_MASK(bit)) == STATE_MASK(bit))

/* State access macros */
#define GetDiagState(state)               STATE_TEST(fblStates, (state))

#define GetDiagDefaultDiagSession()       GetDiagState(kDiagStateIdxSessionDefault)
#define GetDiagProgrammingSession()       GetDiagState(kDiagStateIdxSessionProgramming)
#define GetResponseProcessing()           GetDiagState(kDiagStateIdxResponseProcessing)
#define GetRcrRpInProgress()              GetDiagState(kDiagStateIdxRcrRpInProgress)
#define GetMemDriverInitialized()         GetDiagState(kDiagStateIdxMemDriverInitialized)
#define GetServiceInProgress()            GetDiagState(kDiagStateIdxServiceInProgress)
#define GetWaitEcuReset()                 GetDiagState(kDiagStateIdxWaitEcuReset)
#define GetDiagBufferLocked()             GetDiagState(kDiagStateIdxDiagBufferLocked)
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# define GetDiagDevelopmentKey()          GetDiagState(kDiagStateIdxDiagDevelopmentKey)
#endif
#define GetCurrentSecLvl()                diagCurrentSecLvl

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/* External DID services access macro */
#  define GetDiagCurrentToken()            tokenBuffer
/* Macros and defines for token handling */
#  define FBL_DIAG_TOKEN_MIN_SIZE          80u      /* Used for mode 0 token without signature */
#  define FBL_DIAG_TOKEN_MAX_SIZE          1899u    /* Used for mode 5 token */
/* Compatibility define */
#  define FBL_DIAG_TOKEN_SIZE              FBL_DIAG_TOKEN_MAX_SIZE

/* Defines for enabling Ford key handling */
#  if defined (FBL_DIAG_SINGLE_KEY)
#   define FBL_DIAG_ENABLE_PRODKEY_UPDATE
#   define FBL_DIAG_ENABLE_DEVKEY_UPDATE
#   define FBL_DIAG_ENABLE_DEVKEY
#  endif
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/* Compatibility defines */
#define FblDiagGetDefaultSession()        GetDiagDefaultSession()
#define FblDiagGetProgrammingSession()    GetDiagProgrammingSession()
#define FblDiagGetExtendedSession()       GetDiagExtendedSession()
#define FblDiagGetBufferLocked()          GetDiagBufferLocked()
#define FblDiagGetRcrRpInProgress()       GetRcrRpInProgress()
#define FblDiagGetMemDriverInitialized()  GetMemDriverInitialized()

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
# define GetRequestedSeedLength()         kDiagSecAccessParams[diagRequestedSecLvlIdx].seedLength
# define GetRequestedKeyLength()          kDiagSecAccessParams[diagRequestedSecLvlIdx].keyLength
#else
# define GetRequestedSeedLength()         kSecSeedLength
# define GetRequestedKeyLength()          kSecKeyLength
#endif


#if defined( FBL_ENABLE_DEBUG_STATUS )
/* Error codes for error status reporting */
# define FBL_ERR_NONE                        ((vuint8) 0x00u)

# define FBL_ERR_FLASH_ERASE_ERROR           ((vuint8) 0x10u)
# define FBL_ERR_FLASH_PROG_ERROR            ((vuint8) 0x11u)
# define FBL_ERR_FLASH_PROG_CONDITIONS       ((vuint8) 0x12u)

# define FBL_ERR_APPL_OVERLAPPING            ((vuint8) 0x20u)
# define FBL_ERR_APPL_NOT_ALIGNED            ((vuint8) 0x21u)
# define FBL_ERR_TOO_MANY_SEGMENTS_IN_MODULE ((vuint8) 0x22u)
# define FBL_ERR_NO_MEMORY_REGION_FOUND      ((vuint8) 0x23u)
# define FBL_ERR_SEED_GENERATION_FAILED      ((vuint8) 0x24u)
# define FBL_ERR_GAP_FILL                    ((vuint8) 0x25u)
# define FBL_ERR_VERIFICATION                ((vuint8) 0x26u)

# define FBL_ERR_FLASHCODE_INIT_FAILED       ((vuint8) 0x30u)
# define FBL_ERR_FLASHCODE_EXCEEDS_MEMORY    ((vuint8) 0x31u)
# define FBL_ERR_FLASHCODE_NOT_ACCEPTED      ((vuint8) 0x32u)

# define FBL_ERR_LBT_MISSING_INVALID_FORMAT  ((vuint8) 0x40u)
# define FBL_ERR_LBT_ADDR_MISMATCH           ((vuint8) 0x41u)
# define FBL_ERR_LBT_BLOCK_INDEX_EXCEEDED    ((vuint8) 0x42u)
# define FBL_ERR_LBT_NOT_REPROGRAMMABLE      ((vuint8) 0x43u)
# define FBL_ERR_LBT_BLOCK_INDEX_ILLEGAL     ((vuint8) 0x44u)

# define FBL_ERR_DATA_OVERFLOW               ((vuint8) 0x50u)

/* Macros for error status reporting */
# define FblErrStatSetSId(id)                (errStatLastServiceId = (id))
# define FblErrStatSetState(state)           (errStatFblStates = (state))
# define FblErrStatSetFlashDrvError(error)   (errStatFlashDrvErrorCode = (error))
# define FblErrStatSetFlashDrvVersion()      {\
                                              errStatFlashDrvVersion[0] = flashCode[0];\
                                              errStatFlashDrvVersion[1] = flashCode[1];\
                                              errStatFlashDrvVersion[2] = flashCode[3];\
                                             }
# define FblErrStatSetError(error)           (errStatErrorCode = (error))
# define FblErrStatSetBlockNr(blockNumber)   (errStatDescriptor.blockNr = (blockNumber))
# define FblErrStatSetAddress(address)       (errStatDescriptor.blockStartAddress = (address))
#else
# define FblErrStatSetSId(id)
# define FblErrStatSetState(state)
# define FblErrStatSetFlashDrvError(error)
# define FblErrStatSetFlashDrvVersion()
# define FblErrStatSetError(error)
# define FblErrStatSetBlockNr(blockNr)
# define FblErrStatSetAddress(address)
#endif

#define DIAG_CALL_CYCLE                      kDiagCallCycle

#if !defined( TESTER_PRESENT_TIMEOUT )
#define TESTER_PRESENT_TIMEOUT               ((vuint32) 5000u)
#endif

#if !defined( TESTER_PRESENT_TIMEOUT_LONG )
#define TESTER_PRESENT_TIMEOUT_LONG          ((vuint32) 30000u)
#endif

#define TimeoutTesterValue()                 testerPresentTimeout
#define DecTimeoutTesterValue()              (testerPresentTimeout--)
#define ResetTesterTimeout()                 (testerPresentTimeout = (vuint16)(TESTER_PRESENT_TIMEOUT/DIAG_CALL_CYCLE))
#define InitTesterTimeoutLong()              (testerPresentTimeout = (vuint16)(TESTER_PRESENT_TIMEOUT_LONG/DIAG_CALL_CYCLE))
#define StopTesterTimeout()                  (testerPresentTimeout = 0)

/* Parameter to the function FblDiagEcuReset() */
#define kDiagResetNoResponse                 ((vuint8) 0x00u)
#define kDiagResetPutResponse                ((vuint8) 0x01u)
#define kDiagResetStayInBoot                 ((vuint8) 0x02u)

/* Macros for access of reset options */
#define GetResetOptionPutResponse(var)       (((var) & kDiagResetPutResponse) == kDiagResetPutResponse)
#define GetResetOptionStayInBoot(var)        (((var) & kDiagResetStayInBoot) == kDiagResetStayInBoot)

/* Parameters for busy response handling function */
#define kNotForceSendResponsePending         ((vuint8) 0x00u)
#define kForceSendResponsePending            ((vuint8) 0x01u)

#define DiagProcessingDone(len)              DiagResponseProcessor(len)
#define DiagSetNoResponse()                  (diagResponseFlag = 0)

/* Error state function, removed if not defined */
#if !defined( FblErrStatSetAddress )
# define FblErrStatSetAddress(address)
#endif
#if !defined( FblErrStatSetError )
# define FblErrStatSetError(errNo)
#endif
#if !defined( FblErrStatSetSId )
# define FblErrStatSetSId(SId)
#endif

/* Security levels */
#define kDiagSecLevelNone              ((vuint8) 0x00u)
#define kDiagSecLevelFlash             ((vuint8) 0x01u)

/* Macros for security access */
#define kDiagNrOfSecurityLevels        (0x01u)

#if !defined( kDiagSubSecTypeMask )
# define kDiagSubSecTypeMask           ((vuint8) 0x7Fu)
#endif

#if !defined( kDiagSubRequestSeed )
# define kDiagSubRequestSeed           ((vuint8) 0x01u)
#endif

#if !defined( kDiagSubSendKey )
# define kDiagSubSendKey               ((vuint8) 0x02u)
#endif

/* Map length defines used by fbl_diag to SecModHis */
#if !defined( kSecSeedLength )
# define kSecSeedLength                (SEC_SEED_LENGTH)
#endif

#if !defined( kSecKeyLength )
#  define kSecKeyLength                (SEC_KEY_LENGTH)
#endif

#if !defined( kSecSecretKeyLength )
#  define kSecSecretKeyLength          (SEC_SECRET_KEY_LENGTH)
#endif

#if !defined( kSecCrcLength )
# define kSecCrcLength                 (SEC_SIZE_CHECKSUM_CRC)
#endif

/* Access macros for user diagnostic call-backs */
#define DiagPutResponseSId(a)          (DiagBuffer[0] = (a))
#define DiagGetRequestSId()            (DiagBuffer[0])

/* Read memory function for flash driver validation */
#define FblReadRam                     FblReadBlock

/* Internal segment size as used by the diagnostic layer */
#if !defined( FBL_DIAG_SEGMENT_SIZE )
# define FBL_DIAG_SEGMENT_SIZE         (FBL_MAX_SEGMENT_SIZE)
#endif

/* Special values for indices into logical block table */
#define kBlockNrInvalid                0xFFu

/* Access macros for combined memory identifier/address type */
#define FblDiagGetMemId(var)
#define FblDiagGetMemAddr(var)         ((var))

#define FblDiagSetMemId(var, value)
#define FblDiagSetMemAddr(var, value)  ((var) = (value))

#define FblDiagAddMemAddr(var, value)  ((var) += (value))

#if defined( FBL_ENABLE_DATA_PROCESSING )
/* Extract encryption/compression mode from the data format identifier */
#define FblDiagGetEncryptionMode(dfi)  ((vuint8)((dfi) & kDiagFmtEncryptionMask))
#define FblDiagGetCompressionMode(dfi) ((vuint8)(((dfi) & kDiagFmtCompressionMask) >> 4))
#endif /* FBL_ENABLE_DATA_PROCESSING */

#if defined( FBL_ENABLE_SLEEPMODE )
/* Sleep mode handling */
# define kFblSleepDelayTime            ((vuint32)(FBL_SLEEP_TIME / FBL_REPEAT_CALL_CYCLE))
# define FblSleepCounterClear()        (sleepCounter = 0x00u)
# define FblSleepCounterReload()       (sleepCounter = kFblSleepDelayTime)
# define FblDecSleepCounter()          (sleepCounter--)
# define FblGetSleepCounter()          ((vuint32) sleepCounter)
#endif
/* PRQA L:TAG_FblDiag_3453_2 */

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/* Security access levels */
typedef struct tagSecurityLevel
{
   vuint8         accessType;
   vuint8         stateIdxKey;
   vuint8         stateIdxAccess;
} tSecurityLevel;

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
typedef struct tagDiagSecAccessParams
{
   vuint8  secLevel;       /** Security Level = sub function parameter of seed request */
   vuint16 seedLength;     /** Size of seed parameter */
   vuint16 keyLength;      /** Size of key parameter */
} tDiagSecAccessParams;
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

/* Combined data type for memory identifier and address */
typedef tFblAddress tFblDiagAddr;

/* Logical block state definition */
typedef enum
{
   kBlockState_Init,
   kBlockState_Erased,
   kBlockState_Verified
} tBlockState;

/* Header with runtime information about logical block */
typedef struct
{
   tBlockState    state;
   vuint8         nrOfSegments;
   vuint8         segmentIdx[SWM_DATA_MAX_NOAR];
} tBlockHeader;

/** Structure for address and length information of segments */
typedef struct
{
   tFblAddress    targetAddress;
   tFblLength     length;
   vuint8         checksum[SEC_VERIFY_CLASS_DDD_VERIFY_SIZE];
} tDiagSegmentInfo;

/** Segment data structure */
typedef struct
{
   vuint8            nrOfSegments;
   tDiagSegmentInfo  segmentInfo[SWM_DATA_MAX_NOAR];
} tDiagSegmentList;


#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/* Return values for token handling */
typedef enum
{
   kTokenHdlrOk                = 0,
   kTokenHdlrProtocolFailed    = 1,
   kTokenHdlrSyncPKeyValFailed = 2,
   kTokenHdlrFesnFailed        = 3,
   kTokenHdlrTimeTokenFailed   = 4,
# if defined (FBL_DIAG_SINGLE_KEY)
   kTokenHdlrKeyChangeFailed   = 5,
# endif
   kTokenHdlrSignatureFailed   = 6,
   kTokenHdlrTokenApplPassed   = 7,
   kTokenHdlrTokenSignFailed   = 8,
   kTokenHdlrInternalFailed    = 9
} tTokenHdlResult;

typedef enum
{
   FBL_DIAG_SRVMSGID_NOTSTORED = 0,
   FBL_DIAG_SRVMSGID_STORED = 1
} tFblDiagSrvMsgIdStoreStatus;

# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

void FblDiagTimerTask( void );
void FblDiagStateTask( void );
vuint8 FblRealTimeSupport( void );

void FblDiagPostInit( void );
void FblDiagEcuReset(vuint8 resetOptions, vuint8 responseFlag);
void FblDiagInitPowerOn( void );
void FblDiagInit( void );
vuint8 FblDiagGetLastErasedBlock( void );
void FblDiagSetLastErasedBlock( vuint8 blockNr );

void DiagResponseProcessor( tCwDataLengthType dataLength );

#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_RAMCODE_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
void DiagExRCRResponsePending( vuint8 forceSend );

void FblDiagTxErrorIndication( vuint8 cwMsgType );
void FblDiagRxIndication( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * pbDiagBuffer, tCwDataLengthType rxDataLength );
void FblDiagTxConfirmation( vuint8 cwMsgType );
vuint8* FblDiagRxGetPhysBuffer( tCwDataLengthType rxDataLength );
vuint8* FblDiagRxGetFuncBuffer( tCwDataLengthType rxDataLength );
void FblDiagRxStartIndication( void );
void FblDiagRxErrorIndication( void );
#define FBLDIAG_RAMCODE_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

vuint8 FblDiagCheckStartMsg(const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *pData, vuintx length);
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, V_MEMRAM1 tDiagSegmentList V_MEMRAM2 V_MEMRAM3 * blockSegList);

/* Response suppression (exported for user service/routine functions) */
void CheckSuppressPosRspMsgIndication( V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 *subparam );

tFblResult FblDiagMemPreWrite( void );
tFblResult FblDiagMemPostWrite( void );


#define FBLDIAG_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/* -- 14229 based -- */
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * V_MEMRAM1 V_MEMRAM2   DiagBuffer;
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   diagErrorCode;
V_MEMRAM0 extern V_MEMRAM1 tCwDataLengthType V_MEMRAM2                        DiagDataLength;
V_MEMRAM0 extern V_MEMRAM1_NEAR vuint16 V_MEMRAM2_NEAR                        P2Timeout;
V_MEMRAM0 extern V_MEMRAM1_NEAR vuint16 V_MEMRAM2_NEAR                        testerPresentTimeout;
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   diagResponseFlag;
V_MEMRAM0 extern V_MEMRAM1_NEAR vuint8 V_MEMRAM2_NEAR                         diagServiceCurrent;
V_MEMRAM0 extern V_MEMRAM1_NEAR tStateBitmap V_MEMRAM2_NEAR                   fblStates[STATE_INDEX(kDiagNumberOfStates - 1u) + 1u];
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   diagCurrentSecLvl;

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
#define FBLDIAG_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

V_MEMROM0 extern V_MEMROM1 tDiagSecAccessParams V_MEMROM2                     kDiagSecAccessParams[];

#define FBLDIAG_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   diagRequestedSecLvlIdx;

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */
#endif

#define FBLDIAG_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */


#if defined( FBL_ENABLE_DEBUG_STATUS )
/* Variables for error status reporting */
V_MEMRAM0 extern V_MEMRAM1 vuint16 V_MEMRAM2                                  errStatErrorCode;
V_MEMRAM0 extern V_MEMRAM1 vuint16 V_MEMRAM2                                  errStatFblStates;
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   errStatLastServiceId;
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2                                   errStatFlashDrvVersion[3];
V_MEMRAM0 extern V_MEMRAM1 vuint16 V_MEMRAM2                                  errStatFlashDrvErrorCode;
V_MEMRAM0 extern V_MEMRAM1 tBlockDescriptor V_MEMRAM2                         errStatDescriptor;
#endif

#if defined( FBL_ENABLE_SLEEPMODE )
V_MEMRAM0 extern V_MEMRAM1 vuint32 V_MEMRAM2                                  sleepCounter;
#endif

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/* Ford Specific variables */
V_MEMRAM0 extern V_MEMRAM1 vuint8  V_MEMRAM2                                  tokenBuffer[FBL_DIAG_TOKEN_MAX_SIZE];
# endif
#endif

#define FBLDIAG_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */  /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

#if ( kFblOk != 0x00 )
# error "Error in fbl_def.h: use kFblOk as 0x00"
#endif

#if !( defined( FBL_ENABLE_SYSTEM_CHECK ) || defined( FBL_DISABLE_SYSTEM_CHECK ) )
# error "Error in fbl_cfg.h: Usage of system check not defined"
#endif

#if !( defined( FBL_ENABLE_APPL_TASK ) || defined( FBL_DISABLE_APPL_TASK ) )
# error "Error in fbl_cfg.h: Usage of application task function not defined"
#endif

#if !( defined( FBL_ENABLE_USERSUBFUNCTION ) || defined( FBL_DISABLE_USERSUBFUNCTION ) )
# error "Error in fbl_cfg.h: Usage of diag user-subfunction call not defined"
#endif

#if !( defined( FBL_ENABLE_ENCRYPTION_MODE ) || defined( FBL_DISABLE_ENCRYPTION_MODE ) )
# error "Error in fbl_cfg.h: Usage of decryption interface not defined"
#endif

#if !( defined( FBL_WATCHDOG_ON ) || defined( FBL_WATCHDOG_OFF ) )
# error "Error in fbl_cfg.h: Usage of watchdog support not defined"
#endif

#if defined( FBL_WATCHDOG_ON ) && !defined( FBL_WATCHDOG_TIME )
# error "Error in fbl_cfg.h: Watchdog trigger period not defined"
#endif

#if !( defined( FBL_ENABLE_FBL_START ) || defined( FBL_DISABLE_FBL_START ) )
# error "Error in fbl_cfg.h: Usage of FblStart function not defined"
#endif

#if !defined( SWM_DATA_MAX_NOAR )
# error "Error in fbl_cfg.h: Number of supported download segments (SWM_DATA_MAX_NOAR) not defined"
#endif

#if !defined( FBL_HEADER_ADDRESS )
# error "Error in fbl_cfg.h: Start address of bootblock header not defined"
#endif

#if !defined( FBL_DIAG_BUFFER_LENGTH )
# error "Error in fbl_cfg.h: FBL_DIAG_BUFFER_LENGTH not defined"
#endif

#if ( FBL_DIAG_BUFFER_LENGTH < (FBL_DIAG_SEGMENT_SIZE+0x01u) )
# error "Error in fbl_cfg.h: DiagBuffer size too small - modify FBL_DIAG_BUFFER_LENGTH"
#endif

# if ( FBL_DIAG_BUFFER_LENGTH > 4095u )
#  error "Error in fbl_cfg.h: DiagBuffer size larger than supported by TP"
# endif
# if ( FBL_DIAG_BUFFER_LENGTH != kFblTpBufferSize )
#  error "Error in fbl_cfg.h: Inconsistent configuration of diag buffer size (see ftp_cfg.h)"
# endif

#if !defined( FBL_DIAG_TIME_P3MAX )
# error "Error in fbl_cfg.h: P2Star time not defined"
#endif

#if !defined( FLASH_SIZE )
# error "Error in fbl_cfg.h: Size of flash code buffer not defined"
#endif

#if !defined( FBL_MAX_SEGMENT_SIZE )
# error "Error in fbl_mio.h: Maximum device segment size not defined"
#endif

#if defined( FBL_ENABLE_DATA_PROCESSING ) ||\
    defined( FBL_ENABLE_UNALIGNED_DATA_TRANSFER )
# if defined( FBL_ENABLE_COMPRESSION_MODE ) && !defined( FBL_ENABLE_PROCESSED_DATA_LENGTH )
/* Ford specific: tester/download tool transmits always the compressed data length */
#  error "Error in fbl_cfg.h: Support for compressed data length not activated"
# endif
#endif
#if defined( FBL_ENABLE_COMPRESSION_MODE ) && !defined( FBL_ENABLE_DATA_PROCESSING )
# error "Error in fbl_cfg.h: Compression/Encryption Mode requires the data processing interface"
#endif


#if defined( FBL_ENABLE_PRESENCE_PATTERN ) && !defined( FBL_ENABLE_USE_LOGICAL_BLOCKS )
# error "Error in fbl_cfg.h: Presence pattern implementation requires the usage of logical blocks"
#endif

#if !defined( FBL_ENABLE_SEED_KEY_MODULE ) && ( FBL_PROJECT_STATE != FBL_INTEGRATION )
# error "Error in fbl_cfg.h: Usage of seed/key module is mandatory for production ECUs"
#endif

#if ((FBL_MAX_DID_COUNT < 1) || (FBL_MAX_DID_COUNT > 255))
# error "Error in fbl_cfg.h: Unsupported value for maximum amount of read DIDs"
#endif


#if (SEC_SECURITY_CLASS != SEC_CLASS_CCC) && (SEC_SECURITY_CLASS != SEC_CLASS_DDD)
# error "Error in SecM_cfg.h: Unsupported security class selected"
#endif

#if !defined( FBL_MTAB_SBL_BLOCK_NUMBER )
# error "Error in fbl_mtab.h: Logical block for SBL not defined or wrong name (required: SBL)"
#endif

/* Warn if legacy configuration switches are used */
#if defined( FBL_ENABLE_DIAG_SESSION_PARAMETERS ) || \
    defined( FBL_ENABLE_FIXED_TRANSFER_ALFI )     || \
    defined( FBL_ENABLE_UPLOAD )                  || \
    defined( FBL_ENABLE_WRITE_DATA_BY_IDENTIFIER )
# error "Error in fbl_cfg.h: Legacy configuration switches detected. Please update GenTool/PreConfig!"
#endif

#endif /* FBL_DIAG_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_DIAG.H
 **********************************************************************************************************************/

