# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_HashMACSHA1key.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_HashMACSHA1key.c"
# 36 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_HashMACSHA1key.c"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 1
# 42 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h" 1
# 37 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actConfig.h" 1
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actConfig.h"
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
# 41 "../../../../CBD2300515_D00/BSW/vSecPrim/actConfig.h" 2
# 38 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h" 1
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h" 1
# 77 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
typedef uint8 actPlatformUint8;
typedef uint16 actPlatformUint16;
typedef uint32 actPlatformUint32;
# 90 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
typedef unsigned long long actPlatformUint64;
# 41 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h" 2







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
# 39 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h" 2
# 63 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef actPlatformUint8 eslt_Size8;
typedef actPlatformUint16 eslt_Size16;
typedef actPlatformUint32 eslt_Size32;

typedef actPlatformUint64 eslt_Size64;


typedef eslt_Size8 eslt_Byte;

typedef eslt_Size32 eslt_Length;



typedef eslt_Size8 eslt_Mode;
typedef eslt_Size16 eslt_WSStatus;
typedef eslt_Size32 eslt_WSCheckSum;
# 204 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  const char * parameter;
  eslt_Size16 value;
}eslt_Version;





typedef eslt_Mode eslt_PaddingMode;




typedef eslt_Mode eslt_HashAlgorithm;
# 238 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef eslt_Mode eslt_BlockMode;






typedef eslt_Mode eslt_DRBGMode;






typedef eslt_Size32 eslt_DRBGReseedCounterType;


typedef eslt_Byte eslt_DRBGSeedStatusType;






typedef eslt_Size32 eslt_SPAKE2PMode;
# 316 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_HKDFMode;
# 449 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomain;
# 486 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomainExt;
# 512 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccSpeedUpExt;
# 521 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
typedef void ( * esl_WatchdogFuncPtr)(void);


typedef struct
{
  eslt_Length size;
  eslt_WSStatus status;
  esl_WatchdogFuncPtr watchdog;
  eslt_WSCheckSum checkSum;
}eslt_WorkSpaceHeader;
# 1139 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
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
# 1444 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
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
# 43 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h" 1
# 243 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
typedef actU16 eslt_ErrorCode;
# 44 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 2
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h" 1
# 51 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h"
  typedef struct
  {
    eslt_WorkSpaceHeader header;
    eslt_Byte wsRNG[(sizeof(actFIPS186STRUCT))];
  } eslt_WorkSpaceRNG;




# 1 "GenData/vSecPrim_MemMap.h" 1
# 61 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h" 2
# 88 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_initRNG(
  eslt_WorkSpaceRNG * workSpace,
  const eslt_Length entropyLength,
  const eslt_Byte * entropy,
  eslt_Byte * savedState);
# 112 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_getBytesRNG(
  const eslt_Length targetLength,
  eslt_Byte * target);
# 133 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_stirRNG(
  const eslt_Length inputLength,
  eslt_Byte * input);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 139 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RNG.h" 2
# 45 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 2
# 70 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 71 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 2
# 91 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initESCryptoLib(void);
# 113 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initWorkSpaceHeader(
  eslt_WorkSpaceHeader * workSpaceHeader,
  const eslt_Length workSpaceSize,
  esl_WatchdogFuncPtr watchdog);
# 224 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_initCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_DRBGMode modeDRBG);
# 273 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
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
# 315 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getBytesCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Length requestedLength,
  eslt_Byte * outputBuffer,
  const eslt_Byte * additionalInputPtr,
  eslt_Length additionalInputLength);
# 352 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getStateCTRDRBG(
  const eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Byte * internalStateBuffer,
  eslt_Length * internalStateBufferLength,
  eslt_DRBGReseedCounterType * reseedCounter,
  eslt_DRBGSeedStatusType * seedStatus,
  eslt_DRBGMode * modeDRBG);
# 385 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_restoreStateCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  const eslt_Byte * internalStateBuffer,
  eslt_Length internalStateBufferLength,
  eslt_DRBGReseedCounterType reseedCounter,
  eslt_DRBGSeedStatusType seedStatus,
  eslt_DRBGMode modeDRBG);
# 3060 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA224(
  eslt_WorkSpaceSHA224 * workSpace);
# 3083 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  const eslt_Length inputSize,
  const eslt_Byte * input);
# 3108 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  eslt_Byte * messageDigest);
# 3132 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA256(eslt_WorkSpaceSHA256 * workSpace);
# 3154 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA256(
eslt_WorkSpaceSHA256 * workSpace,
const eslt_Length inputSize, const eslt_Byte * input);
# 3178 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA256(
eslt_WorkSpaceSHA256 * workSpace, eslt_Byte * messageDigest);
# 6116 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSA_prim(
   eslt_WorkSpaceRSAsig_prim * workSpace,
     eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
     eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 6145 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_signRSA_prim(
  eslt_WorkSpaceRSAsig_prim * workSpace,
  eslt_Length messageSize,
  const eslt_Byte * message,
  eslt_Length * signatureSize,
  eslt_Byte * signature);
# 6298 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 6331 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length signatureSize,
  const eslt_Byte * signature,
  eslt_Length * messageSize,
  eslt_Byte * message);
# 8199 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 8227 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8253 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 8294 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize, const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8324 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8355 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8384 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8411 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8436 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8462 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length publicKeyExponentSize, const eslt_Byte * publicKeyExponent);
# 8489 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8515 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 8552 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8578 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8602 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8627 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8651 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize, eslt_Length signatureSize,
   const eslt_Byte * signature);
# 8674 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8696 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8718 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8746 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA1_PSS(
   eslt_WorkSpaceSHA1 * wsHash,
   eslt_Length saltSize, const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 9357 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSsig * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length privateKeyExponentSize,
  const eslt_Byte * privateKeyExponent);
# 9386 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9413 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 9454 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9485 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9516 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9546 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
  const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9573 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9598 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9624 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSver * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 9653 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9680 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 9718 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize,
  const eslt_Byte * signature);
# 9746 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9772 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9799 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9825 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9850 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9873 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9897 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9927 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA256_PSS(
   eslt_WorkSpaceSHA256 * wsHash,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 10003 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA1_PSS(
  eslt_WorkSpaceSHA1 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10041 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA256_PSS(
  eslt_WorkSpaceSHA256 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10988 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 10989 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h" 2
# 37 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_HashMACSHA1key.c" 2


# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h" 1
# 38 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h"
# 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h" 1
# 48 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 49 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h" 2
# 66 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h"
actRETURNCODE actSHAInit(actSHASTRUCT * info);
# 87 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h"
actRETURNCODE actSHAUpdate(
  actSHASTRUCT * info,
  const actU8 * dataIN, actLengthType length,
  void ( * watchdog)(void));
# 108 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h"
actRETURNCODE actSHAFinalize(
  actSHASTRUCT * info, actU8 * hash,
  void ( * watchdog)(void));
# 127 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h"
void actSHAGetDigest(
  const actSHASTRUCT * info,
  actU8 * hash,
  void ( * watchdog)(void));






# 1 "GenData/vSecPrim_MemMap.h" 1
# 138 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA.h" 2
# 39 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h" 2
# 49 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 50 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h" 2
# 73 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h"
actRETURNCODE actHashMACInit(
   actHASHMACSTRUCT * info,
   const actU8 * key, actLengthType key_length,
   void ( * watchdog)(void));
# 100 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h"
actRETURNCODE actHashMACUpdate(
   actHASHMACSTRUCT * info,
   const actU8 * dataIN, actLengthType length,
   void ( * watchdog)(void));
# 123 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h"
actRETURNCODE actHashMACFinalize(
   actHASHMACSTRUCT * info, actU8 * hash,
   void ( * watchdog)(void));






# 1 "GenData/vSecPrim_MemMap.h" 1
# 133 "../../../../CBD2300515_D00/BSW/vSecPrim/actIHashMAC.h" 2
# 40 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_HashMACSHA1key.c" 2
