/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                 Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                 All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  LICENSE
 *  -------------------------------------------------------------------------------------------------------------------
 *            Module: Can
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: Can_Lcfg.c
 *   Generation Time: 2024-03-15 12:40:32
 *           Project: DemoFbl - Version 1
 *          Delivery: CBD2300515_D00
 *      Tool Version: DaVinci Configurator Classic (beta) 5.25.55 SP6
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 ! BETA VERSION                                                                                                       !
 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 ! This version of DaVinci Configurator Classic and/or the related Basic Software Package is BETA software.               !
 ! BETA Software is basically operable, but not sufficiently tested, verified and/or qualified for use in series      !
 ! production and/or in vehicles operating on public or non-public roads.                                             !
 ! In particular, without limitation, BETA Software may cause unpredictable ECU behavior, may not provide all         !
 ! functions necessary for use in series production and/or may not comply with quality requirements which are         !
 ! necessary according to the state of the art. BETA Software must not be used in series production.                  !
 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
**********************************************************************************************************************/


#define CAN_LCFG_SOURCE

/* PRQA S 0779 EOF */ /* MD_MSR_Rule5.2 */

/* -----------------------------------------------------------------------------
    Includes
 ----------------------------------------------------------------------------- */

#include "Can_Cfg.h"

/* -----------------------------------------------------------------------------
    Hw specific
 ----------------------------------------------------------------------------- */

/* HW specific CT global C file */

/* !HW specific CT global C file */

/**********************************************************************************************************************
  ComStackLib
**********************************************************************************************************************/
/**********************************************************************************************************************
  LOCAL DATA PROTOTYPES
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA PROTOTYPES
**********************************************************************************************************************/

/**********************************************************************************************************************
  CONFIGURATION CLASS: LINK
  SECTION: LOCAL DATA PROTOTYPES
**********************************************************************************************************************/


/**********************************************************************************************************************
  LOCAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA
**********************************************************************************************************************/

/**********************************************************************************************************************
  CONFIGURATION CLASS: LINK
  SECTION: LOCAL DATA
**********************************************************************************************************************/


/**********************************************************************************************************************
  GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  Can_BTP
**********************************************************************************************************************/
/** 
  \var    Can_BTP
  \brief  Bit Timing and Prescaler
*/ 
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_BTPType, CAN_CONST) Can_BTP[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     BTP              Comment */
  /*     0 */  0x08003E0Fu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38 - CanControllerBaudrateConfig] */
  /*     1 */  0x08003E0Fu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - CanControllerBaudrateConfig] */
  /*     2 */  0x08003E0Fu   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - CanControllerBaudrateConfig] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_BufferConfig
**********************************************************************************************************************/
/** 
  \var    Can_BufferConfig
  \brief  CAN Buffer Configuration
  \details
  Element    Description
  RXF0C  
  TXBC   
  RXBC   
  RXF1C  
  TXEFC  
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_BufferConfigType, CAN_CONST) Can_BufferConfig[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    RXF0C        TXBC         RXBC   RXF1C  TXEFC        Comment */
  { /*     0 */ 0x00100004u, 0x00010484u, 0x00u, 0x00u, 0x00u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0x00100004u, 0x00010484u, 0x00u, 0x00u, 0x00u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0x00100498u, 0x00010918u, 0x00u, 0x00u, 0x00u }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_CanIfChannelId
**********************************************************************************************************************/
/** 
  \var    Can_CanIfChannelId
  \brief  indirection table Can to CanIf controller ID
*/ 
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_CanIfChannelIdType, CAN_CONST) Can_CanIfChannelId[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     CanIfChannelId      Comment */
  /*     0 */              0u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */              1u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */              2u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_CanSubSystemBaseAdr
**********************************************************************************************************************/
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_CanSubSystemBaseAdrType, CAN_CONST) Can_CanSubSystemBaseAdr[2] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     CanSubSystemBaseAdr      Comment */
  /*     0 */          0xF0208000u,  /* [Sub-system base address for system 0] */
  /*     1 */          0xF0218000u   /* [Sub-system base address for system 1] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_ControllerConfig
**********************************************************************************************************************/
/** 
  \var    Can_ControllerConfig
  \brief  Global configuration for all controllers
  \details
  Element                            Description
  BasisAdr                           CAN channel base address
  CanControllerDefaultBaudrate   
  IsTTCan                            TTCAN channel support
  CanControllerDefaultBaudrateIdx
  MailboxRxBasicEndIdx               the end index of the 0:n relation pointing to Can_Mailbox
  MailboxRxBasicLength               the number of relations pointing to Can_Mailbox
  MailboxRxBasicStartIdx             the start index of the 0:n relation pointing to Can_Mailbox
  MailboxTxBasicEndIdx               the end index of the 0:n relation pointing to Can_Mailbox
  MailboxTxBasicLength               the number of relations pointing to Can_Mailbox
  MailboxTxBasicStartIdx             the start index of the 0:n relation pointing to Can_Mailbox
  RxBasicHwStart                 
  RxBasicHwStop                  
  RxFullHwStart                  
  RxFullHwStop                   
  RxSelection                        CAN Rx Selection
  TxBasicHwStart                 
  TxBasicHwStop                  
  TxFullHwStart                  
  TxFullHwStop                   
  UnusedHwStart                  
  UnusedHwStop                   
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_ControllerConfigType, CAN_CONST) Can_ControllerConfig[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    BasisAdr     CanControllerDefaultBaudrate  IsTTCan  CanControllerDefaultBaudrateIdx  MailboxRxBasicEndIdx                                                                                                                                                               MailboxRxBasicLength                                                                                                                                                               MailboxRxBasicStartIdx                                                                                                                                                               MailboxTxBasicEndIdx                                                                                                                                                               MailboxTxBasicLength                                                                                                                                                               MailboxTxBasicStartIdx                                                                                                                                                               RxBasicHwStart  RxBasicHwStop  RxFullHwStart  RxFullHwStop  RxSelection  TxBasicHwStart  TxBasicHwStop  TxFullHwStart  TxFullHwStop  UnusedHwStart  UnusedHwStop        Comment                                             Referable Keys */
  { /*     0 */ 0xF0218100u,                        1000u,   FALSE,                              0u,                   2u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,                   1u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,                     1u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,                   1u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,                   1u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,                     0u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */       ,             0u,            1u,            0u,           0u,       0x02u,             0u,            1u,            1u,           1u,            0u,           0u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38]        */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0xF0208100u,                        1000u,    TRUE,                              0u,                   4u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,                   1u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,                     3u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,                   3u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,                   1u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,                     2u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */ ,             0u,            1u,            0u,           0u,       0x01u,             0u,            1u,            1u,           1u,            0u,           0u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0]  */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0xF0208500u,                        1000u,   FALSE,                              0u,                   6u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,                   1u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,                     5u  /* RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,                   5u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,                   1u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,                     4u  /* TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController) */,             0u,            1u,            0u,           0u,       0x01u,             0u,            1u,            1u,           1u,            0u,           0u }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_FBTP
**********************************************************************************************************************/
/** 
  \var    Can_FBTP
  \brief  Fast Bit Timing and Prescaler
*/ 
#define CAN_START_SEC_CONST_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_FBTPType, CAN_CONST) Can_FBTP[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     FBTP         Comment */
  /*     0 */  0x1E72u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38 - CanControllerBaudrateConfig] */
  /*     1 */  0x1E72u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - CanControllerBaudrateConfig] */
  /*     2 */  0x1E72u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - CanControllerBaudrateConfig] */
};
#define CAN_STOP_SEC_CONST_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_GFC
**********************************************************************************************************************/
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_GFCType, CAN_CONST) Can_GFC[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     GFC        Comment */
  /*     0 */  0x3Fu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */  0x3Fu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */  0x3Fu   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_INT_Priority
**********************************************************************************************************************/
/** 
  \var    Can_INT_Priority
  \brief  Interrupt Priority
*/ 
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_INT_PriorityType, CAN_CONST) Can_INT_Priority[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     INT_Priority      Comment */
  /*     0 */         0x00u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */         0x00u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */         0x00u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_INT_RoutingGroup
**********************************************************************************************************************/
/** 
  \var    Can_INT_RoutingGroup
  \brief  Interrupt routing for Groups
*/ 
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_INT_RoutingGroupType, CAN_CONST) Can_INT_RoutingGroup[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     INT_RoutingGroup      Comment */
  /*     0 */       0x00000000u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */       0x00000000u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */       0x11111111u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_InitObjectBaudrate
**********************************************************************************************************************/
/** 
  \var    Can_InitObjectBaudrate
  \brief  baudrates ('InitStruct' as index)
*/ 
#define CAN_START_SEC_CONST_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_InitObjectBaudrateType, CAN_CONST) Can_InitObjectBaudrate[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     InitObjectBaudrate      Comment */
  /*     0 */               1000u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38 - CanControllerBaudrateConfig] */
  /*     1 */               1000u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - CanControllerBaudrateConfig] */
  /*     2 */               1000u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - CanControllerBaudrateConfig] */
};
#define CAN_STOP_SEC_CONST_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_InitObjectFdBrsConfig
**********************************************************************************************************************/
/** 
  \var    Can_InitObjectFdBrsConfig
  \brief  FD config ('BaudrateObject' as index)
*/ 
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_InitObjectFdBrsConfigType, CAN_CONST) Can_InitObjectFdBrsConfig[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     InitObjectFdBrsConfig              */
  /*     0 */  CAN_FD_RXTX_INITOBJECTFDBRSCONFIG,
  /*     1 */  CAN_FD_RXTX_INITOBJECTFDBRSCONFIG,
  /*     2 */  CAN_FD_RXTX_INITOBJECTFDBRSCONFIG
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_InitObjectStartIndex
**********************************************************************************************************************/
/** 
  \var    Can_InitObjectStartIndex
  \brief  Start index of 'InitStruct' / baudratesets (controllers as index)
*/ 
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_InitObjectStartIndexType, CAN_CONST) Can_InitObjectStartIndex[4] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     InitObjectStartIndex      Comment */
  /*     0 */                    0u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */                    1u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */                    2u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
  /*     3 */                    3u   /* [stop index] */
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_Mailbox
**********************************************************************************************************************/
/** 
  \var    Can_Mailbox
  \brief  mailbox configuration (over all controllers)
  \details
  Element                Description
  ActiveSendObject   
  ControllerConfigIdx    the index of the 1:1 relation pointing to Can_ControllerConfig
  FdPadding          
  HwHandle           
  IDValue            
  MailboxSize        
  MailboxType        
  MaxDataLen         
  MemorySectionsIndex
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_MailboxType, CAN_CONST) Can_Mailbox[6] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    ActiveSendObject  ControllerConfigIdx                                                                            FdPadding  HwHandle  IDValue  MailboxSize  MailboxType                                MaxDataLen  MemorySectionsIndex        Comment                                                Referable Keys */
  { /*     0 */               0u,                  0u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 */       ,        0u,       0u,   0x00u,          1u, CAN_TX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,        64u,                 64u },  /* [CN_DemoFBL_Ford_CANFD_0f313723_Tx]        */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_0f313723_Tx (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38, TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
  { /*     1 */               0u,                  0u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 */       ,        0u,       0u,   0x00u,         16u, CAN_RX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,        64u,                 32u },  /* [CN_DemoFBL_Ford_CANFD_3332f69a_Rx]        */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_3332f69a_Rx (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38, RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
  { /*     2 */               1u,                  1u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 */ ,        0u,       0u,   0x00u,          1u, CAN_TX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,         8u,                 96u },  /* [CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN0]  */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0, TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
  { /*     3 */               0u,                  1u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 */ ,        0u,       0u,   0x00u,         16u, CAN_RX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,        64u,                 96u },  /* [CN_DemoFBL_Ford_CANFD_3332f69a_Rx_MCAN0]  */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_3332f69a_Rx_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0, RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
  { /*     4 */               2u,                  2u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 */,        0u,       0u,   0x00u,          1u, CAN_TX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,         8u,                 96u },  /* [CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN01] */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01, TX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
  { /*     5 */               0u,                  2u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 */,        0u,       0u,   0x00u,         16u, CAN_RX_BASICCAN_TYPE_MAILBOXTYPEOFMAILBOX,        64u,                 96u }   /* [CN_DemoFBL_Ford_CANFD_3332f69a_Rx_MCAN01] */  /* [/ActiveEcuC/Can/CanConfigSet/CN_DemoFBL_Ford_CANFD_3332f69a_Rx_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanHardwareObject), /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01, RX_BASICCAN_TYPE/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 (DefRef: /MICROSAR/Can_Mpc5700Mcan/Can/CanConfigSet/CanController)] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_MemorySectionInfo
**********************************************************************************************************************/
/** 
  \var    Can_MemorySectionInfo
  \brief  Memory section description
  \details
  Element               Description
  MemorySectionStart
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_MemorySectionInfoType, CAN_CONST) Can_MemorySectionInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    MemorySectionStart        Comment */
  { /*     0 */                 0u },  /* [MemorySection: TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */                32u },  /* [MemorySection: TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */                64u }   /* [MemorySection: TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_MemorySectionObjects
**********************************************************************************************************************/
/** 
  \var    Can_MemorySectionObjects
  \brief  Memory section objects description
  \details
  Element           Description
  HwHandle      
  MailboxElement
  MailboxHandle 
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_MemorySectionObjectsType, CAN_CONST) Can_MemorySectionObjects[96] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    HwHandle  MailboxElement  MailboxHandle        Comment */
  { /*     0 */       0u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - CN_DemoFBL_Ford_CANFD_0f313723_Tx] */
  { /*     1 */       1u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     2 */       2u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     3 */       3u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     4 */       4u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     5 */       5u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     6 */       6u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     7 */       7u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     8 */       8u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*     9 */       9u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    10 */      10u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    11 */      11u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    12 */      12u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    13 */      13u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    14 */      14u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    15 */      15u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    16 */      16u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    17 */      17u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    18 */      18u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    19 */      19u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    20 */      20u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    21 */      21u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    22 */      22u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    23 */      23u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    24 */      24u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    25 */      25u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    26 */      26u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    27 */      27u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    28 */      28u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    29 */      29u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    30 */      30u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    31 */      31u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38 - Reserved] */
  { /*    32 */       0u,             0u,            2u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN0] */
  { /*    33 */       1u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    34 */       2u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    35 */       3u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    36 */       4u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    37 */       5u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    38 */       6u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    39 */       7u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    40 */       8u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    41 */       9u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    42 */      10u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    43 */      11u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    44 */      12u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    45 */      13u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    46 */      14u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    47 */      15u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    48 */      16u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    49 */      17u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
    /* Index    HwHandle  MailboxElement  MailboxHandle        Comment */
  { /*    50 */      18u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    51 */      19u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    52 */      20u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    53 */      21u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    54 */      22u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    55 */      23u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    56 */      24u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    57 */      25u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    58 */      26u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    59 */      27u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    60 */      28u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    61 */      29u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    62 */      30u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    63 */      31u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - Reserved] */
  { /*    64 */       0u,             0u,            4u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - CN_DemoFBL_Ford_CANFD_0f313723_Tx_MCAN01] */
  { /*    65 */       1u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    66 */       2u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    67 */       3u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    68 */       4u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    69 */       5u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    70 */       6u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    71 */       7u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    72 */       8u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    73 */       9u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    74 */      10u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    75 */      11u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    76 */      12u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    77 */      13u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    78 */      14u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    79 */      15u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    80 */      16u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    81 */      17u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    82 */      18u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    83 */      19u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    84 */      20u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    85 */      21u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    86 */      22u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    87 */      23u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    88 */      24u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    89 */      25u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    90 */      26u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    91 */      27u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    92 */      28u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    93 */      29u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    94 */      30u,             0u,            0u },  /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
  { /*    95 */      31u,             0u,            0u }   /* [TxBuffer_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - Reserved] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_SIDFC
**********************************************************************************************************************/
/** 
  \var    Can_SIDFC
  \brief  Standard ID filter configuration
  \details
  Element          Description
  FLSSA            Filter List Standard Start Address
  LSS              List size standard
  SIDFEEndIdx      the end index of the 0:n relation pointing to Can_SIDFE
  SIDFEStartIdx    the start index of the 0:n relation pointing to Can_SIDFE
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_SIDFCType, CAN_CONST) Can_SIDFC[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    FLSSA    LSS    SIDFEEndIdx                                                                            SIDFEStartIdx                                                                                  Comment */
  { /*     0 */ 0x0000u, 0x01u,          1u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 */       ,            0u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38 */        },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0x0000u, 0x01u,          2u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 */ ,            1u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 */  },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0x0494u, 0x01u,          3u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 */,            2u  /* /ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 */ }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_SIDFE
**********************************************************************************************************************/
/** 
  \var    Can_SIDFE
  \brief  Standard ID filters
*/ 
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_SIDFEType, CAN_CONST) Can_SIDFE[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     SIDFE                                   Comment                                        Referable Keys */
  /*     0 */  0x88000000u  /*  I: 0 S0 FIFO_0 */,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38]        */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */  0x88000000u  /*  I: 0 S0 FIFO_0 */,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0]  */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */  0x88000000u  /*  I: 0 S0 FIFO_0 */   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */  /* [/ActiveEcuC/Can/CanConfigSet/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_SRN_Address
**********************************************************************************************************************/
/** 
  \var    Can_SRN_Address
  \brief  Service Request Node Addresses
*/ 
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_SRN_AddressType, CAN_CONST) Can_SRN_Address[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     SRN_Address      Comment */
  /*     0 */  0xF00385F0u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */  0xF00385B0u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */  0xF00385B4u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_ShmAdr
**********************************************************************************************************************/
/** 
  \var    Can_ShmAdr
  \brief  CAN Shared Message RAM configuration
  \details
  Element     Description
  RXBA        RX Buffer Address
  RXF0A       RX FIFO0 Address
  RXF1A       RX FIFO1 Address
  SIDFA       Standard Filters Address
  StartAdr    Start address of the shared memory area
  StopAdr     Stop address of the shared memory area
  TXBA        TX Buffer address
  TXEFA       TX Event FIFO address
  XIDFA       Extended Filters Address
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_ShmAdrType, CAN_CONST) Can_ShmAdr[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    RXBA                           RXF0A                             RXF1A                          SIDFA                          StartAdr     StopAdr      TXBA                            TXEFA                          XIDFA                                Comment */
  { /*     0 */ 0xF0210000u  /* Size[B]: 0 */, 0xF0210004u  /* Size[B]: 1152 */, 0xF0210000u  /* Size[B]: 0 */, 0xF0210000u  /* Size[B]: 4 */, 0xF0210000u, 0xF02104CDu, 0xF0210484u  /* Size[B]: 72 */, 0xF0210000u  /* Size[B]: 0 */, 0xF0210000u  /* Size[B]: 0 */ },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0xF0200000u  /* Size[B]: 0 */, 0xF0200004u  /* Size[B]: 1152 */, 0xF0200000u  /* Size[B]: 0 */, 0xF0200000u  /* Size[B]: 4 */, 0xF0200000u, 0xF0200495u, 0xF0200484u  /* Size[B]: 16 */, 0xF0200000u  /* Size[B]: 0 */, 0xF0200000u  /* Size[B]: 0 */ },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0xF0200000u  /* Size[B]: 0 */, 0xF0200498u  /* Size[B]: 1152 */, 0xF0200000u  /* Size[B]: 0 */, 0xF0200494u  /* Size[B]: 4 */, 0xF0200000u, 0xF0200929u, 0xF0200918u  /* Size[B]: 16 */, 0xF0200000u  /* Size[B]: 0 */, 0xF0200000u  /* Size[B]: 0 */ }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_ShmElementSize
**********************************************************************************************************************/
/** 
  \var    Can_ShmElementSize
  \brief  data buffer size in case of CAN_FD Full
  \details
  Element    Description
  F0DS   
  F1DS   
  RBDS   
  TBDS   
  TEFBDS 
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_ShmElementSizeType, CAN_CONST) Can_ShmElementSize[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    F0DS                  F1DS                 RBDS                 TBDS                  TEFBDS                        Comment */
  { /*     0 */ 0x07u  /* F0DS 64 */, 0x00u  /* F1DS 8 */, 0x00u  /* RBDS 8 */, 0x07u  /* TBDS 64 */,  0x00u  /* EFTBDS 8 */ },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0x07u  /* F0DS 64 */, 0x00u  /* F1DS 8 */, 0x00u  /* RBDS 8 */, 0x00u  /* TBDS 8 */ ,  0x00u  /* EFTBDS 8 */ },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0x07u  /* F0DS 64 */, 0x00u  /* F1DS 8 */, 0x00u  /* RBDS 8 */, 0x00u  /* TBDS 8 */ ,  0x00u  /* EFTBDS 8 */ }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_TDCR
**********************************************************************************************************************/
/** 
  \var    Can_TDCR
  \brief  Transmitter Delay Compensation
*/ 
#define CAN_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_TDCRType, CAN_CONST) Can_TDCR[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     TDCR       Comment */
  /*     0 */  0x00u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38 - CanControllerBaudrateConfig] */
  /*     1 */  0x00u,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0 - CanControllerBaudrateConfig] */
  /*     2 */  0x00u   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01 - CanControllerBaudrateConfig] */
};
#define CAN_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_XIDAM
**********************************************************************************************************************/
#define CAN_START_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_XIDAMType, CAN_CONST) Can_XIDAM[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     XIDAM            Comment */
  /*     0 */  0x1FFFFFFFu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */  0x1FFFFFFFu,  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */  0x1FFFFFFFu   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_32BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_XIDFC
**********************************************************************************************************************/
/** 
  \var    Can_XIDFC
  \brief  Extended ID filter configuration
  \details
  Element    Description
  FLESA      Filter List Extended Start Address
  LSE        List size extended
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_XIDFCType, CAN_CONST) Can_XIDFC[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    FLESA  LSE          Comment */
  { /*     0 */ 0x00u, 0x00u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38] */
  { /*     1 */ 0x00u, 0x00u },  /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  { /*     2 */ 0x00u, 0x00u }   /* [CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN01] */
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_XIDFE
**********************************************************************************************************************/
/** 
  \var    Can_XIDFE
  \brief  Extended ID filters
  \details
  Element    Description
  EIDFE_0
  EIDFE_1
*/ 
#define CAN_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Can_XIDFEType, CAN_CONST) Can_XIDFE[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    EIDFE_0  EIDFE_1 */
  { /*     0 */   0x00u,   0x00u }
};
#define CAN_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_ActiveSendObject
**********************************************************************************************************************/
/** 
  \var    Can_ActiveSendObject
  \brief  temporary data for TX object
  \details
  Element    Description
  State      send state like cancelled or send activ
  Pdu        buffered PduId for confirmation or cancellation
*/ 
#define CAN_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Can_ActiveSendObjectType, CAN_VAR_NOINIT) Can_ActiveSendObject[3];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
#define CAN_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Can_ControllerData
**********************************************************************************************************************/
/** 
  \var    Can_ControllerData
  \brief  struct for all controller related variable data
  \details
  Element                      Description
  IntEnable                    CAN Interrupt Enable state for each controller
  NonFdObjectsPendingFlag      CAN Tx Objects pending with CAN-FD format
  TXBCR                        CAN Tx Buffer Cancellation Request for each controller
  TXBCRWait                    CAN Tx Buffer Cancellation Request Confirmation for each controller
  TXBRP                        CAN Tx Buffer request Pending for each controller
  BusOffNotification           CAN state for each controller: busoff occur
  BusOffTransitionRequest      CAN state request for each controller: ContinueBusOffRecovery=0x00, FinishBusOffRecovery=0x01
  CanInterruptCounter          CAN interrupt disable counter for each controller
  IsBusOff                     CAN state for each controller: busoff occur
  LastInitObject               last set baudrate for reinit
  LastState                    CAN mode transition request status for each controller
  LogStatus                    CAN state for each controller: UNINIT=0x00, START=0x01, STOP=0x02, INIT=0x04, INCONSISTENT=0x08, WARNING =0x10, PASSIVE=0x20, BUSOFF=0x40, SLEEP=0x80
  ModeTransitionRequest        CAN state request for each controller: INIT=0x00, SLEEP=0x01, WAKEUP=0x02, STOP+INIT=0x03, START=0x04, START+INIT=0x05, NONE=0x06
  PrevMode                     CAN mode transition request for each controller
  RamCheckTransitionRequest    CAN state request for each controller: kCanSuppressRamCheck=0x01, kCanExecuteRamCheck=0x00
  CanInterruptOldStatus        last CAN interrupt status for restore interrupt for each controller
  LoopTimeout                  hw loop timeout for each controller
*/ 
#define CAN_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Can_ControllerDataType, CAN_VAR_NOINIT) Can_ControllerData[3];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
#define CAN_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */


/**********************************************************************************************************************
  CONFIGURATION CLASS: LINK
  SECTION: GLOBAL DATA
**********************************************************************************************************************/



