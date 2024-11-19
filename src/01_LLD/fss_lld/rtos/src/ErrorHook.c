/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   ErrorHook.c                                                      */
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
/*****************************************************************************/


#include "Std_Types.h"
#include "RTOS_MW.h"
#include "RTOS_MW_Data.h"
#include "Os.h"

#define	ERR_LOG_MAX	(20)
#define	SERVICE_ID_MAX	(OSServiceId_Os_GetTrapInfo + 1 )

typedef	struct {
	uint32 	     errCount;
	StatusType	 errType;
	ISRType      isr;
	TaskType     task;
} Os_ErrorLog;

typedef	struct {
	U8           service_id;
	uint32 	     serviceid_errCount;
}ServiceID_Error;

struct Error_Stats
{
   Os_ErrorLog err_log[ERR_LOG_MAX];
   ServiceID_Error sid_error[SERVICE_ID_MAX];
};

static struct Error_Stats Errorstats;
static void bios_HndlOS_TaskOverrunError(TeOS_e_CPU bios_LeOS_e_CPU);

/*################################################################################
# FUNCITON NAME:	ErrorHook	
# DESCRIPTION  :	RTOS function called when an RTOS Error occurs
# SCOPE		   :	public	
# PARAMETERS   :	StatusType:	type of error which occured	
# RETURNS      :    none 
################################################################################*/
void ErrorHook(StatusType Error) 
{
	 ISRType ISRInError;
	TeHWIO_e_OS_Task bios_LeOS_e_Task;
	TaskType TaskInError;
	TeOS_e_CPU bios_LeOS_e_CPU;

	// get the current CPU ID
	bios_LeOS_e_CPU = bios_GetOS_e_CPU_ID();


 /*
   * This code sample shows how to determine which Task or
   * ISR was running when the error occurred.
   */
  ISRInError = GetISRID();
  if (ISRInError != INVALID_ISR) {
    /* The error occurred when ISR 'ISRInError' was running */
  } else {
    (void)GetTaskID(&TaskInError);
    if (TaskInError != INVALID_TASK) {
      /* The error occurred when Task 'TaskInError' was running */
    } else {
      /* The error occurred during StartOS, Os_Cbk_Idle or ShutdownOS */
    }
  }

  Errorstats.err_log[Error].errCount ++;
  Errorstats.err_log[Error].errType = Error;
  Errorstats.err_log[Error].isr = ISRInError;
  Errorstats.err_log[Error].task = TaskInError;
  /*
   * This code sample shows how to determine which error
   * was detected.
   */
  switch (Error) {
    case E_OS_ACCESS:
	     
      /* Handle E_OS_ACCESS */
      break;
    case E_OS_CALLEVEL:
      /* Handle E_OS_CALLEVEL */
      break;
    case E_OS_ID:
      /* Handle E_OS_ID */
      break;
    case E_OS_LIMIT:
      /* Handle E_OS_LIMIT */
      break;
    case E_OS_NOFUNC:
      /* Handle E_OS_NOFUNC */
      break;
    case E_OS_RESOURCE:
      /* Handle E_OS_RESOURCE */
      break;
    case E_OS_STATE:
      /* Handle E_OS_STATE */
      break;
    case E_OS_VALUE:
      /* Handle E_OS_VALUE */
      break;
    case E_OS_SERVICEID:
      /* Handle E_OS_SERVICEID */
      break;
    case E_OS_ILLEGAL_ADDRESS:
      /* Handle E_OS_ILLEGAL_ADDRESS */
      break;
    case E_OS_MISSINGEND:
      /* Handle E_OS_MISSINGEND */
      break;
    case E_OS_DISABLEDINT:
      /* Handle E_OS_DISABLEDINT */
      break;
    case E_OS_STACKFAULT:
      /* Handle E_OS_STACKFAULT */
      break;
    case E_OS_CORE:
      /* Handle E_OS_CORE */
      break;
    case E_OS_SPINLOCK:
      /* Handle E_OS_SPINLOCK */
      break;
    case E_OS_INTERFERENCE_DEADLOCK:
      /* Handle E_OS_INTERFERENCE_DEADLOCK */
      break;
    case E_OS_NESTING_DEADLOCK:
      /* Handle E_OS_NESTING_DEADLOCK */
      break;
    case E_OS_PARAM_POINTER:
      /* Handle E_OS_PARAM_POINTER */
      break;
    case E_OS_SYS_NO_RESTART:
      /* Handle E_OS_SYS_NO_RESTART */
      break;
    case E_OS_SYS_RESTART:
      /* Handle E_OS_SYS_RESTART */
      break;
    case E_OS_SYS_OVERRUN:
      /* Handle E_OS_SYS_OVERRUN */
      break;
    case E_OS_SYS_XCORE_QFULL:
      /* Handle E_OS_SYS_XCORE_QFULL */
      break;
    case E_OS_SYS_ERROR_LIMIT:
      /* Handle E_OS_SYS_ERROR_LIMIT */
      break;
    default:
      /* Never here */
      break;
  }
	/*
	 * With Service ID logging enabled, it is possible to
	 * determine which API was running when the error was
	 * detected through OSErrorGetServiceId().
	 * If Parameter logging is enabled, it is also possible
	 * to use the OSError_ macros to see the parameter
	 * values passed to the API.
	 */
	Errorstats.sid_error[OSErrorGetServiceId()].serviceid_errCount ++;
	Errorstats.sid_error[OSErrorGetServiceId()].service_id = OSErrorGetServiceId() ;
	switch (OSErrorGetServiceId()) {
		case OSServiceId_None:
		  /* Handle ISR termination errors */
		  break;
		case OSServiceId_ActivateTask:
		  /* Handle error from ActivateTask */
			 if (Error == E_OS_LIMIT) {
				bios_HndlOS_TaskOverrunError(bios_LeOS_e_CPU);
			}
		  break;
		case OSServiceId_Os_AdvanceCounter:
		  /* Handle error from Os_AdvanceCounter */
		   OSError_Os_AdvanceCounter_CounterID(); /*contains the CounterType 'CounterID' passed to Os_AdvanceCounter */
		  break;
		case OSServiceId_CancelAlarm:
		  /* Handle error from CancelAlarm */
		  OSError_CancelAlarm_AlarmID(); /*contains the AlarmType 'AlarmID' passed to CancelAlarm */
		  break;
		case OSServiceId_CallTrustedFunction:
		  /* Handle error from CallTrustedFunction */
		   OSError_CallTrustedFunction_FunctionIndex(); /*contains the TrustedFunctionIndexType 'FunctionIndex' passed to CallTrustedFunction */
		   OSError_CallTrustedFunction_FunctionParams() ; /*contains the TrustedFunctionParameterRefType 'FunctionParams' passed to CallTrustedFunction */
		  break;
		case OSServiceId_CheckISRMemoryAccess:
		  /* Handle error from CheckISRMemoryAccess */
		  break;
		case OSServiceId_CheckObjectAccess:
		  /* Handle error from CheckObjectAccess */
		  break;
		case OSServiceId_CheckObjectOwnership:
		  /* Handle error from CheckObjectOwnership */
		  break;
		case OSServiceId_CheckTaskMemoryAccess:
		  /* Handle error from CheckTaskMemoryAccess */
		  break;
		case OSServiceId_ChainTask:
		  /* Handle error from ChainTask */
		   OSError_ChainTask_TaskID(); /*contains the TaskType 'TaskID' passed to ChainTask */
		  break;
		case OSServiceId_ClearEvent:
		  /* Handle error from ClearEvent */
		   OSError_ClearEvent_Mask() ;/*contains the EventMaskType 'Mask' passed to ClearEvent */
		  break;
		case OSServiceId_ControlIdle:
		  /* Handle error from ControlIdle */
		  OSError_ControlIdle_CoreID() ;/* contains the CoreIdType 'CoreID' passed to ControlIdle */
		  OSError_ControlIdle_IdleMode();/*  contains the IdleModeType 'IdleMode' passed to ControlIdle */
		  break;
		case OSServiceId_DisableAllInterrupts:
		  /* Handle error from DisableAllInterrupts */
		  break;
		case OSServiceId_EnableAllInterrupts:
		  /* Handle error from EnableAllInterrupts */
		  break;
		case OSServiceId_GetActiveApplicationMode:
		  /* Handle error from GetActiveApplicationMode */
		  break;
		case OSServiceId_GetAlarm:
		  /* Handle error from GetAlarm */
		     OSError_GetAlarm_AlarmID(); /*contains the AlarmType 'AlarmID' passed to GetAlarm */
		     OSError_GetAlarm_Tick(); /*contains the TickRefType 'Tick' passed to GetAlarm */
		  break;
		case OSServiceId_GetAlarmBase:
		  /* Handle error from GetAlarmBase */
		     OSError_GetAlarmBase_AlarmID() ;/* contains the AlarmType 'AlarmID' passed to GetAlarmBase */
		     OSError_GetAlarmBase_Info();/*  contains the AlarmBaseRefType 'Info' passed to GetAlarmBase */
		  break;
		case OSServiceId_GetApplicationID:
		  /* Handle error from GetApplicationID */
		  break;
		case OSServiceId_GetCurrentApplicationID:
		  /* Handle error from GetCurrentApplicationID */
		  break;
		case OSServiceId_GetCounterValue:
		  /* Handle error from GetCounterValue */
		     OSError_GetCounterValue_CounterID(); /*contains the CounterType 'CounterID' passed to GetCounterValue */
		     OSError_GetCounterValue_Value(); /*contains the TickRefType 'Value' passed to GetCounterValue */
		  break;
		case OSServiceId_GetElapsedCounterValue:
		  /* Handle error from GetElapsedCounterValue */
		     OSError_GetElapsedCounterValue_CounterID();/* contains the CounterType 'CounterID' passed to GetElapsedCounterValue */
		     OSError_GetElapsedCounterValue_Value();/* contains the TickRefType 'Value' passed to GetElapsedCounterValue */
		     OSError_GetElapsedCounterValue_ElapsedValue();/* contains the TickRefType 'ElapsedValue' passed to GetElapsedCounterValue */
		  break;
		case OSServiceId_GetEvent:
		  /* Handle error from GetEvent */
		     OSError_GetEvent_TaskID();/* contains the TaskType 'TaskID' passed to GetEvent */
		     OSError_GetEvent_Mask();/*contains the EventMaskRefType 'Mask' passed to GetEvent */
		  break;
		case OSServiceId_GetISRID:
		  /* Handle error from GetISRID */
		  break;
		case OSServiceId_GetResource:
		  /* Handle error from GetResource */
		     OSError_GetResource_ResID(); /*contains the ResourceType 'ResID' passed to GetResource */
		  break;
		case OSServiceId_GetScheduleTableStatus:
		  /* Handle error from GetScheduleTableStatus */
		     OSError_GetScheduleTableStatus_ScheduleTableID();/* contains the ScheduleTableType 'ScheduleTableID' passed to GetScheduleTableStatus */
		     OSError_GetScheduleTableStatus_ScheduleStatus();/*contains the ScheduleTableStatusRefType 'ScheduleStatus' passed to GetScheduleTableStatus */
		  break;
		case OSServiceId_GetTaskID:
		  /* Handle error from GetTaskID */
		     OSError_GetTaskID_TaskID();/*contains the TaskRefType 'TaskID' passed to GetTaskID */
		  break;
		case OSServiceId_GetTaskState:
		  /* Handle error from GetTaskState */
		  	OSError_GetTaskState_TaskID();/* contains the TaskType 'TaskID' passed to GetTaskState */
		  	OSError_GetTaskState_State();/*contains the TaskStateRefType 'State' passed to GetTaskState */
		  break;
		case OSServiceId_GetVersionInfo:
		  /* Handle error from GetVersionInfo */
		  break;
		case OSServiceId_IncrementCounter:
		  /* Handle error from IncrementCounter */
		     OSError_IncrementCounter_CounterID(); /*contains the CounterType 'CounterID' passed to IncrementCounter */
		  break;
		case OSServiceId_NextScheduleTable:
		  /* Handle error from NextScheduleTable */
		     OSError_NextScheduleTable_ScheduleTableID_From();/* contains the ScheduleTableType 'ScheduleTableID_From' passed to NextScheduleTable */
		     OSError_NextScheduleTable_ScheduleTableID_To();/*contains the ScheduleTableType 'ScheduleTableID_To' passed to NextScheduleTable */
		  break;
		case OSServiceId_Os_GetCurrentIMask:
		  /* Handle error from Os_GetCurrentIMask */
		  break;
		case OSServiceId_Os_GetCurrentTPL:
		  /* Handle error from Os_GetCurrentTPL */
		  break;
		case OSServiceId_Os_GetExecutionTime:
		  /* Handle error from Os_GetExecutionTime */
		  break;
		case OSServiceId_Os_GetISRMaxExecutionTime:
		  /* Handle error from Os_GetISRMaxExecutionTime */
		     OSError_Os_GetISRMaxExecutionTime_ISRID();/*contains the ISRType 'ISRID' passed to Os_GetISRMaxExecutionTime */
		  break;
		case OSServiceId_Os_GetTaskActivationTime:
		  /* Handle error from Os_GetTaskActivationTime */
		     OSError_Os_GetTaskActivationTime_TaskID();/* contains the TaskType 'TaskID' passed to Os_GetTaskActivationTime */
		     OSError_Os_GetTaskActivationTime_Value();/* contains the Os_StopwatchTickRefType 'Value' passed to Os_GetTaskActivationTime */
		  break;
		case OSServiceId_Os_GetTaskMaxExecutionTime:
		  /* Handle error from Os_GetTaskMaxExecutionTime */
		     OSError_Os_GetTaskMaxExecutionTime_TaskID();/*contains the TaskType 'TaskID' passed to Os_GetTaskMaxExecutionTime */
		  break;
		case OSServiceId_Os_ResetISRMaxExecutionTime:
		  /* Handle error from Os_ResetISRMaxExecutionTime */
		     OSError_Os_ResetISRMaxExecutionTime_ISRID();/* contains the ISRType 'ISRID' passed to Os_ResetISRMaxExecutionTime */
		  break;
		case OSServiceId_Os_ResetTaskMaxExecutionTime:
		  /* Handle error from Os_ResetTaskMaxExecutionTime */
		     OSError_Os_ResetTaskMaxExecutionTime_TaskID();/* contains the TaskType 'TaskID' passed to Os_ResetTaskMaxExecutionTime */
		  break;
		case OSServiceId_Os_GetElapsedTime:
		  /* Handle error from Os_GetElapsedTime */
		  Os_GetElapsedTime();
		  break;
		case OSServiceId_Os_GetTaskElapsedTime:
		  /* Handle error from Os_GetTaskElapsedTime */
		     OSError_Os_GetTaskElapsedTime_TaskID();/* contains the TaskType 'TaskID' passed to Os_GetTaskElapsedTime */
		  break;
		case OSServiceId_Os_GetISRElapsedTime:
		  /* Handle error from Os_GetISRElapsedTime */
		     OSError_Os_GetISRElapsedTime_ISRID();/* contains the ISRType 'ISRID' passed to Os_GetISRElapsedTime */
		  break;
		case OSServiceId_Os_GetIdleElapsedTime:
		  /* Handle error from Os_GetIdleElapsedTime */
		     OSError_Os_GetIdleElapsedTime_IdleID();/* contains the Os_IdleType 'IdleID' passed to Os_GetIdleElapsedTime */
		  break;
		case OSServiceId_Os_ResetTaskElapsedTime:
		  /* Handle error from Os_ResetTaskElapsedTime */
		     OSError_Os_ResetTaskElapsedTime_TaskID();/* contains the TaskType 'TaskID' passed to Os_ResetTaskElapsedTime */
		  break;
		case OSServiceId_Os_ResetISRElapsedTime:
		  /* Handle error from Os_ResetISRElapsedTime */
		     OSError_Os_ResetISRElapsedTime_ISRID();/* contains the ISRType 'ISRID' passed to Os_ResetISRElapsedTime */
		  break;
		case OSServiceId_Os_ResetIdleElapsedTime:
		  /* Handle error from Os_ResetIdleElapsedTime */
		     OSError_Os_ResetIdleElapsedTime_IdleID();/* contains the Os_IdleType 'IdleID' passed to Os_ResetIdleElapsedTime */
		  break;
		case OSServiceId_Os_GetStackSize:
		  /* Handle error from Os_GetStackSize */
		  break;
		case OSServiceId_Os_GetStackUsage:
		  /* Handle error from Os_GetStackUsage */
		  break;
		case OSServiceId_Os_GetStackValue:
		  /* Handle error from Os_GetStackValue */
		  break;
		case OSServiceId_Os_GetISRMaxStackUsage:
		  /* Handle error from Os_GetISRMaxStackUsage */
		     OSError_Os_GetISRMaxStackUsage_ISRID();/* contains the ISRType 'ISRID' passed to Os_GetISRMaxStackUsage */
		  break;
		case OSServiceId_Os_GetTaskMaxStackUsage:
		  /* Handle error from Os_GetTaskMaxStackUsage */
		     OSError_Os_GetTaskMaxStackUsage_TaskID();/* contains the TaskType 'TaskID' passed to Os_GetTaskMaxStackUsage */
		  break;
		case OSServiceId_Os_ResetISRMaxStackUsage:
		  /* Handle error from Os_ResetISRMaxStackUsage */
		     OSError_Os_ResetISRMaxStackUsage_ISRID();/* contains the ISRType 'ISRID' passed to Os_ResetISRMaxStackUsage */
		  break;
		case OSServiceId_Os_ResetTaskMaxStackUsage:
		  /* Handle error from Os_ResetTaskMaxStackUsage */
		     OSError_Os_ResetTaskMaxStackUsage_TaskID();/* contains the TaskType 'TaskID' passed to Os_ResetTaskMaxStackUsage */
		  break;
		case OSServiceId_ReleaseResource:
		  /* Handle error from ReleaseResource */
		     OSError_ReleaseResource_ResID() ;/*contains the ResourceType 'ResID' passed to ReleaseResource */
		  break;
		case OSServiceId_Restart:
		  /* Handle error from Restart */
		  break;
		case OSServiceId_ResumeAllInterrupts:
		  /* Handle error from ResumeAllInterrupts */
		  break;
		case OSServiceId_ResumeOSInterrupts:
		  /* Handle error from ResumeOSInterrupts */
		  break;
		case OSServiceId_Schedule:
		  /* Handle error from Schedule */
		  break;
		case OSServiceId_SetEvent:
		  /* Handle error from SetEvent */
		     OSError_SetEvent_TaskID();/* contains the TaskType 'TaskID' passed to SetEvent */
		     OSError_SetEvent_Mask();/* contains the EventMaskType 'Mask' passed to SetEvent */
		  break;
		case OSServiceId_SetAbsAlarm:
		  /* Handle error from SetAbsAlarm */
		     OSError_SetAbsAlarm_AlarmID();/*contains the AlarmType 'AlarmID' passed to SetAbsAlarm */
		     OSError_SetAbsAlarm_start();/*contains the TickType 'start' passed to SetAbsAlarm */
		     OSError_SetAbsAlarm_cycle();/*contains the TickType 'cycle' passed to SetAbsAlarm */
		  break;
		case OSServiceId_SetRelAlarm:
		  /* Handle error from SetRelAlarm */
		     OSError_SetRelAlarm_AlarmID();/*contains the AlarmType 'AlarmID' passed to SetRelAlarm */
		     OSError_SetRelAlarm_increment();/* contains the TickType 'increment' passed to SetRelAlarm */
		     OSError_SetRelAlarm_cycle();/*contains the TickType 'cycle' passed to SetRelAlarm */
		  break;
		case OSServiceId_ShutdownOS:
		  /* Handle error from ShutdownOS */
		     ShutdownOS(0);
		  break;
		case OSServiceId_StartOS:
		  /* Handle error from StartOS */
		     StartOS(OSDEFAULTAPPMODE);
		  break;
		case OSServiceId_StartScheduleTableAbs:
		  /* Handle error from StartScheduleTableAbs */
		     OSError_StartScheduleTableAbs_ScheduleTableID();/* contains the ScheduleTableType 'ScheduleTableID' passed to StartScheduleTableAbs */
		     OSError_StartScheduleTableAbs_Start();/* contains the TickType 'Start' passed to StartScheduleTableAbs */
		  break;
		case OSServiceId_StartScheduleTableRel:
		  /* Handle error from StartScheduleTableRel */
		     OSError_StartScheduleTableRel_ScheduleTableID() ;/*contains the ScheduleTableType 'ScheduleTableID' passed to StartScheduleTableRel */
		     OSError_StartScheduleTableRel_Offset();/*contains the TickType 'Offset' passed to StartScheduleTableRel */
		  break;
		case OSServiceId_StartScheduleTableSynchron:
		  /* Handle error from StartScheduleTableSynchron */
		     OSError_StartScheduleTableSynchron_ScheduleTableID();/*contains the ScheduleTableType 'ScheduleTableID' passed to StartScheduleTableSynchron */
		  break;
		case OSServiceId_SyncScheduleTable:
		  /* Handle error from SyncScheduleTable */
		     OSError_SyncScheduleTable_ScheduleTableID();/*contains the ScheduleTableType 'ScheduleTableID' passed to SyncScheduleTable */
		     OSError_SyncScheduleTable_Value();/* contains the TickType 'Value' passed to SyncScheduleTable */
		  break;
		case OSServiceId_SyncScheduleTableRel:
		  /* Handle error from SyncScheduleTableRel */
		     OSError_SyncScheduleTableRel_ScheduleTableID();/*contains the ScheduleTableType 'ScheduleTableID' passed to SyncScheduleTableRel */
		     OSError_SyncScheduleTableRel_RelativeValue();/*contains the SignedTickType 'RelativeValue' passed to SyncScheduleTableRel */
		  break;
		case OSServiceId_SetScheduleTableAsync:
		  /* Handle error from SetScheduleTableAsync */
		     OSError_SetScheduleTableAsync_ScheduleTableID();/*contains the ScheduleTableType 'ScheduleTableID' passed to SetScheduleTableAsync */
		  break;
		case OSServiceId_StopScheduleTable:
		  /* Handle error from StopScheduleTable */
		     OSError_StopScheduleTable_ScheduleTableID();/* contains the ScheduleTableType 'ScheduleTableID' passed to StopScheduleTable */
		  break;
		case OSServiceId_SuspendAllInterrupts:
		  /* Handle error from SuspendAllInterrupts */
		  break;
		case OSServiceId_SuspendOSInterrupts:
		  /* Handle error from SuspendOSInterrupts */
		  break;
		// case OSServiceId_TerminateApplication:
		  /* Handle error from TerminateApplication */
		     OSError_TerminateApplication_Application() ;/*contains the ApplicationType 'Application' passed to TerminateApplication */
		     OSError_TerminateApplication_RestartOption();/* contains the RestartType 'RestartOption' passed to TerminateApplication */
		//   break;
		case OSServiceId_TerminateTask:
		  /* Handle error from TerminateTask */
		  break;
		case OSServiceId_WaitEvent:
		  /* Handle error from WaitEvent */
		     OSError_WaitEvent_Mask();/* contains the EventMaskType 'Mask' passed to WaitEvent */
		  break;
		case OSServiceId_EnableInterruptSource:
		  /* Handle error from EnableInterruptSource */
		     OSError_EnableInterruptSource_ISRID();/* contains the ISRType 'ISRID' passed to EnableInterruptSource */
		     OSError_EnableInterruptSource_ClearPending();/* contains the boolean 'ClearPending' passed to EnableInterruptSource */
		  break;
		case OSServiceId_DisableInterruptSource:
		  /* Handle error from DisableInterruptSource */
		     OSError_DisableInterruptSource_ISRID();/* contains the ISRType 'ISRID' passed to DisableInterruptSource */
		  break;
		case OSServiceId_ClearPendingInterrupt:
		  /* Handle error from ClearPendingInterrupt */
		     OSError_ClearPendingInterrupt_ISRID();/* contains the ISRType 'ISRID' passed to ClearPendingInterrupt */
		  break;
		case OSServiceId_ModifyPeripheral32:
		  /* Handle error from ModifyPeripheral32 */
		     OSError_ModifyPeripheral32_Area();/* contains the AreaIdType 'Area' passed to ModifyPeripheral32 */
		     OSError_ModifyPeripheral32_Address() ;/*contains the Os_uint32RefType 'Address' passed to ModifyPeripheral32 */
		  break;
		case OSServiceId_ReadPeripheral32:
		  /* Handle error from ReadPeripheral32 */
		     OSError_ReadPeripheral32_Area();/* contains the AreaIdType 'Area' passed to ReadPeripheral32 */
		     OSError_ReadPeripheral32_Address() ;/*contains the Os_uint32ConstRefType 'Address' passed to ReadPeripheral32 */
		     OSError_ReadPeripheral32_ReadValue() ;/*contains the Os_uint32RefType 'ReadValue' passed to ReadPeripheral32 */
		  break;
		case OSServiceId_WritePeripheral32:
		  /* Handle error from WritePeripheral32 */
		     OSError_WritePeripheral32_Area() ;/*contains the AreaIdType 'Area' passed to WritePeripheral32 */
		     OSError_WritePeripheral32_Address();/* contains the Os_uint32RefType 'Address' passed to WritePeripheral32 */
		     OSError_WritePeripheral32_WriteValue();/* contains the uint32 'WriteValue' passed to WritePeripheral32 */
		  break;
		case OSServiceId_ModifyPeripheral16:
		  /* Handle error from ModifyPeripheral16 */
		     OSError_ModifyPeripheral16_Area();/* contains the AreaIdType 'Area' passed to ModifyPeripheral16 */
		     OSError_ModifyPeripheral16_Address();/* contains the Os_uint16RefType 'Address' passed to ModifyPeripheral16 */
		  break;
		case OSServiceId_ReadPeripheral16:
		  /* Handle error from ReadPeripheral16 */
		     OSError_ReadPeripheral16_Area();/* contains the AreaIdType 'Area' passed to ReadPeripheral16 */
		     OSError_ReadPeripheral16_Address() ;/*contains the Os_uint16ConstRefType 'Address' passed to ReadPeripheral16 */
		     OSError_ReadPeripheral16_ReadValue() ;/*contains the Os_uint16RefType 'ReadValue' passed to ReadPeripheral16 */
		  break;
		case OSServiceId_WritePeripheral16:
		  /* Handle error from WritePeripheral16 */
		     OSError_WritePeripheral16_Area() ;/*contains the AreaIdType 'Area' passed to WritePeripheral16 */
		     OSError_WritePeripheral16_Address(); /*contains the Os_uint16RefType 'Address' passed to WritePeripheral16 */
		     OSError_WritePeripheral16_WriteValue();/*contains the uint16 'WriteValue' passed to WritePeripheral16 */
		  break;
		case OSServiceId_ModifyPeripheral8:
		  /* Handle error from ModifyPeripheral8 */
		     OSError_ModifyPeripheral8_Area() ;/*contains the AreaIdType 'Area' passed to ModifyPeripheral8 */
		     OSError_ModifyPeripheral8_Address();/* contains the Os_uint8RefType 'Address' passed to ModifyPeripheral8 */
		  break;
		case OSServiceId_ReadPeripheral8:
		  /* Handle error from ReadPeripheral8 */
		     OSError_ReadPeripheral8_Area();/* contains the AreaIdType 'Area' passed to ReadPeripheral8 */
		     OSError_ReadPeripheral8_Address() ;/*contains the Os_uint8ConstRefType 'Address' passed to ReadPeripheral8 */
		     OSError_ReadPeripheral8_ReadValue();/* contains the Os_uint8RefType 'ReadValue' passed to ReadPeripheral8 */
		  break;
		case OSServiceId_WritePeripheral8:
		  /* Handle error from WritePeripheral8 */
		     OSError_WritePeripheral8_Area() ;/*contains the AreaIdType 'Area' passed to WritePeripheral8 */
		     OSError_WritePeripheral8_Address() ;/*contains the Os_uint8RefType 'Address' passed to WritePeripheral8 */
		     OSError_WritePeripheral8_WriteValue() ;/*contains the uint8 'WriteValue' passed to WritePeripheral8 */
		  break;
		case OSServiceId_AllowAccess:
		  /* Handle error from AllowAccess */
		     Os_AllowAccess();
		  break;
		case OSServiceId_GetApplicationState:
		  /* Handle error from GetApplicationState */
		     OSError_GetApplicationState_Application();/* contains the ApplicationType 'Application' passed to GetApplicationState */
		     OSError_GetApplicationState_Value() ;/*contains the ApplicationStateRefType 'Value' passed to GetApplicationState */
			break;
		case OSServiceId_GetNumberOfActivatedCores:
			/* Handle error from GetNumberOfActivatedCores */
			Os_GetNumberOfActivatedCores();
			break;
		case OSServiceId_ShutdownAllCores:
			/* Handle error from ShutdownAllCores */
			Os_ShutdownAllCores(OSServiceId_ShutdownAllCores);
			break;
		case OSServiceId_StartCore:
			/* Handle error from StartCore */
			break;
		//case OSServiceId_StartNonAutosarCore:
			/* Handle error from StartNonAutosarCore */
		//	break;
		default:
		  /* Never here */
		  break;
 	}

	// call GM CPU specific errorhook callback function
	switch (bios_LeOS_e_CPU) {
		case CeOS_e_CPU0:
			break;
		case CeOS_e_CPU1:
		    break;
		case CeOS_e_CPU2:
			break;
		default:
		    break;
	}
}
/*################################################################################
# FUNCITON NAME:	bios_HndlOS_TaskOverrunError	
# DESCRIPTION  :	function to handle task overrun error 
					determines the task on which the error occured and
					increments the task overrun count
# SCOPE		   :	private	
# PARAMETERS   :	TeOS_e_CPU: CPU on which the overrun occured	
# RETURNS      :    none 
################################################################################*/
static void bios_HndlOS_TaskOverrunError(TeOS_e_CPU bios_LeOS_e_CPU)
{
	TeHWIO_e_OS_Task bios_LeOS_e_Task;

	/*
	 * get the current TASK ID using RTOS API to determine
	 * which task invoked the ErrorHook
	 */
	  //map task index to taskID
    switch((TeHWIO_e_OS_Task)OSError_ActivateTask_TaskID()->index)
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

	// increment the task overrun count
	
	bios_PrfrmOS_TASK_IncrOverrun(bios_LeOS_e_CPU, bios_LeOS_e_Task);
}