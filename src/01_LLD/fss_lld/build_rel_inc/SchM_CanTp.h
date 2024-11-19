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
 *              File: ..\Include\SchM_CanTp.h
 *   Generation Time: 2021-09-22 17:32:15
 *           Project: DemoFbl - Version 1.0
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

#ifndef SCHM_CANTP_H
# define SCHM_CANTP_H

# include "Os.h"

# ifdef __cplusplus
extern "C" {
# endif  /* __cplusplus */

# include "Std_Types.h"

# define CANTP_START_SEC_CODE
# include "MemMap.h"

FUNC(void, CANTP_CODE) CanTp_MainFunction(void);

# define CANTP_STOP_SEC_CODE
# include "MemMap.h"

# ifdef __cplusplus
} /* extern "C" */
# endif  /* __cplusplus */

# define SchM_Enter_CanTp_CANTP_EXCLUSIVE_AREA_0() SuspendAllInterrupts()
# define SchM_Exit_CanTp_CANTP_EXCLUSIVE_AREA_0() ResumeAllInterrupts()

#endif /* SCHM_CANTP_H */
