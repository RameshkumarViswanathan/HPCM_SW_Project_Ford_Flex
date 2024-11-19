/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	Testapp_HwDo.c                                                    */
/******************************************************************************/
/*  BASE MODULE                                                               */
/******************************************************************************/
/*  VERSION  1.0         | PROJECT                                            */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    Implementation of Discrete output Functions            				  */
/******************************************************************************/
/*  FUNCTIONS  						                                          */
/*  Test_PortCode                                                             */
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
#include "Testapp_HwDo.h"

uint8 Testselectvar[HWDO_TEST_COUNT];
/******************************************************************************
* Function Name : Test_PortCode
* Description   : Turn ON and Turn OFF  Discrete Output signals
* Arguments     : none
* Return Value  : none
******************************************************************************/
void Test_DOPortCode (void)
{ 
  if(HWDO_TEST_START)
  {

	Delay_Loop(HWDO_INNER_LOOP,HWDO_OUTER_LOOP);	

	/*TURN ON*/
    do_en_mipu(STD_ON);
	Testselectvar[0] = STD_ON;
	do_discharge_cmd(STD_ON);
	Testselectvar[1] = STD_ON;
	do_csb_u_l(STD_ON);
	Testselectvar[2] = STD_ON;
	do_csb_v_l(STD_ON);
	Testselectvar[3] = STD_ON;
	do_csb_w_l(STD_ON);   
	Testselectvar[4] = STD_ON;
	do_flash_wpb(STD_ON);
	Testselectvar[5] = STD_ON;
	do_eeprom_csb(STD_ON);
	Testselectvar[6] = STD_ON;
	do_gd0u(STD_ON);
	Testselectvar[7] = STD_ON;
    do_gd1u(STD_ON);
	Testselectvar[8] = STD_ON;
	do_gd2u(STD_ON);
	Testselectvar[9] = STD_ON;
	do_gd0v(STD_ON);
	Testselectvar[10] = STD_ON;
	do_gd1v(STD_ON);
	Testselectvar[11] = STD_ON;
	do_gd2v(STD_ON);
	Testselectvar[12] = STD_ON;
	do_gd0w(STD_ON);
	Testselectvar[13] = STD_ON;
	do_gd1w(STD_ON);
	Testselectvar[14] = STD_ON;
	do_gd2w(STD_ON);
	Testselectvar[15] = STD_ON;
	do_drvascenh(STD_ON);
	Testselectvar[16] = STD_ON;
	do_drvascenl(STD_ON);
	Testselectvar[17] = STD_ON;
	do_drvasch(STD_ON);
	Testselectvar[18] = STD_ON;
	do_drvascl(STD_ON);
	Testselectvar[19] = STD_ON;
	do_drv_pwr_en_h(STD_ON);
	Testselectvar[20] = STD_ON;
	do_drv_pwr_en_l(STD_ON);
	Testselectvar[21] = STD_ON;
	do_ena_pt_can_mcu(STD_ON);
	Testselectvar[22] = STD_ON;
	do_pmic_err(STD_ON);
	Testselectvar[23] = STD_ON;
	do_pmic_wdi(STD_ON);
	Testselectvar[24] = STD_ON;
	do_pmic_wdgdis_ctrl(STD_ON); 
	Testselectvar[25] = STD_ON;
	do_drv_sdi_l(STD_ON);
	Testselectvar[26] = STD_ON;
	do_drv_sdi_h(STD_ON);
	Testselectvar[27] = STD_ON;
    do_csb_u_h(STD_ON);
	Testselectvar[28] = STD_ON;
	do_csb_v_h(STD_ON);
	Testselectvar[29] = STD_ON;
	do_csb_w_h(STD_ON);
	Testselectvar[30] = STD_ON;
	do_eeprom_wp(STD_ON);
	Testselectvar[31] = STD_ON;
	do_fe1cantx(STD_ON);
	Testselectvar[32] = STD_ON;
	do_canatx(STD_ON);
	Testselectvar[33] = STD_ON;
	do_canbtx(STD_ON);
	Testselectvar[34] = STD_ON;
	do_lintx(STD_ON);
	Testselectvar[35] = STD_ON;
	do_drv_asc_latch_mcu(STD_ON);
	Testselectvar[36] = STD_ON;
	do_pmic_scs(STD_ON);
	Testselectvar[37] = STD_ON;
	do_pmic_sdi(STD_ON);
	Testselectvar[38] = STD_ON;
	do_flash_mosi(STD_ON);
	Testselectvar[39] = STD_ON;
	do_flash_cs(STD_ON);
	Testselectvar[40] = STD_ON;
	do_eeprom_mosi(STD_ON);
	Testselectvar[41] = STD_ON;
	do_Init_Bypass(STD_ON);    
	Testselectvar[42] = STD_ON;

	Delay_Loop(HWDO_INNER_LOOP,HWDO_OUTER_LOOP);

    /*TURN OFF*/
	do_en_mipu(STD_OFF);
	Testselectvar[0] = STD_OFF;
	do_discharge_cmd(STD_OFF);
	Testselectvar[1] = STD_OFF;
	do_csb_u_l(STD_OFF);
	Testselectvar[2] = STD_OFF;
	do_csb_v_l(STD_OFF);
	Testselectvar[3] = STD_OFF;
	do_csb_w_l(STD_OFF);         
	Testselectvar[4] = STD_OFF;
	do_flash_wpb(STD_OFF);
	Testselectvar[5] = STD_OFF;
	do_eeprom_csb(STD_OFF);
	Testselectvar[6] = STD_OFF;
	do_gd0u(STD_OFF);
	Testselectvar[7] = STD_OFF;
    do_gd1u(STD_OFF);
	Testselectvar[8] = STD_OFF;
	do_gd2u(STD_OFF);
	Testselectvar[9] = STD_OFF;
	do_gd0v(STD_OFF);
	Testselectvar[10] = STD_OFF;
	do_gd1v(STD_OFF);
	Testselectvar[11] = STD_OFF;
	do_gd2v(STD_OFF);
	Testselectvar[12] = STD_OFF;
	do_gd0w(STD_OFF);
	Testselectvar[13] = STD_OFF;
	do_gd1w(STD_OFF);
	Testselectvar[14] = STD_OFF;
	do_gd2w(STD_OFF);
	Testselectvar[15] = STD_OFF;
	do_drvascenh(STD_OFF);
	Testselectvar[16] = STD_OFF;
	do_drvascenl(STD_OFF);
	Testselectvar[17] = STD_OFF;
	do_drvasch(STD_OFF);
	Testselectvar[18] = STD_OFF;
	do_drvascl(STD_OFF);
	Testselectvar[19] = STD_OFF;
	do_drv_pwr_en_h(STD_OFF);
	Testselectvar[20] = STD_OFF;
	do_drv_pwr_en_l(STD_OFF);
	Testselectvar[21] = STD_OFF;
	do_ena_pt_can_mcu(STD_OFF);
	Testselectvar[22] = STD_OFF;
	do_pmic_err(STD_OFF);
	Testselectvar[23] = STD_OFF;
	do_pmic_wdi(STD_OFF);
	Testselectvar[24] = STD_OFF;
	do_pmic_wdgdis_ctrl(STD_OFF);  
	Testselectvar[25] = STD_OFF;
	do_drv_sdi_l(STD_OFF);
	Testselectvar[26] = STD_OFF;
	do_drv_sdi_h(STD_OFF);
	Testselectvar[27] = STD_OFF;
	do_csb_u_h(STD_OFF);
	Testselectvar[28] = STD_OFF;
	do_csb_v_h(STD_OFF);
	Testselectvar[29] = STD_OFF;
	do_csb_w_h(STD_OFF);
	Testselectvar[30] = STD_OFF;
	do_eeprom_wp(STD_OFF);
	Testselectvar[31] = STD_OFF;
	do_fe1cantx(STD_OFF);
	Testselectvar[32] = STD_OFF;
	do_canatx(STD_OFF);
	Testselectvar[33] = STD_OFF;
	do_canbtx(STD_OFF);
	Testselectvar[34] = STD_OFF;
	do_lintx(STD_OFF);
	Testselectvar[35] = STD_OFF;
	do_drv_asc_latch_mcu(STD_OFF);
	Testselectvar[36] = STD_OFF;
	do_pmic_scs(STD_OFF);
	Testselectvar[37] = STD_OFF;
	do_pmic_sdi(STD_OFF);
	Testselectvar[38] = STD_OFF;
	do_flash_mosi(STD_OFF);
	Testselectvar[39] = STD_OFF;
	do_flash_cs(STD_OFF);
	Testselectvar[40] = STD_OFF;
	do_eeprom_mosi(STD_OFF);
	Testselectvar[41] = STD_OFF;
    do_Init_Bypass(STD_OFF);  
	Testselectvar[42] = STD_OFF;
  }
 else
 {
	 /* Hwdo_Test_Start = 0; */
	 /* DO Nothing */
 }

}


/******************************************************************************
* Function Name : Delay_Loop
* Description   : Delay loop for Discrete Output signals
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

