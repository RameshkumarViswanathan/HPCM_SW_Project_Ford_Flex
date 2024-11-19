#if !defined(HWPWM_H)
#define HWPWM_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwPwm.h                                                          */
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
/* [1.0.0]     03.01.2023    Chandra Prakash      Created                    */
/* [1.0.0]     10.16.2023    Santhosh Addula      PWM Prototypes definations */
/*                                                Updated                    */
/*****************************************************************************/
/* Header Include Files */
#include "Std_Types.h"
#include "Pwm3ph.h"

#define HW_PWM_INIT_NOT_DONE   (0u)
#define HW_PWM_INIT_DONE       (1u)
/* Function prototype */

/* Set the Motor's dead-time in timer counts */
 void pwm_deadtime_m(U32 u32_deadtime);


/* Specifies the ½ period for the Motor's complementary 
   PWM signals in units of timer counts */
void pwm_m (U32 u32_period, FLAG b_polarity_a, FLAG b_polarity_b, FLAG b_polarity_c, 
            U32 u32_duty_cycle_a, U32 u32_duty_cycle_b, U32 u32_duty_cycle_c);
            

/* Returns the count of the timer that generates the PWM signals */
 U32 pwm_timer_cnt_m (void);


/* Forced On for Motor's phase a PWM */
 void pwm_forced_on_am (void);


/* Forced On for Motor's phase b PWM */
 void pwm_forced_on_bm (void);

/* Forced On for Motor's phase c PWM */
 void pwm_forced_on_cm (void);

/* Forced Off for Motor's phase a PWM */
 void pwm_forced_off_am (void);


/* Forced Off for Motor's phase b PWM */
 void pwm_forced_off_bm (void);

/* Forced Off for Motor's phase c PWM */
 void pwm_forced_off_cm (void);

/* Forced On/Off disabled for Motor's phase a PWM */
 void pwm_forced_disable_am(void);


/* Forced On/Off disabled for Motor's phase b PWM */
 void pwm_forced_disable_bm(void);


/* Forced On/Off disabled for Motor's phase c PWM */
 void pwm_forced_disable_cm(void);

/* Returns a 0 if the Motor PWM counter is counting up. If counting down, 
   the function returns a1 */
 U32 pwm_count_status_m(void);

/* Spare PWM signal to the development connector */
 void pwm_sifjp_out1 (U32 u32_duty_cycle,
U32 u32_period);

/* PWM command feedback from Safety Chip, Phase A high side duty cycle counts */
 U32 pwm_fbstate_ah(void);

/* PWM command feedback from Safety Chip, Phase B high side duty cycle counts */
 U32 pwm_fbstate_bh(void);

/* PWM command feedback from Safety Chip, Phase C high side duty cycle counts */
 U32 pwm_fbstate_ch(void);

/* PWM command feedback from Safety Chip, Phase A Low side duty cycle counts */
 U32 pwm_fbstate_al(void);

/* PWM command feedback from Safety Chip, Phase B Low side duty cycle counts */
 U32 pwm_fbstate_bl(void);

/* PWM command feedback from Safety Chip, Phase C Low side duty cycle counts */
 U32 pwm_fbstate_cl(void);

/* This interface reads and returns the 32 bit value of reg name */
 U32 pwm_get_reg_status(U32 reg_name);

/* This interface clears all the errors of the ERR_UCE_STATUS register, 
   ERR_ASIC_STATUS register and ERR_STATUS register simultaneously */
void pwm_clr_reg_status(void);
void PwmNotification_RefChannel();

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
void Read_PhaseTemp_FB(void);

#endif /* HWPWM_H */