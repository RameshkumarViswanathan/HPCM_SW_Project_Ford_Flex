/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Implementation of a download check by using an embedded validation structure
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
 *  TEMPLATE REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2016-07-01  visci   -                Initial version
 *  01.01.00   2017-02-03  vadcel  ESCAN00093858    Added support for compatibility check
 *                                                  Added blank check functionality
 *                                                  Added API for external public key
 *                                                  Reworked return value handling
 *  01.01.01   2017-11-09  visci   ESCAN00096836    No changes
 *  01.01.02   2018-03-23  visdkl  ESCAN00097287    Bootloader does not properly use configuration of CLASS_DDD
 *  01.02.00   2018-06-15  visci   ESCAN00098963    Corrected return value for public key read failure
 *  01.03.00   2019-01-25  visci   ESCAN00098904    Improved verification sequence
 *                                 ESCAN00101065    Alignment for Blank Check is not applied correctly
 *                                 ESCAN00101321    Added option to skip download segment check
 *  01.03.01   2019-02-06  visci   ESCAN00102005    No changes
 *  01.04.00   2019-06-14  visci   ESCAN00102956    No changes
 *                                 ESCAN00102957    No changes
 *  01.05.00   2019-06-25  visdlm  ESCAN00103492    Added gap fill mechanism
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    Updated to new template version
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    Compilation fails because of Organi parse error
 *                                 ESCAN00102061    No changes
 *                                 ESCAN00102506    No changes
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL not set for OTA projects
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    No changes
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    Updated to newest template version
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
 *  04.02.00   2020-10-01  visrie  FBL-1611         No changes
 *  04.03.00   2020-11-16  vistmo  FBL-1288         No changes
 *  04.04.00   2020-12-10  vistmo  FBL-2141         No changes
 *                         visrcn  ESCAN00107410    No changes
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

#ifndef FBL_VALSTRUCT_OEM_H
#define FBL_VALSTRUCT_OEM_H

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )

/** Specify default options for validation structure processing */
# define FBL_VALSTRUCT_OPTION_DEFAULT                 (FBL_VALSTRUCT_OPTION_NONE)

/** Maximum number of blocks in validation struct */
# if !defined( FBL_VALSTRUCT_BLOCKCOUNT_MAX )
/* At least two segments required for SBL */
#  define FBL_VALSTRUCT_BLOCKCOUNT_MAX                (SWM_DATA_MAX_NOAR - 2u)
# endif

/** Size of validation struct members */
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
#  define FBL_VALSTRUCT_TAG_SIZE                      0x00u
#  define FBL_VALSTRUCT_VERSION_SIZE                  0x02u
#  define FBL_VALSTRUCT_BLOCKCOUNT_SIZE               0x02u
#  define FBL_VALSTRUCT_BLOCKADDRESS_SIZE             0x04u
#  define FBL_VALSTRUCT_BLOCKLENGTH_SIZE              0x04u
#  define FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE            0x20u
#  define FBL_VALSTRUCT_VALIDATESUM_SIZE              0x00u
# else
#  define FBL_VALSTRUCT_TAG_SIZE                      0x04u
#  define FBL_VALSTRUCT_VERSION_SIZE                  0x00u
#  define FBL_VALSTRUCT_BLOCKCOUNT_SIZE               0x02u
#  define FBL_VALSTRUCT_BLOCKADDRESS_SIZE             0x04u
#  define FBL_VALSTRUCT_BLOCKLENGTH_SIZE              0x04u
#  define FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE            0x02u
#  define FBL_VALSTRUCT_VALIDATESUM_SIZE              0x02u
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/** Supported Valstruct version can be overwritten */
#ifndef FBL_VALSTRUCT_VERSION
# define FBL_VALSTRUCT_VERSION                        0x0000u
#endif /* FBL_VALSTRUCT_VERSION */

/** Define supported structure versions */
# define FblValStructIsVersionSupported(ver)          ((FBL_VALSTRUCT_VERSION == (ver)) ? kFblValStructOk : kFblValStructNotAuthentic)

/** Provide base address of validation structure and signature as well as the respective download segment dimension */

/****** Ford (CCC + DDD use case, signature embedded before validation structure ******/
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/* Block header points to the verification structure, the signature is located below */
#  define FblValStructGetSigAddress(block)            ((block)->headerAddress - SEC_VERIFY_CLASS_CCC_VERIFY_SIZE)
#  define FblValStructGetVsAddress(block)             ((block)->headerAddress)
#  define FblValStructGetVsSegAddress(block)          FblValStructGetSigAddress(block)
#  define FblValStructGetVsSegLength(vsLength)        (SEC_VERIFY_CLASS_CCC_VERIFY_SIZE + (vsLength))

/* Provide signature data */
#  define FblValStructGetSignature(block, buffer)     (tFblValStructResult)((SEC_VERIFY_CLASS_CCC_VERIFY_SIZE == \
                                                       FblReadProm(FblValStructGetSigAddress(block), (buffer), SEC_VERIFY_CLASS_CCC_VERIFY_SIZE)) ? \
                                                       kFblValStructOk : kFblValStructMemoryReadError)

#  if defined( FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY )
/** Provide public key */
#   define FblValStructGetPublicKey(key)               ApplFblReadVerificationKey(key)
#  endif
# else /* SEC_ENABLE_SECURITY_CLASS_DDD */
/* Block header points to the verification structure */
#  define FblValStructGetVsAddress(block)             ((block)->headerAddress)
#  define FblValStructGetVsSegAddress(block)          FblValStructGetVsAddress(block)
#  define FblValStructGetVsSegLength(vsLength)        (vsLength)
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/** Provide segment list with address, length and checksum for each segment */
# define FblValStructGetSegmentList(block, segList)   FblDiagGetSegmentList(block, segList)

/** Options only relevant for OTA */

# if defined( FBL_ENABLE_GAP_FILL )
#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL) || \
      defined( FBL_VALSTRUCT_DISABLE_GAP_FILL )
/* Valstruct gap fill handling explicitly defined outside */
#  else
#   define FBL_VALSTRUCT_ENABLE_GAP_FILL
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */
# endif /* FBL_ENABLE_GAP_FILL */

#endif /* FBL_ENABLE_VALSTRUCT */

/** OEM specific return code mapping (tFblValStructResult) */
#define kFblValStructOk                               0u
#define kFblValStructNotAuthentic                     1u
#define kFblValStructInvalidFormat                    2u
#define kFblValStructBlockNumberMismatch              3u
#define kFblValStructChecksumValueMismatch            4u
#define kFblValStructMemoryReadError                  5u
#define kFblValStructBlockMismatch                    6u
#define kFblValStructKeyError                         7u
#define kFblValStructBlankCheckFailed                 8u
#define kFblValStructGapFillFailed                    9u

#endif /* FBL_VALSTRUCT_OEM_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_VALSTRUCT_OEM.H
 **********************************************************************************************************************/
