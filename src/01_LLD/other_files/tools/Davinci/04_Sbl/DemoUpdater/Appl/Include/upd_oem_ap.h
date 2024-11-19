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

#ifndef UPD_OEM_AP_H
#define UPD_OEM_AP_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblUpd_Ap_Ford CQComponent : Implementation */
#define FBLUPD_AP_FORD_VERSION               0x0201u
#define FBLUPD_AP_FORD_RELEASE_VERSION       0x00u

/* Interface version */
/** Major interface version identifies incompatible changes */
#define FBL_UPD_AP_OEM_API_VERSION_MAJOR     0x01u
/** Minor interface version identifies backward compatible changes */
#define FBL_UPD_AP_OEM_API_VERSION_MINOR     0x02u
/** Release interface version identifies cosmetic changes */
#define FBL_UPD_AP_OEM_API_VERSION_RELEASE   0x00u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "upd_types.h"
#include "upd_cfg.h"

/***********************************************************************************************************************
 *  FUNCTION PROTOTYPES
 **********************************************************************************************************************/
#define FBL_UPD_OEM_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
/*-- Processing hook functions ---------------------------------------------------------------------------------------*/

tFblResult ApplFblUpdOemInvalidateUpdater( void );
#define FBL_UPD_OEM_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* UPD_OEM_AP_H */

/***********************************************************************************************************************
 *  END OF FILE: UDP_OEM_AP.H
 **********************************************************************************************************************/
