/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   IoHwAb_ADC_StartConversion.c                                     */
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
/* [1.0.0]      10/23/2023    Shilpa H         Created                       */
/*****************************************************************************/

/******************************************************************************
 **                          Inclusion                                       **
 ******************************************************************************/
#include "Adc.h"
#include "HwAdc.h"
#include "IfxEvadc_reg.h"
#include "IfxSrc_reg.h"
#include "IoHwAb_Adc.h"
#include "PhC_DrvCfg.h"
#include "Platform_Types.h"
#include "Pwm3ph.h"

/******************************************************************************
 **                          Static Functions                                **
 ******************************************************************************/
static void DMA_Ch27_Group8_Ch12_HVDC_MCU(void);
static void DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB(void);
static void DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU(void);
static void DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU(void);
static void DMA_Ch11_Group2_Ch2_5V2_FB(void);
static void DMA_Ch12_Group2_Ch3_5V_COM_FB(void);
static void DMA_Ch13_Group2_Ch4_5V_REF_FB(void);
static void DMA_Ch14_Group2_Ch5_3V3_FB(void);
static void DMA_Ch15_Group2_Ch6_1V25_FB(void);
static void DMA_Ch16_Group2_Ch7_PSR_RELAY_FB(void);
static void DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB(void);
static void DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB(void);
static void DMA_Ch19_Group3_Ch3_5V1_FB(void);
static void DMA_Ch20_Group3_Ch4_2_048V_REF(void);
static void DMA_Ch25_Group8_Ch1_TMCOIL_MCU(void);
static void DMA_Ch26_Group8_Ch7_TOIL_MCU(void);

static void DMA_Ch24_Channel_Cos_P_Config(void);
static void DMA_Ch23_Channel_Cos_N_Config(void);
static void DMA_Ch22_Channel_Sin_P_Config(void);
static void DMA_Ch21_Channel_Sin_N_Config(void);
static void DMA_Ch25_Group8_Ch1_TMCOIL_MCU_Config(void);
static void DMA_Ch26_Group8_Ch7_TOIL_MCU_Config(void);
static void DMA_Ch27_Group8_Ch12_HVDC_MCU_Config(void);
static void DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB_Config(void);
static void DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU_Config(void);
static void DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU_Config(void);
static void DMA_Ch11_Group2_Ch2_5V2_FB_Config(void);
static void DMA_Ch12_Group2_Ch3_5V_COM_FB_Config(void);
static void DMA_Ch13_Group2_Ch4_5V_REF_FB_Config(void);
static void DMA_Ch14_Group2_Ch5_3V3_FB_Config(void);
static void DMA_Ch15_Group2_Ch6_1V25_FB_Config(void);
static void DMA_Ch16_Group2_Ch7_PSR_RELAY_FB_Config(void);
static void DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB_Config(void);
static void DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB_Config(void);
static void DMA_Ch19_Group3_Ch3_5V1_FB_Config(void);
static void DMA_Ch20_Group3_Ch4_2_048V_REF_Config(void);

/******************************************************************************
 **                          Static Variables                                **
 ******************************************************************************/
static uint32 Uint32_Sin_P_RegAddr;
static uint32 Uint32_Sin_N_RegAddr;
static uint32 Uint32_Cos_P_RegAddr;
static uint32 Uint32_Cos_N_RegAddr;

static uint32 Uint32_Group2_Ch2_RegAddr;
static uint32 Uint32_Group2_Ch3_RegAddr;
static uint32 Uint32_Group2_Ch4_RegAddr;
static uint32 Uint32_Group2_Ch5_RegAddr;
static uint32 Uint32_Group2_Ch6_RegAddr;
static uint32 Uint32_Group2_Ch7_RegAddr;

static uint32 Uint32_Group3_Ch1_RegAddr;
static uint32 Uint32_Group3_Ch2_RegAddr;
static uint32 Uint32_Group3_Ch3_RegAddr;
static uint32 Uint32_Group3_Ch4_RegAddr;

static uint32 Uint32_Group8_Ch1_RegAddr ;
static uint32 Uint32_Group8_Ch7_RegAddr ;
static uint32 Uint32_Group8_Ch12_RegAddr;
static uint32 Uint32_Group8_Ch14_RegAddr;
static uint32 Uint32_Group11_Ch1_RegAddr;
static uint32 Uint32_Group11_Ch6_RegAddr;

static uint32 VAR_Uint32_Adc_RES_Buffer_Cos_P_MCU;
static uint32 VAR_Uint32_Adc_RES_Buffer_Cos_N_MCU;
static uint32 VAR_Uint32_Adc_RES_Buffer_Sin_P_MCU;
static uint32 VAR_Uint32_Adc_RES_Buffer_Sin_N_MCU;

static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH2;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH3;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH4;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH5;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH6;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group2_CH7;

static uint32 VAR_Uint32_Adc_RES_Buffer_Group3_CH1;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group3_CH2;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group3_CH3;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group3_CH4;

static uint32 VAR_Uint32_Adc_RES_Buffer_Group8_CH1;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group8_CH7;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group8_CH12;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group8_CH14;

static uint32 VAR_Uint32_Adc_RES_Buffer_Group11_CH1;
static uint32 VAR_Uint32_Adc_RES_Buffer_Group11_CH6;

/*******************************************************************************
 **                 		  Function Source Code            		          **
 *******************************************************************************/

/*******************************************************************************
 ** Function Name	: IoMcu_SetTimerTrigger
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: IoMcu_SetTimerTrigger function for Enabling the Hardware Trigger
 *******************************************************************************/
static void IoMcu_SetTimerTrigger(void)
{			   
	Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_2);
	Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_3);
	Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_8);
	Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_11);
}

/*******************************************************************************
 ** Function Name	: IoHwAb_ADC_StartConversion
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: StartConversion of ADC sampling in IoHwAb
 *******************************************************************************/
void IoHwAb_ADC_StartConversion(void)
{
	DMA_Ch11_Group2_Ch2_5V2_FB();
	DMA_Ch12_Group2_Ch3_5V_COM_FB();
	DMA_Ch13_Group2_Ch4_5V_REF_FB();
	DMA_Ch14_Group2_Ch5_3V3_FB();
	DMA_Ch15_Group2_Ch6_1V25_FB();
	DMA_Ch16_Group2_Ch7_PSR_RELAY_FB();
	DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB();
	DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB();
	DMA_Ch19_Group3_Ch3_5V1_FB();
	DMA_Ch20_Group3_Ch4_2_048V_REF();

	DMA_Ch25_Group8_Ch1_TMCOIL_MCU();
	DMA_Ch26_Group8_Ch7_TOIL_MCU();
	DMA_Ch27_Group8_Ch12_HVDC_MCU();
	DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB();
	DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU();
	DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU();

	IoMcu_SetTimerTrigger();
}

/*******************************************************************************
 ** Function Name	: DMA_Ch11_Group2_Ch2_5V2_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch11_Group2_Ch2
 *******************************************************************************/
static void DMA_Ch11_Group2_Ch2_5V2_FB(void)
{
	Uint32_Group2_Ch2_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch2_ADC_RES_REG_SEL].U);
	DMA_Ch11_Group2_Ch2_5V2_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL11, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch12_Group2_Ch3_5V_COM_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch12_Group2_Ch3
 *******************************************************************************/
static void DMA_Ch12_Group2_Ch3_5V_COM_FB(void)
{
	Uint32_Group2_Ch3_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch3_ADC_RES_REG_SEL].U);
	DMA_Ch12_Group2_Ch3_5V_COM_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL12, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch13_Group2_Ch4_5V_REF_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch13_Group2_Ch4
 *******************************************************************************/
static void DMA_Ch13_Group2_Ch4_5V_REF_FB(void)
{
	Uint32_Group2_Ch4_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch4_ADC_RES_REG_SEL].U);
	DMA_Ch13_Group2_Ch4_5V_REF_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL13, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch14_Group2_Ch5_3V3_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch14_Group2_Ch5
 *******************************************************************************/
static void DMA_Ch14_Group2_Ch5_3V3_FB(void)
{
	Uint32_Group2_Ch5_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch5_ADC_RES_REG_SEL].U);
	DMA_Ch14_Group2_Ch5_3V3_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL14, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch15_Group2_Ch6_1V25_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch15_Group2_Ch6
 *******************************************************************************/
static void DMA_Ch15_Group2_Ch6_1V25_FB(void)
{
	Uint32_Group2_Ch6_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch6_ADC_RES_REG_SEL].U);
	DMA_Ch15_Group2_Ch6_1V25_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL15, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch16_Group2_Ch7_PSR_RELAY_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch16_Group2_Ch7
 *******************************************************************************/
static void DMA_Ch16_Group2_Ch7_PSR_RELAY_FB(void)
{
	Uint32_Group2_Ch7_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group2_ADC_HW_SEL].RES[ADC_Group2_Ch7_ADC_RES_REG_SEL].U);
	DMA_Ch16_Group2_Ch7_PSR_RELAY_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL16, &Config, NULL_PTR);
	Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL16);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch17_Group3_Ch1
 *******************************************************************************/
static void DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB(void)
{
	Uint32_Group3_Ch1_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group3_ADC_HW_SEL].RES[ADC_Group3_Ch1_ADC_RES_REG_SEL].U);
	DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL17, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch18_Group3_Ch2
 *******************************************************************************/
static void DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB(void)
{
	Uint32_Group3_Ch2_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group3_ADC_HW_SEL].RES[ADC_Group3_Ch2_ADC_RES_REG_SEL].U);
	DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL18, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch19_Group3_Ch3_5V1_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch19_Group3_Ch3
 *******************************************************************************/
static void DMA_Ch19_Group3_Ch3_5V1_FB(void)
{
	Uint32_Group3_Ch3_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group3_ADC_HW_SEL].RES[ADC_Group3_Ch3_ADC_RES_REG_SEL].U);
	DMA_Ch19_Group3_Ch3_5V1_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL19, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch20_Group3_Ch4_2_048V_REF
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch20_Group3_Ch4
 *******************************************************************************/
static void DMA_Ch20_Group3_Ch4_2_048V_REF(void)
{
	Uint32_Group3_Ch4_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group3_ADC_HW_SEL].RES[ADC_Group3_Ch4_ADC_RES_REG_SEL].U);
	DMA_Ch20_Group3_Ch4_2_048V_REF_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL20, &Config, NULL_PTR);
	Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL20);
}
/*******************************************************************************
 ** Function Name	: DMA_Ch25_Group8_Ch1_TMCOIL_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch5_Group8_Ch1
 *******************************************************************************/
static void DMA_Ch25_Group8_Ch1_TMCOIL_MCU(void)
{
	Uint32_Group8_Ch1_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group8_ADC_HW_SEL].RES[ADC_Group8_Ch1_ADC_RES_REG_SEL].U);
	DMA_Ch25_Group8_Ch1_TMCOIL_MCU_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL25, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch26_Group8_Ch7_TOIL_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch6_Group8_Ch7
 *******************************************************************************/
static void DMA_Ch26_Group8_Ch7_TOIL_MCU(void)
{
	Uint32_Group8_Ch7_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group8_ADC_HW_SEL].RES[ADC_Group8_Ch7_ADC_RES_REG_SEL].U);
	DMA_Ch26_Group8_Ch7_TOIL_MCU_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL26, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch27_Group8_Ch12_HVDC_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch7_Group8_Ch12
 *******************************************************************************/
static void DMA_Ch27_Group8_Ch12_HVDC_MCU(void)
{
	Uint32_Group8_Ch12_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group8_ADC_HW_SEL].RES[ADC_Group8_Ch12_ADC_RES_REG_SEL].U);
	DMA_Ch27_Group8_Ch12_HVDC_MCU_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL27, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch8_Group8_Ch14
 *******************************************************************************/
static void DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB(void)
{
	Uint32_Group8_Ch14_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group8_ADC_HW_SEL].RES[ADC_Group8_Ch14_ADC_RES_REG_SEL].U);
	DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL28, &Config, NULL_PTR);
	Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL28);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch9_Group11_Ch1
 *******************************************************************************/
static void DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU(void)
{
	Uint32_Group11_Ch1_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group11_ADC_HW_SEL].RES[ADC_Group11_Ch1_ADC_RES_REG_SEL].U);
	DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL29, &Config, NULL_PTR);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the DMA_Ch10_Group11_Ch6
 *******************************************************************************/
static void DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU(void)
{
	Uint32_Group11_Ch6_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Group11_ADC_HW_SEL].RES[ADC_Group11_Ch6_ADC_RES_REG_SEL].U);
	DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL30, &Config, NULL_PTR);
	Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL30);
}

/*******************************************************************************
 ** Function Name	: EddyCurrent_Init
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to enable the hardware trigger for Eddy current signals
 *******************************************************************************/
void EddyCurrent_Init(void)
{
	Uint32_Cos_P_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Cos_P_CUR_ADC_HW_SEL].RES[ADC_Cos_P_CUR_ADC_CH_SEL].U);
	Uint32_Cos_N_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Cos_N_CUR_ADC_HW_SEL].RES[ADC_Cos_N_CUR_ADC_CH_SEL].U);
	Uint32_Sin_P_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Sin_P_CUR_ADC_HW_SEL].RES[ADC_Sin_P_CUR_ADC_CH_SEL].U);
	Uint32_Sin_N_RegAddr = (uint32)(&MODULE_EVADC.G[ADC_Sin_N_CUR_ADC_HW_SEL].RES[ADC_Sin_N_CUR_ADC_CH_SEL].U);

	DMA_Ch24_Channel_Cos_P_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL24, &Config, NULL_PTR);

	DMA_Ch23_Channel_Cos_N_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL23, &Config, NULL_PTR);

	DMA_Ch22_Channel_Sin_P_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL22, &Config, NULL_PTR);

	DMA_Ch21_Channel_Sin_N_Config();
	Dma_ChUpdate((uint8)DMA_CHANNEL21, &Config, NULL_PTR);

	Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL24);

	Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_8_Eddy);
}

/*******************************************************************************
 ** Function Name	: DMA_Ch24_Channel_Cos_P
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch24_Channel_Cos_P_Config(void)
{
	Config.SourceAddress		= Uint32_Cos_P_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Cos_P_MCU);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch23_Channel_Cos_N
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch23_Channel_Cos_N_Config(void)
{
	Config.SourceAddress		= Uint32_Cos_N_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Cos_N_MCU);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch22_Channel_Sin_P
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch22_Channel_Sin_P_Config(void)
{
	Config.SourceAddress		= Uint32_Sin_P_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Sin_P_MCU);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch21_Channel_Sin_N
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch21_Channel_Sin_N_Config(void)
{
	Config.SourceAddress		= Uint32_Sin_N_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Sin_N_MCU);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch11_Group2_Ch2_5V2_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch11_Group2_Ch2_5V2_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch2_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH2);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch12_Group2_Ch3_5V_COM_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch12_Group2_Ch3_5V_COM_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch3_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH3);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch13_Group2_Ch4_5V_REF_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch13_Group2_Ch4_5V_REF_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch4_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH4);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch14_Group2_Ch5_3V3_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch14_Group2_Ch5_3V3_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch5_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH5);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch15_Group2_Ch6_1V25_FB_config
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch15_Group2_Ch6_1V25_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch6_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH6);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch16_Group3_Ch2_5V1_LIMIT_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch16_Group2_Ch7_PSR_RELAY_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group2_Ch7_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group2_CH7);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB_config
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch17_Group3_Ch1_5V_HV_STBY_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group3_Ch1_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group3_CH1);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB_config
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch18_Group3_Ch2_5V1_LIMIT_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group3_Ch2_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group3_CH2);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch19_Group3_Ch3_5V1_FB_config
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch19_Group3_Ch3_5V1_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group3_Ch3_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group3_CH3);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DMA_Ch20_Group3_Ch4_2_048V_REF_config
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch20_Group3_Ch4_2_048V_REF_Config(void)
{
	Config.SourceAddress		= Uint32_Group3_Ch4_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group3_CH4);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch25_Group8_Ch1_TMCOIL_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch25_Group8_Ch1_TMCOIL_MCU_Config(void)
{
	Config.SourceAddress		= Uint32_Group8_Ch1_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group8_CH1);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch26_Group8_Ch7_TOIL_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch26_Group8_Ch7_TOIL_MCU_Config(void)
{
	Config.SourceAddress		= Uint32_Group8_Ch7_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group8_CH7);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch27_Group8_Ch12_HVDC_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch27_Group8_Ch12_HVDC_MCU_Config(void)
{
	Config.SourceAddress		= Uint32_Group8_Ch12_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group8_CH12);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch28_Group8_Ch14_HV_LV_SUP_FB_Config(void)
{
	Config.SourceAddress		= Uint32_Group8_Ch14_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group8_CH14);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch29_Group11_Ch1_TCOOL_IN_MCU_Config(void)
{
	Config.SourceAddress		= Uint32_Group11_Ch1_RegAddr;
	Config.DestAddress			= (uint32)(&VAR_Uint32_Adc_RES_Buffer_Group11_CH1);
	Config.ControlAdicr			= DMA_ADICR_REG_VAL;
	Config.ControlChcsr			= DMA_CHSCR_REG_VAL;
	Config.Config				= DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			= DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			= DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				= DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	= STD_ON;
	Config.UpdateDestAddress	= STD_ON;
	Config.UpdateControlAdicr	= STD_OFF;
	Config.UpdateControlChcsr	= STD_OFF;
	Config.UpdateConfig			= STD_OFF;
	Config.UpdateShadowConfig	= STD_OFF;
	Config.UpdateAddressCrc		= STD_OFF;
	Config.UpdateDataCrc		= STD_OFF;
}


/*******************************************************************************
 ** Function Name	: DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
static void DMA_Ch30_Group11_Ch6_TCOOL_OUT_MCU_Config(void)
{
	Config.SourceAddress		=Uint32_Group11_Ch6_RegAddr;
	Config.DestAddress			=(uint32)(&VAR_Uint32_Adc_RES_Buffer_Group11_CH6);
	Config.ControlAdicr			=DMA_ADICR_REG_VAL;
	Config.ControlChcsr			=DMA_CHSCR_REG_VAL;
	Config.Config				=DMA_CONFIG_REG_VAL;
	Config.ShadowConfig			=DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc			=DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc				=DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress	=STD_ON;
	Config.UpdateDestAddress	=STD_ON;
	Config.UpdateControlAdicr	=STD_OFF;
	Config.UpdateControlChcsr	=STD_OFF;
	Config.UpdateConfig			=STD_OFF;
	Config.UpdateShadowConfig	=STD_OFF;
	Config.UpdateAddressCrc		=STD_OFF;
	Config.UpdateDataCrc		=STD_OFF;
}



/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH2
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH2
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH2(void)
{
	return (VAR_Uint32_Adc_RES_Buffer_Group2_CH2);
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH3
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH3
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH3(void)
{
	return (VAR_Uint32_Adc_RES_Buffer_Group2_CH3);
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH4
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH4
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH4(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group2_CH4;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH5
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH5
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH5(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group2_CH5;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH6
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH5
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH6(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group2_CH6;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group2_CH7
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group2_CH5
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH7(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group2_CH7;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group3_CH1
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group3_CH1
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group3_CH1(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group3_CH1;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group3_CH2
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group3_CH2
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group3_CH2(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group3_CH2;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group3_CH3
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group3_CH3
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group3_CH3(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group3_CH3;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group3_CH4
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group3_CH4
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group3_CH4(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group3_CH4;
}


/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group8_CH1
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group8_CH1
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group8_CH1(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group8_CH1;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group8_CH7
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group8_CH7
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group8_CH7(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group8_CH7;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group8_CH12
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group8_CH12
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group8_CH12(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group8_CH12;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group8_CH14
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group8_CH14
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group8_CH14(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group8_CH14;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group11_CH1
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group11_CH1
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group11_CH1(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group11_CH1;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Group11_CH6
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group11_CH6
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Group11_CH6(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Group11_CH6;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Cos_P_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_Uint32_Adc_RES_Buffer_Cos_P_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Cos_P_MCU(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Cos_P_MCU;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Cos_N_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Cos_N_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Cos_N_MCU(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Cos_N_MCU;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Sin_N_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Sin_N_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Sin_N_MCU(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Sin_N_MCU;
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_Sin_P_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_Uint32_Adc_RES_Buffer_Sin_P_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_Sin_P_MCU(void)
{
	return VAR_Uint32_Adc_RES_Buffer_Sin_P_MCU;
}

/*******************************************************************************
 ** Function Name	: SRE_ValueUpdate
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to set the SRE bits for ADC and DMA ISRs
 *******************************************************************************/
void SRE_ValueUpdate(void)
{
	SRC_DMACH11.B.SRE    = STD_ON;
	SRC_VADCG2SR2.B.SRE  = STD_ON;
 
	SRC_DMACH17.B.SRE    = STD_ON;
	SRC_VADCG3SR2.B.SRE  = STD_ON;
 
	SRC_DMACH25.B.SRE     = STD_ON;
	SRC_VADCG8SR1.B.SRE  = STD_ON;
 
	SRC_DMACH21.B.SRE     = STD_ON;
	SRC_VADCG8SR2.B.SRE  = STD_ON;
 
	SRC_DMACH29.B.SRE     = STD_ON;
	SRC_VADCG11SR2.B.SRE = STD_ON;
 
	SRC_DMACH31.B.SRE    = STD_ON;
	SRC_VADCG1SR2.B.SRE  = STD_ON;
}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr0
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR0 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 0 (SR0)
*******************************************************************************/
void Mcu_Gtm_SetAtomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value)
{
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(Module, Channel);	
    ADC_SFR_INIT_USER_MODE_WRITE32((AtomChannelRegPtr->SR0.U),Sr0Value);
}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetAtomShadowValSr1
** Parameter[in] 	: ModuleNumber ,  ChannelNumber , SR1 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM ATOM Shadow Register 1 (SR1)
*******************************************************************************/
void Mcu_Gtm_SetAtomShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value)
{
  
  Ifx_GTM_ATOM_CH* AtomChannelRegPtr; /* Ptr to ATOM Channel Reg  */
  
  AtomChannelRegPtr = \
                 GTM_ATOM_CH_POINTER(Module, Channel);			  
    ADC_SFR_INIT_USER_MODE_WRITE32((AtomChannelRegPtr->SR1.U),Sr1Value);	
}

/*******************************************************************************
** Function Name	: ADC_Set_ShadowValSr1
** Parameter[in] 	: uint8 Module,uint8 Channel,uint32 Sr0Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Set_ShadowValSr1
*******************************************************************************/
void ADC_Set_ShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value)
{
#if (ADC_TOM_ATOM_SEL == 0U)
	Mcu_Gtm_SetTomShadowValSr1(Module,Channel,Sr1Value);
#elif (ADC_TOM_ATOM_SEL == 1U)
	Mcu_Gtm_SetAtomShadowValSr1(Module,Channel,Sr1Value);    
#endif
}

/*******************************************************************************
** Function Name	: ADC_Set_ShadowValSr0
** Parameter[in] 	: uint8 Module,uint8 Channel,uint32 Sr0Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Set_ShadowValSr0
*******************************************************************************/
void ADC_Set_ShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value)
{
#if (ADC_TOM_ATOM_SEL == 0U)
	Mcu_Gtm_SetTomShadowValSr0(Module,Channel,Sr0Value);
#elif (ADC_TOM_ATOM_SEL == 1U)
	Mcu_Gtm_SetAtomShadowValSr0(Module,Channel,Sr0Value);   
#endif

}

/*******************************************************************************
** Function Name	: ADC_Disable_Gtm_Timer_Channel
** Parameter[in] 	: uint8 Module,uint8 Channel
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Disable_OutputChannel
*******************************************************************************/
void ADC_Disable_Gtm_Timer_Channel(uint8 Module,uint8 Channel)
{
#if (ADC_TOM_ATOM_SEL == 0U)
	Mcu_17_Gtm_TomChannelDisable(Module,Channel);
#elif (ADC_TOM_ATOM_SEL == 1U)
	Mcu_17_Gtm_AtomChannelDisable(Module,Channel);
#endif
}

/*******************************************************************************
** Function Name	: ADC_Enable_Gtm_Timer_Channel
** Parameter[in] 	: uint8 Module,uint8 Channel
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Enable_OutputChannel
*******************************************************************************/
void ADC_Enable_Gtm_Timer_Channel(uint8 Module,uint8 Channel)
{
#if (ADC_TOM_ATOM_SEL == 0U)
	Mcu_17_Gtm_TomChannelEnable(Module,Channel,MCU_GTM_TIMER_OUT_ENABLE);
#elif (ADC_TOM_ATOM_SEL == 1U)
	Mcu_17_Gtm_AtomChannelEnable(Module,Channel,MCU_GTM_TIMER_OUT_ENABLE);
#endif
}

/*TOM*/
/*******************************************************************************
** Function Name	: Mcu_Gtm_SetTomShadowValSr0
** Parameter[in] 	: ModuleNumber, ChannelNumber, SR0 Value
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Update GTM TOM Shadow Register 0 (SR0)
*******************************************************************************/
void Mcu_Gtm_SetTomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value)
{
    Ifx_GTM_TOM_CH* TomChannelRegPtr;
	TomChannelRegPtr = GTM_TOM_CH_POINTER((uint8)Module, Channel);
    ADC_SFR_INIT_USER_MODE_WRITE32((TomChannelRegPtr->SR0.U),Sr0Value);;
}

/*******************************************************************************
** Function Name	: Mcu_Gtm_SetTomShadowValSr1
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
    ADC_SFR_INIT_USER_MODE_WRITE32((TomChannelRegPtr->SR1.U),Sr1Value);	
}

/*******************************************************************************
** Function Name	: Fault_Detection_Test
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Fault Detection of ADC sampling in IoHwAb
*******************************************************************************/
void Fault_Detection_Test(void)
{
    /*Serial ADC*/
		temp_fault_tcoolant_outlet= atd_tcoolant_outlet();
	   if((temp_fault_tcoolant_outlet<IoHwAb_ADC_Min)||(temp_fault_tcoolant_outlet>IoHwAb_ADC_Max))
	   {
			ADC_Tcoolant_Outlet_Fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_Tcoolant_Outlet_Fault=E_OK;
	   }

	   temp_fault_tcoolant_inlet  = atd_tcoolant_inlet();
	   if((temp_fault_tcoolant_inlet<IoHwAb_ADC_Min)||(temp_fault_tcoolant_inlet>IoHwAb_ADC_Max))
	   {
		   ADC_Tcoolant_Inlet_Fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_Tcoolant_Inlet_Fault=E_OK;
	   }

	   temp_fault_vdc               = atd_vdc();
	   if((temp_fault_vdc<IoHwAb_ADC_Min)||(temp_fault_vdc>IoHwAb_ADC_Max))
	   {
		   ADC_vdc_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vdc_fault=E_OK;
	   }

	   temp_fault_vmrdm          = atd_vmrdm();
	   if((temp_fault_vmrdm<IoHwAb_ADC_Min)||(temp_fault_vmrdm>IoHwAb_ADC_Max))
	   {
		   ADC_vmrdm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vmrdm_fault=E_OK;
	   }

	   temp_fault_vim5vm    = atd_vim5vm();
	   if((temp_fault_vim5vm<IoHwAb_ADC_Min)||(temp_fault_vim5vm>IoHwAb_ADC_Max))
	   {
		   ADC_vim5vm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vim5vm_fault=E_OK;
	   }

	   temp_fault_v5vm   = atd_v5vm();
	   if((temp_fault_v5vm<IoHwAb_ADC_Min)||(temp_fault_v5vm>IoHwAb_ADC_Max))
	   {
		   ADC_v5vm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_v5vm_fault=E_OK;
	   }

	   temp_fault_vpr      = atd_vpr();
	   if((temp_fault_vpr<IoHwAb_ADC_Min)||(temp_fault_vpr>IoHwAb_ADC_Max))
	   {
		   ADC_vpr_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vpr_fault=E_OK;
	   }

	   temp_fault_5vref      = atd_5vref();
	   if((temp_fault_5vref<IoHwAb_ADC_Min)||(temp_fault_5vref>IoHwAb_ADC_Max))
	   {
		   ADC_5vref_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_5vref_fault=E_OK;
	   }

	   temp_fault_v3_3vm       = atd_v3_3vm();
	   if((temp_fault_v3_3vm<IoHwAb_ADC_Min)||(temp_fault_v3_3vm>IoHwAb_ADC_Max))
	   {
		   ADC_v3_3vm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_v3_3vm_fault=E_OK;
	   }

	   temp_fault_v1_3vm      = atd_v1_3vm();
	   if((temp_fault_v1_3vm<IoHwAb_ADC_Min)||(temp_fault_v1_3vm>IoHwAb_ADC_Max))
	   {
		   ADC_v1_3vm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_v1_3vm_fault=E_OK;
	   }

	   temp_fault_v3_3_1vsnt   = atd_v3_3_1vsnt();
	   if((temp_fault_v3_3_1vsnt<IoHwAb_ADC_Min)||(temp_fault_v3_3_1vsnt>IoHwAb_ADC_Max))
	   {
		   ADC_v3_3_1vsnt_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_v3_3_1vsnt_fault=E_OK;
	   }

	   temp_fault_psrm        = atd_psrm();
	   if((temp_fault_psrm<IoHwAb_ADC_Min)||(temp_fault_psrm>IoHwAb_ADC_Max))
	   {
		   ADC_psrm_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_psrm_fault=E_OK;
	   }

	   temp_fault_tmcoil         = atd_tmcoil();
	   if((temp_fault_tmcoil<IoHwAb_ADC_Min)||(temp_fault_tmcoil>IoHwAb_ADC_Max))
	   {
		   ADC_tmcoil_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_tmcoil_fault=E_OK;
	   }

	   temp_fault_toil     = atd_toil();
	   if((temp_fault_toil<IoHwAb_ADC_Min)||(temp_fault_toil>IoHwAb_ADC_Max))
	   {
		   ADC_toil_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_toil_fault=E_OK;
	   }

	   temp_fault_5v1_limit_fb = atd_5v1_limit_fb();
	   if((temp_fault_5v1_limit_fb<IoHwAb_ADC_Min)||(temp_fault_5v1_limit_fb>IoHwAb_ADC_Max))
	   {
		   ADC_5V1_limit_fb_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_5V1_limit_fb_fault=E_OK;
	   }



		/*Phase Current*/
	   temp_fault_ima   = atd_ima();
	   if((temp_fault_ima<IoHwAb_ADC_Min)||(temp_fault_ima>IoHwAb_ADC_Max))
	   {
		   ADC_ima_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_ima_fault=E_OK;
	   }

	   temp_fault_imb      = atd_imb();
	   if((temp_fault_imb<IoHwAb_ADC_Min)||(temp_fault_imb>IoHwAb_ADC_Max))
	   {
		   ADC_imb_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_imb_fault=E_OK;
	   }

	   temp_fault_imc        = atd_imc();
	   if((temp_fault_imc<IoHwAb_ADC_Min)||(temp_fault_imc>IoHwAb_ADC_Max))
	   {
		   ADC_imc_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_imc_fault=E_OK;
	   }

		/*Feedback Current*/
	   temp_fault_vadc_pcos_sync   = atd_vadc_pcos_sync();
	   if((temp_fault_vadc_pcos_sync<IoHwAb_ADC_Min)||(temp_fault_vadc_pcos_sync>IoHwAb_ADC_Max))
	   {
		   ADC_vadc_pcos_sync_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vadc_pcos_sync_fault=E_OK;
	   }

	   temp_fault_vadc_ncos_sync = atd_vadc_ncos_sync();
	   if((temp_fault_vadc_ncos_sync<IoHwAb_ADC_Min)||(temp_fault_vadc_ncos_sync>IoHwAb_ADC_Max))
	   {
		   ADC_vadc_ncos_sync_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vadc_ncos_sync_fault=E_OK;
	   }

	   temp_fault_vadc_nsin_sync  = atd_vadc_nsin_sync();
	   if((temp_fault_vadc_nsin_sync<IoHwAb_ADC_Min)||(temp_fault_vadc_nsin_sync>IoHwAb_ADC_Max))
	   {
		   ADC_vadc_nsin_sync_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vadc_nsin_sync_fault=E_OK;
	   }

	   temp_fault_vadc_psin_sync   = atd_vadc_psin_sync();
	   if((temp_fault_vadc_psin_sync<IoHwAb_ADC_Min)||(temp_fault_vadc_psin_sync>IoHwAb_ADC_Max))
	   {
		   ADC_vadc_psin_sync_fault=E_NOT_OK;
	   }
	   else
	   {
		   ADC_vadc_psin_sync_fault=E_OK;
	   }

}

