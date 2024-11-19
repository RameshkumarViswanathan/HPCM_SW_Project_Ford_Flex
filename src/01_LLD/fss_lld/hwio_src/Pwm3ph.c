/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Pwm3ph.c                                                         */
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
/* [1.0.0]     06.12.2022    Santhosh         Created                        */
/*****************************************************************************/

/*******************************************************************************
**                          Inclusion Definition                              **
*******************************************************************************/
#include "Pwm3ph.h"
#include "Mcu_17_TimerIp.h"
#include "Pwm_17_GtmCcu6.h"
#include "DPT_Drv.h"
/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
#define U16_REGISTER_OFFSET_VALUE    1U			/* register offset */
uint16 VAR_Shut_Of_Path_State_u16 = 1;
/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/

/*******************************************************************************
**                   Static Local Variables Definition              		  **
*******************************************************************************/

static uint32 ui32_Pwm_Period_SR0;		 /* PWM period TICK */

static uint32 ui32_Pwm_OnEdge_UT_SR1;	 /* U_H_ON(rising edge),SR1 */
static uint32 ui32_Pwm_OffEdge_UT_SR0;	 /* U_H_OFF(falling edge),SR0 */
static uint32 ui32_Pwm_OnEdge_UB_SR0;	 /* U_L_ON(falling edge),SR0 */
static uint32 ui32_Pwm_OffEdge_UB_SR1;	 /* U_L_OFF(rising edge),SR1 */

static uint32 ui32_Pwm_OnEdge_VT_SR1;
static uint32 ui32_Pwm_OffEdge_VT_SR0;
static uint32 ui32_Pwm_OnEdge_VB_SR0;
static uint32 ui32_Pwm_OffEdge_VB_SR1;

static uint32 ui32_Pwm_OnEdge_WT_SR1;
static uint32 ui32_Pwm_OffEdge_WT_SR0;
static uint32 ui32_Pwm_OnEdge_WB_SR0;
static uint32 ui32_Pwm_OffEdge_WB_SR1;

static uint8 ui8_Pwm_Mode_Last;				/* last PWM Mode */
static uint16 VAR_Pwm_Fault_Flag_u16;		/* Input parameter error flag */
static uint32 ui32_Pwm_Period_Tick_Last;

#if(PWM3PH_PARAMETER_TYPE == 3U)
static uint32 ui32_Pwm_Ticks_OnEdge_UT;
static uint32 ui32_Pwm_Ticks_OffEdge_UT;
static uint32 ui32_Pwm_Ticks_OnEdge_UB;
static uint32 ui32_Pwm_Ticks_OffEdge_UB;

static uint32 ui32_Pwm_Ticks_OnEdge_VT;
static uint32 ui32_Pwm_Ticks_OffEdge_VT;
static uint32 ui32_Pwm_Ticks_OnEdge_VB;
static uint32 ui32_Pwm_Ticks_OffEdge_VB;

static uint32 ui32_Pwm_Ticks_OnEdge_WT;
static uint32 ui32_Pwm_Ticks_OffEdge_WT;
static uint32 ui32_Pwm_Ticks_OnEdge_WB;
static uint32 ui32_Pwm_Ticks_OffEdge_WB;
#endif
boolean VAR_TLF35585_InitFinish_Flag_b = FALSE;
boolean VAR_TLF35585_SelfTestFinish_Flag_b = FALSE;

static U32 ui32_Pwm_last_polarity_phase_A =0;
static U32 ui32_Pwm_last_polarity_phase_B =0;
static U32 ui32_Pwm_last_polarity_phase_C =0;

static U32 VAR_Pwm_force_phase_A = (uint8)PWM3PH_FORCED_DISABLE;
static U32 VAR_Pwm_force_phase_B = (uint8)PWM3PH_FORCED_DISABLE;
static U32 VAR_Pwm_force_phase_C = (uint8)PWM3PH_FORCED_DISABLE;

static U32 VAR_Pwm_polarity_a    = (uint8)PWM3PH_NORMAL_POLARITY;
static U32 VAR_Pwm_polarity_b    = (uint8)PWM3PH_NORMAL_POLARITY;
static U32 VAR_Pwm_polarity_c    = (uint8)PWM3PH_NORMAL_POLARITY;

static uint32 ui32_DeadTime_Tick = 260U;
static uint32 ui32_Pwm_Period_Tick; 	 			/* PWM Reference period count */

/*******************************************************************************
**                     Global Variables Definition              		      **
*******************************************************************************/
/*JEE_MISRA_RULES_1_01&8_04 It's Allowed*/
static float32 CAL_PWM_Set_DeadTime_us_f32 =  (float32)PWM3PH_DEFAULT_DEADTIME;	
//#pragma section ".rodata.Calib_32"

/*
 *	0.94 <  x_Duty <= 0.999 
 *	0.06 =< x_Duty <= 0.94   
 *	0.001<  x_Duty <  0.06  
 * */
static float32 CAL_Pwm3phB_ClosedThreshold_f32        	=	 0.94F;
static float32 CAL_Pwm3phT_ClosedThreshold_f32        	=	 0.06F;
const volatile float32 CAL_Pwm3ph_DutyMax_f32 			=	 0.999F;
const volatile float32 CAL_Pwm3ph_DutyMin_f32 			=	 0.001F;

const volatile uint16 CAL_Pwm3ph_AdcTriggleOffset_u16 	=	 100U;

//#pragma section
/*JEE_MISRA_RULES_1_01&8_04 It's Allowed*/
//#pragma section ".data.CPU2_32" aw 4

#if(PWM3PH_PARAMETER_TYPE == 3U)
uint8  VAR_Pwm_Mode_u8=0;					/* PWM Mode */
uint32 VAR_Pwm_Freq_u32;					/* PWM Fre */
float32 VAR_Pwm_DeadTime_In_f32;			/* PWM DeadTime(uS)*/

float32 VAR_PwmDutyCyclePhaseU_f32=0.0;
float32 VAR_PwmDutyCyclePhaseV_f32=0.0;
float32 VAR_PwmDutyCyclePhaseW_f32=0.0;

uint16 ui16_Pwm_Fault_Flag_Last;
uint32 ui32_Pwm_Fault_Counter;
#endif
uint8 VAR_PWM3phUDuty_ERR_u8;
uint8 VAR_PWM3phVDuty_ERR_u8;
uint8 VAR_PWM3phWDuty_ERR_u8;

#if (PWM3PH_PARAMETER_TYPE == 12U)
uint8 VAR_Pwm_Mode_u8;
uint32 ui32_Pwm_Period_Tick;
uint32 ui32_Pwm_Ticks_OnEdge_UT;
uint32 ui32_Pwm_Ticks_OffEdge_UT;
uint32 ui32_Pwm_Ticks_OnEdge_UB;
uint32 ui32_Pwm_Ticks_OffEdge_UB;

uint32 ui32_Pwm_Ticks_OnEdge_VT;
uint32 ui32_Pwm_Ticks_OffEdge_VT;
uint32 ui32_Pwm_Ticks_OnEdge_VB;
uint32 ui32_Pwm_Ticks_OffEdge_VB;

uint32 ui32_Pwm_Ticks_OnEdge_WT;
uint32 ui32_Pwm_Ticks_OffEdge_WT;
uint32 ui32_Pwm_Ticks_OnEdge_WB;
uint32 ui32_Pwm_Ticks_OffEdge_WB;

uint16 ui16_Pwm_Fault_Flag_Last;
uint32 ui32_Pwm_Fault_Counter;
#endif
//#pragma section
/*******************************************************************************
**                  Static Local Function Declaration            		      **
*******************************************************************************/
static void Pwm3ph_Set_ShadowValSr0(uint8 Moudle,uint8 Channel,uint32 Sr0Value);
static void Pwm3ph_Set_ShadowValSr1(uint8 Moudle,uint8 Channel,uint32 Sr1Value);
static void Pwm3ph_Enable_OutputChannel(uint8 Moudle,uint8 Channel);
static void Pwm3ph_Disable_OutputChannel(uint8 Moudle,uint8 Channel);
static void Pwm3ph_Set_CN0(uint8 Moudle,uint8 Channel,uint32 CnoValue);
static void Pwm3ph_Output_UpOff_DownOff(void);		/* all shundown */
static void Pwm3ph_Output_Normal(void);				/* normal mode */
static void Pwm3ph_Output_UpOff_DownOn(void);		/* ASC */
#if (PWM3PH_PWM_MODE == 1U)
static void Pwm3ph_Output_UpOn_DownOff(void);
static void Pwm3ph_Output_UpOn_DownUOn(void);
static void Pwm3ph_Output_UpUOn_DownOn(void);
#endif
static void Pwm3ph_ChangePeriod(uint32 ui32_Period);
#if(PWM3PH_PARAMETER_TYPE == 3U)
static void Pwm3ph_GetDataConversion(void);
static void Pwm3ph_GetDataConversion_PhaseU_Normal(void);
static void Pwm3ph_GetDataConversion_PhaseV_Normal(void);
static void Pwm3ph_GetDataConversion_PhaseW_Normal(void);
static void Pwm3ph_GetDataConversion_PhaseU_Polarity(void);
static void Pwm3ph_GetDataConversion_PhaseV_Polarity(void);
static void Pwm3ph_GetDataConversion_PhaseW_Polarity(void);
#endif

static volatile uint8 VAR_SS1_OC_u8;
volatile uint8 VAR_Cpld_Normal_Work_u8 = 0;

/*******************************************************************************
**                 		  Function Source Code            		              **
*******************************************************************************/

/*******************************************************************************
** Function Name	: Pwm3ph_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: initialize
*******************************************************************************/
void Pwm3ph_Init(void)
{
	Pwm3phInIFType pwm3phInIF_Ptr;
	pwm3phInIF_Ptr.PwmDutyCyclePhaseU1_f32 = 0.0f;
	pwm3phInIF_Ptr.PwmDutyCyclePhaseV1_f32 =  0.0f;
	pwm3phInIF_Ptr.PwmDutyCyclePhaseW1_f32 =  0.0f;
	pwm3phInIF_Ptr.Pwm_Freq_u32 =  PWM3PH_DEF_FREQ_VALUE;
	pwm3phInIF_Ptr.Pwm_Mode_u8 =  0;
	/*Polarity , FORCED ON & OFF to default 0 */
	pwm3phInIF_Ptr.b_forced_a = (uint8)PWM3PH_FORCED_DISABLE;
	pwm3phInIF_Ptr.b_forced_b = (uint8)PWM3PH_FORCED_DISABLE;
	pwm3phInIF_Ptr.b_forced_c = (uint8)PWM3PH_FORCED_DISABLE;
	pwm3phInIF_Ptr.b_polarity_a = 0;
	pwm3phInIF_Ptr.b_polarity_b = 0;
	pwm3phInIF_Ptr.b_polarity_c = 0;
	/*GLOBAL*/
#if (PWM3PH_PARAMETER_TYPE == 3U)
	VAR_Pwm_DeadTime_In_f32 = CAL_PWM_Set_DeadTime_us_f32;
	VAR_Pwm_Mode_u8 = PWM3PH_MODE_UP_OFF_DOWN_OFF;
	VAR_Pwm_Freq_u32 = PWM3PH_DEF_FREQ_VALUE;
	VAR_PwmDutyCyclePhaseU_f32 = 0.0f;
	VAR_PwmDutyCyclePhaseV_f32 = 0.0f;
	VAR_PwmDutyCyclePhaseW_f32 = 0.0f;
	ui16_Pwm_Fault_Flag_Last = PWM_FAULT_NONE;
	ui32_Pwm_Fault_Counter = 0U;
    
	VAR_SS1_OC_u8 = 0U;
	VAR_Cpld_Normal_Work_u8 = 1;

	ui8_Pwm_Mode_Last = PWM3PH_MODE_UP_OFF_DOWN_OFF;
	VAR_Pwm_Fault_Flag_u16 = PWM_FAULT_NONE;
	ui32_Pwm_Period_Tick_Last = 0U;
#endif

#if (PWM3PH_PARAMETER_TYPE == 12U)
	VAR_Pwm_Mode_u8 = PWM3PH_MODE_UP_OFF_DOWN_OFF;
	ui32_Pwm_Period_Tick = 10000U;
	ui16_Pwm_Fault_Flag_Last = PWM_FAULT_NONE;
	ui32_Pwm_Fault_Counter = 0U;

	ui8_Pwm_Mode_Last = PWM3PH_MODE_UP_OFF_DOWN_OFF;
	VAR_Pwm_Fault_Flag_u16 = PWM_FAULT_NONE;
	ui32_Pwm_Period_Tick_Last = 0U;
#endif

	/*Disable_OutputChannel*/
 #if (_CDD_SIMULATION == STD_OFF)
	Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF);
	Pwm3ph_Set_CN0(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF,0U);

	
	Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC);	
	Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE);

	Pwm_17_GtmCcu6_EnableNotification(PWM3PH_PWM_REF_CHANNEL,\
	                   PWM_17_GTMCCU6_FALLING_EDGE);		   
	Mcu_17_Gtm_AtomChUpdateEnDis(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,\
	                                     PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC,\
										 MCU_GTM_TIMER_UPDATE_ENABLE);
	Mcu_17_Gtm_AtomChUpdateEnDis(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,\
	                                     PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE,\
										 MCU_GTM_TIMER_UPDATE_ENABLE);
	Pwm3ph_Enable_OutputChannel(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,\
	PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF);
	Pwm3ph_SetOutput(&pwm3phInIF_Ptr);
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_EnableIsrTrigger
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
** Description	  	: EnableIsrTrigger
*******************************************************************************/
void Pwm3ph_EnableIsrTrigger(void)
{
	// Pwm3ph_Enable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
	// 					PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG);
	Pwm3ph_Enable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC);	
	Pwm3ph_Enable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE);						
}

/*******************************************************************************
** Function Name	: Pwm3ph_SetOutput
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	:
*******************************************************************************/
#if ( (_CDD_SIMULATION == STD_OFF)||(_CDD_INTEGRATION == STD_ON) ) 
void Pwm3ph_SetOutput(const Pwm3phInIFType* in)
#else
void Pwm3ph_SetOutput(const Pwm3phInIFType* in, Pwm3phOutIFType* out )
#endif
{
	if(VAR_SS1_OC_u8 == 0U)
	{
		if((VAR_Cpld_Normal_Work_u8 == 1U) && (VAR_Shut_Of_Path_State_u16 == 1U))
		{
			VAR_Pwm_Freq_u32 = in->Pwm_Freq_u32;
			VAR_Pwm_Mode_u8 = in->Pwm_Mode_u8;
			VAR_PwmDutyCyclePhaseU_f32 = in->PwmDutyCyclePhaseU1_f32;
			VAR_PwmDutyCyclePhaseV_f32 = in->PwmDutyCyclePhaseV1_f32;
			VAR_PwmDutyCyclePhaseW_f32 = in->PwmDutyCyclePhaseW1_f32;			
            VAR_Pwm_force_phase_A      = in->b_forced_a;
			VAR_Pwm_force_phase_B      = in->b_forced_b;
			VAR_Pwm_force_phase_C      = in->b_forced_c;
			VAR_Pwm_polarity_a         = in->b_polarity_a;
			VAR_Pwm_polarity_b         = in->b_polarity_b;
			VAR_Pwm_polarity_c         = in->b_polarity_c;

		}
		else
		{
			VAR_Pwm_Mode_u8 = (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF;
		}

	#if (PWM3PH_PARAMETER_TYPE == 3U)
	Pwm3ph_GetDataConversion();
	#endif

/*	
*	if(ui32_Pwm_Period_Tick_Last != ui32_Pwm_Period_Tick)
*	{Pwm3ph_ChangePeriod(ui32_Pwm_Period_Tick);}
*/
	switch(VAR_Pwm_Mode_u8)	/* CHECK MODE */
	{
		case PWM3PH_MODE_UP_OFF_DOWN_OFF:	/*FreeWheel */
		{
			Pwm3ph_Output_UpOff_DownOff();
			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF;
			break;
		}
		case PWM3PH_MODE_NORMAL:
		{

			if((ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_NORMAL) \
			 ||(ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF)\
			 ||(ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON) \
			 ||(ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF) )
			{
				Pwm3ph_Output_Normal();

			}
			else
			{
				Pwm3ph_Output_UpOff_DownOff();
			}
			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_NORMAL;
			break;
		}
		case PWM3PH_MODE_UP_OFF_DOWN_ON:
		{
			if((ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_NORMAL) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF))
			{
				Pwm3ph_Output_UpOff_DownOn();
				
			}
			else
			{
				Pwm3ph_Output_UpOff_DownOff();
			}


			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
			break;
		}
		#if (PWM3PH_PWM_MODE == 1U)
		case PWM3PH_MODE_UP_ON_DOWN_OFF:
		{
			if((ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_NORMAL) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF))
			{
				Pwm3ph_Output_UpOn_DownOff();
			}
			else
			{
				Pwm3ph_Output_UpOff_DownOff();
			}


			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
			break;
		}
		case PWM3PH_MODE_UP_UON_DOWN_ON:
		{
			if((ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_UON_DOWN_ON) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_NORMAL) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON))
			{
				Pwm3ph_Output_UpUOn_DownOn();
			}
			else
			{
				Pwm3ph_Output_UpOff_DownOff();
			}
			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_UON_DOWN_ON;
			break;
		}
		case PWM3PH_MODE_UP_ON_DOWN_UON:
		{
			if((ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_ON_DOWN_UON) || \
			   (ui8_Pwm_Mode_Last == (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON))
			{
				Pwm3ph_Output_UpOn_DownUOn();
			}
			else
			{
				Pwm3ph_Output_UpOff_DownOff();
			}
			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_ON_DOWN_UON;
			break;
		}
		#endif
		default:
		{
			Pwm3ph_Output_UpOff_DownOff();


			ui8_Pwm_Mode_Last = (uint8)PWM3PH_MODE_UP_OFF_DOWN_OFF;
			break;
		}
	}

    #if ( (_CDD_SIMULATION == STD_OFF)||(_CDD_INTEGRATION == STD_ON) )
	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,ui32_Pwm_OnEdge_UT_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,ui32_Pwm_OffEdge_UT_SR0);
	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,ui32_Pwm_OffEdge_UB_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,ui32_Pwm_OnEdge_UB_SR0);

	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,ui32_Pwm_OnEdge_VT_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,ui32_Pwm_OffEdge_VT_SR0);
	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,ui32_Pwm_OffEdge_VB_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,ui32_Pwm_OnEdge_VB_SR0);

	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,ui32_Pwm_OnEdge_WT_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,ui32_Pwm_OffEdge_WT_SR0);
	Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,ui32_Pwm_OffEdge_WB_SR1);
	Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,ui32_Pwm_OnEdge_WB_SR0);
	#else
	out->Pwm_Ticks_OnEdge_UT_ui16 = ui32_Pwm_OnEdge_UT_SR1;
	out->Pwm_Ticks_OffEdge_UT_ui16 = ui32_Pwm_OffEdge_UT_SR0;
	out->Pwm_Ticks_OnEdge_UB_ui16 = ui32_Pwm_OnEdge_UB_SR0;
	out->Pwm_Ticks_OffEdge_UB_ui16 = ui32_Pwm_OffEdge_UB_SR1;

	out->Pwm_Ticks_OnEdge_VT_ui16 = ui32_Pwm_OnEdge_VT_SR1;
	out->Pwm_Ticks_OffEdge_VT_ui16 = ui32_Pwm_OffEdge_VT_SR0;
	out->Pwm_Ticks_OnEdge_VB_ui16 = ui32_Pwm_OnEdge_VB_SR0;
	out->Pwm_Ticks_OffEdge_VB_ui16 = ui32_Pwm_OffEdge_VB_SR1;

	out->Pwm_Ticks_OnEdge_WT_ui16 = ui32_Pwm_OnEdge_WT_SR1;
	out->Pwm_Ticks_OffEdge_WT_ui16 = ui32_Pwm_OffEdge_WT_SR0;
	out->Pwm_Ticks_OnEdge_WB_ui16 = ui32_Pwm_OnEdge_WB_SR0;
	out->Pwm_Ticks_OffEdge_WB_ui16 = ui32_Pwm_OffEdge_WB_SR1;
	#endif
	}
}
/*******************************************************************************
** Function Name	: Pwm3ph_Set_ShadowValSr0
** Parameter[in] 	: uint8 Moudle,uint8 Channel,uint32 Sr0Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Set_ShadowValSr0
*******************************************************************************/
static void Pwm3ph_Set_ShadowValSr0(uint8 Moudle,uint8 Channel,uint32 Sr0Value)
{
#if (_CDD_SIMULATION == STD_OFF)
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	Mcu_Gtm_SetTomShadowValSr0(Moudle,Channel,Sr0Value);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	Mcu_Gtm_SetAtomShadowValSr0(Moudle,Channel,Sr0Value);   
	#endif
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_Set_ShadowValSr1
** Parameter[in] 	: uint8 Moudle,uint8 Channel,uint32 Sr1Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Set_ShadowValSr1
*******************************************************************************/
static void Pwm3ph_Set_ShadowValSr1(uint8 Moudle,uint8 Channel,uint32 Sr1Value)
{
#if (_CDD_SIMULATION == STD_OFF)
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	Mcu_Gtm_SetTomShadowValSr1(Moudle,Channel,Sr1Value);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	Mcu_Gtm_SetAtomShadowValSr1(Moudle,Channel,Sr1Value);    
	#endif
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_Enable_OutputChannel
** Parameter[in] 	: uint8 Moudle,uint8 Channel
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Enable_OutputChannel
*******************************************************************************/
static void Pwm3ph_Enable_OutputChannel(uint8 Moudle,uint8 Channel)
{
#if (_CDD_SIMULATION == STD_OFF)
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	Mcu_17_Gtm_TomChannelEnable(Moudle,Channel,MCU_GTM_TIMER_OUT_ENABLE);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	Mcu_17_Gtm_AtomChannelEnable(Moudle,Channel,MCU_GTM_TIMER_OUT_ENABLE);
	#endif
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_Disable_OutputChannel
** Parameter[in] 	: uint8 Moudle,uint8 Channel
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Disable_OutputChannel
*******************************************************************************/
static void Pwm3ph_Disable_OutputChannel(uint8 Moudle,uint8 Channel)
{
#if (_CDD_SIMULATION == STD_OFF)
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	Mcu_17_Gtm_TomChannelDisable(Moudle,Channel);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	Mcu_17_Gtm_AtomChannelDisable(Moudle,Channel);
	#endif
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_Set_CN0
** Parameter[in] 	: uint8 Moudle,uint8 Channel,uint32 CnoValue
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Set_CN0
*******************************************************************************/
static void Pwm3ph_Set_CN0(uint8 Moudle,uint8 Channel,uint32 CnoValue)
{
#if (_CDD_SIMULATION == STD_OFF)
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	Mcu_Gtm_SetTomCounterCn0(Moudle,Channel,(uint32)CnoValue);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	Mcu_Gtm_SetAtomCounterCn0(Moudle,Channel,CnoValue);
	#endif
#endif
}

/*******************************************************************************
** Function Name	: Pwm3ph_Output_UpOff_DownOff
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: UpOff_DownOff
*******************************************************************************/
static void Pwm3ph_Output_UpOff_DownOff(void)
{
	/* U  */
	ui32_Pwm_OnEdge_UT_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
	ui32_Pwm_OffEdge_UT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
	/* CM0 defines the edge to SL value, CM1 defines the edge to ~SL value */
	ui32_Pwm_OnEdge_UB_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OffEdge_UB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	/* V  */
	ui32_Pwm_OnEdge_VT_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
	ui32_Pwm_OffEdge_VT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_VB_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OffEdge_VB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	/* W  */
	ui32_Pwm_OnEdge_WT_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
	ui32_Pwm_OffEdge_WT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_WB_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OffEdge_WB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
}

/*******************************************************************************
** Function Name	: Pwm3ph_Output_Normal
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Output_Normal
*******************************************************************************/
static void Pwm3ph_Output_Normal(void)
{
	VAR_Pwm_Fault_Flag_u16 = PWM_FAULT_NONE;

	/* U */
#if 0
	if((ui32_Pwm_Ticks_OnEdge_UT < ui32_Pwm_Ticks_OffEdge_UB)
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_UT - ui32_Pwm_Ticks_OffEdge_UB)\
	  < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_FIRST_EDGE_U;
	}

	if((ui32_Pwm_Ticks_OffEdge_UT > ui32_Pwm_Ticks_OnEdge_UB )
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_UB - ui32_Pwm_Ticks_OffEdge_UT)\
	 < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SECOND_EDGE_U;
	}

	if((ui32_Pwm_Ticks_OnEdge_UT >= ui32_Pwm_Ticks_OffEdge_UT)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OffEdge_UT >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_UT;
	}

	if((ui32_Pwm_Ticks_OffEdge_UB >= ui32_Pwm_Ticks_OnEdge_UB)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OnEdge_UB >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_UB;
	}
/********************************************************************************************/
	/* V */
	if((ui32_Pwm_Ticks_OnEdge_VT < ui32_Pwm_Ticks_OffEdge_VB)
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_VT - ui32_Pwm_Ticks_OffEdge_VB)\
	  < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_FIRST_EDGE_V;
	}
	if((ui32_Pwm_Ticks_OffEdge_VT > ui32_Pwm_Ticks_OnEdge_VB )
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_VB - ui32_Pwm_Ticks_OffEdge_VT)\
	 < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SECOND_EDGE_V;
	}
	if((ui32_Pwm_Ticks_OnEdge_VT >= ui32_Pwm_Ticks_OffEdge_VT)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OffEdge_VT >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_VT;
	}
	if((ui32_Pwm_Ticks_OffEdge_VB >= ui32_Pwm_Ticks_OnEdge_VB)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OnEdge_VB >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_VB;
	}
/*************************************************************************************************/
	/* W */
	if((ui32_Pwm_Ticks_OnEdge_WT < ui32_Pwm_Ticks_OffEdge_WB)
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_WT - ui32_Pwm_Ticks_OffEdge_WB)\
	  < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_FIRST_EDGE_W;
	}
	if((ui32_Pwm_Ticks_OffEdge_WT > ui32_Pwm_Ticks_OnEdge_WB )
	 ||(uint32)(ui32_Pwm_Ticks_OnEdge_WB - ui32_Pwm_Ticks_OffEdge_WT)\
	 < PWM3PH_MIN_DEADTIME_VALUE)
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SECOND_EDGE_W;
	}
	if((ui32_Pwm_Ticks_OnEdge_WT >= ui32_Pwm_Ticks_OffEdge_WT)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OffEdge_WT >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_WT;
	}
	if((ui32_Pwm_Ticks_OffEdge_WB >= ui32_Pwm_Ticks_OnEdge_WB)	/*SR1>SR0*/
	 ||(ui32_Pwm_Ticks_OnEdge_WB >= ui32_Pwm_Period_SR0))	/*SR0>Period*/
	{
//		VAR_Pwm_Fault_Flag_u16 |= PWM_FAULT_SR0_SR1_WB;
	}
#endif
/**********************************************************************************************/
	/*JEE_MISRA_RULES_14_03&2_02 It's Allowed*/
	if(VAR_Pwm_Fault_Flag_u16 == PWM_FAULT_NONE)
	{   
        if(VAR_Pwm_force_phase_A ==(uint8)PWM3PH_FORCED_DISABLE)
		{
			ui32_Pwm_OnEdge_UT_SR1 = ui32_Pwm_Ticks_OnEdge_UT;
			ui32_Pwm_OffEdge_UT_SR0 = ui32_Pwm_Ticks_OffEdge_UT;
			ui32_Pwm_OnEdge_UB_SR0 = ui32_Pwm_Ticks_OnEdge_UB;
			ui32_Pwm_OffEdge_UB_SR1 = ui32_Pwm_Ticks_OffEdge_UB;
		}
        if(VAR_Pwm_force_phase_B ==(uint8)PWM3PH_FORCED_DISABLE)
		{
			ui32_Pwm_OnEdge_VT_SR1 = ui32_Pwm_Ticks_OnEdge_VT;
			ui32_Pwm_OffEdge_VT_SR0 = ui32_Pwm_Ticks_OffEdge_VT;
			ui32_Pwm_OnEdge_VB_SR0 = ui32_Pwm_Ticks_OnEdge_VB;
			ui32_Pwm_OffEdge_VB_SR1 = ui32_Pwm_Ticks_OffEdge_VB;
		}
        if(VAR_Pwm_force_phase_C ==(uint8)PWM3PH_FORCED_DISABLE)
		{
			ui32_Pwm_OnEdge_WT_SR1 = ui32_Pwm_Ticks_OnEdge_WT;
			ui32_Pwm_OffEdge_WT_SR0 = ui32_Pwm_Ticks_OffEdge_WT;
			ui32_Pwm_OnEdge_WB_SR0 = ui32_Pwm_Ticks_OnEdge_WB;
			ui32_Pwm_OffEdge_WB_SR1 = ui32_Pwm_Ticks_OffEdge_WB;
		}
	}
	else
	{
		/*JEE_MISRA_RULES_14_03&2_02 It's Allowed*/
		ui16_Pwm_Fault_Flag_Last = VAR_Pwm_Fault_Flag_u16;
		ui32_Pwm_Fault_Counter++;
	}
}

/*******************************************************************************
** Function Name	: Pwm3ph_Output_UpOff_DownOn
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Output_UpOff_DownOn
*******************************************************************************/
static void Pwm3ph_Output_UpOff_DownOn(void)
{
	if(VAR_Pwm_force_phase_A == PWM3PH_FORCED_OFF)
	{
		/* U  */
		/* 100% SL(SL=LOW)*/
		ui32_Pwm_OnEdge_UT_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_OffEdge_UT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OnEdge_UB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
		ui32_Pwm_OffEdge_UB_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	if(VAR_Pwm_force_phase_B == PWM3PH_FORCED_OFF)
	{	
		/* V  */
		ui32_Pwm_OnEdge_VT_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_OffEdge_VT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OnEdge_VB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
		ui32_Pwm_OffEdge_VB_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	if(VAR_Pwm_force_phase_C == PWM3PH_FORCED_OFF)
	{
		/* W  */
		ui32_Pwm_OnEdge_WT_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_OffEdge_WT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OnEdge_WB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
		ui32_Pwm_OffEdge_WB_SR1 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
}
#if (PWM3PH_PWM_MODE == 1U)
/*******************************************************************************
** Function Name	: Pwm3ph_Output_UpOn_DownOff
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	None
** Description	  	: Output_UpOn_DownOff
*******************************************************************************/
static void Pwm3ph_Output_UpOn_DownOff(void)
{
	if(VAR_Pwm_force_phase_A == PWM3PH_FORCED_ON)
	{
		/* U*/
		/* 0% SL(SL=LOW)*/
		ui32_Pwm_OnEdge_UT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_OffEdge_UT_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_OnEdge_UB_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OffEdge_UB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}

	if(VAR_Pwm_force_phase_B == PWM3PH_FORCED_ON)
	{
		/* V*/
		ui32_Pwm_OnEdge_VT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_OffEdge_VT_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OnEdge_VB_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OffEdge_VB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	if(VAR_Pwm_force_phase_C == PWM3PH_FORCED_ON)
	{
		/* W*/
		ui32_Pwm_OnEdge_WT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_OffEdge_WT_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OnEdge_WB_SR0 = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_OffEdge_WB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/		
	}
}
/*******************************************************************************
** Function Name	: Pwm3ph_Output_UpOn_DownOff
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Output_UpOn_DownUOn
*******************************************************************************/
static void Pwm3ph_Output_UpOn_DownUOn(void)
{

	/* U*/
	/* 0% SL(SL=LOW)*/
	ui32_Pwm_OnEdge_UT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	ui32_Pwm_OffEdge_UT_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	/* 0% SL(SL=HIGH)*/
	ui32_Pwm_OnEdge_UB_SR0 = ui32_Pwm_Ticks_OnEdge_UB; /*SR0*/

	ui32_Pwm_OffEdge_UB_SR1 = ui32_Pwm_Ticks_OffEdge_UB ; /*SR1*/

	/* V */
	ui32_Pwm_OnEdge_VT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	ui32_Pwm_OffEdge_VT_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_VB_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OffEdge_VB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	/* W*/
	ui32_Pwm_OnEdge_WT_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	ui32_Pwm_OffEdge_WT_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_WB_SR0 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OffEdge_WB_SR1 = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	
}


/*******************************************************************************
** Function Name	: Pwm3ph_Output_UpOff_DownUOn
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Output_UpUOn_DownOn
*******************************************************************************/
static void Pwm3ph_Output_UpUOn_DownOn(void)
{
	/* U  */
	/* 100% SL(SL=LOW)*/
	ui32_Pwm_OnEdge_UT_SR1 =  ui32_Pwm_Ticks_OnEdge_UT;/*SR1*/
	ui32_Pwm_OffEdge_UT_SR0 = ui32_Pwm_Ticks_OffEdge_UT; /*SR0*/

	ui32_Pwm_OnEdge_UB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
	ui32_Pwm_OffEdge_UB_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/

	/* V  */
	ui32_Pwm_OnEdge_VT_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
	ui32_Pwm_OffEdge_VT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_VB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
	ui32_Pwm_OffEdge_VB_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/

	/* W */
	ui32_Pwm_OnEdge_WT_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
	ui32_Pwm_OffEdge_WT_SR0 = U16_REGISTER_OFFSET_VALUE; /*SR0*/
	ui32_Pwm_OnEdge_WB_SR0 = U16_REGISTER_OFFSET_VALUE;  /*SR0*/
	ui32_Pwm_OffEdge_WB_SR1 = \
			ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR1*/
}
#endif

/*******************************************************************************
** Function Name	: Pwm3ph_ChangePeriod
** Parameter[in] 	: uint32 ui16_Period
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: ChangePeriod
*******************************************************************************/
static	void  Pwm3ph_ChangePeriod(uint32 ui16_Period)
{
	if(ui16_Period <= PWM3PH_MAX_PERIOD_VALUE)
	{
		ui32_Pwm_Period_Tick_Last = ui16_Period;
		ui32_Pwm_Period_SR0 = ui16_Period;

	#if (_CDD_SIMULATION == STD_OFF)
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,\
				PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF,((uint32)ui32_Pwm_Period_SR0/2U));

		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,\
				PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF,ui32_Pwm_Period_SR0);

	#endif
		/*CM0 defines the edge to SL value, CM1 defines the edge to ~SL value*/
#if (PWM3PH_ADC_MOUDLE_SEL == 0U)

		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,\
					PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC,\
					(ui32_Pwm_Period_SR0/2U - CAL_Pwm3ph_AdcTriggleOffset_u16));
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC,\
							(ui32_Pwm_Period_SR0/2U));
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,\
					PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE,\
					(ui32_Pwm_Period_SR0/2U - CAL_Pwm3ph_AdcTriggleOffset_u16));
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE,\
							(ui32_Pwm_Period_SR0/2U));
#elif (PWM3PH_ADC_MOUDLE_SEL == 1U)
	#if (_CDD_SIMULATION == STD_OFF)
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
			PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG,\
			(0));

		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
					PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG,\
					(CAL_Pwm3ph_AdcTriggleOffset_u16 ) );
	#endif
#endif
	}
}

#if(PWM3PH_PARAMETER_TYPE == 3U)
/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: GetDataConversion
*******************************************************************************/
static	void Pwm3ph_GetDataConversion(void)
{
	float temp;
	
	temp = CAL_PWM_Set_DeadTime_us_f32*100.0f;
	ui32_DeadTime_Tick = (uint32)( temp );

	if((VAR_Pwm_Freq_u32>PWM3PH_MAX_FREQ_VALUE) || \
			(VAR_Pwm_Freq_u32<PWM3PH_MIN_FREQ_VALUE))
	{

		VAR_Pwm_Freq_u32 = PWM3PH_DEF_FREQ_VALUE;
	}
	/*TODO: TechM : No conversion is needed for FORD as Input itself in Period instead of Freq*/
	// temp = ((float32)PWM3PH_GTM_CLOCK_VALUE)/((float32)VAR_Pwm_Freq_u16);
	// ui32_Pwm_Period_Tick  = (uint32)(temp);
	ui32_Pwm_Period_Tick  = (uint32)(VAR_Pwm_Freq_u32);
    Pwm3ph_ChangePeriod(ui32_Pwm_Period_Tick);  // wth 20210121 change for random pwm
    if(VAR_Pwm_polarity_a == (uint8) PWM3PH_NORMAL_POLARITY)
	{
    	Pwm3ph_GetDataConversion_PhaseU_Normal();
	}
	else
	{
		Pwm3ph_GetDataConversion_PhaseU_Polarity();
	}

    if(VAR_Pwm_polarity_b == (uint8) PWM3PH_NORMAL_POLARITY)
	{
    	Pwm3ph_GetDataConversion_PhaseV_Normal();
	}
	else
	{
		Pwm3ph_GetDataConversion_PhaseV_Polarity();
	}

    if(VAR_Pwm_polarity_c == (uint8) PWM3PH_NORMAL_POLARITY)
	{
    	Pwm3ph_GetDataConversion_PhaseW_Normal();
	}
	else
	{
		Pwm3ph_GetDataConversion_PhaseW_Polarity();
	}


}
#endif

void Pwm3ph_ShunDownallChannelImmediately(void)
{

    if(((VAR_TLF35585_InitFinish_Flag_b == TRUE)
	     &&(VAR_TLF35585_SelfTestFinish_Flag_b == TRUE))
		 || (u8_Run_DPT_Test_Flag == (uint8)DPT_TEST_FLAG_INIT))
    {
		VAR_SS1_OC_u8 = 1;  /*Tech M Modified to 0*/
		/*JEE_MISRA_RULES_11_04 It's Allowed*/
		// P02_OUT.B.P1=0x0u;
		// P02_OUT.B.P2=0x1u;
		// P02_OUT.B.P3=0x0u;
		// P02_OUT.B.P4=0x1u;
		// P02_OUT.B.P5=0x0u;
		// P02_OUT.B.P6=0x1u;

		// P02_IOCR0.B.PC1=0x10u;
		// P02_IOCR0.B.PC2=0x10u;
		// P02_IOCR0.B.PC3=0x10u;
		// P02_IOCR4.B.PC4=0x10u;
		// P02_IOCR4.B.PC5=0x10u;
		// P02_IOCR4.B.PC6=0x10u;

//		P02_OMR.B.PS1=0x0
//		P02_OMR.B.PS2=0x1
//		P02_OMR.B.PS3=0x0
//		P02_OMR.B.PS4=0x1
//		P02_OMR.B.PS5=0x0
//		P02_OMR.B.PS6=0x1
//
//		P02_OMSR.B.PS1=0x0
//		P02_OMSR.B.PS2=0x1
//		P02_OMSR.B.PS3=0x0
//		P02_OMSR.B.PS4=0x1
//		P02_OMSR.B.PS5=0x0
//		P02_OMSR.B.PS6=0x1
		/*JEE_MISRA_RULES_17_03 It's Allowed*/
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
										PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
										PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,0);
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,0);
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,0);
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,0);
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,0);
		Pwm3ph_Set_ShadowValSr1(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,0);
		Pwm3ph_Set_ShadowValSr0(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
								PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,0);		
		#if (PWM3PH_TOM_ATOM_SEL == 0U)
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,MCU_GTM_TIMER_OUT_DISABLE);
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,MCU_GTM_TIMER_OUT_DISABLE);
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,MCU_GTM_TIMER_OUT_DISABLE);
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,MCU_GTM_TIMER_OUT_DISABLE);
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,MCU_GTM_TIMER_OUT_DISABLE);
		Mcu_17_Gtm_TomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,MCU_GTM_TIMER_OUT_DISABLE);		
		#elif (PWM3PH_TOM_ATOM_SEL == 1U)
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UT);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UB);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VT);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VB);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WT);
		Pwm3ph_Disable_OutputChannel(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WB);
		#endif


    }


}
/*******************************************************************************

*******************************************************************************/
void callpwm3phstatfunc(void)
{
Pwm3ph_ChangePeriod(10);
}

/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseU_Normal
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Pwm3ph_GetDataConversion_PhaseU_Normal
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseU_Normal(void)
{
	static uint32 ui32_Pwm_DutyU_Tick;			/* U PWM Duty cycle value */
	float32 local_PwmDutyCyclePhaseU_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;

	ui32_Pwm_DutyU_Tick = (uint32)(VAR_PwmDutyCyclePhaseU_f32*(float32)ui32_Pwm_Period_Tick);
	
	
	/* U */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseU_f32 > CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32 <= CAL_Pwm3ph_DutyMax_f32 ) )/*0.94 < x <= 0.999*/
	{
				/*
		* example: period=100,duty=40,dead_time=2
		* OnEdge=(100-(40-2))/2 = 31,SR1=31
		*/
		ui32_Pwm_Ticks_OnEdge_UT = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_UT = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_UB =  \
				ui32_Pwm_Period_SR0; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_UB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	else if( (VAR_PwmDutyCyclePhaseU_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )/*0.06 =< x <=0.94  U*/
	{

		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_UT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_UT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);

		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_UB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_UB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);		
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseU_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32>=CAL_Pwm3ph_DutyMin_f32) )/*0.001<x<0.06  U*/
	{

		ui32_Pwm_Ticks_OnEdge_UT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_UT = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_UB = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_UB = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if( VAR_PwmDutyCyclePhaseU_f32<CAL_Pwm3ph_DutyMin_f32 )
	{
		ui32_Pwm_Ticks_OnEdge_UT = ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_UT = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_UB =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_UB = ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	else if(VAR_PwmDutyCyclePhaseU_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseU_f32>0.999*/
	{
		ui32_Pwm_Ticks_OnEdge_UT = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_UT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_UB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_UB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	else
	{
		VAR_PWM3phUDuty_ERR_u8 = 1;
	}
}

/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseV_Normal
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseV_Normal(void)
{
	static uint32 ui32_Pwm_DutyV_Tick;			/* V PWM Duty cycle value */
		float32 local_PwmDutyCyclePhaseV_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;	
	
	ui32_Pwm_DutyV_Tick = (uint32)(VAR_PwmDutyCyclePhaseV_f32*(float32)ui32_Pwm_Period_Tick);
	
	/* V */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseV_f32>CAL_Pwm3phB_ClosedThreshold_f32) && (VAR_PwmDutyCyclePhaseV_f32<=CAL_Pwm3ph_DutyMax_f32 ) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_VT = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_VT = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_VB =  \
				ui32_Pwm_Period_SR0 ; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_VB = U16_REGISTER_OFFSET_VALUE; /*SR1*/


	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseV_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseV_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_VT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_VT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_VB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_VB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if((VAR_PwmDutyCyclePhaseV_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseV_f32>=CAL_Pwm3ph_DutyMin_f32) )
	{
		ui32_Pwm_Ticks_OnEdge_VT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_VT = U16_REGISTER_OFFSET_VALUE; /*SR0*/


		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_VB = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_VB = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if( VAR_PwmDutyCyclePhaseV_f32<CAL_Pwm3ph_DutyMin_f32 )
	{
		ui32_Pwm_Ticks_OnEdge_VT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_VT = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_VB =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_VB =  \
				ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE ; /*SR1*/
	}
	else if(VAR_PwmDutyCyclePhaseV_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseV_f32>0.999*/
	{
		ui32_Pwm_Ticks_OnEdge_VT = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_VT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_VB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_VB = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	}
	else
	{
		VAR_PWM3phVDuty_ERR_u8 = 1;
	}		
	
}	

/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseW
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseW_Normal(void)
{
	static uint32 ui32_Pwm_DutyW_Tick;			/* W PWM Duty cycle value */
	float32 local_PwmDutyCyclePhaseW_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;
	
	ui32_Pwm_DutyW_Tick = (uint32)(VAR_PwmDutyCyclePhaseW_f32*(float32)ui32_Pwm_Period_Tick);

	/* W */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseW_f32>CAL_Pwm3phB_ClosedThreshold_f32) && (VAR_PwmDutyCyclePhaseW_f32<=CAL_Pwm3ph_DutyMax_f32 ) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_WT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69)*/
		ui32_Pwm_Ticks_OffEdge_WT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_WB =  \
				ui32_Pwm_Period_SR0 ; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_WB = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseW_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseW_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_WT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_WT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_WB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_WB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseW_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseW_f32>=CAL_Pwm3ph_DutyMin_f32)  )
	{
		ui32_Pwm_Ticks_OnEdge_WT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_WT = U16_REGISTER_OFFSET_VALUE; /*SR0*/


		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_WB = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_WB = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if(VAR_PwmDutyCyclePhaseW_f32<CAL_Pwm3ph_DutyMin_f32)
	{
		ui32_Pwm_Ticks_OnEdge_WT = \
					ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_WT = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_WB =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_WB = \
				ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE ;  /*SR1*/
	}
	else if(VAR_PwmDutyCyclePhaseW_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseW_f32>0.999*/
	{
		ui32_Pwm_Ticks_OnEdge_WT = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_WT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_WB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_WB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	else
	{
		VAR_PWM3phWDuty_ERR_u8 = 1;
	}		
}	


/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseU_Polarity
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseU_Polarity(void)
{
	static uint32 ui32_Pwm_DutyU_Tick;			/* U PWM Duty cycle value */
	float32 local_PwmDutyCyclePhaseU_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseU_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;

	ui32_Pwm_DutyU_Tick = (uint32)(VAR_PwmDutyCyclePhaseU_f32*(float32)ui32_Pwm_Period_Tick);
	
	
	/* U */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseU_f32 > CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32 <= CAL_Pwm3ph_DutyMax_f32 ) )/*0.94 < x <= 0.999*/
	{
		/* example: period=100,duty=40,dead_time=2
		* OnEdge=(100-(40-2))/2 = 31,SR1=31
		*/
		ui32_Pwm_Ticks_OnEdge_UB = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_UB = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_UT =  \
				ui32_Pwm_Period_SR0; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_UT = U16_REGISTER_OFFSET_VALUE;
	}
	else if( (VAR_PwmDutyCyclePhaseU_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )/*0.06 =< x <=0.94  U*/
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_UB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_UB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick - ui32_DeadTime_Tick))/2U);

		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_UT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_UT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);		
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseU_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseU_f32>=CAL_Pwm3ph_DutyMin_f32) )/*0.001<x<0.06  U*/
	{

		ui32_Pwm_Ticks_OnEdge_UB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_UB = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_UT = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_UT = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyU_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if( VAR_PwmDutyCyclePhaseU_f32<CAL_Pwm3ph_DutyMin_f32 )
	{
		ui32_Pwm_Ticks_OnEdge_UB = ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_UB = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_UT =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_UT = ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE; /*SR1*/		
	}
	else if(VAR_PwmDutyCyclePhaseU_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseU_f32>0.999*/
	{
		ui32_Pwm_Ticks_OnEdge_UB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_UB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_UT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_UT = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		
	}
	else
	{
		VAR_PWM3phUDuty_ERR_u8 = 1;
	}
}

/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseV_Polarity
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseV_Polarity(void)
{
	static uint32 ui32_Pwm_DutyV_Tick;			/* V PWM Duty cycle value */
	float32 local_PwmDutyCyclePhaseV_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseV_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;	
	
	ui32_Pwm_DutyV_Tick = (uint32)(VAR_PwmDutyCyclePhaseV_f32*(float32)ui32_Pwm_Period_Tick);
	

	/* V */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseV_f32>CAL_Pwm3phB_ClosedThreshold_f32) && (VAR_PwmDutyCyclePhaseV_f32<=CAL_Pwm3ph_DutyMax_f32 ) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_VB = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_VB = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_VT =  \
				ui32_Pwm_Period_SR0 ; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_VT = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseV_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseV_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_VB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_VB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_VT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_VT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if((VAR_PwmDutyCyclePhaseV_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseV_f32>=CAL_Pwm3ph_DutyMin_f32) )
	{
		ui32_Pwm_Ticks_OnEdge_VB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_VB = U16_REGISTER_OFFSET_VALUE; /*SR0*/


		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_VT = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_VT = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyV_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if( VAR_PwmDutyCyclePhaseV_f32<CAL_Pwm3ph_DutyMin_f32 )
	{
		ui32_Pwm_Ticks_OnEdge_VB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_VB = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_VT =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_VT =  \
				ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE ; /*SR1*/
	}
	else if(VAR_PwmDutyCyclePhaseV_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseV_f32>0.999*/
		{
		ui32_Pwm_Ticks_OnEdge_VB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_VB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_VT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_VT = U16_REGISTER_OFFSET_VALUE; /*SR1*/

		}
	else
	{
		VAR_PWM3phVDuty_ERR_u8 = 1;
	}		
	
}	

/*******************************************************************************
** Function Name	: Pwm3ph_GetDataConversion_PhaseW
** Parameter[in] 	: None 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
static void Pwm3ph_GetDataConversion_PhaseW_Polarity(void)
{
	static uint32 ui32_Pwm_DutyW_Tick;			/* W PWM Duty cycle value */
	float32 local_PwmDutyCyclePhaseW_f32 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_2 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_3 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_4 = 0.0f;
	float32 local_PwmDutyCyclePhaseW_f32_5 = 0.0f;
	uint32 local_DeadTime_Tick = 0;
	
	ui32_Pwm_DutyW_Tick = (uint32)(VAR_PwmDutyCyclePhaseW_f32*(float32)ui32_Pwm_Period_Tick);

	/* W */
	/*JEE_MISRA_RULES_13_05 It's Allowed*/
	if(  (VAR_PwmDutyCyclePhaseW_f32>CAL_Pwm3phB_ClosedThreshold_f32) && (VAR_PwmDutyCyclePhaseW_f32<=CAL_Pwm3ph_DutyMax_f32 ) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_WB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69)*/
		ui32_Pwm_Ticks_OffEdge_WB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);

		ui32_Pwm_Ticks_OnEdge_WT =  \
				ui32_Pwm_Period_SR0 ; /*SR0*/

		ui32_Pwm_Ticks_OffEdge_WT = U16_REGISTER_OFFSET_VALUE; /*SR1*/

	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseW_f32 <= CAL_Pwm3phB_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseW_f32 >= CAL_Pwm3phT_ClosedThreshold_f32) )
	{
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100-(40-2))/2 = 31,SR1=31*/
		ui32_Pwm_Ticks_OnEdge_WB = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100+(40-2))/2 = 69,SR0=69*/
		ui32_Pwm_Ticks_OffEdge_WB = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick - ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_WT = (uint32)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_WT = (uint32)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
	}/*JEE_MISRA_RULES_13_05 It's Allowed*/
	else if( (VAR_PwmDutyCyclePhaseW_f32 < CAL_Pwm3phT_ClosedThreshold_f32)&&(VAR_PwmDutyCyclePhaseW_f32>=CAL_Pwm3ph_DutyMin_f32)  )
	{
		/* Duty Cycle = (1.0- VAR_PwmDutyCyclePhaseW_f32) *0.5 */
        //local_PwmDutyCyclePhaseW_f32_2 = (float32)1.0f - VAR_PwmDutyCyclePhaseW_f32;
		ui32_Pwm_Ticks_OnEdge_WB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/

		ui32_Pwm_Ticks_OffEdge_WB = U16_REGISTER_OFFSET_VALUE; /*SR0*/


		/*example: period=100,duty=40,dead_time=2
		 * OnEdge=(100+(40+2))/2 = 71,SR0=71*/
		ui32_Pwm_Ticks_OnEdge_WT = (uint16)((ui32_Pwm_Period_Tick + \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
		/*example: period=100,duty=40,dead_time=2
		 * OffEdge=(100-(40+2))/2 = 29,SR0=29*/
		ui32_Pwm_Ticks_OffEdge_WT = (uint16)((ui32_Pwm_Period_Tick - \
				(ui32_Pwm_DutyW_Tick + ui32_DeadTime_Tick))/2U);
	}
	else if(VAR_PwmDutyCyclePhaseW_f32<CAL_Pwm3ph_DutyMin_f32)
	{
		ui32_Pwm_Ticks_OnEdge_WB = \
					ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE;  /*SR1*/
		ui32_Pwm_Ticks_OffEdge_WB = U16_REGISTER_OFFSET_VALUE; /*SR0*/

		ui32_Pwm_Ticks_OnEdge_WT =  U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_WT = \
				ui32_Pwm_Period_SR0+U16_REGISTER_OFFSET_VALUE ;  /*SR1*/
	}
	else if(VAR_PwmDutyCyclePhaseW_f32>CAL_Pwm3ph_DutyMax_f32)/*VAR_PwmDutyCyclePhaseW_f32>0.999*/
	{
		ui32_Pwm_Ticks_OnEdge_WB = U16_REGISTER_OFFSET_VALUE; /*SR1*/
		ui32_Pwm_Ticks_OffEdge_WB = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		/* 0% SL(SL=HIGH)*/
		ui32_Pwm_Ticks_OnEdge_WT = \
				ui32_Pwm_Period_SR0 + U16_REGISTER_OFFSET_VALUE; /*SR0*/
		ui32_Pwm_Ticks_OffEdge_WT = U16_REGISTER_OFFSET_VALUE; /*SR1*/
	}
	else
	{
		VAR_PWM3phWDuty_ERR_u8 = 1;
	}		
}	


/*******************************************************************************
** Function Name	: Pwm3ph_SetPolarity_PhaseA
** Parameter[in] 	: Polarity 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/

void Pwm3ph_SetPolarity_PhaseA(U32 polarity)
{
   if(ui32_Pwm_last_polarity_phase_A != polarity)
   {
		if(polarity == 1UL) /* Polarity is High */
		{
			/* High Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,1U );
			/* Low Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,0U );					
		}
		else /* Polarity is Low */
		{
			/* High Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,0U );
			/* Low Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,1U );
		}
		ui32_Pwm_last_polarity_phase_A = polarity;
   }

}

/*******************************************************************************
** Function Name	: Pwm3ph_SetPolarity_PhaseB
** Parameter[in] 	: Polarity 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
void Pwm3ph_SetPolarity_PhaseB(U32 polarity)
{
   if(ui32_Pwm_last_polarity_phase_B != polarity)
   {
		if(polarity == 1UL) /* Polarity is High */
		{
			/* High Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,1U );
			/* Low Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,0U );					
		}
		else /* Polarity is Low */
		{
			/* High Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,0U );
			/* Low Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,1U );
		}
		ui32_Pwm_last_polarity_phase_B = polarity;
   }
	
}
/*******************************************************************************
** Function Name	: Pwm3ph_SetPolarity_PhaseC
** Parameter[in] 	: Polarity 
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
void Pwm3ph_SetPolarity_PhaseC(U32 polarity)
{
	if(ui32_Pwm_last_polarity_phase_C != polarity)
	{
		if(polarity == 1UL) /* Polarity is High */
		{
			/* High Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,1U );
			/* Low Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,0U );					
		}
		else  /* Polarity is Low */
		{
			/* High Side Make Normally Low */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,0U );
			/* Low Side Make Normally High */
			set_PWM_ChannelPolarity(PWM3PH_TOM_ATOM_MOUDLE_SEL,\
							PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,1U );
		}
		ui32_Pwm_last_polarity_phase_C  = polarity;
	}
	
}


/*******************************************************************************
** Function Name	: set_PWM_ChannelPolarity
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , Polarity
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
void set_PWM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity)
{
	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	set_PWM_TOM_ChannelPolarity(ModuleNumber,ChannelNumber,Polarity);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	set_PWM_ATOM_ChannelPolarity(ModuleNumber,ChannelNumber,Polarity); 
	#endif   

}

/*******************************************************************************
** Function Name	: set_PWM_ATOM_ChannelPolarity
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , Polarity
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
void set_PWM_ATOM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity)
{
   
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(ModuleNumber, ChannelNumber);	
      /* Configure the SL bit in the Channel Ctrl register     */
    if(Polarity == 1UL)
    {
      PWM_SFR_INIT_USER_MODE_MODIFY32((AtomChannelRegPtr->CTRL.U),
                  PWM_ATOM_CTRL_SL_SET_CL_MASK,PWM_CTRL_SL_SET_ST_MASK)
    }
    else
    {
      PWM_SFR_INIT_USER_MODE_MODIFY32((AtomChannelRegPtr->CTRL.U),
                  PWM_ATOM_CTRL_SL_CLR_CL_MASK,PWM_ZERO_U)
    } 				                                    

}

/*******************************************************************************
** Function Name	: set_PWM_TOM_ChannelPolarity
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , Polarity
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: SetPolarity
*******************************************************************************/
void set_PWM_TOM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity)
{
   
    Ifx_GTM_TOM_CH* TomChannelRegPtr;

	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)ModuleNumber, ChannelNumber);
      /* Configure the SL bit in the Channel Ctrl register     */
    if(Polarity == 1UL)
    {
      PWM_SFR_DEINIT_USER_MODE_MODIFY32((TomChannelRegPtr->CTRL.U),
                  PWM_CTRL_SL_SET_CL_MASK,PWM_CTRL_SL_SET_ST_MASK);
    }
    else
    {
      PWM_SFR_DEINIT_USER_MODE_MODIFY32((TomChannelRegPtr->CTRL.U),
                  PWM_CTRL_SL_CLR_CL_MASK,PWM_ZERO_U);
    } 				                                    

}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr0
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR0 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 0 (SR0)
*******************************************************************************/
void Mcu_Gtm_SetAtomShadowValSr0(uint8 Moudle,uint8 Channel,uint32 Sr0Value)
{
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(Moudle, Channel);	
    PWM_SFR_INIT_USER_MODE_WRITE32((AtomChannelRegPtr->SR0.U),Sr0Value);

}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr1
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR1 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetAtomShadowValSr1(uint8 Moudle,uint8 Channel,uint32 Sr1Value)
{
  
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(Moudle, Channel);			  

    PWM_SFR_INIT_USER_MODE_WRITE32((AtomChannelRegPtr->SR1.U),Sr1Value);	

}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr1
** Parameter[in] 	: Moudle ,  Channel , CnoValue
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetAtomCounterCn0(uint8 Moudle,uint8 Channel,uint32 CnoValue)
{
  
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(Moudle, Channel);			  

    PWM_SFR_INIT_USER_MODE_WRITE32((AtomChannelRegPtr->CN0.U),(CnoValue & GTM_TIMER_MASK));	

}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr1
** Parameter[in] 	: Moudle ,  Channel , CnoValue
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetTomCounterCn0(uint8 Module,uint8 Channel,uint32 CnoValue)
{
  
    Ifx_GTM_TOM_CH* TomChannelRegPtr;

	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)Module, Channel);	  

    PWM_SFR_INIT_USER_MODE_WRITE32((TomChannelRegPtr->CN0.U),(CnoValue & GTM_TIMER_MASK));	

}

/*******************************************************************************
** Function Name	: Pwm3ph_SetDeadTime
** Parameter[in] 	: Deadtime
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: set Deadtime
*******************************************************************************/
void Pwm3ph_SetDeadTime(float32 deadtime)
{
   if((deadtime > (float32)PWM3PH_MIN_DEADTIME) && 
      (deadtime <= (float32)PWM3PH_MAX_DEADTIME)  
     )
     {
         CAL_PWM_Set_DeadTime_us_f32 = deadtime;
     }
     else 
     {
         /* make deadtime default to 3.5us */
         CAL_PWM_Set_DeadTime_us_f32 = (float32)PWM3PH_DEFAULT_DEADTIME;
     }
	CAL_Pwm3phB_ClosedThreshold_f32 = 1.0f - (float32)CAL_PWM_Set_DeadTime_us_f32/100.0f;
	CAL_Pwm3phT_ClosedThreshold_f32 = (float32)CAL_PWM_Set_DeadTime_us_f32/100.0f;	
}

/*******************************************************************************
** Function Name	: Pwm3ph_Read_TOM_CN0
** Parameter[in] 	: Channel NO
** Parameter[out] 	: None
** Return Value	  	: U32 GTM TOM Counter 
** Note			  	: None
** Description	  	: Pwm3ph_get_CN0
*******************************************************************************/
U32 Pwm3ph_get_CN0(uint8 Module , uint8 Channel)
{
	U32 CN0_Value = 0;

 	#if (PWM3PH_TOM_ATOM_SEL == 0U)
	CN0_Value = Pwm3ph_Read_TOM_CN0((uint8)Module,(uint8)Channel);
	#elif (PWM3PH_TOM_ATOM_SEL == 1U)
	CN0_Value = Pwm3ph_Read_ATOM_CN0(Module,Channel); 
	#endif  

	return CN0_Value;
}

/*******************************************************************************
** Function Name	: Pwm3ph_Read_TOM_CN0
** Parameter[in] 	: Channel NO
** Parameter[out] 	: None
** Return Value	  	: U32 GTM TOM Counter 
** Note			  	: None
** Description	  	: Pwm3ph_Read_TOM_CN0
*******************************************************************************/
U32 Pwm3ph_Read_TOM_CN0(uint8 Module , uint8 Channel)
{
    Ifx_GTM_TOM_CH* TomChannelRegPtr;
	U32 CN0_Ret_Value;

	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)Module, Channel);
    
	CN0_Ret_Value = (U32)TomChannelRegPtr->CN0.U;
	return (CN0_Ret_Value);
}

/*******************************************************************************
** Function Name	: Pwm3ph_Read_TOM_CN0
** Parameter[in] 	: Channel NO
** Parameter[out] 	: None
** Return Value	  	: U32 GTM TOM Counter 
** Note			  	: None
** Description	  	: Pwm3ph_Read_TOM_CN0
*******************************************************************************/
U32 Pwm3ph_Read_ATOM_CN0(uint8 Module , uint8 Channel)
{
    Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
    U32 CN0_Ret_Value;

	AtomChannelRegPtr = GTM_ATOM_CH_POINTER((uint8)Module, Channel);
    CN0_Ret_Value = (U32)AtomChannelRegPtr->CN0.U ;	
	return CN0_Ret_Value;
}


/*******************************************************************************
** Function Name	: Mcu_Gtm_SetTomShadowValSr0
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR1 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM TOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetTomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value)
{
  
    Ifx_GTM_TOM_CH* TomChannelRegPtr;

	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)Module, Channel);	  

    PWM_SFR_INIT_USER_MODE_WRITE32((TomChannelRegPtr->SR0.U),Sr0Value);	

}

/*******************************************************************************
** Function Name	: Mcu_Pwm3ph_Set_ShadowValSr1
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR1 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM TOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetTomShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value)
{
  
    Ifx_GTM_TOM_CH* TomChannelRegPtr;

	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)Module, Channel);	  

    PWM_SFR_INIT_USER_MODE_WRITE32((TomChannelRegPtr->SR1.U),Sr1Value);	

}
