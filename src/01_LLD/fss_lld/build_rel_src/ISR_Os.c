/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   ISR_Os.c                                                         */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function defenitions                                       */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         03.01.2023    Chandra Prakash      Created                    */
/* [2]         07.08.2023    Santhosh Addula      Added System Timer ISR for */
/*                                                core1 & core2              */
/*****************************************************************************/


/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "ISR_Os.h"
#include "Stm_TimeTest.h"
#include "IfxStm_reg.h"
#include "IfxSrc_reg.h"
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
/*                      Global Function Definitions                          */
/*****************************************************************************/



/*****************************************************************************/
/* Function Name: void hwio_rtos_status_task_overrun_0( U16 task_id )        */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : U16 task_id                                             */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
TeOS_e_TASKOVERRUN_status hwio_rtos_status_task_overrun_0( U16 task_id )
{
	if(task_id > 1)
	{
		return TASK_OVERRUN;
	}
	else{
		return NO_OVERRUN;
	}
}

/*****************************************************************************/
/* Function Name: void hwio_rtos_status_stack_overflow_0( U16 stack_id )     */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : U16 task_id                                             */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void hwio_rtos_status_stack_overflow_0( U16 stack_id )
{
	
}

/*****************************************************************************/
/* Function Name: void hwio_rtos_status_stack_overflow_1( U16 stack_id )     */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : U16 task_id                                             */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void hwio_rtos_status_stack_overflow_1( U16 stack_id )
{
	
}

/*****************************************************************************/
/* Function Name: void hwio_rtos_status_stack_overflow_2( U16 stack_id )     */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : U16 task_id                                             */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void hwio_rtos_status_stack_overflow_2( U16 stack_id )
{
	
}

/*****************************************************************************/
/* Function Name: void sw_interrupt_call( U8 destCore )                      */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : U8 destCore                                             */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
void sw_interrupt_call( U8 destCore )
{
	SRC_GPSR_GPSR0_SR4.B.SETR = 1;
}

/*****************************************************************************/
/* Function Name: U32 sys_tm_us( void )                                      */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value                                                              */
/*****************************************************************************/
U32 Previous_time;
U32 sys_tm_us( void )
{
	U32 Current_time;	
	//conversion from milli to micro
	Current_time =  ((STM0_TIM0.U ) * 1000000/ OSSWTICKSPERSECOND );//in us sec
	uint32 Interval = 0;
	if (Current_time > Previous_time)
	{
		Interval = Current_time - Previous_time;
	}
	else
	{	 
		Interval =  0xFFFFFFFF - Previous_time + Current_time;
	}
	Previous_time = Current_time;
	return (Interval); 
}

ISR(SystemTimer_ISR_core1)
{

    SystemTimer_ISR_core1_Handler();

}

ISR(SystemTimer_ISR_core2)
{

    SystemTimer_ISR_core2_Handler();

}