/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Os_Cbk.c                                                         */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function definition                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         20.06.2023    Santhosh Addula      initial Version            */
/* [2]         20.06.2023    Santhosh Addula      Os_Cbk_implemetnation for  */
/*                                                SystemTimer ISR            */
/* [3]         07.08.2023    Santhosh Addula      STM0,1,2 call backs are    */
/*                                                updated by core wise       */

/*****************************************************************************/
#include "Os_Cbk.h"
#include "IfxSrc_reg.h"
#include "Os_DisableInterrupts.h"

#define	OS_WRITABLE_START_SEC_VAR_NOINIT_32BIT
uint32 Os_pretask_starts[OS_NUM_TASKS]; /* count the number of task execution,
 	 	 	 	 	 	 	 	 	 	 not including resuming from preemption */
Os_StopwatchTickType Os_posttask_max_exe_time[OS_NUM_TASKS]; /* log maximum execution time of each task */
TaskType Os_CurrentTask[OS_NUM_CORES];
uint32 Os_task_errs[OS_NUM_TASKS];
#define	OS_WRITABLE_STOP_SEC_VAR_NOINIT_32BIT

FUNC(void, OS_CALLOUT_CODE) App_Cbk_MemProtection(StatusType ErrorType, TaskType TaskInError, ISRType ISRInError)
{
    StatusType Status_Type;
	ISRType ISR_Type;
	ISR_Type = ISRInError;
	Status_Type = ErrorType;
	if(TaskInError != INVALID_TASK)
	{
		Os_task_errs[OS_TASKTYPE_TO_INDEX(TaskInError)] += 1U;
	}
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_OSK_OsTickISR(void)
{
	Os_Disable_OSK_OsTickISR();
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_OSK_OsTickISR(void)
{
	/* Reset the interrupt pending flag */
	STM0_ISCR.B.CMP0IRR = 1;
}

/*!
 ********************************************************************
 * \brief       Hardware counter set, RTA-OS callback of SystemTimer
 *
 * \param       Match:   the absolute value of the counter at which an
 *                       action should take place.
 *
 * \return      void
 *
 * This callback sets up the state for an interrupt to occur when the next action
 * is due. The callback is passed the absolute value of the counter at which an
 * action should take place. For Alarm-counters, this callback is used in two distinct
 * cases:
 * 1. Starting:  Setting the initial interrupt source when a schedule table
 *               or an alarm is started on the counter.
 * 2. Resetting: Shortening the time to the next counter expiry.
 *
 * The second case is needed because you can, for example, make a
 * SetRelAlarm(WakeUp, 100) call when the next interrupt is due in
 * more than 100 ticks.
 ********************************************************************
 */

FUNC(void, OS_APPL_CODE) Os_Cbk_Set_SystemTimer(TickType Match)
{
    TickType Now;
    /* lock Interrupts */
    if(GetCoreID() ==0)
    {
        /* Make sure old cmp register will not accidentally match */
        Now = (TickType) STM0_TIM0.U;
        STM0_CMP0.U = Now - 1u;

        /* Clear interrupt request of CMP0. This does not clear a potentially pending Interrupt (SRC.SRR),
           but we don't want to clear this Interrupt, because the SystemTimer might be used for
           more than one Scheduling Tables. */
        STM0_ISCR.B.CMP0IRR=1;

        /* Write the match value to the STM-Compare Register */
        STM0_CMP0.U = Match;

        /* Enable the service request */
        SRC_STM_STM0_SR0.B.SRE=1;

        /* trigger interrupt immediately, if match is in the past */
        Now = (TickType) STM0_TIM0.U;
        if ((Now-Match) < (Match-Now))
        {
            /* Clear interrupt request of CMP0 */
            STM0_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM0_SR0.B.CLRR=1;
            /* Set service request immediately */
            SRC_STM_STM0_SR0.B.SETR=1;
        }

        /* Notification of Match value for rba_FrOsSync */

    }
    else if(GetCoreID() == 1)
    {
        /* Make sure old cmp register will not accidentally match */
        Now = (TickType) STM1_TIM0.U;
        STM1_CMP0.U = Now - 1u;

        /* Clear interrupt request of CMP0. This does not clear a potentially pending Interrupt (SRC.SRR),
           but we don't want to clear this Interrupt, because the SystemTimer might be used for
           more than one Scheduling Tables. */
        STM1_ISCR.B.CMP0IRR=1;

        /* Write the match value to the STM-Compare Register */
        STM1_CMP0.U = Match;

        /* Enable the service request */
        SRC_STM_STM1_SR0.B.SRE=1;

        /* trigger interrupt immediately, if match is in the past */
        Now = (TickType) STM1_TIM0.U;
        if ((Now-Match) < (Match-Now))
        {
            /* Clear interrupt request of CMP0 */
            STM1_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM1_SR0.B.CLRR=1;
            /* Set service request immediately */
            SRC_STM_STM1_SR0.B.SETR=1;
        }

        /* Notification of Match value for rba_FrOsSync */
    }
    else if(GetCoreID() == 2)
    {
        /* Make sure old cmp register will not accidentally match */
        Now = (TickType) STM2_TIM0.U;
        STM2_CMP0.U = Now - 1u;

        /* Clear interrupt request of CMP0. This does not clear a potentially pending Interrupt (SRC.SRR),
           but we don't want to clear this Interrupt, because the SystemTimer might be used for
           more than one Scheduling Tables. */
        STM2_ISCR.B.CMP0IRR=1;

        /* Write the match value to the STM-Compare Register */
        STM2_CMP0.U = Match;

        /* Enable the service request */
        SRC_STM_STM2_SR0.B.SRE=1;

        /* trigger interrupt immediately, if match is in the past */
        Now = (TickType) STM2_TIM0.U;
        if ((Now-Match) < (Match-Now))
        {
            /* Clear interrupt request of CMP0 */
            STM2_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM2_SR0.B.CLRR=1;
            /* Set service request immediately */
            SRC_STM_STM2_SR0.B.SETR=1;
        }

        /* Notification of Match value for rba_FrOsSync */        
    }
}


/*!
 ********************************************************************
 * \brief       system timer counter now value, RTA-OS callback
 *
 * \param       void
 *
 * \return      the current value of the system timer counter
 *
 * This callback needs to return the current value of the system timer counter.
 * This is used for the GetCounterValue() API call of the OS
 ********************************************************************
 */

FUNC(TickType, OS_APPL_CODE) Os_Cbk_Now_SystemTimer(void)
{
    if(GetCoreID() == 0)
    {
        return( (TickType) STM0_TIM0.U );
    }
    else if(GetCoreID() == 1)
    {
        return( (TickType) STM1_TIM0.U );
    }
    else if(GetCoreID() == 2)
    {
        return( (TickType) STM2_TIM0.U );
    }    
}


/*!
 ********************************************************************
 * \brief       system timer counter state, RTA-OS callback
 *
 * \param       State:   state of the counter
 *
 * \return      void
 *
 * This callback returns whether the next action on the counter is pending
 * or not and, if the action is not pending, the number of ticks remaining
 * until the match value is reached.
 ********************************************************************
 */

FUNC(void, OS_APPL_CODE) Os_Cbk_State_SystemTimer(Os_CounterStatusRefType State)
{
    if(GetCoreID() ==0)
    {
        State->Delay = (TickType) (STM0_CMP0.U - STM0_TIM0.U);

    /* Check if Counter is enabled */
    if(SRC_STM_STM0_SR0.B.SRE)
    {
        State->Running = TRUE;
    }
    else
    {
        State->Running = FALSE;
    }

        /* Check if Counter is pending */
        if(SRC_STM_STM0_SR0.B.SRR)
        {
            State->Pending = TRUE;
        }
        else
        {
            State->Pending = FALSE;
        }
    }
    else if(GetCoreID() ==1)
    {
        State->Delay = (TickType) (STM1_CMP0.U - STM1_TIM0.U);

        /* Check if Counter is enabled */
        if(SRC_STM_STM1_SR0.B.SRE)
        {
            State->Running = TRUE;
        }
        else
        {
            State->Running = FALSE;
        }

        /* Check if Counter is pending */
        if(SRC_STM_STM1_SR0.B.SRR)
        {
            State->Pending = TRUE;
        }
        else
        {
            State->Pending = FALSE;
        }        
    }
    else if(GetCoreID() ==2)
    {
        State->Delay = (TickType) (STM2_CMP0.U - STM2_TIM0.U);

        /* Check if Counter is enabled */
        if(SRC_STM_STM2_SR0.B.SRE)
        {
            State->Running = TRUE;
        }
        else
        {
            State->Running = FALSE;
        }

        /* Check if Counter is pending */
        if(SRC_STM_STM2_SR0.B.SRR)
        {
            State->Pending = TRUE;
        }
        else
        {
            State->Pending = FALSE;
        }        
    }    
}


/*!
 ********************************************************************
 * \brief       cancel system timer counter, RTA-OS callback
 *
 * \param       void
 *
 * \return      void
 *
 * This callback must clear any pending interrupt for your counter
 * and ensure that the interrupt cannot become pending until a
 * Os_Cbk_Set_SystemTimer() call is made.
 ********************************************************************
 */

FUNC(void, OS_APPL_CODE) Os_Cbk_Cancel_SystemTimer(void)
{
    DisableAllInterrupts();
    {
        if(GetCoreID() == 0)
        {
            /* Disable service request node */
            SRC_STM_STM0_SR0.B.SRE=0;
            //(void) SRC.STM[0].SR0;                  //read forces that ClrBit SRE has stored in register
            (void) SRC_STM_STM0_SR0.U;
            /* Clear interrupt request of CMP0 */
            STM0_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM0_SR0.B.CLRR=1;
        }
        else if(GetCoreID() == 1)
        {
            /* Disable service request node */
            SRC_STM_STM1_SR0.B.SRE=0;
            //(void) SRC.STM[0].SR0;                  //read forces that ClrBit SRE has stored in register
            (void) SRC_STM_STM1_SR0.U;
            /* Clear interrupt request of CMP0 */
            STM1_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM1_SR0.B.CLRR=1;
        }
        else if(GetCoreID() == 2)
        {
            /* Disable service request node */
            SRC_STM_STM2_SR0.B.SRE=0;
            //(void) SRC.STM[0].SR0;                  //read forces that ClrBit SRE has stored in register
            (void) SRC_STM_STM2_SR0.U;
            /* Clear interrupt request of CMP0 */
            STM2_ISCR.B.CMP0IRR=1;
            /* Clear service request immediately */
            SRC_STM_STM2_SR0.B.CLRR=1;
        }        
    }
    /* release Interrupts */
    EnableAllInterrupts();
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_SystemTimer_ISR_core1(void)
{
	Os_Disable_SystemTimer_ISR_core1();
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_SystemTimer_ISR_core1(void)
{
	/* Reset the interrupt pending flag */
	STM1_ISCR.B.CMP0IRR = 1;
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_SystemTimer_ISR_core2(void)
{
	Os_Disable_SystemTimer_ISR_core2();
}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_SystemTimer_ISR_core2(void)
{
	/* Reset the interrupt pending flag */
	STM2_ISCR.B.CMP0IRR = 1;
}


FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore0(void)
{
   StartupHook();
}

FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore2(void)
{
   StartupHook();
}
FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore0(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;

    ErrorHook(Error);
}
FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore1(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;

    ErrorHook(Error);
}
FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore2(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;

    ErrorHook(Error);
}

FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore1(void)
{
   StartupHook();
}

FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore0(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;
}

FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore1(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;
}

FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore2(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;
}

FUNC(void, OS_CALLOUT_CODE) PreTaskHook(void)
{

}

FUNC(void, OS_CALLOUT_CODE) PostTaskHook(void)
{

}

FUNC(void, OS_CALLOUT_CODE) Os_Cbk_StackOverrunHook(Os_StackSizeType Overrun, Os_StackOverrunType Reason)
{

}

void Os_Cbk_ISREnd(ISRType isr){}
void Os_Cbk_ISRStart(ISRType isr){}
CAT1_ISR(DefaultInterruptHandler){}
void(Os_Cbk_Terminated_ISR_MpsVadc)(void){ }
void(Os_Cbk_Terminated_ISR_MotorControl)(void){ }
// ISR(QSPI2ERR_ISR){ }
void(Os_Cbk_Terminated_QSPI2ERR_ISR)(void){ }
ISR(WdgGptSrvISR){ }
void(Os_Cbk_Terminated_WdgGptSrvISR)(void){ }
void(Os_Cbk_Terminated_ISR_InnerLoop_2)(void){ }
void(Os_Cbk_Terminated_ISR_OuterLoop)(void){ }
void Os_Cbk_Disable_WdgGptSrvISR(void)
{
    Os_Disable_WdgGptSrvISR();
}
void Os_Cbk_Disable_QSPI2ERR_ISR(void)
{
	Os_Disable_QSPI2ERR_ISR();
}
void Os_Cbk_Disable_SCUERUSR0_ISR(void)
{
	Os_Disable_SCUERUSR0_ISR();
}
void Os_Cbk_Disable_ISR_OuterLoop(void)
{
	Os_Disable_ISR_OuterLoop();
}
void Os_Cbk_Disable_ISR_InnerLoop_2(void)
{
	Os_Disable_ISR_InnerLoop_2();
}
//void(Os_Cbk_Disable_ISR_PeriodicTimer)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_6)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_0)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_1)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_2)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_3)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_5)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_4)(void){ }
void(Os_Cbk_Disable_RTOS_TRAP_CL_7)(void){ }
void(Os_Cbk_Disable_ISR_MotorControl)(void){ }
void(Os_Cbk_Disable_ISR_MpsVadc)(void){ }
// ISR(ISR_PeriodicTimer){ }
// void(Os_Cbk_Terminated_ISR_PeriodicTimer)(void){ }
void Os_Cbk_CrosscoreISRStart(CoreIdType core_id){}
void Os_Cbk_CrosscoreISREnd(CoreIdType core_id){}

/* CAN0 ISRs Termination Definition */

void(Os_Cbk_Terminated_CAN0SR0_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR1_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR2_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR3_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR4_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR5_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR6_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR7_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR8_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR9_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR10_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR11_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR12_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR13_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR14_ISR)(void){}
void(Os_Cbk_Terminated_CAN0SR15_ISR)(void){}

/* CAN0 ISRs Disable Definition */

void Os_Cbk_Disable_CAN0SR0_ISR(){Os_Disable_CAN0SR0_ISR();}
void Os_Cbk_Disable_CAN0SR1_ISR(){Os_Disable_CAN0SR1_ISR();}
void Os_Cbk_Disable_CAN0SR2_ISR(){Os_Disable_CAN0SR2_ISR();}
void Os_Cbk_Disable_CAN0SR3_ISR(){Os_Disable_CAN0SR3_ISR();}
void Os_Cbk_Disable_CAN0SR4_ISR(){Os_Disable_CAN0SR4_ISR();}
void Os_Cbk_Disable_CAN0SR5_ISR(){Os_Disable_CAN0SR5_ISR();}
void Os_Cbk_Disable_CAN0SR6_ISR(){Os_Disable_CAN0SR6_ISR();}
void Os_Cbk_Disable_CAN0SR7_ISR(){Os_Disable_CAN0SR7_ISR();}
void Os_Cbk_Disable_CAN0SR8_ISR(){Os_Disable_CAN0SR8_ISR();}
void Os_Cbk_Disable_CAN0SR9_ISR(){Os_Disable_CAN0SR9_ISR();}
void Os_Cbk_Disable_CAN0SR10_ISR(){Os_Disable_CAN0SR10_ISR();}
void Os_Cbk_Disable_CAN0SR11_ISR(){Os_Disable_CAN0SR11_ISR();}
void Os_Cbk_Disable_CAN0SR12_ISR(){Os_Disable_CAN0SR12_ISR();}
void Os_Cbk_Disable_CAN0SR13_ISR(){Os_Disable_CAN0SR13_ISR();}
void Os_Cbk_Disable_CAN0SR14_ISR(){Os_Disable_CAN0SR14_ISR();}
void Os_Cbk_Disable_CAN0SR15_ISR(){Os_Disable_CAN0SR15_ISR();}
void(Os_Cbk_Terminated_CAN1SR0_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR1_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR2_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR3_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR4_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR5_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR6_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR7_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR8_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR9_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR10_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR11_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR12_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR13_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR14_ISR)(void){}
void(Os_Cbk_Terminated_CAN1SR15_ISR)(void){}

/* CAN1 ISRs Disable Definition */

void Os_Cbk_Disable_CAN1SR0_ISR(){Os_Disable_CAN1SR0_ISR();}
void Os_Cbk_Disable_CAN1SR1_ISR(){Os_Disable_CAN1SR1_ISR();}
void Os_Cbk_Disable_CAN1SR2_ISR(){Os_Disable_CAN1SR2_ISR();}
void Os_Cbk_Disable_CAN1SR3_ISR(){Os_Disable_CAN1SR3_ISR();}
void Os_Cbk_Disable_CAN1SR4_ISR(){Os_Disable_CAN1SR4_ISR();}
void Os_Cbk_Disable_CAN1SR5_ISR(){Os_Disable_CAN1SR5_ISR();}
void Os_Cbk_Disable_CAN1SR6_ISR(){Os_Disable_CAN1SR6_ISR();}
void Os_Cbk_Disable_CAN1SR7_ISR(){Os_Disable_CAN1SR7_ISR();}
void Os_Cbk_Disable_CAN1SR8_ISR(){Os_Disable_CAN1SR8_ISR();}
void Os_Cbk_Disable_CAN1SR9_ISR(){Os_Disable_CAN1SR9_ISR();}
void Os_Cbk_Disable_CAN1SR10_ISR(){Os_Disable_CAN1SR10_ISR();}
void Os_Cbk_Disable_CAN1SR11_ISR(){Os_Disable_CAN1SR11_ISR();}
void Os_Cbk_Disable_CAN1SR12_ISR(){Os_Disable_CAN1SR12_ISR();}
void Os_Cbk_Disable_CAN1SR13_ISR(){Os_Disable_CAN1SR13_ISR();}
void Os_Cbk_Disable_CAN1SR14_ISR(){Os_Disable_CAN1SR14_ISR();}
void Os_Cbk_Disable_CAN1SR15_ISR(){Os_Disable_CAN1SR15_ISR();}

/*DMA ISRs Termination Definition*/

void(Os_Cbk_Terminated_DMACH25SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH26SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH27SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH28SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH29SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH30SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH11SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH12SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH13SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH14SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH15SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH16SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH17SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH18SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH19SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH20SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH21SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH22SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH23SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH24SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH31SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH32SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH33SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH34SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH35SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH36SR_ISR)(void){}
void(Os_Cbk_Terminated_DMACH37SR_ISR)(void){}

// /*DMA ISRs Disable Definition*/

void Os_Cbk_Disable_DMACH25SR_ISR(){Os_Disable_DMACH25SR_ISR();}
void Os_Cbk_Disable_DMACH26SR_ISR(){Os_Disable_DMACH26SR_ISR();}
void Os_Cbk_Disable_DMACH27SR_ISR(){Os_Disable_DMACH27SR_ISR();}
void Os_Cbk_Disable_DMACH28SR_ISR(){Os_Disable_DMACH28SR_ISR();}
void Os_Cbk_Disable_DMACH29SR_ISR(){Os_Disable_DMACH29SR_ISR();}
void Os_Cbk_Disable_DMACH30SR_ISR(){Os_Disable_DMACH30SR_ISR();}
void Os_Cbk_Disable_DMACH11SR_ISR(){Os_Disable_DMACH11SR_ISR();}
void Os_Cbk_Disable_DMACH12SR_ISR(){Os_Disable_DMACH12SR_ISR();}
void Os_Cbk_Disable_DMACH13SR_ISR(){Os_Disable_DMACH13SR_ISR();}
void Os_Cbk_Disable_DMACH14SR_ISR(){Os_Disable_DMACH14SR_ISR();}
void Os_Cbk_Disable_DMACH15SR_ISR(){Os_Disable_DMACH15SR_ISR();}
void Os_Cbk_Disable_DMACH16SR_ISR(){Os_Disable_DMACH16SR_ISR();}
void Os_Cbk_Disable_DMACH17SR_ISR(){Os_Disable_DMACH17SR_ISR();}
void Os_Cbk_Disable_DMACH18SR_ISR(){Os_Disable_DMACH18SR_ISR();}
void Os_Cbk_Disable_DMACH19SR_ISR(){Os_Disable_DMACH19SR_ISR();}
void Os_Cbk_Disable_DMACH20SR_ISR(){Os_Disable_DMACH20SR_ISR();}
void Os_Cbk_Disable_DMACH21SR_ISR(){Os_Disable_DMACH21SR_ISR();}
void Os_Cbk_Disable_DMACH22SR_ISR(){Os_Disable_DMACH22SR_ISR();}
void Os_Cbk_Disable_DMACH23SR_ISR(){Os_Disable_DMACH23SR_ISR();}
void Os_Cbk_Disable_DMACH24SR_ISR(){Os_Disable_DMACH24SR_ISR();}
void Os_Cbk_Disable_DMACH31SR_ISR(){Os_Disable_DMACH31SR_ISR();}
void Os_Cbk_Disable_DMACH32SR_ISR(){Os_Disable_DMACH32SR_ISR();}
void Os_Cbk_Disable_DMACH33SR_ISR(){Os_Disable_DMACH33SR_ISR();}
void Os_Cbk_Disable_DMACH34SR_ISR(){Os_Disable_DMACH34SR_ISR();}
void Os_Cbk_Disable_DMACH35SR_ISR(){Os_Disable_DMACH35SR_ISR();}
void Os_Cbk_Disable_DMACH36SR_ISR(){Os_Disable_DMACH36SR_ISR();}
void Os_Cbk_Disable_DMACH37SR_ISR(){Os_Disable_DMACH37SR_ISR();}

// /*ADC ISRs Termination Definition*/

void(Os_Cbk_Terminated_ADC11SR2_ISR)(void){}
void(Os_Cbk_Terminated_ADC1SR2_ISR)(void){}
void(Os_Cbk_Terminated_ADC2SR2_ISR)(void){}
void(Os_Cbk_Terminated_ADC3SR2_ISR)(void){}
void(Os_Cbk_Terminated_ADC8SR1_ISR)(void){}
void(Os_Cbk_Terminated_ADC8SR2_ISR)(void){}

// /*ADC ISRs Disable Definition*/

void Os_Cbk_Disable_ADC11SR2_ISR(){Os_Disable_ADC11SR2_ISR();}
void Os_Cbk_Disable_ADC1SR2_ISR(){Os_Disable_ADC1SR2_ISR();}
void Os_Cbk_Disable_ADC2SR2_ISR(){Os_Disable_ADC2SR2_ISR();}
void Os_Cbk_Disable_ADC3SR2_ISR(){Os_Disable_ADC3SR2_ISR();}
void Os_Cbk_Disable_ADC8SR1_ISR(){Os_Disable_ADC8SR1_ISR();}
void Os_Cbk_Disable_ADC8SR2_ISR(){Os_Disable_ADC8SR2_ISR();}


// /*GTM ISRs Disable Definition*/

void Os_Cbk_Disable_GTMATOM0SR0_ISR(){Os_Disable_GTMATOM0SR0_ISR();}
void Os_Cbk_Disable_GTMATOM0SR1_ISR(){Os_Disable_GTMATOM0SR1_ISR();}
void Os_Cbk_Disable_GTMATOM0SR2_ISR(){Os_Disable_GTMATOM0SR2_ISR();}
void Os_Cbk_Disable_GTMATOM0SR3_ISR(){Os_Disable_GTMATOM0SR3_ISR();}

// /*GTM ISRs Termination Definition*/


void(Os_Cbk_Terminated_GTMATOM0SR0_ISR)(void){}
void(Os_Cbk_Terminated_GTMATOM0SR1_ISR)(void){}
void(Os_Cbk_Terminated_GTMATOM0SR2_ISR)(void){}
void(Os_Cbk_Terminated_GTMATOM0SR3_ISR)(void){}

CAT1_ISR(SCUERUSR0_ISR){}