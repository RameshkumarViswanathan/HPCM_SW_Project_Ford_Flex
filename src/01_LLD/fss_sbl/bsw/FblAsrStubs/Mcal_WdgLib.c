/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief Mcal_WdgLib ASR4 stub for flash bootloader
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/**********************************************************************************************************************
 *  REVISION HISTORY
 *  -------------------------------------------------------------------------------------------------------------------
 *  Refer to the module's header file.
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "Std_Types.h"
#include "Mcal.h"
#include "fbl_inc.h"

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

#define FBLASRSTUBS_MCAL_WDGLIB_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  Mcal_SetENDINIT
 **********************************************************************************************************************/
/*! \brief       Sets the ENDINIT bit in the appropriate CPU
 **********************************************************************************************************************/
void Mcal_SetENDINIT( void )
{
   FblHwRegisterLock(FBL_WDT_CPU);
}

/***********************************************************************************************************************
 *  Mcal_ResetENDINIT
 **********************************************************************************************************************/
/*! \brief       Clears the ENDINIT bit in the appropriate CPU
 **********************************************************************************************************************/
void Mcal_ResetENDINIT( void )
{
   FblHwRegisterUnlock(FBL_WDT_CPU);
}

/***********************************************************************************************************************
 *  Mcal_SetSafetyENDINIT_Timed
 **********************************************************************************************************************/
/*! \brief       Sets the ENDINIT bit for the system
 **********************************************************************************************************************/
void Mcal_SetSafetyENDINIT_Timed(void)
{
   FblHwRegisterLock(FBL_WDT_SYSTEM);
}

/***********************************************************************************************************************
 *  Mcal_ResetSafetyENDINIT_Timed
 **********************************************************************************************************************/
/*! \brief       Clears the ENDINIT bit for the system
 *  \param[in]   TimeOut   Count of no of times to try for SafetyEndInit
 **********************************************************************************************************************/
void Mcal_ResetSafetyENDINIT_Timed(uint32 TimeOut)
{
# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)TimeOut; /* PRQA S 3112 */ /* MD_MSR_DummyStmt */
# endif

   FblHwRegisterUnlock(FBL_WDT_SYSTEM);
}

#define FBLASRSTUBS_MCAL_WDGLIB_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  END OF FILE: MCAL_WDGLIB.C
 **********************************************************************************************************************/