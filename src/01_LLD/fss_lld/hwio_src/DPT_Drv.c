/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   DPT_Drv.c                                                        */
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
/* [1.0.0]      10/23/2023    Sivaprasath         Created                    */
/*****************************************************************************/


/*******************************************************************************
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include "LvPower_Drv.h"
#include "DPT_Time.h"
#include "IfxPort_reg.h"
#include "IfxSrc_reg.h"
#include "DPT_Drv.h"
#include "Pwm3ph.h"
#include "Os.h"
#include "Mcu_17_TimerIp.h"
#include "Pwm_17_GtmCcu6.h"
#include "HwPwm.h"

/*******************************************************************************
**                          Macro Definition                                  **
*******************************************************************************/

/*******************************************************************************
**                          Typedef Definition                                **
*******************************************************************************/

/*******************************************************************************
**                   Static Local Variables Definition                        **
*******************************************************************************/

/*******************************************************************************
**                   Static Function Definition                               **
*******************************************************************************/
// static void DPT_IO_Ctr(uint8 Channel, uint8 DptPulse, uint32 ReqTimeTicks1, \
//                                     uint32 ReqTimeTicks2, uint32 ReqTimeTicks3);

void DPT_IO_Ctr(uint32 au8_DPT_Input_val[]);
/*******************************************************************************
**                     Global Variables Definition                            **
*******************************************************************************/
// #pragma section ".rodata.Calib_32"
// const volatile uint8 u8_DPT_CAL_byte[DPT_CAL_BYTE_LENGTH] = {0,0,0,0,0,0,0};
uint8 u8_DPT_CAL_byte[DPT_CAL_BYTE_LENGTH] = {0,0,0,0,0,0,0};	
// #pragma section

uint8 u8_DPT_Pulse_Channel1;
uint8 u8_DPT_Pulse_Channel2;
uint8 u8_DPT_S_D_Pulse;
uint8 u8_DPT_Start_Pulse;
uint8 u8_DPT_Start_Pulse_Back = 0;
uint8 u8_DPT_Start_Pulse_Flag;
uint32 u32_DPT_Pulse_ReqTimeTicks1;
uint32 u32_DPT_Pulse_ReqTimeTicks2;
uint32 u32_DPT_Pulse_ReqTimeTicks3;
uint32 u32_DPT_CAL_byte_Calc[DPT_CAL_BYTE_LENGTH] = {0,0,0,0,0,0,0};
uint32 P02_ICU0;
uint32 P02_ICU4;
U8 u8_dpt_test_count = FALSE;
U8 u8_stop_dpt_test_count =FALSE;

/*******************************************************************************
**                  Static Local Function Declaration                         **
*******************************************************************************/

/*******************************************************************************
**                        Function Source Code                                **
*******************************************************************************/

/*******************************************************************************
** Function Name	: DPT_IO_Ctr
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Double pulse test  I / O control
*******************************************************************************/
// void DPT_IO_Ctr(uint8 Channel, uint8 DptPulse, uint32 ReqTimeTicks1, 
//                                     uint32 ReqTimeTicks2, uint32 ReqTimeTicks3)

void DPT_IO_Ctr(uint32 au8_DPT_Input_val[])
{

    uint32 ChannelH;
    uint32 ChannelL;
	uint32 DptPulse;
	uint32 ReqTimeTicks1;
	uint32 ReqTimeTicks2;
	uint32 ReqTimeTicks3;

	ChannelH      = au8_DPT_Input_val[0];    /*channel 33 34 35 36 37 38*/
    ChannelL      = au8_DPT_Input_val[1];    /*channel 33 34 35 36 37 38*/
	DptPulse      = au8_DPT_Input_val[2];    /*Single or double or SCKTLS or SCKTHS*/
	ReqTimeTicks1 = au8_DPT_Input_val[4];
	ReqTimeTicks2 = au8_DPT_Input_val[5];
	ReqTimeTicks3 = au8_DPT_Input_val[6];

		if ((ReqTimeTicks1 < DPT_REQ_TIME_TICK1_RANGE_MAX) &&
			(ReqTimeTicks3 < DPT_REQ_TIME_TICK3_RANGE_MAX) &&
			(ReqTimeTicks2 < DPT_REQ_TIME_TICK2_RANGE_MAX)
			)
		{
			if( DptPulse == (uint8)DPT_SINGLE_PLUSE )/*Single pulse*/
			{
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks1);/*pulse width */
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_LOW);
			}
			else if( DptPulse == (uint8)DPT_DOUBLE_PLUSE )/*Double pulse */
			{
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks1);/*pulse 1 width*/
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_LOW);

				Timer_DelayTicks(ReqTimeTicks2);/*width between two pulses */

				IoSigDio_Set((Dio_ChannelType)ChannelL,(Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks3);/*pulse 2 width*/
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_LOW);
			}
			/*Double pulse short circuit high side*/
            else if( DptPulse == (uint8)DPT_SHORT_CIRCUIT_HS )
			{
				IoSigDio_Set((Dio_ChannelType)ChannelH, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks1);/*pulse 1 width*/
            	IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks2);/*width between two pulses */
            	IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_LOW);
            	Timer_DelayTicks(ReqTimeTicks3);/*pulse 2 width*/
				IoSigDio_Set((Dio_ChannelType)ChannelH,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
			}
			/*Double pulse short circuit Low side*/
            else if( DptPulse == (uint8)DPT_SHORT_CIRCUIT_LS )
			{
				IoSigDio_Set((Dio_ChannelType)ChannelL, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks1);/*pulse 1 width*/
            	IoSigDio_Set((Dio_ChannelType)ChannelH, (Dio_LevelType)DPT_PULSE_LELVE_HIGH);
				Timer_DelayTicks(ReqTimeTicks2);/*width between two pulses */
            	IoSigDio_Set((Dio_ChannelType)ChannelH, (Dio_LevelType)DPT_PULSE_LELVE_LOW);
            	Timer_DelayTicks(ReqTimeTicks3);/*pulse 2 width*/
				IoSigDio_Set((Dio_ChannelType)ChannelL,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
			}
			else
			{
				IoSigDio_Set((Dio_ChannelType)ChannelH,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
 				IoSigDio_Set((Dio_ChannelType)ChannelL,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
				DptPulse = (uint8)DPT_SINGLE_PLUSE;
			}
		}
		else
		{
			IoSigDio_Set((Dio_ChannelType)ChannelH,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
 			IoSigDio_Set((Dio_ChannelType)ChannelL,(Dio_LevelType)DPT_PULSE_LELVE_LOW);
		}

}

/*******************************************************************************
** Function Name	: DPT_MainFunction
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Main function of double pulse program
*******************************************************************************/
void DPT_MainFunction(void)
{
	u8_DPT_Pulse_Channel1 = u8_DPT_CAL_byte[0];          /*channel 33 34 35 36 37 38*/
    u8_DPT_Pulse_Channel2 = u8_DPT_CAL_byte[1];          /*channel 33 34 35 36 37 38*/
	u8_DPT_S_D_Pulse      = u8_DPT_CAL_byte[2];          /*Single or double pulse selection 1(Single)/2(double)*/
	u8_DPT_Start_Pulse    = u8_DPT_CAL_byte[3];          /*Start command */
	

	u32_DPT_Pulse_ReqTimeTicks1 = (uint32)(u8_DPT_CAL_byte[4] * DPT_REQ_TIME_MULTIPLE_FACTOR) + DPT_REQ_TIME_OFFSET; /*pulse 1 0~60 us*/
	u32_DPT_Pulse_ReqTimeTicks2 = (uint32)(u8_DPT_CAL_byte[5] * DPT_REQ_TIME_MULTIPLE_FACTOR) + DPT_REQ_TIME_OFFSET; /*width between two pulses 0~20 us*/
	u32_DPT_Pulse_ReqTimeTicks3 = (uint32)(u8_DPT_CAL_byte[6] * DPT_REQ_TIME_MULTIPLE_FACTOR) + DPT_REQ_TIME_OFFSET; /*pulse 1 0~60 us*/
   
    u32_DPT_CAL_byte_Calc[0] = u8_DPT_Pulse_Channel1;
	u32_DPT_CAL_byte_Calc[1] = u8_DPT_Pulse_Channel2;
	u32_DPT_CAL_byte_Calc[2] = u8_DPT_S_D_Pulse;
	u32_DPT_CAL_byte_Calc[3] = u8_DPT_Start_Pulse;
	u32_DPT_CAL_byte_Calc[4] = u32_DPT_Pulse_ReqTimeTicks1;
	u32_DPT_CAL_byte_Calc[5] = u32_DPT_Pulse_ReqTimeTicks2;
	u32_DPT_CAL_byte_Calc[6] = u32_DPT_Pulse_ReqTimeTicks3;

    /* Check whether Start command received */
	if(u8_DPT_Start_Pulse == (uint8)DPT_CMD_START)
	{
		if(u8_DPT_Start_Pulse_Back == (uint8)FALSE)
		{
			u8_DPT_Start_Pulse_Flag = (uint8)DPT_PULSE_START_FLAG_SET;
		}
	}
	else
	{
		u8_DPT_Start_Pulse_Back = (uint8)TRUE;
	}

	if(u8_DPT_Start_Pulse_Flag == (uint8)DPT_PULSE_START_FLAG_SET)
	{   
        /* Check Channel is within the range */
		if(( u8_DPT_Pulse_Channel1 > (uint8)DPT_CHANNEL_MIN ) && 
           ( u8_DPT_Pulse_Channel1 < (uint8)DPT_CHANNEL_MAX ) ||
		   ( u8_DPT_Pulse_Channel2 > (uint8)DPT_CHANNEL_MIN ) && 
           ( u8_DPT_Pulse_Channel2 < (uint8)DPT_CHANNEL_MAX ) 
          )
		{
			if(( u32_DPT_Pulse_ReqTimeTicks1 > 0 ) && 
               ( u32_DPT_Pulse_ReqTimeTicks2 > 0 ) &&
               ( u32_DPT_Pulse_ReqTimeTicks3 > 0 )
              )
			{
				DPT_IO_Ctr(u32_DPT_CAL_byte_Calc);
			}
		}
		else
		{
           /* Do Nothing */
		}
		u8_DPT_Start_Pulse_Flag = (uint8)DPT_PULSE_START_FLAG_NOTSET;
	}
	else
	{
       /* Do Nothing */
	}
}

/*******************************************************************************
** Function Name	: DPT_Irq_Init
** Parameter[in] 	: None
**
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of Interrupt in double pulse experiment
*******************************************************************************/
void DPT_Irq_Init(void)
{
    DisableAllInterrupts();
}

/*******************************************************************************
** Function Name	: DPT_IO_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
void DPT_IO_Init(void)
{
    /* 
     * IOCR0 - I/O Control Register 
     * Pn_IOCR0 controls the Pn.[3:0] port lines
     * Pn_IOCR4 controls the Pn.[7:4] port lines
     * Pn_IOCR8 controls the Pn.[11:8] port lines
     * Pn_IOCR12 controls the Pn.[15:12] port lines
     * F8 indicate alternative function 7
     * 80 indicate particular port pin as output, pushpull and general i/o
     */
    DPT_Irq_Init();
	MODULE_P02.IOCR0.U &= 0x00000000;   
	MODULE_P02.IOCR0.U |= 0x80808080;  /*Set P2.0,P2.1,P2.2 as output, pushpull, general I/O*/ 

	MODULE_P02.IOCR4.U &= 0xF8000000;
	MODULE_P02.IOCR4.U |= 0x00808080;  /*Set P2.3,P2.4,P2.5 as output, pushpull, general I/O*/
	IoSigDio_Set(DIO_CHANNEL_2_1, 0);
	IoSigDio_Set(DIO_CHANNEL_2_2, 0);
	IoSigDio_Set(DIO_CHANNEL_2_3, 0);
	IoSigDio_Set(DIO_CHANNEL_2_4, 0);
	IoSigDio_Set(DIO_CHANNEL_2_5, 0);
	IoSigDio_Set(DIO_CHANNEL_2_0, 0);
}

void DPT_Test_init(void)
{ 
	DPT_IO_Init();
	Pwm3ph_ShunDownallChannelImmediately();
}

void Run_DPT_Test()
{
   DPT_MainFunction();
}

void Stop_DPT_Test(void)
{
	MODULE_P02.IOCR0.U &= 0x00000000;   
	MODULE_P02.IOCR0.U |= 0x88888888;  /*Set P2.0,P2.1,P2.2 as output, pushpull, general I/O*/ 
	MODULE_P02.IOCR4.U &= 0xF8000000;
	MODULE_P02.IOCR4.U |= 0x00888888; /*Set P2.3,P2.4,P2.5 as output, pushpull, general I/O*/  
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_PERIOD_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_PERIOD_REF,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_EDDY,PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_FSC,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL_ADC_TRIG_PHASE,PWM3PH_TOM_ATOM_CHANNEL_SEL_ADC_TRIG_PHASE,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UT,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_UB,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VT,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_VB,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WT,MCU_GTM_TIMER_OUT_ENABLE);
	Mcu_17_Gtm_AtomChannelEnable(PWM3PH_TOM_ATOM_MOUDLE_SEL,PWM3PH_TOM_ATOM_CHANNEL_SEL_WB,MCU_GTM_TIMER_OUT_ENABLE);
	Pwm3ph_Init(); 
	EnableAllInterrupts();
	pwm_m(10000U, 0,0,0,5000,5000,5000);
}
