/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	Testapp_HwDi.c                                                    */
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
/* [1.0.0]     12.12.2022    Vishnu K              Created                    */
/******************************************************************************/

/******************************************************************************/
/*                      Include Section                                       */
/******************************************************************************/
#include "Testapp_HwDi.h"


U32 debugInput[HWDI_TEST_COUNT];

/******************************************************************************
 * Function Name : TestApp_di_ex_sdn
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_ex_sdn (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_ex_sdn();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_mgsdn
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_mgsdn (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_mgsdn();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_discharge_fb
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_discharge_fb (void)
{
	boolean TestApp_RetVal;
	TestApp_RetVal = di_discharge_fb();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_fltmipu
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_fltmipu (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_fltmipu();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_ul
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_ul (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_ul();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_vl
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_vl (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_vl();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_wl
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_wl (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_wl();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_vdcov
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_vdcov (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_vdcov();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_discharge_status
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_discharge_status (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_discharge_status();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_uh
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_uh (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_uh();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_vh
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_vh (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_vh();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_flt_wh
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
U32 TestApp_di_flt_wh (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_flt_wh();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_motor_inverter_5V_switchfault
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_motor_inverter_5V_switchfault (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_motor_inverter_5V_switchfault();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_hard_shutdown_logic_output
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_hard_shutdown_logic_output (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_hard_shutdown_logic_output();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_pmic_ss1
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_pmic_ss1 (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_pmic_ss1();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_ptcana_rx
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_ptcana_rx (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_ptcana_rx();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_ptcanb_rx
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_ptcanb_rx (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_ptcanb_rx();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_lin_rx
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_lin_rx (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_lin_rx();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_can0_en_fb
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_can0_en_fb (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_can0_en_fb();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_miso_flash
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_miso_flash (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_miso_flash();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_miso_eeprom 
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_miso_eeprom (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_miso_eeprom();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_high_voltage_interlock
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_high_voltage_interlock (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_high_voltage_interlock();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_fe1_can_rx
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_fe1_can_rx (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_fe1_can_rx();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_gdl_miso
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_gdl_miso (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_gdl_miso();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_gdh_miso
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_gdh_miso (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_gdh_miso();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_pmic_sdo
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_pmic_sdo (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_pmic_sdo();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : TestApp_di_fault_drv_sup
 * Description   : Read port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
boolean TestApp_di_fault_drv_sup (void)
{
	U32 TestApp_RetVal;
	TestApp_RetVal = di_fault_drv_sup();
	return(TestApp_RetVal);
}

/******************************************************************************
 * Function Name : Test_DIPortCode
 * Description   : port pin status
 * Arguments     : none
 * Return Value  : none
 ******************************************************************************/
void Test_DIPortCode (void)
{
  if(HWDI_TEST_START)
  {

	Delay_Loop(HWDI_INNER_LOOP,HWDI_OUTER_LOOP);

	debugInput[0] = TestApp_di_discharge_fb();
	debugInput[1] = TestApp_di_fltmipu();
	debugInput[2] = TestApp_di_fault_drv_sup();
    debugInput[3] = TestApp_di_ex_sdn();
	debugInput[4] = TestApp_di_mgsdn();
	debugInput[5] = TestApp_di_flt_ul();
	debugInput[6] = TestApp_di_flt_vl();
	debugInput[7] = TestApp_di_flt_wl();
	debugInput[8] = TestApp_di_vdcov();
	debugInput[9] = TestApp_di_discharge_status();
	debugInput[10] = TestApp_di_motor_inverter_5V_switchfault();
	debugInput[11] = TestApp_di_hard_shutdown_logic_output();
	debugInput[12] = TestApp_di_pmic_ss1();
	debugInput[13] = TestApp_di_ptcana_rx();
	debugInput[14] = TestApp_di_ptcanb_rx();
	debugInput[15] = TestApp_di_lin_rx();
	debugInput[16] = TestApp_di_can0_en_fb();
	debugInput[17] = TestApp_di_high_voltage_interlock();
	debugInput[18] = TestApp_di_fe1_can_rx();
	debugInput[19] = TestApp_di_pmic_sdo();		
	debugInput[20] = TestApp_di_miso_flash();
	debugInput[21] = TestApp_di_miso_eeprom();
	debugInput[22] = TestApp_di_gdl_miso();
	debugInput[23] = TestApp_di_gdh_miso();
	debugInput[24] = TestApp_di_flt_uh();
	debugInput[25] = TestApp_di_flt_vh();
	debugInput[26] = TestApp_di_flt_wh();
 }
 else
 {
	 /* Hwdi_Test_Start = 0; */
	 /* DO Nothing */
 }
}

/******************************************************************************
* Function Name : Delay_Loop
* Description   : Delay loop for Discrete Input signals
* Arguments     : none
* Return Value  : none
******************************************************************************/
 void Delay_Loop(U32 Flp, U32 Slp)
{
  U32 i,j;

  for(i = 0; i < Flp; i++) 
     { 
      for(j = 0; j < Slp; j++)
	  {

	  }
	 }
  
}
