/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	Testapp_ADC.c                                                    */
/******************************************************************************/
/*  BASE MODULE                                                               */
/******************************************************************************/
/*  VERSION  1.0         | PROJECT                                            */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    Implementation of Discrete input Functions            				  */
/******************************************************************************/
/*  FUNCTIONS  						                                          */
/*                                                                            */
/******************************************************************************/
/*  REMARKS                                                                   */
/******************************************************************************/
/* CHANGES                                                                    */
/* ID          dd.mm.yyyy    Name             Description                     */
/* ---         -----------   -----------      ---------------------           */
/* [1.0.0]     12.12.2022    Shilpa H              Created                    */
/******************************************************************************/

/******************************************************************************/
/*                      Include Section                                       */
/******************************************************************************/
#include "HwAdc.h"
#include "Platform_Types.h"
#include "Testapp_ADC.h"
#include "IoHwAb_Adc.h"
#include "Rdc_Drv.h"
/******************************************************************************/
/*                      static variable                                       */
/******************************************************************************/

/******************************************************************************/
/*                      Structure definitions                                 */
/******************************************************************************/
typedef struct 
{	
	/*Serial ADC*/
	U32 Res_tcoolant_outlet;
	U32 Res_tcoolant_inlet;
	U32 Res_vdc;
	U32 Res_vmrdm;
	U32 Res_vim5vm;
	U32 Res_v5vm;
	U32 Res_vpr;
	U32 Res_5vref;
	U32 Res_v3_3vm;
	U32 Res_v1_3vm;
	U32 Res_v3_3_1vsnt;
	U32 Res_psrm;
	U32 Res_tmcoil;
	U32 Res_toil;
	U32 Res_5V1_limit_fb;
	U32 Res_2_048v_ref;
    /*Feedback Current*/
	U32 Res_vadc_pcos_sync;
	U32 Res_vadc_ncos_sync;
	U32 Res_vadc_psin_sync;
	U32 Res_vadc_nsin_sync;
	/*Phase Current*/
	U32 Res_ima;
	U32 Res_imb;
	U32 Res_imc;
	/*EDSADC Feedback*/
	U32 Res_Edsadc_Pcos;
	U32 Res_Edsadc_Ncos;
	U32 Res_Edsadc_Psin;
	U32 Res_Edsadc_Nsin;
} VARType_Testresults;


/*******************************************************************************
** Function Name	: ADC_Test
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test EVADC serial and parallel API
*******************************************************************************/
void ADC_Test(void)
{
	static VARType_Testresults atd_Results;

        if (u8_Disable_Serial_timer !=(uint8) GTM_SERIAL_TIMER_DEFAULT)
		{
		   if (u8_Disable_Serial_timer == GTM_SERIAL_TIMER_ENABLE)
		   { 
                Adc_Test_Serial_EnableTimer();
		   }
		   else if (u8_Disable_Serial_timer == GTM_SERIAL_TIMER_DISABLE)
		   {
                Adc_Test_Serial_DisableTimer();
		   }
		   else
		   {
			/* Do Nothing */
		   }          
		}

		if (u8_Disable_Parallel_timer != (uint8) GTM_PARALLEL_TIMER_DEFAULT)
		{
           if (u8_Disable_Parallel_timer == GTM_PARALLEL_TIMER_ENABLE)
		   { 
                Adc_Test_Parallel_EnableTimer();
		   }
		   else if (u8_Disable_Parallel_timer == GTM_PARALLEL_TIMER_DISABLE)
		   {
                Adc_Test_Parallel_DisableTimer();
		   }
		   else
		   {
			/* Do Nothing */
		   }          
		}

	    /*Serial ADC*/
		atd_Results.Res_tcoolant_outlet    = atd_tcoolant_outlet();
		atd_Results.Res_tcoolant_inlet     = atd_tcoolant_inlet();
		atd_Results.Res_vdc                = atd_vdc();
		atd_Results.Res_vmrdm              = atd_vmrdm();
		atd_Results.Res_vim5vm             = atd_vim5vm();
		atd_Results.Res_v5vm               = atd_v5vm();
		atd_Results.Res_vpr                = atd_vpr();
		atd_Results.Res_5vref              = atd_5vref();
		atd_Results.Res_v3_3vm             = atd_v3_3vm();
		atd_Results.Res_v1_3vm             = atd_v1_3vm();
		atd_Results.Res_v3_3_1vsnt         = atd_v3_3_1vsnt();
		atd_Results.Res_psrm               = atd_psrm();
		atd_Results.Res_tmcoil             = atd_tmcoil();
		atd_Results.Res_toil               = atd_toil();
		atd_Results.Res_5V1_limit_fb       = atd_5v1_limit_fb();
		atd_Results.Res_2_048v_ref         = atd_2_048v_ref();
        
		/*Phase Current*/
		atd_Results.Res_ima                = atd_ima();
		atd_Results.Res_imb                = atd_imb();
		atd_Results.Res_imc                = atd_imc();
        
		/*Feedback Current*/
		// atd_Results.Res_vadc_pcos_sync     = atd_vadc_pcos_sync();
		// atd_Results.Res_vadc_ncos_sync     = atd_vadc_ncos_sync();
		// atd_Results.Res_vadc_nsin_sync     = atd_vadc_nsin_sync();
		// atd_Results.Res_vadc_psin_sync     = atd_vadc_psin_sync();

		/*EDSADC Feedback current*/
		// atd_Results.Res_Edsadc_Pcos		   = atd_vadc_sin_diff();
		// atd_Results.Res_Edsadc_Ncos		   = atd_vadc_ncos();
		// atd_Results.Res_Edsadc_Psin		   = atd_vadc_psin();
		// atd_Results.Res_Edsadc_Nsin		   = atd_vadc_cos_diff();

}

/*******************************************************************************
** Function Name	: Adc_Test_Serial_DisableTimer
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Serial_DisableTimer
*******************************************************************************/
void Adc_Test_Serial_DisableTimer(void)
{
  /*Group 2 timer disable*/	
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_0, GTM_TOM_MODULE_0_CH3);
  /*Group 3 timer disable*/
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_2, GTM_TOM_MODULE_2_CH3);
  /*Group 8 timer disable*/
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_0, GTM_TOM_MODULE_0_CH4);
  /*Group 11 timer disable*/
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_1_CH3);
}

/*******************************************************************************
** Function Name	: Adc_Test_Parallel_DisableTimer
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Parallel_DisableTimer
*******************************************************************************/
void Adc_Test_Parallel_DisableTimer(void)
{
  /*Phase Current timer disable*/
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_2_CH4);
  /*Feedback Current timer disable*/
  ADC_Disable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_1_CH7);
}

/*******************************************************************************
** Function Name	: Adc_Test_Serial_EnableTimer
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Serial_EnableTimer
*******************************************************************************/
void Adc_Test_Serial_EnableTimer(void)
{
  /*Group 2 timer enable*/	
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_0, GTM_TOM_MODULE_0_CH3);
  /*Group 3 timer enable*/	
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_2, GTM_TOM_MODULE_2_CH3);
  /*Group 8 timer enable*/
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_0, GTM_TOM_MODULE_0_CH4);
  /*Group 11 timer enable*/
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_1_CH3);
}

/*******************************************************************************
** Function Name	: Adc_Test_Parallel_EnableTimer
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Parallel_EnableTimer
*******************************************************************************/
void Adc_Test_Parallel_EnableTimer(void)
{
  /*Phase Current timer enable*/
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_2_CH4);
  /*Feedback Current timer enable*/
  ADC_Enable_Gtm_Timer_Channel(GTM_TOM_MODULE_1, GTM_TOM_MODULE_1_CH7);
}


