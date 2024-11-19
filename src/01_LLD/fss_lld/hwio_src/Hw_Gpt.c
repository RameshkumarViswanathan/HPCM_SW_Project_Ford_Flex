#include "Gpt.h"
#include "Hw_Gpt.h"
#include "IfxSrc_reg.h"
void Hw_Gpt_Init(void)
{
    Gpt_StartTimer(0, 200000);
    Gpt_EnableNotification(0);
}
void IoHwAb_GptNotification0(void)
{
    SRC_GPSR_GPSR0_SR3.B.SETR = 1;
}
