# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c"
# 39 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c"
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 1
# 41 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h"
# 1 "../../../BSW/FblAsrStubs/v_cfg.h" 1
# 34 "../../../BSW/FblAsrStubs/v_cfg.h"
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
# 35 "../../../BSW/FblAsrStubs/v_cfg.h" 2
# 42 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2
# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 43 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2

# 1 "../../../BSW/_Common/v_def.h" 1
# 563 "../../../BSW/_Common/v_def.h"
typedef unsigned char vuint8;




typedef signed char vsint8;





typedef unsigned short vuint16;




typedef signed short vsint16;






typedef unsigned long vuint32;




typedef signed long vsint32;





typedef unsigned char *TxDataPtr;
typedef unsigned char *RxDataPtr;
# 654 "../../../BSW/_Common/v_def.h"
typedef unsigned int vbittype;
# 665 "../../../BSW/_Common/v_def.h"
struct _c_bits8
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;
 };

struct _c_bits16
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;
};

struct _c_bits32
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;

  vbittype b20:1;
  vbittype b21:1;
  vbittype b22:1;
  vbittype b23:1;
  vbittype b24:1;
  vbittype b25:1;
  vbittype b26:1;
  vbittype b27:1;

  vbittype b30:1;
  vbittype b31:1;
  vbittype b32:1;
  vbittype b33:1;
  vbittype b34:1;
  vbittype b35:1;
  vbittype b36:1;
  vbittype b37:1;
};
# 45 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2


# 1 "GenData/SecM_cfg.h" 1
# 48 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2


# 1 "../../../BSW/_Common/Std_Types.h" 1
# 56 "../../../BSW/_Common/Std_Types.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
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
# 51 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2

# 1 "../../../BSW/Csm/Csm_Types.h" 1
# 38 "../../../BSW/Csm/Csm_Types.h"
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
# 53 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2




# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h" 1
# 135 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
typedef vuint32 SecM_WordType;




typedef vuint8 SecM_ByteType;

typedef vuint16 SecM_ShortType;


typedef SecM_ByteType * SecM_RamDataType;

typedef SecM_ShortType * SecM_RamShortType;

typedef SecM_WordType * SecM_RamWordType;

typedef const SecM_ByteType * SecM_ConstRamDataType;

typedef const SecM_WordType * SecM_ConstRamWordType;

typedef SecM_ByteType const * SecM_RomDataType;

typedef void * SecM_VoidPtrType;

typedef const void * SecM_ConstVoidPtrType;

typedef void const * SecM_RomVoidPtrType;






typedef SecM_ByteType SecM_StatusType;

typedef SecM_ShortType SecM_LengthType;


typedef SecM_WordType SecM_AddrType;

typedef SecM_WordType SecM_SizeType;


typedef struct
{
   SecM_AddrType transferredAddress;
   SecM_AddrType targetAddress;
   SecM_SizeType length;
} FL_SegmentInfoType;


typedef struct
{

   SecM_WordType nrOfSegments;


   FL_SegmentInfoType * segmentInfo;
} FL_SegmentListType;


typedef void (* FL_WDTriggerFctType)( void );

typedef SecM_SizeType (* FL_ReadMemoryFctType)( SecM_AddrType address, SecM_RamDataType buffer, SecM_SizeType length );
# 213 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
typedef SecM_WordType SecM_ByteFastType;
typedef SecM_WordType SecM_ShortFastType;



typedef SecM_ShortFastType SecM_LengthFastType;






typedef struct
{

   SecM_ConstRamDataType data;

   SecM_LengthType size;
} SecM_RamBufferType;


typedef struct
{

   SecM_RomDataType data;

   SecM_LengthType size;
} SecM_RomBufferType;


typedef struct
{

   SecM_RamDataType buffer;

   SecM_ShortType pos;

   SecM_LengthType size;
} SecM_RamBufferProcessingType;


typedef SecM_RamBufferProcessingType * SecM_RamBufferProcessingPtrType;






typedef struct
{
   SecM_ByteType digest[1];
   SecM_WordType dummy;
} SecM_BasicWkspType;


typedef SecM_BasicWkspType * SecM_WorkspacePtrType;


typedef struct
{

   SecM_WorkspacePtrType data;

   SecM_LengthType size;
} SecM_WorkspaceType;


typedef struct
{

   SecM_ByteType *data;

   SecM_WordType size;
} SecM_VerificationWksp;
# 296 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
typedef SecM_RomBufferType SecM_CryptKeyType;



typedef SecM_RamBufferType SecM_SymKeyType;


typedef struct
{

   SecM_CryptKeyType shared;

   SecM_CryptKeyType individual;
} SecM_AsymKeyType;


typedef struct
{

   SecM_CryptKeyType key;

   SecM_CryptKeyType iv;
} SecM_AesKeyType;


typedef struct
{
   SecM_CryptKeyType iterations;
   SecM_CryptKeyType salt;
   SecM_CryptKeyType password;
   SecM_CryptKeyType function;
} SecM_PBKDF2KeyType;


typedef struct
{

   SecM_RomDataType data;

   SecM_LengthType size;

   uint32 cryptoElementId;
} SecM_CryptographicKeyValueType;


typedef SecM_CryptographicKeyValueType const * SecM_CryptographicKeyValuePtrType;


typedef struct
{
   SecM_ByteType count;
   SecM_CryptographicKeyValuePtrType keyValues;
} SecM_CryptographicKeyType;


typedef SecM_CryptographicKeyType const * SecM_CryptographicKeyPtrType;






typedef enum
{
   SECM_HASH,
   SECM_MACVERIFY,
   SECM_MACGENERATE,
   SECM_ENCRYPTION,
   SECM_DECRYPTION,
   SECM_RANDOMGENERATE,
   SECM_RANDOMSEED,
   SECM_SIGNATUREVERIFY,
   SECM_AEADENCRYPT,
   SECM_AEADDECRYPT,
   SECM_KEYDERIVE
} SecM_JobServiceType;


typedef enum
{
   SEC_KEY_TYPE_NONE,
   SEC_KEY_TYPE_AES,
   SEC_KEY_TYPE_MAC,
   SEC_KEY_TYPE_SYMMETRIC,
   SEC_KEY_TYPE_ASYMMETRIC,
   SEC_KEY_TYPE_PBKDF2
} SecM_JobKeyType;

typedef enum
{
   SEC_BUFF_UNTIL_FULL,
   SEC_BUFF_FIFO
} SecM_BufferMode;

typedef enum
{
   SEC_BUFF_OK,
   SEC_BUFF_FULL
} SecM_BufferRetType;

typedef enum
{
   SECM_DECRAEAD_AUTHDATA,
   SECM_DECRAEAD_DECRYPT
} SecM_DecrStatusFsm;


typedef struct
{
   SecM_ShortType authDataLength;
   SecM_ShortType dataTagLength;
} SecM_JobDecryptionAEADParamTypes;


typedef struct
{
   SecM_JobServiceType service;
   uint32 csmJobId;
   uint32 csmKeyId;
   SecM_WordType smhKeyId;
   SecM_JobKeyType keyType;
   SecM_RomVoidPtrType jobParam;
} SecM_JobInfoType;


typedef SecM_JobInfoType const * SecM_JobInfoPtrType;



typedef Crypto_OperationModeType SecM_OperationModeType;
# 488 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
typedef SecM_ShortType SecM_Crc16Type;
typedef SecM_WordType SecM_Crc32Type;
typedef SecM_WordType SecM_Crc64BaseType;
typedef struct
{
   SecM_Crc64BaseType highWord;
   SecM_Crc64BaseType lowWord;
} SecM_Crc64Type;


typedef SecM_Crc16Type SecM_CRCType;
# 507 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
typedef void * SecM_CRCParamGenericType;
typedef SecM_StatusType(*SecM_CRCFunctionGenericType) (void * crcParam);


typedef struct
{
   SecM_ByteType crcType;
   SecM_CRCFunctionGenericType pCrcFunc;
   SecM_ByteType crcSize;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_CrcPrimitiveType;





typedef struct
{
   SecM_WordType jobId;
   SecM_RamDataType digest;
   SecM_LengthType digestLength;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_HashPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   SecM_WordType contextBufferSize;
   SecM_VerificationWksp * pVerWks;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_MacPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   SecM_WordType hashJobId;
   SecM_RamDataType hashDigest;
   SecM_LengthType hashDigestLength;
   SecM_WordType contextBufferSize;
   SecM_VerificationWksp * pVerWks;
   boolean updateVerifiedData;
} SecM_SigPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   uint32 targetKeyId;
} SecM_KeyDerivePrimitiveType;





typedef SecM_SizeType SecM_ResultBufferType;


typedef SecM_VoidPtrType SecM_VerifyKeyType;


typedef SecM_RamDataType SecM_VerifyDataType;


typedef struct
{


   FL_SegmentListType segmentList;

   SecM_AddrType blockStartAddress;

   SecM_SizeType blockLength;

   SecM_VerifyDataType verificationData;

   SecM_CRCType crcTotal;

   FL_WDTriggerFctType wdTriggerFct;

   FL_ReadMemoryFctType readMemory;


   SecM_WorkspaceType workspace;

   SecM_VerifyKeyType key;
} SecM_VerifyParamType;


typedef struct
{
   SecM_ResultBufferType sigResultBuffer;
   SecM_SizeType length;
} SecM_SignatureType;


typedef struct
{

   SecM_SignatureType currentHash;

   SecM_SizeType * currentDataLength;

   SecM_StatusType sigState;

   SecM_VerifyDataType sigSourceBuffer;

   SecM_LengthType sigByteCount;

   FL_WDTriggerFctType wdTriggerFct;


   SecM_VerifyKeyType key;
} SecM_SignatureParamType;


typedef enum
{
   CRC_WORKSPACE_UNDEF,
   CRC_WORKSPACE_INIT
} SecM_CrcWorkspaceStateType;

typedef struct
{
   SecM_ResultBufferType workspacePtr;
   SecM_SizeType workspaceLength;
   SecM_CrcWorkspaceStateType state;
} SecM_CrcWorkspaceInfoType;
# 58 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2


# 1 "GenData/SecMPar.h" 1
# 52 "GenData/SecMPar.h"
# 1 "../../../BSW/SecMod/Sec_Inc.h" 1
# 53 "GenData/SecMPar.h" 2






# 1 "Include/MemMap.h" 1
# 60 "GenData/SecMPar.h" 2



SecM_StatusType SecM_VerifySha256( SecM_SignatureParamType * pVerifyParam );
SecM_StatusType SecM_VerifyClassCCC_Rsa2048PssSha256( SecM_SignatureParamType * pVerifyParam );
SecM_StatusType FblDiagVerifyTokenSignature( SecM_SignatureParamType * pVerifyParam );

SecM_StatusType SecM_VerificationClassDDD_Sha256( SecM_VerifyParamType * pVerifyParam );
SecM_StatusType SecM_VerificationClassCCC_Rsa2048PssSha256( SecM_VerifyParamType * pVerifyParam );




# 1 "Include/MemMap.h" 1
# 74 "GenData/SecMPar.h" 2







# 1 "Include/MemMap.h" 1
# 82 "GenData/SecMPar.h" 2



# 1 "Include/MemMap.h" 1
# 86 "GenData/SecMPar.h" 2


# 1 "Include/MemMap.h" 1
# 89 "GenData/SecMPar.h" 2



 extern vuint8 const SecM_RsaDevelopmentMod[256];
 extern vuint8 const SecM_RsaDevelopmentExp[4];

 extern vuint8 const SecM_RsaTokenFunctionExp[4];
 extern vuint8 const SecM_RsaTokenFunctionMod[256];

 extern vuint8 const SecM_RsaKeyChangeExp[4];
 extern vuint8 const SecM_RsaKeyChangeMod[256];

 extern SecM_CryptographicKeyType const SecM_CryptographicKeys[3];



 extern SecM_HashPrimitiveType const SecM_HashPrimitives[1];



 extern SecM_RamDataType const SecM_SignaturePrimitivesContextBuffs[2];

 extern SecM_SigPrimitiveType const SecM_SignaturePrimitives[2];



 extern SecM_JobInfoType const SecM_JobInfo[5];



# 1 "Include/MemMap.h" 1
# 120 "GenData/SecMPar.h" 2
# 61 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Inc.h" 2
# 40 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c" 2





# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 1
# 114 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 115 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 2
# 136 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 137 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 2
# 46 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c" 2






# 1 "Include/MemMap.h" 1
# 53 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c" 2
# 290 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c"
# 1 "Include/MemMap.h" 1
# 291 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.c" 2
