/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2021)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Schm_Gpt.c                                                    **
**                                                                            **
**  VERSION   : 8.0.0                                                         **
**                                                                            **
**  DATE      : 2021.02.25                                                    **
**                                                                            **
**  VARIANT   : Post-Build                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION : This file contains                                          **
**                 - Schm sections of Gpt module - To be updated by used      **
**                                                                            **
**  SPECIFICATION(S) : Specification of Gpt Driver, AUTOSAR Release 4.2.2     **
**                                                                            **
**  MAY BE CHANGED BY USER : yes                                              **
**                                                                            **
*******************************************************************************/
#include "Os.h"
#include "SchM_Gpt.h"
#ifdef LATENCY_CALC_Gpt
#if(LATENCY_CALC_Gpt==1U)
#include "Test_Latency.h"
#endif
#endif

void SchM_Enter_Gpt_GtmStartTimer(void)
{
  SuspendAllInterrupts();
  #ifdef LATENCY_CALC_Gpt
  #if(LATENCY_CALC_Gpt==1U)
  Measure_Start_Value(0);
  #endif
  #endif
}

void SchM_Exit_Gpt_GtmStartTimer(void)
{
  #ifdef LATENCY_CALC_Gpt
  #if(LATENCY_CALC_Gpt==1U)
  Measure_End_Value(0);
  #endif
  #endif
  ResumeAllInterrupts();
}

void SchM_Enter_Gpt_SrcRegAccess(void)
{
  SuspendAllInterrupts();
  #ifdef LATENCY_CALC_Gpt
  #if(LATENCY_CALC_Gpt==1U)
  Measure_Start_Value(1);
  #endif
  #endif
}

void SchM_Exit_Gpt_SrcRegAccess(void)
{
  #ifdef LATENCY_CALC_Gpt
  #if(LATENCY_CALC_Gpt==1U)
  Measure_End_Value(1);
  #endif
  #endif
  ResumeAllInterrupts();
}