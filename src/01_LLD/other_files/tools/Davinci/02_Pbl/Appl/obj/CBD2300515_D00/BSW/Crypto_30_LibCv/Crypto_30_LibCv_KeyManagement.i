# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 31 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 1
# 216 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "../../../BSW/Csm/Csm_Types.h" 1
# 37 "../../../BSW/Csm/Csm_Types.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 56 "../../../BSW/_Common/Std_Types.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
# 101 "../../../BSW/_Common/Platform_Types.h"
typedef unsigned char boolean;

typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;

typedef signed char sint8_least;
typedef unsigned char uint8_least;
typedef signed short sint16_least;
typedef unsigned short uint16_least;
typedef signed long sint32_least;
typedef unsigned long uint32_least;
# 125 "../../../BSW/_Common/Platform_Types.h"
typedef signed long long sint64;
typedef unsigned long long uint64;


typedef float float32;
typedef double float64;
# 57 "../../../BSW/_Common/Std_Types.h" 2

# 1 "../../../BSW/_Common/Compiler.h" 1
# 45 "../../../BSW/_Common/Compiler.h"
# 1 "Include/Compiler_Cfg.h" 1
# 46 "../../../BSW/_Common/Compiler.h" 2
# 59 "../../../BSW/_Common/Std_Types.h" 2
# 115 "../../../BSW/_Common/Std_Types.h"
typedef unsigned char StatusType;




typedef uint8 Std_ReturnType;

typedef struct
{
   uint16 vendorID;
   uint16 moduleID;
   uint8 sw_major_version;
   uint8 sw_minor_version;
   uint8 sw_patch_version;
} Std_VersionInfoType;

typedef uint8 Std_TransformerErrorCode;

typedef uint8 Std_TransformerClass;
# 152 "../../../BSW/_Common/Std_Types.h"
typedef uint8 Std_MessageTypeType;



typedef uint8 Std_MessageResultType;



typedef struct
{
  Std_TransformerErrorCode errorCode;
  Std_TransformerClass transformerClass;
} Std_TransformerError;
# 179 "../../../BSW/_Common/Std_Types.h"
typedef Std_ReturnType (*Std_ExtractProtocolHeaderFieldsType) (
  const uint8* buffer,
  uint32 bufferLength,
  Std_MessageTypeType* messageType,
  Std_MessageResultType* messageResult
);
# 38 "../../../BSW/Csm/Csm_Types.h" 2
# 1 "GenData/Csm_Generated_Types.h" 1
# 39 "../../../BSW/Csm/Csm_Types.h" 2
# 273 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_JobStateType;





typedef uint8 Crypto_ServiceInfoType;
# 355 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_AlgorithmFamilyType;
typedef uint8 Crypto_AlgorithmSecondaryFamilyType;
# 520 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_AlgorithmModeType;
# 592 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_InputOutputRedirectionConfigType;







typedef struct
{
  Crypto_AlgorithmFamilyType family;
  uint32 keyLength;
  Crypto_AlgorithmModeType mode;
  Crypto_AlgorithmSecondaryFamilyType secondaryFamily;
} Crypto_AlgorithmInfoType;



typedef uint8 Crypto_OperationModeType;
# 640 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_ProcessingType;
# 649 "../../../BSW/Csm/Csm_Types.h"
typedef uint8 Crypto_VerifyResultType;




typedef uint8 Crypto_ResultType;




typedef uint8 Csm_ResultType;
# 678 "../../../BSW/Csm/Csm_Types.h"
typedef struct
{
  uint32 resultLength;
  Crypto_ServiceInfoType service;
  Crypto_AlgorithmInfoType algorithm;
} Crypto_PrimitiveInfoType;



typedef struct
{
  uint32 callbackId;
  const Crypto_PrimitiveInfoType * primitiveInfo;
  uint32 secureCounterId;
  uint32 cryIfKeyId;
  Crypto_ProcessingType processingType;
  boolean callbackUpdateNotification;
} Crypto_JobPrimitiveInfoType;


typedef struct
{
  const uint8 * inputPtr;
  uint32 inputLength;
  const uint8 * secondaryInputPtr;
  uint32 secondaryInputLength;
  const uint8 * tertiaryInputPtr;
  uint32 tertiaryInputLength;

  uint8 * outputPtr;
  uint32 * outputLengthPtr;
  uint8 * secondaryOutputPtr;
  uint32 * secondaryOutputLengthPtr;




  Crypto_VerifyResultType * verifyPtr;



  Crypto_OperationModeType mode;


  uint32 cryIfKeyId;
  uint32 targetCryIfKeyId;
} Crypto_JobPrimitiveInputOutputType;

typedef struct
{
  uint32 jobId;
  uint32 jobPriority;
} Crypto_JobInfoType;


typedef struct
{
  Crypto_InputOutputRedirectionConfigType redirectionConfig;
  uint32 inputKeyId;
  uint32 inputKeyElementId;
  uint32 secondaryInputKeyId;
  uint32 secondaryInputKeyElementId;
  uint32 tertiaryInputKeyId;
  uint32 tertiaryInputKeyElementId;
  uint32 outputKeyId;
  uint32 outputKeyElementId;
  uint32 secondaryOutputKeyId;
  uint32 secondaryOutputKeyElementId;
} Crypto_JobRedirectionInfoType;


typedef struct
{

  uint32 jobId;
  Crypto_JobStateType jobState;
  Crypto_JobPrimitiveInputOutputType jobPrimitiveInputOutput;
  const Crypto_JobPrimitiveInfoType * jobPrimitiveInfo;
  const Crypto_JobInfoType * jobInfo;
  uint32 cryptoKeyId;


  Crypto_JobRedirectionInfoType * jobRedirectionInfoRef;

  uint32 targetCryptoKeyId;


  Crypto_JobStateType state;
  Crypto_JobPrimitiveInputOutputType PrimitiveInputOutput;

} Crypto_JobType;
# 217 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 1 "GenData/Crypto_30_LibCv_Cfg.h" 1
# 54 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "../../../BSW/vSecPrim/vSecPrim.h" 1
# 97 "../../../BSW/vSecPrim/vSecPrim.h"
# 1 "../../../BSW/vSecPrim/vSecPrim_types.h" 1
# 37 "../../../BSW/vSecPrim/vSecPrim_types.h"
# 1 "../../../BSW/vSecPrim/ESLib_Helper.h" 1
# 40 "../../../BSW/vSecPrim/ESLib_Helper.h"
# 1 "../../../BSW/vSecPrim/ESLib.h" 1
# 42 "../../../BSW/vSecPrim/ESLib.h"
# 1 "../../../BSW/vSecPrim/ESLib_t.h" 1
# 37 "../../../BSW/vSecPrim/ESLib_t.h"
# 1 "../../../BSW/vSecPrim/actConfig.h" 1
# 40 "../../../BSW/vSecPrim/actConfig.h"
# 1 "GenData/vSecPrim_Cfg.h" 1
# 962 "GenData/vSecPrim_Cfg.h"
typedef boolean vSecPrim_ANSI_X963EnabledOfKeyDerivationType;


typedef boolean vSecPrim_ANSI_X963_SHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_ANSI_X963_SHA512EnabledOfKeyDerivationType;


typedef boolean vSecPrim_AeadChaCha20Poly1305EnabledOfCipherType;


typedef boolean vSecPrim_Aes128EnabledOfCipherType;


typedef boolean vSecPrim_Aes192EnabledOfCipherType;


typedef boolean vSecPrim_Aes256EnabledOfCipherType;


typedef boolean vSecPrim_AesCcmEnabledOfCipherType;


typedef uint8 vSecPrim_AesSpeedUpOfOptimizationType;


typedef uint8 vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralType;


typedef boolean vSecPrim_ChaCha20EnabledOfCipherType;


typedef uint8 vSecPrim_ChaCha20SpeedUpOfOptimizationType;


typedef boolean vSecPrim_ClearWorkspaceEnabledOfGeneralType;


typedef boolean vSecPrim_CmacEnabledOfMacType;


typedef boolean vSecPrim_CtrDrbgEnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_DesEnabledOfCipherType;


typedef uint32 vSecPrim_DrbgReseedIntervalOfGeneralType;


typedef boolean vSecPrim_ECBD_GenericEnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECCEnabledOfKeyGenerationType;


typedef boolean vSecPrim_ECDH_25519EnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECDH_GenericEnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECDSA_25519EnabledOfSignatureType;


typedef boolean vSecPrim_ECDSA_GenericEnabledOfSignatureType;


typedef uint8 vSecPrim_ECPMaxKeySizeOfGeneralType;


typedef boolean vSecPrim_FIPS186EnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_GMacEnabledOfMacType;


typedef boolean vSecPrim_GcmEnabledOfCipherType;


typedef boolean vSecPrim_HKDF_HMAC_SHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_HKDF_HMAC_SHA384EnabledOfKeyDerivationType;


typedef boolean vSecPrim_HKDF_SHA2_256_OnestepEnabledOfKeyDerivationType;


typedef boolean vSecPrim_HMacRMD160EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA1EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA2_256EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA2_384EnabledOfMacType;


typedef boolean vSecPrim_HashDrbgEnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_MD5EnabledOfHashType;


typedef boolean vSecPrim_PKCS5EnabledOfKeyDerivationType;


typedef boolean vSecPrim_PKCS5HMacSHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_Poly1305EnabledOfMacType;


typedef boolean vSecPrim_RC2EnabledOfCipherType;


typedef boolean vSecPrim_RIPEMD160EnabledOfHashType;


typedef uint8 vSecPrim_RSAMaxKeySizeOfGeneralType;


typedef boolean vSecPrim_RSA_OAEP_SHA1EnabledOfCipherType;


typedef boolean vSecPrim_RSA_OAEP_SHA2_256EnabledOfCipherType;


typedef boolean vSecPrim_RSA_PSS_RIPEMD160EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_PSS_SHA1EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_PSS_SHA2_256EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15EnabledOfCipherType;


typedef boolean vSecPrim_RSA_V15_RIPEMD160EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15_SHA1EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15_SHA2_256EnabledOfSignatureType;


typedef boolean vSecPrim_SHA1EnabledOfHashType;


typedef boolean vSecPrim_SHA2_256EnabledOfHashType;


typedef boolean vSecPrim_SHA2_512EnabledOfHashType;


typedef boolean vSecPrim_SHA3EnabledOfHashType;


typedef boolean vSecPrim_SPAKE2pEnabledOfKeyExchangeType;


typedef uint8 vSecPrim_SPAKE2pMaxAADSizeOfGeneralType;


typedef uint8 vSecPrim_SPAKE2pPreambleOKMLengthOfGeneralType;


typedef uint8 vSecPrim_Sha1SpeedUpOfOptimizationType;


typedef uint8 vSecPrim_Sha256SpeedUpOfOptimizationType;


typedef uint8 vSecPrim_Sha512SpeedUpOfOptimizationType;


typedef boolean vSecPrim_SipHashEnabledOfMacType;


typedef uint8 vSecPrim_SizeOfEsltLengthOfGeneralType;


typedef boolean vSecPrim_SupportUInt64OfGeneralType;


typedef boolean vSecPrim_TDesEnabledOfCipherType;


typedef boolean vSecPrim_UseVstdLibOfGeneralType;


typedef uint8 vSecPrim_WatchdogLevelOfGeneralType;
# 1176 "GenData/vSecPrim_Cfg.h"
typedef const vSecPrim_AesSpeedUpOfOptimizationType * vSecPrim_AesSpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralType * vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_ChaCha20SpeedUpOfOptimizationType * vSecPrim_ChaCha20SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_ECPMaxKeySizeOfGeneralType * vSecPrim_ECPMaxKeySizeOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_RSAMaxKeySizeOfGeneralType * vSecPrim_RSAMaxKeySizeOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_Sha1SpeedUpOfOptimizationType * vSecPrim_Sha1SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_Sha256SpeedUpOfOptimizationType * vSecPrim_Sha256SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_Sha512SpeedUpOfOptimizationType * vSecPrim_Sha512SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_SizeOfEsltLengthOfGeneralType * vSecPrim_SizeOfEsltLengthOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_WatchdogLevelOfGeneralType * vSecPrim_WatchdogLevelOfGeneralOfPCConfigPtrType;
# 1215 "GenData/vSecPrim_Cfg.h"
typedef struct svSecPrim_PCConfigType
{
  uint8 vSecPrim_PCConfigNeverUsed;
} vSecPrim_PCConfigType;

typedef vSecPrim_PCConfigType vSecPrim_ConfigType;
# 41 "../../../BSW/vSecPrim/actConfig.h" 2
# 38 "../../../BSW/vSecPrim/ESLib_t.h" 2
# 1 "../../../BSW/vSecPrim/actITypes.h" 1
# 40 "../../../BSW/vSecPrim/actITypes.h"
# 1 "../../../BSW/vSecPrim/actPlatformTypes.h" 1
# 77 "../../../BSW/vSecPrim/actPlatformTypes.h"
typedef uint8 actPlatformUint8;
typedef uint16 actPlatformUint16;
typedef uint32 actPlatformUint32;
# 90 "../../../BSW/vSecPrim/actPlatformTypes.h"
typedef unsigned long long actPlatformUint64;
# 41 "../../../BSW/vSecPrim/actITypes.h" 2







typedef actPlatformUint8 actU8;
typedef actPlatformUint16 actU16;
typedef actPlatformUint32 actU32;

typedef actPlatformUint64 actU64;
# 63 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actLengthType;
typedef actLengthType actBNLENGTH;
typedef unsigned char actBoolean;

typedef actLengthType actDRBGReseedCounterType;


typedef const actU8 * actPKey;


typedef const actU8 * actPROMU8;
# 132 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actBNDIGIT;
typedef actU64 actBNDDIGIT;
# 147 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actRETURNCODE;
# 578 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
  actU32 e_key[64];
  actLengthType key_dword_len;
  actLengthType buffer_used;
  actU8 prev_block[(16u)];
  actU8 buffer[(16u)];
  actU8 mode;
} actAESSTRUCT;


typedef actAESSTRUCT actCMACAESSTRUCT;


typedef struct
{
  actU32 H[5];
  actU32 low_count, hi_count;
  actLengthType buffer_used;
  actU8 buffer[(64u)];
} actSHASTRUCT;


typedef struct
{
  actU32 H[8];
  actU32 low_count, hi_count;
  actLengthType buffer_used;
  actU16 result_length;
  actU8 buffer[(64u)];
} actSHA224STRUCT, actSHA256STRUCT;


typedef struct
{

  actU64 H[8];
  actU64 count_L, count_H;




  actLengthType buffer_used;
  actU16 result_length;
  actU8 buffer[(128u)];
} actSHA512_224STRUCT, actSHA512_256STRUCT, actSHA384STRUCT, actSHA512STRUCT;



typedef struct
{
  actU64 state[(1600u)/64u];
  actLengthType strength;
  actLengthType rUsed;
  actLengthType dUsed;
  actLengthType rate;
  actU8 digest[(512u / 8u)];
  actU8 data[(64u) >> 3];
  actU8 pad1;
  actU8 phase;
} actKECCAKcSTRUCT;
# 655 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
   actU32 H[5];
   actU32 low_count, hi_count;
   actLengthType buffer_used;
   actU8 buffer[(64u)];
} actRMD160STRUCT;


typedef struct
{
  actSHASTRUCT sha;
  actU8 key_buf[(64u)];
  actLengthType key_length;
} actHASHMACSTRUCT;


typedef struct
{
  actSHA256STRUCT sha256;
  actU8 key_buf[(64u)];
  actLengthType key_length;
} actHASHMACSHA256STRUCT;


typedef struct
{
   actSHA384STRUCT sha384;
   actU8 key_buf[(128u)];
   actLengthType key_length;
} actHASHMACSHA384STRUCT;


typedef struct
{
   actRMD160STRUCT rmd160;
   actU8 key_buf[(64u)];
   actLengthType key_length;
} actHASHMACRMD160STRUCT;

typedef union
{



  actHASHMACSTRUCT hmac_sha1;
}actHASHMACUNION_KDF2;


typedef struct
{
  actU32 iteration_count;
  actHASHMACUNION_KDF2 hmac;

  actU8 U_buf[(20u)];
  actU8 F_buf[(20u)];
} actKDF2STRUCT;


typedef struct
{
  actSHASTRUCT actwsHash;
  actU8 hashBuf[(20u)];
} actKDFX963STRUCT;


typedef struct
{
  actSHA256STRUCT actwsHash;
  actU8 hashBuf[(32u)];
} actKDFX963SHA256;


typedef struct
{
  actSHA512STRUCT actwsHash;
  actU8 hashBuf[(64u)];
} actKDFX963SHA512;


typedef union
{



  actHASHMACSHA256STRUCT hmac_sha256;
}actHASHMACUNION_HKDF;


typedef struct
{
  actHASHMACUNION_HKDF actwsHmac;
  union
  {





    actU8 tmpKey[(32u)];
    actU8 blockT[(32u)];
  }tmpBlock;
  actU8 keyDerivationKey[(32u)];
  actU8 methodID;
}actHKDFSTRUCT;


typedef struct
{
  actSHA256STRUCT actwsSha;
  actU8 blockT[(32u)];
  actU8 hashID;
}actHKDFHASHSTRUCT;


typedef struct
{
  actLengthType bytes_remain;
  actU8 X_KEY[(20u)];
  actSHASTRUCT sha1;
} actFIPS186STRUCT;


typedef struct
{
  actU8 result[((16u))];
  actU8 input[((16u))];
} actCTRDRBGTmpBufferStruct;

typedef struct
{
  actAESSTRUCT wsAES;
  union
  {
    actU8 additionalInputPrepared[(((32u)) + ((16u)))];
    actU8 seedData[(((32u)) + ((16u)))];
  } tmpBuffer;
  union
  {
    actU8 blockUpdateTmpBuffer[(((32u)) + ((16u)))];
    actCTRDRBGTmpBufferStruct BCCTmpBuffer;
  } BCCUpdateTmpBuffer;
  actU8 DFencryptBuffer[(((32u)) + ((16u)))];
  actU8 DFIV[((16u))];
  union
  {
    actU8 blockOfS[((16u))];
    actU8 tempAesBlock[((16u))];
  } tempBlocks;
  actU8 key[((32u))];
  actU8 variable[((16u))];
  actDRBGReseedCounterType reseedCount;
  actU8 mode;
  actU8 seedState;
} actCTRDRBGSTRUCT;

typedef struct
{
  actSHA512STRUCT wsSHA512;
  actU8 DFtmp[2u * (64u)];
  actU8 hashdata[(128u)];
  actU8 tmpdigest[(64u)];
  actU8 constant[(111u)];
  actU8 variable[(111u)];
  actU32 reseedCount;
  actU8 mode;
  actU8 seedState;
} actHASHDRBGSTRUCT;



typedef struct
{
  actBNDIGIT x[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT y[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT z[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT t[(256u /8u /sizeof (actBNDIGIT))];
} actPoint;
# 843 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
  actBNDIGIT * m;
  actLengthType m_length;
  actLengthType m_byte_length;
  actBNDIGIT * RR;
  actBNDIGIT m_bar;






} actBNRING;

typedef struct
{
  actBNRING p_field;
  actBNRING n_field;
  const actU8 * a_R;
  const actU8 * b_R;
  const actU8 * G_R;
  boolean a_equals_p_minus_3;
  actBNDIGIT * t[(((((1u << (((1u))-1u))+2u))>(4u))? (((1u << (((1u))-1u))+2u)):(4u))];
  actLengthType groups;
  const actU8 * prec_first;
} actECCURVE;


typedef struct
{
  actBNDIGIT privKey[(256u/((32u)))];
  actBNDIGIT ephKey[(256u/((32u)))];
} actECPPrivateKeys;

typedef struct
{
  actBNDIGIT u1[(256u/((32u))) + 1u];
  actBNDIGIT u2[(256u/((32u))) + 1u];
} actECPTmpVarVerify;

typedef struct
{
  actBNDIGIT xcoord[(256u/((32u)))];
  actBNDIGIT ycoord[(256u/((32u)))];
} actECPaffinePointBuffer;

typedef struct
{
  actBNDIGIT xcoord[(256u/((32u)))];
  actBNDIGIT ycoord[(256u/((32u)))];
  actBNDIGIT zcoord[(256u/((32u)))];
} actECPprojectivePointBuffer;


typedef struct
{
  actECCURVE Curve;
  actBNDIGIT p_field_modulus[(256u/((32u)))];
  actBNDIGIT p_field_RR[(256u/((32u)))];
  actBNDIGIT n_field_modulus[(256u/((32u)))];
  actBNDIGIT n_field_RR[(256u/((32u)))];
  actBNDIGIT Curve_tmp0[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp1[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp2[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp3[(256u/((32u))) + 1u];
}actECPBasicStruct;




typedef struct
{

  actECPBasicStruct baseData;

  union
  {
    actECPTmpVarVerify u12;
    actECPPrivateKeys privKeys;
  } dataPair;

  union
  {
    actBNDIGIT hashed_message[(256u/((32u)))];
    actBNDIGIT secret_x[(256u/((32u)))];
  }msg;

  actBNDIGIT signature_r[(256u/((32u)))];
  actBNDIGIT signature_s[(256u/((32u)))];
  actBNDIGIT public_key_x[(256u/((32u)))];
  actBNDIGIT public_key_y[(256u/((32u)))];

  union
  {
    actECPprojectivePointBuffer kG;
    actECPprojectivePointBuffer QG;
  } multG;

  union
  {
    actECPaffinePointBuffer precomputedPoint;
    actECPaffinePointBuffer basePoint;
  } curvePoint;

  actECPprojectivePointBuffer Q;

} actECPSTRUCT;


typedef struct
{

  actECPBasicStruct baseData;


  actECPprojectivePointBuffer M;
  actECPprojectivePointBuffer N;
  actECPprojectivePointBuffer L;
  actECPprojectivePointBuffer pA;
  actECPprojectivePointBuffer pB;
  actECPprojectivePointBuffer Z;
  actECPprojectivePointBuffer V;


  actECPprojectivePointBuffer kG;
  actECPprojectivePointBuffer tmp1;

  union
  {
    actECPprojectivePointBuffer tmp2;
    actU8 hashTT[(32u)];
  } tmpVariables;

  actECPaffinePointBuffer basePoint;


  actBNDIGIT w0[(256u/((32u)))];
  actBNDIGIT w1[(256u/((32u)))];

  actBNDIGIT randomNumber[(256u/((32u)))];

  actLengthType aadLength;
  actU32 ciphersuite;


  actU8 addInHKDF[16u + 16u];
  actU8 pointToByteString[(32u)];
  actU8 macKeys[2u * (16u)];

  actU8 algoState;
  actU8 setAdditionalInformationWasCalled;
  actU8 isPartyA;
} actSPAKE2PSTRUCT;


typedef struct
{

  actECPBasicStruct baseData;


  actECPprojectivePointBuffer L;
  actECPaffinePointBuffer basePoint;


  actBNDIGIT digitsW0[(((((64u) + 1u)/2u) + ((((32u)))>>3) - 1u)/((((32u)))>>3)) + 1u];
  actBNDIGIT digitsW1[(((((64u) + 1u)/2u) + ((((32u)))>>3) - 1u)/((((32u)))>>3)) + 1u];
  actBNDIGIT result[(256u/((32u))) + 1u];
} actSPAKE2PPreambleStruct;


typedef struct
{
  actU32 nECUs;
  actU32 ecuID;
} actECBD;

typedef struct
{
  actECBD bd;

  actECPBasicStruct baseData;

  actBNDIGIT ai[(256u/((32u)))];
  actBNDIGIT Zi_x[(256u/((32u)))];
  actBNDIGIT Zi_y[(256u/((32u)))];
  actBNDIGIT Zi_z[(256u/((32u)))];
  actBNDIGIT Xi_x[(256u/((32u)))];
  actBNDIGIT Xi_y[(256u/((32u)))];
  actBNDIGIT Xi_z[(256u/((32u)))];
  actBNDIGIT TP_x[(256u/((32u)))];
  actBNDIGIT TP_y[(256u/((32u)))];
  actBNDIGIT TP_z[(256u/((32u)))];
} actECBDstruct;


typedef struct
{
  actBNDIGIT tempA[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempB[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempC[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempD[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempE[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempF[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempG[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempH[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT temp1[(512u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempQ[(256u /8u /sizeof (actBNDIGIT))];
} actTempType;


typedef struct
{
  actBNDIGIT prime[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT order[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT orderB[(256u /8u /sizeof (actBNDIGIT)) + 1u];

  actBNRING pRing;
  actBNRING qRing;
  actTempType auxVar;
} actCurve25519ws;


typedef struct
{
  actU32 instance;
  union
  {
    actSHA512STRUCT sha512;
    actPoint point_A;
    actPoint point_rB;
    actPoint point_sB;
  } shaWs;
  union
  {
    actU8 hashValue[(64u)];
    actBNDIGIT bnDigit_s;
    actBNDIGIT bnDigit_k;
  } hashBuf;
  actU8 privateKey[(64u)];
  union
  {
    actU8 publicKey[(32u)];
    actBNDIGIT bnDigit_a;
  } pubKeyBuf;
  const actU8 * message;
  actU32 msgLen;
  const actU8 * context;
  actU32 ctxLen;
  actCurve25519ws coreWS;
} actEd25519STRUCT;


typedef struct
{
  actU8 privateKey[(32u)];
  union
  {
    actU8 uCoord[(32u)];
    actBNDIGIT bnDigit_x_1[(256u /8u /sizeof (actBNDIGIT))];
  } basePointBuf;
  actCurve25519ws coreWS;
} actX25519STRUCT;


typedef actX25519STRUCT actX25519Struct;
typedef actEd25519STRUCT actEd25519Struct;


typedef struct
{

  actU64 v0;
  actU64 v1;
  actU64 v2;
  actU64 v3;

  actU8 buffer[(8u)];
  actU32 length;
  actU8 buffer_used;
} actSipHashSTRUCT;


typedef struct
{
  actLengthType buffer_used;
  actU8 buffer[(16u)];
  actU32 H[((16u)/(4u))];
  actU8 Y[(16u)];



  actU32 M[16][4];

} actGHASHSTRUCT;


typedef struct
{
  actAESSTRUCT aes;
  actGHASHSTRUCT ghash;
  actU8 J0[16u];
  actU8 J[16u];
  actU8 encJ[16u];
  actLengthType buffer_used;
  actU8 buffer[16u];
  uint8 state;
  actU32 count[4];
} actGCMSTRUCT;


typedef struct
{
  actAESSTRUCT wsAES;
  actLengthType aadLen;
  actLengthType msgLen;
  actLengthType remainingLen;
  actU8 AESCounter[(16u)];
  actU8 dataBlockB[(16u)];
  actU8 dataBlockIn[(16u)];
  actU8 dataBlockOut[(16u)];
  actU8 MAC[(16u)];
  actU8 nonce[(16u) - 1u];
  actU8 authFieldSize;
  actU8 lengthFieldSize;
  actU8 updateState;
} actAESCCMSTRUCT;


typedef struct
{
  actBNDIGIT cipher[(2048u/((32u)))];
  actBNDIGIT message[(2048u/((32u))) + 1u];
} actRSACipherAndMSgStruct;

typedef struct
{
  actBNRING wsRSARing;

  union
  {
    actBNDIGIT tmpInit[(2u*(2048u/((32u)))) + 2u];
    actRSACipherAndMSgStruct cipherAndMsg;
  } tmp;

  actBNDIGIT RRBuffer[(2048u/((32u))) + 1u];
  actBNDIGIT exponent[(2048u/((32u)))];
  actBNDIGIT modulusBuffer[(2048u/((32u)))];
  actBNDIGIT tmpExp[(2048u/((32u))) + 1u];

}actRSAPRIMSTRUCT;
# 1265 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
    actBNDIGIT primeP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeDP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeDQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT qInv[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT one[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
} actCRTINITSTRUCT;

typedef struct
{
  actBNDIGIT origCipherBeforeReduction[(2048u/((32u))) + 1u];
  actU8 reducedCipherInBytes[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) * ((((32u)))>>3)];
  actBNDIGIT reducedCipherInDigits[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTCIPHERSTRUCT;

typedef struct
{
  actBNDIGIT m1[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT m2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTMSGSTRUCT;

typedef struct
{
  actBNDIGIT m2Copy[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT m2ModP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT m1m2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInv[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInvM1M2R[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT qInvM1M2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTSTEP3STRUCT;

typedef struct
{
  actBNDIGIT m2Padded[(2048u/((32u)))];
  actBNDIGIT primeQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInvM1M2q[2u* ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT msg[(2048u/((32u)))];
} actCRTSTEP4STRUCT;

typedef struct
{
  union
  {
    actRSAPRIMSTRUCT wsRSAPrim;
    actCRTINITSTRUCT wsCRTInit;
    actCRTSTEP4STRUCT wsCRTSTEP4;
  } wsUnion1;

  union
  {
    actCRTCIPHERSTRUCT wsCRTCipherOperations;
    actCRTSTEP3STRUCT wsCRTStep3;
  } wsUnion2;

  union
  {
    actCRTMSGSTRUCT messages;
    actBNDIGIT fullModulus[2u * ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  } keySizeBuffer;

  actLengthType p_bytes;
  actLengthType q_bytes;
  actLengthType dp_bytes;
  actLengthType dq_bytes;
  actLengthType q_inv_bytes;
  actLengthType n_bytes;


  const actU8 * p;
  const actU8 * q;
  const actU8 * dp;
  const actU8 * dq;
  const actU8 * q_inv;

} actRSACRTSTRUCT;
# 39 "../../../BSW/vSecPrim/ESLib_t.h" 2
# 63 "../../../BSW/vSecPrim/ESLib_t.h"
typedef actPlatformUint8 eslt_Size8;
typedef actPlatformUint16 eslt_Size16;
typedef actPlatformUint32 eslt_Size32;

typedef actPlatformUint64 eslt_Size64;


typedef eslt_Size8 eslt_Byte;

typedef eslt_Size32 eslt_Length;



typedef eslt_Size8 eslt_Mode;
typedef eslt_Size16 eslt_WSStatus;
typedef eslt_Size32 eslt_WSCheckSum;
# 204 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  const char * parameter;
  eslt_Size16 value;
}eslt_Version;





typedef eslt_Mode eslt_PaddingMode;




typedef eslt_Mode eslt_HashAlgorithm;
# 238 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Mode eslt_BlockMode;






typedef eslt_Mode eslt_DRBGMode;






typedef eslt_Size32 eslt_DRBGReseedCounterType;


typedef eslt_Byte eslt_DRBGSeedStatusType;






typedef eslt_Size32 eslt_SPAKE2PMode;
# 316 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_HKDFMode;
# 449 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomain;
# 486 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomainExt;
# 512 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccSpeedUpExt;
# 521 "../../../BSW/vSecPrim/ESLib_t.h"
typedef void ( * esl_WatchdogFuncPtr)(void);


typedef struct
{
  eslt_Length size;
  eslt_WSStatus status;
  esl_WatchdogFuncPtr watchdog;
  eslt_WSCheckSum checkSum;
}eslt_WorkSpaceHeader;
# 1139 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  eslt_WorkSpaceHeader header;
  actAESSTRUCT wsAES;
} eslt_WorkSpaceAES;

typedef eslt_WorkSpaceAES eslt_WorkSpaceAES128;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES128Block;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES192;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES192Block;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES256;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES256Block;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsDES[((200u) + (2u * 8u) + 8u)];
} eslt_WorkSpaceDES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsDESBlock[(200u)];
} eslt_WorkSpaceDESBlock;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsTDES[((500u) + (2u * 8u) + 8u)];
} eslt_WorkSpaceTDES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsTDESBlock[(500u)];
} eslt_WorkSpaceTDESBlock;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsRC2[((200u) + (3u * 8u) + 8u)];
} eslt_WorkSpaceRC2;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsRC2Block[(200u)];
} eslt_WorkSpaceRC2Block;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actGCMSTRUCT wsGCM;
} eslt_WorkSpaceGCM;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actGCMSTRUCT wsGMAC;
} eslt_WorkSpaceGMAC;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHASTRUCT wsSHA1;
} eslt_WorkSpaceSHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA224STRUCT wsSHA224;
} eslt_WorkSpaceSHA224;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA256STRUCT wsSHA256;
} eslt_WorkSpaceSHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512_224STRUCT wsSHA512_224;
} eslt_WorkSpaceSHA512_224;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512_256STRUCT wsSHA512_256;
} eslt_WorkSpaceSHA512_256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA384STRUCT wsSHA384;
} eslt_WorkSpaceSHA384;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512STRUCT wsSHA512;
} eslt_WorkSpaceSHA512;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKECCAKcSTRUCT wsSHA3;
} eslt_WorkSpaceSHA3;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKECCAKcSTRUCT wsSHAKE;
} eslt_WorkSpaceSHAKE;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRMD160STRUCT wsRIPEMD160;
} eslt_WorkSpaceRIPEMD160;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsMD5[(((((64u + 16u + 12u) +(((4u)) - 1u))/((4u)))*((4u))))];
} eslt_WorkSpaceMD5;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSTRUCT wsHMACSHA1;
} eslt_WorkSpaceHMACSHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSHA256STRUCT wsHMACSHA256;
} eslt_WorkSpaceHMACSHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSHA384STRUCT wsHMACSHA384;
} eslt_WorkSpaceHMACSHA384;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACRMD160STRUCT wsHMACRIPEMD160;
} eslt_WorkSpaceHMACRIPEMD160;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actCMACAESSTRUCT wsCMACAESbuffer;
  eslt_Byte * wsCMACAES;
} eslt_WorkSpaceCMACAES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSipHashSTRUCT wsSipHash;
} eslt_WorkSpaceSipHash;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actFIPS186STRUCT wsFIPS186buffer;
  eslt_Byte * wsFIPS186;
} eslt_WorkSpaceFIPS186;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actCTRDRBGSTRUCT wsDRBG;
} eslt_WorkSpaceCTRDRBG;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHDRBGSTRUCT wsDRBG;
} eslt_WorkSpaceHASHDRBG;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDF2STRUCT wsKDF2HMACSHA;
} eslt_WorkSpaceKDF2;




typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963STRUCT wsKDFX963SHA1;
} eslt_WorkSpaceKDFX963SHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963SHA256 wsKDFX963SHA256;
} eslt_WorkSpaceKDFX963SHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963SHA512 wsKDFX963SHA512;
} eslt_WorkSpaceKDFX963SHA512;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHKDFHASHSTRUCT wsHKDF;
}eslt_WorkSpaceHKDFHASH;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHKDFSTRUCT wsHKDF;
}eslt_WorkSpaceHKDFHMAC;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actECPSTRUCT wsEcP;
} eslt_WorkSpaceEcP;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSPAKE2PSTRUCT workSpaceSpake;
  actCMACAESSTRUCT workSpaceCMAC;
  actHKDFSTRUCT workSpaceHKDF;
  actSHA256STRUCT workSpaceSHA;
} eslt_WorkSpaceSPAKE2P;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSPAKE2PPreambleStruct wsSPAKEPreamble;
} eslt_WorkSpaceSPAKE2PPreamble;




typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAenc_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAdec_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSACRTSTRUCT CRTStruct;
} eslt_WorkSpaceRSACRTdec_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAsig_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSACRTSTRUCT CRTStruct;
} eslt_WorkSpaceRSACRTsig_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAver_prim;

typedef union
{

  eslt_WorkSpaceSHA256 SHA256ws;




  eslt_WorkSpaceSHA1 SHA1ws;
} eslt_WorkSpaceUnionHashFunctions_RSA;
# 1444 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  eslt_Byte encodedMessage[((2048u) >> 3)];
  eslt_Byte dataBlock[((2048u) >> 3) - 20u - 1u];
  eslt_Byte tempVariables[32u];
}eslt_EMBuffer;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer * encodedMessageBufferPtr;
  eslt_WorkSpaceUnionHashFunctions_RSA * wsHashUnionPtr;
  eslt_Length * modulusInformationPtr;
} eslt_WorkSpace;




typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceRSAenc_prim wsRSAEncPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAenc;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceRSAdec_prim wsRSADecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAdec;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsEncoding[((2048u) >> 3)];
  eslt_WorkSpaceRSACRTdec_prim wsRSACRTDecPrim;
  eslt_Length primeSizesInformation;
} eslt_WorkSpaceRSACRTdec;




typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAsig_prim wsRSASigPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsEncoding[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSACRTsig_prim wsRSACRTSigPrim;
  eslt_Length primeSizesInformation;
} eslt_WorkSpaceRSACRTsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAver_prim wsRSAVerPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAver;





typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAenc_prim wsRSAEncPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAOAEPenc;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAdec_prim wsRSADecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAOAEPdec;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSACRTdec_prim wsRSACRTDecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSACRTOAEPdec;





typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceRSAsig_prim wsRSASigPrim;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAPSSsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceRSAver_prim wsRSAVerPrim;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAPSSver;





typedef struct
{
  eslt_WorkSpaceHeader header;
  actEd25519STRUCT wsEd25519buffer;
  eslt_Byte * wsEd25519;
} eslt_WorkSpaceEd25519;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actX25519STRUCT wsX25519buffer;
  eslt_Byte * wsX25519;
} eslt_WorkSpaceX25519;


typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsChaCha20 [(140u)];
} eslt_WorkSpaceChaCha20;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsPoly1305 [(180u)];
} eslt_WorkSpacePoly1305;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsAEADChaChaPoly [(390u)];
} eslt_WorkSpaceChaChaPoly;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actAESCCMSTRUCT wsAESCCM;
} eslt_WorkSpaceAESCCM;


typedef struct
{
  eslt_WorkSpaceHeader header;
  actECBDstruct wsECBD;
} eslt_WorkSpaceECBD;
# 43 "../../../BSW/vSecPrim/ESLib.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_ERC.h" 1
# 243 "../../../BSW/vSecPrim/ESLib_ERC.h"
typedef actU16 eslt_ErrorCode;
# 44 "../../../BSW/vSecPrim/ESLib.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_RNG.h" 1
# 51 "../../../BSW/vSecPrim/ESLib_RNG.h"
  typedef struct
  {
    eslt_WorkSpaceHeader header;
    eslt_Byte wsRNG[(sizeof(actFIPS186STRUCT))];
  } eslt_WorkSpaceRNG;




# 1 "GenData/vSecPrim_MemMap.h" 1
# 61 "../../../BSW/vSecPrim/ESLib_RNG.h" 2
# 88 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_initRNG(
  eslt_WorkSpaceRNG * workSpace,
  const eslt_Length entropyLength,
  const eslt_Byte * entropy,
  eslt_Byte * savedState);
# 112 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_getBytesRNG(
  const eslt_Length targetLength,
  eslt_Byte * target);
# 133 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_stirRNG(
  const eslt_Length inputLength,
  eslt_Byte * input);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 139 "../../../BSW/vSecPrim/ESLib_RNG.h" 2
# 45 "../../../BSW/vSecPrim/ESLib.h" 2
# 70 "../../../BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 71 "../../../BSW/vSecPrim/ESLib.h" 2
# 91 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initESCryptoLib(void);
# 113 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initWorkSpaceHeader(
  eslt_WorkSpaceHeader * workSpaceHeader,
  const eslt_Length workSpaceSize,
  esl_WatchdogFuncPtr watchdog);
# 224 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_initCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_DRBGMode modeDRBG);
# 273 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_seedCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  const eslt_Byte * entropyPtr,
  eslt_Length entropyLength,
  const eslt_Byte * noncePtr,
  eslt_Length nonceLength,
  const eslt_Byte * personalizationStringPtr,
  eslt_Length personalizationStringLength,
  const eslt_Byte * additionalInputPtr,
  eslt_Length additionalInputLength);
# 315 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getBytesCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Length requestedLength,
  eslt_Byte * outputBuffer,
  const eslt_Byte * additionalInputPtr,
  eslt_Length additionalInputLength);
# 352 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getStateCTRDRBG(
  const eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Byte * internalStateBuffer,
  eslt_Length * internalStateBufferLength,
  eslt_DRBGReseedCounterType * reseedCounter,
  eslt_DRBGSeedStatusType * seedStatus,
  eslt_DRBGMode * modeDRBG);
# 385 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_restoreStateCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  const eslt_Byte * internalStateBuffer,
  eslt_Length internalStateBufferLength,
  eslt_DRBGReseedCounterType reseedCounter,
  eslt_DRBGSeedStatusType seedStatus,
  eslt_DRBGMode modeDRBG);
# 3060 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA224(
  eslt_WorkSpaceSHA224 * workSpace);
# 3083 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  const eslt_Length inputSize,
  const eslt_Byte * input);
# 3108 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  eslt_Byte * messageDigest);
# 3132 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA256(eslt_WorkSpaceSHA256 * workSpace);
# 3154 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA256(
eslt_WorkSpaceSHA256 * workSpace,
const eslt_Length inputSize, const eslt_Byte * input);
# 3178 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA256(
eslt_WorkSpaceSHA256 * workSpace, eslt_Byte * messageDigest);
# 6116 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSA_prim(
   eslt_WorkSpaceRSAsig_prim * workSpace,
     eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
     eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 6145 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_signRSA_prim(
  eslt_WorkSpaceRSAsig_prim * workSpace,
  eslt_Length messageSize,
  const eslt_Byte * message,
  eslt_Length * signatureSize,
  eslt_Byte * signature);
# 6298 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 6331 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length signatureSize,
  const eslt_Byte * signature,
  eslt_Length * messageSize,
  eslt_Byte * message);
# 8199 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 8227 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8253 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 8294 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize, const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8324 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8355 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8384 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8411 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8436 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8462 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length publicKeyExponentSize, const eslt_Byte * publicKeyExponent);
# 8489 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8515 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 8552 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8578 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8602 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8627 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8651 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize, eslt_Length signatureSize,
   const eslt_Byte * signature);
# 8674 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8696 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8718 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8746 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA1_PSS(
   eslt_WorkSpaceSHA1 * wsHash,
   eslt_Length saltSize, const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 9357 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSsig * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length privateKeyExponentSize,
  const eslt_Byte * privateKeyExponent);
# 9386 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9413 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 9454 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9485 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9516 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9546 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
  const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9573 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9598 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9624 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSver * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 9653 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9680 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 9718 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize,
  const eslt_Byte * signature);
# 9746 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9772 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9799 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9825 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9850 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9873 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9897 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9927 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA256_PSS(
   eslt_WorkSpaceSHA256 * wsHash,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 10003 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA1_PSS(
  eslt_WorkSpaceSHA1 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10041 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA256_PSS(
  eslt_WorkSpaceSHA256 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10988 "../../../BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 10989 "../../../BSW/vSecPrim/ESLib.h" 2
# 41 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_types.h" 1
# 42 "../../../BSW/vSecPrim/ESLib_Helper.h" 2

# 1 "../../../BSW/vSecPrim/actUtilities.h" 1
# 39 "../../../BSW/vSecPrim/actUtilities.h"
# 1 "../../../BSW/VStdLib/vstdlib.h" 1
# 58 "../../../BSW/VStdLib/vstdlib.h"
# 1 "Include/VStdLib_Cfg.h" 1
# 59 "../../../BSW/VStdLib/vstdlib.h" 2
# 129 "../../../BSW/VStdLib/vstdlib.h"
typedef uint32_least VStdLib_CntType;
# 1053 "../../../BSW/VStdLib/vstdlib.h"
# 1 "Include/MemMap.h" 1
# 7778 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1054 "../../../BSW/VStdLib/vstdlib.h" 2
# 1073 "../../../BSW/VStdLib/vstdlib.h"
void VStdLib_MemSet(void * pDst,
                                        uint8 nPattern,
                                        VStdLib_CntType nCnt);
# 1093 "../../../BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy(void * pDst,
                                        const void * pSrc,
                                        VStdLib_CntType nCnt);
# 1113 "../../../BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy16(uint16 * pDst,
                                          const uint16 * pSrc,
                                          VStdLib_CntType nCnt);
# 1133 "../../../BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy32(uint32 * pDst,
                                          const uint32 * pSrc,
                                          VStdLib_CntType nCnt);
# 1157 "../../../BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy_s(void * pDst,
                                          VStdLib_CntType nDstSize,
                                          const void * pSrc,
                                          VStdLib_CntType nCnt);
# 1184 "../../../BSW/VStdLib/vstdlib.h"
sint8 VStdLib_MemCmp(const void * pBuf1,
                                         const void * pBuf2,
                                         VStdLib_CntType nCnt);
# 1225 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne8(uint8 value);
# 1241 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero8(uint8 value);
# 1257 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne8(uint8 value);
# 1273 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero8(uint8 value);
# 1289 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes8(uint8 value);
# 1305 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros8(uint8 value);
# 1321 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes8(uint8 value);
# 1337 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros8(uint8 value);
# 1357 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne16(uint16 value);
# 1373 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero16(uint16 value);
# 1389 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne16(uint16 value);
# 1405 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero16(uint16 value);
# 1421 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes16(uint16 value);
# 1437 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros16(uint16 value);
# 1453 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes16(uint16 value);
# 1469 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros16(uint16 value);
# 1489 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne32(uint32 value);
# 1505 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero32(uint32 value);
# 1521 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne32(uint32 value);
# 1537 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero32(uint32 value);
# 1553 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes32(uint32 value);
# 1569 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros32(uint32 value);
# 1585 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes32(uint32 value);
# 1601 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros32(uint32 value);
# 1622 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne64(uint64 value);
# 1639 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero64(uint64 value);
# 1656 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne64(uint64 value);
# 1673 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero64(uint64 value);
# 1690 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes64(uint64 value);
# 1707 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros64(uint64 value);
# 1724 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes64(uint64 value);
# 1741 "../../../BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros64(uint64 value);
# 1760 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayBigEndian(uint16 src,
                                                                                         uint8 * dst);
# 1776 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayLittleEndian(uint16 src,
                                                                                            uint8 * dst);
# 1793 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16BigEndian(const uint8 * src,
                                                                                         uint16 * dst);
# 1810 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16LittleEndian(const uint8 * src,
                                                                                            uint16 * dst);
# 1830 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayBigEndian(uint32 src,
                                                                                         uint8 * dst);
# 1846 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayLittleEndian(uint32 src,
                                                                                            uint8 * dst);
# 1863 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32BigEndian(const uint8 * src,
                                                                                         uint32 * dst);
# 1880 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32LittleEndian(const uint8 * src,
                                                                                            uint32 * dst);
# 1901 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayBigEndian(uint64 src,
                                                                                         uint8 * dst);
# 1918 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayLittleEndian(uint64 src,
                                                                                            uint8 * dst);
# 1936 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64BigEndian(const uint8 * src,
                                                                                         uint64 * dst);
# 1954 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64LittleEndian(const uint8 * src,
                                                                                            uint64 * dst);
# 1974 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint16 VStdLib_SwapEndianUint16(uint16 value);
# 1993 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint32 VStdLib_SwapEndianUint32(uint32 value);
# 2013 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint64 VStdLib_SwapEndianUint64(uint64 value);




# 1 "Include/MemMap.h" 1
# 7785 "Include/MemMap.h"
#pragma section
# 2019 "../../../BSW/VStdLib/vstdlib.h" 2





# 1 "Include/MemMap.h" 1
# 7778 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 2025 "../../../BSW/VStdLib/vstdlib.h" 2
# 2037 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayBigEndian(
  uint16 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2053 "../../../BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF00u) >> 8u);
    dst[1u] = (uint8)( src & 0x00FFu);

  }
# 2072 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2085 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayLittleEndian(
  uint16 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2101 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 2u);




  }
# 2120 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2133 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16BigEndian(
  const uint8 * src,
  uint16 * dst)
{

  uint8 errorId = (0x00u);
# 2149 "../../../BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint16)src[0u]) << 8u) |
               ((uint16)src[1u])
             );

  }
# 2169 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2182 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16LittleEndian(
  const uint8 * src,
  uint16 * dst)
{

  uint8 errorId = (0x00u);
# 2198 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 2u);





  }
# 2218 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2235 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayBigEndian(
  uint32 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2251 "../../../BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF000000u) >> 24u);
    dst[1u] = (uint8)((src & 0x00FF0000u) >> 16u);
    dst[2u] = (uint8)((src & 0x0000FF00u) >> 8u);
    dst[3u] = (uint8)( src & 0x000000FFu);

  }
# 2272 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2285 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayLittleEndian(
  uint32 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2301 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 4u);






  }
# 2322 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2335 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32BigEndian(
  const uint8 * src,
  uint32 * dst)
{

  uint8 errorId = (0x00u);
# 2351 "../../../BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint32)src[0u]) << 24u) |
              (((uint32)src[1u]) << 16u) |
              (((uint32)src[2u]) << 8u) |
               ((uint32)src[3u])
             );

  }
# 2373 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2386 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32LittleEndian(
  const uint8 * src,
  uint32 * dst)
{

  uint8 errorId = (0x00u);
# 2402 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 4u);







  }
# 2424 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2441 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayBigEndian(
  uint64 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2457 "../../../BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF00000000000000u) >> 56u);
    dst[1u] = (uint8)((src & 0x00FF000000000000u) >> 48u);
    dst[2u] = (uint8)((src & 0x0000FF0000000000u) >> 40u);
    dst[3u] = (uint8)((src & 0x000000FF00000000u) >> 32u);
    dst[4u] = (uint8)((src & 0x00000000FF000000u) >> 24u);
    dst[5u] = (uint8)((src & 0x0000000000FF0000u) >> 16u);
    dst[6u] = (uint8)((src & 0x000000000000FF00u) >> 8u);
    dst[7u] = (uint8)( src & 0x00000000000000FFu);

  }
# 2482 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2495 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayLittleEndian(
  uint64 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2511 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 8u);
# 2527 "../../../BSW/VStdLib/vstdlib.h"
  }
# 2536 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2549 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64BigEndian(
  const uint8 * src,
  uint64 * dst)
{

  uint8 errorId = (0x00u);
# 2565 "../../../BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint64)src[0u]) << 56u) |
              (((uint64)src[1u]) << 48u) |
              (((uint64)src[2u]) << 40u) |
              (((uint64)src[3u]) << 32u) |
              (((uint64)src[4u]) << 24u) |
              (((uint64)src[5u]) << 16u) |
              (((uint64)src[6u]) << 8u) |
               ((uint64)src[7u])
             );

  }
# 2591 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2604 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64LittleEndian(
  const uint8 * src,
  uint64 * dst)
{

  uint8 errorId = (0x00u);
# 2620 "../../../BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 8u);
# 2637 "../../../BSW/VStdLib/vstdlib.h"
  }
# 2646 "../../../BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2662 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint16 VStdLib_SwapEndianUint16(uint16 value)
{



  return (((value & 0xFF00u) >> 8u) | ((value & 0x00FFu) << 8u));
}
# 2682 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint32 VStdLib_SwapEndianUint32(uint32 value)
{



  return (((value & 0xFF000000u) >> 24u) |
          ((value & 0x00FF0000u) >> 8u) |
          ((value & 0x0000FF00u) << 8u) |
          ((value & 0x000000FFu) << 24u)
         );
}
# 2706 "../../../BSW/VStdLib/vstdlib.h"
static __inline__ uint64 VStdLib_SwapEndianUint64(uint64 value)
{



  return (((value & 0xFF00000000000000u) >> 56u) |
          ((value & 0x00FF000000000000u) >> 40u) |
          ((value & 0x0000FF0000000000u) >> 24u) |
          ((value & 0x000000FF00000000u) >> 8u) |
          ((value & 0x00000000FF000000u) << 8u) |
          ((value & 0x0000000000FF0000u) << 24u) |
          ((value & 0x000000000000FF00u) << 40u) |
          ((value & 0x00000000000000FFu) << 56u)
         );
}




# 1 "Include/MemMap.h" 1
# 7785 "Include/MemMap.h"
#pragma section
# 2726 "../../../BSW/VStdLib/vstdlib.h" 2
# 40 "../../../BSW/vSecPrim/actUtilities.h" 2
# 110 "../../../BSW/vSecPrim/actUtilities.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 111 "../../../BSW/vSecPrim/actUtilities.h" 2
# 128 "../../../BSW/vSecPrim/actUtilities.h"
void actWatchdogTriggerFunction( void ( * watchdog)(void));
# 144 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemSet(void * dest, actU8 fill, actLengthType count);
# 160 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy(void * dest, const void * src, actU32 count);
# 176 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROM(void * dest, const void * src, actLengthType count);
# 192 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROMRAM(void * dest, const actU8 * src, actLengthType count);
# 209 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp(const void * buf1, const void * buf2, actLengthType count);
# 226 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROM(const actU8 * buf1, const actU8 * buf2, actLengthType count);
# 243 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROMRAM(const void * buf1, const actU8 * buf2, actLengthType count);
# 258 "../../../BSW/vSecPrim/actUtilities.h"
 void actXOR(void * buf1, const void * buf2, actU32 count);
# 276 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actAddBE(actU8 * tgt, const actU8 * src, const actU32 length, const actU8 carry);
# 291 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actLEtoU8(const actU8 * src);
# 306 "../../../BSW/vSecPrim/actUtilities.h"
 void actU8toLE(actU8 * tgt, const actU8 in);
# 323 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU8(actU8 * tgt, const actU8 * src, const actU32 length);
# 340 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU8toLE(actU8 * tgt, const actU8 * src, const actU32 length);
# 355 "../../../BSW/vSecPrim/actUtilities.h"
 actU16 actLEtoU16(const actU8 * src);
# 370 "../../../BSW/vSecPrim/actUtilities.h"
 void actU16toLE(actU8 * tgt, const actU16 src);
# 387 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU16(actU16 * tgt, const actU8 * src, const actU32 length);
# 404 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU16toLE(actU8 * tgt, const actU16 * src, const actU32 length);
# 419 "../../../BSW/vSecPrim/actUtilities.h"
 actU32 actBEtoU32(const actU8 * src);
# 434 "../../../BSW/vSecPrim/actUtilities.h"
 actU32 actLEtoU32(const actU8 * src);
# 449 "../../../BSW/vSecPrim/actUtilities.h"
 void actU32toBE(actU8 * tgt, const actU32 src);
# 464 "../../../BSW/vSecPrim/actUtilities.h"
 void actU32toLE(actU8 * tgt, const actU32 src);
# 481 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 501 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 521 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU32toBE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 541 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU32toLE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 560 "../../../BSW/vSecPrim/actUtilities.h"
 actU64 actBEtoU64 (const actU8 * src);
# 575 "../../../BSW/vSecPrim/actUtilities.h"
 void actU64toBE(actU8 * tgt, const actU64 src);
# 592 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU64(
  actU64 * tgt,
  const actU8 * src,
  const actU32 length);
# 612 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU64toBE(
  actU8 * tgt,
  const actU64 * src,
  const actU32 length);
# 630 "../../../BSW/vSecPrim/actUtilities.h"
 actU64 actLEtoU64(const actU8 * src);
# 645 "../../../BSW/vSecPrim/actUtilities.h"
 void actU64toLE(actU8 * tgt, const actU64 src);







# 1 "GenData/vSecPrim_MemMap.h" 1
# 654 "../../../BSW/vSecPrim/actUtilities.h" 2
# 44 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 57 "../../../BSW/vSecPrim/ESLib_Helper.h"
typedef eslt_WorkSpace * eslt_WorkSpaceRefType;
typedef const eslt_WorkSpace * eslt_WorkSpaceConstRefType;

typedef const eslt_Length * eslt_LengthConstRef;






# 1 "GenData/vSecPrim_MemMap.h" 1
# 68 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 81 "../../../BSW/vSecPrim/ESLib_Helper.h"
void esl_ResetAndClearWorkspace(eslt_WorkSpaceHeader * workSpaceHeader,
  void * workSpaceBuffer);
# 96 "../../../BSW/vSecPrim/ESLib_Helper.h"
void esl_SetWorkspaceStatus(eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_WSStatus algo);
# 114 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceHeader(const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_Length minSize);
# 131 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceState(
  const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_WSStatus algo);
# 151 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceHeaderAndState(const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_Length minSize,
  eslt_WSStatus algo);
# 170 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_checkLengthRef(eslt_LengthConstRef lenRef,
  eslt_Length lengthValue);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 175 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 38 "../../../BSW/vSecPrim/vSecPrim_types.h" 2
# 88 "../../../BSW/vSecPrim/vSecPrim_types.h"
typedef eslt_Size16 vSecPrimType_OutputBufferFlag;
typedef eslt_HashAlgorithm vSecPrimType_HashAlgorithm;
typedef eslt_Byte vSecPrimType_CallUpdateFlag;




typedef union
{
  eslt_WorkSpaceSHA1 wsSHA1;


  eslt_WorkSpaceSHA224 wsSHA2_224;
  eslt_WorkSpaceSHA256 wsSHA2_256;
# 124 "../../../BSW/vSecPrim/vSecPrim_types.h"
} vSecPrimType_WorkSpaceUnionHash;


typedef struct
{
  eslt_WorkSpaceHeader header;
  vSecPrimType_WorkSpaceUnionHash wsHash;

  vSecPrimType_OutputBufferFlag outputLengthFlag;
  eslt_Byte tempHash[(64u)];
  vSecPrimType_HashAlgorithm hashID;
  vSecPrimType_CallUpdateFlag updateCalled;

} vSecPrimType_WorkSpaceHash;
# 98 "../../../BSW/vSecPrim/vSecPrim.h" 2
# 140 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_initHash(
vSecPrimType_WorkSpaceHash * workSpace,
vSecPrimType_HashAlgorithm hashID,
vSecPrimType_OutputBufferFlag outputLengthFlag);
# 168 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_updateHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  const eslt_Length inputLength,
  const eslt_Byte * input);
# 209 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_finalizeHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  eslt_Length * messageDigestLength,
  eslt_Byte * messageDigest);
# 257 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_digestHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  const eslt_Length inputLength,
  const eslt_Byte * input,
  eslt_Length * messageDigestLength,
  eslt_Byte * messageDigest);
# 55 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 3381 "GenData/Crypto_30_LibCv_Cfg.h"
typedef union
{
  eslt_WorkSpaceEcP wsEcP;
  vSecPrimType_WorkSpaceHash wsPreHash;
} Crypto_30_LibCv_WorkSpaceEcP;


typedef union
{
  eslt_WorkSpaceAES128 wsAES128;
} Crypto_30_LibCv_WorkSpaceAESSubType;


typedef struct
{
  uint8 mode;
  Crypto_30_LibCv_WorkSpaceAESSubType wsAES;
} Crypto_30_LibCv_WorkSpaceAES;


typedef struct
{
  uint8 mode;
  eslt_WorkSpaceCMACAES wsCMACAES;
} Crypto_30_LibCv_WorkSpaceCMACAES;


typedef union
{
  eslt_WorkSpaceEcP wsEcP;
  eslt_WorkSpaceSHA256 wsSHA256;
  eslt_WorkSpaceAES128 wsAes;
} Crypto_30_LibCv_WorkSpaceISO15118;


typedef struct
{
  uint32 saltLength;
  eslt_WorkSpaceRSAPSSver wsRsa;
} Crypto_30_LibCv_WorkSpaceRsaPssVer;


typedef struct
{
  uint8 decryptionMode;
  eslt_WorkSpaceRSAdec wsRsa;
} Crypto_30_LibCv_WorkSpaceRsaDecrypt;


typedef uint8 Crypto_30_LibCv_WorkSpaceKeySetValid;

typedef uint8 Crypto_30_LibCv_WorkSpaceKeyGenerateSymmetric;

typedef Std_ReturnType ( * Crypto_30_LibCv_DispatchFctPtrType)(uint32 objectId, Crypto_JobType * job, Crypto_OperationModeType mode);

typedef uint8 * Crypto_30_LibCv_SaveAndRestoreWorkspaceAddressType;

typedef Crypto_JobType * Crypto_30_LibCv_JobPtrType;

typedef union
{
  vSecPrimType_WorkSpaceHash Hash;
  eslt_WorkSpaceCTRDRBG DRBGAES;
  Crypto_30_LibCv_WorkSpaceRsaPssVer RsaPssVerify;
} Crypto_30_LibCv_UnionWS_Crypto_30_LibCv_Type;

typedef struct sCrypto_30_LibCv_WS_Crypto_30_LibCv_Type
{



  Crypto_30_LibCv_UnionWS_Crypto_30_LibCv_Type primWS;
} Crypto_30_LibCv_WS_Crypto_30_LibCv_Type;

typedef vSecPrimType_WorkSpaceHash * Crypto_30_LibCv_vSecPrimType_WorkSpaceHash_PtrType;
typedef eslt_WorkSpaceCTRDRBG * Crypto_30_LibCv_eslt_WorkSpaceCTRDRBG_PtrType;
typedef Crypto_30_LibCv_WorkSpaceRsaPssVer * Crypto_30_LibCv_Crypto_30_LibCv_WorkSpaceRsaPssVer_PtrType;
# 3471 "GenData/Crypto_30_LibCv_Cfg.h"
typedef uint8_least Crypto_30_LibCv_DRBGAESIterType;



typedef uint8_least Crypto_30_LibCv_FamilyToHashMappingIterType;



typedef uint8_least Crypto_30_LibCv_HashIterType;



typedef uint8_least Crypto_30_LibCv_InitValueIterType;



typedef uint8_least Crypto_30_LibCv_KeyIterType;



typedef uint8_least Crypto_30_LibCv_KeyElementInfoIterType;



typedef uint8_least Crypto_30_LibCv_KeyElementsIterType;



typedef uint16_least Crypto_30_LibCv_KeyStorageIterType;



typedef uint8_least Crypto_30_LibCv_ObjectInfoIterType;



typedef uint8_least Crypto_30_LibCv_ObjectInfoIndIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveFctIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveInfoIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveServiceInfoIterType;



typedef uint8_least Crypto_30_LibCv_QueueIterType;



typedef uint8_least Crypto_30_LibCv_RsaPssVerifyIterType;
# 3540 "GenData/Crypto_30_LibCv_Cfg.h"
typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_BufferLengthIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_DriverObjectStateIterType;



typedef Crypto_30_LibCv_KeyIterType Crypto_30_LibCv_KeyLockIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_LockIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_WrittenLengthIterType;
# 3568 "GenData/Crypto_30_LibCv_Cfg.h"
typedef boolean Crypto_30_LibCv_AlignKeyStorageOfGeneralType;


typedef uint32 Crypto_30_LibCv_BufferLengthType;


typedef boolean Crypto_30_LibCv_CmacAesRoundkeyReuseOfMacPrimitivesType;


typedef uint8 Crypto_30_LibCv_DefaultRandomMaxRetriesOfGeneralType;


typedef uint8 Crypto_30_LibCv_DriverObjectStateType;


typedef boolean Crypto_30_LibCv_EnableAES192OfCipherPrimitivesType;


typedef boolean Crypto_30_LibCv_EnableAES256OfCipherPrimitivesType;


typedef uint8 Crypto_30_LibCv_FamilyToHashMappingType;


typedef uint8 Crypto_30_LibCv_InitValueType;



typedef uint8 Crypto_30_LibCv_KeyElementsEndIdxOfKeyType;



typedef uint8 Crypto_30_LibCv_KeyElementsStartIdxOfKeyType;


typedef boolean Crypto_30_LibCv_KeyElementDeleteOfGeneralType;


typedef uint16 Crypto_30_LibCv_IdOfKeyElementInfoType;



typedef uint8 Crypto_30_LibCv_InitValueEndIdxOfKeyElementInfoType;



typedef uint8 Crypto_30_LibCv_InitValueStartIdxOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_InitValueUsedOfKeyElementInfoType;


typedef uint16 Crypto_30_LibCv_LengthOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_MaskedBitsOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_OnceOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_PartialOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_PersistOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_ReadOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_WriteOfKeyElementInfoType;


typedef uint16 Crypto_30_LibCv_IdOfKeyElementsType;



typedef uint8 Crypto_30_LibCv_KeyElementInfoIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageEndIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageExtensionIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageStartIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageValidIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageWrittenLengthEndIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageWrittenLengthStartIdxOfKeyElementsType;


typedef uint8 Crypto_30_LibCv_KeyGenerateMaxLengthOfKeyGeneratePrimitivesType;


typedef uint8 Crypto_30_LibCv_KeyLockType;


typedef uint8 Crypto_30_LibCv_KeyStorageType;


typedef uint32 Crypto_30_LibCv_LockType;


typedef uint8 Crypto_30_LibCv_MainFunctionPeriodOfGeneralType;


typedef uint8 Crypto_30_LibCv_NumberOfLongTermPrimitiveWorkspaceOfGeneralType;


typedef boolean Crypto_30_LibCv_NvMEnableSetRamBlockStatusOfGeneralType;


typedef uint8 Crypto_30_LibCv_NvManagementDataPerKeyOfNvStorageType;


typedef uint32 Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageType;



typedef uint8 Crypto_30_LibCv_DRBGAESIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_DRBGAESUsedOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_HashIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_HashUsedOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_QueueIdxOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_RsaPssVerifyIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_RsaPssVerifyUsedOfObjectInfoType;


typedef uint32 Crypto_30_LibCv_WorkspaceLengthOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndEndIdxOfPrimitiveFctType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndStartIdxOfPrimitiveFctType;


typedef boolean Crypto_30_LibCv_ObjectInfoIndUsedOfPrimitiveFctType;


typedef uint32 Crypto_30_LibCv_CombinedOfPrimitiveInfoType;


typedef boolean Crypto_30_LibCv_ContextOfPrimitiveInfoType;


typedef boolean Crypto_30_LibCv_DefaultRandomSourceOfPrimitiveInfoType;


typedef uint8 Crypto_30_LibCv_MaskedBitsOfPrimitiveInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveFctIdxOfPrimitiveInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveInfoEndIdxOfPrimitiveServiceInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveInfoStartIdxOfPrimitiveServiceInfoType;


typedef boolean Crypto_30_LibCv_PrimitiveInfoUsedOfPrimitiveServiceInfoType;


typedef boolean Crypto_30_LibCv_RedirectionOfGeneralType;


typedef uint8 Crypto_30_LibCv_SizeOfBufferLengthType;


typedef uint8 Crypto_30_LibCv_SizeOfDRBGAESType;


typedef uint8 Crypto_30_LibCv_SizeOfDriverObjectStateType;


typedef uint8 Crypto_30_LibCv_SizeOfFamilyToHashMappingType;


typedef uint8 Crypto_30_LibCv_SizeOfHashType;


typedef uint8 Crypto_30_LibCv_SizeOfInitValueType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyElementsType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyLockType;


typedef uint16 Crypto_30_LibCv_SizeOfKeyStorageType;


typedef uint8 Crypto_30_LibCv_SizeOfLockType;


typedef uint8 Crypto_30_LibCv_SizeOfObjectInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfObjectInfoIndType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveFctType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveServiceInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfQueueType;


typedef uint8 Crypto_30_LibCv_SizeOfRsaPssVerifyType;


typedef uint8 Crypto_30_LibCv_SizeOfWrittenLengthType;


typedef boolean Crypto_30_LibCv_StrictLengthCheckForKeyElementGetOfGeneralType;


typedef boolean Crypto_30_LibCv_UseVStdLibOfGeneralType;


typedef boolean Crypto_30_LibCv_VersionInfoApiOfGeneralType;


typedef uint32 Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralType;


typedef uint32 Crypto_30_LibCv_WrittenLengthType;
# 3860 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_DRBGAESType
{
  Crypto_30_LibCv_eslt_WorkSpaceCTRDRBG_PtrType WorkspaceOfDRBGAES;
} Crypto_30_LibCv_DRBGAESType;


typedef struct sCrypto_30_LibCv_HashType
{
  Crypto_30_LibCv_vSecPrimType_WorkSpaceHash_PtrType WorkspaceOfHash;
} Crypto_30_LibCv_HashType;
# 3879 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyType
{
  Crypto_30_LibCv_KeyElementsEndIdxOfKeyType KeyElementsEndIdxOfKey;
  Crypto_30_LibCv_KeyElementsStartIdxOfKeyType KeyElementsStartIdxOfKey;
} Crypto_30_LibCv_KeyType;
# 3893 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyElementInfoType
{
  Crypto_30_LibCv_IdOfKeyElementInfoType IdOfKeyElementInfo;
  Crypto_30_LibCv_LengthOfKeyElementInfoType LengthOfKeyElementInfo;
  Crypto_30_LibCv_InitValueEndIdxOfKeyElementInfoType InitValueEndIdxOfKeyElementInfo;
  Crypto_30_LibCv_InitValueStartIdxOfKeyElementInfoType InitValueStartIdxOfKeyElementInfo;
  Crypto_30_LibCv_MaskedBitsOfKeyElementInfoType MaskedBitsOfKeyElementInfo;
  Crypto_30_LibCv_ReadOfKeyElementInfoType ReadOfKeyElementInfo;
  Crypto_30_LibCv_WriteOfKeyElementInfoType WriteOfKeyElementInfo;
} Crypto_30_LibCv_KeyElementInfoType;
# 3917 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyElementsType
{
  Crypto_30_LibCv_IdOfKeyElementsType IdOfKeyElements;
  Crypto_30_LibCv_KeyStorageEndIdxOfKeyElementsType KeyStorageEndIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageExtensionIdxOfKeyElementsType KeyStorageExtensionIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageStartIdxOfKeyElementsType KeyStorageStartIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageValidIdxOfKeyElementsType KeyStorageValidIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageWrittenLengthEndIdxOfKeyElementsType KeyStorageWrittenLengthEndIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageWrittenLengthStartIdxOfKeyElementsType KeyStorageWrittenLengthStartIdxOfKeyElements;
  Crypto_30_LibCv_KeyElementInfoIdxOfKeyElementsType KeyElementInfoIdxOfKeyElements;
} Crypto_30_LibCv_KeyElementsType;
# 3939 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_ObjectInfoType
{
  Crypto_30_LibCv_WorkspaceLengthOfObjectInfoType WorkspaceLengthOfObjectInfo;
  Crypto_30_LibCv_DRBGAESIdxOfObjectInfoType DRBGAESIdxOfObjectInfo;
  Crypto_30_LibCv_HashIdxOfObjectInfoType HashIdxOfObjectInfo;
  Crypto_30_LibCv_QueueIdxOfObjectInfoType QueueIdxOfObjectInfo;
  Crypto_30_LibCv_RsaPssVerifyIdxOfObjectInfoType RsaPssVerifyIdxOfObjectInfo;
  uint8 * WorkspaceAddrOfObjectInfo;
} Crypto_30_LibCv_ObjectInfoType;
# 3957 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveFctType
{
  Crypto_30_LibCv_ObjectInfoIndEndIdxOfPrimitiveFctType ObjectInfoIndEndIdxOfPrimitiveFct;
  Crypto_30_LibCv_ObjectInfoIndStartIdxOfPrimitiveFctType ObjectInfoIndStartIdxOfPrimitiveFct;
  Crypto_30_LibCv_DispatchFctPtrType DispatchOfPrimitiveFct;
} Crypto_30_LibCv_PrimitiveFctType;
# 3971 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveInfoType
{
  Crypto_30_LibCv_CombinedOfPrimitiveInfoType CombinedOfPrimitiveInfo;
  Crypto_30_LibCv_MaskedBitsOfPrimitiveInfoType MaskedBitsOfPrimitiveInfo;
  Crypto_30_LibCv_PrimitiveFctIdxOfPrimitiveInfoType PrimitiveFctIdxOfPrimitiveInfo;
} Crypto_30_LibCv_PrimitiveInfoType;
# 3986 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveServiceInfoType
{
  Crypto_30_LibCv_PrimitiveInfoEndIdxOfPrimitiveServiceInfoType PrimitiveInfoEndIdxOfPrimitiveServiceInfo;
  Crypto_30_LibCv_PrimitiveInfoStartIdxOfPrimitiveServiceInfoType PrimitiveInfoStartIdxOfPrimitiveServiceInfo;
} Crypto_30_LibCv_PrimitiveServiceInfoType;


typedef struct sCrypto_30_LibCv_RsaPssVerifyType
{
  Crypto_30_LibCv_Crypto_30_LibCv_WorkSpaceRsaPssVer_PtrType WorkspaceOfRsaPssVerify;
} Crypto_30_LibCv_RsaPssVerifyType;
# 4008 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct Crypto_30_LibCv_KeyLockStructSTag
{
  Crypto_30_LibCv_KeyLockType SmhKeyRSA;
  Crypto_30_LibCv_KeyLockType Smh_CryptoKey_Nist_800_90A;
  Crypto_30_LibCv_KeyLockType SmhCryptoKeyDummy;
} Crypto_30_LibCv_KeyLockStructSType;


typedef struct Crypto_30_LibCv_QueueStructSTag
{
  Crypto_30_LibCv_JobPtrType Crypto_30_LibCv;
} Crypto_30_LibCv_QueueStructSType;
# 4031 "GenData/Crypto_30_LibCv_Cfg.h"
typedef union Crypto_30_LibCv_KeyLockUTag
{
  Crypto_30_LibCv_KeyLockType raw[3];
  Crypto_30_LibCv_KeyLockStructSType str;
} Crypto_30_LibCv_KeyLockUType;


typedef union Crypto_30_LibCv_QueueUTag
{
  Crypto_30_LibCv_JobPtrType raw[1];
  Crypto_30_LibCv_QueueStructSType str;
} Crypto_30_LibCv_QueueUType;
# 4054 "GenData/Crypto_30_LibCv_Cfg.h"
typedef Crypto_30_LibCv_BufferLengthType * Crypto_30_LibCv_BufferLengthPtrType;


typedef const Crypto_30_LibCv_DRBGAESType * Crypto_30_LibCv_DRBGAESPtrType;


typedef Crypto_30_LibCv_DriverObjectStateType * Crypto_30_LibCv_DriverObjectStatePtrType;


typedef const Crypto_30_LibCv_FamilyToHashMappingType * Crypto_30_LibCv_FamilyToHashMappingPtrType;


typedef const Crypto_30_LibCv_HashType * Crypto_30_LibCv_HashPtrType;


typedef const Crypto_30_LibCv_InitValueType * Crypto_30_LibCv_InitValuePtrType;


typedef const Crypto_30_LibCv_KeyType * Crypto_30_LibCv_KeyPtrType;


typedef const Crypto_30_LibCv_KeyElementInfoType * Crypto_30_LibCv_KeyElementInfoPtrType;


typedef const Crypto_30_LibCv_KeyElementsType * Crypto_30_LibCv_KeyElementsPtrType;


typedef Crypto_30_LibCv_KeyLockType * Crypto_30_LibCv_KeyLockPtrType;


typedef Crypto_30_LibCv_KeyStorageType * Crypto_30_LibCv_KeyStoragePtrType;


typedef Crypto_30_LibCv_LockType * Crypto_30_LibCv_LockPtrType;


typedef const Crypto_30_LibCv_ObjectInfoType * Crypto_30_LibCv_ObjectInfoPtrType;


typedef const Crypto_30_LibCv_ObjectInfoIndType * Crypto_30_LibCv_ObjectInfoIndPtrType;


typedef const Crypto_30_LibCv_PrimitiveFctType * Crypto_30_LibCv_PrimitiveFctPtrType;


typedef const Crypto_30_LibCv_PrimitiveInfoType * Crypto_30_LibCv_PrimitiveInfoPtrType;


typedef const Crypto_30_LibCv_PrimitiveServiceInfoType * Crypto_30_LibCv_PrimitiveServiceInfoPtrType;


typedef Crypto_30_LibCv_JobPtrType * Crypto_30_LibCv_QueuePtrType;


typedef const Crypto_30_LibCv_RsaPssVerifyType * Crypto_30_LibCv_RsaPssVerifyPtrType;


typedef Crypto_30_LibCv_WS_Crypto_30_LibCv_Type * Crypto_30_LibCv_UnionWS_Crypto_30_LibCvPtrType;


typedef Crypto_30_LibCv_WrittenLengthType * Crypto_30_LibCv_WrittenLengthPtrType;


typedef const Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageType * Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageOfPCConfigPtrType;


typedef const Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralType * Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralOfPCConfigPtrType;
# 4132 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PCConfigType
{
  uint8 Crypto_30_LibCv_PCConfigNeverUsed;
} Crypto_30_LibCv_PCConfigType;

typedef Crypto_30_LibCv_PCConfigType Crypto_30_LibCv_ConfigType;
# 4191 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4192 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_DRBGAESType Crypto_30_LibCv_DRBGAES[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4197 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4205 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_FamilyToHashMappingType Crypto_30_LibCv_FamilyToHashMapping[4];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4210 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4223 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4224 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_HashType Crypto_30_LibCv_Hash[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4229 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4237 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_InitValueType Crypto_30_LibCv_InitValue[5];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4242 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4256 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4257 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyType Crypto_30_LibCv_Key[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4262 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4281 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4282 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyElementInfoType Crypto_30_LibCv_KeyElementInfo[8];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4287 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4307 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4308 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyElementsType Crypto_30_LibCv_KeyElements[8];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4313 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4331 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4332 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_ObjectInfoType Crypto_30_LibCv_ObjectInfo[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4337 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4348 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4349 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_ObjectInfoIndType Crypto_30_LibCv_ObjectInfoInd[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4354 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4369 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4370 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveFctType Crypto_30_LibCv_PrimitiveFct[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4375 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4390 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4391 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveInfoType Crypto_30_LibCv_PrimitiveInfo[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4396 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4410 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4411 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveServiceInfoType Crypto_30_LibCv_PrimitiveServiceInfo[20];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4416 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4429 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4430 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_RsaPssVerifyType Crypto_30_LibCv_RsaPssVerify[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4435 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4446 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4447 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_BufferLengthType Crypto_30_LibCv_BufferLength[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4452 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4463 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4464 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_DriverObjectStateType Crypto_30_LibCv_DriverObjectState[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4469 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4480 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4481 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_KeyLockUType Crypto_30_LibCv_KeyLock;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4486 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4494 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_KeyStorageType Crypto_30_LibCv_KeyStorage[413];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4499 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4510 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4511 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_LockType Crypto_30_LibCv_Lock[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4516 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4527 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4528 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_QueueUType Crypto_30_LibCv_Queue;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4533 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4544 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4545 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_WS_Crypto_30_LibCv_Type Crypto_30_LibCv_UnionWS_Crypto_30_LibCv;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4550 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4561 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4562 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_WrittenLengthType Crypto_30_LibCv_WrittenLength[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4567 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4604 "GenData/Crypto_30_LibCv_Cfg.h"
extern void FblLookForWatchdogVoid( void );
# 218 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 1
# 33 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 34 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 2
# 60 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyCopy(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId);
# 93 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementCopy(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId);
# 137 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementCopyPartial(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 keyElementSourceOffset,
  uint32 keyElementTargetOffset,
  uint32 keyElementCopyLength,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId);
# 167 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementIdsGet(
  uint32 cryptoKeyId,
  uint32 * keyElementIdsPtr,
  uint32 * keyElementIdsLengthPtr);
# 196 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementSet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  const uint8 * keyPtr,
  uint32 keyLength);
# 217 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyValidSet(
  uint32 cryptoKeyId);
# 247 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementGet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint8 * resultPtr,
  uint32 * resultLengthPtr);
# 272 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_RandomSeed(
  uint32 cryptoKeyId,
  const uint8 * entropyPtr,
  uint32 entropyLength);
# 293 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyGenerate(
  uint32 cryptoKeyId);
# 367 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyDerive(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId);
# 395 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcPubVal(
  uint32 cryptoKeyId,
  uint8 * publicValuePtr,
  uint32 * publicValueLengthPtr);
# 422 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcSecret(
  uint32 cryptoKeyId,
  const uint8 * partnerPublicValuePtr,
  uint32 partnerPublicValueLength);
# 443 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_CertificateParse(
  uint32 cryptoKeyId);
# 466 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_CertificateVerify(
  uint32 cryptoKeyId,
  uint32 verifyCryptoKeyId,
  Crypto_VerifyResultType * verifyPtr);
# 496 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 497 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 2
# 219 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 1 "Include/SchM_Crypto_30_LibCv.h" 1
# 54 "Include/SchM_Crypto_30_LibCv.h"
# 1 "Include/Os.h" 1
# 57 "Include/Os.h"
typedef uint32 TickType;


typedef enum
{
  INVALID_ISR = 0
}ISRType;


typedef enum
{
  INVALID_OSAPPLICATION = 0
} ApplicationType;


typedef enum
{
  OS_COUNTERID_COUNT = 0
} CounterType;
# 55 "Include/SchM_Crypto_30_LibCv.h" 2
# 63 "Include/SchM_Crypto_30_LibCv.h"
# 1 "Include/MemMap.h" 1
# 64 "Include/SchM_Crypto_30_LibCv.h" 2

void Crypto_30_LibCv_MainFunction(void);


# 1 "Include/MemMap.h" 1
# 69 "Include/SchM_Crypto_30_LibCv.h" 2
# 220 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2

# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 1
# 34 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h"
# 1 "GenData/Crypto_30_LibCv_Custom_Generated.h" 1
# 35 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 2
# 222 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 345 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 346 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 360 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
void Crypto_30_LibCv_Init(void);
# 372 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
void Crypto_30_LibCv_InitMemory(void);
# 417 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
Std_ReturnType Crypto_30_LibCv_ProcessJob(
  uint32 objectId,
  Crypto_JobType * job);
# 436 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
Std_ReturnType Crypto_30_LibCv_CancelJob(
  uint32 objectId,
  Crypto_JobType * job);
# 534 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 535 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 32 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 1
# 36 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
# 1 "../../../BSW/vSecPrim/ESLib_version.h" 1
# 37 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2
# 51 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
# 1 "../../../BSW/Det/Det.h" 1
# 78 "../../../BSW/Det/Det.h"
# 1 "GenData/Det_Cfg.h" 1
# 311 "GenData/Det_Cfg.h"
typedef Std_ReturnType ( * Det_CalloutTableType)(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId);
# 324 "GenData/Det_Cfg.h"
typedef uint8_least Det_ErrorHookTableIterType;


typedef uint8_least Det_RuntimeErrorCalloutTableIterType;


typedef uint8_least Det_TransientFaultCalloutTableIterType;
# 342 "GenData/Det_Cfg.h"
typedef uint8 Det_SizeOfErrorHookTableType;


typedef uint8 Det_SizeOfRuntimeErrorCalloutTableType;


typedef uint8 Det_SizeOfTransientFaultCalloutTableType;
# 364 "GenData/Det_Cfg.h"
typedef const Det_CalloutTableType * Det_ErrorHookTablePtrType;


typedef const Det_CalloutTableType * Det_RuntimeErrorCalloutTablePtrType;


typedef const Det_CalloutTableType * Det_TransientFaultCalloutTablePtrType;
# 382 "GenData/Det_Cfg.h"
typedef struct sDet_PCConfigType
{
  uint8 Det_PCConfigNeverUsed;
} Det_PCConfigType;

typedef Det_PCConfigType Det_ConfigType;
# 412 "GenData/Det_Cfg.h"
# 1 "GenData/Det_MemMap.h" 1
# 101 "GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 413 "GenData/Det_Cfg.h" 2

extern const Det_CalloutTableType Det_ErrorHookTable[1];


# 1 "GenData/Det_MemMap.h" 1
# 117 "GenData/Det_MemMap.h"
#pragma section
# 418 "GenData/Det_Cfg.h" 2
# 429 "GenData/Det_Cfg.h"
# 1 "GenData/Det_MemMap.h" 1
# 101 "GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 430 "GenData/Det_Cfg.h" 2

extern const Det_CalloutTableType Det_RuntimeErrorCalloutTable[1];


# 1 "GenData/Det_MemMap.h" 1
# 117 "GenData/Det_MemMap.h"
#pragma section
# 435 "GenData/Det_Cfg.h" 2
# 446 "GenData/Det_Cfg.h"
# 1 "GenData/Det_MemMap.h" 1
# 101 "GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 447 "GenData/Det_Cfg.h" 2

extern const Det_CalloutTableType Det_TransientFaultCalloutTable[1];


# 1 "GenData/Det_MemMap.h" 1
# 117 "GenData/Det_MemMap.h"
#pragma section
# 452 "GenData/Det_Cfg.h" 2
# 468 "GenData/Det_Cfg.h"
# 1 "GenData/Det_MemMap.h" 1
# 70 "GenData/Det_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 469 "GenData/Det_Cfg.h" 2


Std_ReturnType ApplFbl_DetEntryHandler( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId );



# 1 "GenData/Det_MemMap.h" 1
# 86 "GenData/Det_MemMap.h"
#pragma section
# 476 "GenData/Det_Cfg.h" 2
# 79 "../../../BSW/Det/Det.h" 2
# 213 "../../../BSW/Det/Det.h"
# 1 "GenData/Det_MemMap.h" 1
# 70 "GenData/Det_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 214 "../../../BSW/Det/Det.h" 2
# 228 "../../../BSW/Det/Det.h"
void Det_Init( const Det_ConfigType * const ConfigPtr );
# 243 "../../../BSW/Det/Det.h"
void Det_Start( void );
# 257 "../../../BSW/Det/Det.h"
void Det_InitMemory( void );
# 278 "../../../BSW/Det/Det.h"
Std_ReturnType Det_ReportError( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId );
# 298 "../../../BSW/Det/Det.h"
Std_ReturnType Det_ReportRuntimeError( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId );
# 318 "../../../BSW/Det/Det.h"
Std_ReturnType Det_ReportTransientFault( uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId );
# 342 "../../../BSW/Det/Det.h"
# 1 "GenData/Det_MemMap.h" 1
# 86 "GenData/Det_MemMap.h"
#pragma section
# 343 "../../../BSW/Det/Det.h" 2
# 52 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2
# 338 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
typedef Crypto_30_LibCv_SizeOfKeyStorageType Crypto_30_LibCv_KeyStorageIndexType;


typedef struct
{
  uint32 keyElementId;
  uint32 keyElementLength;
  Crypto_30_LibCv_SizeOfKeyStorageType keyElementIndex;
} Crypto_30_LibCv_KeyElementGetType;

typedef uint8 Crypto_30_LibCv_KeyElementGetSizeType;


typedef uint8 Crypto_30_LibCv_LengthCheckType;


typedef uint8 Crypto_30_LibCv_ServiceType;


typedef struct
{
  uint32 firstOutputLength;
  uint32 firstOutputLengthWritten;
  uint32 secondaryOutputLength;
  uint32 secondaryOutputLengthWritten;
  Crypto_JobPrimitiveInputOutputType jobPrimitiveInputOutput_Restore;
} Crypto_30_LibCv_Redirect_Type;


typedef struct
{
  uint32 keyId;
  uint8 keyAccess;
} Crypto_30_LibCv_KeyLockKeyType;

typedef struct
{
  Crypto_30_LibCv_KeyLockKeyType keyLockList[(3u)];
  uint8 numKeys;
} Crypto_30_LibCv_KeyLockListType;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 381 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2



extern uint8 Crypto_30_LibCv_ModuleInitialized;



# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 389 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 392 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2

extern boolean Crypto_30_LibCv_ProcessJob_Trigger_Write[1u];
# 403 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 404 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 407 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2
# 420 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 421 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2





# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 427 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2
# 441 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Init_Key(
  Crypto_30_LibCv_KeyElementsIterType elementIndex,
  boolean initAllBytes);
# 457 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Init_KeySimple(
  Crypto_30_LibCv_KeyElementsIterType elementIndex);
# 671 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
static __inline__ void Crypto_30_LibCv_Local_Uint32ToUint8ArrayBigEndian(
  uint8 * targetData,
  uint32 sourceData);
# 688 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
static __inline__ void Crypto_30_LibCv_Local_Uint8ArrayToUint32BigEndian(
  uint32 * targetData,
  const uint8 * sourceData);
# 705 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyListAddKey(
  Crypto_30_LibCv_KeyLockListType * keyList,
  uint32 cryptoKeyId,
  uint8 keyAccess);
# 723 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_GetKeyList(
  const Crypto_JobType * job,
  Crypto_30_LibCv_KeyLockListType * keyList);
# 742 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_GetKeyListAndDet(
  const Crypto_JobType * job,
  Crypto_30_LibCv_KeyLockListType * keyList);
# 759 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyListPreLockKeys(
  const Crypto_30_LibCv_KeyLockListType * keyList);
# 773 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyListPostFreeKeys(
  const Crypto_30_LibCv_KeyLockListType * keyList);
# 792 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementSearch(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyElementsType * elementIndex);
# 870 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndex(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 899 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_GetElementsIndexJob(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType numberOfElements,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 918 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_ElementGetterSetId(
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType elementNumber,
  uint32 keyElementId);
# 943 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_ElementGetterSetIdAndLength(
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType elementNumber,
  uint32 keyElementId,
  uint32 keyLength);
# 973 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexJobOptional(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 1003 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexJob(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 1037 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType);
# 1069 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexBasic(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType);
# 1100 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementSetInternal(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength,
  Crypto_30_LibCv_WriteOfKeyElementInfoType writeAccess);
# 1122 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_KeyElementSetInternalStandard(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength);
# 1144 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_KeyElementSetInternalStandardWithCryptoKeyId(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength);
# 1163 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_SetKeyElementWrittenLength(
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength);
# 1180 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyIdSearch(
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength);
# 1198 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength);
# 1214 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_SetKeyElementStateWritten(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex);
# 1229 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
boolean Crypto_30_LibCv_SetKeyState(
  uint32 cryptoKeyId,
  uint8 mask);
# 1247 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyReadLockGet(
  uint32 cryptoKeyId);
# 1263 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyReadLockRelease(
  uint32 cryptoKeyId);
# 1281 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyReadLockGetNotProtected(
  uint32 cryptoKeyId);
# 1298 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyReadLockReleaseNotProtected(
  uint32 cryptoKeyId);
# 1315 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyWriteLockGet(
  uint32 cryptoKeyId);
# 1331 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyWriteLockRelease(
  uint32 cryptoKeyId);
# 1349 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
Std_ReturnType Crypto_30_LibCv_Local_KeyWriteLockGetNotProtected(
  uint32 cryptoKeyId);
# 1366 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
void Crypto_30_LibCv_Local_KeyWriteLockReleaseNotProtected(
  uint32 cryptoKeyId);
# 1474 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
static __inline__ void Crypto_30_LibCv_Local_Uint32ToUint8ArrayBigEndian(
  uint8 * targetData,
  uint32 sourceData)
{
  targetData[0] = (uint8)(((sourceData)& 0xff000000u) >> 24);
  targetData[1] = (uint8)(((sourceData)& 0x00ff0000u) >> 16);
  targetData[2] = (uint8)(((sourceData)& 0x0000ff00u) >> 8);
  targetData[3] = (uint8)(((sourceData)& 0x000000ffu));
}
# 1493 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h"
static __inline__ void Crypto_30_LibCv_Local_Uint8ArrayToUint32BigEndian(
  uint32 * targetData,
  const uint8 * sourceData)
{
  *targetData = ((((uint32)sourceData[0]) & 0x000000FFu) << 24) | ((((uint32)sourceData[1]) & 0x000000FFu) << 16) | ((((uint32)sourceData[2]) & 0x000000FFu) << 8) | (((uint32)sourceData[3]) & 0x000000FFu);
}


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 1502 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Services.h" 2
# 33 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Curve.h" 1
# 49 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Curve.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 50 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Curve.h" 2







extern const uint8 Crypto_30_LibCv_EccCurveEmptyDomain[2];




extern const uint8 Crypto_30_LibCv_EccCurveSecP160R1Domain[155];





extern const uint8 Crypto_30_LibCv_EccCurveSecP160R1DomainExt[153];

extern const uint8 Crypto_30_LibCv_EccCurveSecP160R1SpeedUpExt[355];




extern const uint8 Crypto_30_LibCv_EccCurveNistSecP224R1Domain[203];





extern const uint8 Crypto_30_LibCv_EccCurveNistSecP224R1DomainExt[201];

extern const uint8 Crypto_30_LibCv_EccCurveNistSecP224R1SpeedUpExt[483];




extern const uint8 Crypto_30_LibCv_EccCurveNistAnsiSecP256R1Domain[227];





extern const uint8 Crypto_30_LibCv_EccCurveNistAnsiSecP256R1DomainExt[225];

extern const uint8 Crypto_30_LibCv_EccCurveNistAnsiSecP256R1SpeedUpExt[547];




extern const uint8 Crypto_30_LibCv_EccCurveNistSecP384R1Domain[324];





extern const uint8 Crypto_30_LibCv_EccCurveNistSecP384R1DomainExt[323];

extern const uint8 Crypto_30_LibCv_EccCurveNistSecP384R1SpeedUpExt[803];




extern const uint8 Crypto_30_LibCv_EccCurveNistSecP521R1Domain[432];





extern const uint8 Crypto_30_LibCv_EccCurveNistSecP521R1DomainExt[433];

extern const uint8 Crypto_30_LibCv_EccCurveNistSecP521R1SpeedUpExt[1099];



# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 127 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_Curve.h" 2
# 34 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h" 1
# 44 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 45 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h" 2
# 66 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h"
Std_ReturnType Crypto_30_LibCv_Local_RandomSeed(
  uint32 cryptoKeyId,
  const uint8 * entropyPtr,
  uint32 entropyLength);
# 145 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 146 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_RandomSeed.h" 2
# 35 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyExchange.h" 1
# 60 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyExchange.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 61 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyExchange.h" 2
# 444 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyExchange.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 445 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyExchange.h" 2
# 36 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyGenerate.h" 1
# 54 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyGenerate.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 55 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyGenerate.h" 2
# 225 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyGenerate.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 226 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyGenerate.h" 2
# 37 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyDerive.h" 1
# 44 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyDerive.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 45 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyDerive.h" 2
# 335 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyDerive.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 336 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyDerive.h" 2
# 38 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeySetValid.h" 1
# 44 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeySetValid.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 45 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeySetValid.h" 2
# 69 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeySetValid.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 70 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeySetValid.h" 2
# 39 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h" 1
# 47 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
typedef struct
{
  boolean isKeyValid;
  boolean isSheKey;
  boolean write_protection;

  boolean boot_protection;
  boolean debugger_protection;
  boolean key_usage;
  boolean disable_wildcard;
  boolean cmac_usage;
} Crypto_30_LibCv_KeyFlagType;





# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 65 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h" 2
# 95 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementGetStorageIndex(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType);
# 119 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_GetKeyFlags(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_KeyFlagType * keyFlagsPtr);
# 139 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyReadLockGetNotProtected(
  uint32 cryptoKeyId);
# 157 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyReadLockReleaseNotProtected(
  uint32 cryptoKeyId);
# 240 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyListAddKey(
  Crypto_30_LibCv_KeyLockListType * keyList,
  uint32 cryptoKeyId,
  uint8 keyAccess);
# 258 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyListPreLockKeys(
  const Crypto_30_LibCv_KeyLockListType * keyList);
# 274 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyListPostFreeKeys(
  const Crypto_30_LibCv_KeyLockListType * keyList);
# 292 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementSearch(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyElementsType * elementIndex);
# 311 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyWriteLockGetNotProtected(
  uint32 cryptoKeyId);
# 329 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyWriteLockReleaseNotProtected(
  uint32 cryptoKeyId);
# 349 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementSetInternalStandard(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength);





# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 359 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_InternalApi.h" 2
# 40 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 239 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 240 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 280 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 281 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 284 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 305 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 306 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2






# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 313 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
# 333 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopy_RightsCheck(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst);
# 357 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopy(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst,
  uint32 dstCryptoKeyId);
# 393 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopyPartial(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst,
  uint32 dstCryptoKeyId,
  uint32 keyElementSourceOffset,
  uint32 keyElementTargetOffset,
  uint32 keyElementCopyLength);
# 422 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ boolean Crypto_30_LibCv_Local_KeyElementGetLengthCheck(
  const uint32 * resultLengthptr,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 447 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGet_Standard(
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_LengthCheckType lengthCheck);
# 1405 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_BinarySearchCryptoKeyId(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  uint32 * cryptoKeyId);
# 1439 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint8 * resultPtr,
  uint32 * resultLengthPtr,
  uint8 * errorIdPtr);
# 1466 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetNoShe(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  uint8 * resultPtr,
  uint32 * resultLengthPtr);
# 1484 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_SetKeyElementWrittenLength(
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength)
{

  Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(keyElementIndex)].KeyStorageWrittenLengthStartIdxOfKeyElements))] = ((uint8)((keyElementLength >> 8) & 0xFFu));
  Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(keyElementIndex)].KeyStorageWrittenLengthStartIdxOfKeyElements) + 1u)] = ((uint8)(keyElementLength & 0xFFu));
}
# 1502 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyIdSearch(
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength)
{
  uint32 cryptoKeyId = 0u;


  if (Crypto_30_LibCv_Local_BinarySearchCryptoKeyId(keyElementIndex, &cryptoKeyId) == 0u)
  {
    Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(cryptoKeyId, keyElementIndex, keyElementLength);
  }
}
# 1525 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType keyElementIndex,
  uint32 keyElementLength)
{


  Crypto_30_LibCv_SetKeyElementWrittenLength(keyElementIndex, keyElementLength);





  ;

}
# 1551 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_SetKeyElementStateWritten(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex)
{


  ((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))] = (((uint8)(((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) & ((0x00u)))))));
  if (((0x04u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].MaskedBitsOfKeyElementInfo) & 0x04u))))
  {
    ((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))] = (((uint8)(((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) | ((0x80u)))))));
  }
}
# 1573 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
boolean Crypto_30_LibCv_SetKeyState(
  uint32 cryptoKeyId,
  uint8 mask)
{
  Crypto_30_LibCv_KeyElementsIterType elementIndex;
  boolean changed = 0u;




  for (elementIndex = (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsStartIdxOfKey); elementIndex < (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsEndIdxOfKey); elementIndex++)
  {






    ((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))] = (((uint8)(((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) | (mask))))));
  }
# 1606 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  return changed;
}
# 1621 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopy_RightsCheck(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst)
{
  Std_ReturnType retVal = 0u;


  if ((((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndexSrc)].KeyElementInfoIdxOfKeyElements))].ReadOfKeyElementInfo)) == 0x03u) ||
      (((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndexSrc)].KeyElementInfoIdxOfKeyElements))].ReadOfKeyElementInfo)) > ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndexDst)].KeyElementInfoIdxOfKeyElements))].ReadOfKeyElementInfo))))
  {
    retVal = 6u;
  }

  else if (((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndexDst)].KeyElementInfoIdxOfKeyElements))].WriteOfKeyElementInfo)) == 0x03u)
  {
    retVal = 7u;
  }

  else if (((((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndexDst)))].KeyStorageValidIdxOfKeyElements))])) & (uint8)((0x80u))) == ((0x80u))))
  {
    retVal = 7u;
  }
  else
  {
# 1660 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  }

  return retVal;
}
# 1677 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopy(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst,
  uint32 dstCryptoKeyId)
{

  Std_ReturnType retVal;
  Crypto_30_LibCv_KeyStorageIterType keyStorageIndexSrc;
  Crypto_30_LibCv_KeyStorageIterType keyStorageIndexDst;




  retVal = Crypto_30_LibCv_Local_KeyElementCopy_RightsCheck(elementIndexSrc, elementIndexDst);
  if (retVal == 0u)
  {
    retVal = 1u;


    {


      if ((((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))) == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo))) ||
          ((((0x02u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyElementInfoIdxOfKeyElements))].MaskedBitsOfKeyElementInfo) & 0x02u))) == 1u) &&
          (((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))) <= ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo)))))
      {
        keyStorageIndexSrc = (Crypto_30_LibCv_KeyElements[(elementIndexSrc)].KeyStorageStartIdxOfKeyElements);
        keyStorageIndexDst = (Crypto_30_LibCv_KeyElements[(elementIndexDst)].KeyStorageStartIdxOfKeyElements);

        (VStdLib_MemCpy((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndexDst)]))), (const uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndexSrc)]))), (VStdLib_CntType)(((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))))));


        Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(dstCryptoKeyId, elementIndexDst, ((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))));
        Crypto_30_LibCv_Local_SetKeyElementStateWritten(elementIndexDst);

        retVal = 0u;
      }
      else
      {

        retVal = 10u;
      }
    }
  }

  return retVal;
}
# 1736 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static Std_ReturnType Crypto_30_LibCv_Local_KeyElementCopyPartial(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst,
  uint32 dstCryptoKeyId,
  uint32 keyElementSourceOffset,
  uint32 keyElementTargetOffset,
  uint32 keyElementCopyLength)
{

  Std_ReturnType retVal;
  Crypto_30_LibCv_KeyStorageIterType keyStorageIndexSrc, keyStorageIndexDst;
  uint32 writtenLengthSrc, writtenLengthDst;




  retVal = Crypto_30_LibCv_Local_KeyElementCopy_RightsCheck(elementIndexSrc, elementIndexDst);
  if (retVal == 0u)
  {
    retVal = 1u;
    {
      writtenLengthSrc = ((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexSrc))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)])));
      writtenLengthDst = ((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)])));

      if (writtenLengthSrc == (0u))
      {
        retVal = 13u;
      }
      else if (
        (((0x02u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyElementInfoIdxOfKeyElements))].MaskedBitsOfKeyElementInfo) & 0x02u))) == 1u) &&

        ((keyElementSourceOffset + keyElementCopyLength) <= writtenLengthSrc) &&
        (((((keyElementCopyLength) > (uint32)((0xFFFFFFFFuL) - keyElementSourceOffset)) ? 1u:0u )) == 0u) &&

        ((keyElementTargetOffset + keyElementCopyLength) <= ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndexDst))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo))) &&
        (((((keyElementCopyLength) > (uint32)((0xFFFFFFFFuL) - keyElementTargetOffset)) ? 1u:0u )) == 0u))
      {
        keyStorageIndexSrc = (Crypto_30_LibCv_KeyElements[(elementIndexSrc)].KeyStorageStartIdxOfKeyElements);
        keyStorageIndexDst = (Crypto_30_LibCv_KeyElements[(elementIndexDst)].KeyStorageStartIdxOfKeyElements);


        if (writtenLengthDst < keyElementTargetOffset)
        {
          (VStdLib_MemSet(((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndexDst + writtenLengthDst)])))), 0, ((VStdLib_CntType)((uint32)(keyElementTargetOffset - writtenLengthDst)))));
        }


        (VStdLib_MemCpy((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndexDst + keyElementTargetOffset)]))), (const uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndexSrc + keyElementSourceOffset)]))), (VStdLib_CntType)(keyElementCopyLength)));



        if (writtenLengthDst < (keyElementTargetOffset + keyElementCopyLength))
        {
          Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(dstCryptoKeyId, elementIndexDst, (keyElementTargetOffset + keyElementCopyLength));
        }
        Crypto_30_LibCv_Local_SetKeyElementStateWritten(elementIndexDst);

        retVal = 0u;
      }
      else
      {

        retVal = 10u;
      }
    }
  }

  return retVal;
}
# 1815 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ boolean Crypto_30_LibCv_Local_KeyElementGetLengthCheck(
  const uint32 * resultLengthptr,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_LengthCheckType lengthCheck)
{
  boolean retVal = 0u;

  switch (lengthCheck)
  {
    case (0u):
    retVal = 1u;
    break;

    case (1u):
    if (((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))) <= *resultLengthptr)
    {
      retVal = 1u;
    }
    break;

    case (2u):
    if (((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))) == *resultLengthptr)
    {
      retVal = 1u;
    }
    break;

    case (3u):
    if (((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)]))) >= *resultLengthptr)
    {
      retVal = 1u;
    }
    break;

    default:
    break;
  }

  return retVal;
}
# 2088 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGet_Standard(
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_LengthCheckType lengthCheck)
{
  Std_ReturnType retVal;






  if (Crypto_30_LibCv_Local_KeyElementGetLengthCheck(resultLengthPtr, elementIndex, lengthCheck) == 1u)
  {
    *resultIndexPtr = (Crypto_30_LibCv_KeyElements[(elementIndex)].KeyStorageStartIdxOfKeyElements);

    *resultLengthPtr = ((uint32)(((uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements))]) << 8) | (uint32)(Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageWrittenLengthStartIdxOfKeyElements)+1u)])));
    retVal = 0u;
  }
  else
  {

    retVal = 3u;
  }

  return retVal;
}
# 4272 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint8 * resultPtr,
  uint32 * resultLengthPtr,
  uint8 * errorIdPtr)
{

  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex = 0u;


  if (Crypto_30_LibCv_Local_KeyReadLockGet(cryptoKeyId) != 0u)
  {
    retVal = 2u;
  }
  else
  {
# 4299 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
      if (Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndex) != 0u)
      {

        *errorIdPtr = (4u);

        retVal = 1u;
      }
      else
      {

        if (0u == (((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageValidIdxOfKeyElements))]) & (0x01u)) == (0x01u)))
        {


          retVal = 8u;
        }
        else
        {

          if (0x00u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndex)].KeyElementInfoIdxOfKeyElements))].ReadOfKeyElementInfo)))
          {
            retVal = Crypto_30_LibCv_Local_KeyElementGetNoShe(elementIndex, resultPtr, resultLengthPtr);
          }







          else
          {
            retVal = 6u;
          }
        }
      }
  }
  Crypto_30_LibCv_Local_KeyReadLockRelease(cryptoKeyId);

  return retVal;
}
# 4354 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetNoShe(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  uint8 * resultPtr,
  uint32 * resultLengthPtr)
{
  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_SizeOfKeyStorageType resultIndex;
  Crypto_30_LibCv_LengthCheckType lengthCheck;
  uint32 writtenKeyLength = 0u;
# 4372 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  {
    lengthCheck = (1u);
  }

  writtenKeyLength = *resultLengthPtr;


  retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexBasic(elementIndex, &resultIndex, &writtenKeyLength, lengthCheck, (3u));
# 4397 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  {

    *resultLengthPtr = writtenKeyLength;
  }


  if (retVal == 0u)
  {
    (VStdLib_MemCpy((uint8 * )(resultPtr), (const uint8 * )((&(Crypto_30_LibCv_KeyStorage[(resultIndex)]))), (VStdLib_CntType)(*resultLengthPtr)));
  }

  return retVal;
}
# 4517 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyReadLockGetNotProtected(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal = 1u;

  if (((Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)]) >= (2u)) && ((Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)]) < (0xFFu)))
  {
    (Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)])++;
    retVal = 0u;
  }

  return retVal;
}
# 4540 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_KeyReadLockReleaseNotProtected(
  uint32 cryptoKeyId)
{
  if ((Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)]) > (2u))
  {
    (Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)])--;
  }
}
# 4558 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyWriteLockGetNotProtected(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal = 1u;

  if ((Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)]) == (2u))
  {
    Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)] = ((1u));
    retVal = 0u;
  }

  return retVal;
}
# 4581 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_KeyWriteLockReleaseNotProtected(
  uint32 cryptoKeyId)
{

  if ((Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)]) == (1u))
  {
    Crypto_30_LibCv_KeyLock.raw[(cryptoKeyId)] = ((2u));
  }

}
# 4601 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyReadLockGet(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal;

  ;
  retVal = Crypto_30_LibCv_Local_KeyReadLockGetNotProtected(cryptoKeyId);
  ;

  return retVal;
}
# 4622 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_KeyReadLockRelease(
  uint32 cryptoKeyId)
{
  ;
  Crypto_30_LibCv_Local_KeyReadLockReleaseNotProtected(cryptoKeyId);
  ;
}
# 4639 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyWriteLockGet(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal;

  ;
  retVal = Crypto_30_LibCv_Local_KeyWriteLockGetNotProtected(cryptoKeyId);
  ;

  return retVal;
}
# 4660 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_KeyWriteLockRelease(
  uint32 cryptoKeyId)
{

  ;
  Crypto_30_LibCv_Local_KeyWriteLockReleaseNotProtected(cryptoKeyId);
  ;

}
# 4680 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementSearch(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyElementsType * elementIndex)
{
  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_KeyElementsIterType elementIdx;


  for (elementIdx = (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsStartIdxOfKey); elementIdx < (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsEndIdxOfKey); elementIdx++)
  {
    if (keyElementId == (Crypto_30_LibCv_KeyElements[(elementIdx)].IdOfKeyElements))
    {
      retVal = 0u;
      *elementIndex = (Crypto_30_LibCv_SizeOfKeyElementsType)elementIdx;
      break;
    }
  }

  return retVal;
}
# 4716 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
static __inline__ Std_ReturnType Crypto_30_LibCv_Local_BinarySearchCryptoKeyId(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  uint32 * cryptoKeyId)
{
  Std_ReturnType retVal = 1u;


  if (elementIndex < 8u)
  {
    Crypto_30_LibCv_SizeOfKeyType minKey = 0u;
    Crypto_30_LibCv_SizeOfKeyType maxKey = (Crypto_30_LibCv_SizeOfKeyType)(3u - 1u);
    Crypto_30_LibCv_SizeOfKeyType middleKey = 0u;
    boolean keyFound = 0u;




    while (!keyFound)
    {



      middleKey = (Crypto_30_LibCv_SizeOfKeyType)(((minKey) + (maxKey)) / (uint8)2u);

      if (elementIndex < (Crypto_30_LibCv_Key[(middleKey)].KeyElementsStartIdxOfKey))
      {

        maxKey = (Crypto_30_LibCv_SizeOfKeyType)(middleKey - 1u);
      }
      else if (elementIndex >= (Crypto_30_LibCv_Key[(middleKey)].KeyElementsEndIdxOfKey))
      {

        minKey = (Crypto_30_LibCv_SizeOfKeyType)(middleKey + 1u);
      }
      else
      {
        *cryptoKeyId = middleKey;
        retVal = 0u;
        keyFound = 1u;
      }
    }
  }

  return retVal;
}
# 4777 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyElementIdsGet(
  uint32 cryptoKeyId,
  uint32 * keyElementIdsPtr,
  uint32 * keyElementIdsLengthPtr)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (keyElementIdsPtr == ((void *)0))
  {

    errorId = (4u);
  }
  else if (keyElementIdsLengthPtr == ((void *)0))
  {
    errorId = (4u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {

    Crypto_30_LibCv_KeyElementsIterType elementIndex = (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsStartIdxOfKey);
    uint8 idx = 0u;
    retVal = 0u;


    while (elementIndex < (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsEndIdxOfKey))
    {

      if (idx < *(keyElementIdsLengthPtr))
      {
        keyElementIdsPtr[idx] = (Crypto_30_LibCv_KeyElements[(elementIndex)].IdOfKeyElements);
      }
      else
      {

        retVal = 3u;

        errorId = 3u;
        break;
      }

      idx++;
      elementIndex++;
    }


    *keyElementIdsLengthPtr = idx;
  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x11u),
                          errorId);
  }




  return retVal;
}
# 4877 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyCopy(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId)
{

  Std_ReturnType retVal = 1u;
  Std_ReturnType retValBuf = 1u;
  Crypto_30_LibCv_KeyElementsIterType elementIndexSrc;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst = 0u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else if (targetCryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else

  {

    if (Crypto_30_LibCv_Local_KeyWriteLockGet(targetCryptoKeyId) != 0u)
    {
      retVal = 2u;
    }
    else
    {

      if (Crypto_30_LibCv_Local_KeyReadLockGet(cryptoKeyId) != 0u)
      {
        retVal = 2u;
      }
      else
      {
        retVal = 8u;

        for (elementIndexSrc = (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsStartIdxOfKey); elementIndexSrc < (Crypto_30_LibCv_Key[(cryptoKeyId)].KeyElementsEndIdxOfKey); elementIndexSrc++)
        {

          if (Crypto_30_LibCv_Local_KeyElementSearch(targetCryptoKeyId, (Crypto_30_LibCv_KeyElements[(elementIndexSrc)].IdOfKeyElements), &elementIndexDst) == 0u)
          {

            retValBuf = Crypto_30_LibCv_Local_KeyElementCopy((Crypto_30_LibCv_SizeOfKeyElementsType)elementIndexSrc, elementIndexDst, targetCryptoKeyId);
            if (retVal != 0u)
            {
              retVal = retValBuf;
            }
          }
        }
        Crypto_30_LibCv_Local_KeyReadLockRelease(cryptoKeyId);
      }
      Crypto_30_LibCv_Local_KeyWriteLockRelease(targetCryptoKeyId);
    }
  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x10u),
                          errorId);
  }




  return retVal;
}
# 4981 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyElementCopy(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId)
{

  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc = 0u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst = 0u;
  uint8 errorId = (4u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else if (targetCryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {

    if (Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndexSrc) != 0u)
    {



      retVal = 1u;
    }
    else
    {


      if (Crypto_30_LibCv_Local_KeyElementSearch(targetCryptoKeyId, targetKeyElementId, &elementIndexDst) == 0u)
      {


        errorId = (255u);


        if (Crypto_30_LibCv_Local_KeyWriteLockGet(targetCryptoKeyId) != 0u)
        {
          retVal = 2u;
        }
        else
        {


          if (cryptoKeyId == targetCryptoKeyId)
          {
            retVal = Crypto_30_LibCv_Local_KeyElementCopy(elementIndexSrc, elementIndexDst, targetCryptoKeyId);
          }
          else if (Crypto_30_LibCv_Local_KeyReadLockGet(cryptoKeyId) != 0u)
          {
            retVal = 2u;
          }
          else
          {
            retVal = Crypto_30_LibCv_Local_KeyElementCopy(elementIndexSrc, elementIndexDst, targetCryptoKeyId);
            Crypto_30_LibCv_Local_KeyReadLockRelease(cryptoKeyId);
          }
          Crypto_30_LibCv_Local_KeyWriteLockRelease(targetCryptoKeyId);
        }
      }
    }
  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x0Fu),
                          errorId);
  }



  return retVal;
}
# 5095 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyElementCopyPartial(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 keyElementSourceOffset,
  uint32 keyElementTargetOffset,
  uint32 keyElementCopyLength,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId)
{

  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexSrc = 0u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndexDst = 0u;
  uint8 errorId = (4u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else if (targetCryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {

    if (Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndexSrc) != 0u)
    {



    }
    else
    {


      if (Crypto_30_LibCv_Local_KeyElementSearch(targetCryptoKeyId, targetKeyElementId, &elementIndexDst) == 0u)
      {


        errorId = (255u);


        if (Crypto_30_LibCv_Local_KeyWriteLockGet(targetCryptoKeyId) != 0u)
        {
          retVal = 2u;
        }
        else
        {


          if (cryptoKeyId == targetCryptoKeyId)
          {
            retVal = Crypto_30_LibCv_Local_KeyElementCopyPartial(elementIndexSrc, elementIndexDst, targetCryptoKeyId, keyElementSourceOffset, keyElementTargetOffset, keyElementCopyLength);
          }
          else if (Crypto_30_LibCv_Local_KeyReadLockGet(cryptoKeyId) != 0u)
          {
            retVal = 2u;
          }
          else
          {
            retVal = Crypto_30_LibCv_Local_KeyElementCopyPartial(elementIndexSrc, elementIndexDst, targetCryptoKeyId, keyElementSourceOffset, keyElementTargetOffset, keyElementCopyLength);
            Crypto_30_LibCv_Local_KeyReadLockRelease(cryptoKeyId);
          }
          Crypto_30_LibCv_Local_KeyWriteLockRelease(targetCryptoKeyId);
        }
      }
    }
  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x13u),
                          errorId);
  }



  return retVal;
}
# 5205 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_KeyElementSetInternalStandard(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength)
{
  Crypto_30_LibCv_KeyStorageIterType keyStorageIndex;
  uint32 maxLength = ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo));

  keyStorageIndex = (Crypto_30_LibCv_KeyElements[(elementIndex)].KeyStorageStartIdxOfKeyElements);


  (VStdLib_MemCpy((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndex)]))), (const uint8 * )(keyPtr), (VStdLib_CntType)(keyLength)));

  if (maxLength > keyLength)
  {
    (VStdLib_MemSet(((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndex + keyLength)])))), 0, ((VStdLib_CntType)((uint32)(maxLength - keyLength)))));
  }

  Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyIdSearch(elementIndex, keyLength);
}
# 5237 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_KeyElementSetInternalStandardWithCryptoKeyId(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength)
{
  Crypto_30_LibCv_KeyStorageIterType keyStorageIndex;
  uint32 maxLength = ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo));

  keyStorageIndex = (Crypto_30_LibCv_KeyElements[(elementIndex)].KeyStorageStartIdxOfKeyElements);


  (VStdLib_MemCpy((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndex)]))), (const uint8 * )(keyPtr), (VStdLib_CntType)(keyLength)));

  if (maxLength > keyLength)
  {
    (VStdLib_MemSet(((uint8 * )((&(Crypto_30_LibCv_KeyStorage[(keyStorageIndex + keyLength)])))), 0, ((VStdLib_CntType)((uint32)(maxLength - keyLength)))));
  }

  Crypto_30_LibCv_SetKeyElementWrittenLengthWithCryptoKeyId(cryptoKeyId, elementIndex, keyLength);
}
# 5271 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementSetInternal(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength,
  Crypto_30_LibCv_WriteOfKeyElementInfoType writeAccess)
{

  Std_ReturnType retVal = 1u;
# 5290 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  {
    {

      if (((((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) & (uint8)((0x80u))) == ((0x80u))))
      {
        retVal = 7u;
      }


      else if ((keyLength == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo))) ||
        ((((0x02u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].MaskedBitsOfKeyElementInfo) & 0x02u))) == 1u) &&
               (keyLength <= ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].LengthOfKeyElementInfo)))))
      {
        if (writeAccess >= ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[(elementIndex)].KeyElementInfoIdxOfKeyElements))].WriteOfKeyElementInfo)))
        {
          Crypto_30_LibCv_KeyElementSetInternalStandardWithCryptoKeyId(cryptoKeyId, elementIndex, keyPtr, keyLength);
          retVal = 0u;
        }
        else
        {
          retVal = 7u;
        }
      }
      else
      {

        retVal = 10u;
      }
    }
  }
  return retVal;
}
# 5384 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyElementSet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  const uint8 * keyPtr,
  uint32 keyLength)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {
    errorId = (0u);
  }

  else if (keyPtr == ((void *)0))
  {
    errorId = (2u);
  }
  else

  if (keyLength == 0u)
  {
    errorId = (5u);
  }
  else


  if (cryptoKeyId >= 3u)
  {
    errorId = (4u);
  }
  else
  {


    Crypto_30_LibCv_SizeOfKeyElementsType elementIndex = 0u;




    if (Crypto_30_LibCv_Local_KeyWriteLockGet(cryptoKeyId) != 0u)
    {
      retVal = 2u;
    }
    else
    {
# 5443 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
        if (Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndex) != 0u)
        {

          errorId = (4u);
          retVal = 1u;
        }
        else
        {

          retVal = Crypto_30_LibCv_Local_KeyElementSetInternal(cryptoKeyId, elementIndex, keyPtr, keyLength, 0x00u);
# 5463 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
          if (retVal == 0u)
          {

            ((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))] = (((uint8)(((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) & ((0x00u) | (0x80u)))))));
            if (((0x04u == ((Crypto_30_LibCv_KeyElementInfo[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyElementInfoIdxOfKeyElements))].MaskedBitsOfKeyElementInfo) & 0x04u))))
            {
              ((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))] = (((uint8)(((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) | ((0x80u)))))));
            }
          }
        }
      Crypto_30_LibCv_Local_KeyWriteLockRelease(cryptoKeyId);
    }
  }



  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x04u),
                          errorId);
  }




  return retVal;
}
# 5507 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyValidSet(
  uint32 cryptoKeyId)
{

  uint8 errorId = (255u);
  Std_ReturnType retVal = 1u;
  boolean writeBlock;




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {
    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {
    errorId = (4u);
  }
  else
  {


    if (Crypto_30_LibCv_Local_KeyWriteLockGet(cryptoKeyId) != 0u)
    {
      retVal = 2u;
    }
    else
    {

      writeBlock = Crypto_30_LibCv_SetKeyState(cryptoKeyId, (0x01u));




      Crypto_30_LibCv_Local_KeyWriteLockRelease(cryptoKeyId);







      ;

      retVal = 0u;
    }
  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x05u),
                          errorId);
  }




  return retVal;
}
# 5588 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexBasic(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType)
{

  Std_ReturnType retVal = 1u;
# 5619 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
  ;

  {
    {

      retVal = Crypto_30_LibCv_Local_KeyElementGet_Standard(resultIndexPtr, (uint32 * )resultLengthPtr, elementIndex, lengthCheck);
    }
  }

  return retVal;
}
# 5644 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType)
{

  Std_ReturnType retVal;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex = 0u;



  if (Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndex) != 0u)
  {
    retVal = 8u;
  }

  else if (0u == (((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[((elementIndex))].KeyStorageValidIdxOfKeyElements))]) & (0x01u)) == (0x01u)))
  {

    retVal = 9u;
  }
  else
  {

    retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexBasic(elementIndex, resultIndexPtr, resultLengthPtr, lengthCheck, serviceType);
  }

  return retVal;
}
# 5687 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndex(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck)
{

  Std_ReturnType retVal;


  retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(cryptoKeyId, keyElementId, resultIndexPtr, resultLengthPtr, lengthCheck, (4u));

  return retVal;
}
# 5717 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexJob(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck)
{

  Std_ReturnType retVal;


  retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(cryptoKeyId, keyElementId, resultIndexPtr, resultLengthPtr, lengthCheck, (4u));


  if (retVal == 0u)
  {

  }
  else if (retVal == 9u)
  {

  }
  else if (retVal == 3u)
  {
    retVal = 10u;
  }
  else
  {
    retVal = 1u;
  }

  return retVal;
}
# 5766 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_KeyElementGetStorageIndexJobOptional(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck)
{

  Std_ReturnType retVal;


  retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(cryptoKeyId, keyElementId, resultIndexPtr, resultLengthPtr, lengthCheck, (4u));


  if (retVal == 0u)
  {

  }
  else if (retVal == 9u)
  {

  }
  else if (retVal == 8u)
  {

  }
  else
  {
    retVal = 10u;
  }

  return retVal;
}
# 5814 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Local_GetElementsIndexJob(
  uint32 cryptoKeyId,
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType numberOfElements,
  Crypto_30_LibCv_LengthCheckType lengthCheck
  )
{

  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_KeyElementGetSizeType i;
  for (i = 0; i < numberOfElements; i++)
  {
    retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexJob(cryptoKeyId, keyElements[i].keyElementId, &keyElements[i].keyElementIndex, &keyElements[i].keyElementLength, lengthCheck);
    if (retVal != 0u)
    {
      break;
    }
  }
  return retVal;
}
# 5845 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_ElementGetterSetId(
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType elementNumber,
  uint32 keyElementId)
{
  keyElements[elementNumber].keyElementId = keyElementId;
}
# 5863 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
void Crypto_30_LibCv_Local_ElementGetterSetIdAndLength(
  Crypto_30_LibCv_KeyElementGetType * keyElements,
  Crypto_30_LibCv_KeyElementGetSizeType elementNumber,
  uint32 keyElementId,
  uint32 keyLength)
{
  keyElements[elementNumber].keyElementId = keyElementId;
  keyElements[elementNumber].keyElementLength = keyLength;
}
# 5887 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyElementGet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint8 * resultPtr,
  uint32 * resultLengthPtr)
{

  uint8 errorId = (255u);
  Std_ReturnType retVal = 1u;




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (resultPtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (resultLengthPtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (*resultLengthPtr == 0u)
  {

    errorId = (5u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {
    retVal = Crypto_30_LibCv_Local_KeyElementGet(cryptoKeyId, keyElementId, resultPtr, resultLengthPtr, &errorId);
  }



  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x06u),
                          errorId);
  }




  return retVal;
}
# 5963 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_RandomSeed(
  uint32 cryptoKeyId,
  const uint8 * entropyPtr,
  uint32 entropyLength)
{

  uint8 errorId = (255u);
  Std_ReturnType retVal = 1u;



  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (entropyPtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (entropyLength == 0u)
  {

    errorId = (5u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {

    retVal = Crypto_30_LibCv_Local_RandomSeed(cryptoKeyId, entropyPtr, entropyLength);






  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x0Du),
                          errorId);
  }




  return retVal;
}
# 6039 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyGenerate(
  uint32 cryptoKeyId)
{

  uint8 errorId = (255u);
  Std_ReturnType retVal = 1u;




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {




    retVal = 1u;
    ;

  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x07u),
                          errorId);
  }




  return retVal;
}
# 6106 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyDerive(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else if (targetCryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {
# 6173 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
    retVal = 1u;
    ;
    ;

  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u), (0u), (0x08u), errorId);
  }




  return retVal;
}
# 6207 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcPubVal(
  uint32 cryptoKeyId,
  uint8 * publicValuePtr,
  uint32 * publicValueLengthPtr)
{

  uint8 errorId = (255u);
  Std_ReturnType retVal = 1u;




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (publicValuePtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (publicValueLengthPtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (*publicValueLengthPtr == 0u)
  {

    errorId = (5u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }


  else
  {
# 6265 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
    retVal = 1u;
    ;
    ;
    ;

  }



  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x09u),
                          errorId);
  }




  return retVal;
}
# 6302 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcSecret(
  uint32 cryptoKeyId,
  const uint8 * partnerPublicValuePtr,
  uint32 partnerPublicValueLength)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (partnerPublicValuePtr == ((void *)0))
  {

    errorId = (2u);
  }
  else if (partnerPublicValueLength == 0u)
  {

    errorId = (5u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {





    retVal = 1u;
    ;
    ;
    ;

  }




  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x0Au),
                          errorId);
  }




  return retVal;
}
# 6379 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_CertificateParse(
  uint32 cryptoKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }
  else


  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {


    ;

  }



  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x0Bu),
                          errorId);
  }




  return retVal;
}
# 6438 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_CertificateVerify(
  uint32 cryptoKeyId,
  uint32 verifyCryptoKeyId,
  Crypto_VerifyResultType * verifyPtr)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (255u);




  if (((Crypto_30_LibCv_ModuleInitialized & (0x01u)) != (0x01u)))
  {

    errorId = (0u);
  }

  else if (verifyPtr == ((void *)0))
  {

    errorId = (2u);
  }
  else

  if (cryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else if (verifyCryptoKeyId >= 3u)
  {

    errorId = (4u);
  }
  else
  {

    ;
    ;
    ;

  }



  if (errorId != (255u))
  {
    (void)Det_ReportError((uint16)(114u),
                          (0u),
                          (0x12u),
                          errorId);
  }




  return retVal;
}
# 7002 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_GetKeyFlags(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_KeyFlagType * keyFlagsPtr)
{

  Std_ReturnType retVal = 1u;
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex = 0u;


  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {

    retVal = Crypto_30_LibCv_Local_KeyElementSearch(cryptoKeyId, keyElementId, &elementIndex);
  }

  if (retVal == 0u)
  {



    if (((((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) & (uint8)((0x01u))) == ((0x01u))))
    {
      keyFlagsPtr->isKeyValid = 1u;
    }
    else
    {
      keyFlagsPtr->isKeyValid = 0u;
    }



    if (((((Crypto_30_LibCv_KeyStorage[((Crypto_30_LibCv_KeyElements[(((elementIndex)))].KeyStorageValidIdxOfKeyElements))])) & (uint8)((0x80u))) == ((0x80u))))
    {
      keyFlagsPtr->write_protection = 1u;
    }
    else
    {
      keyFlagsPtr->write_protection = 0u;
    }
    {
# 7118 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
      {
        keyFlagsPtr->isSheKey = 0u;
        keyFlagsPtr->boot_protection = 0u;
        keyFlagsPtr->debugger_protection = 0u;
        keyFlagsPtr->key_usage = 0u;
        keyFlagsPtr->disable_wildcard = 0u;
        keyFlagsPtr->cmac_usage = 0u;
      }
    }
  }
  return retVal;
}
# 7142 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementGetStorageIndex(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyStorageType * resultIndexPtr,
  uint32 * resultLengthPtr,
  Crypto_30_LibCv_LengthCheckType lengthCheck,
  Crypto_30_LibCv_ServiceType serviceType)
{

  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {

    retVal = Crypto_30_LibCv_Local_KeyElementGetStorageIndexExtended(
      cryptoKeyId,
      keyElementId,
      resultIndexPtr,
      resultLengthPtr,
      lengthCheck,
      serviceType);
  }

  return retVal;
}
# 7182 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyReadLockGetNotProtected(
  uint32 cryptoKeyId)
{

  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {

    retVal = Crypto_30_LibCv_Local_KeyReadLockGetNotProtected(cryptoKeyId);
  }

  return retVal;
}
# 7211 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyReadLockReleaseNotProtected(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {

    Crypto_30_LibCv_Local_KeyReadLockReleaseNotProtected(cryptoKeyId);
    retVal = 0u;
  }

  return retVal;
}
# 7240 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementSearch(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  Crypto_30_LibCv_SizeOfKeyElementsType * elementIndex)
{
  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {
    retVal = Crypto_30_LibCv_Local_KeyElementSearch(
      cryptoKeyId,
      keyElementId,
      elementIndex);
  }

  return retVal;
}
# 7272 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyWriteLockGetNotProtected(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {
    retVal = Crypto_30_LibCv_Local_KeyWriteLockGetNotProtected(cryptoKeyId);
  }

  return retVal;
}
# 7299 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyWriteLockReleaseNotProtected(
  uint32 cryptoKeyId)
{
  Std_ReturnType retVal = 1u;

  if (cryptoKeyId >= 3u)
  {
    retVal = 1u;
  }
  else
  {
    Crypto_30_LibCv_Local_KeyWriteLockReleaseNotProtected(cryptoKeyId);
    retVal = 0u;
  }

  return retVal;
}
# 7327 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c"
Std_ReturnType Crypto_30_LibCv_Api_KeyElementSetInternalStandard(
  Crypto_30_LibCv_SizeOfKeyElementsType elementIndex,
  const uint8 * keyPtr,
  uint32 keyLength)
{
  Std_ReturnType retVal = 1u;

  if (elementIndex >= 8u)
  {
    retVal = 1u;
  }
  else
  {
    Crypto_30_LibCv_KeyElementSetInternalStandard(elementIndex, keyPtr, keyLength);
    retVal = 0u;
  }

  return retVal;
}


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 7349 "../../../../CBD2300515_D00/BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.c" 2
