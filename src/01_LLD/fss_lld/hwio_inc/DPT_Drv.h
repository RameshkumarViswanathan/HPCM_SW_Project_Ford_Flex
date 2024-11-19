/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   DPT_Dvr.h                                                       */
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
/* [1.0.0]      10/23/2023    Sivaprasath         Created                    */
/*****************************************************************************/
#ifndef DPT_DRV_H_
#define DPT_DRV_H_


/*******************************************************************************
**                      Other Header File Inclusion                           **
*******************************************************************************/
#include "Std_Types.h"



/*******************************************************************************
**                      Macro Definations                                     **
*******************************************************************************/
#define DPT_SINGLE_PLUSE                            (1)
#define DPT_DOUBLE_PLUSE                            (2)
#define DPT_SHORT_CIRCUIT_HS                        (3)
#define DPT_SHORT_CIRCUIT_LS                        (4)

#define DPT_PULSE_LELVE_HIGH                        (1)
#define DPT_PULSE_LELVE_LOW                         (0)

#define DPT_CAL_BYTE_LENGTH                         (7)

#define DPT_REQ_TIME_TICK1_RANGE_MAX                (6031)
#define DPT_REQ_TIME_TICK2_RANGE_MAX                (6031)
#define DPT_REQ_TIME_TICK3_RANGE_MAX                (6031)

#define DPT_REQ_TIME_MULTIPLE_FACTOR                (100)
#define DPT_REQ_TIME_OFFSET                         (-50)

#define DPT_CHANNEL_MIN                             (0x19)
#define DPT_CHANNEL_MAX                             (0x26)

#define DPT_CMD_START                               (1)

#define DPT_PULSE_START_FLAG_SET                    (1)
#define DPT_PULSE_START_FLAG_NOTSET                 (0)

#define DPT_TEST_MODE_DOUBLE_PULSE                  (0)
#define DPT_TEST_MODE_SHORT_CIRCUIT                 (1)

#define DPT_TEST_INIT                               (1u)
#define DPT_TEST_RUN                                (2u)
#define DPT_TEST_STOP                               (3u)
#define DPT_RETEST                                  (4u)

#define DPT_TEST_FLAG_INIT                          (255u)
#define DPT_TEST_FLAG_RUN                           (1u)
#define DPT_TEST_FLAG_STOP                          (2u)

/*******************************************************************************
**                          Typedef Definition                                **
*******************************************************************************/

/*******************************************************************************
**                  Global Variables With Extern Linkage                      **
*******************************************************************************/
extern U8 u8_Run_DPT_Test_Flag;

/*******************************************************************************
**                        Global Function Prototypes                          **
*******************************************************************************/

/*******************************************************************************
** Function Name	: DPT_MainFunction
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Main function of double pulse program
*******************************************************************************/
extern void DPT_MainFunction(void);

/*******************************************************************************
** Function Name	: DPT_IO_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
extern void DPT_IO_Init(void);

/*******************************************************************************
** Function Name	: DPT_Irq_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to init DPT interrupt
*******************************************************************************/
extern void DPT_Irq_Init(void);

/*******************************************************************************
** Function Name	: DPT_IO_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
extern void Timer_DelayTicks(uint32 ReqTimeTicks);

/*******************************************************************************
** Function Name	: Run_DPT_Test
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
extern void Run_DPT_Test(void);

/*******************************************************************************
** Function Name	: DPT_Test_init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
extern void DPT_Test_init(void);

/*******************************************************************************
** Function Name	: DPT_Test_init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Initialization of I / O port in double pulse experiment
*******************************************************************************/
extern void Stop_DPT_Test(void);

#endif /* DPT_DRV_H_ */