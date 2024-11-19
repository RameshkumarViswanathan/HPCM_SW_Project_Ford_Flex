/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        OEM dependent configuration for FblLib_Mem
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
 *  TEMPLATE REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2012-03-23  visjhg  -                Initial release
 *  01.00.01   2012-03-26  visjhg  -                Additional comments
 *  01.01.00   2012-04-05  visjhg  -                Changes after code review
 *  01.02.00   2012-04-27  visjhg  -                Updated type casts in macros using ternary operator
 *  01.04.00   2013-02-01  visach  ESCAN00062919    Adapted comments to use Doxygen
 *                         visach  -                Correct macro __ApplFblMemDriverReady
 *                         visjhg  ESCAN00064292    Added pre and post handlers for erase routine
 *                         visjhg  ESCAN00064296    Renamed default preamble length define
 *                         visjhg  ESCAN00064301    Split verify functions for RAM and ROM verification
 *                         visjhg  ESCAN00064333    Differentiate watchdog trigger w/ and w/o status
 *                         visjhg  ESCAN00064334    Added interface to remap error codes to OEM dependent value
 *                         visjhg  -                Added additional error codes for new functionality
 *                         visjhg  ESCAN00064720    Replaced __ApplFblMemCheckDfi by __ApplFblMemIsDataProcessingRequired
 *  01.05.00   2013-04-10  visjhg  ESCAN00066379    Added interface version compatibility check
 *                         visjhg  ESCAN00066377    Added additional error codes for new functionality
 *  01.06.00   2013-07-22  visjhg  ESCAN00067433    Updated interface version (added FblMemDeinit)
 *                         visjhg  ESCAN00069161    Updated interface version (added pipelined verification)
 *                                                   Changed verification error codes
 *  01.07.00   2013-08-16  visjhg  ESCAN00069803    Updated interface version (enable/disable verification at run-time)
 *                         visjhg  -                Corrected name of parameter type overwrite
 *  02.00.00   2013-12-12  visjhg  ESCAN00072568    Updated interface version (initialize verification in segment start)
 *                                                   Error / status for BlockStartVerifyInit replaced by SegmentStartVerifyInit
 *                         visjhg  ESCAN00072569    Raised major version to match API version
 *  02.01.00   2014-03-12  visjhg  ESCAN00073504    Corrected overwrite macro names for verification functions
 *  03.00.00   2015-03-03  visjhg  ESCAN00076591    Added support for external stream output
 *                                                   Added __ApplFblMemIsStreamOutputRequired
 *                                                   Added additional error codes
 *                                                   Updated interface version
 *                         visjhg  ESCAN00081493    Added __ApplFblMemIsPipelinedProgrammingDisabled
 *  03.01.00   2015-04-23  visjhg  ESCAN00082606    Added __ApplFblMemReportProgress
 *  03.01.03   2015-06-15  visjhg  ESCAN00083392    Added FBL_MEM_ENABLE_VERIFY_OUTPUT_FULL_BLOCK_LENGTH
 *                                                  Added SEC_ENABLE_VERIFICATION_ADDRESS_LENGTH check
 *                                                  Updated interface version
 *  03.02.00   2015-07-21  visjhg  ESCAN00084102    Updated interface version (parameter type structure for stream processing)
 *  04.00.00   2015-09-17  visjhg  ESCAN00085249    Updated interface version (explicit parameters for processed verification)
 *                         visjhg  ESCAN00085250    Run-time decision whether address and length info is included in verification
 *                                                  Added __ApplFblMemVerifyInputIsAddressAndLengthIncluded,
 *                                                   __ApplFblMemVerifyProcessedIsAddressAndLengthIncluded and
 *                                                   __ApplFblMemVerifyPipelinedIsAddressAndLengthIncluded
 *                         visjhg  ESCAN00085251    Pass external segment info to __ApplFblMemIsPipelinedProgrammingDisabled
 *  04.01.00   2016-04-01  visjhg  ESCAN00087997    Added __ApplFblMemEnterCriticalSection and __ApplFblMemLeaveCriticalSection
 *                                                  Updated interface version
 *  04.02.01   2017-05-31  visjhg  -                Removed deprecated SEC_VER_DISABLE_LENGTH_AND_ADDRESS_INPUT
 *                                                  Updated interface version
 *  04.03.00   2017-07-06  visjhg  ESCAN00095774    Added FblMemFlushInputData
 *                                                  Updated interface version
 *  04.04.00   2018-08-22  visjhg  ESCAN00100482    Added hook __ApplFblMemConditionCheck
 *                                                  Updated interface version
 *  04.04.01   2018-09-25  visjhg  ESCAN00100850    Matching preamble length for MCMP download use-case
 *                                                  Updated interface version
 *  04.05.00   2018-11-30  visjhg  ESCAN00101500    Added custom error codes (typically used by __ApplFblMemConditionCheck)
 *                                                  Updated interface version
 *  04.05.02   2019-08-20  vistbe  ESCAN00103967    Updated interface version
 *  04.06.00   2019-10-29  vistmo  FBL-813          Migration to MISRA 2012
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2013-06-04  visjhg  -                Initial release based on template version 02.00.00
 *  02.04.00   2014-10-16  visci   -                Synchronized version with fbl_diag (no other changes)
 *  02.05.00   2015-02-16  visci   ESCAN00081013    No changes
 *  02.06.00   2015-05-19  vaddod  ESCAN00083057    No changes
 *  02.07.00   2015-10-22  visci   -                Update to template version 3.02.00
 *                                 ESCAN00085448    No changes
 *                                 ESCAN00085459    No changes
 *                                 ESCAN00085637    Wrong NRC if Data Processing Deinit fails
 *  02.07.01   2015-11-12  visjop  ESCAN00086446    No changes
 *             2015-11-30  visci   ESCAN00086872    No changes
 *  02.08.00   2016-01-12  visci   -                Update to template version 4.00.00
 *                                 ESCAN00087405    No changes
 *                                 ESCAN00087747    No changes
 *                                 ESCAN00087748    No changes
 *                                 ESCAN00087750    No changes
 *                                 ESCAN00087753    No changes
 *  02.09.00   2016-03-02  visdkl  ESCAN00088680    No changes
 *                                 ESCAN00088680    No changes
 *  02.09.01   2016-04-07  vistns  ESCAN00089238    No changes
 *  02.09.02   2016-04-27  visci   ESCAN00089381    Upgraded FblLib_Mem version to 4.01.00
 *  02.10.00   2016-05-02  vishrf  ESCAN00087939    No changes
 *                                 ESCAN00087940    No changes
 *                                 ESCAN00089306    No changes
 *                                 ESCAN00089677    No changes
 *                                 ESCAN00089842    No changes
 *  03.00.00   2016-07-01  visci   ESCAN00088607    No changes
 *                                 ESCAN00090374    Added support for software signing solution
 *  03.00.01   2017-03-13  visci   ESCAN00094120    No changes
 *  03.01.00   2017-06-05  vadcel  ESCAN00095425    No changes
 *  03.01.02   2017-10-30  vadjbi  ESCAN00096944    No changes
 *                                 ESCAN00097248    No changes
 *  03.02.00   2017-12-07  vadcel  ESCAN00097677    No changes
 *  03.02.01   2018-03-23  visdkl  ESCAN00098896    No changes
 *  03.03.00   2018-04-10  visdkl  ESCAN00099059    No changes
 *  03.03.01   2018-06-14  visdkl  ESCAN00099687    No changes
 *             2018-07-04  visdkl  ESCAN00099466    No changes
 *  03.03.02   2018-08-21  visci   ESCAN00100454    No changes
 *                                 ESCAN00100459    No changes (see fbl_valstruct_oem.h)
 *  03.04.00   2018-11-26  visdkl  ESCAN00100766    No changes
 *                         visrr   ESCAN00101451    No changes
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    No changes
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    No changes
 *                                 ESCAN00102061    No changes
 *                                 ESCAN00102506    No changes
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    No changes
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    No changes
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    Gap fill handling of LibMem explicitly disabled
 *  04.01.01   2019-09-09  visrcn  ESCAN00103863    No changes
 *  04.01.02   2019-09-18  visrcn  ESCAN00104292    No changes
 *  04.01.03   2019-10-07  visrcn  ESCAN00104507    No changes
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
 *  04.02.00   2020-10-01  visrie  FBL-1611         Update to template revision 04.05.00
 *  04.03.00   2020-11-16  vistmo  FBL-1288         No changes
 *  04.04.00   2020-12-10  vistmo  FBL-2141         No changes
 *                         visrcn  ESCAN00107410    Wrong NRC will be sent when an Error occurs while calculation the
 *                                                  CRC on transfer Exit
 *  04.05.00   2021-01-11  visjdn  FBL-2439         No changes
 *  04.05.01   2021-02-24  vishor  ESCAN00108271    No changes
 *                                 FBL-3035         No changes
 *  04.05.02   2021-04-19  vishor  ESCAN00108500    No changes
 *  04.05.03   2021-05-10  vistbe  ESCAN00109048    No changes
 *  04.06.00   2021-06-28  vistbe  FBL-3522         No changes
 *                                 ESCAN00108908    No changes
 *  04.06.01   2021-10-22  vistbe  ESCAN00110414    No changes
 *                                 ESCAN00110495    No changes
 *  04.06.02   2022-01-31  visjdn  ESCAN00110767    No changes
 *  04.06.03   2022-03-29  visrie  ESCAN00111600    No changes
 *  04.07.00   2022-07-04  vismix  FBL-5233         No changes
 *                                 ESCAN00109981    No changes
 *                                 ESCAN00106367    No changes
 *                                 ESCAN00111443    No changes
 *  04.08.00   2022-07-06  vismix  FBL-4527         No changes
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
 *                                 ESCAN00113764    No changes
 *                                 FBL-6438         No changes
 *  04.10.01   2023-03-13  visjns  ESCAN00113919    No changes
 *  04.10.02   2023-05-11  vismix  ESCAN00113831    No changes
 **********************************************************************************************************************/

#ifndef FBL_MEM_OEM_H
#define FBL_MEM_OEM_H


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* PRQA S 3453 TAG_FblMemOem_3453_1 */ /* MD_MSR_FctLikeMacro */
/* PRQA S 0602, 0603 TAG_FblMemOem_0602_0603_1 */ /* MD_FblMemOem_0602_0603 */

/*-- Version information ----------------------------------------------------*/

/* Reference interface version */
/** Major interface version identifies incompatible changes */
#define FBL_MEM_API_REFERENCE_VERSION_MAJOR     0x04u
/** Minor interface version identifies backward compatible changes */
#define FBL_MEM_API_REFERENCE_VERSION_MINOR     0x05u
/** Release interface version identifies cosmetic changes */
#define FBL_MEM_API_REFERENCE_VERSION_RELEASE   0x00u

/*-- Buffer configuration ---------------------------------------------------*/

/** Input buffer size */
#define FBL_MEM_BUFFER_SIZE               FBL_DIAG_BUFFER_LENGTH

/** Preamble length for UDS download */
#define FBL_MEM_PREAMBLE_LENGTH_UDS       2u
/** Preamble length for MCMP download */
#define FBL_MEM_PREAMBLE_LENGTH_MCMP      1u

/** Preamble length of default source */
#if defined( FBL_MEM_SOURCE_PREAMBLE_LENGTH )
/* Allow override for non-standard use-cases */
#else
# if defined( MCMP_MEM_MODE_DYNAMIC )
/* Mixed download over UDS and MCMP
   UDS is default source */
#  define FBL_MEM_SOURCE_PREAMBLE_LENGTH   FBL_MEM_PREAMBLE_LENGTH_UDS
# elif defined( MCMP_MEM_MODE_SLAVE )
/* MCMP-only download */
#  define FBL_MEM_SOURCE_PREAMBLE_LENGTH   FBL_MEM_PREAMBLE_LENGTH_MCMP
# else
/* UDS-only download */
#  define FBL_MEM_SOURCE_PREAMBLE_LENGTH   FBL_MEM_PREAMBLE_LENGTH_UDS
# endif /* MCMP_MEM_MODE_ */
#endif /* FBL_MEM_SOURCE_PREAMBLE_LENGTH */

/** Length of default preamble */
#define FBL_MEM_DEFAULT_PREAMBLE_LENGTH   FBL_MEM_SOURCE_PREAMBLE_LENGTH
/** Maximum preamble length */
#define FBL_MEM_MAX_PREAMBLE_LENGTH       FBL_MEM_SOURCE_PREAMBLE_LENGTH

/* Allow override in configuration */
# if defined( __ApplFblMemIsDataProcessingRequired )
# else
/** Check whether specific data format identifier implies the need for data processing */
#  define __ApplFblMemIsDataProcessingRequired(dataFormat) \
   ((tFblResult)((kDiagSubNoDataProcessing == (dataFormat)) ? kFblFailed : kFblOk))
# endif /* __ApplFblMemIsDataProcessingRequired */
# if defined( FBL_MEM_ENABLE_SELECTIVE_PIPELINED_PROGRAMMING )
/* Allow override in configuration */
#  if defined( __ApplFblMemIsPipelinedProgrammingDisabled )
#  else
/*
   This is just an example for the macro definition
   Remove macro and disable feature if not applicable
*/
/** Check whether pipelined programming has to be disabled for specific block / segment / data format identifier */
#   define __ApplFblMemIsPipelinedProgrammingDisabled(pBlockInfo, pSegmentInfo)   ((tFblResult)kFblFailed)
#  endif /* __ApplFblMemIsPipelinedProgrammingDisabled */
# endif /* FBL_MEM_ENABLE_SELECTIVE_PIPELINED_PROGRAMMING */

/*-- Verification -----------------------------------------------------------*/

/** Calculate CRC total over complete block
    Otherwise start of block until last address of last segment is covered */
#define FBL_MEM_DISABLE_VERIFY_OUTPUT_FULL_BLOCK_LENGTH

/** Size of temporary verification result buffer */
#define FBL_MEM_SIG_RESULT_BUFFER_SIZE                   kDiagSigBufLength
/** Overwrite input verification function type */
#define FBL_MEM_VERIFY_FCT_INPUT_TYPE_OVERWRITE(type)    FBL_CALL_TYPE tFblMemVerifyStatus (*type) (V_MEMRAM1 tFblMemVerifyParamInput V_MEMRAM2 V_MEMRAM3 *)

/*-- Memory driver ----------------------------------------------------------*/
/*
   Perform actions directly before and after memory driver write
   Remove macro if not applicable
*/
#define __ApplFblMemPreWrite()                     FblDiagMemPreWrite()
#define __ApplFblMemPostWrite()                    FblDiagMemPostWrite()
/*
   Perform actions directly before and after memory driver erase
   Remove macro if not applicable
*/
#define __ApplFblMemPreErase()                     FblDiagMemPreWrite()
#define __ApplFblMemPostErase()                    FblDiagMemPostWrite()
/*
   Perform actions directly after segment end indication
   Remove macro if not applicable
*/
/* #define __ApplFblMemPostSegmentEnd() */

/*-- Watchdog ---------------------------------------------------------------*/
/* Default return code */
#define FBL_MEM_WD_TRIGGER_DEFAULT                 (FBL_NO_TRIGGER)
/*
   Overwrite status type returned by watchdog trigger function
   Remove macro if not applicable
*/
#define FBL_MEM_TRIGGER_STATUS_OVERWRITE           vuint8
/*
   Default watchdog trigger
   Remove macro if not applicable
*/
#define __ApplFblMemWdTrigger()                    FblLookForWatchdog()
/*
   Watchdog trigger including adaptive generation of RCR-RP
   Remove macro if not applicable
*/
#define __ApplFblMemAdaptiveRcrRp()                FblRealTimeSupport()
/*
   Check whether RCR-RP is already active
   Remove macro if not applicable or required (e.g. if kForceSendRpIfNotInProgress is available)
*/
#define __ApplFblMemIsRcrRpActive()                ((tFblResult)(GetRcrRpInProgress() ? kFblOk : kFblFailed))
/*
   Forced generation of RCR-RP (hint: use kForceSendRpIfNotInProgress if available)
   Remove macro if not applicable
*/
#define __ApplFblMemForcedRcrRp()                  DiagExRCRResponsePending(kForceSendResponsePending)

/* Pass watchdog trigger with extended status result to data processing */
#define FBL_MEM_ENABLE_EXT_TRIGGER_DATA_PROC
/* Pass watchdog trigger with extended status result to signature verification over input data */
#define FBL_MEM_DISABLE_EXT_TRIGGER_INPUT_VERIFY
/* Pass watchdog trigger with extended status result to signature verification over output data */
#define FBL_MEM_DISABLE_EXT_TRIGGER_OUTPUT_VERIFY

/*-- Gap filling ------------------------------------------------------------*/
/* Gap fill handling of LibMem explicitly disabled */
#define FBL_MEM_DISABLE_GAP_FILL

/*-- Progress information ---------------------------------------------------*/
#if defined( FBL_MEM_ENABLE_PROGRESS_INFO )
/* Allow override in configuration */
# if defined( __ApplFblMemReportProgress )
# else
/** Progress information reporting */
/*#  define __ApplFblMemReportProgress(progressInfo)*/
# endif /* __ApplFblMemReportProgress */
#endif /* FBL_MEM_ENABLE_PROGRESS_INFO */

/*-- Critical sections ------------------------------------------------------*/
/* Allow override in configuration */
#if defined( __ApplFblMemEnterCriticalSection )
#else
/** Enter critical section */
#  define __ApplFblMemEnterCriticalSection()
#endif /* __ApplFblMemEnterCriticalSection */

/* Allow override in configuration */
#if defined( __ApplFblMemLeaveCriticalSection )
#else
/** Leave critical section */
#  define __ApplFblMemLeaveCriticalSection()
#endif /* __ApplFblMemLeaveCriticalSection */

/*-- Error handling ---------------------------------------------------------*/
/** Overwrite error codes by OEM dependent value */
#define FBL_MEM_ENABLE_STATUS_OVERWRITE
/* Enable interface to remap error codes to OEM dependent value */
#define FBL_MEM_DISABLE_STATUS_REMAPPING
/* OEM dependent status type */
#define FBL_MEM_STATUS_TYPE                           vuint8

#if defined( FBL_MEM_ENABLE_STATUS_OVERWRITE ) 
/* Default */
# define FBL_MEM_STATUS_Ok                            kDiagErrorNone
# define FBL_MEM_STATUS_Failed                        kDiagNrcConditionsNotCorrect
/* BlockErase indication */
# define FBL_MEM_STATUS_BlockEraseSequence            kDiagNrcRequestSequenceError
/* BlockStart indication */
# define FBL_MEM_STATUS_BlockStartSequence            kDiagNrcConditionsNotCorrect
# define FBL_MEM_STATUS_BlockStartParam               kDiagNrcConditionsNotCorrect
/* BlockEnd indication */
# define FBL_MEM_STATUS_BlockEndSequence              kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_BlockEndVerifyFinalize        kDiagNrcGeneralProgrammingFailure
/* BlockVerify */
# define FBL_MEM_STATUS_BlockVerifySequence           kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_BlockVerifyInputVerify        kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_BlockVerifyProcessedVerify    kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_BlockVerifyPipeVerify         kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_BlockVerifyOutputVerify       kDiagNrcGeneralProgrammingFailure
/* SegmentStart indication */
# define FBL_MEM_STATUS_SegmentStartSequence          kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_SegmentStartDataProcInit      kDiagNrcRequestOutOfRange
# define FBL_MEM_STATUS_SegmentStartStreamOutInit     kDiagNrcRequestOutOfRange
# define FBL_MEM_STATUS_SegmentStartVerifyInit        kDiagNrcConditionsNotCorrect
# define FBL_MEM_STATUS_SegmentStartVerifyCompute     kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_SegmentStartSegmentCount      kDiagNrcRequestOutOfRange
/* SegmentEnd indication */
# define FBL_MEM_STATUS_SegmentEndSequence            kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_SegmentEndInsufficientData    kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_SegmentEndPost                kDiagNrcConditionsNotCorrect
/* Data indication */
# define FBL_MEM_STATUS_DataIndSequence               kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_DataIndParam                  kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DataIndOverflow               kDiagNrcTransferDataSuspended
/* Data processing */
# define FBL_MEM_STATUS_DataProc                      kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DataProcConsume               kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DataProcDeinit                kDiagNrcGeneralProgrammingFailure
/* Stream output */
# define FBL_MEM_STATUS_StreamOutput                  kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_StreamOutputConsume           kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_StreamOutputOverflow          kDiagNrcTransferDataSuspended
# define FBL_MEM_STATUS_StreamOutputDeinit            kDiagNrcGeneralProgrammingFailure
/* Memory driver */
# define FBL_MEM_STATUS_DriverResumeWrite             kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DriverWrite                   kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DriverErase                   kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DriverRemainder               kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_DriverSuspendWrite            kDiagNrcGeneralProgrammingFailure
/* Programming operation */
# define FBL_MEM_STATUS_ProgramOverflow               kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_ProgramOutsideFbt             kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_ProgramUnalignedAddress       kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_ProgramDriverNotReady         kDiagNrcRequestSequenceError
# define FBL_MEM_STATUS_ProgramPreWrite               kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_ProgramPostWrite              kDiagNrcGeneralProgrammingFailure
/* Erase operation */
# define FBL_MEM_STATUS_EraseOutsideFbt               kDiagNrcRequestOutOfRange
# define FBL_MEM_STATUS_EraseDriverNotReady           kDiagNrcConditionsNotCorrect
# define FBL_MEM_STATUS_ErasePreErase                 kDiagNrcConditionsNotCorrect
# define FBL_MEM_STATUS_ErasePostErase                kDiagNrcConditionsNotCorrect
/* On-the-fly verification */
# define FBL_MEM_STATUS_VerifyCompute                 kDiagNrcGeneralProgrammingFailure
# define FBL_MEM_STATUS_VerifyFinalize                kDiagNrcGeneralProgrammingFailure
/* Pass-through */
# define FBL_MEM_STATUS_PassThroughLocal              kDiagNrcConditionsNotCorrect
# define FBL_MEM_STATUS_PassThroughRemote             kDiagNrcConditionsNotCorrect
#endif /* FBL_MEM_ENABLE_STATUS_OVERWRITE || FBL_MEM_ENABLE_STATUS_REMAPPING */

#if defined( FBL_ENABLE_DEBUG_STATUS )
/** Enable extended error status handling */
# define FBL_MEM_ENABLE_EXT_STATUS

/* Default */
# define FBL_MEM_EXT_STATUS_Ok(status)
# define FBL_MEM_EXT_STATUS_Failed(status)
/* BlockErase indication */
# define FBL_MEM_EXT_STATUS_BlockEraseSequence(status)
/* BlockStart indication */
# define FBL_MEM_EXT_STATUS_BlockStartSequence(status)
# define FBL_MEM_EXT_STATUS_BlockStartParam(status)
/* BlockEnd indication */
# define FBL_MEM_EXT_STATUS_BlockEndSequence(status)
# define FBL_MEM_EXT_STATUS_BlockEndVerifyFinalize(status)
/* BlockVerify */
# define FBL_MEM_EXT_STATUS_BlockVerifySequence(status)
# define FBL_MEM_EXT_STATUS_BlockVerifySigVerify(status)
# define FBL_MEM_EXT_STATUS_BlockVerifyInputVerify(status)
# define FBL_MEM_EXT_STATUS_BlockVerifyProcessedVerify(status)
# define FBL_MEM_EXT_STATUS_BlockVerifyPipeVerify(status)
# define FBL_MEM_EXT_STATUS_BlockVerifyOutputVerify(status)
/* SegmentStart indication */
# define FBL_MEM_EXT_STATUS_SegmentStartSequence(status)
# define FBL_MEM_EXT_STATUS_SegmentStartDataProcInit(status)
# define FBL_MEM_EXT_STATUS_SegmentStartStreamOutInit(status)
# define FBL_MEM_EXT_STATUS_SegmentStartVerifyInit(status)
# define FBL_MEM_EXT_STATUS_SegmentStartVerifyCompute(status)
# define FBL_MEM_EXT_STATUS_SegmentStartSegmentCount(status)   FblErrStatSetError(FBL_ERR_TOO_MANY_SEGMENTS_IN_MODULE)
/* SegmentEnd indication */
# define FBL_MEM_EXT_STATUS_SegmentEndSequence(status)
# define FBL_MEM_EXT_STATUS_SegmentEndInsufficientData(status)
# define FBL_MEM_EXT_STATUS_SegmentEndPost(status)
/* Data indication */
# define FBL_MEM_EXT_STATUS_DataIndSequence(status)
# define FBL_MEM_EXT_STATUS_DataIndParam(status)
# define FBL_MEM_EXT_STATUS_DataIndOverflow(status)            FblErrStatSetState(FBL_ERR_DATA_OVERFLOW)
/* Data processing */
# define FBL_MEM_EXT_STATUS_DataProc(status)
# define FBL_MEM_EXT_STATUS_DataProcConsume(status)
# define FBL_MEM_EXT_STATUS_DataProcDeinit(status)
/* Stream output */
# define FBL_MEM_EXT_STATUS_StreamOutput(status)
# define FBL_MEM_EXT_STATUS_StreamOutputConsume(status)
# define FBL_MEM_EXT_STATUS_StreamOutputOverflow(status)
# define FBL_MEM_EXT_STATUS_StreamOutputDeinit(status)
/* Memory driver */
# define FBL_MEM_EXT_STATUS_DriverResumeWrite(status)
/* Status contains flash driver error code */
# define FBL_MEM_EXT_STATUS_DriverWrite(status)                { FblErrStatSetFlashDrvError(status); FblErrStatSetError(FBL_ERR_FLASH_PROG_ERROR); }
# define FBL_MEM_EXT_STATUS_DriverErase(status)                { FblErrStatSetFlashDrvError(status); FblErrStatSetError(FBL_ERR_FLASH_ERASE_ERROR); }
# define FBL_MEM_EXT_STATUS_DriverRemainder(status)
# define FBL_MEM_EXT_STATUS_DriverSuspendWrite(status)
/* Programming operation */
# define FBL_MEM_EXT_STATUS_ProgramOverflow(status)            FblErrStatSetState(FBL_ERR_DATA_OVERFLOW)
# define FBL_MEM_EXT_STATUS_ProgramOutsideFbt(status)          FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND)
# define FBL_MEM_EXT_STATUS_ProgramUnalignedAddress(status)    FblErrStatSetError(FBL_ERR_FLASH_PROG_ERROR)
# define FBL_MEM_EXT_STATUS_ProgramDriverNotReady(status)      FblErrStatSetError(FBL_ERR_FLASHCODE_INIT_FAILED)
# define FBL_MEM_EXT_STATUS_ProgramPreWrite(status)
# define FBL_MEM_EXT_STATUS_ProgramPostWrite(status)
/* Erase operation */
# define FBL_MEM_EXT_STATUS_EraseOutsideFbt(status)            FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND)
# define FBL_MEM_EXT_STATUS_EraseDriverNotReady(status)        FblErrStatSetError(FBL_ERR_FLASHCODE_INIT_FAILED)
# define FBL_MEM_EXT_STATUS_ErasePreErase(status)
# define FBL_MEM_EXT_STATUS_ErasePostErase(status)
/* On-the-fly verification */
# define FBL_MEM_EXT_STATUS_VerifyCompute(status)
# define FBL_MEM_EXT_STATUS_VerifyFinalize(status)
/* Pass-through */
# define FBL_MEM_EXT_STATUS_PassThroughLocal(status)
# define FBL_MEM_EXT_STATUS_PassThroughRemote(status)

/* Extended info: status contains current address */
# define FBL_MEM_EXT_STATUS_ProgramAddress(status)             FblErrStatSetAddress(status)
# define FBL_MEM_EXT_STATUS_EraseAddress(status)               FblErrStatSetAddress(status)
#endif /* FBL_ENABLE_DEBUG_STATUS */

/* PRQA L:TAG_FblMemOem_0602_0603_1 */
/* PRQA L:TAG_FblMemOem_3453_1 */

#endif /* FBL_MEM_OEM_H */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblMemOem_0602_0603:
     Reason: Usage of reserved identifiers with leading underscores is accepted for compatibility reasons.
     Risk: Name conflicts.
     Prevention: Compile and link of the different variants in the component and integration test.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_MEM_OEM.H
 **********************************************************************************************************************/
