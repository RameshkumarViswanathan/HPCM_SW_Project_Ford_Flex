/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	L2Sample_FS.c                                                     */
/******************************************************************************/
/*  BASE MODULE                                                               */
/******************************************************************************/
/*  VERSION  1.0         | PROJECT                                            */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    Implementation of Discrete input Functions                              */
/******************************************************************************/
/*  FUNCTIONS                                                                 */
/*                                                                            */
/******************************************************************************/
/*  REMARKS                                                                   */
/******************************************************************************/
/* CHANGES                                                                    */
/* ID          dd.mm.yyyy    Name             Description                     */
/* ---         -----------   -----------      ---------------------           */
/* [1.0.0]     12.09.2023    Vishnu K              Created                    */
/******************************************************************************/

/******************************************************************************/
/*                      Include Section                                       */
/******************************************************************************/
#include "Dio.h"
#include "Icu_17_TimerIp_Cfg.h"
#include "Icu_17_TimerIp.h"
#include "IfxPort_reg.h"
#include "L2Sample_FS.h"
#include "Pwm3ph.h"


/*******************************************************************************
 **                          Macro Definition                         	      **
 *******************************************************************************/


/*******************************************************************************
 **                          Typedef Definition                               **
 *******************************************************************************/


/*******************************************************************************
 **                   Static Local Variables Definition                       **
 *******************************************************************************/

/*******************************************************************************
 **                     Global Variables Definition                           **
 *******************************************************************************/
Icu_17_TimerIp_DutyCycleType FS_3phPWMUH_Duty;
Icu_17_TimerIp_DutyCycleType FS_3phPWMVH_Duty;
Icu_17_TimerIp_DutyCycleType FS_3phPWMWH_Duty;
Icu_17_TimerIp_DutyCycleType FS_3phPWMUL_Duty;
Icu_17_TimerIp_DutyCycleType FS_3phPWMVL_Duty;
Icu_17_TimerIp_DutyCycleType FS_3phPWMWL_Duty;
Icu_17_TimerIp_DutyCycleType FS_TEMP_U_MCU_Duty;
Icu_17_TimerIp_DutyCycleType FS_TEMP_V_MCU_Duty;
Icu_17_TimerIp_DutyCycleType FS_TEMP_W_MCU_Duty;

float32 VAR_FS_DycU_f32       = 0;
float32 VAR_FS_DycV_f32       = 0;
float32 VAR_FS_DycW_f32       = 0;
    
uint32 FS_DycU_Peroid         = 0;
uint32 FS_DycV_Peroid         = 0;
uint32 FS_DycW_Peroid         = 0;
uint32 FS_DycU_Peroid_Pre     = 0;
uint32 FS_DycV_Peroid_Pre     = 0;
uint32 FS_DycW_Peroid_Pre     = 0;
    
uint8 FS_DycU_Level_Pre       = 0;
uint8 FS_DycV_Level_Pre       = 0;
uint8 FS_DycW_Level_Pre       = 0;
    
float32 FS_PwrTrq_iU_f32      = 0;
float32 FS_PwrTrq_iV_f32      = 0;
float32 FS_PwrTrq_iW_f32      = 0;
float32 FS_PwrTrq_DycU_f32    = 0;
float32 FS_PwrTrq_DycV_f32    = 0;
float32 FS_PwrTrq_DycW_f32    = 0;
float32 FS_PwrTrq_HighVol_f32 = 0;


/*******************************************************************************
 **                     Function definations                                  **
 *******************************************************************************/

/*******************************************************************************
 ** Function Name   : FS_ICU_Get_3phPWMPeriod_DutyCycle
 ** Parameter[in]   : None
 ** Parameter[out]  : None
 ** Return Value    : None
 ** Note:           : None
 ** Description	    : L2 Function safety get 3phPWMPeriod&DutyCycle sample
 *******************************************************************************/
void FS_ICU_Get_3phPWMPeriod_DutyCycle(void)
{
	uint16 DutyCnt = 0;
    uint16 DutyTime = (uint16)(1000000.0/(102.4*(float32)VAR_Pwm_Freq_u32));
	
    if(DutyCnt >= DutyTime)
	{

        Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_U_H_FB_P00_6,   &FS_3phPWMUH_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_V_H_FB_P00_7,   &FS_3phPWMVH_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_W_H_FB_P00_8,   &FS_3phPWMWH_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_U_L_FB_P00_9,   &FS_3phPWMUL_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_V_L_FB_P00_10,  &FS_3phPWMVL_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_PWM_W_L_FB_P00_11,  &FS_3phPWMWL_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_0_TEMP_U_MCU_P00_0, &FS_TEMP_U_MCU_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_1_TEMP_V_MCU_P00_2, &FS_TEMP_V_MCU_Duty);
		Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_IcuChannel_2_TEMP_W_MCU_P00_4, &FS_TEMP_W_MCU_Duty);

	}
	else
	{
		DutyCnt++;
	}
}
