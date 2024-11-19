/*
 * Sample code showing how to determine what fault has occurred, and
 * the source of the fault.
 */
 
 /*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         17.11.2023    Samruddhi Gadave   Added protection hook    */
/*****************************************************************************/
#include "Os.h"
#include "XH_Interface.h"
#include "PUP_function.h"

# define MEM_PROTECTION_LOG_MAX 16
typedef	struct {
	uint32 	     cntMemProtection;
	ISRType      isr;
	TaskType     task;
} Os_MemProtectionLog;
Os_MemProtectionLog mem_protection_log[MEM_PROTECTION_LOG_MAX];
uint32 	    mem_protection_cnt;
uint32 LeRst_g_ResetAddress;


void HWIO_SHUTDOWN(void) ;

FUNC(ProtectionReturnType, OS_CALLOUT_CODE) ProtectionHook(StatusType FatalError) {
  ISRType ISRInError;
  TaskType TaskInError;
  ProtectionReturnType action = PRO_SHUTDOWN;  
  Os_MemProtectionLog* mpip;
  StatusType Status_Type;
  /*
   * This code sample shows how to determine which Task or
   * ISR was running when the fault occurred.
   */
  ISRInError = GetISRID();
  if (ISRInError != INVALID_ISR) {
    /* The fault occurred when ISR 'ISRInError' was running */
  } else {
    (void)GetTaskID(&TaskInError);
    if (TaskInError != INVALID_TASK) {
      /* The fault occurred when Task 'TaskInError' was running */
    } else {
      /* The fault occurred during StartOS, Os_Cbk_Idle or ShutdownOS */
    }
  }

  switch (FatalError) {
    case E_OS_PROTECTION_MEMORY:
      /* A memory protection error has been detected */
      {
			mpip =  &mem_protection_log[mem_protection_cnt % (uint8)MEM_PROTECTION_LOG_MAX];
			mpip->cntMemProtection = mem_protection_cnt;
			mem_protection_cnt++;
			mpip->isr                = ISRInError;
			mpip->task               = TaskInError;
		}
	    App_Cbk_MemProtection(FatalError, TaskInError, ISRInError);
      action = PRO_TERMINATETASKISR;
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
      XH_ErrorReset(2,5 ,LeRst_g_ResetAddress ,0);
      break;

    case E_OS_PROTECTION_TIME:
      /* Task exceeds its execution time budget OR A Category 2 ISR exceeds its execution time */
      action = PRO_TERMINATETASKISR;
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
      XH_ErrorReset(2,5 ,LeRst_g_ResetAddress ,0);
      break;

    case E_OS_PROTECTION_ARRIVAL:
      /* Task/Category 2 arrives before its timeframe has expired */
      action = PRO_IGNORE; /* This is the only place where PRO_IGNORE is legal */
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
      XH_ErrorReset(2,5 ,LeRst_g_ResetAddress ,0);
      break;

    case E_OS_PROTECTION_LOCKED:
      /* Task/Category 2 ISR blocks for too long */
      action = PRO_TERMINATEAPPL;
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
      XH_ErrorReset(2,5 ,LeRst_g_ResetAddress ,0);
      break;

    case E_OS_PROTECTION_EXCEPTION:
      /* Trap occurred */
      action = PRO_SHUTDOWN;
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
      XH_ErrorReset(2,5 ,LeRst_g_ResetAddress ,0);
      break;

    default:
      /* Never here */
      break;
  }
  return action;
}

FUNC(void, OS_CALLOUT_CODE)ShutdownHook(StatusType Error)
{
	StatusType Status_Type;
	Status_Type = Error;
	 (void)EcuM_Shutdown();
}

void HWIO_SHUTDOWN(void)
{
  EcuM_Shutdown();
}