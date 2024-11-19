#ifndef PWM3PH_CFG_H_
#define PWM3PH_CFG_H_

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Pwm3ph_Cfg.h                                                     */
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
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include "Std_Types.h"


/*******************************************************************************
**                          Macro Definition                                  **
*******************************************************************************/

#define PWM3PH_PARAMETER_TYPE                   (3U)

/*PWM Modes */
#define PWM3PH_MODE_UP_ON_DOWN_UON              (5U)
#define PWM3PH_MODE_UP_UON_DOWN_ON              (4U)
#define PWM3PH_MODE_NORMAL                      (3U)
#define PWM3PH_MODE_UP_ON_DOWN_OFF              (2U)
#define PWM3PH_MODE_UP_OFF_DOWN_ON              (1U)
#define PWM3PH_MODE_UP_OFF_DOWN_OFF             (0U)    /*FreeWheel or IDLE*/
/* PWM Values in Ticks */
// 1s = 100M Ticks ; 100us = 
#define PWM3PH_MAX_FREQ_VALUE                   (200000U)   /* MAX FREQ VALUE IN TICKS */
#define PWM3PH_MIN_FREQ_VALUE                   (1000U )   /* MIN FREQ VALUE IN TICKS */
#define PWM3PH_DEF_FREQ_VALUE                   (10000U)   /* DEF FREQ VALUE IN TICKS */
#define	PWM3PH_MIN_TICKS_VALUE                  (10U   )   /* PWM Min TICKS */
#define	PWM3PH_MIN_DEADTIME_VALUE               (10U   )   /* PWM MIN DEAD TIME IN TICKS */


/* PWM ATOM/TOM CHANNEL  */
#ifdef PWM_TOM
#define PWM3PH_TOM_ATOM_SEL                     (0U )      /*0:TOM;1:ATOM*/
#define PWM3PH_TOM_ATOM_MOUDLE_SEL              (0U )      /*TOM/ATOM CHannel */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_UT          (8U )      /*UT TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_UB          (9U )      /*UB TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_VT          (10U)      /*VT TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_VB          (11U)      /*VB TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_WT          (12U)      /*WT TOM/ATOM*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_WB          (13U)      /*WB TOM/ATOM ͨ*/

#define PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY    (1U )      /*TOM/ATOM MODULE */
#define PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE   (2U )      /*TOM/ATOM MODULE */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE  (4U )      /*TOM/ATOM CHannel - Phase */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC    (7U )      /*TOM/ATOM CHannel - Phase */
#define PWM3PH_PWM_REF_CHANNEL                      (0u)

/*PERIOD TOM/ATOM REF*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF  (7U)
/*ADC TRIGGER TOM/ATOM ͨADC TRIG*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG    (15U) 
#else
#define PWM3PH_TOM_ATOM_SEL                     (1U )      /*0:TOM;1:ATOM*/
#define PWM3PH_TOM_ATOM_MOUDLE_SEL              (1U )      /*TOM/ATOM CHannel */
#define PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL       (0U )      /*TOM/ATOM CHannel */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_UT          (0U )      /*UT TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_UB          (1U )      /*UB TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_VT          (2U)      /*VT TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_VB          (3U)      /*VB TOM/ATOM ͨ*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_WT          (4U)      /*WT TOM/ATOM*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_WB          (5U)      /*WB TOM/ATOM ͨ*/

#define PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY    (0U )      /*TOM/ATOM MODULE */
#define PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE   (0U )      /*TOM/ATOM MODULE */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE  (4U )      /*TOM/ATOM CHannel - Phase */
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC    (5U )      /*TOM/ATOM CHannel - Eddy */
#define PWM3PH_PWM_REF_CHANNEL                      (0u)
/*PERIOD TOM/ATOM REF*/
#define PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF      (7U)
#endif

#define PWM3PH_ADC_MOUDLE_SEL                   (0U)         
#define PWM3PH_MAX_PERIOD_VALUE                 (200000U    ) /* PWM MAX PERIOD TICKS */
#define PWM3PH_GTM_CLOCK_VALUE                  (200000000U)	/* GTM FRequency 200M for FORD */


/*TODO : Tech M Modified for FORD FORCED Changes*/
#define PWM3PH_PWM_MODE                         (1U)       /*PWM_Mode*/
#define PWM3PH_MAX_DEADTIME                     (12.0)
#define PWM3PH_MIN_DEADTIME                     (0.0)
#define PWM3PH_DEFAULT_DEADTIME                 (7)   /*default Deatime should be 3.5us*/
#define PWM3PH_FORCED_ON                        (1U)
#define PWM3PH_FORCED_OFF                       (2U)
#define PWM3PH_FORCED_DISABLE                   (3U)
#define PWM3PH_NORMAL_POLARITY                  (0U)

/*******************************************************************************
**                          Typedef Definition                                **
*******************************************************************************/

/*******************************************************************************
**                  Global Variables With Extern Linkage                      **
*******************************************************************************/

/*******************************************************************************
**                        Global Function Prototypes                          **
*******************************************************************************/

#endif /* PWM3PH_CFG_H_ */

