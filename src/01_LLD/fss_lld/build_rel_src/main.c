/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   main.c                                                           */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS                                                                 */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         07.08.2023    Santhosh Addula  updated STM 0 ,1 ,2 Handling   */
/* [2]         12.14.2023    Santhosh Addula  STM_OCS update removal for POR */
/*                                            isssue                         */
/*****************************************************************************/

#include "RTOS_MW.h"
#include "Target.h"
#include "IfxSrc_reg.h"
#include "ISR_Os.h"
#include "RTOS_TaskCounters.h"
#define STM_CLC STM0_CLC
#define STM_CMCON STM0_CMCON
#define STM_CMP0 STM0_CMP0
#define STM_CMP1 STM0_CMP1
#define STM_TIM0 STM0_TIM0
#define STM_ISRR STM0_ISCR
#define STM_ICR  STM0_ICR
#define STM_SRC0 SRC_STM0SR0
volatile U32 Millisecond_count;
volatile U32 Millisecond_core1_count;
volatile U32 Millisecond_core2_count;

/*################################################################################
# FUNCITON NAME:	Os_Cbk_Idle	
# DESCRIPTION  :	RTOS idle background loop function	
# SCOPE		   :	public										  
# PARAMETERS   :	none	
# RETURNS      :    none 
################################################################################*/
boolean Os_Cbk_Idle(void)
{
    
	return TRUE;
}

/*################################################################################
# FUNCITON NAME:	Os_Cbk_TaskActivated
# DESCRIPTION  :	RTOS callback function when a task is activated
					used to track activation status of tasks
# SCOPE		   :	public										  
# PARAMETERS   :	TaskType task: task which was activated
# RETURNS      :    none 
################################################################################*/
void Os_Cbk_TaskActivated(TaskType task)
{
	TeOS_e_CPU bios_LeOS_e_CPU;
	TeHWIO_e_OS_Task bios_LeOS_e_Task;

	// get the CPU ID
	bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();

	// get the current task index
      switch(task->index)
    {
        case 0:
        case 1:
        case 2:
        bios_LeOS_e_Task = OSK_idleTask ;
        break;

        case 3:
        case 4:
        case 5:
        bios_LeOS_e_Task = OSK_100msTask;        
        break;

        case 6:
        bios_LeOS_e_Task = OSK_50msTask; 
        break;

        case 7:
        bios_LeOS_e_Task = OSK_30msTask;
        break;

        case 8:
        bios_LeOS_e_Task = OSK_16msTask;
        break;

        case 9:
        bios_LeOS_e_Task = OSK_IPCTask;
        break;
        
        case 10:
        bios_LeOS_e_Task = OSK_8msTask;
        break;

        case 11:
        bios_LeOS_e_Task = OSK_2msTask;
        break;

        case 12:
        bios_LeOS_e_Task = OSK_1msTask;
        break;

        case 13:        
        case 14:
        case 15:
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
        
        default :
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
    }

	// // set the task status as activated
	 bios_SetOS_CPU_TaskActStat(bios_LeOS_e_CPU, bios_LeOS_e_Task);
}

/*################################################################################
# FUNCITON NAME:	Os_Cbk_TaskStart
# DESCRIPTION  :	RTOS callback function when a task starts
					used to track execution time of tasks
# SCOPE		   :	public										  
# PARAMETERS   :	TaskType task: task which was started	
# RETURNS      :    none 
################################################################################*/
void Os_Cbk_TaskStart(TaskType task)
{
	TaskType Task;
	TeOS_e_CPU bios_LeOS_e_CPU;
	TeHWIO_e_OS_Task bios_LeOS_e_Task;
	U64 bios_LeOS_g_CurrTime;

	// get the CPU ID
	bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();
	// get the current task index
      switch(task->index)
    {
        case 0:
        case 1:
        case 2:
        bios_LeOS_e_Task = OSK_idleTask ;//it should be BG 
        break;

        case 3:
        case 4:
        case 5:
        bios_LeOS_e_Task = OSK_100msTask;        
        break;

        case 6:
        bios_LeOS_e_Task = OSK_50msTask; 
        break;

        case 7:
        bios_LeOS_e_Task = OSK_30msTask;
        break;

        case 8:
        bios_LeOS_e_Task = OSK_16msTask;
        break;

        case 9:
        bios_LeOS_e_Task = OSK_IPCTask;
        break;
        
        case 10:
        bios_LeOS_e_Task = OSK_8msTask;
        break;

        case 11:
        bios_LeOS_e_Task = OSK_2msTask;
        break;

        case 12:
        bios_LeOS_e_Task = OSK_1msTask;
        break;

        case 13:        
        case 14:
        case 15:
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
        
        default :
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
    }
	// get current time
	bios_LeOS_g_CurrTime = Os_Cbk_GetStopwatch();
	// calculate the task start time
	bios_PrfrmOS_TASK_StartTimeCalc(bios_LeOS_e_CPU, bios_LeOS_e_Task, bios_LeOS_g_CurrTime);
}

/*################################################################################
# FUNCITON NAME:	Os_Cbk_Idle_TaskEnd
# DESCRIPTION  :	RTOS callback function when a task end
					used to track execution time of tasks and cpu utilization
# SCOPE		   :	public										  
# PARAMETERS   :	TaskType task: task which ended 
# RETURNS      :    none 
################################################################################*/
void Os_Cbk_TaskEnd(TaskType task)
{
	TeOS_e_CPU bios_LeOS_e_CPU = 0;
	TeHWIO_e_OS_Task bios_LeOS_e_Task;
	U64 bios_LeOS_g_CurrTime;

	// get the CPU ID
	bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();
    //map task index to taskID
    switch(task->index)
    {
        case 0:
        case 1:
        case 2:
        bios_LeOS_e_Task = OSK_idleTask ; 
        break;

        case 3:
        case 4:
        case 5:
        bios_LeOS_e_Task = OSK_100msTask;        
        break;

        case 6:
        bios_LeOS_e_Task = OSK_50msTask; 
        break;

        case 7:
        bios_LeOS_e_Task = OSK_30msTask;
        break;

        case 8:
        bios_LeOS_e_Task = OSK_16msTask;
        break;

        case 9:
        bios_LeOS_e_Task = OSK_IPCTask;
        break;
        
        case 10:
        bios_LeOS_e_Task = OSK_8msTask;
        break;

        case 11:
        bios_LeOS_e_Task = OSK_2msTask;
        break;

        case 12:
        bios_LeOS_e_Task = OSK_1msTask;
        break;

        case 13:        
        case 14:
        case 15:
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
        
        default :
        bios_LeOS_e_Task =  OSK_idleTask;
        break;
    }
	// clear the pretask and task activation status
	bios_PrfrmOS_CPU_ClearTaskActStat(bios_LeOS_e_CPU, bios_LeOS_e_Task);
	bios_PrfrmOS_CPU_ClearPreTaskActStat(bios_LeOS_e_CPU, bios_LeOS_e_Task);

	// get current time
	bios_LeOS_g_CurrTime = Os_Cbk_GetStopwatch();

	// calculate task time
	bios_PrfrmOS_TASK_ExecTimeCalc(bios_LeOS_e_CPU, bios_LeOS_e_Task, bios_LeOS_g_CurrTime);

	// check if in 100ms task
	if (bios_LeOS_e_Task == OSK_100msTask) {
		// perfrom utilization calc
		bios_PrfrmOS_UTIL_Calc(bios_LeOS_e_CPU, bios_LeOS_g_CurrTime);
        UpdateTaskExecutionTime();
	}
}

/*################################################################################
# FUNCITON NAME:	PreTaskHook	
# DESCRIPTION  :	RTOS pretask hook callback function	
# SCOPE		   :	public										  
# PARAMETERS   :	none
# RETURNS      :    none 
################################################################################*/
 void PreTaskHook(void)
{

}

/*################################################################################
# FUNCITON NAME:	PostTaskHook	
# DESCRIPTION  :	RTOS posttask hook callback function	
# SCOPE		   :	public										  
# PARAMETERS   :	none
# RETURNS      :    none 
################################################################################*/
void PostTaskHook(void)
{

}
 FUNC(AccessType, OS_CALLOUT_CODE) Os_Cbk_CheckMemoryAccess(ApplicationType Application, TaskType TaskID, ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size)
{
    (void)Application;
    (void)TaskID;
    (void)ISRID;
    (void)Address;
    (void)Size;

    return (OS_ACCESS_STACK | OS_ACCESS_EXECUTE | OS_ACCESS_WRITE | OS_ACCESS_READ );
}

void SystemTimerInit_core0(void)
{
    TickType Now;
/* Init Compare Match Control Register
    * Set the width of the relevant bits in registers STM0_CMP0 that is
    * taken for the compare operation and set the first bit location in
    * the 56-bit STM that is taken for the compare operation. */
    /* MSIZE0 = 31 -> CMP0[31:0] is used for compare */
    /* MR12 RULE 1.3, 13.2 VIOLATION: This false-positive situation is always detected for two rba_reg function macros because QAC could not evaluate the macro correctly due to redundant round braces. */
	STM0_CMCON.B.MSIZE0 = 31U;
	STM0_CMCON.B.MSTART0 = 0U;
    /* Make sure old cmp register will not accidentally match */
    Now = (TickType) STM0_TIM0.U;
    STM0_CMP0.U = Now + TIMER_MILLISECOND; 
    /* Interrupt Control register */
    /* Reset potentially active compare match interrupts of CMP0 */
    STM0_ISCR.B.CMP0IRR=1;
    /* Clear potentially active service request immediately */
    SRC_STM_STM0_SR0.B.CLRR=1;

    /* The compare match interrupt output signal STMIR0 is activated on a
    * compare match event of compare register CMP0.
    * The signal STMIR0 is connected to the IR (Interrupt Router)
    * Service Request Control Register STM0SR0. */

    
    /* Select the interrupt output signal STMIR0 */
    STM0_ICR.B.CMP0OS=0;
    /* Enable the compare match interrupt with compare register CMP0 */
    STM0_ICR.B.CMP0EN=1;
    

    /* Disable the service request during initialization. */
    SRC_STM_STM0_SR0.B.SRE=0;
}

void SystemTimerInit_core1(void)
{
    TickType Now;
/* Init Compare Match Control Register
    * Set the width of the relevant bits in registers STM0_CMP0 that is
    * taken for the compare operation and set the first bit location in
    * the 56-bit STM that is taken for the compare operation. */
    /* MSIZE0 = 31 -> CMP0[31:0] is used for compare */
    /* MR12 RULE 1.3, 13.2 VIOLATION: This false-positive situation is always detected for two rba_reg function macros because QAC could not evaluate the macro correctly due to redundant round braces. */
	STM1_CMCON.B.MSIZE0 = 31U;
/* MSTART0 = 0 -> STM0[0] is the lowest bit number */
	STM1_CMCON.B.MSTART0 = 0U;
    /* Make sure old cmp register will not accidentally match */
    Now = (TickType) STM1_TIM0.U;
    // STM0_CMP0.U = Now - 1u; 
    STM1_CMP0.U = Now + TIMER_MILLISECOND; 
    /* Interrupt Control register */
    /* Reset potentially active compare match interrupts of CMP0 */
    STM1_ISCR.B.CMP0IRR=1;
    /* Clear potentially active service request immediately */
    SRC_STM_STM1_SR0.B.CLRR=1;

    /* The compare match interrupt output signal STMIR0 is activated on a
    * compare match event of compare register CMP0.
    * The signal STMIR0 is connected to the IR (Interrupt Router)
    * Service Request Control Register STM0SR0. */

    
    /* Select the interrupt output signal STMIR0 */
    STM1_ICR.B.CMP0OS=0;
    /* Enable the compare match interrupt with compare register CMP0 */
    STM1_ICR.B.CMP0EN=1;    

    /* Disable the service request during initialization. */
    SRC_STM_STM1_SR0.B.SRE=0;
}

void SystemTimerInit_core2(void)
{
    TickType Now;
/* Init Compare Match Control Register
    * Set the width of the relevant bits in registers STM0_CMP0 that is
    * taken for the compare operation and set the first bit location in
    * the 56-bit STM that is taken for the compare operation. */
    /* MSIZE0 = 31 -> CMP0[31:0] is used for compare */
    /* MR12 RULE 1.3, 13.2 VIOLATION: This false-positive situation is always detected for two rba_reg function macros because QAC could not evaluate the macro correctly due to redundant round braces. */
	STM2_CMCON.B.MSIZE0 = 31U;
/* MSTART0 = 0 -> STM0[0] is the lowest bit number */
	STM2_CMCON.B.MSTART0 = 0U;
    /* Make sure old cmp register will not accidentally match */
    Now = (TickType) STM2_TIM0.U;
    // STM0_CMP0.U = Now - 1u; 
    STM2_CMP0.U = Now + TIMER_MILLISECOND; 
    /* Interrupt Control register */
    /* Reset potentially active compare match interrupts of CMP0 */
    STM2_ISCR.B.CMP0IRR=1;
    /* Clear potentially active service request immediately */
    SRC_STM_STM2_SR0.B.CLRR=1;

    /* The compare match interrupt output signal STMIR0 is activated on a
    * compare match event of compare register CMP0.
    * The signal STMIR0 is connected to the IR (Interrupt Router)
    * Service Request Control Register STM0SR0. */

    
    /* Select the interrupt output signal STMIR0 */
    STM2_ICR.B.CMP0OS=0;
    /* Enable the compare match interrupt with compare register CMP0 */
    STM2_ICR.B.CMP0EN=1;

    /* Disable the service request during initialization. */
    SRC_STM_STM2_SR0.B.SRE=0;
}

/*Startup hook for enableing the periodic interrupt*/
void StartupHook(void)
{
	U32 CoreId = GetCoreID();
	if(CoreId == 0)
	{
		SystemTimerInit_core0();
	}
	else if(CoreId == 1)
	{
        SystemTimerInit_core1();
	}
	else if(CoreId==2)
	{
		SystemTimerInit_core2();
	}	
}

void OSK_OsTickISR_Handler(void)
{

    /* Clear the just triggered interrupt of CMP0 */
    STM0_ISCR.B.CMP0IRR=1;
    SystemTimer_current_time = Os_Cbk_GetStopwatch();
	SystemTimer_time_delay = SystemTimer_current_time - SystemTimer_prev_time;
	SystemTimer_prev_time =SystemTimer_current_time;
    /* Call RTA-OS Callback */
    /* The API call Os_AdvanceCounter_SystemTimer tells RTA-OS that
     * the match value has been reached. The Os_AdvanceCounter_SystemTimer
     * API call cause the next alarm and/or expiry point to be processed
     * and will set up the next match value by calling the
     * callback Os_Cbk_Set_SystemTimer.
     */

    /* MR12 RULE 17.7 VIOLATION: in some config-variants the macro returns a value which is not used here */
    Millisecond_count++;
	Os_IncrementCounter_Counter_1ms(); /*increment the counter_1ms tick for schedule table */
    Os_Cbk_Set_SystemTimer((TickType)( STM0_TIM0.U + TIMER_MILLISECOND));
}

void SystemTimer_ISR_core1_Handler(void)
{
	StatusType status;

	STM1_ISCR.B.CMP0IRR=1;
	Millisecond_core1_count++;
	if (Millisecond_core1_count% 100 == 0)
	{
		Os_IncrementCounter_Counter_C1_100ms();
	}
	Os_Cbk_Set_SystemTimer((TickType)( STM1_TIM0.U + TIMER_MILLISECOND));
}

void SystemTimer_ISR_core2_Handler(void)
{
	StatusType status;
	STM1_ISCR.B.CMP0IRR=1;
	Millisecond_core2_count++;
	if (Millisecond_core2_count% 100 == 0)
	{
		Os_IncrementCounter_Counter_C2_100ms();
	}
	Os_Cbk_Set_SystemTimer((TickType)( STM2_TIM0.U + TIMER_MILLISECOND));
	
}