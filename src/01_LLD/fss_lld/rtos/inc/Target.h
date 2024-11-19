/*
 * Contains target-specific code for the TriCoreWR RTA-OS Hello World example
 * application on variant TC3x7.
 *
 * Copyright ETAS GmbH 2016
 ******************************************************************************/
/*  MODULE  Target.h                                                          */
/******************************************************************************/
#ifndef __TARGET_H
#define __TARGET_H
#include "Os_DisableInterrupts.h"
#include "IfxStm_reg.h"

/* Implemented in Target.c */
extern void InitTarget(void);
extern void TargetEnableInterrupts(void);
extern void unlock_wdtcon(SCU_WDTCPU0CON0_type *wdtbase);
extern void lock_wdtcon(SCU_WDTCPU0CON0_type *wdtbase);

/* Map single core names to multicore */
#define STM_CLC STM0_CLC
#define STM_CMCON STM0_CMCON
#define STM_CMP0 STM0_CMP0
#define STM_CMP1 STM0_CMP1
#define STM_TIM0 STM0_TIM0
#define STM_ISRR STM0_ISCR
#define STM_ICR  STM0_ICR
#define STM_SRC0 SRC_STM0SR0

/*[N] capture current timer macro */
#define GET_TIMER_STM0 ((LONGWORD)STM_TIM0.U)

#define CLEAR_PENDING_INTERRUPT() { STM_CMP0.U = STM_TIM0.U + TIMER_MILLISECOND; /* Increment from timer so that breakpoints won't cause an issue in samples */  STM_SRC0.B.CLRR = 1; }

#define TIMER_MILLISECOND (unsigned)(OSSWTICKSPERSECOND/1000UL)

/* Reduce the default loop time so that integer rounding errors are reduced */
#define BUSY_WAIT_TUNING_VALUE (100UL)

#define TARGET_IDLE() /* Empty */

#endif /* __TARGET_H */
