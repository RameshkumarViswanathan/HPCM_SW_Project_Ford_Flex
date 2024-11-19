#ifndef _Hwio_Fcpu_H_
#define _Hwio_Fcpu_H_
/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   hwiofcpu.h                                                       */
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
/* [1]         15.05.2023    Chandra Prakash      Created                    */
/*****************************************************************************/

#include "hwiotype.h"


/* Power-Down Procedure */
//void SetHWIO_PowerDown( void );

/* Battery Connection Status */
//BYTE GetHWIO_b_BatConnectionStatus( void );
//void ClrHWIO_BatConnectionStatus( void );

/* Wakeup Signal Status And Configuration */
//BYTE GetHWIO_e_WakeupSigSt( void );

/* Watchdog Timer */
void ServiceHWIO_MainWDT( void );

/* Modulo Time-Stamp Time */
U32 GetHWIO_t_Current( void );
//U32 GetHWIO_Cnt_SysTicks( void );         
//WORD GetHWIO_Cnt_SysTicksPerMicrosec( void );

/* External Watchdog Timer */
//void ServiceHWIO_ExtWDT( void );
//void SetHWIO_ExtWDT_SrvcDsbl( BYTE );

#endif  /*_HWIOFCPU_H_*/
