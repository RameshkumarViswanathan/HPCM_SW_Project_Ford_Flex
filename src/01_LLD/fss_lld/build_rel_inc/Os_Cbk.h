/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Os_Cbk.c                                                      */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         20.06.2023    Santhosh Addula      initial Version            */
/*****************************************************************************/

#ifndef OS_CBK_H
#define OS_CBK_H
#include <Os.h>
#include <Os_DisableInterrupts.h>
#include "IfxStm_reg.h"
#include "IfxScu_reg.h"
#include "EcuM.h"
#define	OS_WRITABLE_START_SEC_VAR_NOINIT_32BIT
extern uint32 Os_pretask_starts[OS_NUM_TASKS]; /* count the number of task execution,
 	 	 	 	 	 	 	 	 	 	 not including resuming from preemption */
extern Os_StopwatchTickType Os_posttask_max_exe_time[OS_NUM_TASKS]; /* log maximum execution time of each task */
extern TaskType Os_CurrentTask[OS_NUM_CORES];
extern uint32 Os_task_errs[OS_NUM_TASKS];
#define	OS_WRITABLE_STOP_SEC_VAR_NOINIT_32BIT

#define OS_START_SEC_CALLOUT_CODE

extern FUNC(void, OS_CALLOUT_CODE) App_Cbk_MemProtection(StatusType ErrorType, TaskType TaskInError, ISRType ISRInError);

#define OS_STOP_SEC_CALLOUT_CODE
#endif /* TARGETS_TC377_RTOS_API_OS_CBK_H_ */