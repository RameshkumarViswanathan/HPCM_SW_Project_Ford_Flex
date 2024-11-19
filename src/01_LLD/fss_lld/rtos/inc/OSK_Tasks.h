#ifndef OSK_Tasks_h
#define OSK_Tasks_h

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   OSK_Tasks.h                                                      */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
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
/* [1]         30.11.2022    Sivaprasath      Created                        */
/*****************************************************************************/

/* Header Include Files */



/* OSK task function prototype */
void Event_1MS( void );
void Event_2MS( void );
void Event_8MS( void );
void Event_16MS( void );
void Event_30MS( void );
void Event_50MS( void );
void Event_100MS( void );
void Event_IPC( void );



#endif /* OSK_Tasks_h */