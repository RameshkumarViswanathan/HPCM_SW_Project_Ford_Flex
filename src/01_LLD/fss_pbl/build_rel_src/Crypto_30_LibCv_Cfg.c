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
 *            Module: Crypto_30_LibCv
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: Crypto_30_LibCv_Cfg.c
 *   Generation Time: 2023-11-02 09:28:24
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

#define CRYPTO_30_LIBCV_CFG_SOURCE


/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/
#include "Crypto_30_LibCv_Cfg.h"
#include "Crypto_30_LibCv.h"
#include "Crypto_30_LibCv_Services.h"
/* PRQA S 0759 EOF */ /* MD_CSL_18.4 */
/*lint -e91 */
#include "Crypto_30_LibCv_Hash.h"
#include "Crypto_30_LibCv_RandomGenerate.h"
#include "Crypto_30_LibCv_SignatureVerify.h"



/**********************************************************************************************************************
 *  LOCAL CONSTANT MACROS
 *********************************************************************************************************************/
#if !defined (STATIC)
# define STATIC static
#endif

#if !defined (CRYPTO_30_LIBCV_LOCAL)
# define CRYPTO_30_LIBCV_LOCAL static
#endif

#if !defined (CRYPTO_30_LIBCV_LOCAL_INLINE)
# define CRYPTO_30_LIBCV_LOCAL_INLINE LOCAL_INLINE
#endif




/**********************************************************************************************************************
 *  LOCAL FUNCTION MACROS
 *********************************************************************************************************************/


/**********************************************************************************************************************
 *  LOCAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/


/**********************************************************************************************************************
 *  LOCAL DATA PROTOTYPES
 *********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA PROTOTYPES
**********************************************************************************************************************/






/**********************************************************************************************************************
 *  LOCAL DATA
 *********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: LOCAL DATA
**********************************************************************************************************************/




/**********************************************************************************************************************
 *  GLOBAL DATA
 *********************************************************************************************************************/
/**********************************************************************************************************************
  CONFIGURATION CLASS: PRE_COMPILE
  SECTION: GLOBAL DATA
**********************************************************************************************************************/
/**********************************************************************************************************************
  Crypto_30_LibCv_DRBGAES
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_DRBGAES
  \details
  Element      Description
  Workspace
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_DRBGAESType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_DRBGAES[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Workspace                                                      Referable Keys */
  { /*     0 */ &Crypto_30_LibCv_UnionWS_Crypto_30_LibCv.primWS.DRBGAES }   /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_FamilyToHashMapping
**********************************************************************************************************************/
#define CRYPTO_30_LIBCV_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_FamilyToHashMappingType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_FamilyToHashMapping[4] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     FamilyToHashMapping           Referable Keys */
  /*     0 */ 0xFFu                    ,  /* [CRYPTO_ALGOFAM_NOT_SET] */
  /*     1 */ 0xFFu                    ,  /* [CRYPTO_ALGOFAM_SHA1] */
  /*     2 */ VSECPRIM_DIGEST_SHA2_224 ,  /* [CRYPTO_ALGOFAM_SHA2_224] */
  /*     3 */ VSECPRIM_DIGEST_SHA2_256    /* [CRYPTO_ALGOFAM_SHA2_256] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_Hash
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_Hash
  \details
  Element      Description
  Workspace
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_HashType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_Hash[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Workspace                                                   Referable Keys */
  { /*     0 */ &Crypto_30_LibCv_UnionWS_Crypto_30_LibCv.primWS.Hash }   /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_InitValue
**********************************************************************************************************************/
#define CRYPTO_30_LIBCV_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_InitValueType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_InitValue[5] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     InitValue      Referable Keys */
  /*     0 */         1u,  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128] */
  /*     1 */         0u,  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
  /*     2 */         0u,  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
  /*     3 */         0u,  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
  /*     4 */         1u   /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_Key
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_Key
  \details
  Element                Description
  KeyElementsEndIdx      the end index of the 1:n relation pointing to Crypto_30_LibCv_KeyElements
  KeyElementsStartIdx    the start index of the 1:n relation pointing to Crypto_30_LibCv_KeyElements
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_KeyType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_Key[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    KeyElementsEndIdx  KeyElementsStartIdx        Referable Keys */
  { /*     0 */                3u,                  0u },  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhKeyRSA] */
  { /*     1 */                7u,                  3u },  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A] */
  { /*     2 */                8u,                  7u }   /* [/ActiveEcuC/Crypto/CryptoKeys/SmhCryptoKeyDummy] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_KeyElementInfo
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_KeyElementInfo
  \details
  Element              Description
  Id               
  Length           
  InitValueEndIdx      the end index of the 0:n relation pointing to Crypto_30_LibCv_InitValue
  InitValueStartIdx    the start index of the 0:n relation pointing to Crypto_30_LibCv_InitValue
  MaskedBits           contains bitcoded the boolean data of Crypto_30_LibCv_OnceOfKeyElementInfo, Crypto_30_LibCv_PartialOfKeyElementInfo, Crypto_30_LibCv_PersistOfKeyElementInfo
  Read             
  Write            
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_KeyElementInfoType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_KeyElementInfo[8] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Id     Length  InitValueEndIdx                                     InitValueStartIdx                                     MaskedBits  Read                        Write                             Referable Keys */
  { /*     0 */  160u,   256u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Rsa2048_Modulus] */
  { /*     1 */  161u,     4u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Rsa_Pub_Exponent] */
  { /*     2 */  163u,    32u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Rsa_Salt] */
  { /*     3 */    3u,    32u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_DENIED , CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128] */
  { /*     4 */    4u,     1u,                                                 1u,                                                   0u,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128] */
  { /*     5 */ 3016u,    32u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_AdditionalInput] */
  { /*     6 */ 3018u,     4u,                                                 5u,                                                   1u,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_DENIED  },  /* [/ActiveEcuC/Crypto/CryptoKeyElements/Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
  { /*     7 */    1u,    20u, CRYPTO_30_LIBCV_NO_INITVALUEENDIDXOFKEYELEMENTINFO, CRYPTO_30_LIBCV_NO_INITVALUESTARTIDXOFKEYELEMENTINFO,      0x00u, CRYPTO_30_LIBCV_RA_ALLOWED, CRYPTO_30_LIBCV_WA_ALLOWED }   /* [/ActiveEcuC/Crypto/CryptoKeyElements/Crypto_30_LibCv_Hash_Result] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_KeyElements
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_KeyElements
  \details
  Element                            Description
  Id                             
  KeyStorageEndIdx                   the end index of the 1:n relation pointing to Crypto_30_LibCv_KeyStorage
  KeyStorageExtensionIdx             the index of the 1:1 relation pointing to Crypto_30_LibCv_KeyStorage
  KeyStorageStartIdx                 the start index of the 1:n relation pointing to Crypto_30_LibCv_KeyStorage
  KeyStorageValidIdx                 the index of the 1:1 relation pointing to Crypto_30_LibCv_KeyStorage
  KeyStorageWrittenLengthEndIdx      the end index of the 1:n relation pointing to Crypto_30_LibCv_KeyStorage
  KeyStorageWrittenLengthStartIdx    the start index of the 1:n relation pointing to Crypto_30_LibCv_KeyStorage
  KeyElementInfoIdx                  the index of the 1:1 relation pointing to Crypto_30_LibCv_KeyElementInfo
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_KeyElementsType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_KeyElements[8] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Id     KeyStorageEndIdx  KeyStorageExtensionIdx  KeyStorageStartIdx  KeyStorageValidIdx  KeyStorageWrittenLengthEndIdx  KeyStorageWrittenLengthStartIdx  KeyElementInfoIdx        Referable Keys */
  { /*     0 */  160u,             260u,                     3u,                 4u,                 2u,                            2u,                              0u,                0u },  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhKeyRSA, SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus] */
  { /*     1 */  161u,             268u,                   263u,               264u,               262u,                          262u,                            260u,                1u },  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhKeyRSA, SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent] */
  { /*     2 */  163u,             304u,                   271u,               272u,               270u,                          270u,                            268u,                2u },  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhKeyRSA, SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt] */
  { /*     3 */    3u,             340u,                   307u,               308u,               306u,                          306u,                            304u,                3u },  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A, Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128] */
  { /*     4 */    4u,             345u,                   343u,               344u,               342u,                          342u,                            340u,                4u },  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A, Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128] */
  { /*     5 */ 3016u,             381u,                   348u,               349u,               347u,                          347u,                            345u,                5u },  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A, Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput] */
  { /*     6 */ 3018u,             389u,                   384u,               385u,               383u,                          383u,                            381u,                6u },  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A, Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter] */
  { /*     7 */    1u,             413u,                   392u,               393u,               391u,                          391u,                            389u,                7u }   /* [/ActiveEcuC/Crypto/CryptoKeys/SmhCryptoKeyDummy, SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_ObjectInfo
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_ObjectInfo
  \details
  Element            Description
  WorkspaceLength    Holds the length of the workspace.
  DRBGAESIdx         the index of the 0:1 relation pointing to Crypto_30_LibCv_DRBGAES
  HashIdx            the index of the 0:1 relation pointing to Crypto_30_LibCv_Hash
  QueueIdx           the index of the 1:1 relation pointing to Crypto_30_LibCv_Queue
  RsaPssVerifyIdx    the index of the 0:1 relation pointing to Crypto_30_LibCv_RsaPssVerify
  WorkspaceAddr      Holds the address of the workspace.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_ObjectInfoType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_ObjectInfo[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    WorkspaceLength                                  DRBGAESIdx  HashIdx  QueueIdx  RsaPssVerifyIdx  WorkspaceAddr                                                                                        Referable Keys */
  { /*     0 */ sizeof(Crypto_30_LibCv_WS_Crypto_30_LibCv_Type),         0u,      0u,       0u,              0u, (P2VAR(uint8, AUTOMATIC, CRYPTO_30_LIBCV_VAR_NOINIT))&Crypto_30_LibCv_UnionWS_Crypto_30_LibCv }   /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv, SHA256, DRBGAES, RsaPssVerify] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_ObjectInfoInd
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_ObjectInfoInd
  \brief  the indexes of the 1:1 sorted relation pointing to Crypto_30_LibCv_ObjectInfo
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_ObjectInfoIndType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_ObjectInfoInd[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index     ObjectInfoInd      Referable Keys */
  /*     0 */             0u,  /* [SHA256] */
  /*     1 */             0u,  /* [DRBGAES] */
  /*     2 */             0u   /* [RsaPssVerify] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_PrimitiveFct
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_PrimitiveFct
  \details
  Element                  Description
  ObjectInfoIndEndIdx      the end index of the 0:n relation pointing to Crypto_30_LibCv_ObjectInfoInd
  ObjectInfoIndStartIdx    the start index of the 0:n relation pointing to Crypto_30_LibCv_ObjectInfoInd
  Dispatch             
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_PrimitiveFctType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_PrimitiveFct[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    ObjectInfoIndEndIdx  ObjectInfoIndStartIdx  Dispatch                                     Referable Keys */
  { /*     0 */                  1u,                    0u, Crypto_30_LibCv_Dispatch_Hash         },  /* [SHA256] */
  { /*     1 */                  2u,                    1u, Crypto_30_LibCv_Dispatch_DRBGAES      },  /* [DRBGAES] */
  { /*     2 */                  3u,                    2u, Crypto_30_LibCv_Dispatch_RsaPssVerify }   /* [RsaPssVerify] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_PrimitiveInfo
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_PrimitiveInfo
  \details
  Element            Description
  Combined       
  MaskedBits         contains bitcoded the boolean data of Crypto_30_LibCv_ContextOfPrimitiveInfo, Crypto_30_LibCv_DefaultRandomSourceOfPrimitiveInfo
  PrimitiveFctIdx    the index of the 1:1 relation pointing to Crypto_30_LibCv_PrimitiveFct
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_PrimitiveInfoType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_PrimitiveInfo[3] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Combined                                                                                                                                                                            MaskedBits  PrimitiveFctIdx        Referable Keys */
  { /*     0 */ ((((uint32)CRYPTO_HASH) << 24) | (((uint32)CRYPTO_ALGOFAM_SHA2_256) << 16) | (((uint32)CRYPTO_ALGOMODE_NOT_SET) << 8) | ((uint32)CRYPTO_ALGOFAM_NOT_SET))                         ,      0x00u,              0u },  /* [CRYPTO_HASH] */
  { /*     1 */ ((((uint32)CRYPTO_RANDOMGENERATE) << 24) | (((uint32)CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_DRBG) << 16) | (((uint32)CRYPTO_ALGOMODE_NOT_SET) << 8) | ((uint32)CRYPTO_ALGOFAM_AES)),      0x00u,              1u },  /* [CRYPTO_RANDOMGENERATE] */
  { /*     2 */ ((((uint32)CRYPTO_SIGNATUREVERIFY) << 24) | (((uint32)CRYPTO_ALGOFAM_RSA) << 16) | (((uint32)CRYPTO_ALGOMODE_RSASSA_PSS) << 8) | ((uint32)CRYPTO_ALGOFAM_SHA2_256))               ,      0x00u,              2u }   /* [CRYPTO_SIGNATUREVERIFY] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_PrimitiveServiceInfo
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_PrimitiveServiceInfo
  \details
  Element                  Description
  PrimitiveInfoEndIdx      the end index of the 0:n relation pointing to Crypto_30_LibCv_PrimitiveInfo
  PrimitiveInfoStartIdx    the start index of the 0:n relation pointing to Crypto_30_LibCv_PrimitiveInfo
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_PrimitiveServiceInfoType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_PrimitiveServiceInfo[20] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    PrimitiveInfoEndIdx                                           PrimitiveInfoStartIdx                                                 Referable Keys */
  { /*     0 */                                                           1u,                                                             0u },  /* [CRYPTO_HASH] */
  { /*     1 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_MACGENERATE] */
  { /*     2 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_MACVERIFY] */
  { /*     3 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_ENCRYPT] */
  { /*     4 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_DECRYPT] */
  { /*     5 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_AEADENCRYPT] */
  { /*     6 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_AEADDECRYPT] */
  { /*     7 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_SIGNATUREGENERATE] */
  { /*     8 */                                                           3u,                                                             2u },  /* [CRYPTO_SIGNATUREVERIFY] */
  { /*     9 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_SECCOUNTERINCREMENT] */
  { /*    10 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_SECCOUNTERREAD] */
  { /*    11 */                                                           2u,                                                             1u },  /* [CRYPTO_RANDOMGENERATE] */
  { /*    12 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_RANDOMSEED] */
  { /*    13 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_KEYGENERATE] */
  { /*    14 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_KEYDERIVE] */
  { /*    15 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_KEYEXCHANGECALCPUBVAL] */
  { /*    16 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_KEYEXCHANGECALCSECRET] */
  { /*    17 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_CERTIFICATEPARSE] */
  { /*    18 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO },  /* [CRYPTO_CERTIFICATEVERIFY] */
  { /*    19 */ CRYPTO_30_LIBCV_NO_PRIMITIVEINFOENDIDXOFPRIMITIVESERVICEINFO, CRYPTO_30_LIBCV_NO_PRIMITIVEINFOSTARTIDXOFPRIMITIVESERVICEINFO }   /* [CRYPTO_KEYSETVALID] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_RsaPssVerify
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_RsaPssVerify
  \details
  Element      Description
  Workspace
*/ 
#define CRYPTO_30_LIBCV_START_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
CONST(Crypto_30_LibCv_RsaPssVerifyType, CRYPTO_30_LIBCV_CONST) Crypto_30_LibCv_RsaPssVerify[1] = {  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
    /* Index    Workspace                                                           Referable Keys */
  { /*     0 */ &Crypto_30_LibCv_UnionWS_Crypto_30_LibCv.primWS.RsaPssVerify }   /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv] */
};
#define CRYPTO_30_LIBCV_STOP_SEC_CONST_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_BufferLength
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_BufferLength
  \brief  Buffer which holds the current seed of the Fips186 algorithm to restore the needed workspace.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_BufferLengthType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_BufferLength[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv, SHA256, DRBGAES, RsaPssVerify] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_DriverObjectState
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_DriverObjectState
  \brief  State of the current workspace usage.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_DriverObjectStateType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_DriverObjectState[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv, SHA256, DRBGAES, RsaPssVerify] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_KeyLock
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_KeyLock
  \brief  Stores locking counter of each key
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_KeyLockUType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_KeyLock;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhKeyRSA] */
  /*     1 */  /* [/ActiveEcuC/Crypto/CryptoKeys/Smh_CryptoKey_Nist_800_90A] */
  /*     2 */  /* [/ActiveEcuC/Crypto/CryptoKeys/SmhCryptoKeyDummy] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_KeyStorage
**********************************************************************************************************************/
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_KeyStorageType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_KeyStorage[413];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__WrittenLength__, RAM_KEY] */
  /*     1 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__WrittenLength__, RAM_KEY] */
  /*     2 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__Valid__, RAM_KEY] */
  /*     3 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__Extension__, RAM_KEY] */
  /*     4 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__Data__, RAM_KEY] */
  /*   ... */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__Data__, RAM_KEY] */
  /*   259 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa2048_Modulus__Data__, RAM_KEY] */
  /*   260 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__WrittenLength__, RAM_KEY] */
  /*   261 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__WrittenLength__, RAM_KEY] */
  /*   262 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__Valid__, RAM_KEY] */
  /*   263 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__Extension__, RAM_KEY] */
  /*   264 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__Data__, RAM_KEY] */
  /*   ... */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__Data__, RAM_KEY] */
  /*   267 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Pub_Exponent__Data__, RAM_KEY] */
  /*   268 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__WrittenLength__, RAM_KEY] */
  /*   269 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__WrittenLength__, RAM_KEY] */
  /*   270 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__Valid__, RAM_KEY] */
  /*   271 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__Extension__, RAM_KEY] */
  /*   272 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__Data__, RAM_KEY] */
  /*   ... */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__Data__, RAM_KEY] */
  /*   303 */  /* [SmhKeyRSA__Smh_Crypto_30_LibCv_Rsa_Salt__Data__, RAM_KEY] */
  /*   304 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__WrittenLength__, RAM_KEY] */
  /*   305 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__WrittenLength__, RAM_KEY] */
  /*   306 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__Valid__, RAM_KEY] */
  /*   307 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__Extension__, RAM_KEY] */
  /*   308 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__Data__, RAM_KEY] */
  /*   ... */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__Data__, RAM_KEY] */
  /*   339 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Seed_Nist_800_90A_DRBG_AES128__Data__, RAM_KEY] */
  /*   340 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128__WrittenLength__, RAM_KEY] */
  /*   341 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128__WrittenLength__, RAM_KEY] */
  /*   342 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128__Valid__, RAM_KEY] */
  /*   343 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128__Extension__, RAM_KEY] */
  /*   344 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Algorithm_Nist_800_90A_DRBG_AES128__Data__, RAM_KEY] */
  /*   345 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__WrittenLength__, RAM_KEY] */
  /*   346 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__WrittenLength__, RAM_KEY] */
  /*   347 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__Valid__, RAM_KEY] */
  /*   348 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__Extension__, RAM_KEY] */
  /*   349 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__Data__, RAM_KEY] */
  /*   ... */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__Data__, RAM_KEY] */
  /*   380 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_AdditionalInput__Data__, RAM_KEY] */
  /*   381 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__WrittenLength__, RAM_KEY] */
  /*   382 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__WrittenLength__, RAM_KEY] */
  /*   383 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__Valid__, RAM_KEY] */
  /*   384 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__Extension__, RAM_KEY] */
  /*   385 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__Data__, RAM_KEY] */
  /*   ... */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__Data__, RAM_KEY] */
  /*   388 */  /* [Smh_CryptoKey_Nist_800_90A__Smh_Crypto_30_LibCv_Random_Reseed_Counter__Data__, RAM_KEY] */
  /*   389 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__WrittenLength__, RAM_KEY] */
  /*   390 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__WrittenLength__, RAM_KEY] */
  /*   391 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__Valid__, RAM_KEY] */
  /* Index        Referable Keys */
  /*   392 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__Extension__, RAM_KEY] */
  /*   393 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__Data__, RAM_KEY] */
  /*   ... */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__Data__, RAM_KEY] */
  /*   412 */  /* [SmhCryptoKeyDummy__Crypto_30_LibCv_Hash_Result__Data__, RAM_KEY] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_8BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_Lock
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_Lock
  \brief  Id of job that currently occupies the workspace
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_LockType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_Lock[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv, SHA256, DRBGAES, RsaPssVerify] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_Queue
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_Queue
  \brief  Acts as job queue for all driver objects.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_QueueUType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_Queue;  /* PRQA S 0759, 1514, 1533 */  /* MD_CSL_Union, MD_CSL_ObjectOnlyAccessedOnce, MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_UnionWS_Crypto_30_LibCv
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_UnionWS_Crypto_30_LibCv
  \brief  Union variable which acts as workspace for driver object /ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_WS_Crypto_30_LibCv_Type, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_UnionWS_Crypto_30_LibCv;  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_UNSPECIFIED
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */

/**********************************************************************************************************************
  Crypto_30_LibCv_WrittenLength
**********************************************************************************************************************/
/** 
  \var    Crypto_30_LibCv_WrittenLength
  \brief  Holds the length which needs to be written in a next step for some algorithms.
*/ 
#define CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */
VAR(Crypto_30_LibCv_WrittenLengthType, CRYPTO_30_LIBCV_VAR_NOINIT) Crypto_30_LibCv_WrittenLength[1];  /* PRQA S 1514, 1533 */  /* MD_CSL_ObjectOnlyAccessedOnce */
  /* Index        Referable Keys */
  /*     0 */  /* [/ActiveEcuC/Crypto/CryptoDriverObjects/Crypto_30_LibCv, SHA256, DRBGAES, RsaPssVerify] */

#define CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_32BIT
/*lint -save -esym(961, 19.1) */
#include "Crypto_30_LibCv_MemMap.h"  /* PRQA S 5087 */  /* MD_MSR_MemMap */
/*lint -restore */





/**********************************************************************************************************************
 *  LOCAL FUNCTIONS
 *********************************************************************************************************************/



 
/**********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 *********************************************************************************************************************/




/**********************************************************************************************************************
 *  END OF FILE: Crypto_30_LibCv_Cfg.c
 *********************************************************************************************************************/
