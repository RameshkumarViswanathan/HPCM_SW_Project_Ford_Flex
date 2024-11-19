/*
 * Contains target-specific code for the TriCoreHighTec RTA-OS CliveDevices example
 * application on variant TC37x.
 *
 * Copyright ETAS GmbH 2023
 */
#include <Os.h>
#include "Target.h"

extern void _exit(int val);
void _exit(int val) { val =1; while(val){}}  /* If we drop out of main... */

/* ------------------------------------------------------------------------- */
/* password access, clearing ENDINIT bit */
void unlock_wdtcon(SCU_WDTCPU0CON0_type *wdtbase) {
  volatile int wcon0;

  wcon0  = (*wdtbase).I;  /* Read current value */
  wcon0 &= ~0x0000000E;   /* Set HWPW0 = 00 / WDTLCK = 0 */
  wcon0 |=  0x000000F1;   /* Set HWPW1 = 1111 and WDTLCK = 1 */
  (*wdtbase).I = wcon0;   /* Unlock access */
  OS_DSYNC();
  wcon0 &= ~0x00000001;       /* ENDINIT = 0 */
  (*wdtbase).I = wcon0 | 0x2; /* Set WDTLCK = 1 */
  wcon0 = (*wdtbase).I;       /* Force readback */
}

/* ------------------------------------------------------------------------- */
/* password access, setting ENDINIT bit */
void lock_wdtcon(SCU_WDTCPU0CON0_type *wdtbase) {
  volatile int wcon0;

  wcon0  = (*wdtbase).I;  /* Read current value */
  wcon0 &= ~0x0000000E;   /* Set HWPW0 = 00 / WDTLCK = 0 */
  wcon0 |=  0x000000F1;   /* Set HWPW1 = 1111 and WDTLCK = 1 */
  (*wdtbase).I = wcon0;   /* Unlock access */
  OS_DSYNC();
  (*wdtbase).I = wcon0 | 0x3; /* Set WDTLCK = 1 and ENDINIT = 1 */
  wcon0 = (*wdtbase).I;       /* Force readback */
}
OS_VOLATILE uint32 readBack_u32;
extern void Target_WaitTim0Ticks(uint32 ticks);
void Target_WaitTim0Ticks(uint32 ticks) {
  uint32 val = STM0_TIM0.U;
  while((STM0_TIM0.U - val) < ticks) {
    /* spin */
  }
}
/* ------------------------------------------------------------------------- */
void TargetEnableInterrupts(void) {
  /* Initialize and enable STM CMP0 as the periodic interrupt source. */

  /* Configure 32 bit compares on the lowest 32 bits of the STM */
  STM_CMCON.B.MSIZE0 = 31U;
  STM_CMCON.B.MSTART0 = 0U;

  /* Set compare register to period value */
	STM_CMP0.U = STM_TIM0.U + (OSSWTICKSPERSECOND/1600U);

  /* Reset the interrupt pending flag */
  STM_ISRR.B.CMP0IRR = 1;

  /* Enable compare interrupt */
  STM_ICR.B.CMP0EN = 1;
}


/* ------------------------------------------------------------------------- */
Os_StopwatchTickType Os_Cbk_GetStopwatch(void) {
    return (Os_StopwatchTickType)STM_TIM0.U;
}


#ifdef OS_TRACE
/* ------------------------------------------------------------------------- */
FUNC(Os_TraceStatusType, OS_APPL_CODE) Os_Cbk_TraceCommInitTarget(void) {
  /* Initialization of comms link was done earlier */
  return E_OK;
}

/* ------------------------------------------------------------------------- */
/* [$Satisfies $TgtCore 22] */
FUNC(void, OS_APPL_CODE) Os_Cbk_TraceCommTxByte(uint8 val) {

  ASCLIN0_FLAGSCLEAR.B.TCC = 1U;
  ASCLIN0_TXDATA.U = val; /* Post the character */

}

/* ------------------------------------------------------------------------- */
/* [$Satisfies $TgtCore 21] */
FUNC(boolean, OS_APPL_CODE) Os_Cbk_TraceCommTxReady(void) {

  return (ASCLIN0_FLAGS.B.TC); /* Test the transmit complete flag */

}
#endif /* OS_TRACE */

