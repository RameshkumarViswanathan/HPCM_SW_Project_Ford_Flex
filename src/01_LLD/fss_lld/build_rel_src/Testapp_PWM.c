/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Testapp_GTM.c                                                    */
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
/* [1.0.0]     04.07.2023    Sivaprasath      Created                        */
/* [1.0.1]     12.09.2023    Sivaprasath      PWM Test scenarios updated      */
/*****************************************************************************/

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "PhC_Drv.h"
#include "HwPwm.h"
#include "Pwm3ph.h"
#include "Std_Types.h"
#include "Testapp_PWM.h"
#include "IfxPort_reg.h"
#include "IfxSrc_reg.h"
#include "Dio.h"
HwPwm_Test pwm_testarray_table1[PWM_TABLE1_TESTS];
HwPwm_Test pwm_testarray_por;

U8  Flag = 0;
static U32 set_pwm_default_flag = (uint8)PWM_DEFAULT;

float32 TestTable1[128][7]    = {
{12500,0,0,0,0,0,0},
{12500,0,0,0,3.2,3.2,3.2},
{25000,0,0,0,11.2,11.2,11.2},
{12500,0,0,0,19.2,19.2,19.2},
{12500,0,0,0,23.2,23.2,23.2},
{12500,0,0,0,31.2,31.2,31.2},
{12500,0,0,0,35.2,35.2,35.2},
{12500,0,0,0,39.6,39.6,39.6},
{12500,0,0,0,0.4,0.4,0.4},
{12500,0,0,0,3.6,3.6,3.6},
{12500,0,0,0,11.6,11.6,11.6},
{12500,0,0,0,19.6,19.6,19.6},
{12500,0,0,0,23.6,23.6,23.6},
{12500,0,0,0,31.6,31.6,31.6},
{12500,0,0,0,35.6,35.6,35.6},
{12500,0,0,0,40,40,40},
{12500,0,0,0,39.2,39.2,39.2},
{12500,0,0,0,16,16,16},
{12500,0,0,0,-2,-2,-2},
{12500,0,0,0,40,40,40},
{12500,0,0,0,49.2,49.2,49.2},
{12500,0,0,0,64.8,64.8,64.8},
{12500,0,0,0,75,75,75},
{12500,0,0,0,99.4,99.4,99.4},
{12500,0,0,0,39.6,39.6,39.6},
{12500,0,0,0,16.4,16.4,16.4},
{12500,0,0,0,-1.6,-1.6,-1.6},
{12500,0,0,0,40.4,40.4,40.4},
{12500,0,0,0,49.6,49.6,49.6},
{12500,0,0,0,65.2,65.2,65.2},
{12500,0,0,0,75.4,75.4,75.4},
{12500,0,0,0,99.8,99.8,99.8},
{12500,0,0,0,39.6,39.6,39.6},
{12500,0,0,0,16.4,16.4,16.4},
{12500,0,0,0,-1.6,-1.6,-1.6},
{12500,0,0,0,40.4,40.4,40.4},
{12500,0,0,0,49.6,49.6,49.6},
{12500,0,0,0,65.2,65.2,65.2},
{12500,0,0,0,75.4,75.4,75.4},
{12500,0,0,0,99.8,99.8,99.8},
{12500,0,0,0,40,40,40},
{12500,0,0,0,20,20,20},
{12500,0,0,0,10,10,10},
{12500,0,0,0,60,60,60},
{12500,0,0,0,73.2,73.2,73.2},
{12500,0,0,0,96.8,96.8,96.8},
{12500,0,0,0,111,111,111},
{12500,0,0,0,139.8,139.8,139.8},
{12500,0,0,0,40.4,40.4,40.4},
{12500,0,0,0,20.4,20.4,20.4},
{12500,0,0,0,10.4,10.4,10.4},
{12500,0,0,0,60.4,60.4,60.4},
{12500,0,0,0,73.6,73.6,73.6},
{12500,0,0,0,97.2,97.2,97.2},
{12500,0,0,0,111.4,111.4,111.4},
{12500,0,0,0,140.2,140.2,140.2},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,0,0,0,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,3.2,3.2,3.2},
{12500,1,1,1,11.2,11.2,11.2},
{12500,1,1,1,19.2,19.2,19.2},
{12500,1,1,1,23.2,23.2,23.2},
{12500,1,1,1,31.2,31.2,31.2},
{12500,1,1,1,35.2,35.2,35.2},
{12500,1,1,1,39.6,39.6,39.6},
{12500,1,1,1,0.4,0.4,0.4},
{12500,1,1,1,3.6,3.6,3.6},
{12500,1,1,1,11.6,11.6,11.6},
{12500,1,1,1,19.6,19.6,19.6},
{12500,1,1,1,23.6,23.6,23.6},
{12500,1,1,1,31.6,31.6,31.6},
{12500,1,1,1,35.6,35.6,35.6},
{12500,1,1,1,40,40,40},
{12500,1,1,1,39.2,39.2,39.2},
{12500,1,1,1,16,16,16},
{12500,1,1,1,-2,-2,-2},
{12500,1,1,1,40,40,40},
{12500,1,1,1,49.2,49.2,49.2},
{12500,1,1,1,64.8,64.8,64.8},
{12500,1,1,1,75,75,75},
{12500,1,1,1,99.4,99.4,99.4},
{12500,1,1,1,39.6,39.6,39.6},
{12500,1,1,1,16.4,16.4,16.4},
{12500,1,1,1,-1.6,-1.6,-1.6},
{12500,1,1,1,40.4,40.4,40.4},
{12500,1,1,1,49.6,49.6,49.6},
{12500,1,1,1,65.2,65.2,65.2},
{12500,1,1,1,75.4,75.4,75.4},
{12500,1,1,1,99.8,99.8,99.8},
{12500,1,1,1,39.6,39.6,39.6},
{12500,1,1,1,16.4,16.4,16.4},
{12500,1,1,1,-1.6,-1.6,-1.6},
{12500,1,1,1,40.4,40.4,40.4},
{12500,1,1,1,49.6,49.6,49.6},
{12500,1,1,1,65.2,65.2,65.2},
{12500,1,1,1,75.4,75.4,75.4},
{12500,1,1,1,99.8,99.8,99.8},
{12500,1,1,1,40,40,40},
{12500,1,1,1,20,20,20},
{12500,1,1,1,10,10,10},
{12500,1,1,1,60,60,60},
{12500,1,1,1,73.2,73.2,73.2},
{12500,1,1,1,96.8,96.8,96.8},
{12500,1,1,1,111,111,111},
{12500,1,1,1,139.8,139.8,139.8},
{12500,1,1,1,40.4,40.4,40.4},
{12500,1,1,1,20.4,20.4,20.4},
{12500,1,1,1,10.4,10.4,10.4},
{12500,1,1,1,60.4,60.4,60.4},
{12500,1,1,1,73.6,73.6,73.6},
{12500,1,1,1,97.2,97.2,97.2},
{12500,1,1,1,111.4,111.4,111.4},
{12500,1,1,1,140.2,140.2,140.2},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
{12500,1,1,1,0,0,0},
};


void Testapp_PWM_init(void)
{      
        uint8   test_pwm = 0;
	   for(int i=0;i<128;i++)
	   {

			pwm_testarray_table1[i].Pwm_Freq_u16 =(uint16)TestTable1[i][0];
			pwm_testarray_table1[i].b_polarity_a =(FLAG)TestTable1[i][1];
			pwm_testarray_table1[i].b_polarity_b =(uint16)TestTable1[i][2];
			pwm_testarray_table1[i].b_polarity_c =(uint16)TestTable1[i][3];
			pwm_testarray_table1[i].PwmDutyCyclePhaseU1_f32 =(uint16)TestTable1[i][4];
			pwm_testarray_table1[i].PwmDutyCyclePhaseV1_f32 =(uint16)TestTable1[i][5];
			pwm_testarray_table1[i].PwmDutyCyclePhaseW1_f32 =(uint16)TestTable1[i][6];
		    
	   }
			
		pwm_testarray_por.Pwm_Freq_u16 =10000;
		pwm_testarray_por.b_polarity_a =0;
		pwm_testarray_por.b_polarity_b =0;
		pwm_testarray_por.b_polarity_c =0;
		pwm_testarray_por.PwmDutyCyclePhaseU1_f32 =0;
		pwm_testarray_por.PwmDutyCyclePhaseV1_f32 =0;
		pwm_testarray_por.PwmDutyCyclePhaseW1_f32 =0;
        VAR_Cpld_Normal_Work_u8 =1;
		/* 100us period w.r.t. 300MHz Freq with 50% duty cycle for all Phases*/
		pwm_m(10000U, 0,0,0,2500,2500,2500);
		pwm_m(10000U, 0,0,0,3000,6000,8000); 
		pwm_m(10000U, 0,0,0,5000,7500,2500); 
		pwm_m(10000U, 0,0,0,2500,2500,2500);
		pwm_m(10000U, 1,1,1,2500,2500,2500);
		pwm_m(10000U, 0,0,0,7500,7500,7500);		
		pwm_deadtime_m(0) ; 
		pwm_m(10000U, 0,0,0,5000,5000,5000);
		pwm_deadtime_m(300) ;
		pwm_m(20000U, 0,0,0,5000,5000,5000);
		pwm_m(20000U, 0,0,0,2500,5000,7500);
		pwm_m(100000U, 0,0,0,2500,5000,7500);
		pwm_m(20000U, 0,0,0,2500,5000,7500);
		// pwm_m(10000U, 0,0,0,9900,9900,9900);
		pwm_m(10000U, 0,0,0,10000,10000,10000);
		pwm_m(10000U, 0,0,0,10000,10000,10000);
		pwm_m(10000U, 0,0,0,7500,7500,7500);
		pwm_m(10000U, 0,0,0,0,0,0);
		pwm_m(10000U, 0,0,0,7500,7500,7500);
		pwm_m(10000U, 0,0,0,100,100,100);

		// /* 100us period w.r.t. 300MHz Freq with Ph A , Ph B with 40% DC & Ph C with 20% DC*/
		// pwm_m(10000U, 0,0,0,40,40,20); 
		// pwm_deadtime_m(400) ; 
		// pwm_m(10000U, 0,0,0,40,40,20); 
		
		pwm_forced_on_am(); 
		pwm_m(20000U, 0,0,0,4000,4000,2000); 
		pwm_forced_disable_am();
		pwm_forced_on_bm();
		pwm_m(10000U, 0,0,0,4000,4000,2000); 
		pwm_forced_disable_bm();
		pwm_forced_on_cm();  	
		/* 100us period w.r.t. 300MHz Freq with Ph A -40% , PhB - 40% , PhC-20 , Polarity_PhA - 1 ,Polarity_PhB - 0 ,Polarity_PhC - 0 */    
		pwm_m(20000U, 0,0,0,4000,4000,2000);   
		pwm_forced_disable_cm();
		
		pwm_forced_off_am();
		pwm_m(10000U, 0,0,0,4000,4000,2000);
		pwm_forced_disable_am();
		pwm_forced_off_bm();
		pwm_m(20000U, 0,0,0,4000,4000,2000);
		pwm_forced_disable_bm();
		pwm_forced_off_cm();
		pwm_m(10000U, 0,0,0,4000,4000,2000);
		pwm_forced_disable_cm();
		// pwm_forced_disable_am();
		// pwm_forced_disable_bm();
		// pwm_forced_disable_cm();
		// /* 100us period w.r.t. 300MHz Freq with 0% duty cycle for all Phases*/
		// pwm_m(10000U, 0,0,0,0,0,0); 	
		// /* 100us period w.r.t. 300MHz Freq with 100% duty cycle for all Phases*/
		// pwm_m(10000U, 0,0,0,100,100,100); 
		pwm_deadtime_m(350) ; 	
		pwm_m(25000,0,0,0,0,0,0); // TB1 TC0
		pwm_m(25000,0,0,0,2000,2000,2000); // TB1 TC1
		pwm_m(25000,0,0,0,7000,7000,7000); // TB1 TC2
		pwm_m(25000,0,0,0,12000,12000,12000); // TB1 TC3
		pwm_m(25000,0,0,0,14500,14500,14500); // TB1 TC4
		pwm_m(25000,0,0,0,19500,19500,19500); // TB1 TC5
		pwm_m(25000,0,0,0,22000,22000,22000); // TB1 TC6
		pwm_m(25000,0,0,0,24750,24750,24750); // TB1 TC7
		pwm_m(25000,0,0,0,250,250,250); // TB1 TC8
		pwm_m(25000,0,0,0,2250,2250,2250); // TB1 TC9
		pwm_m(25000,0,0,0,25000,25000,25000); // TB1 TC20
		pwm_m(25000,0,0,0,25250,25250,25250); // TB1 TC28
		pwm_m(25000,0,0,0,62375,62375,62375); // TB1 TC32
		pwm_deadtime_m(200) ;
		pwm_m(25000,0,0,0,1750,1750,1750);

}

void Testapp_PWM_RunTest(U32 test_no)
{

	if(set_pwm_default_flag == (uint8)PWM_DEFAULT)
	{
		pwm_m(pwm_testarray_por.Pwm_Freq_u16, \
				pwm_testarray_por.b_polarity_a, \
				pwm_testarray_por.b_polarity_b, \
				pwm_testarray_por.b_polarity_c, \
				pwm_testarray_por.PwmDutyCyclePhaseU1_f32, \
				pwm_testarray_por.PwmDutyCyclePhaseV1_f32, \
				pwm_testarray_por.PwmDutyCyclePhaseW1_f32);
		set_pwm_default_flag = (uint8)PWM_NOTIFY;
	}
	else
	{  
		if(test_no < (uint8)PWM_TABLE1_TESTS)
		{
			pwm_m(pwm_testarray_table1[test_no].Pwm_Freq_u16, \
				pwm_testarray_table1[test_no].b_polarity_a, \
				pwm_testarray_table1[test_no].b_polarity_b, \
				pwm_testarray_table1[test_no].b_polarity_c, \
				pwm_testarray_table1[test_no].PwmDutyCyclePhaseU1_f32, \
				pwm_testarray_table1[test_no].PwmDutyCyclePhaseV1_f32, \
				pwm_testarray_table1[test_no].PwmDutyCyclePhaseW1_f32);     
		}
		else
		{
			pwm_m(pwm_testarray_por.Pwm_Freq_u16, \
				pwm_testarray_por.b_polarity_a, \
				pwm_testarray_por.b_polarity_b, \
				pwm_testarray_por.b_polarity_c, \
				pwm_testarray_por.PwmDutyCyclePhaseU1_f32, \
				pwm_testarray_por.PwmDutyCyclePhaseV1_f32, \
				pwm_testarray_por.PwmDutyCyclePhaseW1_f32);         
		}
		set_pwm_default_flag = (uint8)PWM_NOTIFY;
	}

}

void Toggle_DIO(U8 Port)
{
      if(Flag == 0){   
      Dio_WriteChannel((Dio_ChannelType)Port,STD_HIGH);Flag=1;}
      else{
      Dio_WriteChannel((Dio_ChannelType)Port,STD_LOW);Flag=0;}
}
void Test1 (void)
{
	MODULE_P02.IOCR0.U &= 0x00000000;   
	MODULE_P02.IOCR0.U |= 0x80808080;  /*Set P2.0,P2.1,P2.2 as output, pushpull, general I/O*/ 

	MODULE_P02.IOCR4.U &= 0xF8000000;
	MODULE_P02.IOCR4.U |= 0x00808080;  /*Set P2.3,P2.4,P2.5 as output, pushpull, general I/O*/
}