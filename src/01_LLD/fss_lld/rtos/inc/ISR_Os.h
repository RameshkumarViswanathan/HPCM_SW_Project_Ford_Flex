#ifndef IRS_Os_h
#define ISR_Os_h

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   ISR_Os.h                                                         */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD)   Traction Inverter                  */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function declaration                                       */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         30.11.2022    Sivaprasath      Created                        */
/*****************************************************************************/

/* Header Include Files */
#include "Std_Types.h"
#include "Os.h"
#include "Os_Cfg.h"

/*****************************************************************************/
/*                      Private Function Definitions                         */
/*****************************************************************************/

U8 Task_Under_Test;
typedef uint16 Dio_ChannelType;
U8 ISR_Under_Test;

#define OSSWTICKSPERSECOND (100000000U) /* [$UKS 1227] */ /* Addded by Santhosh for RTOS system timer ISR */
#define TIMER_MILLISECOND (unsigned)(OSSWTICKSPERSECOND/1000U)

/* Function prototype for REAL TIME OPERATING SYSTEM - ETAS OS */

/* Overrun */
typedef enum 
{
    NO_OVERRUN = 0 ,
   TASK_OVERRUN = 1 

}TeOS_e_TASKOVERRUN_status;

//U16 HWIO_OVERRUN_TASK_ID;
boolean hwio_rtos_status_task_overrun_0( U16 task_id );

/* Stack overflow */
void hwio_rtos_status_stack_overflow_0( U16 stack_id );
void hwio_rtos_status_stack_overflow_1( U16 stack_id );
void hwio_rtos_status_stack_overflow_2( U16 stack_id );
void sw_interrupt_call( U8 destCore );

U32 sys_tm_us( void );
void OSK_OsTickISR_Handler (void);
void SystemTimer_ISR_core1_handler();
void SystemTimer_ISR_core2_handler();

U32 SystemTimer_current_time =0;
U32 SystemTimer_prev_time = 0;
U32 SystemTimer_time_delay = 0;

#endif /* ISR_Os_h */