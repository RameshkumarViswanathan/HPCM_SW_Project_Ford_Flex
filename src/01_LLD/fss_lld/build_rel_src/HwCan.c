/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwCan.c                                                          */
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
/* [1]         03.01.2023    Mohan Pakalapati  Created                       */
/*****************************************************************************/
/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "HwCan.h"
#include "Can.h"

/* Include the declarations of Can functions and types */
#include "IfxSrc_reg.h"
/*****************************************************************************/
/*                      Private Object Like Macro Definitions                */
/*****************************************************************************/
#define CAN_SRC_SET_SRE                 (0x00000400U)
/* Set CLRR to clear SRR bit and disable SRE bit */
#define CAN_SRC_SET_CLRR_DISABLE_SRE     (0x52000000U)
#define CAN_SRC_NODE00     (0U)
#define CAN_SRC_NODE01     (1U)
#define CAN_SRC_NODE10     (2U)


/*****************************************************************************/
/*                      Global Function Definitions                          */
/*****************************************************************************/

/******************************************************************************
**                      Global Variable Definitions                          **
******************************************************************************/
// uint32 SrcCan0Int[CAN_NO_INTS_PER_CH] = {0};
// uint32 SrcCan1Int[CAN_NO_INTS_PER_CH] = {0};
// uint8 CanRxDataBuff[CAN_MAX_NO_MSGS][CAN_MAX_DATA_LEN] = {{0}, {0}};
#define CAN_MAX_DATA_LEN 64
Can_PduType PduCH0;
Can_PduType PduCH1;
Can_PduType PduCH10;
Can_PduType Rx_PduCH10;
Can_PduType Rx_PduCH00;
Can_PduType Rx_PduCH01;
uint8 CH00_CANMSG[CAN_MAX_DATA_LEN] = {0};
uint8 CH01_CANMSG[CAN_MAX_DATA_LEN] = {0};
uint8 CH10_CANMSG[CAN_MAX_DATA_LEN] = {0};
static uint8 myMsg[8] = {  'D', 'E', 'M', 'O', 'A', 'P', 'P', 'L' }; 


/* Global variables used for pass/fail criteria */
uint8 CAN_RxConfirmCount = 0;
uint8 CAN_TxConfirmCount = 0;

/*****************************************************************************/
/*                      Private Function Declarations                        */
/*****************************************************************************/

/*****************************************************************************/
/*                      Private Function Definitions                         */
/*****************************************************************************/

// /*******************************************************************************
// ** Function Name	  : HwIo_Can_StartCanControllers
// ** Parameter[in] 	  : Start Status
// ** Parameter[out] 	: None
// ** Return Value	  	: None
// ** Note			  	    :
// ** Description	  	: Function to start the configured CAN controllers 
// *******************************************************************************/
// Can_ReturnType HwIo_CAN_CtrlStartStatus;

// Can_ReturnType HwIo_Can_StartCanControllers(void)
// {
//   Can_ReturnType ApiStatus;
//   /* Put the CAN controllers into started state */
//   #if(MCAL_AR_VERSION == MCAL_AR_422)
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_0, CAN_T_START);
//   #else
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_0, CAN_CS_STARTED);
//   #endif
//   #if(MCAL_AR_VERSION == MCAL_AR_422)
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_1, CAN_T_START);
//   #else
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_1, CAN_CS_STARTED);
//   #endif
//   HwIo_CAN_CtrlStartStatus=ApiStatus;
//   return (ApiStatus);
// }

// /*******************************************************************************
// ** Function Name	  : HwIo_Can_StopCanControllers
// ** Parameter[in] 	  : None
// ** Parameter[out] 	: None
// ** Return Value	  	: Stop Status
// ** Note			  	    :
// ** Description	  	: Function to Stop the configured CAN controllers 
// *******************************************************************************/
// Can_ReturnType HwIo_CAN_CtrlStopStatus;
// Can_ReturnType HwIo_Can_StopCanControllers(void)
// {
//   Can_ReturnType ApiStatus;
  
//   #if(MCAL_AR_VERSION == MCAL_AR_422)
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_0, CAN_T_STOP);
//   #else
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_0, CAN_CS_STOPPED);
//   #endif
//   #if(MCAL_AR_VERSION == MCAL_AR_422)
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_1, CAN_T_STOP);
//   #else
//   ApiStatus=Can_17_McmCan_SetControllerMode (Can_17_McmCanConf_CanController_CanController_1, CAN_CS_STOPPED);
//   #endif
//   HwIo_CAN_CtrlStopStatus=ApiStatus;
//   return (ApiStatus);
// }

// /*******************************************************************************
// ** Function Name	  : HwIo_Can_EnableServiceRequest
// ** Parameter[in] 	  : node 
// ** Parameter[out] 	: None
// ** Return Value	  	: None
// ** Note			  	    :
// ** Description	  	: Enable Service Request for a particular Controller 
// *******************************************************************************/
// void HwIo_Can_EnableServiceRequest(uint8 node)
// {
//   if((CAN_SRC_NODE0 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SRC_CAN_CAN0_INT0.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT1.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT2.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT3.U |= CAN_SRC_SET_SRE ;

//     if(CAN_SRC_NODE0 == node)
//     {
//       SRC_CAN_CAN0_INT0.U |= SrcCan0Int[0] ;
//       SRC_CAN_CAN0_INT1.U |= SrcCan0Int[1] ;
//       SRC_CAN_CAN0_INT2.U |= SrcCan0Int[2] ;
//       SRC_CAN_CAN0_INT3.U |= SrcCan0Int[3] ;
//     }
//   }
//   #ifdef SRC_CAN_CAN1_INT0
//   if((CAN_SRC_NODE1 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SRC_CAN_CAN1_INT0.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN1_INT1.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN1_INT2.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN1_INT3.U |= CAN_SRC_SET_SRE ;

//     if(CAN_SRC_NODE1 == node)
//     {
//       SRC_CAN_CAN1_INT0.U |= SrcCan1Int[0] ;
//       SRC_CAN_CAN1_INT1.U |= SrcCan1Int[1] ;
//       SRC_CAN_CAN1_INT2.U |= SrcCan1Int[2] ;
//       SRC_CAN_CAN1_INT3.U |= SrcCan1Int[3] ;
//     }
//   }
//  #else
//   if((CAN_SRC_NODE1 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SRC_CAN_CAN0_INT12.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT13.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT14.U |= CAN_SRC_SET_SRE ;
//     SRC_CAN_CAN0_INT15.U |= CAN_SRC_SET_SRE ;

//     if(CAN_SRC_NODE1 == node)
//     {
//       SRC_CAN_CAN0_INT12.U |= SrcCan1Int[0] ;
//       SRC_CAN_CAN0_INT13.U |= SrcCan1Int[1] ;
//       SRC_CAN_CAN0_INT14.U |= SrcCan1Int[2] ;
//       SRC_CAN_CAN0_INT15.U |= SrcCan1Int[3] ;
//     }
//   }
//   #endif
// }
// /*******************************************************************************
// ** Function Name	  : HwIo_Can_DisableServiceRequest
// ** Parameter[in] 	  : node 
// ** Parameter[out] 	: None
// ** Return Value	  	: None
// ** Note			  	    :
// ** Description	  	: Disable Service Request for a particular Controller 
// *******************************************************************************/
// void HwIo_Can_DisableServiceRequest(uint8 node)
// {
//   if((CAN_SRC_NODE0 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SrcCan0Int[0] = SRC_CAN_CAN0_INT0.U ;
//     SrcCan0Int[1] = SRC_CAN_CAN0_INT1.U ;
//     SrcCan0Int[2] = SRC_CAN_CAN0_INT2.U ;
//     SrcCan0Int[3] = SRC_CAN_CAN0_INT3.U ;

//     SRC_CAN_CAN0_INT0.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT1.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT2.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT3.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//   }
//  #ifdef SRC_CAN_CAN1_INT0
//  if((CAN_SRC_NODE1 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SrcCan1Int[0] = SRC_CAN_CAN1_INT0.U ;
//     SrcCan1Int[1] = SRC_CAN_CAN1_INT1.U ;
//     SrcCan1Int[2] = SRC_CAN_CAN1_INT2.U ;
//     SrcCan1Int[3] = SRC_CAN_CAN1_INT3.U ;

//     SRC_CAN_CAN1_INT0.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN1_INT1.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN1_INT2.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN1_INT3.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//   }
// #else
//   if((CAN_SRC_NODE1 == node) || (CAN_SRC_NODE2 == node))
//   {
//     SrcCan1Int[0] = SRC_CAN_CAN0_INT12.U ;
//     SrcCan1Int[1] = SRC_CAN_CAN0_INT13.U ;
//     SrcCan1Int[2] = SRC_CAN_CAN0_INT14.U ;
//     SrcCan1Int[3] = SRC_CAN_CAN0_INT15.U ;

//     SRC_CAN_CAN0_INT12.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT13.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT14.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//     SRC_CAN_CAN0_INT15.U = CAN_SRC_SET_CLRR_DISABLE_SRE ;
//   }
// #endif
// }

/*******************************************************************************
** Function Name	  : HwIo_CAN_Init
** Parameter[in] 	  : HNone
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	    :
** Description	  	: HwIo_CAN_Init  
*******************************************************************************/
void HwIo_CAN_Init(void)
{
  PduCH0.id = 0x123;                /* ID of dummy message for application*/ 
  PduCH0.length = sizeof(myMsg);    /* Set message length to 8 */
  PduCH0.sdu = (uint8*)&myMsg[0];
  PduCH0.swPduHandle = 0;

  PduCH1.id = 0x124;                /* ID of dummy message for application*/
  PduCH1.length = sizeof(myMsg);    /* Set message length to 8 */
  PduCH1.sdu = (uint8*)&myMsg[0];
  PduCH1.swPduHandle = 0; 

  PduCH10.id = 0x125;                /* ID of dummy message for application*/
  PduCH10.length = sizeof(myMsg);    /* Set message length to 8 */
  PduCH10.sdu = (uint8*)&myMsg[0];
  PduCH10.swPduHandle = 0;   

}
/*******************************************************************************
** Function Name	  : HwIo_Can_Transmit_CH1
** Parameter[in] 	  : Hth, PduInfo
** Parameter[out] 	: None
** Return Value	  	: HwIo_Can_Tx_status
** Note			  	    :
** Description	  	: Transmit CAN message on the given channel  
*******************************************************************************/
/* Global var used by various functions to know the status of CAN Tx and failure returns */
Can_ReturnType HwIo_Can_Tx_status_CH0; 
Can_ReturnType HwIo_Can_Tx_status_CH1; 
Can_ReturnType HwIo_Can_Tx_status_CH10;

Can_ReturnType HwIo_Can_Transmit_CH0(const Can_PduType *const PduInfo)
{
  Can_ReturnType can_transmit_status = CAN_NOT_OK;
  
  can_transmit_status = Can_Write((uint8)CAN_HTH_CH0, PduInfo);
  
  HwIo_Can_Tx_status_CH0 = can_transmit_status;
  return can_transmit_status;
}

/*******************************************************************************
** Function Name	  : HwIo_Can_Transmit_CH1
** Parameter[in] 	  : Hth, PduInfo
** Parameter[out] 	: None
** Return Value	  	: HwIo_Can_Tx_status
** Note			  	    :
** Description	  	: Transmit CAN message on the given channel  
*******************************************************************************/
/* Global var used by various functions to know the status of CAN Tx and failure returns */

Can_ReturnType HwIo_Can_Transmit_CH1(const Can_PduType *const PduInfo)
{
  Can_ReturnType can_transmit_status = CAN_NOT_OK;
  
  can_transmit_status = Can_Write((uint8)CAN_HTH_CH1, PduInfo);
  
  HwIo_Can_Tx_status_CH1 = can_transmit_status;
  return can_transmit_status;
}

/*******************************************************************************
** Function Name	  : HwIo_Can_Transmit_CH10
** Parameter[in] 	  : Hth, PduInfo
** Parameter[out] 	: None
** Return Value	  	: HwIo_Can_Tx_status
** Note			  	    :
** Description	  	: Transmit CAN message on the given channel  
*******************************************************************************/
/* Global var used by various functions to know the status of CAN Tx and failure returns */

Can_ReturnType HwIo_Can_Transmit_CH10(const Can_PduType *const PduInfo)
{
  Can_ReturnType can_transmit_status = CAN_NOT_OK;
  
  can_transmit_status = Can_Write((uint8)CAN_HTH_CH10, PduInfo);
  
  HwIo_Can_Tx_status_CH10 = can_transmit_status;
  return can_transmit_status;
}

Can_ReturnType HwIo_Can_Transmit()
{
   HwIo_Can_Transmit_CH10(&PduCH10);
   HwIo_Can_Transmit_CH0(&PduCH0);
  //  HwIo_Can_Transmit_CH1(&PduCH1);
}

/*******************************************************************************
** Function Name	  : HwIo_CAN_Receive
** Parameter[in] 	  : None
** Parameter[out] 	: None
** Return Value	  	: None 
** Note			  	    :
** Description	  	: Receive CAN message from the Rx Buffer 
*******************************************************************************/
void HwIo_CAN_CH0_Receive(Can_PduType *pdu)
{
    pdu = &Rx_PduCH00;
}

/*******************************************************************************
** Function Name	  : HwIo_CAN_CH01_Receive
** Parameter[in] 	  : None
** Parameter[out] 	: None
** Return Value	  	: None 
** Note			  	    :
** Description	  	: Receive CAN message from the Rx Buffer 
*******************************************************************************/
void HwIo_CAN_CH01_Receive(Can_PduType *pdu)
{
    pdu = &Rx_PduCH01;
}

/*******************************************************************************
** Function Name	  : HwIo_CAN_CH01_Receive
** Parameter[in] 	  : None
** Parameter[out] 	: None
** Return Value	  	: None 
** Note			  	    :
** Description	  	: Receive CAN message from the Rx Buffer 
*******************************************************************************/
void HwIo_CAN_C10_Receive(Can_PduType *pdu)
{
    pdu = &Rx_PduCH10;
}

/*******************************************************************************
** Function Name	  : Appl_GenericPrecopy
** Parameter[in] 	  : uint8 Controller, Can_IdType ID, uint8 DataLength, Can_DataPtrType DataPtr
** Parameter[out] 	: None
** Return Value	  	: Can_ReturnType 
** Note			  	    :
** Description	  	: Receive CAN message from the Rx Buffer 
*******************************************************************************/

V_DEF_FUNC(extern, Can_ReturnType, APPL_CODE) Appl_GenericPrecopy( uint8 Controller, Can_IdType ID, uint8 DataLength, Can_DataPtrType DataPtr )
{

  if(Controller == (uint8)CAN_SRC_NODE00)
  {
    Rx_PduCH00.id = ID;
    Rx_PduCH00.length = DataLength;
    uint8 i = 0;
    for( ; i<DataLength;i++)
    {
      CH00_CANMSG[i] = DataPtr[i];
    }
    for( ; i<CAN_MAX_DATA_LEN;i++)
    {
      CH00_CANMSG[i] = 0;
    }
    Rx_PduCH00.sdu = CH00_CANMSG;
    Rx_PduCH00.swPduHandle = 0;

  }
  else if(Controller == (uint8)CAN_SRC_NODE01)
  {
    Rx_PduCH01.id = ID;
    Rx_PduCH01.length = DataLength;
    uint8 i = 0;
    for( ; i<DataLength;i++)
    {
      CH01_CANMSG[i] = DataPtr[i];
    }
    for( ; i<CAN_MAX_DATA_LEN;i++)
    {
      CH01_CANMSG[i] = 0;
    }
    Rx_PduCH01.sdu = CH00_CANMSG;
    Rx_PduCH01.swPduHandle = 0;
  }
  else if(Controller == (uint8)CAN_SRC_NODE10)
  {
    Rx_PduCH10.id = ID;
    Rx_PduCH10.length = DataLength;
    uint8 i = 0;
    for( ; i<DataLength;i++)
    {
      CH10_CANMSG[i] = DataPtr[i];
    }
    for( ; i<CAN_MAX_DATA_LEN;i++)
    {
      CH10_CANMSG[i] = 0;
    }
    Rx_PduCH10.sdu = CH00_CANMSG;
    Rx_PduCH10.swPduHandle = 0;    
  } 
  else
  {

  }  
   return CAN_OK;
}