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
 *              File: SecMPar.h
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


#if !defined(SECMPAR_H)
#define SECMPAR_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "Sec_Inc.h"

/***********************************************************************************************************************
 *  FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define SECM_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */



SecM_StatusType SecM_VerifySha256( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );
SecM_StatusType SecM_VerifyClassCCC_Rsa2048PssSha256( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );
SecM_StatusType FblDiagVerifyTokenSignature( V_MEMRAM1 SecM_SignatureParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );

SecM_StatusType SecM_VerificationClassDDD_Sha256( V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );
SecM_StatusType SecM_VerificationClassCCC_Rsa2048PssSha256( V_MEMRAM1 SecM_VerifyParamType V_MEMRAM2 V_MEMRAM3 * pVerifyParam );



#define SECM_STOP_SEC_CODE
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


/* Public part of RSAKey01_2048 */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaDevelopmentMod[256]; /* Software Signature Development Public Key Modulus */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaDevelopmentExp[4]; /* Software Signature Development Public Key Exponent */
/* Token Function key */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaTokenFunctionExp[4]; /* Token Function Public Key Exponent */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaTokenFunctionMod[256]; /* Token Function Public Key Modulus */
/* SecM_RsaKeyChange */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaKeyChangeExp[4]; /* Key Change Public Key Exponent */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 SecM_RsaKeyChangeMod[256]; /* Key Change Public Key Modulus */

V_MEMROM0 extern V_MEMROM1 SecM_CryptographicKeyType V_MEMROM2 SecM_CryptographicKeys[3];



V_MEMROM0 extern V_MEMROM1 SecM_HashPrimitiveType V_MEMROM2 SecM_HashPrimitives[1];



V_MEMROM0 extern V_MEMROM1 SecM_RamDataType V_MEMROM2 SecM_SignaturePrimitivesContextBuffs[2];

V_MEMROM0 extern V_MEMROM1 SecM_SigPrimitiveType V_MEMROM2 SecM_SignaturePrimitives[2];



V_MEMROM0 extern V_MEMROM1 SecM_JobInfoType V_MEMROM2 SecM_JobInfo[5];


#define SECM_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* SECMPAR_H */
