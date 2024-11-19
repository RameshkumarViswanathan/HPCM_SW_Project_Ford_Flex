# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
# 39 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 1
# 79 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
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
# 80 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2


# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h" 1
# 51 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h"
# 1 "Include/MemMap.h" 1
# 52 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h" 2


SecM_CryptographicKeyValuePtrType SecM_GetKeyValueByElementId(SecM_WordType smhKeyId, uint32 keyElementId);



SecM_StatusType SecM_HashJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_ConstRamDataType dataPtr,
   SecM_WordType dataLength, SecM_RamDataType hashPtr, SecM_WordType * hashLengthPtr);
# 79 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h"
SecM_StatusType SecM_RandomGenerateJob(SecM_WordType jobId, SecM_RamDataType resultPtr, SecM_WordType * resultLengthPtr);


SecM_StatusType SecM_RandomSeedJob(SecM_WordType jobId, SecM_ConstRamDataType seedPtr, SecM_WordType seedLength);


SecM_StatusType SecM_SignatureVerifyJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_VoidPtrType keyPtr,
   SecM_ConstRamDataType dataPtr, SecM_WordType dataLength, SecM_ConstRamDataType signaturePtr, SecM_WordType signatureLength);
# 155 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h"
void SecM_CancelAllJobs(void);


# 1 "Include/MemMap.h" 1
# 159 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h" 2
# 83 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h" 1
# 90 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
typedef struct
{
   SecM_Crc16Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC16ParamType;
typedef struct
{
   SecM_Crc32Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC32ParamType;
typedef struct
{
   SecM_Crc64Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC64ParamType;


typedef SecM_CRC16ParamType SecM_CRCParamType;







typedef SecM_StatusType (* pSecComputeCRCFct)( SecM_CRCParamType * crcParam );







# 1 "Include/MemMap.h" 1
# 136 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h" 2






# 1 "Include/MemMap.h" 1
# 143 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h" 2
# 153 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 154 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h" 2

void SecM_InitPowerOnCRC( void );

SecM_StatusType SecM_ComputeCRC( SecM_CRCParamType * crcParam );






SecM_StatusType SecM_ComputeCrc16( SecM_CRC16ParamType * crcParam);
# 178 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 179 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h" 2
# 84 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 1
# 114 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 115 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 2
# 136 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 137 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Decryption.h" 2
# 85 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 1
# 56 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey_Cfg.h" 1
# 57 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_KeyBaseType;

typedef SecM_KeyBaseType SecM_KeyStorageType[0x00000012u];
# 100 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_SeedBaseType;

typedef SecM_SeedBaseType SecM_SeedStorageType[0x00000010u];
# 121 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
typedef SecM_WordType SecM_ConstBaseType;




typedef struct
{

   SecM_WorkspaceType workspace;

   FL_WDTriggerFctType wdTriggerFct;
} SecM_SeedKeyContextType;



typedef SecM_SeedKeyContextType SecM_GenerateSeedParamType;





typedef SecM_SeedKeyContextType SecM_ComputeKeyParamType;


typedef struct
{

   SecM_ComputeKeyParamType common;

   SecM_SymKeyType secretKey;
} SecM_ComputeKeySymParamType;


typedef struct
{

   SecM_ComputeKeyParamType common;

   SecM_AsymKeyType publicKey;
} SecM_ComputeKeyAsymParamType;



typedef struct
{

   SecM_ConstBaseType constant;

   SecM_VoidPtrType context;
} SecM_ConstType;







typedef enum
{
   SEC_RNG_UNINTIALIZED,
   SEC_RNG_INTIALIZED
} SecM_RngState;


typedef struct
{
   SecM_ByteType data[0x00000020u];
   SecM_LengthType fillLevel;
   SecM_LengthType offset;
   SecM_RngState state;
   SecM_VoidPtrType context;
} SecM_EntropyPoolType;
# 203 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_SeedBaseType * data;
   SecM_EntropyPoolType * entropyPool;
} SecM_SeedType;
# 218 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_KeyBaseType * data;

   SecM_VoidPtrType context;
} SecM_KeyType;






typedef SecM_StatusType (* pSecGenerateSeedFct)( SecM_SeedType * seed );




typedef SecM_StatusType (* pSecComputeKeyFct)( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

typedef SecM_StatusType (* pSecCompareKeyFct)( SecM_KeyType key, SecM_SeedType lastSeed );
# 252 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
# 1 "Include/MemMap.h" 1
# 253 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2

extern SecM_StatusType SecM_GenerateSeed( SecM_SeedType * seed );




extern SecM_StatusType SecM_ComputeKey( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

extern SecM_StatusType SecM_CompareKey( SecM_KeyType key, SecM_SeedType lastSeed );





void SecM_InitEntropy( SecM_EntropyPoolType * pEntropyPool );


# 1 "Include/MemMap.h" 1
# 272 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 7030 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 275 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2
void SecM_ProvideEntropy( SecM_EntropyPoolType * pEntropyPool,
   SecM_ByteType * entropy, SecM_LengthType length );

# 1 "Include/MemMap.h" 1
# 7037 "Include/MemMap.h"
#pragma section
# 279 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 282 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2
# 292 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
extern SecM_StatusType SecM_ComputeKeyVendor( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );




# 1 "Include/MemMap.h" 1
# 299 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h" 1
# 178 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h"
typedef SecM_ConstVoidPtrType SecM_VerifyInitType;

typedef SecM_ConstVoidPtrType SecM_VerifyDeinitType;


typedef SecM_StatusType (*pSecInitVerificationFct) (SecM_VerifyInitType init);
typedef SecM_StatusType (*pSecDeinitVerificationFct) (SecM_VerifyDeinitType deinit);
typedef SecM_StatusType (*pSecVerificationFct) ( SecM_VerifyParamType * pVerifyParam);
typedef SecM_StatusType (*pSecVerifySignatureFct) ( SecM_SignatureParamType * pVerifyParam);






typedef struct
{
   pSecVerifySignatureFct pFunction;
   SecM_LengthType length;
   SecM_LengthFastType offset;
   SecM_ByteType mask;
} SecM_VerifyOperationType;


typedef struct
{
   SecM_VerifyOperationType const * pOperation;
   SecM_SignatureParamType * pContext;




} SecM_VerifyConfigType;


typedef struct
{
   SecM_VerifyConfigType pPrimitives;
   SecM_ByteFastType count;
} SecM_VerifyConfigListType;
# 230 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h"
# 1 "Include/MemMap.h" 1
# 231 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h" 2

void SecM_InitPowerOnVerification ( void );
SecM_StatusType SecM_InitVerification ( SecM_VerifyInitType init );
SecM_StatusType SecM_DeinitVerification ( SecM_VerifyDeinitType deinit );






void SecM_UpdateDataLength ( SecM_SignatureParamType * pVerifyParam );





SecM_StatusType SecM_VerificationBase( SecM_VerifyParamType * pVerifyParam,
   const SecM_VerifyConfigListType * pCfgList);





SecM_StatusType SecM_VerifyChecksumCrc( SecM_SignatureParamType * pVerifyParam);






SecM_StatusType SecM_VerifyHash( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId);





SecM_StatusType SecM_VerifySig( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId);



# 1 "Include/MemMap.h" 1
# 272 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h" 2
# 87 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h" 1
# 75 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 76 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h" 2

void SecM_InitCert( void );
# 101 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 102 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h" 2
# 88 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 120 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
typedef SecM_ConstVoidPtrType SecM_InitType;


typedef void (* pSecTaskFct)( void );






# 1 "Include/MemMap.h" 1
# 131 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2


 extern SecM_ShortType secTimer;



# 1 "Include/MemMap.h" 1
# 138 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 148 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
# 1 "Include/MemMap.h" 1
# 149 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2

SecM_StatusType SecM_InitPowerOn( SecM_InitType initParam );
void SecM_Init( void );
void SecM_Task( void );
SecM_WordType SecM_GetInteger( SecM_ByteFastType count, SecM_ConstRamDataType buffer );
void SecM_SetInteger( SecM_ByteFastType count, SecM_WordType input, SecM_RamDataType buffer );
void SecM_CopyBuffer( SecM_ConstRamDataType input, SecM_RamDataType output, SecM_ShortType count );
void SecM_InitBuffer( SecM_RamBufferProcessingPtrType buff, SecM_ShortType size );
SecM_BufferRetType SecM_AccumulateBufferStore( SecM_RamBufferProcessingPtrType buff, SecM_ConstRamDataType src,
   SecM_RamShortType size );
SecM_BufferRetType SecM_FifoBufferStore( SecM_RamBufferProcessingPtrType buff, SecM_ConstRamDataType src,
   SecM_RamShortType srcSize, SecM_RamDataType flushBuff, SecM_RamShortType flushSize );


# 1 "Include/MemMap.h" 1
# 164 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h" 2
# 40 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2





# 1 "../../../BSW/Csm/Csm.h" 1
# 94 "../../../BSW/Csm/Csm.h"
# 1 "GenData/Csm_Cfg.h" 1
# 52 "GenData/Csm_Cfg.h"
# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 1
# 34 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h"
# 1 "GenData/Crypto_30_LibCv_Custom_Generated.h" 1
# 35 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 2
# 53 "GenData/Csm_Cfg.h" 2
# 1096 "GenData/Csm_Cfg.h"
typedef Crypto_JobType * Csm_QueueElementType;
typedef uint8 Csm_JobCalloutStateType;
typedef void ( * Csm_CallbackFunc43Type)(Crypto_JobType * job, Std_ReturnType result);
typedef void ( * Csm_CallbackFunc44Type)(const uint32 jobID, Csm_ResultType result);
typedef void ( * Csm_CallbackFunc45Type)(const Crypto_JobType * job, Crypto_ResultType result);
typedef Std_ReturnType ( * Csm_PreJobCalloutFunc)(Crypto_JobType * job, Csm_JobCalloutStateType state);
typedef Std_ReturnType ( * Csm_PostJobCalloutFunc)(Crypto_JobType * job, Csm_JobCalloutStateType state, Std_ReturnType * jobReturnValue);
# 1115 "GenData/Csm_Cfg.h"
typedef uint8_least Csm_JobIterType;


typedef uint8_least Csm_JobInfoIterType;


typedef uint8_least Csm_JobPrimitiveInfoIterType;


typedef uint8_least Csm_JobTableIterType;


typedef uint8_least Csm_KeyIterType;


typedef uint8_least Csm_PrimitiveInfoIterType;


typedef uint8_least Csm_QueueIterType;


typedef uint8_least Csm_QueueInfoIterType;
# 1148 "GenData/Csm_Cfg.h"
typedef Csm_JobTableIterType Csm_JobStateIterType;


typedef Csm_JobTableIterType Csm_JobToObjMapIterType;


typedef Csm_QueueInfoIterType Csm_QueueStateIterType;
# 1166 "GenData/Csm_Cfg.h"
typedef uint8 Csm_AsymPrivateKeyMaxLengthOfGeneralType;


typedef uint16 Csm_AsymPublicKeyMaxLengthOfGeneralType;


typedef boolean Csm_CallbackStartNotificationOfGeneralType;


typedef boolean Csm_CancelationDuringProcessingOfGeneralType;


typedef uint8 Csm_JobStateType;


typedef boolean Csm_AsynchronousOfJobTableType;


typedef uint8 Csm_CsmKeyIdIdxOfJobTableType;


typedef uint8 Csm_JobInfoIdxOfJobTableType;


typedef uint8 Csm_JobPrimitiveInfoIdxOfJobTableType;


typedef uint8 Csm_MaskedBitsOfJobTableType;


typedef boolean Csm_PrimitiveCallbackUpdateNotificationOfJobTableType;


typedef uint8 Csm_PriorityOfJobTableType;


typedef uint8 Csm_QueueRefIdxOfJobTableType;


typedef uint32 Csm_CryIfKeyIdOfKeyType;


typedef uint8 Csm_MainFunctionPeriodOfGeneralType;


typedef uint32 Csm_ChannelIdOfQueueInfoType;


typedef uint8 Csm_JobObjSynchronousIdxOfQueueInfoType;


typedef boolean Csm_JobObjSynchronousUsedOfQueueInfoType;


typedef uint8 Csm_JobPoolEndIdxOfQueueInfoType;


typedef uint8 Csm_JobPoolStartIdxOfQueueInfoType;


typedef boolean Csm_JobPoolUsedOfQueueInfoType;


typedef boolean Csm_JobSharingOfQueueInfoType;


typedef uint8 Csm_MaskedBitsOfQueueInfoType;


typedef uint8 Csm_QueueEndIdxOfQueueInfoType;


typedef uint8 Csm_QueueStartIdxOfQueueInfoType;


typedef uint16 Csm_LockOfQueueStateType;


typedef uint8 Csm_QueueIdxOfQueueStateType;


typedef uint8 Csm_SizeOfJobType;


typedef uint8 Csm_SizeOfJobInfoType;


typedef uint8 Csm_SizeOfJobPrimitiveInfoType;


typedef uint8 Csm_SizeOfJobStateType;


typedef uint8 Csm_SizeOfJobTableType;


typedef uint8 Csm_SizeOfJobToObjMapType;


typedef uint8 Csm_SizeOfKeyType;


typedef uint8 Csm_SizeOfPrimitiveInfoType;


typedef uint8 Csm_SizeOfQueueType;


typedef uint8 Csm_SizeOfQueueInfoType;


typedef uint8 Csm_SizeOfQueueStateType;


typedef uint8 Csm_SymKeyMaxLengthOfGeneralType;


typedef boolean Csm_UseDeprecatedOfGeneralType;


typedef boolean Csm_VersionInfoApiOfGeneralType;
# 1302 "GenData/Csm_Cfg.h"
typedef struct sCsm_JobTableType
{
  Csm_CsmKeyIdIdxOfJobTableType CsmKeyIdIdxOfJobTable;
  Csm_PriorityOfJobTableType PriorityOfJobTable;
} Csm_JobTableType;


typedef struct sCsm_KeyType
{
  Csm_CryIfKeyIdOfKeyType CryIfKeyIdOfKey;
} Csm_KeyType;


typedef struct sCsm_QueueInfoType
{
  Csm_ChannelIdOfQueueInfoType ChannelIdOfQueueInfo;
} Csm_QueueInfoType;


typedef struct sCsm_QueueStateType
{
  Csm_LockOfQueueStateType LockOfQueueState;
  Csm_QueueIdxOfQueueStateType QueueIdxOfQueueState;
} Csm_QueueStateType;
# 1337 "GenData/Csm_Cfg.h"
typedef struct Csm_QueueStructSTag
{
  Csm_QueueElementType CsmQueue_Standard;
} Csm_QueueStructSType;
# 1352 "GenData/Csm_Cfg.h"
typedef union Csm_QueueUTag
{
  Csm_QueueElementType raw[1];
  Csm_QueueStructSType str;
} Csm_QueueUType;
# 1368 "GenData/Csm_Cfg.h"
typedef Crypto_JobType * Csm_JobPtrType;


typedef const Crypto_JobInfoType * Csm_JobInfoPtrType;


typedef const Crypto_JobPrimitiveInfoType * Csm_JobPrimitiveInfoPtrType;


typedef Csm_JobStateType * Csm_JobStatePtrType;


typedef const Csm_JobTableType * Csm_JobTablePtrType;


typedef Csm_SizeOfJobType * Csm_JobToObjMapPtrType;


typedef const Csm_KeyType * Csm_KeyPtrType;


typedef const Crypto_PrimitiveInfoType * Csm_PrimitiveInfoPtrType;


typedef Csm_QueueElementType * Csm_QueuePtrType;


typedef const Csm_QueueInfoType * Csm_QueueInfoPtrType;


typedef Csm_QueueStateType * Csm_QueueStatePtrType;
# 1410 "GenData/Csm_Cfg.h"
typedef struct sCsm_PCConfigType
{
  uint8 Csm_PCConfigNeverUsed;
} Csm_PCConfigType;

typedef Csm_PCConfigType Csm_ConfigType;
# 1463 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1464 "GenData/Csm_Cfg.h" 2

extern const Crypto_JobInfoType Csm_JobInfo[3];


# 1 "Include/MemMap.h" 1
# 1469 "GenData/Csm_Cfg.h" 2
# 1480 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1481 "GenData/Csm_Cfg.h" 2

extern const Crypto_JobPrimitiveInfoType Csm_JobPrimitiveInfo[3];


# 1 "Include/MemMap.h" 1
# 1486 "GenData/Csm_Cfg.h" 2
# 1501 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1502 "GenData/Csm_Cfg.h" 2

extern const Csm_JobTableType Csm_JobTable[3];


# 1 "Include/MemMap.h" 1
# 1507 "GenData/Csm_Cfg.h" 2
# 1521 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1522 "GenData/Csm_Cfg.h" 2

extern const Csm_KeyType Csm_Key[3];


# 1 "Include/MemMap.h" 1
# 1527 "GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1535 "GenData/Csm_Cfg.h" 2

extern const Crypto_PrimitiveInfoType Csm_PrimitiveInfo[3];


# 1 "Include/MemMap.h" 1
# 1540 "GenData/Csm_Cfg.h" 2
# 1554 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1555 "GenData/Csm_Cfg.h" 2

extern const Csm_QueueInfoType Csm_QueueInfo[1];


# 1 "Include/MemMap.h" 1
# 1560 "GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1568 "GenData/Csm_Cfg.h" 2

extern Crypto_JobType Csm_Job[1];


# 1 "Include/MemMap.h" 1
# 1573 "GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1581 "GenData/Csm_Cfg.h" 2

extern Csm_JobStateType Csm_JobState[3];


# 1 "Include/MemMap.h" 1
# 1586 "GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1594 "GenData/Csm_Cfg.h" 2

extern Csm_SizeOfJobType Csm_JobToObjMap[3];


# 1 "Include/MemMap.h" 1
# 1599 "GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1607 "GenData/Csm_Cfg.h" 2

extern Csm_QueueUType Csm_Queue;


# 1 "Include/MemMap.h" 1
# 1612 "GenData/Csm_Cfg.h" 2
# 1627 "GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1628 "GenData/Csm_Cfg.h" 2

extern Csm_QueueStateType Csm_QueueState[1];


# 1 "Include/MemMap.h" 1
# 1633 "GenData/Csm_Cfg.h" 2
# 95 "../../../BSW/Csm/Csm.h" 2
# 240 "../../../BSW/Csm/Csm.h"
# 1 "Include/MemMap.h" 1
# 241 "../../../BSW/Csm/Csm.h" 2
# 253 "../../../BSW/Csm/Csm.h"
void Csm_Init( void );
# 266 "../../../BSW/Csm/Csm.h"
void Csm_InitMemory( void );
# 301 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CancelJob(uint32 jobId, Crypto_OperationModeType mode);
# 324 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementSet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 const uint8 * keyPtr,
                                                 uint32 keyLength);
# 343 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeySetValid(uint32 keyId);
# 369 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementGet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 uint8 * keyPtr,
                                                 uint32 * keyLengthPtr);
# 399 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopy(uint32 keyId,
                                                  uint32 keyElementId,
                                                  uint32 targetKeyId,
                                                  uint32 targetKeyElementId);
# 436 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopyPartial( uint32 keyId,
                                                          uint32 keyElementId,
                                                          uint32 keyElementSourceOffset,
                                                          uint32 keyElementTargetOffset,
                                                          uint32 keyElementCopyLength,
                                                          uint32 targetKeyId,
                                                          uint32 targetKeyElementId);
# 465 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyCopy(uint32 keyId,
                                           uint32 targetKeyId);
# 484 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomSeed(uint32 keyId,
                                              const uint8 * seedPtr,
                                              uint32 seedLength);
# 502 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyGenerate(uint32 keyId);
# 521 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyDerive(uint32 keyId,
                                             uint32 targetKeyId);
# 547 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcPubVal(uint32 keyId,
                                                         uint8 * publicValuePtr,
                                                         uint32 * publicValueLengthPtr);
# 573 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcSecret(uint32 keyId,
                                                         const uint8 * partnerPublicValuePtr,
                                                         uint32 partnerPublicValueLength);
# 591 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateParse(uint32 keyId);
# 614 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateVerify(uint32 keyId,
                                                     uint32 verifyKeyId,
                                                     Crypto_VerifyResultType * verifyPtr);
# 643 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Hash(uint32 jobId,
                                        Crypto_OperationModeType mode,
                                        const uint8 * dataPtr,
                                        uint32 dataLength,
                                        uint8 * resultPtr,
                                        uint32 * resultLengthPtr);
# 675 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_MacGenerate(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * dataPtr,
                                               uint32 dataLength,
                                               uint8 * macPtr,
                                               uint32 * macLengthPtr);
# 705 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_MacVerify(uint32 jobId,
                                             Crypto_OperationModeType mode,
                                             const uint8 * dataPtr,
                                             uint32 dataLength,
                                             const uint8 * macPtr,
                                             uint32 macLength,
                                             Crypto_VerifyResultType * verifyPtr);
# 738 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Encrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 770 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Decrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 809 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_AEADEncrypt(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * plaintextPtr,
                                               uint32 plaintextLength,
                                               const uint8 * associatedDataPtr,
                                               uint32 associatedDataLength,
                                               uint8 * ciphertextPtr,
                                               uint32 * ciphertextLengthPtr,
                                               uint8 * tagPtr,
                                               uint32 * tagLengthPtr);
# 850 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_AEADDecrypt(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * ciphertextPtr,
                                               uint32 ciphertextLength,
                                               const uint8 * associatedDataPtr,
                                               uint32 associatedDataLength,
                                               const uint8 * tagPtr,
                                               uint32 tagLength,
                                               uint8 * plaintextPtr,
                                               uint32 * plaintextLengthPtr,
                                               Crypto_VerifyResultType * verifyPtr);
# 887 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureGenerate(uint32 jobId,
                                                     Crypto_OperationModeType mode,
                                                     const uint8 * dataPtr,
                                                     uint32 dataLength,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr);
# 917 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureVerify(uint32 jobId,
                                                   Crypto_OperationModeType mode,
                                                   const uint8 * dataPtr,
                                                   uint32 dataLength,
                                                   const uint8 * signaturePtr,
                                                   uint32 signatureLength,
                                                   Crypto_VerifyResultType * verifyPtr);
# 949 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomGenerate(uint32 jobId,
                                                  uint8 * resultPtr,
                                                  uint32 * resultLengthPtr);
# 981 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeySetValid( uint32 jobId, uint32 keyId );
# 1002 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobRandomSeed( uint32 jobId, uint32 keyId, const uint8 * seedPtr, uint32 seedLength );
# 1022 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyGenerate( uint32 jobId, uint32 keyId );
# 1047 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyDerive( uint32 jobId, uint32 keyId, uint32 targetKeyId );
# 1071 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcPubVal( uint32 jobId,
                                                               uint32 keyId,
                                                               uint8 * publicValuePtr,
                                                               uint32 * publicValueLengthPtr );
# 1096 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcSecret( uint32 jobId,
                                                                uint32 keyId,
                                                                const uint8 * partnerPublicValuePtr,
                                                                uint32 partnerPublicValueLength );
# 1121 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SaveContextJob( uint32 jobId,
                                                    uint8 * contextBufferPtr,
                                                    uint32 * contextBufferLengthPtr );
# 1144 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RestoreContextJob( uint32 jobId,
                                                       uint8 * contextBufferPtr,
                                                       uint32 contextBufferLength );


# 1 "Include/MemMap.h" 1
# 1150 "../../../BSW/Csm/Csm.h" 2
# 46 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2
# 109 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
typedef struct
{
   FL_ReadMemoryFctType readMemory;
   SecM_AddrType verifyAddress;
   SecM_SizeType remainingBytes;
   SecM_SignatureParamType sigParam;





} SecM_VerifyContextType;


typedef struct
{
   SecM_VerifyConfigType pPrimitives[0x0004u];
   SecM_ByteFastType count;
} SecM_VerifyConfigPairType;






# 1 "Include/MemMap.h" 1
# 135 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2





static SecM_StatusType SecM_VerifyWrapper( SecM_SignatureParamType * pVerifyParam,
   SecM_VerifyConfigPairType * pCfgList );
static SecM_StatusType SecM_UpdateSegment( SecM_VerifyContextType * pContext,
   SecM_VerifyConfigPairType * pCfgList );


static SecM_StatusType SecM_UpdateSegmentAddress( SecM_VerifyContextType * pContext,
   SecM_VerifyConfigPairType * pCfgList,
   const FL_SegmentInfoType * pSegmentInfo );


static void SecM_PopulateCfgList( const SecM_VerifyConfigListType * pSourceList,
   SecM_VerifyConfigPairType * pTargetList, SecM_ByteType mask );



static SecM_StatusType SecM_VerificationWrapper ( SecM_VerifyParamType * pVerifyParam,
   const SecM_VerifyConfigListType * pCfgList );



static SecM_StatusType SecM_CopyDigest(SecM_ConstRamDataType pCalculatedData, SecM_LengthType calculatedSize,
   SecM_RamDataType pOutputData, SecM_LengthType outputSize);
static SecM_StatusType SecM_CompareDigest(SecM_ConstRamDataType pCalculatedData, SecM_LengthType calculatedSize,
   SecM_ConstRamDataType pProvidedData, SecM_LengthType providedSize);
# 175 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
# 1 "Include/MemMap.h" 1
# 176 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2






# 1 "Include/MemMap.h" 1
# 183 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2



 static SecM_CRCType const crcZeroValue = (0x00u);



# 1 "Include/MemMap.h" 1
# 191 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2






# 1 "Include/MemMap.h" 1
# 198 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2
# 252 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_VerifyWrapper( SecM_SignatureParamType * pVerifyParam,
                                           SecM_VerifyConfigPairType * pCfgList )
{
   SecM_StatusType result;
   SecM_ByteFastType index;
   SecM_ByteFastType cfgCount;
   SecM_ByteType action;
   SecM_LengthType byteCount;
   SecM_LengthFastType sourceOffset;
   SecM_VerifyConfigType * pConfig;
   SecM_VerifyOperationType const * pOperation;
   SecM_SignatureParamType * pParam;

   result = 0x00u;


   action = pVerifyParam->sigState;
   byteCount = pVerifyParam->sigByteCount;

   sourceOffset = 0u;


   if (0x01u == action)
   {

      pConfig = &pCfgList->pPrimitives[0u];
      pParam = pConfig->pContext;



      pParam->key = pVerifyParam->key;
   }


   cfgCount = pCfgList->count;

   for (index = 0u; index < cfgCount; index++)
   {

      pConfig = &pCfgList->pPrimitives[index];
      pOperation = pConfig->pOperation;
      pParam = pConfig->pContext;


      if (0x04u == action)
      {

         sourceOffset = pOperation->offset;
         byteCount = pOperation->length;
      }


      pParam->sigState = action;
      pParam->sigSourceBuffer = &pVerifyParam->sigSourceBuffer[sourceOffset];
      pParam->sigByteCount = byteCount;
      pParam->wdTriggerFct = pVerifyParam->wdTriggerFct;


      result = pOperation->pFunction(pParam);

      if (0x00u != result)
      {

         break;
      }
   }

   return result;
}
# 331 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_UpdateSegment( SecM_VerifyContextType * pContext,
   SecM_VerifyConfigPairType * pCfgList )
{
   SecM_StatusType result;
   SecM_AddrType currentAddress;
   SecM_SizeType remainderLength;
   SecM_SizeType verifyCount;
   SecM_SizeType readCount;





   SecM_ByteType verifyBuffer[0x0040u];
   SecM_SignatureParamType * pVerifyParam;

   result = 0x00u;

   if (pCfgList->count > 0u)
   {

      currentAddress = pContext->verifyAddress;
      remainderLength = pContext->remainingBytes;
# 370 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
      {
         pVerifyParam = &pContext->sigParam;

         pVerifyParam->sigSourceBuffer = verifyBuffer;
         pVerifyParam->sigState = 0x02u;

         while (remainderLength > 0u)
         {

            if ((((FL_WDTriggerFctType)0u)) != (pVerifyParam->wdTriggerFct)) { (pVerifyParam->wdTriggerFct)(); };


            verifyCount = 0x0040u / 1u;
            if (remainderLength < (0x0040u / 1u))
            {

               verifyCount = remainderLength;
            }


            readCount = pContext->readMemory(currentAddress, verifyBuffer, verifyCount);
# 411 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            if (readCount > 0u)

            {

               pVerifyParam->sigByteCount = (SecM_LengthType)readCount;
               result = SecM_VerifyWrapper(pVerifyParam, pCfgList);
            }
            else
            {
# 433 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            }


            currentAddress += verifyCount;
            remainderLength -= verifyCount;

            if (0x00u != result)
            {

               break;
            }
         }
      }
   }
   else
   {


   }

   return result;
}
# 467 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_UpdateSegmentAddress( SecM_VerifyContextType * pContext,
   SecM_VerifyConfigPairType * pCfgList,
   const FL_SegmentInfoType * pSegmentInfo )
{
   SecM_StatusType result;
   SecM_ByteType addressBuffer[2u * 4u];
   SecM_SignatureParamType * pVerifyParam;

   result = 0x00u;

   if (pCfgList->count > 0u)
   {

      SecM_SetInteger(4u, pSegmentInfo->transferredAddress, &addressBuffer[0]);
      SecM_SetInteger(4u, pSegmentInfo->length, &addressBuffer[4u]);

      pVerifyParam = &pContext->sigParam;

      pVerifyParam->sigSourceBuffer = addressBuffer;
      pVerifyParam->sigByteCount = 2u * 4u;
      pVerifyParam->sigState = 0x02u;


      result = SecM_VerifyWrapper(pVerifyParam, pCfgList);
   }
   else
   {

   }

   return result;
}
# 509 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static void SecM_PopulateCfgList( const SecM_VerifyConfigListType * pSourceList,
   SecM_VerifyConfigPairType * pTargetList, SecM_ByteType mask )
{
   SecM_ByteFastType inIndex;
   SecM_ByteFastType outIndex;
   SecM_VerifyOperationType const * pSourceOperation;
   SecM_SignatureParamType * pSourceParam;
   SecM_VerifyConfigType * pTarget;


   outIndex = 0u;

   for (inIndex = 0u; inIndex < pSourceList->count; inIndex++)
   {

      pSourceOperation = &pSourceList->pPrimitives.pOperation[inIndex];
      pSourceParam = &pSourceList->pPrimitives.pContext[inIndex];



      if (mask == (pSourceOperation->mask & mask))
      {

         pTarget = &pTargetList->pPrimitives[outIndex];

         pTarget->pOperation = pSourceOperation;
         pTarget->pContext = pSourceParam;

         outIndex++;
      }
   }


   pTargetList->count = outIndex;
}
# 570 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_VerificationWrapper( SecM_VerifyParamType * pVerifyParam,
   const SecM_VerifyConfigListType * pCfgList )

{
   SecM_StatusType result;

   SecM_VerifyContextType context;
   SecM_ByteFastType index;

   FL_SegmentListType * pSegmentList;

   FL_SegmentInfoType * pSegmentInfo;

   SecM_VerifyConfigPairType cfgListAll = {0};

   SecM_VerifyConfigPairType cfgListVerify = {0};


   SecM_VerifyConfigPairType cfgListAddr = {0};
# 606 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
   {

      SecM_PopulateCfgList(pCfgList, &cfgListAll, 0x00u);


      SecM_PopulateCfgList(pCfgList, &cfgListVerify, 0x04u);


      SecM_PopulateCfgList(pCfgList, &cfgListAddr, 0x01u);
# 623 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
      pSegmentList = &pVerifyParam->segmentList;



      context.sigParam.sigState = 0x01u;
      context.sigParam.sigByteCount = 0u;
      context.sigParam.wdTriggerFct = pVerifyParam->wdTriggerFct;
      context.readMemory = pVerifyParam->readMemory;

      context.sigParam.currentDataLength = (( SecM_SizeType *)0);


      context.sigParam.key = pVerifyParam->key;

      context.sigParam.currentHash.sigResultBuffer = (SecM_ResultBufferType)pVerifyParam->workspace.data;
      context.sigParam.currentHash.length = pVerifyParam->workspace.size;


      result = SecM_VerifyWrapper(&context.sigParam, &cfgListAll);

      if (0x00u == result)
      {
# 755 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
         for (index = 0u; index < pSegmentList->nrOfSegments; index++)
         {

            pSegmentInfo = &pSegmentList->segmentInfo[index];


            context.verifyAddress = pSegmentInfo->targetAddress;
            context.remainingBytes = pSegmentInfo->length;



            result = SecM_UpdateSegmentAddress(&context, &cfgListAddr, pSegmentInfo);

            if (0x00u == result)

            {

               result = SecM_UpdateSegment(&context, &cfgListAll);
            }


            if (0x00u != result)
            {

               break;
            }
         }

      }

      if (0x00u == result)
      {

         context.sigParam.sigState = 0x03u;

         result = SecM_VerifyWrapper(&context.sigParam, &cfgListAll);

         if (0x00u == result)
         {

            context.sigParam.sigSourceBuffer = pVerifyParam->verificationData;
            context.sigParam.sigState = 0x04u;

            result = SecM_VerifyWrapper(&context.sigParam, &cfgListVerify);
         }
      }
   }

   return result;
}
# 819 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_CopyDigest( SecM_ConstRamDataType pCalculatedData, SecM_LengthType calculatedSize,
   SecM_RamDataType pOutputData, SecM_LengthType outputSize )
{
   SecM_StatusType result;

   result = 0x01u;


   if (outputSize >= calculatedSize)
   {

      SecM_CopyBuffer(pCalculatedData, pOutputData, calculatedSize);

      result = 0x00u;
   }

   return result;
}
# 851 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
static SecM_StatusType SecM_CompareDigest( SecM_ConstRamDataType pCalculatedData, SecM_LengthType calculatedSize,
   SecM_ConstRamDataType pProvidedData, SecM_LengthType providedSize )
{
   SecM_StatusType result;
   SecM_LengthType index;
   SecM_ByteType accumulated;

   result = 0x01u;


   if (calculatedSize == providedSize)
   {
      accumulated = 0u;


      for (index = 0u; index < calculatedSize; index++)
      {
         accumulated |= pCalculatedData[index] ^ pProvidedData[index];
      }

      if (accumulated == 0u)
      {

         result = 0x00u;
      }
      else
      {

         result = 0x04u;
      }
   }

   return result;
}
# 1008 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
void SecM_InitPowerOnVerification(void)
{
# 1036 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
}
# 1056 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_VerificationBase( SecM_VerifyParamType * pVerifyParam,
   const SecM_VerifyConfigListType * pCfgList )
{
   SecM_StatusType result;
   SecM_SignatureParamType * pVerifyContext;


   SecM_ByteFastType index;
   SecM_ByteFastType cfgCount;





   SecM_CRCParamType crcWrittenParam;


   pVerifyContext = pCfgList->pPrimitives.pContext;


   pVerifyContext[0u].currentHash.sigResultBuffer = (SecM_ResultBufferType)((SecM_WorkspacePtrType)0);
   pVerifyContext[0u].currentHash.length = 0u;

   pVerifyContext[0u].currentDataLength = (( SecM_SizeType *)0);




   cfgCount = pCfgList->count;


   index = 1u;
# 1118 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
   if (index < cfgCount)
   {

      pVerifyContext[index].currentHash.sigResultBuffer = (SecM_ResultBufferType)&crcWrittenParam;
      pVerifyContext[index].currentHash.length = sizeof(SecM_CRCParamType);

      pVerifyContext[index].currentDataLength = (( SecM_SizeType *)0);

   }



   result = SecM_VerificationWrapper(pVerifyParam, pCfgList);





   pVerifyParam->crcTotal = crcZeroValue;


   return result;
}
# 1150 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
void SecM_UpdateDataLength( SecM_SignatureParamType * pVerifyParam )
{
   SecM_SizeType dataLength;


   if ((( SecM_SizeType *)0) != pVerifyParam->currentDataLength)
   {

      dataLength = *(pVerifyParam->currentDataLength);

      switch (pVerifyParam->sigState)
      {
         case 0x01u:
         {

            dataLength = 0u;

            break;
         }
         case 0x02u:
         {

            dataLength += pVerifyParam->sigByteCount;

            break;
         }
         case 0x03u:
         {

            dataLength >>= 6u;

            break;
         }
         case 0x04u:
         default:
         {

            break;
         }
      }


      *(pVerifyParam->currentDataLength) = dataLength;
   }
}
# 1205 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_InitVerification( SecM_VerifyInitType init )
{





   return 0x00u;
}
# 1223 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_DeinitVerification( SecM_VerifyDeinitType deinit )
{





   return 0x00u;
}
# 1249 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_VerifyChecksumCrc( SecM_SignatureParamType * pVerifyParam )
{
   SecM_StatusType result;
   SecM_CRCParamType * pCrcParam;
   SecM_ByteType crcAction;

   result = 0x01u;
   crcAction = 0x00u;



   if (pVerifyParam->currentHash.length >= sizeof(SecM_CRCParamType))
   {

      pCrcParam = ( SecM_CRCParamType *)(pVerifyParam->currentHash.sigResultBuffer);


      switch (pVerifyParam->sigState)
      {
         case 0x01u:
         {

            crcAction = 0x01u;

            break;
         }
         case 0x02u:
         {

            crcAction = 0x02u;

            break;
         }
         case 0x03u:
         {

            crcAction = 0x03u;

            break;
         }
         case 0x04u:
         {



            pCrcParam->crcOutputBuffer = pVerifyParam->sigSourceBuffer;
            crcAction = 0x05u;
# 1304 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            break;
         }
         default:
         {

            break;
         }
      }

      if (0x00u != crcAction)
      {

         pCrcParam->crcByteCount = pVerifyParam->sigByteCount;
         pCrcParam->crcSourceBuffer = pVerifyParam->sigSourceBuffer;
         pCrcParam->wdTriggerFct = pVerifyParam->wdTriggerFct;
         pCrcParam->crcState = crcAction;

         result = SecM_ComputeCRC(pCrcParam);
      }
   }

   return result;
}
# 1448 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_VerifyHash( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId )
{
   SecM_StatusType result;
   SecM_HashPrimitiveType const * pPrimitive;

   result = 0x01u;

   if (primitiveId < 0x00000001u)
   {
      pPrimitive = &SecM_HashPrimitives[primitiveId];


      if (pPrimitive->updateVerifiedData == 1u)
      {

         SecM_UpdateDataLength(pVerifyParam);
      }


      switch (pVerifyParam->sigState)
      {
         case 0x01u:
         {

            result = SecM_HashJob(pPrimitive->jobId, 1u, ((void *)0), 0, ((void *)0), ((void *)0));

            break;
         }
         case 0x02u:
         {

            result = SecM_HashJob(pPrimitive->jobId, 2u, pVerifyParam->sigSourceBuffer,
               pVerifyParam->sigByteCount, ((void *)0), ((void *)0));

            break;
         }
         case 0x03u:
         {
            uint32 hashResultLength = pPrimitive->digestLength;


            if (SecM_HashJob(pPrimitive->jobId, 4u, ((void *)0), 0u, pPrimitive->digest,
               &hashResultLength) == 0x00u)
            {

               if (hashResultLength == pPrimitive->digestLength)
               {
                  result = 0x00u;
               }
            }

            break;
         }
         case 0x04u:
         {
            if (pPrimitive->computationOnly == 1u)
            {



               result = SecM_CopyDigest(pPrimitive->digest, pPrimitive->digestLength, pVerifyParam->sigSourceBuffer,
                  pVerifyParam->sigByteCount);

               pVerifyParam->sigByteCount = pPrimitive->digestLength;
            }
            else
            {


               result = SecM_CompareDigest(pPrimitive->digest, pPrimitive->digestLength,
                  pVerifyParam->sigSourceBuffer, pVerifyParam->sigByteCount);
            }

            break;
         }
         default:
         {

            break;
         }
      }
   }

   return result;
}
# 1692 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
SecM_StatusType SecM_VerifySig( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId )
{
   SecM_StatusType result;
   SecM_SigPrimitiveType const * pPrimitive;

   result = 0x01u;

   if (primitiveId < 0x00000002u)
   {
      pPrimitive = &SecM_SignaturePrimitives[primitiveId];


      if (pPrimitive->updateVerifiedData == 1u)
      {

         SecM_UpdateDataLength(pVerifyParam);
      }


      switch (pVerifyParam->sigState)
      {
         case 0x01u:
         {







            if (pPrimitive->hashJobId == 0xFFFFFFFFu)
            {

               result = SecM_SignatureVerifyJob(pPrimitive->jobId, 1u, pVerifyParam->key,
                  ((void *)0), 0u, ((void *)0), 0u);
            }
# 1736 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            break;
         }
         case 0x02u:
         {
            if (pPrimitive->hashJobId == 0xFFFFFFFFu)
            {

               result = SecM_SignatureVerifyJob(pPrimitive->jobId, 2u, ((void *)0),
                  pVerifyParam->sigSourceBuffer, pVerifyParam->sigByteCount, ((void *)0), 0u);
            }
# 1755 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            break;
         }
         case 0x03u:
         {

            result = 0x00u;
            break;
         }
         case 0x04u:
         {
            SecM_StatusType ctxResult = 0x00u;
# 1783 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            if (ctxResult == 0x00u)
            {
               if (pPrimitive->hashJobId == 0xFFFFFFFFu)
               {
                  SecM_ByteType dummy[1u] = { 0u };

                  result = SecM_SignatureVerifyJob(pPrimitive->jobId, 4u, ((void *)0), dummy, 0u,
                     pVerifyParam->sigSourceBuffer, pVerifyParam->sigByteCount);
               }
# 1809 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
            }
            break;
         }
         default:
         {

            break;
         }
      }
   }

   return result;
}



# 1 "Include/MemMap.h" 1
# 1826 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c" 2
