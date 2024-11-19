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
 *            Module: Csm
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: Csm_Cfg.c
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

#define CSM_CFG_SOURCE


/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/
#include "Csm_Cfg.h"
#include "CryIf.h"



/**********************************************************************************************************************
 *  LOCAL CONSTANT MACROS
 *********************************************************************************************************************/
#if !defined (STATIC)
# define STATIC static
#endif

#if !defined (CSM_LOCAL)
# define CSM_LOCAL static
#endif

#if !defined (CSM_LOCAL_INLINE)
# define CSM_LOCAL_INLINE LOCAL_INLINE
#endif




/**********************************************************************************************************************
 *  LOCAL FUNCTION MACROS
 *********************************************************************************************************************/


/**********************************************************************************************************************
 *  LOCAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/


/**********************************************************************************************************************
 *  LOCAL DATA PROTOTYPES
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA PROTOTYPES
**********************************************************************************************************************/






/**********************************************************************************************************************
 *  LOCAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA
**********************************************************************************************************************/




/**********************************************************************************************************************
 *  GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  Csm_JobInfo
**********************************************************************************************************************/
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_JobInfoType, CSM_CONST) Csm_JobInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     JobInfo       Referable Keys */
  /*     0 */ {0u, 0u} ,  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256] */
  /*     1 */ {1u, 0u} ,  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate] */
  /*     2 */ {2u, 0u}    /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_JobPrimitiveInfo
**********************************************************************************************************************/
/** 
  \var    Csm_JobPrimitiveInfo
  \brief  const uint32 callbackId; const Crypto_PrimitiveInfoType* primitiveInfo; const uint32 secureCounterId; const uint32 cryIfKeyId; const Crypto_ProcessingType processingType; const bool callbackUpdateNotification
*/ 
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_JobPrimitiveInfoType, CSM_CONST) Csm_JobPrimitiveInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     JobPrimitiveInfo                                                                                                           Referable Keys */
  /*     0 */ {0u, &Csm_PrimitiveInfo[2], 0x000000FFu, CryIfConf_CryIfKey_CryIfKeyDummy, CRYPTO_PROCESSING_SYNC, FALSE}             ,  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256] */
  /*     1 */ {0u, &Csm_PrimitiveInfo[0], 0x000000FFu, CryIfConf_CryIfKey_CryIfKey_Smh_Nist_800_90A, CRYPTO_PROCESSING_SYNC, FALSE} ,  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate] */
  /*     2 */ {0u, &Csm_PrimitiveInfo[1], 0x000000FFu, CryIfConf_CryIfKey_CryIfKey_SmhKeyRSA, CRYPTO_PROCESSING_SYNC, FALSE}           /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_JobTable
**********************************************************************************************************************/
/** 
  \var    Csm_JobTable
  \brief  Contains parameters of /MICROSAR/Csm/CsmJobs/CsmJob.
  \details
  Element        Description
  CsmKeyIdIdx    the index of the 1:1 relation pointing to one of Csm_Key
  Priority       Contains values of DefinitionRef: /MICROSAR/Csm/CsmJobs/CsmJob/CsmJobPriority.
*/ 
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Csm_JobTableType, CSM_CONST) Csm_JobTable[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    CsmKeyIdIdx  Priority        Referable Keys */
  { /*     0 */          1u,       0u },  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef] */
  { /*     1 */          2u,       0u },  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef] */
  { /*     2 */          0u,       0u }   /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_Key
**********************************************************************************************************************/
/** 
  \var    Csm_Key
  \brief  Contains parameters of /AUTOSAR/EcucDefs/Csm/CsmKeys/CsmKey.
  \details
  Element       Description
  CryIfKeyId    Contains values of DefinitionRef: /MICROSAR/Csm/CsmKeys/CsmKey/CsmKeyRef.
*/ 
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Csm_KeyType, CSM_CONST) Csm_Key[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    CryIfKeyId                                          Referable Keys */
  { /*     0 */ CryIfConf_CryIfKey_CryIfKey_SmhKeyRSA        },  /* [/ActiveEcuC/Csm/CsmKeys/CsmKey_SmhKeyRSA, /ActiveEcuC/Csm/CsmKeys, /ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobKeyRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobKeyRef] */
  { /*     1 */ CryIfConf_CryIfKey_CryIfKeyDummy             },  /* [/ActiveEcuC/Csm/CsmKeys/CsmKey_Smh_HashSha256, /ActiveEcuC/Csm/CsmKeys, /ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256:CsmJobKeyRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_HashSha256:CsmJobKeyRef] */
  { /*     2 */ CryIfConf_CryIfKey_CryIfKey_Smh_Nist_800_90A }   /* [/ActiveEcuC/Csm/CsmKeys/CsmKey_Smh_Nist_800_90A, /ActiveEcuC/Csm/CsmKeys, /ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate:CsmJobKeyRef, /ActiveEcuC/Smh/SmhJob_RandomSeed/SmhJob_RandomSeed:SmhCsmKeyRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_RandomGenerate:CsmJobKeyRef, /MICROSAR/Smh_Rec/SmhJob_RandomSeed/SmhJob_RandomSeed:SmhCsmKeyRef] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_PrimitiveInfo
**********************************************************************************************************************/
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_PrimitiveInfoType, CSM_CONST) Csm_PrimitiveInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     PrimitiveInfo                                                                                                     Referable Keys */
  /*     0 */ {16u, CRYPTO_RANDOMGENERATE, {CRYPTO_ALGOFAM_CUSTOM_DRBG, 0u, CRYPTO_ALGOMODE_NOT_SET, CRYPTO_ALGOFAM_AES}}  ,  /* [/ActiveEcuC/Csm/CsmPrimitives_RandomGenerate/CsmRandomGenerate/CsmPrimitives_RandomGenerate] */
  /*     1 */ {0u, CRYPTO_SIGNATUREVERIFY, {CRYPTO_ALGOFAM_RSA, 32u, CRYPTO_ALGOMODE_RSASSA_PSS, CRYPTO_ALGOFAM_SHA2_256}} ,  /* [/ActiveEcuC/Csm/CsmPrimitives_SigAsymVer_RsaPssSha256/CsmSignatureVerify/CsmPrimitives_SigAsymVer_RsaPssSha256] */
  /*     2 */ {32u, CRYPTO_HASH, {CRYPTO_ALGOFAM_SHA2_256, 0u, CRYPTO_ALGOMODE_NOT_SET, CRYPTO_ALGOFAM_NOT_SET}}              /* [/ActiveEcuC/Csm/CsmPrimitives_HashSha256/CsmHash/CsmPrimitives_HashSha256] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_QueueInfo
**********************************************************************************************************************/
/** 
  \var    Csm_QueueInfo
  \brief  Contains parameters of /AUTOSAR/EcucDefs/Csm/CsmQueues/CsmQueue.
  \details
  Element      Description
  ChannelId    Contains values of DefinitionRef: /MICROSAR/Csm/CsmQueues/CsmQueue/CsmChannelRef.
*/ 
#define CSM_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Csm_QueueInfoType, CSM_CONST) Csm_QueueInfo[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    ChannelId                                  Referable Keys */
  { /*     0 */ CryIfConf_CryIfChannel_CryIfChannel }   /* [/ActiveEcuC/Csm/CsmQueues/CsmQueue_Standard, /ActiveEcuC/Csm/CsmQueues, /ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256:CsmJobQueueRef, /ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate:CsmJobQueueRef, /ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_HashSha256:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_RandomGenerate:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobQueueRef] */
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_Job
**********************************************************************************************************************/
#define CSM_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_JobType, CSM_VAR_NOINIT) Csm_Job[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [CsmQueue_Standard_AsyncPool, CsmQueue_Standard_SyncObj] */

#define CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_JobState
**********************************************************************************************************************/
#define CSM_START_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Csm_JobStateType, CSM_VAR_NOINIT) Csm_JobState[3];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef] */
  /*     1 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef] */
  /*     2 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef] */

#define CSM_STOP_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_JobToObjMap
**********************************************************************************************************************/
#define CSM_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Csm_SizeOfJobType, CSM_VAR_NOINIT) Csm_JobToObjMap[3];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_HashSha256/SmhJob_HashSha256:SmhCsmJobRef] */
  /*     1 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_RandomGenerate/SmhJob_RandomGenerate:SmhCsmJobRef] */
  /*     2 */  /* [/ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256, /ActiveEcuC/Csm/CsmJobs, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /ActiveEcuC/Smh/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256/SmhJob_SignatureVerify_Rsa2048PssSha256:SmhCsmJobRef, /MICROSAR/Smh_Rec/SmhJob_SignatureVerify_Rsa2048PssSha256_Token/SmhJob_SignatureVerify_Rsa2048PssSha256_Token:SmhCsmJobRef] */

#define CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_Queue
**********************************************************************************************************************/
#define CSM_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Csm_QueueUType, CSM_VAR_NOINIT) Csm_Queue;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Csm/CsmQueues/CsmQueue_Standard] */

#define CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Csm_QueueState
**********************************************************************************************************************/
/** 
  \var    Csm_QueueState
  \brief  Stores state of the asynchronous job queue.
  \details
  Element     Description
  Lock    
  QueueIdx    the index of the 1:1 relation pointing to Csm_Queue
*/ 
#define CSM_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Csm_QueueStateType, CSM_VAR_NOINIT) Csm_QueueState[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Csm/CsmQueues/CsmQueue_Standard, /ActiveEcuC/Csm/CsmQueues, /ActiveEcuC/Csm/CsmJobs/CsmJob_HashSha256:CsmJobQueueRef, /ActiveEcuC/Csm/CsmJobs/CsmJob_RandomGenerate:CsmJobQueueRef, /ActiveEcuC/Csm/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_HashSha256:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_RandomGenerate:CsmJobQueueRef, /MICROSAR/Csm_Rec/CsmJobs/CsmJob_SigAsymVer_RsaPssSha256:CsmJobQueueRef] */

#define CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */





/**********************************************************************************************************************
 *  LOCAL FUNCTIONS
 *********************************************************************************************************************/



 
/**********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 *********************************************************************************************************************/





