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
#include "PhC_Drv.h"
#include "IfxEvadc_reg.h"
#include "Dem.h"
#include "PhC_DrvCfg.h"
#include "Dma.h"
#include "HwAdc.h"
#include "Mcal_DmaLib.h"
/*******************************************************************************
 **                          Macro Definition                         		  **
 *******************************************************************************/

/*******************************************************************************
 **                   Static Local Variables Definition              		  **
 *******************************************************************************/
static uint32 VAR_ui32_Adc_RES_Buffer_U_CUR_MCU;
static uint32 VAR_ui32_Adc_RES_Buffer_V_CUR_MCU;
static uint32 VAR_ui32_Adc_RES_Buffer_W_CUR_MCU;

/*******************************************************************************
 **                     Global Variables Definition              		      **
 *******************************************************************************/
uint32 ui32_U_RegAddr;
uint32 ui32_V_RegAddr;
uint32 ui32_W_RegAddr;

void DmaCh31_AdcG3_Ch0_Config(void);
void DmaCh32_AdcG2_Ch0_Config(void);
void DmaCh33_AdcG2_Ch0_Config(void);
/*******************************************************************************
 **                 		  Function Source Code            		          **
 *******************************************************************************/

/*******************************************************************************
 ** Function Name	: PhC_Init
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: GP ADC initialize
 *******************************************************************************/
void PhC_Init(void)
{
	/*three phase current*/
	/*use DMA to transport three-phase current AD data*/
	ui32_U_RegAddr = \
			(uint32)(&MODULE_EVADC.G[ADC_U_CUR_ADC_HW_SEL].RES[ADC_U_CUR_ADC_CH_SEL].U);
	ui32_V_RegAddr = \
			(uint32)(&MODULE_EVADC.G[ADC_V_CUR_ADC_HW_SEL].RES[ADC_V_CUR_ADC_CH_SEL].U);
	ui32_W_RegAddr = \
			(uint32)(&MODULE_EVADC.G[ADC_W_CUR_ADC_HW_SEL].RES[ADC_W_CUR_ADC_CH_SEL].U);

	DmaCh31_AdcG3_Ch0_Config();
	Dma_ChUpdate((uint8)ADC_W_CUR_DMA_CHANNEL,&Config,NULL_PTR );

	DmaCh32_AdcG2_Ch0_Config();
	Dma_ChUpdate((uint8)ADC_V_CUR_DMA_CHANNEL,&Config,NULL_PTR );

	DmaCh33_AdcG2_Ch0_Config();
	Dma_ChUpdate((uint8)ADC_U_CUR_DMA_CHANNEL,&Config,NULL_PTR );

	Dma_ChEnableHardwareTrigger((uint8)ADC_U_CUR_DMA_CHANNEL);

	/*Enable HW trigger ADC*/
	Adc_EnableHardwareTrigger(PHC_GROUP_U_CUR);
}

/*******************************************************************************
 ** Function Name	: DmaCh33_AdcG2_Ch0
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
void DmaCh33_AdcG2_Ch0_Config(void)
{
	Config.SourceAddress      =  ui32_U_RegAddr;
	Config.DestAddress        =  (uint32)(&VAR_ui32_Adc_RES_Buffer_U_CUR_MCU);
	Config.ControlAdicr       =  DMA_ADICR_REG_VAL;
	Config.ControlChcsr       =  DMA_CHSCR_REG_VAL;
	Config.Config             =  DMA_CONFIG_REG_VAL;
	Config.ShadowConfig       =  DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc         =  DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc            =  DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress=  STD_ON;
	Config.UpdateDestAddress  =  STD_ON;
	Config.UpdateControlAdicr =  STD_OFF;
	Config.UpdateControlChcsr =  STD_OFF;
	Config.UpdateConfig       =  STD_OFF;
	Config.UpdateShadowConfig =  STD_OFF;
	Config.UpdateAddressCrc   =  STD_OFF;
	Config.UpdateDataCrc      =  STD_OFF;
}  

/*******************************************************************************
 ** Function Name	: DmaCh32_AdcG2_Ch0
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
void DmaCh32_AdcG2_Ch0_Config(void)
{  
	Config.SourceAddress         =  ui32_V_RegAddr;
	Config.DestAddress           =  (uint32)(&VAR_ui32_Adc_RES_Buffer_V_CUR_MCU);
	Config.ControlAdicr          =  DMA_ADICR_REG_VAL;
	Config.ControlChcsr          =  DMA_CHSCR_REG_VAL;
	Config.Config                =  DMA_CONFIG_REG_VAL;
	Config.ShadowConfig          =  DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc            =  DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc               =  DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress   =  STD_ON;
	Config.UpdateDestAddress     =  STD_ON;
	Config.UpdateControlAdicr    =  STD_OFF;
	Config.UpdateControlChcsr    =  STD_OFF;
	Config.UpdateConfig          =  STD_OFF;
	Config.UpdateShadowConfig    =  STD_OFF;
	Config.UpdateAddressCrc      =  STD_OFF;
	Config.UpdateDataCrc         =  STD_OFF;
}

/*******************************************************************************
 ** Function Name	: DmaCh31_AdcG3_Ch0
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to update the register values for Source adrress,
 ** 				  destination address, ADICR, CHSCR, CONFIG, SHADOW, AddressCrc,r
 ** 				  DataCrc
 *******************************************************************************/
void DmaCh31_AdcG3_Ch0_Config(void)
{
	Config.SourceAddress        =  ui32_W_RegAddr;
	Config.DestAddress          =  (uint32)(&VAR_ui32_Adc_RES_Buffer_W_CUR_MCU);
	Config.ControlAdicr         =  DMA_ADICR_REG_VAL;
	Config.ControlChcsr         =  DMA_CHSCR_REG_VAL;
	Config.Config               =  DMA_CONFIG_REG_VAL;
	Config.ShadowConfig         =  DMA_SHADOW_CONFIG_REG_VAL;
	Config.AddressCrc           =  DMA_ADDRESS_CRC_REG_VAL;
	Config.DataCrc              =  DMA_DATA_CRC_REG_VAL;
	Config.UpdateSourceAddress  =  STD_ON;
	Config.UpdateDestAddress    =  STD_ON;
	Config.UpdateControlAdicr   =  STD_OFF;
	Config.UpdateControlChcsr   =  STD_OFF;
	Config.UpdateConfig         =  STD_OFF;
	Config.UpdateShadowConfig   =  STD_OFF;
	Config.UpdateAddressCrc     =  STD_OFF;
	Config.UpdateDataCrc        =  STD_OFF;
}  

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_U_Cur_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_U_CUR_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_U_Cur_MCU(void)
{
	return (VAR_ui32_Adc_RES_Buffer_U_CUR_MCU);
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_V_Cur_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_V_CUR_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_V_Cur_MCU(void)
{
	return (VAR_ui32_Adc_RES_Buffer_V_CUR_MCU);
}

/*******************************************************************************
 ** Function Name	: ADC_Res_Buffer_W_Cur_MCU
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_W_CUR_MCU
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 ADC_Res_Buffer_W_Cur_MCU(void)
{
	return (VAR_ui32_Adc_RES_Buffer_W_CUR_MCU);
}



