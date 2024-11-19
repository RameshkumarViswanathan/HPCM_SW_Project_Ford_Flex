
#ifndef INFRA_STUB_API_IOHWAB_ADC_H_
#define INFRA_STUB_API_IOHWAB_ADC_H_

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   IoHwAb_Adc.h                                                     */
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
/* [1.0.0]     06.12.2022    Shilpa H         Created                        */
/*****************************************************************************/

/*******************************************************************************
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include "Adc_Cfg.h"
#include "Adc.h"
#include "Std_Types.h"
#include "LvPower_Drv.h"

/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
#define DMA_ADICR_REG_VAL                       (0x00000000U)
#define DMA_CONFIG_REG_VAL                      (0x00000000U)
#define DMA_CHSCR_REG_VAL                       (0x00000000U)
#define DMA_SHADOW_CONFIG_REG_VAL               (0x00000000U)
#define DMA_DATA_CRC_REG_VAL                    (0x00000000U)
#define DMA_ADDRESS_CRC_REG_VAL                 (0x00000000U)

#define IoHwAb_Adc_ConfigType 					Adc_ConfigType

#define	ADC_TOM_ATOM_SEL 						(0U)
#define ADC_SFR_INIT_USER_MODE_WRITE32(reg,value)                           \
                                				((reg) = (unsigned_int)(value))

#define IoHwAb_ADC_Min                     		(819U)                     /* ADC sampling low limit  */
#define IoHwAb_ADC_Max                     		(3276U)                   /* ADC sampling high limit  */


/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/
typedef struct
{
	float32 ConvCoff;
	float32 ConvOffset;
}ADCGen_PBCfg_S;

/*******************************************************************************
**                   Local Variables Definition                      		  **
*******************************************************************************/
uint32 AdcGroupNotification1_u32;
uint32 AdcGroupNotification2_u32;
uint32 AdcGroupNotification3_u32;
uint32 AdcGroupNotification4_u32;
uint32 AdcGroupNotification8_u32;
uint32 AdcGroupNotification9_u32;
uint32 AdcGroupNotification10_u32;
uint32 AdcGroupNotification11_u32;

uint32 AdcGroupNotification2_Ph_u32;
uint32 AdcGroupNotification3_Ph_u32;
uint32 AdcGroupNotification8_Ed_u32;
uint32 AdcGroupNotification11_Ed_u32;

uint32 AdcGroupNotification11_Ed_dma_u32;
uint32 AdcGroupNotification10_Ed_dma_u32;
uint32 AdcGroupNotification9_Ed_dma_u32;
uint32 AdcGroupNotification8_Ed_dma_u32;
uint32 AdcGroupNotification3_Ph_dma_u32;
uint32 AdcGroupNotification2_Ph_dma_u32;
uint32 AdcGroupNotification1_Ph_dma_u32;
uint32 AdcGroupNotification2_Sr_ch2_dma_u32;
uint32 AdcGroupNotification2_Sr_ch3_dma_u32;
uint32 AdcGroupNotification2_Sr_ch4_dma_u32;
uint32 AdcGroupNotification2_Sr_ch5_dma_u32;
uint32 AdcGroupNotification3_Sr_ch1_dma_u32;
uint32 AdcGroupNotification3_Sr_ch2_dma_u32;
uint32 AdcGroupNotification3_Sr_ch3_dma_u32;
uint32 AdcGroupNotification3_Sr_ch4_dma_u32;
uint32 AdcGroupNotification3_Sr_ch5_dma_u32;
uint32 AdcGroupNotification8_Sr_ch1_dma_u32;
uint32 AdcGroupNotification8_Sr_ch7_dma_u32;
uint32 AdcGroupNotification8_Sr_ch12_dma_u32;
uint32 AdcGroupNotification8_Sr_ch14_dma_u32;
uint32 AdcGroupNotification11_Sr_ch1_dma_u32;
uint32 AdcGroupNotification11_Sr_ch6_dma_u32;

uint32 u32_DmaCh31_AdcG3_Ch0_Notification;
uint32 u32_DmaCh32_AdcG2_Ch0_Notification;
uint32 u32_DmaCh33_AdcG1_Ch0_Notification;
uint32 u32_DmaCh21_AdcG11_Ch0_Notification;
uint32 u32_DmaCh22_AdcG10_Ch0_Notification;
uint32 u32_DmaCh23_AdcG9_Ch0_Notification;
uint32 u32_DmaCh24_AdcG8_Ch0_Notification;
uint32 u32_DmaCh25_AdcG8_Ch1_Notification;
uint32 u32_DmaCh26_AdcG8_Ch7_Notification;
uint32 u32_DmaCh27_AdcG8_Ch12_Notification;
uint32 u32_DmaCh28_AdcG8_Ch14_Notification;
uint32 u32_DmaCh29_AdcG11_Ch1_Notification;
uint32 u32_DmaCh30_AdcG11_Ch6_Notification;
uint32 u32_DmaCh11_AdcG2_Ch2_Notification;
uint32 u32_DmaCh12_AdcG2_Ch3_Notification;
uint32 u32_DmaCh13_AdcG2_Ch4_Notification;
uint32 u32_DmaCh14_AdcG2_Ch5_Notification;
uint32 u32_DmaCh15_AdcG2_Ch6_Notification;
uint32 u32_DmaCh16_AdcG2_Ch7_Notification;
uint32 u32_DmaCh17_AdcG3_Ch1_Notification;
uint32 u32_DmaCh18_AdcG3_Ch2_Notification;
uint32 u32_DmaCh19_AdcG3_Ch3_Notification;
uint32 u32_DmaCh20_AdcG3_Ch4_Notification;


uint8 ADC_Tcoolant_Outlet_Fault;
uint8 ADC_Tcoolant_Inlet_Fault;
uint8 ADC_vdc_fault;
uint8 ADC_vmrdm_fault;
uint8 ADC_vim5vm_fault;
uint8 ADC_v5vm_fault;
uint8 ADC_vpr_fault;
uint8 ADC_5vref_fault;
uint8 ADC_v3_3vm_fault;
uint8 ADC_v1_3vm_fault;
uint8 ADC_v3_3_1vsnt_fault;
uint8 ADC_psrm_fault;
uint8 ADC_tmcoil_fault;
uint8 ADC_toil_fault;
uint8 ADC_5V1_limit_fb_fault;
uint8 ADC_2_048v_ref_fault;
uint8 ADC_ima_fault;
uint8 ADC_imb_fault;
uint8 ADC_imc_fault;
uint8 ADC_vadc_pcos_sync_fault;
uint8 ADC_vadc_ncos_sync_fault;
uint8 ADC_vadc_nsin_sync_fault;
uint8 ADC_vadc_psin_sync_fault;


/*******************************************************************************
**                  Global Variables With Extern Linkage               		  **
*******************************************************************************/
extern U32 ADC_Res_Buffer_Cos_P_MCU(void);
extern U32 ADC_Res_Buffer_Cos_N_MCU(void);
extern U32 ADC_Res_Buffer_Sin_N_MCU(void);
extern U32 ADC_Res_Buffer_Sin_P_MCU(void);
extern void EddyCurrent_Init(void);
extern void SRE_ValueUpdate(void);
void Mcu_Gtm_SetTomShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value);
void Mcu_Gtm_SetTomShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value);
extern void ADC_Set_ShadowValSr1(uint8 Module,uint8 Channel,uint32 Sr1Value);
extern void ADC_Set_ShadowValSr0(uint8 Module,uint8 Channel,uint32 Sr0Value);
extern void ADC_Disable_Gtm_Timer_Channel(uint8 Module,uint8 Channel);
extern void ADC_Enable_Gtm_Timer_Channel(uint8 Module,uint8 Channel);

/*******************************************************************************
** Function Name	: IOHWAB_Adc_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: IoHwAb_Adc Module initialization function
*******************************************************************************/
extern void IoHwAb_Adc_Init(const Adc_ConfigType *ConfigPtr);

/*******************************************************************************
** Function Name	: IOHWAB_ADC_StartConversion
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: StartConversion of ADC sampling in IoHwAb
*******************************************************************************/
extern void IoHwAb_ADC_StartConversion(void);

/*******************************************************************************
** Function Name	: Fault_Detection_Test
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Fault Detection of ADC sampling in IoHwAb
*******************************************************************************/
extern void Fault_Detection_Test(void);


#endif /* INFRA_STUB_API_IOHWAB_ADC_H_ */
