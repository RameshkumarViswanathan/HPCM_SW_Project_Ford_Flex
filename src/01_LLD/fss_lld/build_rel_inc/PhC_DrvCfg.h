#ifndef PHC_DRVCFG_H_
#define PHC_DRVCFG_H_

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   PhC_DrvCfg.h                                                     */
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
#include "Adc.h"
#include "Dma_Cfg.h"
#include "Mcal_DmaLib.h"
#include "Dma.h"
/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
#define	PHC_GROUP_U_CUR		            AdcConf_AdcGroup_AdcGroup_1
#define	PHC_GROUP_V_CUR		            AdcConf_AdcGroup_AdcGroup_2_ph_cur_IMb
#define	PHC_GROUP_W_CUR		            AdcConf_AdcGroup_AdcGroup_3_ph_cur_IMc

#define ADC_U_CUR_ADC_HW_SEL			(1U)
#define ADC_V_CUR_ADC_HW_SEL			(2U)
#define ADC_W_CUR_ADC_HW_SEL			(3U)
#define ADC_U_CUR_ADC_CH_SEL			(0U)
#define ADC_V_CUR_ADC_CH_SEL			(0U)
#define ADC_W_CUR_ADC_CH_SEL			(0U)

#define	ADC_U_CUR_DMA_CHANNEL		    DMA_CHANNEL33
#define	ADC_V_CUR_DMA_CHANNEL		    DMA_CHANNEL32
#define	ADC_W_CUR_DMA_CHANNEL		    DMA_CHANNEL31


/*******************************************************************************
**                          Typedef Definition                         		  **
*******************************************************************************/

/*******************************************************************************
**                  Global Variables With Extern Linkage               		  **
*******************************************************************************/

/*******************************************************************************
**                        Global Function Prototypes              	    	  **
*******************************************************************************/

Dma_ConfigUpdateType Config;


#endif /* PHC_DRVCFG_H_ */
