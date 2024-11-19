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
 *              File: FblCw_Cfg.h
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


#if !defined (FBLCW_CFG_H)
# define FBLCW_CFG_H

/**********************************************************************************************************************
 * MISRA JUSTIFICATION
 *********************************************************************************************************************/
/* PRQA S 0857 EOF */ /* MD_MSR_1.1_857 */
/* PRQA S 0779 EOF */ /* MD_CSL_0779 */

/**********************************************************************************************************************
  INCLUDES
**********************************************************************************************************************/
# include "ComStack_Types.h"

/**********************************************************************************************************************
  GLOBAL CONSTANT MACROS
**********************************************************************************************************************/
#ifndef DCM_USE_DUMMY_STATEMENT
#define DCM_USE_DUMMY_STATEMENT STD_OFF /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef DCM_DUMMY_STATEMENT
#define DCM_DUMMY_STATEMENT(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef DCM_DUMMY_STATEMENT_CONST
#define DCM_DUMMY_STATEMENT_CONST(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef DCM_ATOMIC_BIT_ACCESS_IN_BITFIELD
#define DCM_ATOMIC_BIT_ACCESS_IN_BITFIELD STD_OFF /* /MICROSAR/EcuC/EcucGeneral/AtomicBitAccessInBitfield */
#endif
#ifndef DCM_ATOMIC_VARIABLE_ACCESS
#define DCM_ATOMIC_VARIABLE_ACCESS 32u /* /MICROSAR/EcuC/EcucGeneral/AtomicVariableAccess */
#endif
#ifndef DCM_PROCESSOR_TC377T
#define DCM_PROCESSOR_TC377T
#endif
#ifndef DCM_COMP_GCCHIGHTEC
#define DCM_COMP_GCCHIGHTEC
#endif
#ifndef DCM_GEN_GENERATOR_MSR
#define DCM_GEN_GENERATOR_MSR
#endif
#ifndef DCM_CPUTYPE_BITORDER_LSB2MSB
#define DCM_CPUTYPE_BITORDER_LSB2MSB /* /MICROSAR/vSet/vSetPlatform/vSetBitOrder */
#endif
#ifndef DCM_CONFIGURATION_VARIANT_PRECOMPILE
#define DCM_CONFIGURATION_VARIANT_PRECOMPILE 1
#endif
#ifndef DCM_CONFIGURATION_VARIANT_LINKTIME
#define DCM_CONFIGURATION_VARIANT_LINKTIME 2
#endif
#ifndef DCM_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE
#define DCM_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE 3
#endif
#ifndef DCM_CONFIGURATION_VARIANT
#define DCM_CONFIGURATION_VARIANT DCM_CONFIGURATION_VARIANT_PRECOMPILE
#endif
#ifndef DCM_POSTBUILD_VARIANT_SUPPORT
#define DCM_POSTBUILD_VARIANT_SUPPORT STD_OFF
#endif


#define FBLCW_DUMMY_STATEMENT(v)         DCM_DUMMY_STATEMENT(v) /* PRQA S 3453 */ /* MD_MSR_19.7 */
#define FBLCW_DUMMY_STATEMENT_CONST(v)   DCM_DUMMY_STATEMENT_CONST(v) /* PRQA S 3453 */ /* MD_MSR_19.7 */
#define FBLCW_DEV_ERROR_DETECT           STD_ON  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmDevErrorDetect] */
#define FBLCW_DEV_ERROR_REPORT           STD_ON  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmDevErrorDetect] */

#define FBLCW_MODULE_CAN                 STD_ON  /**< DefinitionRef: /[ANY]/Can */
#define FBLCW_MODULE_CANIF               STD_ON  /**< DefinitionRef: /[ANY]/CanIf */
#define FBLCW_MODULE_CANTP               STD_ON  /**< DefinitionRef: /MICROSAR/CanTp */

#define FBLCW_MODULE_LIN                 STD_OFF  /**< DefinitionRef: /[ANY]/Lin */
#define FBLCW_MODULE_LINIF               STD_OFF  /**< DefinitionRef: /[ANY]/LinIf */
#define FBLCW_MODULE_LINTP               STD_OFF  /**< DefinitionRef: /AUTOSAR/EcucDefs/LinTp */

#define FBLCW_MODULE_NM                  STD_OFF  /**< DefinitionRef: /[ANY]/Nm */
#define FBLCW_MODULE_CANNM               STD_OFF  /**< DefinitionRef: /[ANY]/CanNm */
#define FBLCW_MODULE_FRNM                STD_OFF  /**< DefinitionRef: /[ANY]/FrNm */
#define FBLCW_MODULE_LINNM               STD_OFF  /**< DefinitionRef: /[ANY]/LinNm */

#define FBLCW_MODULE_XCP                 STD_OFF  /**< DefinitionRef: /[ANY]/Xcp */
#define FBLCW_MODULE_CANXCP              STD_OFF
#define FBLCW_MODULE_TCPIPXCP            STD_OFF
#define FBLCW_MODULE_FRXCP               STD_OFF

#define FBLCW_MODULE_COMM                STD_OFF  /**< DefinitionRef: /[ANY]/ComM */
#define FBLCW_MODULE_CANSM               STD_OFF  /**< DefinitionRef: /[ANY]/CanSM */
#define FBLCW_MODULE_FRSM                STD_OFF  /**< DefinitionRef: /[ANY]/FrSM */

#define FBLCW_MODULE_ETH                 STD_OFF  /**< DefinitionRef: /AUTOSAR/EcucDefs/Eth */
#define FBLCW_MODULE_ETHIF               STD_OFF  /**< DefinitionRef: /AUTOSAR/EcucDefs/EthIf */
#define FBLCW_MODULE_ETHSM               STD_OFF  /**< DefinitionRef: /MICROSAR/EthSM */
#define FBLCW_MODULE_LINSM               STD_OFF  /**< DefinitionRef: /[ANY]/LinSM */

#define FBLCW_MODULE_ETHSWT              STD_OFF  /**< DefinitionRef: /[ANY]/EthSwt */
#define FBLCW_MODULE_ETHTRCV             STD_OFF  /**< DefinitionRef: /[ANY]/EthTrcv */

#define FBLCW_MODULE_FR                  STD_OFF  /**< DefinitionRef: /AUTOSAR/EcucDefs/Fr */
#define FBLCW_MODULE_FRIF                STD_OFF  /**< DefinitionRef: /AUTOSAR/EcucDefs/FrIf */
#define FBLCW_MODULE_FRTP                STD_OFF  /**< DefinitionRef: /[ANY]/FrTp */
#define FBLCW_MODULE_FRARTP              STD_OFF  /**< DefinitionRef: /[ANY]/FrArTp */

#define FBLCW_MODULE_DOIP                STD_OFF  /**< DefinitionRef: /[ANY]/DoIP */
#define FBLCW_MODULE_DOIPINT             STD_OFF  /**< DefinitionRef: /MICROSAR/DoIPInt */
#define FBLCW_MODULE_SOAD                STD_OFF  /**< DefinitionRef: /[ANY]/SoAd */
#define FBLCW_MODULE_TCPIP               STD_OFF  /**< DefinitionRef: /[ANY]/TcpIp */
#define FBLCW_MODULE_VBSDAD              STD_OFF  /**< DefinitionRef: /MICROSAR/vBsdAd */

#define FBLCW_QUEUED_REQUEST             STD_OFF  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmQueuedRequest] */
#define FBLCW_KEY_SLOT_MODE              STD_OFF  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmKeySlotMode] */
#define FBLCW_BAUDRATE_SWITCH            STD_OFF  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmBaudrateSwitch] */
#define FBLCW_NW_STATUS_RX_BUFFER_SIZE   0u  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmNwStatusRxBufferSize] */
#define FBLCW_TASK_CYCLE                 5u  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmTaskCycle] */
#define FBLCW_CAN_HARDWARE_LOOP_TIMEOUT  100u  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmGeneral[0:DcmCanHardwareLoopTimeout] */
#define FBLCW_DECLINED_REQUESTS          STD_OFF  /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslDiagResp[0:DcmDslDiagRespOnSecondDeclinedRequest] */
#define kFblCwMaxNumDeclinedRequests     3u /**< /ActiveEcuC/Dcm/DcmConfigSet/DcmDsl/DcmDslDiagResp[0:DcmDslDiagRespMaxNumOfDeclinedRequests] */

#if(FBLCW_MODULE_ETHSWT == STD_ON)
# define FBLCW_ETHSWT_MAINFUNCTION()      _MainFunction()
#endif
#if(FBLCW_MODULE_ETHTRCV == STD_ON)
#endif

/** Public Identifiers of the CAN driver may include an infix. These identifiers are remapped here **/
#define FBLCW_CANDRV_HEADER_NAME          "Can.h"
#define FBLCW_CANSCHM_HEADER_NAME         "SchM_Can.h"     
#define FBLCW_CAN_MAINFUNCTION_READ       Can_MainFunction_Read
#define FBLCW_CAN_MAINFUNCTION_WRITE      Can_MainFunction_Write
#define FBLCW_CAN_MAINFUNCTION_BUSOFF     Can_MainFunction_BusOff
#define FBLCW_CAN_MAINFUNCTION_MODE       Can_MainFunction_Mode
#define FBLCW_APPLCANTIMERSTART           ApplCanTimerStart
#define FBLCW_APPLCANTIMERLOOP            ApplCanTimerLoop
#define FBLCW_APPLCANTIMEREND             ApplCanTimerEnd
#define FBLCW_CAN_CHANNEL_CANTYPE_FIRST   CAN_CHANNEL_CANTYPE_FIRST
#define FBLCW_TX_PROCESSING               CAN_TX_PROCESSING
#define FBLCW_RX_PROCESSING               CAN_RX_PROCESSING
#define FBLCW_BUSOFF_PROCESSING           CAN_BUSOFF_PROCESSING
#define FBLCW_POLLING                     CAN_POLLING


/** Size of the biggest DcmDslConnectionInfo over all variants **/
#define FBLCW_MAXIMUM_SIZE_OF_DCM_DSL_CONNECTION_INFO 2u

#define FBLCW_CHANGE_PARAMETER            STD_ON  /**< /ActiveEcuC/PduR/Dcm[0:PduRChangeParameterRequestApi] */

/* Number of ComM channels (for all variants) */
#define FBLCW_NO_COMM_CHANNELS            0u

/** PDU handle to the key slot mode PDU (first slot) */
/* Customer TODO: At this point the handle ID of the FrIfLPdu of the first slot shall be configured */
# define FBLCW_NW_STATUS_PDU           (FrIfConf_FrIfLPdu_LPdu_FrTrKeySlot1Frame_S_1_B_0_R_1_ChA_IN)

/* User Config File Start */

/* User Config File End */


/**********************************************************************************************************************
  GLOBAL FUNCTION MACROS
**********************************************************************************************************************/

/**********************************************************************************************************************
  GLOBAL DATA TYPES AND STRUCTURES
**********************************************************************************************************************/

/**********************************************************************************************************************
  GLOBAL DATA PROTOTYPES
**********************************************************************************************************************/

/**********************************************************************************************************************
  GLOBAL FUNCTION PROTOTYPES
**********************************************************************************************************************/

#endif  /* FBLCW_CFG_H */
/**********************************************************************************************************************
  END OF FILE: FblCw_Cfg.h
**********************************************************************************************************************/

