#ifndef Events_h
#define Events_h

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Events.h                                                         */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                  */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function declaration                                       */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         30.11.2022    Sivaprasath      Created                        */
/* [2]         02.02.2023    Chandra Prakash  Declaration of Event functions */
/*                                            for ISRs and Tasks             */
/*****************************************************************************/

/* Header Include Files */
#include "OSK_Tasks.h"
#include "ISR_MotorControl.h"
#include "ISR_Innerloop_2.h"
#include "ISR_Outerloop_2.h"
#include "ISR_MpsVadc.h"



/* Extern function prototype */
extern void Event_1MS( void );
extern void Event_2MS( void );
extern void Event_8MS( void );
extern void Event_16MS( void );
extern void Event_30MS( void );
extern void Event_50MS( void );
extern void Event_100MS( void );
extern void Event_IPC( void );

/* Motor Control */
extern void Event_MotorControl_1( void );

/* ISR Inner Loop 2 */
extern void Event_InnerLoop_2( void );

/* ISR Outer Loop 2 */
extern void Event_1ms_2( void );

/* ISR MpsVadc */
extern void Event_MpsVadc_1( void );

#endif /* Events_h */