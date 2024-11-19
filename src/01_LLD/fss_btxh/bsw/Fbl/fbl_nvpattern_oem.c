/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Implementation of pattern/mask based non-volatile information storage
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
 *  01.04.00   2019-01-25  viskjs  ESCAN00101824    Added patterns that can be validated multiple times
 *                                 ESCAN00101823    Added feature to store arbitrary values at end of logical block
 *  01.04.01   2019-03-26  viskjs  ESCAN00102200    No changes
 *                                 ESCAN00102204    No changes
 *                                 ESCAN00102646    No changes
 *  01.04.02   2019-07-22  vistbe  ESCAN00103605    No changes
 *  01.04.03   2020-05-07  visjdn  ESCAN00106002    No changes
 *  01.04.04   2021-03-03  visrie  ESCAN00108616    No changes
 *                                 ESCAN00108753    No changes
 *                                 FBL-3129         Added/adapted MemMap sections
 *                                                  Update to MISRA 2012
 *  01.04.05   2021-03-16  visrie  ESCAN00108859    No changes
 *  01.05.00   2021-06-16  visrie  FBL-3641         Support OTA use case and user extension
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    Added for OTA use case
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    No changes
 *                                 ESCAN00102061    No changes
 *                                 ESCAN00102506    No changes
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    No changes
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    No changes
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    No changes
 *  04.01.01   2019-09-09  visrcn  ESCAN00103863    No changes
 *  04.01.02   2019-09-18  visrcn  ESCAN00104292    No changes
 *  04.01.03   2019-10-07  visrcn  ESCAN00104507    No changes
 *  04.01.04   2020-01-14  visjdn  ESCAN00105039    Added ErasedState support in the pattern array
 *  04.01.05   2020-01-22  visrcn  ESCAN00105356    No changes
 *  04.01.06   2020-02-04  visrcn  ESCAN00104331    No changes
 *                                 ESCAN00105007    No changes
 *  04.01.07   2020-03-20  visrie  ESCAN00104555    No changes
 *  04.01.08   2020-04-01  visjdn  ESCAN00105201    No changes
 *  04.01.09   2020-05-05  vistmo  ESCAN00105551    Modifiable number of rollbacks
 *  04.01.10   2020-06-29  visjdn  ESCAN00106253    No changes
 *  04.01.11   2020-07-07  visjdn  ESCAN00106303    No changes
 *  04.01.12   2020-09-10  vistbe  ESCAN00107348    No changes
 *  04.02.00   2020-10-01  visrie  FBL-1611         No changes
 *  04.03.00   2020-11-16  vistmo  FBL-1288         No changes
 *  04.04.00   2020-12-10  vistmo  FBL-2141         No changes
 *                         visrcn  ESCAN00107410    No changes
 *  04.05.00   2021-01-11  visjdn  FBL-2439         No changes
 *  04.05.01   2021-02-24  vishor  ESCAN00108271    No changes
 *                                 FBL-3035         Added/adapted MemMap sections
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

#define FBL_NVPATTERN_OEM_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
#include "fbl_nvpattern_oem.h"

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define FBLNVPATTERN_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if defined ( FBL_NVPATTERN_ENABLE_MULTIPLE_VALIDATION )
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 fblNvPatternMultiplicity[] =
{
   1u, /**< kFblNvPatternId_PartitionValidity can be validated/invalidated once after erasure */
   1u, /**< kFblNvPatternId_ModuleValidity can be validated/invalidated once after erasure */
# if defined( FBL_ENABLE_FLASH_ERASED_DETECTION )
   1u, /**< kFblNvPatternId_ErasedState can be validated/invalidated once after erasure */
# endif
  FBL_NVPATTERN_USER_PATTERN_MULTIPLICITY
};
#endif /* FBL_NVPATTERN_ENABLE_MULTIPLE_VALIDATION */

#if defined( FBL_NVPATTERN_ENABLE_BLOCK_PROPERTIES )
V_MEMROM0 V_MEMROM1 tFblBlockProperty V_MEMROM2 fblNvBlockProperties[] =
{
   FBL_NVPATTERN_USER_PROPERTY_ENTRY
};
#endif /* FBL_NVPATTERN_ENABLE_BLOCK_PROPERTIES */

#define FBLNVPATTERN_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblNvPatternOem_0724_EnumValNotUnique:
     Reason: The same numerical value is associated to different enum entries, to allows each entry value to be used in
      the appropriate context, keeping a better code structure and understanding.
     Risk: Enum values can potentially be assigned with the same value unintentionally.
     Prevention: Correct design.

   MD_FblNvPatternOem_3684:
     Reason: The size of the array is determined only at compile time.
     Risk: The code is less clear and require more analysis for a deep understanding.
     Prevention: No prevention defined.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_NVPATTERN_OEM.C
 **********************************************************************************************************************/
