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
 *            Module: Smh
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: SecMPar.c
 *   Generation Time: 2024-04-01 17:15:36
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


#define SECMPAR_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "Sec.h"
#include "Csm.h"

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/
/* PRQA  S 3218 EOF */ /* MD_SecMPar_3218 */
#define SECM_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

V_MEMROM0 static V_MEMROM1 SecM_CryptographicKeyValueType V_MEMROM2 SecM_KeyValueList_SecM_RsaDevelopment[2] =
{
  { /*  SecM_RsaModDevelopment  */ 
    SecM_RsaDevelopmentMod, 
    256u, 
    160u
  }, 
  { /*  SecM_RsaExpDevelopment  */ 
    SecM_RsaDevelopmentExp, 
    4u, 
    161u
  }
};
V_MEMROM0 static V_MEMROM1 SecM_CryptographicKeyValueType V_MEMROM2 SecM_KeyValueList_SecM_RsaTokenFunction[2] =
{
  { /*  SecM_RsaExpTokenFunction  */ 
    SecM_RsaTokenFunctionExp, 
    4u, 
    161u
  }, 
  { /*  SecM_RsaModTokenFunction  */ 
    SecM_RsaTokenFunctionMod, 
    256u, 
    160u
  }
};
V_MEMROM0 static V_MEMROM1 SecM_CryptographicKeyValueType V_MEMROM2 SecM_KeyValueList_SecM_RsaKeyChange[2] =
{
  { /*  SecM_RsaExpKeyChange  */ 
    SecM_RsaKeyChangeExp, 
    4u, 
    161u
  }, 
  { /*  SecM_RsaModKeyChange  */ 
    SecM_RsaKeyChangeMod, 
    256u, 
    160u
  }
};

V_MEMROM0 static V_MEMROM1 SecM_VerifyOperationType V_MEMROM2 verifyConfigSmhSecurityClassDDDConfig[2] =
{
  { /*  SmhSecurityClassDDDConfig  */ 
    SecM_VerifySha256, 
    SEC_SIZE_HASH_SHA256, 
    0x00000000u, 
    SEC_UPDATE_OPERATION_VERIFICATION
  }, 
  { /*  CRC Written  */ 
    SecM_VerifyChecksumCrc, 
    SEC_SIZE_CHECKSUM_CRC, 
    0x00000020u, 
    SEC_UPDATE_OPERATION_VERIFICATION
  }
};
V_MEMROM0 static V_MEMROM1 SecM_VerifyOperationType V_MEMROM2 verifyConfigSmhSecurityClassCCCConfig_RSA2048[2] =
{
  { /*  SmhSecurityClassCCCConfig_RSA2048  */ 
    SecM_VerifyClassCCC_Rsa2048PssSha256, 
    SEC_SIZE_SIG_RSA2048, 
    0x00000000u, 
    ( SEC_UPDATE_OPERATION_VERIFICATION | SEC_UPDATE_OPERATION_ADDRESS_LENGTH )
  }, 
  { /*  CRC Written  */ 
    SecM_VerifyChecksumCrc, 
    SEC_SIZE_CHECKSUM_CRC, 
    SEC_SIZE_SIG_RSA2048, 
    SEC_UPDATE_OPERATION_VERIFICATION
  }
};

#define SECM_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define SECM_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

V_MEMRAM0 static V_MEMRAM1 SecM_ByteType V_MEMRAM2 SecM_DigestBuffer_SmhSecurityClassDDDConfig[SEC_SIZE_HASH_SHA256];


#define SECM_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define SECM_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */


#define SECM_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define SECM_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaDevelopmentMod[256] = {0xBAu, 0xB7u, 0x6Eu, 0xFFu, 0xD1u, 0xB5u, 0xF8u, 0x3Cu, 0x8Eu, 0x07u, 0x13u, 0x67u, 0x27u, 0xC3u, 0x4Du, 0x5Du, 0x8Fu, 0xE6u, 0xBBu, 0xA8u, 0xE0u, 0xD2u, 0x07u, 0x9Cu, 0x42u, 0x47u, 0x13u, 0xFDu, 0x1Au, 0xB1u, 0x7Au, 0xEDu, 0x48u, 0xAEu, 0x61u, 0x71u, 0x51u, 0xD4u, 0xD5u, 0xDBu, 0x05u, 0x2Du, 0xDCu, 0xDDu, 0x27u, 0x1Eu, 0x8Bu, 0x36u, 0x1Fu, 0xF8u, 0x61u, 0x6Du, 0x9Au, 0x5Eu, 0x77u, 0xFEu, 0x72u, 0x74u, 0x8Bu, 0xD7u, 0xBFu, 0x73u, 0x3Fu, 0x92u, 0x21u, 0x76u, 0x57u, 0x1Cu, 0x20u, 0x0Au, 0x4Au, 0xACu, 0x50u, 0x68u, 0x94u, 0x75u, 0x76u, 0xC4u, 0x65u, 0x02u, 0x41u, 0xDAu, 0xC9u, 0x4Fu, 0x62u, 0x3Cu, 0xB7u, 0x43u, 0x75u, 0xACu, 0x19u, 0xB4u, 0x74u, 0xA6u, 0x6Bu, 0x3Au, 0xB8u, 0x4Du, 0xEFu, 0x80u, 0x93u, 0xD3u, 0xD1u, 0x7Bu, 0xEEu, 0xFCu, 0xC3u, 0x50u, 0xC3u, 0x0Du, 0x1Fu, 0xADu, 0x66u, 0x91u, 0xDBu, 0xC3u, 0xF3u, 0xFDu, 0x63u, 0xA1u, 0x15u, 0x25u, 0xB8u, 0x3Eu, 0x7Bu, 0x53u, 0x50u, 0xFCu, 0xDDu, 0xEBu, 0x4Eu, 0x9Eu, 0xDFu, 0x82u, 0x1Au, 0xAAu, 0x51u, 0x56u, 0x65u, 0xAFu, 0xDEu, 0x66u, 0x37u, 0x2Au, 0x0Au, 0x70u, 0xE2u, 0x71u, 0xD7u, 0x23u, 0xA5u, 0xFAu, 0xBFu, 0x58u, 0x60u, 0xDFu, 0x9Bu, 0xFCu, 0x02u, 0xDCu, 0x10u, 0xD2u, 0xCEu, 0x10u, 0x38u, 0x8Du, 0x75u, 0xE4u, 0xFDu, 0x98u, 0xF8u, 0x2Au, 0x4Bu, 0xE0u, 0x30u, 0xF4u, 0x20u, 0x15u, 0xD8u, 0x01u, 0x31u, 0xB2u, 0x26u, 0x35u, 0xEBu, 0x54u, 0x49u, 0x60u, 0xD3u, 0x56u, 0x6Eu, 0xB5u, 0xE8u, 0xB7u, 0xACu, 0x6Du, 0x38u, 0x8Fu, 0x3Eu, 0xE4u, 0xE4u, 0xCBu, 0xDEu, 0x72u, 0xD7u, 0x97u, 0x29u, 0x1Eu, 0x54u, 0xC4u, 0x69u, 0x59u, 0x76u, 0xB8u, 0x0Au, 0x26u, 0xCBu, 0xC7u, 0x79u, 0x8Eu, 0xB0u, 0x03u, 0xB7u, 0xF2u, 0x8Fu, 0xA4u, 0x70u, 0x89u, 0xACu, 0x4Du, 0x32u, 0x08u, 0xA8u, 0xA3u, 0xD8u, 0xD8u, 0xC0u, 0x89u, 0x56u, 0x97u, 0xC5u, 0xDEu, 0x3Au, 0x47u, 0xE0u, 0x4Du, 0xD9u, 0xA3u, 0xC9u, 0x1Eu, 0x8Fu, 0x08u, 0x93u, 0x48u, 0x82u, 0xC7u}; /* Software Signature Development Public Key Modulus */
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaDevelopmentExp[4] = {0x00u, 0x01u, 0x00u, 0x01u}; /* Software Signature Development Public Key Exponent */
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaTokenFunctionExp[4] = {0x00u, 0x01u, 0x00u, 0x01u}; /* Token Function Public Key Exponent */
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaTokenFunctionMod[256] = {0xC1u, 0x71u, 0x6Fu, 0x96u, 0xECu, 0x87u, 0x16u, 0xD4u, 0x53u, 0xEDu, 0x58u, 0x4Au, 0x1Eu, 0x02u, 0x33u, 0x25u, 0x46u, 0xFBu, 0xB2u, 0xFFu, 0x80u, 0x1Au, 0x1Cu, 0x25u, 0x8Au, 0x45u, 0xD9u, 0x54u, 0x0Eu, 0x06u, 0x7Cu, 0x54u, 0x7Bu, 0x10u, 0x47u, 0xC3u, 0xFAu, 0x05u, 0x56u, 0x2Fu, 0x6Bu, 0xA9u, 0xB4u, 0xE8u, 0xF7u, 0x03u, 0x64u, 0xCBu, 0x2Eu, 0x3Au, 0x34u, 0x9Eu, 0xBFu, 0xD3u, 0xE3u, 0x7Du, 0x38u, 0xF0u, 0x97u, 0x78u, 0xC0u, 0x83u, 0xB1u, 0xB9u, 0x8Du, 0x91u, 0xFEu, 0x4Bu, 0x86u, 0x80u, 0x47u, 0xF2u, 0x16u, 0x7Bu, 0x27u, 0xA0u, 0xDDu, 0x33u, 0xF3u, 0xD9u, 0xCCu, 0x28u, 0x22u, 0xCCu, 0x77u, 0x1Eu, 0x57u, 0x4Bu, 0x5Cu, 0x87u, 0x13u, 0x3Fu, 0x60u, 0xCBu, 0x55u, 0x2Eu, 0x6Bu, 0x59u, 0x09u, 0xBAu, 0x23u, 0x57u, 0x75u, 0xFDu, 0x6Fu, 0xE9u, 0x5Bu, 0x5Cu, 0xA8u, 0xAFu, 0x4Au, 0x07u, 0xC3u, 0x49u, 0x80u, 0xE1u, 0xFBu, 0x15u, 0x7Bu, 0xB8u, 0x07u, 0xA1u, 0x7Fu, 0xADu, 0xBEu, 0x00u, 0x94u, 0xE6u, 0xE3u, 0x73u, 0x7Bu, 0x1Cu, 0x08u, 0x85u, 0xBEu, 0x0Bu, 0x47u, 0xB3u, 0xEBu, 0x05u, 0x2Du, 0x21u, 0x98u, 0x5Bu, 0x63u, 0xDBu, 0x31u, 0x70u, 0x4Fu, 0xE1u, 0xA6u, 0xCAu, 0x00u, 0x52u, 0x83u, 0x35u, 0xE8u, 0xA4u, 0xF8u, 0xE1u, 0xB1u, 0x2Du, 0xAEu, 0x61u, 0x1Cu, 0x30u, 0x2Eu, 0x58u, 0x38u, 0xB8u, 0x87u, 0xABu, 0x9Fu, 0xC4u, 0x13u, 0x65u, 0x24u, 0x60u, 0x8Cu, 0x4Du, 0xF9u, 0xE4u, 0x62u, 0x96u, 0x4Fu, 0x69u, 0xBFu, 0x6Fu, 0x95u, 0x91u, 0xEAu, 0x6Bu, 0xCAu, 0x4Fu, 0xB7u, 0x4Bu, 0xA5u, 0x92u, 0x05u, 0xBAu, 0xCDu, 0x66u, 0x34u, 0x19u, 0x75u, 0x02u, 0xBEu, 0x15u, 0xE9u, 0xAAu, 0x9Du, 0xE7u, 0x8Du, 0x47u, 0x91u, 0xC3u, 0xF0u, 0x2Eu, 0x0Eu, 0x47u, 0xA8u, 0x00u, 0xC3u, 0xC2u, 0x67u, 0xC5u, 0x32u, 0x13u, 0xF2u, 0x12u, 0x5Fu, 0xD3u, 0x6Cu, 0x01u, 0x3Fu, 0xAFu, 0xACu, 0xA5u, 0x34u, 0x69u, 0xBEu, 0x92u, 0x19u, 0xD5u, 0x03u, 0x4Eu, 0x4Au, 0x78u, 0x4Du, 0x7Cu, 0xABu, 0x9Cu, 0x07u, 0x39u, 0xCEu, 0x67u}; /* Token Function Public Key Modulus */
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaKeyChangeExp[4] = {0x00u, 0x01u, 0x00u, 0x01u}; /* Key Change Public Key Exponent */
V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaKeyChangeMod[256] = {0xAFu, 0xD9u, 0x94u, 0x6Au, 0x53u, 0x7Fu, 0xCCu, 0xAAu, 0x71u, 0x4Bu, 0x6Fu, 0x03u, 0xFFu, 0x72u, 0x1Au, 0x3Eu, 0x65u, 0x8Eu, 0xC9u, 0x69u, 0xC1u, 0x34u, 0x9Fu, 0x90u, 0x23u, 0x38u, 0x1Eu, 0xEDu, 0x07u, 0xA5u, 0x2Cu, 0xE1u, 0xF1u, 0x2Au, 0xE6u, 0x5Au, 0xA5u, 0x3Cu, 0xB8u, 0xCBu, 0x3Au, 0x00u, 0x53u, 0x72u, 0xF9u, 0x91u, 0x3Eu, 0x23u, 0x71u, 0xB2u, 0x02u, 0x8Au, 0xE3u, 0x5Bu, 0x4Fu, 0x6Du, 0xB1u, 0x25u, 0x0Fu, 0x5Eu, 0x5Cu, 0xFAu, 0x76u, 0xB4u, 0x4Cu, 0xA2u, 0x77u, 0x28u, 0x9Cu, 0x42u, 0x3Bu, 0xDBu, 0xD6u, 0x73u, 0x75u, 0xE7u, 0x56u, 0xADu, 0x53u, 0x0Du, 0x25u, 0x3Fu, 0xABu, 0xD1u, 0x5Fu, 0xE6u, 0x1Cu, 0xD3u, 0x5Bu, 0x6Fu, 0x32u, 0xEAu, 0xB8u, 0xFEu, 0x78u, 0x41u, 0xCEu, 0x7Eu, 0xCEu, 0xEAu, 0x30u, 0x2Cu, 0x09u, 0xE7u, 0x84u, 0xC8u, 0x88u, 0xDCu, 0x62u, 0x82u, 0x21u, 0x4Eu, 0x37u, 0x01u, 0xE4u, 0x04u, 0xE8u, 0x4Au, 0xE2u, 0xB1u, 0x98u, 0xB7u, 0x24u, 0xF4u, 0x33u, 0x42u, 0x8Cu, 0xC3u, 0xDEu, 0xECu, 0x7Eu, 0xBDu, 0xE4u, 0x54u, 0x93u, 0x2Bu, 0xC1u, 0x4Du, 0xC1u, 0xA4u, 0xBFu, 0x55u, 0x0Cu, 0x68u, 0xC5u, 0x9Fu, 0x33u, 0x8Fu, 0x8Bu, 0x17u, 0x18u, 0x77u, 0x86u, 0xFDu, 0xB4u, 0x36u, 0x6Du, 0x32u, 0xD0u, 0xBFu, 0x4Du, 0xD6u, 0xF8u, 0x64u, 0x86u, 0x73u, 0x19u, 0x91u, 0x79u, 0xA7u, 0x59u, 0x58u, 0x50u, 0xC7u, 0x81u, 0x66u, 0xB1u, 0x09u, 0xDBu, 0xBDu, 0x97u, 0x09u, 0xBCu, 0x2Cu, 0xBFu, 0x60u, 0x19u, 0xF4u, 0x80u, 0x78u, 0xCAu, 0xB4u, 0x85u, 0x7Eu, 0x63u, 0x74u, 0x76u, 0xF4u, 0x6Bu, 0x89u, 0x92u, 0x44u, 0x68u, 0xA6u, 0x2Bu, 0xF4u, 0x4Au, 0x25u, 0x59u, 0x5Bu, 0x1Eu, 0x6Du, 0xA8u, 0x1Au, 0xA8u, 0x2Bu, 0x1Du, 0x7Du, 0x33u, 0x3Cu, 0x69u, 0x6Eu, 0x35u, 0x9Cu, 0x8Au, 0x98u, 0x2Cu, 0x65u, 0x43u, 0xF3u, 0xF4u, 0x2Bu, 0x32u, 0x6Fu, 0x36u, 0xD7u, 0xD7u, 0xA0u, 0xA7u, 0x1Du, 0x20u, 0x1Fu, 0x7Cu, 0x00u, 0x6Du, 0x85u, 0x20u, 0xEBu, 0xC0u, 0xE1u, 0xFCu, 0x6Du, 0x18u, 0x02u, 0x62u, 0x95u}; /* Key Change Public Key Modulus */

V_MEMROM0 V_MEMROM1 SecM_CryptographicKeyType V_MEMROM2 SecM_CryptographicKeys[3] =
{
  { /*  SecM_RsaDevelopment  */ 
    2u, 
    SecM_KeyValueList_SecM_RsaDevelopment
  }, 
  { /*  SecM_RsaTokenFunction  */ 
    2u, 
    SecM_KeyValueList_SecM_RsaTokenFunction
  }, 
  { /*  SecM_RsaKeyChange  */ 
    2u, 
    SecM_KeyValueList_SecM_RsaKeyChange
  }
};



V_MEMROM0 V_MEMROM1 SecM_HashPrimitiveType V_MEMROM2 SecM_HashPrimitives[1] =
{
  { /*  SmhSecurityClassDDDConfig  */ 
    SmhConf_SmhJob_SmhJob_HashSha256, 
    SecM_DigestBuffer_SmhSecurityClassDDDConfig, 
    SEC_SIZE_HASH_SHA256, 
    TRUE, 
    FALSE
  }
};



V_MEMROM0 V_MEMROM1 SecM_RamDataType V_MEMROM2 SecM_SignaturePrimitivesContextBuffs[2] =
{ /*  SmhSecurityClassCCCConfigSmhSecurityClassCCCConfig_Token  */ 
  V_NULL, 
  V_NULL
};

V_MEMROM0 V_MEMROM1 SecM_SigPrimitiveType V_MEMROM2 SecM_SignaturePrimitives[2] =
{
  { /*  SmhSecurityClassCCCConfig  */ 
    SmhConf_SmhJob_SmhJob_SignatureVerify_Rsa2048PssSha256, 
    SEC_INVALID_SMH_JOB_ID, 
    NULL_PTR, 
    0, 
    0u, 
    V_NULL, 
    FALSE
  }, 
  { /*  SmhSecurityClassCCCConfig_Token  */ 
    SmhConf_SmhJob_SmhJob_SignatureVerify_Rsa2048PssSha256_Token, 
    SEC_INVALID_SMH_JOB_ID, 
    NULL_PTR, 
    0, 
    0u, 
    V_NULL, 
    FALSE
  }
};



/* PRQA S 0315 JOBINFO_TAG */ /* MD_SecMPar_0315 */
V_MEMROM0 V_MEMROM1 SecM_JobInfoType V_MEMROM2 SecM_JobInfo[5] =
{
  { /*  SmhJob_RandomSeed  */ 
    SECM_RANDOMSEED, 
    SEC_INVALID_CSM_JOB_ID, 
    CsmConf_CsmKey_CsmKey_Smh_Nist_800_90A, 
    SEC_INVALID_SMH_KEY_ID, 
    SEC_KEY_TYPE_NONE, 
    V_NULL
  }, 
  { /*  SmhJob_RandomGenerate  */ 
    SECM_RANDOMGENERATE, 
    CsmConf_CsmJob_CsmJob_RandomGenerate, 
    CsmConf_CsmKey_CsmKey_Smh_Nist_800_90A, 
    SEC_INVALID_SMH_KEY_ID, 
    SEC_KEY_TYPE_NONE, 
    V_NULL
  }, 
  { /*  SmhJob_SignatureVerify_Rsa2048PssSha256  */ 
    SECM_SIGNATUREVERIFY, 
    CsmConf_CsmJob_CsmJob_SigAsymVer_RsaPssSha256, 
    CsmConf_CsmKey_CsmKey_SmhKeyRSA, 
    SmhConf_SmhCryptographicKeys_SecM_RsaDevelopment, 
    SEC_KEY_TYPE_ASYMMETRIC, 
    V_NULL
  }, 
  { /*  SmhJob_HashSha256  */ 
    SECM_HASH, 
    CsmConf_CsmJob_CsmJob_HashSha256, 
    CsmConf_CsmKey_CsmKey_Smh_HashSha256, 
    SEC_INVALID_SMH_KEY_ID, 
    SEC_KEY_TYPE_NONE, 
    V_NULL
  }, 
  { /*  SmhJob_SignatureVerify_Rsa2048PssSha256_Token  */ 
    SECM_SIGNATUREVERIFY, 
    CsmConf_CsmJob_CsmJob_SigAsymVer_RsaPssSha256, 
    CsmConf_CsmKey_CsmKey_SmhKeyRSA, 
    SmhConf_SmhCryptographicKeys_SecM_RsaTokenFunction, 
    SEC_KEY_TYPE_ASYMMETRIC, 
    V_NULL
  }
};
/* PRQA L:JOBINFO_TAG */

#define SECM_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define SECM_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/


SecM_StatusType SecM_VerifySha256( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   return SecM_VerifyHash(pVerifyParam, SmhConf_SmhStreamVerificationHash_SmhSecurityClassDDDConfig);
}

SecM_StatusType SecM_VerifyClassCCC_Rsa2048PssSha256( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   return SecM_VerifySig(pVerifyParam, SmhConf_SmhStreamVerificationSignature_SmhSecurityClassCCCConfig);
}

SecM_StatusType FblDiagVerifyTokenSignature( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   return SecM_VerifySig(pVerifyParam, SmhConf_SmhStreamVerificationSignature_SmhSecurityClassCCCConfig_Token);
}


SecM_StatusType SecM_VerificationClassDDD_Sha256( V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   SecM_SignatureParamType    verifyContext[2];
   SecM_VerifyConfigListType  config;

   config.pPrimitives.pOperation = verifyConfigSmhSecurityClassDDDConfig;
   config.pPrimitives.pContext   = verifyContext;
   config.count                  = 2;

   return SecM_VerificationBase(pVerifyParam, &config);
}

SecM_StatusType SecM_VerificationClassCCC_Rsa2048PssSha256( V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam )
{
   SecM_SignatureParamType    verifyContext[2];
   SecM_VerifyConfigListType  config;

   config.pPrimitives.pOperation = verifyConfigSmhSecurityClassCCCConfig_RSA2048;
   config.pPrimitives.pContext   = verifyContext;
   config.count                  = 2;

   return SecM_VerificationBase(pVerifyParam, &config);
}



#define SECM_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA
 **********************************************************************************************************************/

/* Module specific MISRA deviations:

   MD_SecMPar_0313:
      Reason:     Signature/checksum verification functions are stored as void pointers as actual type is not known at
                  configuration time.
      Risk:       Function signature not compatible with expected type.
      Prevention: Integrator has to take care the configured functions match with the expected signature.

   MD_SecMPar_0315:
      Reason:     The implicit conversion from a pointer to object type to a pointer to void is used to allows pointers 
                  to different object types as parameter.
      Risk:       No risk, because the underlying pointer type is known and the cast is safe.
      Prevention: No prevention necessary.

   MD_SecMPar_3218:
      Reason:     The local variables of this module are kept at a central location for a better overview and maintenance.
      Risk:       Scope is larger than required (whole file instead of one function). Some other function could access
                  the variable.
      Prevention: Restrict the functionality in this module to the intended purpose. Don't add functions which shall not
                  be able to access the local data buffers.

*/
