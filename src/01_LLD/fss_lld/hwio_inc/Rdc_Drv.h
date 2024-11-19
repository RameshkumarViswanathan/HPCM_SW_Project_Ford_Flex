#ifndef RDC_DRV_H_
#define RDC_DRV_H_

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Rdc_Drv.h                                                        */
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
/* [1.0.0]     06.12.2022    Shalini H         Created                       */
/*****************************************************************************/

/*******************************************************************************
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include "Dma.h"
#include "Dsadc.h"

/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/
#define RDC_DATA_BUFFER_PTR_LEN             (1)

/*AN2, AN3 - SIN P, SIN N*/
#define RDC_CHANNEL_0                       (0)
/*AN0, AN1 - COS P, COS N*/
#define RDC_CHANNEL_3                       (1)
#define RDC_CHANNEL_MAX                     (2)

#define RDC_RESULT_BUF_MAX					(1000)

#define RDC_GTM_ATOM0_CH6_CHANNEL_ID        (8)
#define RDC_0PER_DUTY_CYCLE                 (0)
#define RDC_50PER_DUTY_CYCLE                (0x4000)
#define RDC_100PER_DUTY_CYCLE               (0x8000)
#define RDC_CALIB_ERROR                     (255) 
#define RDC_MODULATION_START_ERROR          (255) 

/* Analog full-scale voltage */
#define RDC_ANALOG_FULL_SCALE   			(5.0)
/* EDSADC full-scale value (AFS), representing the analog*/
#define RDC_RAW_FULL_SCALE      			(30000.0)

// #define RDC_OUTPUT_CONVERTED

/*******************************************************************************
**                          Global Variable                         		  **
*******************************************************************************/
U32 atd_vadc_sin_diff_BUF;
U32 atd_vadc_ncos_diff_BUF;

// I32 atd_vadc_sin_diff_BUF;
// I32 atd_vadc_ncos_diff_BUF;

uint32 Rdc_Dsadc_CH0_ResultBuffer[RDC_RESULT_BUF_MAX];
uint32 Rdc_Dsadc_CH3_ResultBuffer[RDC_RESULT_BUF_MAX];


uint32 Rdc_DMA_Notification_Cnt_CH0 = 0u;
uint32 Rdc_DMA_Notification_Cnt_CH3 = 0u;

uint32 DataBufferDMACH0; 
uint32 DataBufferDMACH3; 

Dma_ConfigUpdateType Dma_Dsadc_CH34_Config;
Dma_ConfigUpdateType Dma_Dsadc_CH37_Config;

#ifdef RDC_OUTPUT_CONVERTED
U32 resultVoltage_pcos;
U32 resultVoltage_ncos;
U32 resultVoltage_psin;
U32 resultVoltage_nsin;
#endif 

/*******************************************************************************
**                  Global Variables With Extern Linkage               		  **
*******************************************************************************/
void Rdc_Enable_Interrupt(void);
void Rdc_init (void);
void Rdc_Stop_Conversion(void);

void DmaCh34_DSADC_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh37_DSADC_Ch3_Notification(uint8 Channel, uint32 Event);

Std_ReturnType Rdc_Check_Calibration_Status(const Dsadc_ChannelType ChannelId);
Std_ReturnType Calib_Status[RDC_CHANNEL_MAX];
Std_ReturnType Modulation_Status[RDC_CHANNEL_MAX];

U32 DSADC_Res_Buffer_CH0(void);
U32 DSADC_Res_Buffer_CH3(void);

// I32 DSADC_Res_Buffer_CH0(void);
// I32 DSADC_Res_Buffer_CH3(void);

/*  Unsynchronized cosine positive signal from MPS sensor  */
INLINE U32 atd_vadc_sin_diff(void);
// INLINE I32 atd_vadc_sin_diff(void);

/*  Unsynchronized cosine positive signal from MPS sensor  */
INLINE U32 atd_vadc_cos_diff(void);
// INLINE I32 atd_vadc_cos_diff(void);

extern void Rdc_Result_Verification (void);

/*******************************************************************************
 ** Function Name	: atd_vadc_sin_diff
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_sin_diff(void)
{
	atd_vadc_sin_diff_BUF = DSADC_Res_Buffer_CH0();
#ifdef RDC_OUTPUT_CONVERTED
	/* Calculate the corresponding voltage  */
	resultVoltage_pcos = (atd_vadc_sin_diff_BUF * RDC_ANALOG_FULL_SCALE) / RDC_RAW_FULL_SCALE;
	return (resultVoltage_pcos);
#else
	return (atd_vadc_sin_diff_BUF);
#endif 
}

/*******************************************************************************
 ** Function Name	: atd_vadc_cos_diff
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_cos_diff(void)
{
	atd_vadc_ncos_diff_BUF = DSADC_Res_Buffer_CH3();
#ifdef RDC_OUTPUT_CONVERTED
	/* Calculate the corresponding voltage  */
	resultVoltage_nsin = (atd_vadc_ncos_diff_BUF * RDC_ANALOG_FULL_SCALE) / RDC_RAW_FULL_SCALE;
	return (resultVoltage_nsin);
#else
	return (atd_vadc_ncos_diff_BUF);
#endif
}

#endif /* RDC_DRV_H_ */
