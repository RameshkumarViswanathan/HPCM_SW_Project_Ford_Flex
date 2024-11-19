#include "Os.h"
#include "SchM_Dsadc.h"
#ifdef LATENCY_CALC_ADC
#if(LATENCY_CALC_ADC==1U)
#include "Test_Latency.h"
#endif
#endif

void SchM_Enter_Dsadc_ChannelData(void)
{
  SuspendAllInterrupts();
  #ifdef LATENCY_CALC_ADC
  #if(LATENCY_CALC_ADC==1U)
  Measure_Start_Value(0);
  #endif
  #endif
}

void SchM_Exit_Dsadc_ChannelData(void)
{
  #ifdef LATENCY_CALC_ADC
  #if(LATENCY_CALC_ADC==1U)
  Measure_End_Value(0);
  #endif
  #endif
  ResumeAllInterrupts();
}

