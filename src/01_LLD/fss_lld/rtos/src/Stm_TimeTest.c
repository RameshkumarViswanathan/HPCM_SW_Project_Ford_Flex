/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   STM_TimeTest.c                                                   */
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
#include	"Stm_TimeTest.h"
#include	"IfxStm_reg.h"
#include	"IfxCpu_reg.h"
#include    "machine/intrinsics.h"
/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
/* EMPTY IDLE LOOP 100M STM 5us */
#define	EMPTY_LOOP_TIME						500U


#define	MASK_TIME_SLICE		0x000FFFFFU	/*20λ,10.5 MS*/

/* CPU ID MASK */
#define CPU_LOAD_FACTOR_CORE_ID_MASK		0x07U


/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/

/*******************************************************************************
**                   Static Local Variables Definition              		  **
*******************************************************************************/

/*******************************************************************************
**                     Global Variables Definition              		      **
*******************************************************************************/
st_STM_TimeType STM_TimeData_Task[30U];
st_STM_TimeType st_STMInit;

/*******************************************************************************
**                  Static Local Function Declaration            		      **
*******************************************************************************/

/*******************************************************************************
**                 		  Function Source Code            		              **
*******************************************************************************/

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStart
*******************************************************************************/
void	Stm_Time_CaptureStart(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StartTick = STM0_TIM0.U;
}

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStop
*******************************************************************************/
void	Stm_Time_CaptureStop(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StopTick = STM0_TIM0.U;

	if(arg_Data_pst->ui32_StopTick > arg_Data_pst->ui32_StartTick)
	{
		arg_Data_pst->ui32_Interval = \
				arg_Data_pst->ui32_StopTick - arg_Data_pst->ui32_StartTick;
	}
	else
	{
		arg_Data_pst->ui32_Interval = \
			0xFFFFFFFFU - arg_Data_pst->ui32_StartTick +\
			arg_Data_pst->ui32_StopTick;
	}
}

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStart
*******************************************************************************/
void	Stm2_Time_CaptureStart(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StartTick = STM2_TIM0.U;
}

/*******************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureStop
*******************************************************************************/
void	Stm2_Time_CaptureStop(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StopTick = STM2_TIM0.U;

	if(arg_Data_pst->ui32_StopTick > arg_Data_pst->ui32_StartTick)
	{
		arg_Data_pst->ui32_Interval = \
				arg_Data_pst->ui32_StopTick - arg_Data_pst->ui32_StartTick;
	}
	else
	{
		arg_Data_pst->ui32_Interval = \
			0xFFFFFFFFU - arg_Data_pst->ui32_StartTick +\
			arg_Data_pst->ui32_StopTick;
	}
}

void	Stm1_Time_CaptureStart(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StartTick = STM2_TIM0.U;
}
/**************************************************************************
** Function Name	: Stm_Time_CaptureStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: capture stop STM TICK value and resolve
*******************************************************************************/
void	Stm1_Time_CaptureStop(st_STM_TimeType *arg_Data_pst)
{
	arg_Data_pst->ui32_StopTick = STM1_TIM0.U;
	if(arg_Data_pst->ui32_StopTick > arg_Data_pst->ui32_StartTick)
	{
		arg_Data_pst->ui32_Interval = \
				arg_Data_pst->ui32_StopTick - arg_Data_pst->ui32_StartTick;
	}
	else
	{
		arg_Data_pst->ui32_Interval = \
			0xFFFFFFFFU - arg_Data_pst->ui32_StartTick +\
			arg_Data_pst->ui32_StopTick;
	}
}

/*******************************************************************************
** Function Name	: Test_CpuLoadCalc
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: IDLE TIME Calculation
** Description	  	: Test_CpuLoadCalc
*******************************************************************************/
float32 VAR_Cpu_LoadCalc_f32;
void Test_CpuLoadCalc(void)
{
#if 0u
	/*STM0ֵ*/
	st_CPULoadeCalc[0U].ui32_CurrentSTMValue = STM0_TIM0.B.STM31_0;

	
	st_CPULoadeCalc[0U].ui32_CurrentSTMValue &= MASK_TIME_SLICE;

	
	if(st_CPULoadeCalc[0U].ui32_CurrentSTMValue >= \
			st_CPULoadeCalc[0U].ui32_LastSTMValue)
	{
		
		st_CPULoadeCalc[0U].ui32_Interval = \
			st_CPULoadeCalc[0U].ui32_CurrentSTMValue - \
			st_CPULoadeCalc[0U].ui32_LastSTMValue;

		
		if(st_CPULoadeCalc[0U].ui32_Interval > EMPTY_LOOP_TIME)
		{
			
			st_CPULoadeCalc[0U].ui32_OccupiedCnt += \
					st_CPULoadeCalc[0U].ui32_Interval;
		}
	}
	else
	{
		
		st_CPULoadeCalc[0U].f32_CPULoad = \
			(float32)st_CPULoadeCalc[0U].ui32_OccupiedCnt / \
				(float32)MASK_TIME_SLICE;
		st_CPULoadeCalc[0U].ui32_OccupiedCnt = 0U;	
	}
	st_CPULoadeCalc[0U].ui32_LastSTMValue = \
			st_CPULoadeCalc[0U].ui32_CurrentSTMValue;

	VAR_Cpu_LoadCalc_f32 = st_CPULoadeCalc[0U].f32_CPULoad;
#endif


	uint8 CoreId;

	CoreId = ((uint8)__mfcr(CPU_CORE_ID)) & (uint8)CPU_LOAD_FACTOR_CORE_ID_MASK;

	
	st_CPULoadeCalc[CoreId].ui32_CurrentSTMValue = STM0_TIM0.U;

	
	st_CPULoadeCalc[CoreId].ui32_CurrentSTMValue &= MASK_TIME_SLICE;

	
	if(st_CPULoadeCalc[CoreId].ui32_CurrentSTMValue >= \
			st_CPULoadeCalc[CoreId].ui32_LastSTMValue)
	{
		
		st_CPULoadeCalc[CoreId].ui32_Interval = \
			st_CPULoadeCalc[CoreId].ui32_CurrentSTMValue - \
			st_CPULoadeCalc[CoreId].ui32_LastSTMValue;

		
		if(st_CPULoadeCalc[CoreId].ui32_Interval > EMPTY_LOOP_TIME)
		{
			
			st_CPULoadeCalc[CoreId].ui32_OccupiedCnt += \
					st_CPULoadeCalc[CoreId].ui32_Interval;
		}
	}
	
	else
	{
		
		st_CPULoadeCalc[CoreId].f32_CPULoad = \
			(float32)st_CPULoadeCalc[CoreId].ui32_OccupiedCnt / \
				(float32)MASK_TIME_SLICE;
		st_CPULoadeCalc[CoreId].ui32_OccupiedCnt = 0U;	
	}

	
	st_CPULoadeCalc[CoreId].ui32_LastSTMValue = \
			st_CPULoadeCalc[CoreId].ui32_CurrentSTMValue;



}

/*******************************************************************************
** Function Name	: Stm_Time_CaptureInitStart
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureInitStart
*******************************************************************************/
void	Stm_Time_CaptureInitStart(void)
{
	st_STMInit.ui32_StartTick = STM0_TIM0.U;
}

/*******************************************************************************
** Function Name	: Stm_Time_CaptureInitStop
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Stm_Time_CaptureInitStop
*******************************************************************************/
void	Stm_Time_CaptureInitStop(void)
{
	st_STMInit.ui32_StopTick = STM0_TIM0.U;

	if(st_STMInit.ui32_StopTick > st_STMInit.ui32_StartTick)
	{
		st_STMInit.ui32_Interval = \
				st_STMInit.ui32_StopTick - st_STMInit.ui32_StartTick;
	}
	else
	{
		st_STMInit.ui32_Interval = \
			0xFFFFFFFFU - st_STMInit.ui32_StartTick +\
			st_STMInit.ui32_StopTick;
	}
}

