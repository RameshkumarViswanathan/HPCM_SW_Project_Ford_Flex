# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
# 35 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h" 1
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h" 1
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h" 1
# 37 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
# 1 "GenData/vSecPrim_Cfg.h" 1
# 51 "GenData/vSecPrim_Cfg.h"
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
# 52 "GenData/vSecPrim_Cfg.h" 2
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
# 38 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h" 2
# 77 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
typedef uint8 actPlatformUint8;
typedef uint16 actPlatformUint16;
typedef uint32 actPlatformUint32;
# 90 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
typedef unsigned long long actPlatformUint64;
# 41 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actConfig.h" 1
# 42 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h" 2






typedef actPlatformUint8 actU8;
typedef actPlatformUint16 actU16;
typedef actPlatformUint32 actU32;

typedef actPlatformUint64 actU64;
# 63 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
typedef actU32 actLengthType;
typedef actLengthType actBNLENGTH;
typedef unsigned char actBoolean;

typedef actLengthType actDRBGReseedCounterType;


typedef const actU8 * actPKey;


typedef const actU8 * actPROMU8;
# 132 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
typedef actU32 actBNDIGIT;
typedef actU64 actBNDDIGIT;
# 147 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
typedef actU32 actRETURNCODE;
# 578 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
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
# 655 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
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
# 843 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
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
# 1265 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
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
# 41 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h" 2
# 56 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 57 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h" 2
# 80 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAInitPublicKeyOperation(
  const actU8 * modulus,
  actLengthType modulus_len,
  const actU8 * public_exponent,
  actLengthType public_exponent_len,
  actRSAPRIMSTRUCT * wkspBuf,
  void ( * watchdog)(void));
# 113 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAPublicKeyOperation(
  const actU8 * message,
  actLengthType message_len,
  actU8 * cipher,
  actLengthType * cipher_len,
  actRSAPRIMSTRUCT * wkspBuf,
  void ( * watchdog)(void));
# 133 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actLengthType actRSAPublicKeyGetBitLength(
  const actBNRING * n_ring);
# 158 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAInitPrivateKeyOperation(
  const actU8 * modulus,
  actLengthType modulus_len,
  const actU8 * private_exponent,
  actLengthType private_exponent_len,
  actRSAPRIMSTRUCT * wkspBuf,
  void ( * watchdog)(void));
# 191 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAPrivateKeyOperation(
  const actU8 * cipher,
  actLengthType cipher_len,
  actU8 * message,
  actLengthType * message_len,
  actRSAPRIMSTRUCT * wkspBuf,
  void ( * watchdog)(void));
# 211 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actLengthType actRSAPrivateKeyGetBitLength(
  const actBNRING * n_ring);
# 245 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAInitPrivateKeyOperationCRT(
  const actU8 * prime_p,
  actLengthType prime_p_len,
  const actU8 * prime_q,
  actLengthType prime_q_len,
  const actU8 * private_exponent_dp,
  actLengthType private_exponent_dp_len,
  const actU8 * private_exponent_dq,
  actLengthType private_exponent_dq_len,
  const actU8 * q_inverse_mod_p,
  actLengthType q_inverse_mod_p_len,
  actRSACRTSTRUCT * wsCRT,
  void ( * watchdog)(void));
# 286 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
actRETURNCODE actRSAPrivateKeyOperationCRT(
  const actU8 * cipher,
  actLengthType cipher_len,
  actU8 * message,
  actLengthType * message_len,
  actRSACRTSTRUCT * wsCRT,
  void ( * watchdog)(void));




# 1 "GenData/vSecPrim_MemMap.h" 1
# 298 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h" 2
# 36 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h" 1
# 57 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 58 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h" 2
# 83 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h"
extern actRETURNCODE actRSAInitExponentiation(
  const actU8 * modulus,
  actLengthType modulus_len,
  const actU8 * exponent,
  actLengthType exponent_len,
  actRSAPRIMSTRUCT * wksp,
  actU16 key_flag,
  void ( * watchdog)(void));
# 118 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h"
extern actRETURNCODE actRSAExponentiation(
  const actU8 * cipher,
  actLengthType cipher_len,
  actU8 * message,
  actLengthType * message_len,
  actRSAPRIMSTRUCT * wksp,
  void ( * watchdog)(void));


# 1 "GenData/vSecPrim_MemMap.h" 1
# 128 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h" 2
# 37 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h" 1
# 122 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 123 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h" 2
# 143 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
extern void actBNLoadLE(
  actBNDIGIT * bigNum,
  const actU8 * bytes,
  const actU32 byteLength);
# 162 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
extern void actBNStoreLE(
  actU8 * bytes,
  const actBNDIGIT * bigNum,
  const actLengthType bnLength);
# 181 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNCopy(
  actBNDIGIT * a,
  const actBNDIGIT * b,
  const actLengthType length);
# 199 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actLengthType actBNGetBitLength(
  const actBNDIGIT * a,
  const actLengthType length);
# 219 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actRETURNCODE actBNSetBit(
  actBNDIGIT * a,
  const actLengthType length,
  const actLengthType bit_pos);
# 237 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNSet(
  actBNDIGIT * a,
  const actLengthType length,
  const actBNDIGIT value);
# 256 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actU8 actBNIsZero(
  const actBNDIGIT * a,
  const actLengthType length);
# 277 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actRETURNCODE actBNCompare(
  const actBNDIGIT * a,
  const actBNDIGIT * b,
  const actLengthType length);
# 297 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNSetOctetString(
  actBNDIGIT * a,
  actLengthType length,
  const actU8 * in,
  const actLengthType in_len);
# 318 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNSetOctetStringROM(
  actBNDIGIT * a,
  actLengthType length,
  const actU8 * in,
  const actLengthType in_len);
# 339 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNOctetString(
  actU8 * out,
  actLengthType out_len,
  const actBNDIGIT * a,
  const actLengthType length);
# 363 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actU8 actBNAdd(
  const actBNDIGIT * a,
  const actBNDIGIT * b,
  actBNDIGIT * c,
  const actLengthType length);
# 387 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNSub(
  const actBNDIGIT * a,
  const actBNDIGIT * b,
  actBNDIGIT * c,
  const actLengthType length);
# 411 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNSubDigit(
  const actBNDIGIT * a,
  const actBNDIGIT b,
  actBNDIGIT * c,
  const actBNLENGTH length);
# 436 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNMult(
  const actBNDIGIT * a,
  const actLengthType a_length,
  const actBNDIGIT * b,
  const actLengthType b_length,
  actBNDIGIT * c,
  void ( * watchdog)(void));
# 458 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNDiv2(
  actBNDIGIT * a,
  actU8 first_carry,
  actLengthType length);
# 488 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actRETURNCODE actBNReduce(
  actBNDIGIT * a,
  actLengthType a_length,
  actBNDIGIT * b,
  actLengthType b_length,
  actBNDIGIT * r,
  void ( * watchdog)(void));
# 519 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNModAdd(
  const actBNDIGIT * a,
  const actBNDIGIT * b,
  actBNDIGIT * c,
  const actBNRING * Ring,
  void ( * watchdog)(void));
# 549 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNModSub(
  const actBNDIGIT * a,
  const actBNDIGIT * b,
  actBNDIGIT * c,
  const actBNRING * Ring,
  void ( * watchdog)(void));
# 577 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNModDiv2(
  actBNDIGIT * a,
  const actBNRING * Ring,
  void ( * watchdog)(void));
# 615 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNMontMul(
  const actBNDIGIT * x,
  const actBNDIGIT * y,
  actBNDIGIT * A,
  const actBNRING * Ring,
  void ( * watchdog)(void));
# 644 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNMontMulCopy(
  actBNDIGIT * x,
  const actBNDIGIT * y,
  actBNDIGIT * A,
  const actBNRING * Ring,
  void ( * watchdog)(void));
# 676 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNModExp(
  const actBNDIGIT * gR,
  const actBNDIGIT * e,
  actBNDIGIT * AR,
  const actBNRING * Ring,
  actBNDIGIT * t[],
  void ( * watchdog)(void));
# 707 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
actRETURNCODE actBNModRandomize(
  actBNDIGIT * x,
  const actBNRING * Ring,
  actBNDIGIT * t[],
  void ( * watchdog)(void));
# 739 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNFieldInversion(
  const actBNDIGIT * gR,
  actBNDIGIT * g_invR,
  const actBNRING * Field,
  actBNDIGIT * t[],
  void ( * watchdog)(void));
# 761 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
void actBNOddInvModBase(
  actBNDIGIT * inverse,
  const actBNDIGIT * value);






# 1 "GenData/vSecPrim_MemMap.h" 1
# 771 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h" 2
# 38 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h" 1
# 39 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
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
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h" 2
# 110 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 111 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h" 2
# 128 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
void actWatchdogTriggerFunction( void ( * watchdog)(void));
# 144 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actMemSet(void * dest, actU8 fill, actLengthType count);
# 160 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actMemcpy(void * dest, const void * src, actU32 count);
# 176 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROM(void * dest, const void * src, actLengthType count);
# 192 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROMRAM(void * dest, const actU8 * src, actLengthType count);
# 209 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp(const void * buf1, const void * buf2, actLengthType count);
# 226 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROM(const actU8 * buf1, const actU8 * buf2, actLengthType count);
# 243 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROMRAM(const void * buf1, const actU8 * buf2, actLengthType count);
# 258 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actXOR(void * buf1, const void * buf2, actU32 count);
# 276 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU8 actAddBE(actU8 * tgt, const actU8 * src, const actU32 length, const actU8 carry);
# 291 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU8 actLEtoU8(const actU8 * src);
# 306 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU8toLE(actU8 * tgt, const actU8 in);
# 323 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU8(actU8 * tgt, const actU8 * src, const actU32 length);
# 340 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyU8toLE(actU8 * tgt, const actU8 * src, const actU32 length);
# 355 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU16 actLEtoU16(const actU8 * src);
# 370 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU16toLE(actU8 * tgt, const actU16 src);
# 387 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU16(actU16 * tgt, const actU8 * src, const actU32 length);
# 404 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyU16toLE(actU8 * tgt, const actU16 * src, const actU32 length);
# 419 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU32 actBEtoU32(const actU8 * src);
# 434 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU32 actLEtoU32(const actU8 * src);
# 449 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU32toBE(actU8 * tgt, const actU32 src);
# 464 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU32toLE(actU8 * tgt, const actU32 src);
# 481 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 501 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 521 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyU32toBE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 541 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyU32toLE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 560 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU64 actBEtoU64 (const actU8 * src);
# 575 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU64toBE(actU8 * tgt, const actU64 src);
# 592 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU64(
  actU64 * tgt,
  const actU8 * src,
  const actU32 length);
# 612 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actCpyU64toBE(
  actU8 * tgt,
  const actU64 * src,
  const actU32 length);
# 630 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 actU64 actLEtoU64(const actU8 * src);
# 645 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
 void actU64toLE(actU8 * tgt, const actU64 src);







# 1 "GenData/vSecPrim_MemMap.h" 1
# 654 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h" 2
# 39 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actWatchdog.h" 1
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2






# 1 "GenData/vSecPrim_MemMap.h" 1
# 47 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
# 66 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
actRETURNCODE actRSAInitPrivateKeyOperationCRT(
  const actU8 * prime_p,
  actLengthType prime_p_len,
  const actU8 * prime_q,
  actLengthType prime_q_len,
  const actU8 * private_exponent_dp,
  actLengthType private_exponent_dp_len,
  const actU8 * private_exponent_dq,
  actLengthType private_exponent_dq_len,
  const actU8 * q_inverse_mod_p,
  actLengthType q_inverse_mod_p_len,
  actRSACRTSTRUCT * wsCRT,
  void ( * watchdog)(void))
{
  actRETURNCODE retVal;
  actLengthType p_length = (((prime_p_len)+((((32u)))>>3)-1u)/((((32u)))>>3));
  actLengthType q_length = (((prime_q_len)+((((32u)))>>3)-1u)/((((32u)))>>3));

  actBNDIGIT * p = wsCRT->wsUnion1.wsCRTInit.primeP;
  actBNDIGIT * q = wsCRT->wsUnion1.wsCRTInit.primeQ;
  actBNDIGIT * dp = wsCRT->wsUnion1.wsCRTInit.primeDP;
  actBNDIGIT * dq = wsCRT->wsUnion1.wsCRTInit.primeDQ;
  actBNDIGIT * qInv = wsCRT->wsUnion1.wsCRTInit.qInv;
  actBNDIGIT * one = wsCRT->wsUnion1.wsCRTInit.one;
  actBNDIGIT * t6 = wsCRT->keySizeBuffer.fullModulus;

  actWatchdogTriggerFunction(watchdog);


  if ((private_exponent_dp_len > prime_p_len) || (private_exponent_dq_len > prime_q_len) || (q_inverse_mod_p_len > prime_p_len))
  {
    retVal = (0xFBu);
  }





  else if ((p_length > ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))) || (q_length > ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))) || ((p_length + q_length) > ((2048u/((32u))) + (32u / ((32u))))))
  {
    retVal = (0xF4u);
  }
  else
  {

    actBNSetOctetStringROM(p, p_length, prime_p, prime_p_len);
    actBNSetOctetStringROM(q, q_length, prime_q, prime_q_len);
    actBNSetOctetStringROM(dp, p_length, private_exponent_dp, private_exponent_dp_len);
    actBNSetOctetStringROM(dq, q_length, private_exponent_dq, private_exponent_dq_len);
    actBNSetOctetStringROM(qInv, p_length, q_inverse_mod_p, q_inverse_mod_p_len);

    actWatchdogTriggerFunction(watchdog);



    actBNMult(p, p_length, q, q_length, t6, ((void (*)(void))0));

    wsCRT->n_bytes = (actBNGetBitLength(t6, p_length + q_length) + 7u) / 8u;


    if (actBNIsZero(qInv, p_length) == 1u)
    {
      retVal = (0xFBu);
    }
    else if (actBNCompare(qInv, p, p_length) >= (0x11u))
    {
      retVal = (0xFBu);
    }
    else
    {
      actBNSet ((one), ((((p_length)>(q_length))? (p_length):(q_length))), ((actBNDIGIT) 0));
      one[0] = (actBNDIGIT)1;


      actBNSub(p, one, p, p_length);
      actBNSub(q, one, q, q_length);

      if (actBNIsZero(dp, p_length) == 1u)
      {
        retVal = (0xFBu);
      }
      else if (actBNCompare(dp, p, p_length) >= (0x11u))
      {
        retVal = (0xFBu);
      }
      else if (actBNIsZero(dq, q_length) == 1u)
      {
        retVal = (0xFBu);
      }
      else if (actBNCompare(dq, q, q_length) >= (0x11u))
      {
        retVal = (0xFBu);
      }
      else
      {
        wsCRT->p = prime_p;
        wsCRT->p_bytes = prime_p_len;
        wsCRT->q = prime_q;
        wsCRT->q_bytes = prime_q_len;
        wsCRT->dp = private_exponent_dp;
        wsCRT->dp_bytes = private_exponent_dp_len;
        wsCRT->dq = private_exponent_dq;
        wsCRT->dq_bytes = private_exponent_dq_len;
        wsCRT->q_inv = q_inverse_mod_p;
        wsCRT->q_inv_bytes = q_inverse_mod_p_len;

        retVal = (0x00u);
      }
    }
  }

  actWatchdogTriggerFunction(watchdog);
  return retVal;
}
# 193 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
actRETURNCODE actRSAPrivateKeyOperationCRT(
  const actU8 * cipher,
  actLengthType cipher_len,
  actU8 * message,
  actLengthType * message_len,
  actRSACRTSTRUCT * wsCRT,
  void ( * watchdog)(void))
{
  actRETURNCODE rc;
  actBNRING * ring;


  actBNDIGIT * m1;
  actBNDIGIT * m2;

  const actBNDIGIT * fullModulus;
  actBNDIGIT * origCipherBeforeReduction;
  actBNDIGIT * reducedCipherInDigits;
  actU8 * reducedCipherInBytes;


  actBNDIGIT * m2Copy;
  actBNDIGIT * m2ModP;
  actBNDIGIT * m1m2;
  actBNDIGIT * qInv;
  actBNDIGIT * qInvM1M2R;
  actBNDIGIT * qInvM1M2;


  actBNDIGIT * primeQ;
  actBNDIGIT * qInvM1M2q;
  actBNDIGIT * m2Padded;
  actBNDIGIT * msg;


  actLengthType p_bytes = wsCRT->p_bytes;
  actLengthType q_bytes = wsCRT->q_bytes;
  actLengthType n_bytes = wsCRT->n_bytes;


  actLengthType p_length = (((p_bytes)+((((32u)))>>3)-1u)/((((32u)))>>3));
  actLengthType q_length = (((q_bytes)+((((32u)))>>3)-1u)/((((32u)))>>3));
  actLengthType n_length = (((n_bytes)+((((32u)))>>3)-1u)/((((32u)))>>3));

  actWatchdogTriggerFunction(watchdog);


  if (cipher_len > n_bytes)
  {
    return (0x90u);
  }


  if (*message_len < n_bytes)
  {
    return (0xF4u);
  }


  fullModulus = wsCRT->keySizeBuffer.fullModulus;
  origCipherBeforeReduction = wsCRT->wsUnion2.wsCRTCipherOperations.origCipherBeforeReduction;
  reducedCipherInBytes = wsCRT->wsUnion2.wsCRTCipherOperations.reducedCipherInBytes;
  reducedCipherInDigits = wsCRT->wsUnion2.wsCRTCipherOperations.reducedCipherInDigits;



  actBNSetOctetString(origCipherBeforeReduction, n_length, cipher, cipher_len);

  if (actBNIsZero(origCipherBeforeReduction, n_length) == 1u)
  {
    return (0x90u);
  }

  if (actBNCompare(origCipherBeforeReduction, fullModulus, n_length) >= (0x11u))
  {
    return (0x90u);
  }





  m1 = wsCRT->keySizeBuffer.messages.m1;
  m2 = wsCRT->keySizeBuffer.messages.m2;




  ring = &(wsCRT->wsUnion1.wsRSAPrim.wsRSARing);




  rc = actRSAInitExponentiation(wsCRT->q, q_bytes, wsCRT->dq, wsCRT->dq_bytes, &(wsCRT->wsUnion1.wsRSAPrim),
    (1u), watchdog);
  if (rc != (0x00u))
  {
    return rc;
  }



  (void)actBNReduce(origCipherBeforeReduction, n_length, ring->m, q_length, reducedCipherInDigits, watchdog);


  actBNOctetString(reducedCipherInBytes, q_bytes, reducedCipherInDigits, q_length);


  (void)actRSAExponentiation(reducedCipherInBytes, q_bytes, (actU8 * ) 0,
    (actLengthType * ) 0, &(wsCRT->wsUnion1.wsRSAPrim), watchdog);


  actBNCopy(m2, wsCRT->wsUnion1.wsRSAPrim.tmp.cipherAndMsg.message, q_length);
# 314 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
  rc = actRSAInitExponentiation(wsCRT->p, p_bytes, wsCRT->dp, wsCRT->dp_bytes, &(wsCRT->wsUnion1.wsRSAPrim),
    (1u), watchdog);
  if (rc != (0x00u))
  {
    return rc;
  }



  actBNSetOctetString(origCipherBeforeReduction, n_length, cipher, cipher_len);



  (void)actBNReduce(origCipherBeforeReduction, n_length, ring->m, p_length, reducedCipherInDigits, watchdog);


  actBNOctetString(reducedCipherInBytes, p_bytes, reducedCipherInDigits, p_length);


  (void)actRSAExponentiation(reducedCipherInBytes, p_bytes, (actU8 * ) 0,
    (actLengthType * ) 0, &(wsCRT->wsUnion1.wsRSAPrim), watchdog);


  actBNCopy(m1, wsCRT->wsUnion1.wsRSAPrim.tmp.cipherAndMsg.message, p_length);

  actWatchdogTriggerFunction(watchdog);






  m2Copy = wsCRT->wsUnion2.wsCRTStep3.m2Copy;
  m2ModP = wsCRT->wsUnion2.wsCRTStep3.m2ModP;
  m1m2 = wsCRT->wsUnion2.wsCRTStep3.m1m2;
  qInv = wsCRT->wsUnion2.wsCRTStep3.qInv;
  qInvM1M2R = wsCRT->wsUnion2.wsCRTStep3.qInvM1M2R;
  qInvM1M2 = wsCRT->wsUnion2.wsCRTStep3.qInvM1M2;



  actBNCopy(m2Copy, m2, q_length);

  (void)actBNReduce(m2, q_length, ring->m, p_length, m2ModP, watchdog);



  actBNModSub(m1, m2ModP, m1m2, ring, watchdog);



  actBNSetOctetStringROM(qInv, p_length, wsCRT->q_inv, wsCRT->q_inv_bytes);


  actBNMontMul(m1m2, qInv, qInvM1M2R, ring, watchdog);

  actBNMontMul(qInvM1M2R, ring->RR, qInvM1M2, ring, watchdog);






  m2Padded = wsCRT->wsUnion1.wsCRTSTEP4.m2Padded;
  primeQ = wsCRT->wsUnion1.wsCRTSTEP4.primeQ;
  qInvM1M2q = wsCRT->wsUnion1.wsCRTSTEP4.qInvM1M2q;
  msg = wsCRT->wsUnion1.wsCRTSTEP4.msg;


  actBNSetOctetStringROM(primeQ, q_length, wsCRT->q, wsCRT->q_bytes);

  actBNMult(primeQ, q_length, qInvM1M2, p_length, qInvM1M2q, watchdog);


  actBNCopy(m2Padded, m2Copy, q_length);
  actBNSet ((&m2Padded[q_length]), (n_length - q_length), ((actBNDIGIT) 0));

  (void)actBNAdd(qInvM1M2q, m2Padded, msg, n_length);


  actBNOctetString(message, n_bytes, msg, n_length);
  *message_len = n_bytes;

  actWatchdogTriggerFunction(watchdog);

  return (0x00u);
}


# 1 "GenData/vSecPrim_MemMap.h" 1
# 404 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c" 2
