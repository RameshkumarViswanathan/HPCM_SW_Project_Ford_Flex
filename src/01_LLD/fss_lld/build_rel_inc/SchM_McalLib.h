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
 *              File: ..\Include\SchM_McalLib.h
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

#ifndef SCHM_MCALLIB_H
# define SCHM_MCALLIB_H
#include "Compiler_Cfg.h"
# include "Os.h"

# define SchM_Enter_McalLib_PeripheralEndInit() SuspendAllInterrupts()
# define SchM_Exit_McalLib_PeripheralEndInit() ResumeAllInterrupts()

# define SchM_Enter_McalLib_SafetyEndInit() SuspendAllInterrupts()
# define SchM_Exit_McalLib_SafetyEndInit() ResumeAllInterrupts()

# define SchM_Enter_McalLib_CpuEndInit() SuspendAllInterrupts()
# define SchM_Exit_McalLib_CpuEndInit() ResumeAllInterrupts()

# define SchM_Enter_McalLib_StmTimerResolution() SuspendAllInterrupts()
# define SchM_Exit_McalLib_StmTimerResolution() ResumeAllInterrupts()

#endif /* SCHM_MCALLIB_H */