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
 *              File: Crypto_30_LibCv_Custom_Generated.h
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


#if !defined (CRYPTO_30_LIBCV_CUSTOM_GENERATED_H)
# define CRYPTO_30_LIBCV_CUSTOM_GENERATED_H

/**********************************************************************************************************************
 *  GLOBAL CONSTANT MACROS
**********************************************************************************************************************/
/* ----- Symbolic Name Define Block ---------------------------------------------- */
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_CCM (147u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_Mode1 (150u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P160r1 (146u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P256r1 (128u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P384r1 (131u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_RSAES_OAEP_CRT (132u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_RSASSA_PKCS1_v1_5_CRT (129u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_UseDF (130u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P224r1 (148u)
#define CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P521r1 (134u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_PaddingPKCS7 (133u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_FIPS186 (132u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ECCANSI (129u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ECCSEC (130u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_DRBG (131u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_X25519 (135u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ISO15118 (136u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_POLY1305 (137u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_CmdGetId (140u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_HKDF (139u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_SPAKE2PLUS (138u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_CipherSuite8 (157u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_MD5 (191u)
#define CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_BD (141u)

/* ----- Custom Algorithm Mode Defines ---------------------------------------------- */
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_CCM                                                  CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_CCM
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_MODE_1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_Mode1
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_P160R1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P160r1
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_P256R1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P256r1
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_P384R1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P384r1
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_RSAES_OAEP_CRT                                       CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_RSAES_OAEP_CRT
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_RSASSA_PKCS1_v1_5_CRT                                CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_RSASSA_PKCS1_v1_5_CRT
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_USE_DF                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_UseDF
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_P224R1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P224r1
#define CRYPTO_ALGOMODE_CUSTOM_CRYPTO_30_LIBCV_P521R1                                               CryptoConf_CryptoPrimitiveAlgorithmModeCustom_Crypto_30_LibCv_P521r1

/* ----- Custom Algorithm Family Defines ---------------------------------------------- */
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_PADDING_PKCS7                                         CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_PaddingPKCS7
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_FIPS186                                               CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_FIPS186
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_ECCANSI                                               CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ECCANSI
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_ECCSEC                                                CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ECCSEC
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_DRBG                                                  CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_DRBG
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_X25519                                                CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_X25519
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_ISO15118                                              CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_ISO15118
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_POLY_1305                                             CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_POLY1305
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_CMD_GET_ID                                            CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_CmdGetId
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_HKDF                                                  CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_HKDF
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_SPAKE2_PLUS                                           CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_SPAKE2PLUS
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_CIPHER_SUITE_8                                        CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_CipherSuite8
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_MD5                                                   CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_MD5
#define CRYPTO_ALGOFAM_CUSTOM_CRYPTO_30_LIBCV_BD                                                    CryptoConf_CryptoPrimitiveAlgorithmFamilyCustom_Crypto_30_LibCv_BD


#endif /* CRYPTO_30_LIBCV_CUSTOM_GENERATED_H */

/**********************************************************************************************************************
 *  END OF FILE: Crypto_30_LibCv_Custom_Generated.h
 *********************************************************************************************************************/

