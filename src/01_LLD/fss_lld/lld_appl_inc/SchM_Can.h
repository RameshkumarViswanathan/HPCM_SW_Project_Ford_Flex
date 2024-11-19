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
 *              File: ..\Include\SchM_Can.h
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

#ifndef SCHM_CAN_H
# define SCHM_CAN_H

# include "Os.h"

# ifdef __cplusplus
extern "C" {
# endif  /* __cplusplus */

# include "Std_Types.h"

# define CAN_START_SEC_CODE
# include "MemMap.h"

FUNC(void, CAN_CODE) Can_MainFunction_Write(void);
FUNC(void, CAN_CODE) Can_MainFunction_Read(void);
FUNC(void, CAN_CODE) Can_MainFunction_BusOff(void);
FUNC(void, CAN_CODE) Can_MainFunction_Wakeup(void);
FUNC(void, CAN_CODE) Can_MainFunction_Mode(void);

# define CAN_STOP_SEC_CODE
# include "MemMap.h"

# ifdef __cplusplus
} /* extern "C" */
# endif  /* __cplusplus */

/* already implemented in BrsMain.c (see also CanDriver ApplicationNote AN-ISC-8-1149)
# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0() SuspendAllInterrupts()
*/
void SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0(void);

/* already implemented in BrsMain.c (see also CanDriver ApplicationNote AN-ISC-8-1149)
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0() ResumeAllInterrupts()
*/
void SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0(void);


# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_1() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_1() ResumeAllInterrupts()

# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_2() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_2() ResumeAllInterrupts()

# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_3() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_3() ResumeAllInterrupts()

# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_4() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_4() ResumeAllInterrupts()

# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_5() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_5() ResumeAllInterrupts()

/* already implemented in BrsMain.c (see also CanDriver ApplicationNote AN-ISC-8-1149)
# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6() SuspendAllInterrupts()
*/
void SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6(void);

/* already implemented in BrsMain.c (see also CanDriver ApplicationNote AN-ISC-8-1149)
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6() ResumeAllInterrupts()
*/
void SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6(void);


# define SchM_Enter_Can_CAN_EXCLUSIVE_AREA_7() SuspendAllInterrupts()
# define SchM_Exit_Can_CAN_EXCLUSIVE_AREA_7() ResumeAllInterrupts()

#endif /* SCHM_CAN_H */
