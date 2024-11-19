# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
# 32 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h" 1
# 37 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
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
# 38 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h" 2
# 59 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
typedef struct
{
  const actU8 * dataPtr;
  actLengthType length;
} actAesCtrDrbgSeedInputElementType;






typedef struct
{
  actU8 elements;
  actAesCtrDrbgSeedInputElementType input[(4u)];
} actDrbgSeedInputType;
# 83 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 84 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h" 2
# 105 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
actRETURNCODE actAesCtrDrbgInstantiation(
  actCTRDRBGSTRUCT * workSpace,
  const actDrbgSeedInputType * dataInput,
  boolean reseedFlag,
  void ( * watchdog)(void));
# 134 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
actRETURNCODE actAesCtrDrbgGenerate(
  actCTRDRBGSTRUCT * workSpace,
  actLengthType requestedLength,
  actU8 * outputBuffer,
  const actU8 * additionalInputPtr,
  actLengthType additionalInputLength,
  void ( * watchdog)(void));


# 1 "GenData/vSecPrim_MemMap.h" 1
# 144 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h" 2
# 33 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h" 1
# 42 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 43 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h" 2
# 59 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h"
void actDrbgIncrementBlock(
  actU8 * block,
  actLengthType blockLength);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 65 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h" 2
# 34 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h" 1
# 42 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h" 1
# 47 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 48 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h" 2
# 62 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h"
actRETURNCODE actPaddingInit(actU8 mode);
# 82 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h"
actRETURNCODE actPaddingPad(actU8 mode, actLengthType buffer_size, actLengthType * buffer_used, actU8 * buffer);
# 101 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h"
actRETURNCODE actPaddingUnpad(actU8 mode, actLengthType buffer_size, actLengthType * buffer_used, const actU8 * buffer);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 105 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h" 2
# 43 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h" 2






# 1 "GenData/vSecPrim_MemMap.h" 1
# 50 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h" 2
# 76 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESInitEncrypt(
  actAESSTRUCT * info,
  const actU8 * key, actLengthType key_len, const actU8 * iv,
  actU8 mode, void ( * watchdog)(void));
# 105 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESEncrypt(
   actAESSTRUCT * info,
   const actU8 * in, actLengthType in_length,
   actU8 * out_buffer, actLengthType * out_length,
   actBoolean final, void ( * watchdog)(void));
# 132 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESInitDecrypt(
   actAESSTRUCT * info,
   const actU8 * key, actLengthType key_len, const actU8 * iv,
   actU8 mode, void ( * watchdog)(void));
# 165 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESDecrypt(
   actAESSTRUCT * info,
   const actU8 * in, actLengthType in_length,
   actU8 * out_buffer, actLengthType * out_length,
   actBoolean final, void ( * watchdog)(void));
# 188 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESInitEncryptBlock(
   actAESSTRUCT * info,
   const actU8 * key, actLengthType key_len,
   void ( * watchdog)(void));
# 208 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
void actAESEncryptBlock(
   const actAESSTRUCT * info,
   const actU8 * in_block, actU8 * out_block,
   void ( * watchdog)(void));
# 230 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
actRETURNCODE actAESInitDecryptBlock(
   actAESSTRUCT * info,
   const actU8 * key, actLengthType key_len,
   void ( * watchdog)(void));
# 251 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
void actAESDecryptBlock(
   const actAESSTRUCT * info,
   const actU8 * in_block, actU8 * out_block,
   void ( * watchdog)(void));






# 1 "GenData/vSecPrim_MemMap.h" 1
# 262 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h" 2
# 35 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2
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
# 36 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2







# 1 "GenData/vSecPrim_MemMap.h" 1
# 99 "GenData/vSecPrim_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 44 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2

static const actU8 tempKey[((32u))] =
{
  0x00u, 0x01u, 0x02u, 0x03u, 0x04u, 0x05u, 0x06u, 0x07u, 0x08u, 0x09u, 0x0Au, 0x0Bu, 0x0Cu, 0x0Du, 0x0Eu, 0x0Fu,
  0x10u, 0x11u, 0x12u, 0x13u, 0x14u, 0x15u, 0x16u, 0x17u, 0x18u, 0x19u, 0x1Au, 0x1Bu, 0x1Cu, 0x1Du, 0x1Eu, 0x1Fu
};


# 1 "GenData/vSecPrim_MemMap.h" 1
# 115 "GenData/vSecPrim_MemMap.h"
#pragma section
# 53 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2






# 1 "GenData/vSecPrim_MemMap.h" 1
# 60 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2
# 90 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgConstructS(
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  actLengthType inputStringLength,
  actU8 * nextElement,
  actLengthType * nextIndex,
  actLengthType numberOfBytesToReturn,
  boolean isFirstBlock);
# 126 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgBcc(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * IV,
  actLengthType Slength,
  actLengthType totalInputLength,
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  void ( * watchdog)(void));
# 156 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgEncryptBlock(
  actCTRDRBGSTRUCT * workSpace,
  actU8 * outputData,
  actLengthType dataLength,
  actLengthType keyLength,
  void ( * watchdog)(void));
# 181 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgBlockUpdate(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * inputData,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void));
# 212 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static actRETURNCODE actAesCtrDrbgDF(
  actCTRDRBGSTRUCT * workSpace,
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void));
# 235 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgNoDF(
  const actDrbgSeedInputType * inputString,
  actU8 * outputString);
# 264 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static actRETURNCODE actAesCtrDrbgGenerateSetInput(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * additionalInputPtr,
  actLengthType additionalInputLength,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void));
# 292 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgConstructS(
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  actLengthType inputStringLength,
  actU8 * nextElement,
  actLengthType * nextIndex,
  actLengthType numberOfBytesToReturn,
  boolean isFirstBlock)
{

  actLengthType j, k, nextIndexLocal;
  actU8 i, nextElementLocal;
  actLengthType offset = 0u;
  actLengthType remainingBytesInBuffer = ((16u));

  j = 0u;
  k = *nextIndex;
  nextElementLocal = *nextElement;
  nextIndexLocal = *nextIndex;


  if (isFirstBlock == 1u)
  {

    actU32toBE(&outputString[0u], inputStringLength);

    actU32toBE(&outputString[(sizeof(actLengthType))], numberOfBytesToReturn);

    offset = ((sizeof(actLengthType)) * 2u);
    remainingBytesInBuffer = ((16u)) - ((sizeof(actLengthType)) * 2u);
  }

  for (i = *nextElement; ((i < inputString->elements) && (remainingBytesInBuffer > 0u)); i++)
  {
    while ((k < inputString->input[i].length) && (remainingBytesInBuffer > 0u))
    {

      outputString[offset + j] = inputString->input[i].dataPtr[k];
      j++;
      k++;
      nextElementLocal = i;
      nextIndexLocal = k;
      remainingBytesInBuffer--;
    }
    k = 0u;
  }

  *nextElement = nextElementLocal;
  *nextIndex = nextIndexLocal;


  if (((nextElementLocal == (inputString->elements - 1u)) &&
    (nextIndexLocal == inputString->input[nextElementLocal].length) &&
    (remainingBytesInBuffer > 0u)))
  {


    outputString[offset + j] = 0x80u;

    if ((remainingBytesInBuffer - 1u) > 0u)
    {

      (VStdLib_MemSet(((&outputString[offset + j + 1u])), 0, ((remainingBytesInBuffer - 1u))));
    }
  }

}
# 380 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgBcc(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * IV,
  actLengthType Slength,
  actLengthType totalInputLength,
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  void ( * watchdog)(void))
{

  actLengthType i, j;
  actLengthType numberOfBytesToReturn, localKeyLength;
  actU8 * blockOfS = workSpace->tempBlocks.blockOfS;

  actU8 * tempResult = workSpace->BCCUpdateTmpBuffer.BCCTmpBuffer.result;
  actU8 * tempInput = workSpace->BCCUpdateTmpBuffer.BCCTmpBuffer.input;


  actU8 nextInputElement = 0u;
  actLengthType nextIndexInInputElement = 0u;

  if ((workSpace->mode & (0x0Fu)) == (0x01u))
  {
    numberOfBytesToReturn = (((16u)) + ((16u)));
    localKeyLength = (16u);
  }
  else
  {


    numberOfBytesToReturn = (((32u)) + ((16u)));
    localKeyLength = (32u);
  }




  (void)actAESInitEncryptBlock(&workSpace->wsAES, tempKey, localKeyLength, watchdog);



  actAESEncryptBlock(&workSpace->wsAES, IV, tempResult, watchdog);

  (VStdLib_MemSet(((blockOfS)), 0, ((((16u))))));



  for (i = 0u; i < Slength; i += ((16u)))
  {
    if (i == 0u)
    {
      actAesCtrDrbgConstructS(inputString, blockOfS, totalInputLength, &nextInputElement, &nextIndexInInputElement, numberOfBytesToReturn, 1u);
    }
    else
    {
      actAesCtrDrbgConstructS(inputString, blockOfS, totalInputLength, &nextInputElement, &nextIndexInInputElement, numberOfBytesToReturn, 0u);
    }


    for (j = 0u; j < ((16u)); j++)
    {
      tempInput[j] = tempResult[j] ^ blockOfS[j];
    }


    actAESEncryptBlock(&workSpace->wsAES, tempInput, tempResult, watchdog);
  }



  (VStdLib_MemCpy((outputString), (tempResult), (((16u)))));

}
# 463 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgEncryptBlock(
  actCTRDRBGSTRUCT * workSpace,
  actU8 * outputData,
  actLengthType dataLength,
  actLengthType keyLength,
  void ( * watchdog)(void))
{

  uint32 i = 0u;




  (void)actAESInitEncryptBlock(&workSpace->wsAES, workSpace->key, keyLength, watchdog);


  if (dataLength >= ((16u)))
  {
    for (i = 0u; i <= (dataLength - ((16u))); i += ((16u)))
    {

      actDrbgIncrementBlock(workSpace->variable, ((16u)));



      actAESEncryptBlock(&workSpace->wsAES, workSpace->variable, &outputData[i], watchdog);
    }
  }


  if (i < dataLength)
  {

    actDrbgIncrementBlock(workSpace->variable, ((16u)));



    actAESEncryptBlock(&workSpace->wsAES, workSpace->variable, workSpace->tempBlocks.tempAesBlock, watchdog);
    (VStdLib_MemCpy((&outputData[i]), (workSpace->tempBlocks.tempAesBlock), ((actLengthType)(dataLength - i))));
  }
}
# 525 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgBlockUpdate(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * inputData,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void))
{

  actLengthType i;
  actU8 * tempBuffer = workSpace->BCCUpdateTmpBuffer.blockUpdateTmpBuffer;
# 544 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
  actAesCtrDrbgEncryptBlock(workSpace, tempBuffer, seedLength, keyLength, watchdog);


  for (i = 0u; i < seedLength; i++)
  {

    tempBuffer[i] ^= inputData[i];
  }


  (VStdLib_MemCpy((workSpace->key), (&tempBuffer[0]), (keyLength)));


  (VStdLib_MemCpy((workSpace->variable), (&tempBuffer[keyLength]), (((16u)))));

}
# 582 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static actRETURNCODE actAesCtrDrbgDF(
  actCTRDRBGSTRUCT * workSpace,
  const actDrbgSeedInputType * inputString,
  actU8 * outputString,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void))
{

  actRETURNCODE retVal = (0x00u);

  actLengthType j, totalInputLength, totalInputLengthControlValue;
  actLengthType bccInputLength;

  actU8 * IV = workSpace->DFIV;
  actU8 * encryptBuffer = workSpace->DFencryptBuffer;


  actU32 i = 0u;



  (VStdLib_MemSet(((IV)), 0, ((((16u))))));


  (VStdLib_MemSet(((encryptBuffer)), 0, (((((32u)) + ((16u)))))));



  totalInputLength = 0u;
  for (j = 0u; j < inputString->elements; j++)
  {
    totalInputLengthControlValue = totalInputLength;
    totalInputLength += inputString->input[j].length;



    if (totalInputLength < totalInputLengthControlValue)
    {
      retVal = (0xF5u);
    }
  }


  if ((totalInputLength + (actLengthType)(((sizeof(actLengthType)) * 2u)) + 1u) < totalInputLength)
  {
    retVal = (0xF5u);
  }

  if (retVal == (0x00u))
  {
    bccInputLength = ((((((sizeof(actLengthType)) * 2u) + totalInputLength) / ((16u))) + 1u) * ((16u)));


    for (j = 0u; j < seedLength; j += ((16u)))
    {

      actAesCtrDrbgBcc(workSpace, IV, bccInputLength, totalInputLength, inputString, &encryptBuffer[j], watchdog);


      i++;
      actU32toBE(IV, i);
    }



    (void)actAESInitEncryptBlock(&workSpace->wsAES, encryptBuffer, keyLength, watchdog);


    for (j = 0u; j <= (seedLength - ((16u))); j += ((16u)))
    {



      actAESEncryptBlock(&workSpace->wsAES, &encryptBuffer[keyLength], &encryptBuffer[keyLength], watchdog);



      (VStdLib_MemCpy((&outputString[j]), (&encryptBuffer[keyLength]), (((16u)))));
    }
  }

  return retVal;
}
# 681 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static void actAesCtrDrbgNoDF(
  const actDrbgSeedInputType * inputString,
  actU8 * outputString)
{

  uint32 i;
  const actU8 * entropyPtr;
  const actU8 * personalStrPtr;
  actLengthType entropyLength, personalStrLength;

  entropyPtr = inputString->input[0u].dataPtr;
  entropyLength = inputString->input[0u].length;






  (VStdLib_MemCpy((outputString), (entropyPtr), (entropyLength)));


  if (1u < inputString->elements)
  {
    personalStrPtr = inputString->input[1u].dataPtr;
    personalStrLength = inputString->input[1u].length;

    for (i = 0u; i < personalStrLength; i++)
    {
      outputString[i] ^= personalStrPtr[i];
    }
  }
}
# 732 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
static actRETURNCODE actAesCtrDrbgGenerateSetInput(
  actCTRDRBGSTRUCT * workSpace,
  const actU8 * additionalInputPtr,
  actLengthType additionalInputLength,
  actLengthType keyLength,
  actLengthType seedLength,
  void ( * watchdog)(void))
{

  actRETURNCODE retVal = (0x00u);
  actDrbgSeedInputType seedInput;
  actU8 * additionalInputPrepared = workSpace->tmpBuffer.additionalInputPrepared;



  if ((additionalInputPtr != ((void *)0)) && (additionalInputLength > 0u))
  {
    if (((0xF0u) & workSpace->mode) == (0x10u))
    {
      seedInput.input[(0u)].dataPtr = additionalInputPtr;
      seedInput.input[(0u)].length = additionalInputLength;
      seedInput.elements = 1u;


      retVal = actAesCtrDrbgDF(workSpace, &seedInput, additionalInputPrepared, keyLength, seedLength, watchdog);
    }
    else
    {

      (VStdLib_MemCpy((additionalInputPrepared), (additionalInputPtr), (additionalInputLength)));
      (VStdLib_MemSet(((&additionalInputPrepared[additionalInputLength])), 0, ((((actLengthType)((((32u)) + ((16u))))-additionalInputLength)))));
    }

    if (retVal == (0x00u))
    {

      actAesCtrDrbgBlockUpdate(workSpace, additionalInputPrepared, keyLength, seedLength, watchdog);
    }
  }
  else
  {

    (VStdLib_MemSet(((additionalInputPrepared)), 0, (((((32u)) + ((16u)))))));
  }

  return retVal;
}
# 811 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
actRETURNCODE actAesCtrDrbgInstantiation(
  actCTRDRBGSTRUCT * workSpace,
  const actDrbgSeedInputType * dataInput,
  boolean reseedFlag,
  void ( * watchdog)(void))
{

  actRETURNCODE retVal = (0x00u);

  actLengthType localSeedLength, localKeyLength;
  actU8 * seedData = workSpace->tmpBuffer.seedData;

  if ((workSpace->mode & (0x0Fu)) == (0x01u))
  {
    localSeedLength = (((16u)) + ((16u)));
    localKeyLength = (16u);
  }


  else
  {
    localSeedLength = (((32u)) + ((16u)));
    localKeyLength = (32u);
  }


  if (((0xF0u) & workSpace->mode) == (0x10u))
  {


    retVal = actAesCtrDrbgDF(workSpace, dataInput, seedData, localKeyLength, localSeedLength, watchdog);
  }
  else
  {

    actAesCtrDrbgNoDF(dataInput, seedData);
  }

  if (retVal == (0x00u))
  {
    if (reseedFlag != 1u)
    {

      (VStdLib_MemSet(((workSpace->key)), 0, ((((32u))))));


      (VStdLib_MemSet(((workSpace->variable)), 0, ((((16u))))));
    }


    actAesCtrDrbgBlockUpdate(workSpace, seedData, localKeyLength, localSeedLength, watchdog);


    workSpace->reseedCount = 1u;
  }


  return retVal;
}
# 918 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
actRETURNCODE actAesCtrDrbgGenerate(
  actCTRDRBGSTRUCT * workSpace,
  actLengthType requestedLength,
  actU8 * outputBuffer,
  const actU8 * additionalInputPtr,
  actLengthType additionalInputLength,
  void ( * watchdog)(void))
{

  actRETURNCODE retVal;

  actLengthType localSeedLength, localKeyLength;

  if ((workSpace->mode & (0x0Fu)) == (0x01u))
  {
    localSeedLength = (((16u)) + ((16u)));
    localKeyLength = (16u);
  }


  else
  {
    localSeedLength = (((32u)) + ((16u)));
    localKeyLength = (32u);
  }



  if (4294967295u > workSpace->reseedCount)
  {
    retVal = actAesCtrDrbgGenerateSetInput(workSpace, additionalInputPtr, additionalInputLength, localKeyLength, localSeedLength, watchdog);

    if (retVal == (0x00u))
    {


      (VStdLib_MemSet(((outputBuffer)), 0, ((requestedLength))));





      actAesCtrDrbgEncryptBlock(workSpace, outputBuffer, requestedLength, localKeyLength, watchdog);





      actAesCtrDrbgBlockUpdate(workSpace, workSpace->tmpBuffer.additionalInputPrepared, localKeyLength, localSeedLength, watchdog);


      workSpace->reseedCount++;


    }
  }
  else
  {

    workSpace->seedState = (0x02u);
    retVal = (0xF0u);
  }

  return retVal;
}


# 1 "GenData/vSecPrim_MemMap.h" 1
# 986 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c" 2
