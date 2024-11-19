#ifndef L2SAMPLE_FS_H
#define L2SAMPLE_FS_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   L2Sample_FS.h                                                    */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD)                                      */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1.0.0]     12.09.2023    Vishnu K              Created                   */
/*****************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Std_Types.h"
#include "Icu_17_TimerIp.h"

/*******************************************************************************
**                          Macro Definition                                  **
*******************************************************************************/


/*******************************************************************************
**                          Typedef Definition                         	      **
*******************************************************************************/


/*******************************************************************************
**                  Global Variables With Extern Linkage                      **
*******************************************************************************/
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMUH_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMVH_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMWH_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMUL_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMVL_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_3phPWMWL_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_TEMP_U_MCU_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_TEMP_V_MCU_Duty;
extern Icu_17_TimerIp_DutyCycleType FS_TEMP_W_MCU_Duty;


/*******************************************************************************
**                        Global Function Prototypes                          **
*******************************************************************************/

/*******************************************************************************
** Function Name	: FS_ICU_Get_3phPWMPeriod_DutyCycle
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: L2 Function safety get 3phPWMPeriod&DutyCycle sample
*******************************************************************************/
extern void FS_ICU_Get_3phPWMPeriod_DutyCycle(void);

/*******************************************************************************
** Function Name	: IoHwAb_ICU_StartMeasurement
** Parameter[in] 	: channel
** Parameter[out] 	: Period
**                  : Dutycycle
** Return Value	  	: None
** Note	  			: None
** Description	  	: ICU module starts PWM capture and Measurement
*******************************************************************************/
extern void IoHwAb_ICU_StartMeasurement(void);


#endif /* L2SAMPLE_FS_H */
