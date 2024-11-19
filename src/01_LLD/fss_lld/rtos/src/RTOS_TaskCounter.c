/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   RTOS_TaskCounter.c                                               */
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
/* [1]         08.02.2023    Samruddhi      Created                          */
/*****************************************************************************/

#include "RTOS_MW.h"
#include "hwosfcpu.h"
#include "RTOS_TaskCounters.h"
#include "ISR_Os.h"

#define NUM_OF_CORES 3
#define NUM_OF_TASKS 9
U32 t1ms_stos_time;
U32 t2ms_stos_time_1;
U32 t8ms_stos_time_1;
U32 tIPC_stos_time_1;
U32 t16ms_stos_time_1;
U32 t30ms_stos_time_1;
U32 t50ms_stos_time_1;
U32 t100ms_stos_time_1;
U32 t100ms_stos_time_2;
U32 t100ms_stos_time_3;


U32 t1ms_stof_time ;
U32 t2ms_stof_time_1;
U32 t8ms_stof_time_1 ;
U32 tIPC_stof_time_1 ; 
U32 t16ms_stof_time_1 ;
U32 t30ms_stof_time_1 ;
U32 t50ms_stof_time_1 ;
U32 t100ms_stof_time_1 ;
U32 t100ms_stof_time_2 ;
U32 t100ms_stof_time_3 ;



typedef struct
{
U32 Task_1ms  ;
U32 Task_2ms  ;
U32 Task_8ms  ;
U32 IPCTask  ;
U32 Task_16ms ;
U32 Task_30ms ;
U32 Task_50ms ;
U32 Task_100ms;
U32 Task_100ms_1;
U32 Task_100ms_2;
U32 idleTask ;
U32 core0_BGTask ;
U32 core1_BGTask;
U32 core2_BGTask;
U32 Init_Core0Task ;
U32 Init_Core1Task;
U32 Init_Core2Task;
} TaskCounter_PeriodicTasks;

volatile TaskCounter_PeriodicTasks TaskCounter_PeriodicTask;

uint32 bios_VeOST_t_LastTime1[NUM_OF_CORES][NUM_OF_TASKS];
uint32 bios_VeOST_t_CurrentTime1[NUM_OF_CORES][NUM_OF_TASKS];
uint32 bios_VeOST_t_DeltaTime1[NUM_OF_CORES][NUM_OF_TASKS];
void MngTSKR_idleTask_Task(void)
{
   U8 bios_LeOS_e_CPU;
   bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.idleTask;
}
void MngTSKR_BGTask_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.core0_BGTask;
}
void MngTSKR_BGTask_Core1_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.core1_BGTask;
}
void MngTSKR_BGTask_Core2_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.core2_BGTask;
}
void MngTSKR_Init_Core0_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.Init_Core0Task;
}
void MngTSKR_Init_Core1_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.Init_Core1Task;
}
void MngTSKR_Init_Core2_Task(void)
{
   U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
   ++TaskCounter_PeriodicTask.Init_Core2Task;
}

void MngTSKR_100msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_100msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	switch(bios_LeOS_e_CPU)
	{
	case 0: 
	t100ms_stos_time_1 =
			(U32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;
			++TaskCounter_PeriodicTask.Task_100ms;
		break;
	case 1:
	t100ms_stos_time_2 =
			(U32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;
			++TaskCounter_PeriodicTask.Task_100ms_1;
		break;
	case 2:
	t100ms_stos_time_3 =
			(U32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;
			++TaskCounter_PeriodicTask.Task_100ms_2;
		break;
	}
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];
}


void MngTSKR_50msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_50msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t50ms_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.Task_50ms;
	

}

void MngTSKR_30msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_30msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t30ms_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.Task_30ms;
	

}

void MngTSKR_16msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_16msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t16ms_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.Task_16ms;
	

}
void MngTSKR_8msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_8msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t8ms_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.Task_8ms;
	

}
void MngTSKR_2msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_2msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t2ms_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.Task_2ms;
	

}

void MngTSKR_1msOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_1msTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	t1ms_stos_time =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];
	++TaskCounter_PeriodicTask.Task_1ms;
}

void MngTSKR_IPCTaskOS_Task(void)
{
	U8 bios_LeOS_e_CPU;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	const U8 TaskID = OSK_IPCTask;
	bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID] =
			Os_Cbk_GetStopwatch();
	bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID]
									  - bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID];
	tIPC_stos_time_1 =
			(F32) ((bios_VeOST_t_DeltaTime1[bios_LeOS_e_CPU][TaskID] ))/TIMER_MILLISECOND;//document check required to find multiplication factor stm0.tim0 freq 
	bios_VeOST_t_LastTime1[bios_LeOS_e_CPU][TaskID] =
			bios_VeOST_t_CurrentTime1[bios_LeOS_e_CPU][TaskID];

	++TaskCounter_PeriodicTask.IPCTask;
	

}
void UpdateTaskExecutionTime(void)
{
	U8 bios_LeOS_e_CPU;
	U8 bios_LeOS_e_Task;
	int Cnt = 10;
	bios_LeOS_e_CPU = (U8)bios_GetOS_e_CPU_ID();
	if(bios_LeOS_e_CPU == 0)
	{
		for (bios_LeOS_e_Task = 1 ; bios_LeOS_e_Task < Cnt; bios_LeOS_e_Task++)
		{
			switch(bios_LeOS_e_Task)
			{
				case (1):
				t100ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (2):
				t50ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (3):
				t30ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (4):
				tIPC_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (5):
				t16ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (6):
				t8ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (7):
				t2ms_stof_time_1 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				case (8):
				t1ms_stof_time = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,bios_LeOS_e_Task)/TIMER_MILLISECOND;
				break;
				default:
				break;
			}
		}
	}
	else if (bios_LeOS_e_CPU == 1)
	{
		t100ms_stof_time_2 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,OSK_100msTask)/TIMER_MILLISECOND;
	}
	else 
	{
		t100ms_stof_time_3 = bios_GetOS_g_TASK_ExecTime(bios_LeOS_e_CPU,OSK_100msTask)/TIMER_MILLISECOND;
	}	
}



