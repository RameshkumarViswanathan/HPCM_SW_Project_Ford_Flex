#ifndef STM_TIMETEST_H_
#define STM_TIMETEST_H_

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
/* 1.0         03.08.2023    Santhosh         initial version                */
/*****************************************************************************/

/*******************************************************************************
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include	"Std_Types.h"

/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
/* TASK_TIME_TEST for No and 1 for Yes*/
#define TASK_TIME_TEST		1U



/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/
typedef	struct	STM_Time
{
	uint32	ui32_StartTick;		
	uint32	ui32_StopTick;		
	uint32	ui32_Interval;		
}st_STM_TimeType;
typedef	struct	CPULoadCalc
{
	uint32	ui32_LastSTMValue;		
	uint32	ui32_CurrentSTMValue;	
	uint32	ui32_Interval;			
	uint32	ui32_OccupiedCnt;		
	float32	f32_CPULoad;			
}st_CPULoadeCalcType;
#define	MASK_TIME_SLICE		0x0003FFFFU	
/*100M STM 5us*/
#define	EMPTY_LOOP_TIME		500U
#define OS_NUM_CORES 3 
st_CPULoadeCalcType	st_CPULoadeCalc[OS_NUM_CORES];
/*******************************************************************************
**                  Global Variables With Extern Linkage               		  **
*******************************************************************************/
#if (TASK_TIME_TEST == 1U)
extern	st_STM_TimeType STM_TimeData_Task[30U];
#endif
extern st_STM_TimeType STM_TimeData_NvM;

extern st_STM_TimeType st_STMInit;
/*******************************************************************************
  	 STM_TimeData_Task[15]
	ex:STM 100M,ui32_Interval= 6551,Time = 6551/100 = 65.51 US

*******************************************************************************/

/*******************************************************************************
**                        Global Function Prototypes              	    	  **
*******************************************************************************/

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStart
*******************************************************************************/
extern	void	Stm_Time_CaptureStart(st_STM_TimeType *arg_Data_pst);


/*******************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStop
*******************************************************************************/
extern	void	Stm_Time_CaptureStop(st_STM_TimeType *arg_Data_pst);

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: capture start STM TICK value
*******************************************************************************/
extern void	Stm1_Time_CaptureStart(st_STM_TimeType *arg_Data_pst);

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: capture stop STM TICK value and resolve
*******************************************************************************/
extern void	Stm1_Time_CaptureStop(st_STM_TimeType *arg_Data_pst);

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStart
*******************************************************************************/
extern	void	Stm2_Time_CaptureStart(st_STM_TimeType *arg_Data_pst);


/*******************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStop
*******************************************************************************/
extern	void	Stm2_Time_CaptureStop(st_STM_TimeType *arg_Data_pst);


/*******************************************************************************
** Function Name	: Stm_Time_CaptureInitStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureInitStart
*******************************************************************************/
extern void	Stm_Time_CaptureInitStart(void);

/*******************************************************************************
** Function Name	: Stm_Time_CaptureInitStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureInitStop
*******************************************************************************/
extern void	Stm_Time_CaptureInitStop(void);

extern void Test_CpuLoadCalc(void);
extern float32 VAR_Cpu_LoadCalc_f32;
#endif /* STM_TIMETEST_H_ */

/*******************************************************************************

*******************************************************************************/
