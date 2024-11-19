/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                 Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                 All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  LICENSE
 *  -------------------------------------------------------------------------------------------------------------------
 *            Module: vBRS
 *           Program: FBL FORD
 *          Customer: 
 *       Expiry Date: Not restricted
 *  Ordered Derivat.: TC387
 *    License Scope : The usage is restricted to CBD2100753_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: ..\Include\SchM_Fls_17_Dmu.h
 *   Generation Time: 2021-10-07 17:15:36
 *           Project: DemoBm - Version 1.0
 *          Delivery: CBD2100753_D00
 *      Tool Version: DaVinci Configurator  5.24.21
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 * Please note:
 *    The demo and example programs only show special aspects of the software. With regard to the fact
 *    that these programs are meant for demonstration purposes only, Vector Informatik liability shall be
 *    expressly excluded in cases of ordinary negligence, to the extent admissible by law or statute.
 *********************************************************************************************************************/

#ifndef SCHM_FLS_17_DMU_H
# define SCHM_FLS_17_DMU_H

# include "Os.h"

# ifdef __cplusplus
extern "C" {
# endif  /* __cplusplus */

# include "Std_Types.h"

# define FLS_17_DMU_START_SEC_CODE
# include "MemMap.h"

FUNC(void, FLS_17_DMU_CODE) Fls_17_Dmu_MainFunction(void);

# define FLS_17_DMU_STOP_SEC_CODE
# include "MemMap.h"

# ifdef __cplusplus
} /* extern "C" */
# endif  /* __cplusplus */

# define SchM_Enter_Fls_17_Dmu_Init() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_Init() ResumeAllInterrupts()

# define SchM_Enter_Fls_17_Dmu_Erase() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_Erase() ResumeAllInterrupts()

# define SchM_Enter_Fls_17_Dmu_Write() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_Write() ResumeAllInterrupts()

# define SchM_Enter_Fls_17_Dmu_Main() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_Main() ResumeAllInterrupts()

# define SchM_Enter_Fls_17_Dmu_ResumeErase() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_ResumeErase() ResumeAllInterrupts()

# define SchM_Enter_Fls_17_Dmu_UserContentCount() SuspendAllInterrupts()
# define SchM_Exit_Fls_17_Dmu_UserContentCount() ResumeAllInterrupts()

#endif /* SCHM_FLS_17_DMU_H */
