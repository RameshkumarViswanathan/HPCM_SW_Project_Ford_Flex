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
 *  02.00.00   2020-11-10  visrcn  ESCAN00107322    Block invalidation after update process doesn't work
 *  02.01.00   2022-06-14  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#define UPD_OEM_AP_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "upd_oem_ap.h"
#include "fbl_inc.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLUPD_AP_FORD_VERSION != 0x0201u ) || \
    ( FBLUPD_AP_FORD_RELEASE_VERSION != 0x00u )
# error "Error in upd_oem_ap.c: Source and Header file are inconsistent!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  TYPES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

#define FBL_UPD_OEM_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  ApplFblUpdInvalidateUpdater
 **********************************************************************************************************************/
/*! \brief        Callback function to invalidate the updater/application
 *  \details      Update validity information of e.g. NV-data
 *  \return       Result of operation
 *                   kFblOk when operation was successful
 *                   kFblFailed otherwise
 **********************************************************************************************************************/
tFblResult ApplFblUpdOemInvalidateUpdater( void )
{
   tFblResult result;
   tBlockDescriptor blockDescriptor;

   /* Clear block validity */
   result = FblLbtGetBlockDescriptorByNr(FBL_UPD_OEM_MTAB_UPDATER_BLOCK_NUMBER, &blockDescriptor);
   if (result == kFblOk)
   {
#if defined( FBL_ENABLE_PRESENCE_PATTERN )
      /* Clear updater valid pattern */
      result = FblNvPatternClr(&blockDescriptor, kFblNvPatternId_BlockValidity);
#else
# error "Disabling PresencePattern requires user specific adaptation of the code!"
#endif /* FBL_ENABLE_PRESENCE_PATTERN */
   }

   return result;
}
#define FBL_UPD_OEM_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  END OF FILE: UPD_OEM_AP.C
 **********************************************************************************************************************/
