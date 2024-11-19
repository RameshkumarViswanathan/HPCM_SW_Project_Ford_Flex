/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         FBL updater callout routines - OEM specific
 *
 *  \note          Please note, that this file contains a collection of callback functions to be used with the
 *                 FBL Updater. These functions may influence the behavior of the updater in principle.
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
 *  01.00.00   2016-09-14  visjhg  -                Initial release
 *  02.00.00   2020-11-10  visrcn  ESCAN00107322    No changes
 *  02.01.00   2022-06-14  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#ifndef UPD_OEM_CFG_H
#define UPD_OEM_CFG_H

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Configuration switches */

/** Do not send RCR-RP messages during operation */
#define FBL_UPD_DISABLE_RESPONSE_PENDING

/** Logical block of the updater - used for invalidation of updater after successful update */
#define FBL_UPD_OEM_MTAB_UPDATER_BLOCK_NUMBER      FBL_MTAB_UPDATER_BLOCK_NUMBER

/*-- Overwrite Callout Functions -------------------------------------------------------------------------------------*/

/** Updater invalidation hook */
# define FBL_UPD_HOOK_INVALIDATE_UPDATER           ApplFblUpdOemInvalidateUpdater

#endif /* UPD_OEM_CFG_H */

/***********************************************************************************************************************
 *  END OF FILE: UPD_OEM_CFG.H
 **********************************************************************************************************************/
