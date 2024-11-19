/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Eep.c                                                            */
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
/* [1]         24.07.2023    Sagar H              Created                    */
/*****************************************************************************/
#ifndef _Testapp_EEPROM_H_
#define _Testapp_EEPROM_H_

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Eep_Interface.h"
#include "Eep.h"


/*****************************************************************************/
/*                      Macro Section                                        */
/*****************************************************************************/
#define EEP_TEST_COUNT                 (40)


/*****************************************************************************/
/*                      Global Function Prototype                            */
/*****************************************************************************/
void Eep_Test_Init(void);
void Eep_Test_Status_Reg(void);
void Eep_Test_Status_ID_Reg(void);
void Eep_Test_WriteEnable_Reg (void);
Std_ReturnType Eep_Test_Compare_Result (uint8 Eep_Test_Tx_buf[], uint8 Eep_Test_Rx_buf[], U32 length);
U32 Eep_Test_Page_Memory_WriteByte(uint16 TestAddr, uint8 TestLength, uint8 TestStartVal, uint8 TestValDif);
U32 Eep_Test_Page_Memory_ReadByte(uint16 TestAddr, uint8 TestLength);
void Eep_Test_DIO_High(void);
void Eep_Test_DIO_Low(void);
void Eep_Test_SwitchToGPIO (void);


#endif  
