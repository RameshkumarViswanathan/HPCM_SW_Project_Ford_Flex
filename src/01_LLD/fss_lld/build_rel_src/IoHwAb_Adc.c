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
#include "IoHwAb_Adc.h"
#include "Adc.h"

void AdcGroup1_Notification(void);
void AdcGroup2_Notification(void);
void AdcGroup3_Notification(void);
void AdcGroup8_Notification_Eddy(void);
void AdcGroup8_Notification(void);
void AdcGroup9_Notification(void);
void AdcGroup10_Notification(void);
void AdcGroup11_Notification(void);
void DmaCh21_AdcG11_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh22_AdcG10_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh23_AdcG9_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh24_AdcG8_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh25_AdcG8_Ch1_Notification(uint8 Channel, uint32 Event);
void DmaCh26_AdcG8_Ch7_Notification(uint8 Channel, uint32 Event);
void DmaCh27_AdcG8_Ch12_Notification(uint8 Channel, uint32 Event);
void DmaCh28_AdcG8_Ch14_Notification(uint8 Channel, uint32 Event);
void DmaCh29_AdcG11_Ch1_Notification(uint8 Channel, uint32 Event);
void DmaCh30_AdcG11_Ch6_Notification(uint8 Channel, uint32 Event);
void DmaCh11_AdcG2_Ch2_Notification(uint8 Channel, uint32 Event);
void DmaCh12_AdcG2_Ch3_Notification(uint8 Channel, uint32 Event);
void DmaCh13_AdcG2_Ch4_Notification(uint8 Channel, uint32 Event);
void DmaCh14_AdcG2_Ch5_Notification(uint8 Channel, uint32 Event);
void DmaCh15_AdcG2_Ch6_Notification(uint8 Channel, uint32 Event);
void DmaCh16_AdcG2_Ch7_Notification(uint8 Channel, uint32 Event);
void DmaCh17_AdcG3_Ch1_Notification(uint8 Channel, uint32 Event);
void DmaCh18_AdcG3_Ch2_Notification(uint8 Channel, uint32 Event);
void DmaCh19_AdcG3_Ch3_Notification(uint8 Channel, uint32 Event);
void DmaCh20_AdcG3_Ch4_Notification(uint8 Channel, uint32 Event);
void DmaCh31_AdcG3_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh32_AdcG2_Ch0_Notification(uint8 Channel, uint32 Event);
void DmaCh33_AdcG1_Ch0_Notification(uint8 Channel, uint32 Event);

/*******************************************************************************
**                  Static Local Function Declaration            		      **
*******************************************************************************/

/*******************************************************************************
**                 		  Function Source Code            		              **
*******************************************************************************/

/*******************************************************************************
** Function Name	: IoHwAb_Adc_Init
** Parameter[in] 	: Configptr
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: IoHwAb Adc Initialization
*******************************************************************************/
void IoHwAb_Adc_Init(const Adc_ConfigType *ConfigPtr)
{
	Adc_Init(ConfigPtr);

	/* ADC Startup Calibration */
	Adc_TriggerStartupCal();

	/* Wait till the Start Calibration is over*/
	while(Adc_GetStartupCalStatus() != ADC_STARTUP_CALIB_OVER){};
}
/*******************************************************************************
** Function Name	: AdcGroup1_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group1 conversion success notification fuction
*******************************************************************************/
void AdcGroup1_Notification(void)
{
	AdcGroupNotification1_u32++;
}

/*******************************************************************************
** Function Name	: AdcGroup2_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 conversion success notification fuction
*******************************************************************************/
void AdcGroup2_Notification(void)
{
	AdcGroupNotification2_u32++;
}

/*******************************************************************************
** Function Name	: AdcGroup3_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void AdcGroup3_Notification(void)
{
	AdcGroupNotification3_u32++;
}

/*******************************************************************************
** Function Name	: AdcGroup8_Notification_Eddy
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 Eddy current conversion success notification fuction
*******************************************************************************/
void AdcGroup8_Notification_Eddy(void)
{
	AdcGroupNotification8_Ed_u32++;
}
/*******************************************************************************
** Function Name	: AdcGroup8_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 conversion success notification fuction
*******************************************************************************/
void AdcGroup8_Notification(void)
{
	AdcGroupNotification8_u32++;
}

/*******************************************************************************
** Function Name	: AdcGroup9_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group9 conversion success notification fuction
*******************************************************************************/
void AdcGroup9_Notification(void)
{
	AdcGroupNotification9_u32++;
}


/*******************************************************************************
** Function Name	: AdcGroup10_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group10 conversion success notification fuction
*******************************************************************************/
void AdcGroup10_Notification(void)
{
	AdcGroupNotification10_u32++;
}

/*******************************************************************************
** Function Name	: AdcGroup11_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group11 conversion success notification fuction
*******************************************************************************/
void AdcGroup11_Notification(void)
{
	AdcGroupNotification11_u32++;
}

/*******************************************************************************
** Function Name	: DmaCh21_AdcG11_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group11 Eddy current conversion success notification fuction
*******************************************************************************/
void DmaCh21_AdcG11_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh21_AdcG11_Ch0_Notification++;
}


/*******************************************************************************
** Function Name	: DmaCh22_AdcG10_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group10 Eddy current conversion success notification fuction
*******************************************************************************/
void DmaCh22_AdcG10_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh22_AdcG10_Ch0_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh23_AdcG9_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group9 Eddy current conversion success notification fuction
*******************************************************************************/
void DmaCh23_AdcG9_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh23_AdcG9_Ch0_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh24_AdcG8_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 Eddy current conversion success notification fuction
*******************************************************************************/
void DmaCh24_AdcG8_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh24_AdcG8_Ch0_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh25_AdcG8_Ch1_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 conversion success notification fuction
*******************************************************************************/
void DmaCh25_AdcG8_Ch1_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh25_AdcG8_Ch1_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh26_AdcG8_Ch7_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 conversion success notification fuction
*******************************************************************************/
void DmaCh26_AdcG8_Ch7_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh26_AdcG8_Ch7_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh27_AdcG8_Ch12_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 conversion success notification fuction
*******************************************************************************/
void DmaCh27_AdcG8_Ch12_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh27_AdcG8_Ch12_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh8_AdcG28_Ch14_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group8 conversion success notification fuction
*******************************************************************************/
void DmaCh28_AdcG8_Ch14_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh28_AdcG8_Ch14_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh29_AdcG11_Ch1_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group11 conversion success notification fuction
*******************************************************************************/
void DmaCh29_AdcG11_Ch1_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh29_AdcG11_Ch1_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh30_AdcG11_Ch6_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group11 conversion success notification fuction
*******************************************************************************/
void DmaCh30_AdcG11_Ch6_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh30_AdcG11_Ch6_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh11_AdcG2_Ch2_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 conversion success notification fuction
*******************************************************************************/
void DmaCh11_AdcG2_Ch2_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh11_AdcG2_Ch2_Notification++;
}


/*******************************************************************************
** Function Name	: DmaCh12_AdcG2_Ch3_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 conversion success notification fuction
*******************************************************************************/
void DmaCh12_AdcG2_Ch3_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh12_AdcG2_Ch3_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh13_AdcG2_Ch4_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 conversion success notification fuction
*******************************************************************************/
void DmaCh13_AdcG2_Ch4_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh13_AdcG2_Ch4_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh14_AdcG2_Ch5_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 conversion success notification fuction
*******************************************************************************/
void DmaCh14_AdcG2_Ch5_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh14_AdcG2_Ch5_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh15_AdcG2_Ch6_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh15_AdcG2_Ch6_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh15_AdcG2_Ch6_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh16_AdcG2_Ch7_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh16_AdcG2_Ch7_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh16_AdcG2_Ch7_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh17_AdcG3_Ch1_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh17_AdcG3_Ch1_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh17_AdcG3_Ch1_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh18_AdcG3_Ch2_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh18_AdcG3_Ch2_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh18_AdcG3_Ch2_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh19_AdcG3_Ch3_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh19_AdcG3_Ch3_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh19_AdcG3_Ch3_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh20_AdcG3_Ch4_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh20_AdcG3_Ch4_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh20_AdcG3_Ch4_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh31_AdcG3_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group3 conversion success notification fuction
*******************************************************************************/
void DmaCh31_AdcG3_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh31_AdcG3_Ch0_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh32_AdcG2_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group2 Phase current conversion success notification fuction
*******************************************************************************/
void DmaCh32_AdcG2_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh32_AdcG2_Ch0_Notification++;
}

/*******************************************************************************
** Function Name	: DmaCh33_AdcG1_Ch0_Notification
** Parameter[in] 	: uint8 Channel, uint32 Event
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			: None
** Description	  	: Adc Group1 Phase current conversion success notification fuction
*******************************************************************************/
void DmaCh33_AdcG1_Ch0_Notification(uint8 Channel, uint32 Event)
{
	UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
	u32_DmaCh33_AdcG1_Ch0_Notification++;
}
