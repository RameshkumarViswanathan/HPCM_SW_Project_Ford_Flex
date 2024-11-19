#ifndef BIOS_RTOS_MW_DATA_H_
#define BIOS_RTOS_MW_DATA_H_
/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   RTOS_MW_Data.h                                                   */
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

#include "hwosfcpu.h"
#include "Platform_Types.h"
#include "Compiler_Cfg.h"
#include "Os.h"
#include "Compiler.h"


#define SCHEDULER_UNLOCKED ((U8)0u)

// calculated from TeHWIO_e_OS_Task enum
#define NUM_TASKS ((U32)(OSK_1msTask - OSK_idleTask + 1))
#define CPU_UTIL_RATIO_FLOAT_PCT_100	((float32)1.f)
#define CPU_UTIL_RATIO_FLOAT_PCT_0		((float32)0.f)
#define TASK_OVERRUN_CNT_ZERO	((U16) 0)
 
/*******************************************************/

/* Timing */
typedef signed int SignedTickType;
typedef uint32 PhysicalTimeType; /* [$UKS  842] */
typedef unsigned int Os_StopwatchTickType; /* [$UKS 535] */
typedef P2VAR(Os_StopwatchTickType, TYPEDEF, OS_VAR) Os_StopwatchTickRefType;
typedef signed int Os_TimeLimitType;


typedef U16 CoreIdType;  /* [$UKS 1608] */ /* Commented becuase Os task type is already defined in os.h */


typedef P2CONST(Os_TaskType, TYPEDEF, OS_VAR) TaskType;  /* [$UKS 55] */


/*******************************************************/
typedef unsigned int Os_StopwatchTickType; /* [$UKS 535] */

typedef enum{
	CeOS_e_CPU_STATUS_DISABLED = 0x00,
	CeOS_e_CPU_STATUS_ENABLED = 0x01	
} TeOS_e_CPU_STATUS;

typedef struct TsOS_h_UTIL_State {
	U64	util_exec_time;
	U64	util_end_time;
	U64	util_prev_time;
	float32		util_ratio;
	U8		first_exec_flag;
} TsOS_h_UTIL_State;

typedef enum{
	CeOS_e_CPU0 = 0x00,
	CeOS_e_CPU1 = 0x01,
	CeOS_e_CPU2 = 0x02,	
	CeOS_e_NUM_CPU = 0x03
} TeOS_e_CPU;

/* Tasks */
typedef unsigned int Os_bitmask;
typedef Os_bitmask Os_pset0Type;
typedef Os_bitmask Os_pset1Type;
typedef Os_bitmask Os_pset2Type;
typedef Os_bitmask Os_pset3Type;

typedef void (*Os_VoidVoidFunctionType)(void);

typedef uint16 CoreIdType;  /* [$UKS 1608] */
/* OSApplications */

/* TYPEDEF shall be used within type definitions, where no memory qualifier can be specified.*/
#define TYPEDEF
#define OS_VAR                /* not required */ /* Globals or statics which are initialized after every reset. */
 
typedef struct TsOS_h_TASK_State {
	TeHWIO_e_OS_Task Task_ID;
	U64		start_time;
	U64		exec_time;
	U16		overrun_cnt;
	U64		cnt;
} TsOS_h_TASK_State;

typedef struct TsOS_h_CPU_State {
	TsOS_h_TASK_State		tasks[NUM_TASKS]; 
	TsOS_h_UTIL_State		util_state;	
	U64			    		pretask_act_stat;
	U64						task_act_stat;
	TeOS_e_CPU_STATUS		halt_stat;
	U8						schd_lock_stat; 
} TsOS_h_CPU_State;

extern U16 HWIO_OVERRUN_TASK_ID;

extern TeOS_e_CPU_STATUS bios_GetOS_e_CPU_HaltStat(TeOS_e_CPU bios_LeOS_e_CPU);
extern void bios_SetOS_CPU_HaltStat(TeOS_e_CPU bios_LeOS_e_CPU, TeOS_e_CPU_STATUS bios_LeOS_y_Stat);
extern U8 bios_GetOS_y_CPU_SchedulerStat(TeOS_e_CPU bios_LeOS_e_CPU);
extern void bios_PrfrmOS_CPU_IncrScheduler(TeOS_e_CPU bios_LeOS_e_CPU);
extern void bios_PrfrmOS_CPU_DecrScheduler(TeOS_e_CPU bios_LeOS_e_CPU);
extern U8 bios_GetOS_y_CPU_PreTaskActStat(TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_SetOS_CPU_PreTaskActStat(TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_PrfrmOS_CPU_ClearPreTaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern U8 bios_GetOS_y_CPU_TaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_SetOS_CPU_TaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_PrfrmOS_CPU_ClearTaskActStat(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern float bios_GetOS_pct_UTIL_CPU_Utilization(TeOS_e_CPU bios_LeOS_e_CPU);
extern void bios_PrfrmOS_UTIL_Calc(TeOS_e_CPU bios_LeOS_e_CPU, U32 bios_LeOS_g_CurrTime);
extern U16 bios_GetOS_cnt_TASK_Overrun(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_PrfrmOS_TASK_IncrOverrun(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern U32 bios_GetOS_g_TASK_ExecTime(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task);
extern void bios_PrfrmOS_TASK_StartTimeCalc(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task, U32 bios_LeOS_g_CurrTime);
extern void bios_PrfrmOS_TASK_ExecTimeCalc(TeOS_e_CPU bios_LeOS_e_CPU, TeHWIO_e_OS_Task bios_LeOS_e_Task, U32 bios_LeOS_g_CurrTime);

extern void Os_Cbk_TaskStart(TaskType task);
extern void Os_Cbk_TaskEnd(TaskType task);
void Os_Cbk_TaskActivated(TaskType task);
#endif /*  _BIOS_RTOS_MW_DATA_H_ */
