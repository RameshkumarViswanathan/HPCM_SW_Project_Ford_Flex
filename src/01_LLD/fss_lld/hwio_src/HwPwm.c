/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwPwm.c                                                          */
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
/* [1]         03.01.2023    Santhosh         Created                        */
/*****************************************************************************/


/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "HwPwm.h"
#include "L2Sample_FS.h"
#include "PhC_DrvCfg.h"
#include "Dio.h" 			/*TODO: Tech M  Added for debugging need to removed for release*/
#include "Testapp_PWM.h" 	/*TODO: Tech M  Added for debugging need to removed for release*/
/* global variable declarations */
static Pwm3phInIFType PwmIn;
static U32 PwmNotification_counter =0;
U8 Flag = 0;
float32 f32_duty_cycle_a = 0.0f;
float32 f32_duty_cycle_b = 0.0f;
float32 f32_duty_cycle_c = 0.0f;
static U8 u8_PWM_Last_Mode = (uint8)PWM3PH_MODE_NORMAL;
U8 hw_PWM_Init = 0;

U32 Read_PM_U_Temp = 0;
U32 Read_PM_V_Temp = 0;
U32 Read_PM_W_Temp = 0;
U32 Read_fbstate_ah_dc_count = 0;
U32 Read_fbstate_bh_dc_count = 0;
U32 Read_fbstate_ch_dc_count = 0;
U32 Read_fbstate_al_dc_count = 0;
U32 Read_fbstate_bl_dc_count = 0;
U32 Read_fbstate_cl_dc_count = 0;

/*****************************************************************************/
/*                      Private Object Like Macro Definitions                */
/*****************************************************************************/


/*****************************************************************************/
/*                      Global Function Declarations                         */
/*****************************************************************************/

/*****************************************************************************/
/*                      Private Function Declarations                        */
/*****************************************************************************/
void set_delay();


/*****************************************************************************/
/*                      Global Function Definitions                          */
/*****************************************************************************/


/*****************************************************************************/
/*                      Private Function Definitions                         */
/*****************************************************************************/

/*******************************************************************************
** Function Name	: pwm_deadtime_m(U32 u32_deadtime)
** Parameter[in] 	: u32_deadtime
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	:Function to define the Deadtime for PWM pluses
*******************************************************************************/
 void pwm_deadtime_m(U32 u32_deadtime)
{
   Pwm3ph_SetDeadTime((float32)((u32_deadtime*2)/100.0f));
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_m (U32 u32_period, FLAG b_polarity_a, FLAG b_polarity_b, 
**              FLAG b_polarity_c, U32 u32_duty_cycle_a, U32 u32_duty_cycle_b, 
**              U32 u32_duty_cycle_c)
** Parameter[in] 	:U32 u32_period, FLAG b_polarity_a, FLAG b_polarity_b, 
**                   FLAG b_polarity_c, U32 u32_duty_cycle_a, U32 u32_duty_cycle_b, 
**                   U32 u32_duty_cycle_c
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: Function to control the pwm polarity and on/off time
*******************************************************************************/
void pwm_m (U32 u32_period, FLAG b_polarity_a, FLAG b_polarity_b, FLAG b_polarity_c,
              U32 u32_duty_cycle_a, U32 u32_duty_cycle_b, U32 u32_duty_cycle_c)
{
   U32 u32_period_l = u32_period;
   U32 u32_duty_cycle_a_l =u32_duty_cycle_a;
   U32 u32_duty_cycle_b_l =u32_duty_cycle_b;
   U32 u32_duty_cycle_c_l =u32_duty_cycle_c;

   float32 f32_duty_cycle_a_l = 0.0f;
   float32 f32_duty_cycle_b_l = 0.0f;
   float32 f32_duty_cycle_c_l = 0.0f;
   f32_duty_cycle_a_l = ((float32)u32_duty_cycle_a_l/(float32)u32_period_l);
   f32_duty_cycle_b_l = ((float32)u32_duty_cycle_b_l/(float32)u32_period_l);
   f32_duty_cycle_c_l = ((float32)u32_duty_cycle_c_l/(float32)u32_period_l);

   f32_duty_cycle_a = ((float32)1.0 -f32_duty_cycle_a_l);
   f32_duty_cycle_b = ((float32)1.0 -f32_duty_cycle_b_l);
   f32_duty_cycle_c = ((float32)1.0 -f32_duty_cycle_c_l);
   PwmIn.Pwm_Freq_u32 = (u32_period * 2);   
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_NORMAL;
   // PwmIn.Pwm_Mode_u8  = u8_PWM_Last_Mode;

	PwmIn.PwmDutyCyclePhaseU1_f32 = f32_duty_cycle_a;
	PwmIn.PwmDutyCyclePhaseV1_f32 = f32_duty_cycle_b;
	PwmIn.PwmDutyCyclePhaseW1_f32 = f32_duty_cycle_c;
   PwmIn.b_polarity_a            = b_polarity_a;
   PwmIn.b_polarity_b            = b_polarity_b;
   PwmIn.b_polarity_c            = b_polarity_c;
   PwmIn.b_forced_a              = (uint8)PWM3PH_FORCED_DISABLE;
   PwmIn.b_forced_b              = (uint8)PWM3PH_FORCED_DISABLE;
   PwmIn.b_forced_c              = (uint8)PWM3PH_FORCED_DISABLE;
    Pwm3ph_SetOutput(&PwmIn);
}                        

/*******************************************************************************
** Function Name	: U32 pwm_timer_cnt_m(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: Function to read the pwm counter value
*******************************************************************************/
 U32 pwm_timer_cnt_m (void)
{
   return (Pwm3ph_get_CN0((uint8)PWM3PH_TOM_ATOM_MOUDLE_SEL,(uint8)PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF));
}

/*******************************************************************************
** Function Name	: pwm_forced_on_am (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON for Motor Phase A PWM
*******************************************************************************/
void pwm_forced_on_am (void)
{
   /*set pwm Mode to PWM3PH_MODE_UP_ON_DOWN_OFF*/
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   /*set b_forced_a to PWM3PH_FORCED_ON*/
   PwmIn.b_forced_a   = (uint8)PWM3PH_FORCED_ON;   
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_on_bm (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON for Motor Phase B PWM
*******************************************************************************/
void pwm_forced_on_bm (void)
{
   /*set pwm Mode to PWM3PH_MODE_UP_ON_DOWN_OFF*/
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   /*set b_forced_b to PWM3PH_FORCED_ON*/
   PwmIn.b_forced_b   = (uint8)PWM3PH_FORCED_ON;   
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_on_cm (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON for Motor Phase C PWM
*******************************************************************************/
void pwm_forced_on_cm (void)
{
   /*set pwm Mode to PWM3PH_MODE_UP_ON_DOWN_OFF*/
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_ON_DOWN_OFF;
   /*set b_forced_c to PWM3PH_FORCED_ON*/
   PwmIn.b_forced_c   = (uint8)PWM3PH_FORCED_ON;    
   Pwm3ph_SetOutput(&PwmIn);	
}

/*******************************************************************************
** Function Name	: pwm_forced_off_am (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED OFF for Motor Phase A PWM
*******************************************************************************/
void pwm_forced_off_am (void)
{
   /*set Pwm Mode to PWM3PH_MODE_UP_OFF_DOWN_ON */   
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   /*set b_forced_a to PWM3PH_FORCED_OFF */
   PwmIn.b_forced_a   = (uint8)PWM3PH_FORCED_OFF;     
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_off_bm (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED OFF for Motor Phase B PWM
*******************************************************************************/
void pwm_forced_off_bm (void)
{
   /*set Pwm Mode to PWM3PH_MODE_UP_OFF_DOWN_ON */   
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   /*set b_forced_b to PWM3PH_FORCED_OFF */
   PwmIn.b_forced_b   = (uint8)PWM3PH_FORCED_OFF;        
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_off_cm (void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED OFF for Motor Phase C PWM
*******************************************************************************/
void pwm_forced_off_cm (void)
{
   /*set Pwm Mode to PWM3PH_MODE_UP_OFF_DOWN_ON */   
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_UP_OFF_DOWN_ON;
   /*set b_forced_c to PWM3PH_FORCED_OFF */
   PwmIn.b_forced_c   = (uint8)PWM3PH_FORCED_OFF;      
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_disable_am(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON/OFF Disabled for Motor Phase A PWM
*******************************************************************************/
void pwm_forced_disable_am(void)
{
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_NORMAL;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_NORMAL;
   PwmIn.b_forced_a   = (uint8)PWM3PH_FORCED_DISABLE;
   Pwm3ph_SetOutput(&PwmIn);
}

/*******************************************************************************
** Function Name	: pwm_forced_disable_bm(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON/OFF Disabled for Motor Phase B PWM
*******************************************************************************/
void pwm_forced_disable_bm(void)
{
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_NORMAL;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_NORMAL;
   PwmIn.b_forced_b   = (uint8)PWM3PH_FORCED_DISABLE;
   Pwm3ph_SetOutput(&PwmIn); 
}

/*******************************************************************************
** Function Name	: pwm_forced_disable_cm(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: FORCED ON/OFF Disabled for Motor Phase C PWM
*******************************************************************************/
void pwm_forced_disable_cm(void)
{
   PwmIn.Pwm_Mode_u8  = (uint8)PWM3PH_MODE_NORMAL;
   u8_PWM_Last_Mode   = (uint8)PWM3PH_MODE_NORMAL;
   PwmIn.b_forced_c   = (uint8)PWM3PH_FORCED_DISABLE;
   Pwm3ph_SetOutput(&PwmIn);   
}

/*******************************************************************************
** Function Name	: pwm_count_status_m(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: 0 - counting up, 1 - counting down
** Note			  	:
**
** Description	  	: Function to read counter counting status
*******************************************************************************/
 U32 pwm_count_status_m(void)
{
   U32 current_value;
   U32 current_value_after_delay;
   current_value = Pwm3ph_get_CN0((uint8)PWM3PH_TOM_ATOM_MOUDLE_SEL,(uint8)PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF);
   set_delay();
   current_value_after_delay = Pwm3ph_get_CN0((uint8)PWM3PH_TOM_ATOM_MOUDLE_SEL,(uint8)PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF);
   
   if(current_value_after_delay > current_value )
   {
      return 0;
   }
   else if(current_value_after_delay < current_value)
   {
      return 1;
   }
   else
   {

   }
}

/*******************************************************************************
** Function Name	: pwm_sifjp_out1 (U32 u32_duty_cycle, U32 u32_period)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: 0 - counting up, 1 - counting down
** Note			  	: Spare PWM signal to the development connector. The maximum 
**                    period will be 655.35 us. At POR default to a period of 
**                    100.0us and a duty cycle of 0. The specified duty cycle will 
**                    be the length of time that it is on. Units are specified in 
**                    item #8. 
**
** Description	  	: 
*******************************************************************************/
 void pwm_sifjp_out1 (U32 u32_duty_cycle, U32 u32_period)
{

}


/*******************************************************************************
** Function Name	: pwm_fbstate_ah(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase A high side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase A high side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_ah(void) 
{
    U32 fbstate_ah_dc_count;
		fbstate_ah_dc_count = FS_3phPWMUH_Duty.ActiveTime;
      return fbstate_ah_dc_count;
}

/*******************************************************************************
** Function Name	: U32 pwm_fbstate_bh(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase B high side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase B high side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_bh(void)
{
    U32 fbstate_bh_dc_count;
		fbstate_bh_dc_count = FS_3phPWMVH_Duty.ActiveTime;
      return fbstate_bh_dc_count;

}

/*******************************************************************************
** Function Name	: pwm_fbstate_ch(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase C high side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase C high side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_ch(void) 
{
    U32 fbstate_ch_dc_count;
		fbstate_ch_dc_count = FS_3phPWMWH_Duty.ActiveTime;
      return fbstate_ch_dc_count;
}

/*******************************************************************************
** Function Name	: U32 pwm_fbstate_al(void)
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase A Low side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase A Low side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_al(void)
{
   U32 fbstate_al_dc_count;
	fbstate_al_dc_count = FS_3phPWMUL_Duty.ActiveTime;
   return fbstate_al_dc_count;
}

/*******************************************************************************
** Function Name	: pwm_fbstate_bl(void) 
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase B Low side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase B Low side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_bl(void) 
{
   U32 fbstate_bl_dc_count;
	fbstate_bl_dc_count = FS_3phPWMVL_Duty.ActiveTime;
   return fbstate_bl_dc_count;
}

/*******************************************************************************
** Function Name	: pwm_fbstate_cl(void) 
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: U32 - phase C Low side duty cycle count
** Note			  	:
**
** Description	  	: Function to read phase C Low side duty cycle count
*******************************************************************************/
 U32 pwm_fbstate_cl(void)
{
   U32 fbstate_cl_dc_count;
	fbstate_cl_dc_count = FS_3phPWMWL_Duty.ActiveTime;
   return fbstate_cl_dc_count;
}

void PwmNotification_RefChannel()
{   
	/*Enable HW trigger ADC*/
   PwmNotification_counter++;
   /*TODO: Tech M  Added for debugging need to removed for release*/
   if(PWM_TEST_PORT == TRUE)
   {
       Toggle_DIO(0x20);
   }
   /*TODO: Tech M  Added for debugging need to removed for release*/
	SRC_GPSR_GPSR0_SR1.B.SETR = 1;
   SRC_GPSR_GPSR0_SR2.B.SETR = 1;
}

void set_delay()
{
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();
   _nop();

}

/*******************************************************************************
** Function Name	: Read_PhaseTemp_FB(void) 
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	: None
** Note			  	:
**
** Description	  	: Stub Function to Read All Phase Duty Count and Temaprature Feedback 
**                   with FORD API's
*******************************************************************************/

void Read_PhaseTemp_FB(void)
{
   Read_fbstate_ah_dc_count = pwm_fbstate_ah();
   Read_fbstate_bh_dc_count = pwm_fbstate_bh();
   Read_fbstate_ch_dc_count = pwm_fbstate_ch();
   Read_fbstate_al_dc_count = pwm_fbstate_al();
   Read_fbstate_bl_dc_count = pwm_fbstate_bl();
   Read_fbstate_cl_dc_count = pwm_fbstate_cl();

   Read_PM_U_Temp = atd_tpu();
   Read_PM_V_Temp = atd_tpv();
   Read_PM_W_Temp = atd_tpw();
}