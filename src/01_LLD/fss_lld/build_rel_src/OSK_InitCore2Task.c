/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   OSK_InitCore1Task.c                                              */
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
/* [1]         12.09.2023   Chandra Prakash      Created and added Task_     */
/*                                               InitTask_Core1              */
/*****************************************************************************/

#include "Os_DisableInterrupts.h"
#include "RTOS_TaskCounters.h"
#include "ISR_Os.h"
#include "Dio.h"


 TASK(Os_Init_Task_Core2)
{
	MngTSKR_Init_Core2_Task();
	Os_Cbk_Set_SystemTimer((TickType)( STM2_TIM0.U + TIMER_MILLISECOND));
	TerminateTask();
 }

 