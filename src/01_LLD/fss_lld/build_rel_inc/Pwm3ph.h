#ifndef PWM_3PH_H_
#define PWM_3PH_H_

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Pwm3ph.h                                                         */
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
#include "Pwm3ph_Cfg.h"
#include "IfxPort_reg.h"
#include "TLF35585.h"

/*******************************************************************************
**                          Macro Definition                                  **
*******************************************************************************/
#define   _CDD_SIMULATION               (0u)      /*set 1 Simulation mode;set 0 Normal mode  */
#define   _CDD_INTEGRATION              (0u)

#define PWM_FAULT_NONE                  (0x0000U)
#define PWM_FAULT_FIRST_EDGE_U          (0x0001U)
#define PWM_FAULT_SECOND_EDGE_U         (0x0002U)
#define PWM_FAULT_FIRST_EDGE_V          (0x0004U)
#define PWM_FAULT_SECOND_EDGE_V         (0x0008U)
#define PWM_FAULT_FIRST_EDGE_W          (0x0010U)
#define PWM_FAULT_SECOND_EDGE_W         (0x0020U)
#define PWM_FAULT_SR0_SR1_UT            (0x0040U)
#define PWM_FAULT_SR0_SR1_UB            (0x0080U)
#define PWM_FAULT_SR0_SR1_VT            (0x0100U)
#define PWM_FAULT_SR0_SR1_VB            (0x0200U)
#define PWM_FAULT_SR0_SR1_WT            (0x0400U)
#define PWM_FAULT_SR0_SR1_WB            (0x0800U)

/*PWM TOM CH CTRL SL Bit Masks*/
#define PWM_CTRL_SL_SET_CL_MASK         (0x01107800U)
#define PWM_CTRL_SL_SET_ST_MASK         (0x00000800U)
#define PWM_CTRL_SL_CLR_CL_MASK         (0x01107000U)
#define PWM_ATOM_CTRL_SL_CLR_CL_MASK    (0x01107003U)
#define PWM_ATOM_CTRL_RST_CLR_MASK      (0x01007803U)
#define PWM_ATOM_CTRL_SL_SET_CL_MASK    (0x01107803U)
#define PWM_ZERO_U                      (0U)
#define PWM_ONE_U                       (1U)
#define GTM_TIMER_MASK                  (0x00FFFFFFU)


/* PWM TOM CH CTRL SL Bit reg update */
#define PWM_SFR_INIT_USER_MODE_MODIFY32(reg,clearmask,setmask)              \
      { uint32 val ; (val) = (reg) ; (val) &= (clearmask);                  \
        (val) |= (setmask);(reg) = (val);}

#define PWM_SFR_INIT_USER_MODE_WRITE32(reg,value)                           \
                                ((reg) = (unsigned_int)(value))

#define PWM_SFR_DEINIT_USER_MODE_MODIFY32(reg,clearmask,setmask)             \
      { uint32 val ; (val) = (reg) ; (val) &= (clearmask);                   \
      (val) |= (setmask);(reg) = (val);}
	  
/*******************************************************************************
**                          Typedef Definition                         	      **
*******************************************************************************/

typedef struct 
{
	float32 PwmDutyCyclePhaseU1_f32;
	float32 PwmDutyCyclePhaseV1_f32;
	float32 PwmDutyCyclePhaseW1_f32;
	uint32  Pwm_Freq_u32;
	uint8   Pwm_Mode_u8;
	FLAG b_polarity_a;
	FLAG b_polarity_b;
	FLAG b_polarity_c;
	uint8 b_forced_a;
	uint8 b_forced_b;
	uint8 b_forced_c;
} Pwm3phInIFType;

#if (_CDD_SIMULATION == STD_ON)
typedef struct 
{
	uint16 Pwm_Ticks_OnEdge_UT_ui16;
	uint16 Pwm_Ticks_OffEdge_UT_ui16;
	uint16 Pwm_Ticks_OnEdge_UB_ui16;
	uint16 Pwm_Ticks_OffEdge_UB_ui16;
	uint16 Pwm_Ticks_OnEdge_VT_ui16;
	uint16 Pwm_Ticks_OffEdge_VT_ui16;
	uint16 Pwm_Ticks_OnEdge_VB_ui16;
	uint16 Pwm_Ticks_OffEdge_VB_ui16;
	uint16 Pwm_Ticks_OnEdge_WT_ui16;
	uint16 Pwm_Ticks_OffEdge_WT_ui16;
	uint16 Pwm_Ticks_OnEdge_WB_ui16;
	uint16 Pwm_Ticks_OffEdge_WB_ui16;
} Pwm3phOutIFType;
#endif


/*******************************************************************************
**                  Global Variables With Extern Linkage               	      **
*******************************************************************************/

#if(PWM3PH_PARAMETER_TYPE == 3U)
extern	uint8 VAR_Pwm_Mode_u8;
extern	uint32 VAR_Pwm_Freq_u32;
extern	float32 VAR_Pwm_DeadTime_In_f32;

extern	float32 VAR_PwmDutyCyclePhaseU_f32;
extern	float32 VAR_PwmDutyCyclePhaseV_f32;
extern	float32 VAR_PwmDutyCyclePhaseW_f32;

extern	uint16 ui16_Pwm_Fault_Flag_Last;
extern	uint32 ui32_Pwm_Fault_Counter;

extern volatile uint8 VAR_Cpld_Normal_Work_u8;
#endif

#if(PWM3PH_PARAMETER_TYPE == 12U)
extern	uint8 VAR_Pwm_Mode_u8;
extern	uint16 ui16_Pwm_Period_Tick;
extern	uint16 ui16_Pwm_Ticks_OnEdge_UT;
extern	uint16 ui16_Pwm_Ticks_OffEdge_UT;
extern	uint16 ui16_Pwm_Ticks_OnEdge_UB;
extern	uint16 ui16_Pwm_Ticks_OffEdge_UB;

extern	uint16 ui16_Pwm_Ticks_OnEdge_VT;
extern	uint16 ui16_Pwm_Ticks_OffEdge_VT;
extern	uint16 ui16_Pwm_Ticks_OnEdge_VB;
extern	uint16 ui16_Pwm_Ticks_OffEdge_VB;

extern	uint16 ui16_Pwm_Ticks_OnEdge_WT;
extern	uint16 ui16_Pwm_Ticks_OffEdge_WT;
extern	uint16 ui16_Pwm_Ticks_OnEdge_WB;
extern	uint16 ui16_Pwm_Ticks_OffEdge_WB;

extern	uint16 ui16_Pwm_Fault_Flag_Last;
extern	uint32 ui32_Pwm_Fault_Counter;
#endif


/*******************************************************************************
**                        Global Function Prototypes              	    	  **
*******************************************************************************/

/*******************************************************************************
** Function Name	: Pwm3ph_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	
** Description	  	: inital
*******************************************************************************/
extern	void Pwm3ph_Init(void);

/*******************************************************************************
** Function Name	: Pwm3ph_EnableIsrTrigger
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
** Description	  	: EnableIsrTrigger
*******************************************************************************/
extern	void Pwm3ph_EnableIsrTrigger(void);


/*******************************************************************************
** Function Name	: Pwm3ph_ShunDownallChannelImmediately
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
** Description	  	: 
*******************************************************************************/
extern	void Pwm3ph_ShunDownallChannelImmediately(void);

/*******************************************************************************
** Function Name	: Pwm3ph_SetOutput
** Parameter[in] 	: const Pwm3phInIFType* in
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	:
**
** Description	  	: SetOutput
*******************************************************************************/
#if ( (_CDD_SIMULATION == STD_OFF)||(_CDD_INTEGRATION == STD_ON) )
extern void Pwm3ph_SetOutput(const Pwm3phInIFType* in);
#else
extern void Pwm3ph_SetOutput(const Pwm3phInIFType* in, Pwm3phOutIFType* out );
#endif



/*******************************************************************************
**                        Local Function Prototypes                           **
*******************************************************************************/

U32 Pwm3ph_get_CN0(uint8 Module , uint8 Channel);
U32 Pwm3ph_Read_TOM_CN0(uint8 Module , uint8 Channel);
U32 Pwm3ph_Read_ATOM_CN0(uint8 Module , uint8 Channel);
void set_PWM_ATOM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity);
void set_PWM_TOM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity);
void set_PWM_ChannelPolarity(uint8 ModuleNumber , uint8 ChannelNumber , U32 Polarity);
void Mcu_Gtm_SetAtomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value);
void Mcu_Gtm_SetAtomShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value);
void Mcu_Gtm_SetAtomCounterCn0(uint8 Module,uint8 Channel,uint32 CnoValue);
void Mcu_Gtm_SetTomCounterCn0(uint8 Module,uint8 Channel,uint32 CnoValue);
void Mcu_Gtm_SetTomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value);
void Mcu_Gtm_SetTomShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value);
void Pwm3ph_SetPolarity_PhaseA(U32 polarity);
void Pwm3ph_SetPolarity_PhaseB(U32 polarity);
void Pwm3ph_SetPolarity_PhaseC(U32 polarity);
void Pwm3ph_SetDeadTime(float32 deadtime);


#endif /* PWM_3PH_H_ */
