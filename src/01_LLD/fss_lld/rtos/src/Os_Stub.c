/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Os_Stub.c                                                        */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function definition                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         02.01.2023    Sivaprasath      Created                        */
/* [2]         07.08.2023    Santhosh Addula  Removed cstart , Pre , Post task*/
/*                                            cbk from stubs and added to */
/*                                            Os_Cbk.c*/
/*****************************************************************************/


/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Os.h"
#include "Os_Cfg.h"
#include "Os_DisableInterrupts.h"
#include "Testapp_PWM.h"

/*****************************************************************************/
/*                      Private Object Like Macro Definitions                */
/*****************************************************************************/

/*****************************************************************************/
/*                      Global Function Declarations                         */
/*****************************************************************************/

/*****************************************************************************/
/*                      Private Function Declarations                        */
/*****************************************************************************/


/*****************************************************************************/
/*                      ISR Functions                                        */
/*****************************************************************************/

/*************************ISR stubs ****************/
#define PWM_CAL_BYTE_LENGTH     (7u)
// #pragma section ".rodata.Calib_32"
// const volatile uint8 u8_DPT_CAL_byte[DPT_CAL_BYTE_LENGTH] = {0,0,0,0,0,0,0};
uint32 u16_PWM_FRQ__CAL_byte_1[PWM_CAL_BYTE_LENGTH] = {45000,0,0,0,3150,3150,3150};
uint32 u16_PWM_FRQ__CAL_byte_2[PWM_CAL_BYTE_LENGTH] = {25000,0,0,0,1750,1750,1750};	
uint16 u8_PWM_fun_CAL_byte[2] = {0,350};
uint8 u8_PWM_test_table = 0;
// #pragma section
static U32 ISR_MotorControl_Notification = 0;

#define PWM_FRQ                  (0u)
#define PWM_DEDATIME             (1u)
#define PWM_FORCED_ON_A          (2u)
#define PWM_FORCED_ON_B          (3u)
#define PWM_FORCED_ON_C          (4u)
#define PWM_FORCED_OFF_A         (5u)
#define PWM_FORCED_OFF_B         (6u)
#define PWM_FORCED_OFF_C         (7u)
#define PWM_FORCED_DISABLED_A    (8u)
#define PWM_FORCED_DISABLED_B    (9u)
#define PWM_FORCED_DISABLED_C    (10u)

void Event_1MS( void ){}
void Event_2MS( void ){}
void Event_8MS( void ){}
void Event_16MS( void ){}
void Event_30MS( void ){}
void Event_50MS( void ){}
void Event_100MS( void ){}
void Event_IPC( void ){}


/* CAN1 ISRs Termination Definition */
ISR(CAN1SR0_ISR){}
ISR(CAN1SR1_ISR){}
ISR(CAN1SR2_ISR){}
ISR(CAN1SR3_ISR){}
ISR(CAN1SR4_ISR){}
ISR(CAN1SR5_ISR){}
ISR(CAN1SR6_ISR){}
ISR(CAN1SR7_ISR){}
ISR(CAN1SR8_ISR){}
ISR(CAN1SR9_ISR){}
ISR(CAN1SR10_ISR){}
ISR(CAN1SR11_ISR){}
ISR(CAN1SR12_ISR){}
ISR(CAN1SR13_ISR){}
ISR(CAN1SR14_ISR){}
ISR(CAN1SR15_ISR){}

ISR(CAN0SR0_ISR){}
ISR(CAN0SR1_ISR){}
ISR(CAN0SR2_ISR){}
ISR(CAN0SR3_ISR){}
ISR(CAN0SR4_ISR){}
ISR(CAN0SR5_ISR){}
ISR(CAN0SR6_ISR){}
ISR(CAN0SR7_ISR){}
ISR(CAN0SR8_ISR){}
ISR(CAN0SR9_ISR){}
ISR(CAN0SR10_ISR){}
ISR(CAN0SR11_ISR){}
ISR(CAN0SR12_ISR){}
ISR(CAN0SR13_ISR){}
ISR(CAN0SR14_ISR){}
ISR(CAN0SR15_ISR){}

/*****************************************************************************/
/* Function Name: extern void Event_InnerLoop_2( void )                      */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void Event_InnerLoop_2( void )
{
	
}
/*****************************************************************************/
/* Function Name: extern void Event_MotorControl_1( void )                   */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void Event_MotorControl_1( void )
{
    ISR_MotorControl_Notification++;
    if(u8_PWM_fun_CAL_byte[0] == PWM_FRQ)
    {
        if(u8_PWM_test_table == 1)
        {
           pwm_m(u16_PWM_FRQ__CAL_byte_1[0],u16_PWM_FRQ__CAL_byte_1[1],u16_PWM_FRQ__CAL_byte_1[2],u16_PWM_FRQ__CAL_byte_1[3],u16_PWM_FRQ__CAL_byte_1[4],u16_PWM_FRQ__CAL_byte_1[5],u16_PWM_FRQ__CAL_byte_1[6]); 
        }
        else if(u8_PWM_test_table == 2)
        {
            if(ISR_MotorControl_Notification%2 == 1)
            {
                pwm_m(u16_PWM_FRQ__CAL_byte_1[0],u16_PWM_FRQ__CAL_byte_1[1],u16_PWM_FRQ__CAL_byte_1[2],u16_PWM_FRQ__CAL_byte_1[3],u16_PWM_FRQ__CAL_byte_1[4],u16_PWM_FRQ__CAL_byte_1[5],u16_PWM_FRQ__CAL_byte_1[6]);
            }
            else
            {
            pwm_m(u16_PWM_FRQ__CAL_byte_2[0],u16_PWM_FRQ__CAL_byte_2[1],u16_PWM_FRQ__CAL_byte_2[2],u16_PWM_FRQ__CAL_byte_2[3],u16_PWM_FRQ__CAL_byte_2[4],u16_PWM_FRQ__CAL_byte_2[5],u16_PWM_FRQ__CAL_byte_2[6]); 
            }
        }
        else
        {

        }
    }
    else if(u8_PWM_fun_CAL_byte[0] == PWM_DEDATIME)
    {
        pwm_deadtime_m(u8_PWM_fun_CAL_byte[1]);
    }
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_ON_A)
    {
        pwm_forced_on_am();
    }
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_ON_B)
    {
        pwm_forced_on_bm();
    } 
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_ON_C)
    {
        pwm_forced_on_cm();
    }
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_OFF_A)
    {
        pwm_forced_off_am();
    }  
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_OFF_B)
    {
        pwm_forced_off_bm();
    }  
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_OFF_C)
    {
        pwm_forced_off_cm();
    } 
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_DISABLED_A)
    {
        pwm_forced_disable_am();
    } 
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_DISABLED_B)
    {
        pwm_forced_disable_bm();
    }
    else if(u8_PWM_fun_CAL_byte[0] == PWM_FORCED_DISABLED_C)
    {
        pwm_forced_disable_cm();
    }                           
    else
    {
        pwm_m(10000,0,0,0,10000,10000,10000);
    }

   if(PWM_LOOP_TEST == TRUE)
   {
		Testapp_PWM_RunTest(ISR_MotorControl_Notification);	
   }
}
/*****************************************************************************/
/* Function Name: extern void Event_MpsVadc_1( void )                        */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void Event_MpsVadc_1( void )
{
	
}

/*****************************************************************************/
/* Function Name: void Event_1ms_2( void )                                   */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void Event_1ms_2( void )
{
	
}


void AppInit_0(void)
{

}
void AppInit_1(void)
{

}
void AppInit_2(void)
{

}