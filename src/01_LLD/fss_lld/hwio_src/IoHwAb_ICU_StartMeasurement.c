/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	IoHwAb_ICU_StartMeasurement.c                                     */
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
#include "Icu_17_TimerIp.h"
#include "L2Sample_FS.h"



/*******************************************************************************
**                          Macro Definition                                  **
*******************************************************************************/

/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/

/*******************************************************************************
**                   Static Local Variables Definition                        **
*******************************************************************************/

/*******************************************************************************
**                     Global Variables Definition                            **
*******************************************************************************/

/*******************************************************************************
**                  Static Local Function Declaration                         **
*******************************************************************************/

/*******************************************************************************
**                        Function Source Code                                **
*******************************************************************************/

/*******************************************************************************
** Function Name	: IoHwAb_ICU_StartMeasurement
** Parameter[in] 	: channel
** Parameter[out] 	: Period
**                  : Dutycycle
** Return Value	  	: None
** Note	  			: None
** Description	  	: ICU module starts PWM capture and Measurement
*******************************************************************************/
void IoHwAb_ICU_StartMeasurement(void)
{
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_U_H_FB_P00_6);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_V_H_FB_P00_7);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_W_H_FB_P00_8);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_U_L_FB_P00_9);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_V_L_FB_P00_10);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_PWM_W_L_FB_P00_11);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_0_TEMP_U_MCU_P00_0);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_1_TEMP_V_MCU_P00_2);
    Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_2_TEMP_W_MCU_P00_4);
}


