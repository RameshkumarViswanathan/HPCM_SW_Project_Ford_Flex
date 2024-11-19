/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	Testapp_Can.c                                                    */
/******************************************************************************/
/*  BASE MODULE                                                               */
/******************************************************************************/
/*  VERSION  1.0         | PROJECT   FORD Inverter                             */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    Implementation of CAN Tx and Rx Data Demo           				            */
/******************************************************************************/
/*  FUNCTIONS  						                                                    */
/*                                                                            */
/******************************************************************************/
/*  REMARKS                                                                   */
/******************************************************************************/
/* CHANGES                                                                    */
/* ID          dd.mm.yyyy    Name             Description                     */
/* ---         -----------   -----------      ---------------------           */
/* [1.0.0]     10.10.2023    Mohan Pakalapati   Created                       */
/******************************************************************************/

/******************************************************************************/
/*                      Include Section                                       */
/******************************************************************************/
#include "Std_Types.h"
#include "HwCan.h"



/******************************************************************************
**                      Imported Compiler Switch Check                       **
******************************************************************************/

/******************************************************************************
**                      Private Macro Definitions                            **
******************************************************************************/
/* Set CLRR to clear SRR bit and disable SRE bit */
#define CAN_DATA_LENGTH_CODE             (8U)

/******************************************************************************
**                      Private Type Definitions                             **
******************************************************************************/

/******************************************************************************
**                      Private Function Declarations                        **
******************************************************************************/

/******************************************************************************
**                      Global Constant Definitions                          **
******************************************************************************/

/******************************************************************************
**                      Global Variable Definitions                          **
******************************************************************************/
static uint8 myMsg[8] = {  'D', 'E', 'M', 'O', 'A', 'P', 'P', 'L' };  

/******************************************************************************
** Syntax : void Testapp_can_init(void)                                     **
**                                                                           **
** Service ID:   : NA                                                        **
**                                                                           **
** Sync/Async:   : Synchronous                                               **
**                                                                           **
** Reentrancy:   : Non Reentrant                                             **
**                                                                           **
** Parameters (in): none                                                     **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value: none                                                        **
**                                                                           **
** Description : DemoApp for CAN driver                                      **
**                                                                           **
******************************************************************************/
void Testapp_can_init(void)
{

  PduCH0.id = 0x123;                /* ID of dummy message for application*/
  //dummy.id = 0x456;                /* ID of dummy message for bootloader*/
  //dummy.id = 0x789;                /* ID of dummy message for "new" bootloader embedded in updater*/
  PduCH0.length = sizeof(myMsg);    /* Set message length to 8 */
  PduCH0.sdu = (uint8*)&myMsg[0];
  PduCH0.swPduHandle = 0;

  PduCH1.id = 0x124;                /* ID of dummy message for application*/
  //dummy.id = 0x456;                /* ID of dummy message for bootloader*/
  //dummy.id = 0x789;                /* ID of dummy message for "new" bootloader embedded in updater*/
  PduCH1.length = sizeof(myMsg);    /* Set message length to 8 */
  PduCH1.sdu = (uint8*)&myMsg[0];
  PduCH1.swPduHandle = 0;  

}