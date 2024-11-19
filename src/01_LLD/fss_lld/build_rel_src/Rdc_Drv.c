/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Rdc_Drv.c                                                        */
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

#include "IfxSrc_reg.h"
#include "Rdc_Drv.h"
#include "Pwm_17_GtmCcu6.h"
#include "IfxEdsadc_reg.h"
#include "IoHwAb_Adc.h"
#include "Mcal_DmaLib.h"


/*******************************************************************************
 **                          Macro Definition                         		  **
 *******************************************************************************/

/*******************************************************************************
 **                   Static Local Variables Definition              		  **
 *******************************************************************************/
/*******************************************************************************
 **                     Global Variables Definition              		      **
 *******************************************************************************/

// static uint32 DataBufferPtrResultCH0[RDC_DATA_BUFFER_PTR_LEN]; 
// static uint32 DataBufferPtrResultCH3[RDC_DATA_BUFFER_PTR_LEN]; 

uint32 DataBufferPtrResultCH0; 
uint32 DataBufferPtrResultCH3; 

// sint32 DataBufferPtrResultCH0;
// sint32 DataBufferPtrResultCH3;

static void Rdc_DSADC_DMA_CH34_Config(void);
static void Rdc_DSADC_DMA_CH37_Config(void);

static void Setup_DSADC_DMA_Channel34(void);
static void Setup_DSADC_DMA_Channel37(void);


/*******************************************************************************
 **                 		  Function Source Code            		          **
 *******************************************************************************/

/*******************************************************************************
** Function Name	: Rdc_Enable_Interrupt
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to enable Dsadc/gtm interrupt for selected hw
*******************************************************************************/
void Rdc_Enable_Interrupt (void)
{
    /* Enable DSADC ISR */
    SRC_DSADC_DSADC0_SRM.B.SRE = STD_ON;
    SRC_DSADC_DSADC3_SRM.B.SRE = STD_ON;

    /* Enable DMA ISR */
    SRC_DMA_DMA0_CH34.B.SRE = STD_ON;
    SRC_DMA_DMA0_CH37.B.SRE = STD_ON;
}


/*******************************************************************************
** Function Name	: Rdc_Check_Calibration_Status
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to check the calibration status of HW chennal
*******************************************************************************/
Std_ReturnType Rdc_Check_Calibration_Status (const Dsadc_ChannelType ChannelId)
{
    Dsadc_CalibrationStatusType CalibrationStatus = DSADC_CALIBRATION_ERROR;
    Std_ReturnType lRetVal = E_NOT_OK;

    lRetVal = Dsadc_StartCalibration(ChannelId);
    
    if(lRetVal != (Std_ReturnType)E_NOT_OK)
     {
        do
        {
            CalibrationStatus = Dsadc_GetCalibrationStatus (ChannelId);
            /* Wait till the Start Calibration is over*/
        }while(CalibrationStatus == (Dsadc_CalibrationStatusType)DSADC_CALIBRATION_RUNNING);
     
        if(CalibrationStatus == (Dsadc_CalibrationStatusType)DSADC_CALIBRATION_DONE)
        {
            /* Calibration is successful */
			lRetVal = (Std_ReturnType)E_OK;
		}
		else
        {
            /* Calibration is failed */
            lRetVal = (Std_ReturnType)E_NOT_OK;
        }
    }
    else
    {
        /*Could not start the calibration*/
        /*Do Nothing*/
    }
	return (lRetVal);
}

/*******************************************************************************
** Function Name	: Rdc_init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to calibrate the configured channels
*******************************************************************************/
void Rdc_init (void)
{

    Pwm_17_GtmCcu6_EnableNotification(RDC_GTM_ATOM0_CH6_CHANNEL_ID,\
	           PWM_17_GTMCCU6_BOTH_EDGES);

    Calib_Status[0]      = (Std_ReturnType)RDC_CALIB_ERROR;
    Calib_Status[1]      = (Std_ReturnType)RDC_CALIB_ERROR;
    Modulation_Status[0] = (Std_ReturnType)RDC_MODULATION_START_ERROR;
    Modulation_Status[1] = (Std_ReturnType)RDC_MODULATION_START_ERROR;
    
    // DataBufferPtrResultCH0[0] = 0;
    // DataBufferPtrResultCH3[0] = 0;
    DataBufferPtrResultCH0 = 0;
    DataBufferPtrResultCH3 = 0;
    /* Start Calibration for all channels */ 

    Calib_Status[0] = Rdc_Check_Calibration_Status(RDC_CHANNEL_0);
    Calib_Status[1] = Rdc_Check_Calibration_Status(RDC_CHANNEL_3);
    
    if ( (Calib_Status[0] == (Std_ReturnType)E_OK) &&  
         (Calib_Status[1] == (Std_ReturnType)E_OK)
       )
    {
        /* Setup DMA Channel for DSADC */
        Setup_DSADC_DMA_Channel34();
        Setup_DSADC_DMA_Channel37();

        /*Enable DMA HW triger*/
        Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL34);
        Dma_ChEnableHardwareTrigger((uint8)DMA_CHANNEL37);
            
        Pwm_17_GtmCcu6_SetOutputToIdle(RDC_GTM_ATOM0_CH6_CHANNEL_ID);

        Modulation_Status[0] = Dsadc_StartModulation(RDC_CHANNEL_0);
        Modulation_Status[1] = Dsadc_StartModulation(RDC_CHANNEL_3);

        if ( (Modulation_Status[0] == (Std_ReturnType)E_OK) &&  
             (Modulation_Status[1] == (Std_ReturnType)E_OK)
           ) 
        {   
            //Pwm_17_GtmCcu6_SetDutyCycle(RDC_GTM_ATOM0_CH6_CHANNEL_ID, RDC_50PER_DUTY_CYCLE);
            Pwm_17_GtmCcu6_SetDutyCycle(RDC_GTM_ATOM3_CH1_CHANNEL_ID, RDC_50PER_DUTY_CYCLE);
            Pwm_17_GtmCcu6_SetDutyCycle(RDC_GTM_ATOM0_CH2_CHANNEL_ID, RDC_50PER_DUTY_CYCLE);
        }
    }
}

/*******************************************************************************
** Function Name	: Rdc_Stop_Conversion
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to Stop RDC
*******************************************************************************/
void Rdc_Stop_Conversion(void)
{
    /* Stop the modulation */
    Dsadc_StopModulation(RDC_CHANNEL_0);
    Dsadc_StopModulation(RDC_CHANNEL_3);
    /* Stop Gtm Timer */
    Pwm_17_GtmCcu6_SetDutyCycle(RDC_GTM_ATOM0_CH6_CHANNEL_ID,0);

    /* Clear all the interrupts */
    SRC_DSADC_DSADC0_SRM.B.SRE = STD_OFF;
    SRC_DSADC_DSADC3_SRM.B.SRE = STD_OFF;

    SRC_DMA_DMA0_CH34.B.SRE = STD_OFF;
    SRC_DMA_DMA0_CH37.B.SRE = STD_OFF;

}

/*******************************************************************************
** Function Name	: Rdc_DSADC_DMA_CH34_Config
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function for DMA Channel configuration
*******************************************************************************/
static void Rdc_DSADC_DMA_CH34_Config(void)
{
    Dma_Dsadc_CH34_Config.SourceAddress		  = DataBufferDMACH0;
	Dma_Dsadc_CH34_Config.DestAddress		  = (uint32)(&DataBufferPtrResultCH0);
	Dma_Dsadc_CH34_Config.ControlAdicr		  = DMA_ADICR_REG_VAL;
	Dma_Dsadc_CH34_Config.ControlChcsr		  = DMA_CHSCR_REG_VAL;
	Dma_Dsadc_CH34_Config.Config			  = DMA_CONFIG_REG_VAL;
	Dma_Dsadc_CH34_Config.ShadowConfig		  = DMA_SHADOW_CONFIG_REG_VAL;
	Dma_Dsadc_CH34_Config.AddressCrc		  = DMA_ADDRESS_CRC_REG_VAL;
	Dma_Dsadc_CH34_Config.DataCrc			  = DMA_DATA_CRC_REG_VAL;
	Dma_Dsadc_CH34_Config.UpdateSourceAddress = STD_ON;
	Dma_Dsadc_CH34_Config.UpdateDestAddress	  = STD_ON;
	Dma_Dsadc_CH34_Config.UpdateControlAdicr  = STD_OFF;
	Dma_Dsadc_CH34_Config.UpdateControlChcsr  = STD_OFF;
	Dma_Dsadc_CH34_Config.UpdateConfig		  = STD_OFF;
	Dma_Dsadc_CH34_Config.UpdateShadowConfig  = STD_OFF;
	Dma_Dsadc_CH34_Config.UpdateAddressCrc	  = STD_OFF;
	Dma_Dsadc_CH34_Config.UpdateDataCrc		  = STD_OFF;
}

/*******************************************************************************
** Function Name	: Rdc_DSADC_DMA_CH34_Config
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function for DMA Channel configuration
*******************************************************************************/
static void Rdc_DSADC_DMA_CH37_Config(void)
{
    Dma_Dsadc_CH37_Config.SourceAddress		  = DataBufferDMACH3;
	Dma_Dsadc_CH37_Config.DestAddress		  = (uint32)(&DataBufferPtrResultCH3);
	Dma_Dsadc_CH37_Config.ControlAdicr		  = DMA_ADICR_REG_VAL;
	Dma_Dsadc_CH37_Config.ControlChcsr		  = DMA_CHSCR_REG_VAL;
	Dma_Dsadc_CH37_Config.Config			  = DMA_CONFIG_REG_VAL;
	Dma_Dsadc_CH37_Config.ShadowConfig		  = DMA_SHADOW_CONFIG_REG_VAL;
	Dma_Dsadc_CH37_Config.AddressCrc		  = DMA_ADDRESS_CRC_REG_VAL;
	Dma_Dsadc_CH37_Config.DataCrc			  = DMA_DATA_CRC_REG_VAL;
	Dma_Dsadc_CH37_Config.UpdateSourceAddress = STD_ON;
	Dma_Dsadc_CH37_Config.UpdateDestAddress	  = STD_ON;
	Dma_Dsadc_CH37_Config.UpdateControlAdicr  = STD_OFF;
	Dma_Dsadc_CH37_Config.UpdateControlChcsr  = STD_OFF;
	Dma_Dsadc_CH37_Config.UpdateConfig		  = STD_OFF;
	Dma_Dsadc_CH37_Config.UpdateShadowConfig  = STD_OFF;
	Dma_Dsadc_CH37_Config.UpdateAddressCrc	  = STD_OFF;
	Dma_Dsadc_CH37_Config.UpdateDataCrc		  = STD_OFF;
}

/*******************************************************************************
** Function Name	: Setup_DSADC_DMA_Channel34
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to setup Channel 34 for DMA transfer
*******************************************************************************/
static void Setup_DSADC_DMA_Channel34 (void)
{
    DataBufferDMACH0 = (uint32)&MODULE_EDSADC.CH[0].RESM.U; 
    Rdc_DSADC_DMA_CH34_Config();
    Dma_ChUpdate((uint8)DMA_CHANNEL34, &Dma_Dsadc_CH34_Config, NULL_PTR);
}

/*******************************************************************************
** Function Name	: Setup_DSADC_DMA_Channel37
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to setup Channel 37 for DMA transfer
*******************************************************************************/
static void Setup_DSADC_DMA_Channel37 (void)
{
    DataBufferDMACH3 = (uint32)&MODULE_EDSADC.CH[3].RESM.U; 
    Rdc_DSADC_DMA_CH37_Config();
    Dma_ChUpdate((uint8)DMA_CHANNEL37, &Dma_Dsadc_CH37_Config, NULL_PTR);
}

/*******************************************************************************
** Function Name	: DmaCh34_DSADC_Ch0_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: DMA Channel 0 Notification
*******************************************************************************/
/* Channel specific notification function for Channel 34  */
void DmaCh34_DSADC_Ch0_Notification(uint8 Channel, uint32 Event)
{
    UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
    Rdc_DMA_Notification_Cnt_CH0++;
    // Rdc_Dsadc_CH0_ResultBuffer[Rdc_DMA_Notification_Cnt_CH0] = DataBufferPtrResultCH0[0];
}

/*******************************************************************************
** Function Name	: DmaCh37_DSADC_Ch3_Notification
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: DMA Channel 3 Notification
*******************************************************************************/
/* Channel specific notification function for Channel 37  */
void DmaCh37_DSADC_Ch3_Notification(uint8 Channel, uint32 Event)
{
    UNUSED_PARAMETER(Channel);
	UNUSED_PARAMETER(Event);
    Rdc_DMA_Notification_Cnt_CH3++;
    // Rdc_Dsadc_CH3_ResultBuffer[Rdc_DMA_Notification_Cnt_CH3] = DataBufferPtrResultCH3[0];    
}


/*******************************************************************************
 ** Function Name	: DSADC_Res_Buffer_CH0
 ** Parameter[in] 	: None
 ** Parameter[out] 	: VAR_ui32_Adc_RES_Buffer_Group3_CH4
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 DSADC_Res_Buffer_CH0(void)
// I32 DSADC_Res_Buffer_CH0(void)
{
	// return DataBufferPtrResultCH0[0];
    return (DataBufferPtrResultCH0);
}

/*******************************************************************************
 ** Function Name	: DSADC_Res_Buffer_CH3
 ** Parameter[in] 	: None
 ** Parameter[out] 	: DataBufferPtrResultCH3
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the value at DMA RAM address
 *******************************************************************************/
U32 DSADC_Res_Buffer_CH3(void)
// I32 DSADC_Res_Buffer_CH3(void)
{
	// return DataBufferPtrResultCH3[0];
    return (DataBufferPtrResultCH3);
}

/*******************************************************************************
 ** Function Name	: Rdc_Result_Verification
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: None
 ** Note	  		: None
 ** Description	  	: function to verify the output in 50us task
 *******************************************************************************/
static U32 Rdc_Dsadc_ResultBuffer_Cnt = 0;
void Rdc_Result_Verification (void)
{
   if (Rdc_Dsadc_ResultBuffer_Cnt >= 1000)
   {
      Rdc_Dsadc_ResultBuffer_Cnt = 0;
   }
   Rdc_Dsadc_CH3_ResultBuffer[Rdc_Dsadc_ResultBuffer_Cnt] =  atd_vadc_cos_diff();
   Rdc_Dsadc_CH0_ResultBuffer[Rdc_Dsadc_ResultBuffer_Cnt] =  atd_vadc_sin_diff();
   Rdc_Dsadc_ResultBuffer_Cnt++;
}
