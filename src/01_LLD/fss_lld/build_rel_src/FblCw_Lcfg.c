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
 *            Module: FblCw
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: FblCw_Lcfg.c
 *   Generation Time: 2024-03-07 20:12:32
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


#define FBLCW_LCFG_SOURCE
/**********************************************************************************************************************
 * MISRA JUSTIFICATION
 *********************************************************************************************************************/
/* PRQA S 0857 EOF */ /* MD_MSR_1.1_857 */
/* PRQA S 0779 EOF */ /* MD_CSL_0779 */

/**********************************************************************************************************************
  INCLUDES
**********************************************************************************************************************/
#include "fbl_inc.h"
#include "FblCw_Lcfg.h"
#include "PduR_Dcm.h"

#include "CanIf.h"
#include "CanTp.h"




/**********************************************************************************************************************
  LOCAL CONSTANT MACROS
**********************************************************************************************************************/

/**********************************************************************************************************************
  LOCAL FUNCTION MACROS
**********************************************************************************************************************/

/**********************************************************************************************************************
  LOCAL DATA TYPES AND STRUCTURES
**********************************************************************************************************************/

/**********************************************************************************************************************
  LOCAL DATA PROTOTYPES
**********************************************************************************************************************/

/**********************************************************************************************************************
  LOCAL DATA
**********************************************************************************************************************/

/**********************************************************************************************************************
  GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  FblCw_CanIfCtrlInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_CanIfCtrlInfo
  \brief  DefinitionRef: /[ANY]/CanIf/CanIfCtrlDrvCfg/CanIfCtrlCfg
*/ 
#define FBLCW_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_CanIfCtrlInfoType, FBLCW_CONST) FblCw_CanIfCtrlInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     CanIfCtrlInfo                                                    Referable Keys */
  /*     0 */        CanIfConf_CanIfCtrlCfg_CT_DemoFBL_Ford_CANFD_b8e23c38,  /* [/ActiveEcuC/CanIf/CanIfCtrlDrvCfg_7d254554/CT_DemoFBL_Ford_CANFD_b8e23c38] */
  /*     1 */  CanIfConf_CanIfCtrlCfg_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0,  /* [/ActiveEcuC/CanIf/CanIfCtrlDrvCfg_7d254554/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN0] */
  /*     2 */  CanIfConf_CanIfCtrlCfg_CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN1   /* [/ActiveEcuC/CanIf/CanIfCtrlDrvCfg_7d254554/CT_DemoFBL_Ford_CANFD_b8e23c38_MCAN1] */
};
#define FBLCW_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_DcmDslConnectionGroupInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_DcmDslConnectionGroupInfo
  \brief  DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnectionGroup
  \details
  Element    Description
  Snv    
*/ 
#define FBLCW_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_DcmDslConnectionGroupInfoType, FBLCW_CONST) FblCw_DcmDslConnectionGroupInfo[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Snv        Referable Keys */
  { /*     0 */  0u }   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnectionGroup, /ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095, /ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */
};
#define FBLCW_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_DcmDslConnectionGroupInfoInd
**********************************************************************************************************************/
/** 
  \var    FblCw_DcmDslConnectionGroupInfoInd
  \brief  the indexes of the 1:1 sorted relation pointing to FblCw_DcmDslConnectionGroupInfo
*/ 
#define FBLCW_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_DcmDslConnectionGroupInfoIndType, FBLCW_CONST) FblCw_DcmDslConnectionGroupInfoInd[2] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     DcmDslConnectionGroupInfoInd      Referable Keys */
  /*     0 */                            0u,  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  /*     1 */                            0u   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */
};
#define FBLCW_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_DcmDslConnectionInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_DcmDslConnectionInfo
  \brief  DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection
  \details
  Element                                 Description
  PayloadLimit                            DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection/DcmDslMainConnection/DcmDslPayloadLimit
  BusType                                 the bustype of the connection
  Controller                              controller handle
  DcmDslConnectionGroupInfoIndEndIdx      the end index of the 0:n relation pointing to FblCw_DcmDslConnectionGroupInfoInd
  DcmDslConnectionGroupInfoIndStartIdx    the start index of the 0:n relation pointing to FblCw_DcmDslConnectionGroupInfoInd
  ParameterInfoIdx                        the index of the 0:1 relation pointing to FblCw_ParameterInfo
  RxTesterSourceAddress                   DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection/DcmDslMainConnection/DcmDslProtocolRxTesterSourceAddr
  TxRemotePduId                           DefinitionRef: /[ANY]/PduR/PduRRoutingTables/PduRRoutingTable/PduRRoutingPath/PduRSrcPdu based symbolic name value
*/ 
#define FBLCW_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_DcmDslConnectionInfoType, FBLCW_CONST) FblCw_DcmDslConnectionInfo[2] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    PayloadLimit  BusType                                    Controller                                             DcmDslConnectionGroupInfoIndEndIdx  DcmDslConnectionGroupInfoIndStartIdx  ParameterInfoIdx  RxTesterSourceAddress  TxRemotePduId                                  Referable Keys */
  { /*     0 */      0x0802u, FBLCW_CANFD_BUSTYPEOFDCMDSLCONNECTIONINFO, CanIfConf_CanIfCtrlCfg_CT_DemoFBL_Ford_CANFD_b8e23c38,                                 1u,                                   0u,               0u,                    0u, PduRConf_PduRSrcPdu_PduRSrcPdu_85698b31 },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  { /*     1 */      0x0802u,   FBLCW_CAN_BUSTYPEOFDCMDSLCONNECTIONINFO, CanIfConf_CanIfCtrlCfg_CT_DemoFBL_Ford_CANFD_b8e23c38,                                 2u,                                   1u,               1u,                    0u, PduRConf_PduRSrcPdu_PduRSrcPdu_459069b4 }   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */
};
#define FBLCW_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_DcmDslProtocolRxInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_DcmDslProtocolRxInfo
  \brief  DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection/DcmDslMainConnection/DcmDslProtocolRx
  \details
  Element                    Description
  AddrType                   DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection/DcmDslMainConnection/DcmDslProtocolRx/DcmDslProtocolRxAddrType
  DcmDslConnectionInfoIdx    the index of the 1:1 relation pointing to FblCw_DcmDslConnectionInfo
*/ 
#define FBLCW_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_DcmDslProtocolRxInfoType, FBLCW_CONST) FblCw_DcmDslProtocolRxInfo[4] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    AddrType                                         DcmDslConnectionInfoIdx        Referable Keys */
  { /*     0 */   FBLCW_PHYSICAL_ADDRTYPEOFDCMDSLPROTOCOLRXINFO,                      1u },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89/DcmDslMainConnection_e1029789/Diag_Demo_Request_Message_oDemoFBL_Ford_CANFD_20_36f6fa2d_Rx_0e6d71f3] */
  { /*     1 */ FBLCW_FUNCTIONAL_ADDRTYPEOFDCMDSLPROTOCOLRXINFO,                      1u },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89/DcmDslMainConnection_e1029789/Diag_Functional_Request_Message_oDemoFBL_Ford_CANFD_20_b3c5bf5e_Rx_81389dfe] */
  { /*     2 */   FBLCW_PHYSICAL_ADDRTYPEOFDCMDSLPROTOCOLRXINFO,                      0u },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095/DcmDslMainConnection_fa25e029/Diag_Demo_Request_Message_oDemoFBL_Ford_CANFD_937daa12_Rx_2d07a855] */
  { /*     3 */ FBLCW_FUNCTIONAL_ADDRTYPEOFDCMDSLPROTOCOLRXINFO,                      0u }   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095/DcmDslMainConnection_fa25e029/Diag_Functional_Request_Message_oDemoFBL_Ford_CANFD_f0d52d28_Rx_21e70716] */
};
#define FBLCW_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_DcmDslProtocolTxInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_DcmDslProtocolTxInfo
  \brief  DefinitionRef: /MICROSARFBL/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow/DcmDslConnection/DcmDslMainConnection/DcmDslProtocolTx
  \details
  Element                    Description
  DcmDslConnectionInfoIdx    the index of the 1:1 relation pointing to FblCw_DcmDslConnectionInfo
*/ 
#define FBLCW_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_DcmDslProtocolTxInfoType, FBLCW_CONST) FblCw_DcmDslProtocolTxInfo[2] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    DcmDslConnectionInfoIdx        Referable Keys */
  { /*     0 */                      1u },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89/DcmDslMainConnection_e1029789/Diag_Demo_Response_Message_oDemoFBL_Ford_CANFD_20_af8657d4_Tx_c9d72f8e] */
  { /*     1 */                      0u }   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095/DcmDslMainConnection_fa25e029/Diag_Demo_Response_Message_oDemoFBL_Ford_CANFD_075f1067_Tx_a94a0c49] */
};
#define FBLCW_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_ParameterInfo
**********************************************************************************************************************/
/** 
  \var    FblCw_ParameterInfo
  \brief  all Change and Read parameter infos.
  \details
  Element    Description
  CanTpId    CanTp SNVs of DefinitionRef: /MICROSAR/CanTp/CanTpConfig/CanTpChannel/CanTpRxNSdu/CanTpRxNSduId
  PduRId     PduR SNVs of DefinitionRef: /[ANY]/PduR/PduRRoutingTables/PduRRoutingTable/PduRRoutingPath/PduRSrcPdu/PduRSourcePduHandleId
*/ 
#define FBLCW_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(FblCw_ParameterInfoType, FBLCW_CONST) FblCw_ParameterInfo[2] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    CanTpId                                     PduRId                                                                                               Referable Keys */
  { /*     0 */ CanTpConf_CanTpRxNSdu_CanTpRxNSdu_f565e11a,    PduRConf_PduRDestPdu_Diag_Demo_Request_Message_oDemoFBL_Ford_CANFD_645d95ca_Rx_94824d04_Rx },  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  { /*     1 */ CanTpConf_CanTpRxNSdu_CanTpRxNSdu_448959cb, PduRConf_PduRDestPdu_Diag_Demo_Request_Message_oDemoFBL_Ford_CANFD_20_0a455198_Rx_62ee5758_Rx }   /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */
};
#define FBLCW_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_InitialBC
**********************************************************************************************************************/
/** 
  \var    FblCw_InitialBC
  \brief  initial STmin Values
*/ 
#define FBLCW_START_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(FblCw_InitialBCUType, FBLCW_VAR_NOINIT) FblCw_InitialBC;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  /*     1 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */

#define FBLCW_STOP_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_InitialBS
**********************************************************************************************************************/
/** 
  \var    FblCw_InitialBS
  \brief  initial BlockSize Values
*/ 
#define FBLCW_START_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(FblCw_InitialBSUType, FBLCW_VAR_NOINIT) FblCw_InitialBS;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  /*     1 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */

#define FBLCW_STOP_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_InitialSTmin
**********************************************************************************************************************/
/** 
  \var    FblCw_InitialSTmin
  \brief  initial STmin Values
*/ 
#define FBLCW_START_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(FblCw_InitialSTminUType, FBLCW_VAR_NOINIT) FblCw_InitialSTmin;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9abab095] */
  /*     1 */  /* [/ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslProtocol/DcmDslProtocolRow_29812fbf/DcmDslConnection_9a5c8c89] */

#define FBLCW_STOP_SEC_VAR_NOINIT_16BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  FblCw_Initialized
**********************************************************************************************************************/
/** 
  \var    FblCw_Initialized
  \brief  Initialization state of the Dcm. TRUE, if Dcm_Init() has been called, else FALSE.
*/ 
#define FBLCW_START_SEC_VAR_ZERO_INIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(FblCw_InitializedType, FBLCW_VAR_ZERO_INIT) FblCw_Initialized = FALSE;  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
#define FBLCW_STOP_SEC_VAR_ZERO_INIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */


/**********************************************************************************************************************
  CONFIGURATION CLASS: LINK
  SECTION: GLOBAL DATA
**********************************************************************************************************************/


/**********************************************************************************************************************
  LOCAL FUNCTION PROTOTYPES
**********************************************************************************************************************/

/**********************************************************************************************************************
  LOCAL FUNCTIONS
**********************************************************************************************************************/

/**********************************************************************************************************************
  GLOBAL FUNCTIONS
**********************************************************************************************************************/

#define FBLCW_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

#define FBLCW_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

/**********************************************************************************************************************
  END OF FILE: FblCw_Lcfg.c
**********************************************************************************************************************/

