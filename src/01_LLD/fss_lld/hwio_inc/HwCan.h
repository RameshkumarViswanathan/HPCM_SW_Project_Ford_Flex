#if !defined(HWCAN_H)
#define HWCAN_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwCan.h                                                          */
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
/* [1.0.0]     10.01.2023    Mohan Pakalapati      Created                    */
/*****************************************************************************/

/* Header Include Files */

#include "Std_Types.h"
#include "CanIf_Cbk.h"

/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/

// #define CAN_NO_INTS_PER_CH          (04U)
// #define CAN_MAX_NO_MSGS             (20U)
// #define CAN_MAX_DATA_LEN            (64U)
#define CAN_HTH_CH10                   (0U)
#define CAN_HTH_CH0                    (02U) 
#define CAN_HTH_CH1                    (04U) 
#define CAN_HRH_CH0                    (03U) 
#define CAN_HRH_CH1                    (05U)

extern Can_PduType PduCH0;
extern Can_PduType PduCH1;
extern Can_PduType PduCH10;

// /* Function prototype */

// /* Start the CAN controllers */
// void Can_StartCanControllers(void);

// /* Stop the CAN controllers */
// void Can_StopCanControllers(void);

// /*****************************************************************************/
// /*                      Global Function Declarations                         */
// /*****************************************************************************/
// #define CAN_17_MCMCAN_START_SEC_CODE_QM_GLOBAL
// #include "Can_17_McmCan_MemMap.h"
// /* Enable Service Request for a particular Controller */
// void HwIo_Can_EnableServiceRequest(uint8 node);

// /* Disable Service Request for a particular Controller */
// void HwIo_Can_DisableServiceRequest(uint8 node);

// #define CAN_17_MCMCAN_STOP_SEC_CODE_QM_GLOBAL
// #include "Can_17_McmCan_MemMap.h"

/* to Start the CAN controllers */
// Can_ReturnType HwIo_Can_StartCanControllers(void);

/* to Stop the CAN controllers */
// Can_ReturnType HwIo_Can_StopCanControllers(void);

/* To Transmit CAN messages */
Can_ReturnType HwIo_Can_Transmit_CH0(const Can_PduType *const PduInfo);
Can_ReturnType HwIo_Can_Transmit_CH1(const Can_PduType *const PduInfo);
Can_ReturnType HwIo_Can_Transmit_CH10(const Can_PduType *const PduInfo);

Can_ReturnType HwIo_Can_Transmit();
                                   
/* To Receive CAN messages */
void HwIo_CAN_C00_Receive(Can_PduType *pdu);
void HwIo_CAN_C01_Receive(Can_PduType *pdu);
void HwIo_CAN_C10_Receive(Can_PduType *pdu);
void HwIo_CAN_Init(void);

/* the function performs the polling of receive
 indication when CanRxProcessing is set to POLLING or MIXED */
// void HwIo_Can_17_McmCan_MainFunction_Write(void);

/* The function performs the polling of receive 
indication when CanRxProcessing is set to POLLING or MIXED */
// void HwIo_Can_17_McmCan_MainFunction_Read(void);

#endif /* HWCAN_H */