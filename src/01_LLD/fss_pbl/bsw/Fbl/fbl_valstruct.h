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
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2016-07-01  visci   -                Initial version
 *  01.01.00   2017-02-03  visci   ESCAN00093858    Added support for compatibility check
 *                         vacel                    Added blank check functionality
 *                                                  Added API for external public key
 *                                                  Reworked return value handling
 *  01.01.01   2017-11-09  visci   ESCAN00096836    No changes
 *  01.01.02   2018-03-23  visdkl  ESCAN00097287    Bootloader does not properly use configuration of CLASS_DDD
 *  01.02.00   2018-06-15  visci   ESCAN00098963    No changes
 *  01.03.00   2019-01-25  visci   ESCAN00098904    Improved verification sequence
 *                                 ESCAN00101065    Alignment for Blank Check is not applied correctly
 *                                 ESCAN00101321    Added option to skip download segment check
 *  01.03.01   2019-02-06  visci   ESCAN00102005    No changes
 *  01.04.00   2019-06-14  visci   ESCAN00102956    No changes
 *                                 ESCAN00102957    No changes
 *  01.05.00   2019-06-25  visdlm  ESCAN00103492    Added gap fill mechanism
 *  01.05.01   2021-01-18  visjdn  ESCAN00107640    No changes
 *  01.05.02   2021-06-01  vishor  ESCAN00109198    No changes
 *  01.06.00   2022-04-28  visstn  FBL-4366         Perform MISRA 2012 migration
 *  01.07.00   2022-10-12  visjdn  FBL-5694         Support of Xiaomi validation structure
 *  01.08.00   2022-11-25  vistbe  FBL-6055         Extend configurability of checksum and signature
 *  01.08.01   2023-02-02  vistbe  ESCAN00113401    Compiler error: error directive "Unsupported blockcount size"
 **********************************************************************************************************************/

#ifndef FBL_VALSTRUCT_H
#define FBL_VALSTRUCT_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblLib_ValStruct CQComponent : Implementation */
#define FBLVALSTRUCT_VERSION           0x0108u
#define FBLVALSTRUCT_RELEASE_VERSION   0x01u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_valstruct_oem.h"

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Defines used to request specific ValStruct processing options */
#define FBL_VALSTRUCT_OPTION_NONE               (0x00u)
#define FBL_VALSTRUCT_OPTION_CHECKSUM_INTERNAL  FBL_BIT0
#define FBL_VALSTRUCT_OPTION_BLANKCHECK         FBL_BIT1
#define FBL_VALSTRUCT_OPTION_GAP_FILL           FBL_BIT2

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/* Define dedicated return value type based on tFblResult to indicate the deviation:
 * - The return value in case of successful execution matches kFblOk
 * - The negative return values (!= kFblOk) are module specific error codes (see fbl_valstruct_oem.h)
 */
typedef tFblResult tFblValStructResult;

/* Data type which is used to pass processing options to FblValStructValidateBlockExtended() */
typedef vuint8 tFblValStructOption;

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#define FBL_VALSTRUCT_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
tFblValStructResult FblValStructValidateBlockExtended( const tBlockDescriptor * blockDescriptor,
                                                       const tFblValStructOption option );
tFblValStructResult FblValStructValidateBlock( const tBlockDescriptor * blockDescriptor );
#define FBL_VALSTRUCT_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
# if defined( FBL_VALSTRUCT_READ_BUFFER_SIZE )
  /* Pre-defined buffer size, check validity */
#  if ( FBL_VALSTRUCT_READ_BUFFER_SIZE < FBL_VALSTRUCT_MAX_SIZE )
#   error "Validation structure: structure does not fit into read buffer"
#  endif
#  if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC ) && (FBL_VALSTRUCT_READ_BUFFER_SIZE < SEC_VERIFY_CLASS_CCC_VERIFY_SIZE)
#   error "Validation structure: signature does not fit into read buffer"
#  endif
# endif /* FBL_VALSTRUCT_READ_BUFFER_SIZE */

# if ( FBL_VALSTRUCT_BLOCKCOUNT_MAX > 254 )
#  error "Validation functionality: invalid maximum block count configured (max. value: 254)"
# endif

/* Automatic definition of verification output buffer size (FBL_VALSTRUCT_VERIFY_SIZE) currently supports Class DDD
 * with option "CRC Written" only */
# if !defined( SEC_ENABLE_SECURITY_CLASS_DDD ) || \
      defined( SEC_ENABLE_CRC_TOTAL )          || \
      defined( SEC_ENABLE_VENDOR_CHECKSUM )
#  error "Validation structure: unsupported verification configuration"
# endif

/* Check if blank check and gap filling functionality are enabled at the same time */
# if  defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK ) && \
      defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
#  error "Validation structure: unsupported validation structure processing configuration"
# endif /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK && FBL_VALSTRUCT_ENABLE_GAP_FILL */

/* Check the size of the Blockcount to be 1 or 2 */
# if (FBL_VALSTRUCT_BLOCKCOUNT_SIZE != 1u) && (FBL_VALSTRUCT_BLOCKCOUNT_SIZE != 2u)
#  error "Unsupported blockcount size"
# endif /* (FBL_VALSTRUCT_BLOCKCOUNT_SIZE != 1u) && (FBL_VALSTRUCT_BLOCKCOUNT_SIZE != 2u) */
#endif /* FBL_ENABLE_VALSTRUCT */

/* Automatic definition of the Alfi size in case it is not previously defined */
#if !defined(FBL_VALSTRUCT_ALFI_SIZE)
# define FBL_VALSTRUCT_ALFI_SIZE             0x00u
#endif

/* Default definition for checksum and signature size and function (can be overwritten) */
#if !defined( FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE )
# define FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE             SEC_VERIFY_CLASS_DDD_VERIFY_SIZE
#endif

#if !defined( FBL_VALSTRUCT_BLOCKCHECKSUM_VERIFY_OFFSET )
# define FBL_VALSTRUCT_BLOCKCHECKSUM_VERIFY_OFFSET    SEC_VERIFY_CLASS_DDD_VERIFY_OFFSET
#endif

#if !defined( FblValStructChecksumVerification )
# define FblValStructChecksumVerification             SecM_VerificationClassDDD
#endif

#if !defined( FBL_VALSTRUCT_SIGNATURE_SIZE )
# define FBL_VALSTRUCT_SIGNATURE_SIZE                 SEC_VERIFY_CLASS_CCC_VERIFY_SIZE
#endif

#if !defined( FblValStructSignatureVerification )
# define FblValStructSignatureVerification            SecM_VerificationClassCCC
#endif

#endif /* FBL_VALSTRUCT_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_VALSTRUCT.H
 **********************************************************************************************************************/
