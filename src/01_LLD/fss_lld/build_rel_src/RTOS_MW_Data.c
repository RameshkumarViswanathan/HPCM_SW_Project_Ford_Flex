/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   RTOS_MW_Data.c                                                   */
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

#include "RTOS_MW_Data.h"
#include "hwosfcpu.h"
#include "RTOS_Interface.h"

/* constant array of CPU SELECTOR values for runtime access/initilization */
static const U32 bios_CaOS_g_CPU_SELECTOR_VALUES[] = {

};
U16 HWIO_OVERRUN_TASK_ID;
/*
 * data structure for tracking RTOS metrics on each CPU
 * most values can be get/set with a corresponding get/set function
 * TODO maybe better way to initialize these structures
 */


static TsOS_h_CPU_State bios_LaOS_h_CPU_States0 = {
		.halt_stat = CeOS_e_CPU_STATUS_ENABLED,
		.schd_lock_stat = SCHEDULER_UNLOCKED,
		.util_state = {.first_exec_flag = TRUE},
		.tasks = {
			   [OSK_1msTask]		= {.Task_ID = OSK_1msTask},
               [OSK_2msTask]		= {.Task_ID = OSK_2msTask},
			   [OSK_8msTask]		= {.Task_ID = OSK_8msTask},
			   [OSK_IPCTask]		= {.Task_ID = OSK_IPCTask},
			   [OSK_16msTask]		= {.Task_ID = OSK_16msTask},
			   [OSK_30msTask]		= {.Task_ID = OSK_30msTask},
			   [OSK_50msTask]		= {.Task_ID = OSK_50msTask},
			   [OSK_100msTask]		= {.Task_ID = OSK_100msTask},
			   [OSK_idleTask]		= {.Task_ID = OSK_idleTask}
		}
};
	
static TsOS_h_CPU_State bios_LaOS_h_CPU_States1 = {
		
		.halt_stat = CeOS_e_CPU_STATUS_ENABLED,
		.schd_lock_stat = SCHEDULER_UNLOCKED,
		.util_state = {.first_exec_flag = TRUE},
		.tasks = {
			   [OSK_1msTask]		= {.Task_ID = OSK_1msTask},
               [OSK_2msTask]		= {.Task_ID = OSK_2msTask},
			   [OSK_8msTask]		= {.Task_ID = OSK_8msTask},
			   [OSK_IPCTask]		= {.Task_ID = OSK_IPCTask},
			   [OSK_16msTask]		= {.Task_ID = OSK_16msTask},
			   [OSK_30msTask]		= {.Task_ID = OSK_30msTask},
			   [OSK_50msTask]		= {.Task_ID = OSK_50msTask},
			   [OSK_100msTask]		= {.Task_ID = OSK_100msTask},
			   [OSK_idleTask]		= {.Task_ID = OSK_idleTask}
		}
};

static TsOS_h_CPU_State bios_LaOS_h_CPU_States2 ={
		
		.halt_stat = CeOS_e_CPU_STATUS_ENABLED,
		.schd_lock_stat = SCHEDULER_UNLOCKED,
		.util_state = {.first_exec_flag = TRUE},
		.tasks = {
			   [OSK_1msTask]		= {.Task_ID = OSK_1msTask},
               [OSK_2msTask]		= {.Task_ID = OSK_2msTask},
			   [OSK_8msTask]		= {.Task_ID = OSK_8msTask},
			   [OSK_IPCTask]		= {.Task_ID = OSK_IPCTask},
			   [OSK_16msTask]		= {.Task_ID = OSK_16msTask},
			   [OSK_30msTask]		= {.Task_ID = OSK_30msTask},
			   [OSK_50msTask]		= {.Task_ID = OSK_50msTask},
			   [OSK_100msTask]		= {.Task_ID = OSK_100msTask},
			   [OSK_idleTask]		= {.Task_ID = OSK_idleTask}
						
		}
};
/*################################################################################
# FUNCITON NAME:    bios_GetOS_e_CPU_HaltStat_
# DESCRIPTION  :    returns the halt status for the specified CPU
# SCOPE		   :	public										  
# PARAMETERS   :   	TeOS_e_CPU:	CPU ID
# RETURNS      :    TeOS_e_CPU_STATUS: 0x0 if halted, 0x1 if active 
################################################################################*/
TeOS_e_CPU_STATUS bios_GetOS_e_CPU_HaltStat(TeOS_e_CPU bios_LeOS_e_CPU)
{
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	return bios_LaOS_h_CPU_States0.halt_stat;
	break;

	case 1:
	return bios_LaOS_h_CPU_States1.halt_stat;
	break;

	case 3:
	return bios_LaOS_h_CPU_States2.halt_stat;
	break;

	default:
	return 0;
    break;
	}
	
}

/*################################################################################
# FUNCITON NAME:    bios_SetOS_CPU_HaltStat
# DESCRIPTION  :    sets the halt status for the specified CPU
# SCOPE		   :	public										  
# PARAMETERS   :   	TeOS_e_CPU:	CPU ID
					TeOS_e_CPU_STATUS: halt status to set for the CPU
# RETURNS      :    none 
################################################################################*/
void bios_SetOS_CPU_HaltStat(TeOS_e_CPU bios_LeOS_e_CPU, TeOS_e_CPU_STATUS bios_LeOS_e_Stat)
{
	
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	 bios_LaOS_h_CPU_States0.halt_stat = bios_LeOS_e_Stat;
	break;

	case 1:
	 bios_LaOS_h_CPU_States1.halt_stat = bios_LeOS_e_Stat;
	break;

	case 3:
	 bios_LaOS_h_CPU_States2.halt_stat = bios_LeOS_e_Stat;
	break;

	default:
	
    break;
	}	
}

/*################################################################################
# FUNCITON NAME:	bios_GetOS_y_CPU_SchedulerStat
# DESCRIPTION  :    returns the scheduler stat for the specified CPU 
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:	CPU ID to increment the scheduler of
# RETURNS      :    U8:		scheduler lock status 
################################################################################*/
U8 bios_GetOS_y_CPU_SchedulerStat(TeOS_e_CPU bios_LeOS_e_CPU)
{
	
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	return bios_LaOS_h_CPU_States0.schd_lock_stat;
	break;

	case 1:
	return bios_LaOS_h_CPU_States1.schd_lock_stat;
	break;

	case 3:
	return bios_LaOS_h_CPU_States2.schd_lock_stat;
	break;

	default:
	return 0;
    break;
	}	
}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_CPU_IncrScheduler
# DESCRIPTION  :    increments the lock scheduler for the specified CPU	
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			CPU ID to increment the scheduler of
# RETURNS      :    none
################################################################################*/
void bios_PrfrmOS_CPU_IncrScheduler(TeOS_e_CPU bios_LeOS_e_CPU)
{

}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_CPU_DecrScheduler
# DESCRIPTION  :    decrements the lock scheduler for the specified CPU	
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			CPU ID to decrement the scheduler of
# RETURNS      :    none
################################################################################*/
void bios_PrfrmOS_CPU_DecrScheduler(TeOS_e_CPU bios_LeOS_e_CPU)
{

}

/*################################################################################
# FUNCITON NAME:	bios_GetOS_y_PreTaskActStat	
# DESCRIPTION  :	gets the pretask active status indicator for the specified task
					on the currently executing CPU
# SCOPE		   :	public	
# PARAMETERS   :	TeHWIO_e_OS_Task:	task to get the active status of
# RETURNS      :    0x0 if inactive, 0x1 if active 
################################################################################*/
U8 bios_GetOS_y_CPU_PreTaskActStat(TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	U32 bios_LeOS_g_Stat;
	U8 bios_LeOS_e_CPU;
	
	// get the current CPU ID
	bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();

	// get status value

    
	switch(bios_LeOS_e_CPU)
	{
	case 0:
		bios_LeOS_g_Stat = bios_LaOS_h_CPU_States0.pretask_act_stat;
	break;

	case 1:
		bios_LeOS_g_Stat = bios_LaOS_h_CPU_States1.pretask_act_stat;
	break;

	case 3:
		bios_LeOS_g_Stat = bios_LaOS_h_CPU_States2.pretask_act_stat;
	break;

	default:
	return 0;
    break;
	}

	// right shift so that the TASK bit is in the LSB position
	bios_LeOS_g_Stat = bios_LeOS_g_Stat >> bios_LeOS_e_Task;

	// return 0x1 if the bit is set else 0x0
	return (U8)(bios_LeOS_g_Stat & 0x1);
}

/*################################################################################
# FUNCITON NAME:	bios_SetOS_CPU_PreTaskActStat	
# DESCRIPTION  :	sets the pretask active status indicator for the speicifed task
					on each CPU
# SCOPE		   :	public	
# PARAMETERS   :	TeHWIO_e_OS_Task:	task to set active status of
# RETURNS      :    none 
################################################################################*/
void bios_SetOS_CPU_PreTaskActStat(TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	U32 bios_LeOS_g_Stat;
	/*
	 * right shift by the task value to find the bitfield to set
	 * i.e. if bios_LeOS_e_Task = 0x5 then bitfield 5 of bios_LeOS_g_Stat will be set to 1
	 * each task has a a unique bitfield
	 */
	bios_LeOS_g_Stat = (0x1 << bios_LeOS_e_Task);

	/*
	 * bitwise OR the current status to set the bitfield
	 * for pretask act status we set the status as active for all CPU
	 * however we still need to clear them separately in bios_PfrmOS_CPU_ClearPreTaskActStat
	 */
		bios_LaOS_h_CPU_States0.pretask_act_stat |= bios_LeOS_g_Stat;
		bios_LaOS_h_CPU_States1.pretask_act_stat |= bios_LeOS_g_Stat;
		bios_LaOS_h_CPU_States2.pretask_act_stat |= bios_LeOS_g_Stat;

}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_CPU_ClearPreTaskActStat	
# DESCRIPTION  :	clears the pretask active status indicator when a task terminates
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			CPU ID for the task
					TeHWIO_e_OS_Task:	task to clear active status of
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_CPU_ClearPreTaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	U32 bios_LeOS_g_Stat;

	/*
	 * right shift by the task value to find the bitfield to set
	 * i.e. if bios_LeOS_e_Task = 0x5 then bitfield 5 of bios_LeOS_g_Stat will be set to 1
	 * each task has a a unique bitfield
	 */
	bios_LeOS_g_Stat = (0x1 << bios_LeOS_e_Task);

	// flip the bits so that the bitfield is set to 0x0
	bios_LeOS_g_Stat = ~bios_LeOS_g_Stat;

	// bitwise AND the status to clear the bitfield
	bios_LaOS_h_CPU_States0.pretask_act_stat &= bios_LeOS_g_Stat;
	bios_LaOS_h_CPU_States1.pretask_act_stat &= bios_LeOS_g_Stat;
	bios_LaOS_h_CPU_States2.pretask_act_stat &= bios_LeOS_g_Stat;
}

/*################################################################################
# FUNCITON NAME:	bios_SetOS_CPU_TaskActStat	
# DESCRIPTION  :	sets the task active status indicator when a task activates
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			CPU ID for the task
					TeHWIO_e_OS_Task:	task to set active status of
# RETURNS      :    none 
################################################################################*/
void bios_SetOS_CPU_TaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	U32 bios_LeOS_g_Stat;

	/*
	 * right shift by the task value to find the bitfield to set
	 * i.e. if bios_LeOS_e_Task = 0x5 then bitfield 5 of bios_LeOS_g_Stat will be set to 1
	 * each task has a a unique bitfield
	 */
	bios_LeOS_g_Stat = (0x1 << bios_LeOS_e_Task);

	// bitwise OR the current status to set the bitfield
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LaOS_h_CPU_States0.task_act_stat |= bios_LeOS_g_Stat;
	break;

	case 1:
	bios_LaOS_h_CPU_States1.task_act_stat |= bios_LeOS_g_Stat;
	break;

	case 2:
	bios_LaOS_h_CPU_States2.task_act_stat |= bios_LeOS_g_Stat;
	break;

	default:
	
	break;
    }
	
}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_CPU_ClearTaskActStat	
# DESCRIPTION  :	clears the task active status indicator when a task terminates
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			CPU ID for the task
					TeHWIO_e_OS_Task:	task to clear active status of
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_CPU_ClearTaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	U32 bios_LeOS_g_Stat;

	/*
	 * right shift by the task value to find the bitfield to set
	 * i.e. if bios_LeOS_e_Task = 0x5 then bitfield 5 of bios_LeOS_g_Stat will be set to 1
	 * each task has a a unique bitfield
	 */
	bios_LeOS_g_Stat = (0x1 << bios_LeOS_e_Task);

	// flip the bits so that the bitfield is set to 0x0
	bios_LeOS_g_Stat = ~bios_LeOS_g_Stat;

	// bitwise AND the status to clear the bitfield
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LaOS_h_CPU_States0.task_act_stat &= bios_LeOS_g_Stat;
	break;

	case 1:
	bios_LaOS_h_CPU_States1.task_act_stat &= bios_LeOS_g_Stat;
	break;

	case 2:
	bios_LaOS_h_CPU_States2.task_act_stat &= bios_LeOS_g_Stat;
	break;

	default:
	
	break;
    }
	
}

/*################################################################################
# FUNCITON NAME:   	bios_GetOS_pct_UTIL_CPU_Utilization 
# DESCRIPTION  :    returns the utilization percentage for the specified CPU
# SCOPE		   :	public										  
# PARAMETERS   :    TeOS_e_CPU:	CPU ID which to return the utilization percentage of	
# RETURNS      :    float32:	utilization percentage
################################################################################*/
U16 bios_GetOS_cnt_TASK_Overrun(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	switch(bios_LeOS_e_CPU)
	{
		case 0:
		return bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task].overrun_cnt;
		break;

		case 1:
		return bios_LaOS_h_CPU_States1.tasks[bios_LeOS_e_Task].overrun_cnt;
		break;

		case 2:
		return bios_LaOS_h_CPU_States2.tasks[bios_LeOS_e_Task].overrun_cnt;
		break;

		default:
		break;

	}
}

/*################################################################################
# FUNCITON NAME:   	bios_PrfrmOS_TASK_IncrOverrun	
# DESCRIPTION  :    increments the task overrun count for the specified CPU and task 
# SCOPE		   :	public										  
# PARAMETERS   :    TeOS_e_CPU:			CPU ID 
					TeHWIO_e_OS_Task: 	task to increment the overrun count for
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_TASK_IncrOverrun(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{

	U16 Task_id_local;
	U8 Bit_location = NULL;
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task].overrun_cnt++;
	break;

	case 1:
	bios_LaOS_h_CPU_States1.tasks[bios_LeOS_e_Task].overrun_cnt++;
	break;

	case 2:
	bios_LaOS_h_CPU_States2.tasks[bios_LeOS_e_Task].overrun_cnt++;
	break;

	default:
	
	break;
    }
	

	switch(bios_LeOS_e_Task)
	{
	case OSK_1msTask  :
		Bit_location = 0;
		break;
    case OSK_2msTask  :
		Bit_location = 1;
		break;
    case OSK_8msTask  :
		Bit_location = 2;
		break;
    case OSK_16msTask :
		Bit_location = 3;
		break;
    case OSK_30msTask :
		Bit_location = 4;
		break;
    case OSK_50msTask :
		Bit_location = 5;
		break;
    case OSK_100msTask:
		Bit_location = 6;
		break;
    case OSK_IPCTask  :
		Bit_location = 7;
		break; 
	default:
		break;
	}
   Task_id_local = (1<< Bit_location );
   HWIO_OVERRUN_TASK_ID = Task_id_local;
}

/*################################################################################
# FUNCITON NAME:   	bios_GetOS_g_TASK_ExecTime
# DESCRIPTION  :    returns the execution time  for the specified CPU and task
# SCOPE		   :	public										  
# PARAMETERS   :    TeOS_e_CPU:			CPU ID 
					TeHWIO_e_OS_Task:	task to return the time for
# RETURNS      :    U32:	task execution time in OSTM units(40mhz) 
################################################################################*/
U32 bios_GetOS_g_TASK_ExecTime(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	return bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task].exec_time;
	break;

	case 1:
	return bios_LaOS_h_CPU_States1.tasks[bios_LeOS_e_Task].exec_time;
	break;

	case 2:
	return bios_LaOS_h_CPU_States2.tasks[bios_LeOS_e_Task].exec_time;
	break;

	default:
	return 0;
	break;
    }
	
}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_TASK_StartTimeCalc	
# DESCRIPTION  :	helper function for calculating task start time
					invoked by Os_Cbk_TaskEnd
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			current CPU ID
					TeHWIO_e_OS_Task:	Task which to perform the calculation for
					U32:			current system time used for calculation
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_TASK_StartTimeCalc(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task, U32 bios_LeOS_g_CurrTime)
{
	TsOS_h_UTIL_State* bios_LpOS_h_UTIL_State =  &bios_LaOS_h_CPU_States0.util_state;
	TsOS_h_TASK_State* bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task];

	// get pointers to structures
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States0.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task];
	break;

	case 1:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States1.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States1.tasks[bios_LeOS_e_Task];
	break;

	case 2:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States2.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States2.tasks[bios_LeOS_e_Task];
	break;

	default:
	
	break;
    }
	// start time = current time - CPU current execution time
	bios_LpOS_h_TASK_State->start_time = bios_LeOS_g_CurrTime - bios_LpOS_h_UTIL_State->util_exec_time;

	// increment count for debug TODO move this to demo app
	bios_LpOS_h_TASK_State->cnt += 1;
}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_TASK_ExecTimeCalc	
# DESCRIPTION  :	helper function for calculating task execution time
					invoked by Os_Cbk_TaskEnd
# SCOPE		   :	private
# PARAMETERS   :	TeOS_e_CPU:			current CPU ID
					TeHWIO_e_OS_Task:	Task which to perform the calculation for
					U32:			current system time used for calculation
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_TASK_ExecTimeCalc(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task, U32 bios_LeOS_g_CurrTime)
{
	TsOS_h_UTIL_State* bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States0.util_state;
	TsOS_h_TASK_State* bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task];

	// get pointers to structures
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States0.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States0.tasks[bios_LeOS_e_Task];
	break;

	case 1:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States1.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States1.tasks[bios_LeOS_e_Task];
	break;

	case 2:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States2.util_state;
	bios_LpOS_h_TASK_State = &bios_LaOS_h_CPU_States2.tasks[bios_LeOS_e_Task];
	break;

	default:
	
	break;
    }
	/* 
	 * note that CPU util end time and TASK end time are the same
	 * for the purposes of this calculation as the CPU util end time
	 * is calculated using the end time of the 1000ms task
	 */
	// CPU/TASK end time = current time - CPU execution time
	bios_LpOS_h_UTIL_State->util_end_time = bios_LeOS_g_CurrTime - bios_LpOS_h_UTIL_State->util_exec_time;

	// TASK execution time = TASK end time - TASK start time
	bios_LpOS_h_TASK_State->exec_time = bios_LpOS_h_UTIL_State->util_end_time - bios_LpOS_h_TASK_State->start_time;

	// increment CPU execution time by TASK execution time
	bios_LpOS_h_UTIL_State->util_exec_time += bios_LpOS_h_TASK_State->exec_time;
}

/*################################################################################
# FUNCITON NAME:	bios_PrfrmOS_UTIL_Calc
# DESCRIPTION  :	helper function for calculating cpu utilization time
					invoked by Os_Cbk_TaskEnd
# SCOPE		   :	public	
# PARAMETERS   :	TeOS_e_CPU:			current CPU ID
					U32:			current system time used for calculation
# RETURNS      :    none 
################################################################################*/
void bios_PrfrmOS_UTIL_Calc(TeOS_e_CPU bios_LeOS_e_CPU, U32 bios_LeOS_g_CurrTime)
{
	U32 bios_LeOS_g_MeasureTime;
	U32 bios_LeOS_g_ExecTime;
	TsOS_h_UTIL_State* bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States0.util_state;


// get pointers to structures
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States0.util_state;
	
	break;

	case 1:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States1.util_state;
	
	break;

	case 2:
	bios_LpOS_h_UTIL_State = &bios_LaOS_h_CPU_States2.util_state;
	
	break;

	default:
	
	break;
    }
	// don't calculate cpu util on first execution
	if (bios_LpOS_h_UTIL_State->first_exec_flag == TRUE) {
		bios_LpOS_h_UTIL_State->first_exec_flag = FALSE;
	}
	else {
		// cycle absolute time(including idle) = current time - previous time
		bios_LeOS_g_MeasureTime = bios_LeOS_g_CurrTime - bios_LpOS_h_UTIL_State->util_prev_time;

		// get cycle execution time
		bios_LeOS_g_ExecTime = bios_LpOS_h_UTIL_State->util_exec_time;

		// if execution time > absolute time then 100% cpu utilization
		if (bios_LeOS_g_ExecTime >= bios_LeOS_g_MeasureTime) {
			bios_LpOS_h_UTIL_State->util_ratio = CPU_UTIL_RATIO_FLOAT_PCT_100;
		}
		// else if measure time is not zero calculate cpu util as ratio of execution time and absolute/total time
		else if (bios_LeOS_g_MeasureTime != 0) {
			bios_LpOS_h_UTIL_State->util_ratio = ((float32) bios_LeOS_g_ExecTime / (float32) bios_LeOS_g_MeasureTime);
		}
		// else 100% cpu utilization
		else {
			bios_LpOS_h_UTIL_State->util_ratio = CPU_UTIL_RATIO_FLOAT_PCT_100;
		}
	}

	switch(bios_LeOS_e_CPU)
	{
		
	case 0:
        idle_pct_x10_0 = ((1000 - (bios_LpOS_h_UTIL_State->util_ratio)*1000)) * 1000 / 1000 ; //( util_ratio *100) * 10
	break;

	case 1:
        idle_pct_x10_1 =((1000 - (bios_LpOS_h_UTIL_State->util_ratio)*1000)) * 1000 / 1000 ;
	break;

	case 2:
        idle_pct_x10_2 = ((1000 - (bios_LpOS_h_UTIL_State->util_ratio)*1000));
	break;

	}


	// reset execution time for next cycle
	bios_LpOS_h_UTIL_State->util_exec_time = 0;

	// set previoustime to current time
	bios_LpOS_h_UTIL_State->util_prev_time = bios_LeOS_g_CurrTime;
}

/*################################################################################
# FUNCITON NAME:   	bios_GetOS_pct_UTIL_CPU_Utilization 
# DESCRIPTION  :    returns the utilization percentage for the specified CPU
# SCOPE		   :	public										  
# PARAMETERS   :    TeOS_e_CPU:	CPU ID which to return the utilization percentage of	
# RETURNS      :    float32:	utilization percentage
################################################################################*/
float bios_GetOS_pct_UTIL_CPU_Utilization(TeOS_e_CPU bios_LeOS_e_CPU)
{
	
	// get pointers to structures
	switch(bios_LeOS_e_CPU)
	{
	case 0:
	return bios_LaOS_h_CPU_States0.util_state.util_ratio;
	break;

	case 1:
	return bios_LaOS_h_CPU_States1.util_state.util_ratio;
	break;

	case 2:
	return bios_LaOS_h_CPU_States2.util_state.util_ratio;
	break;

	default:
	return 0;
	break;
    }
}

/******************************************************************************/
/* FUNCITON NAME:  GetHWIO_Cnt_OS_TaskOverrun      */
/* DESCRIPTION  :  gets the overrun count for the specified task */
/* PARAMETERS   :  TeHWIO_e_OS_Task: task to get the overrun count for  */
/* RETURNS      :  WORD: overrun count of the specified task  */
/******************************************************************************/
U16 GetHWIO_Cnt_OS_TaskOverrun(TeHWIO_e_OS_Task bios_LeOS_e_Task)
{
	TeOS_e_CPU bios_LeOS_e_CPU;
	U16 bios_LeOS_d_Count;

	//check if the task ID is valid
	if (bios_LeOS_e_Task <= OSK_1msTask) {
		//get the current CPU

		bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();

		//return task overrun count for the specified task on the current CPU
		bios_LeOS_d_Count = bios_GetOS_cnt_TASK_Overrun(bios_LeOS_e_CPU, bios_LeOS_e_Task);
	}
	//invalid task ID return zero
	else {
		bios_LeOS_d_Count = TASK_OVERRUN_CNT_ZERO;
	}
	
	return bios_LeOS_d_Count;
}
