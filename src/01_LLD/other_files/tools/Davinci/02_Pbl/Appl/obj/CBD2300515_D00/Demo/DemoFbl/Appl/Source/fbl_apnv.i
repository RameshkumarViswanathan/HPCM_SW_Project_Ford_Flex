# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
# 102 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
# 1 "Include/fbl_inc.h" 1
# 53 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/v_ver.h" 1
# 54 "Include/fbl_inc.h" 2
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
# 55 "Include/fbl_inc.h" 2





# 1 "GenData/FblBm_Cfg.h" 1
# 61 "Include/fbl_inc.h" 2




# 1 "../../../BSW/SecMod/SecM.h" 1
# 40 "../../../BSW/SecMod/SecM.h"
# 1 "../../../BSW/SecMod/Sec.h" 1
# 79 "../../../BSW/SecMod/Sec.h"
# 1 "../../../BSW/SecMod/Sec_Inc.h" 1
# 42 "../../../BSW/SecMod/Sec_Inc.h"
# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 43 "../../../BSW/SecMod/Sec_Inc.h" 2

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
# 45 "../../../BSW/SecMod/Sec_Inc.h" 2


# 1 "GenData/SecM_cfg.h" 1
# 48 "../../../BSW/SecMod/Sec_Inc.h" 2


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
# 51 "../../../BSW/SecMod/Sec_Inc.h" 2

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
# 53 "../../../BSW/SecMod/Sec_Inc.h" 2




# 1 "../../../BSW/SecMod/Sec_Types.h" 1
# 135 "../../../BSW/SecMod/Sec_Types.h"
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
# 213 "../../../BSW/SecMod/Sec_Types.h"
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
# 296 "../../../BSW/SecMod/Sec_Types.h"
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
# 488 "../../../BSW/SecMod/Sec_Types.h"
typedef SecM_ShortType SecM_Crc16Type;
typedef SecM_WordType SecM_Crc32Type;
typedef SecM_WordType SecM_Crc64BaseType;
typedef struct
{
   SecM_Crc64BaseType highWord;
   SecM_Crc64BaseType lowWord;
} SecM_Crc64Type;


typedef SecM_Crc16Type SecM_CRCType;
# 507 "../../../BSW/SecMod/Sec_Types.h"
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
# 58 "../../../BSW/SecMod/Sec_Inc.h" 2


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
# 61 "../../../BSW/SecMod/Sec_Inc.h" 2
# 80 "../../../BSW/SecMod/Sec.h" 2


# 1 "../../../BSW/SecMod/Sec_Job.h" 1
# 51 "../../../BSW/SecMod/Sec_Job.h"
# 1 "Include/MemMap.h" 1
# 52 "../../../BSW/SecMod/Sec_Job.h" 2


SecM_CryptographicKeyValuePtrType SecM_GetKeyValueByElementId(SecM_WordType smhKeyId, uint32 keyElementId);



SecM_StatusType SecM_HashJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_ConstRamDataType dataPtr,
   SecM_WordType dataLength, SecM_RamDataType hashPtr, SecM_WordType * hashLengthPtr);
# 79 "../../../BSW/SecMod/Sec_Job.h"
SecM_StatusType SecM_RandomGenerateJob(SecM_WordType jobId, SecM_RamDataType resultPtr, SecM_WordType * resultLengthPtr);


SecM_StatusType SecM_RandomSeedJob(SecM_WordType jobId, SecM_ConstRamDataType seedPtr, SecM_WordType seedLength);


SecM_StatusType SecM_SignatureVerifyJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_VoidPtrType keyPtr,
   SecM_ConstRamDataType dataPtr, SecM_WordType dataLength, SecM_ConstRamDataType signaturePtr, SecM_WordType signatureLength);
# 155 "../../../BSW/SecMod/Sec_Job.h"
void SecM_CancelAllJobs(void);


# 1 "Include/MemMap.h" 1
# 159 "../../../BSW/SecMod/Sec_Job.h" 2
# 83 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Crc.h" 1
# 90 "../../../BSW/SecMod/Sec_Crc.h"
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
# 136 "../../../BSW/SecMod/Sec_Crc.h" 2






# 1 "Include/MemMap.h" 1
# 143 "../../../BSW/SecMod/Sec_Crc.h" 2
# 153 "../../../BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 154 "../../../BSW/SecMod/Sec_Crc.h" 2

void SecM_InitPowerOnCRC( void );

SecM_StatusType SecM_ComputeCRC( SecM_CRCParamType * crcParam );






SecM_StatusType SecM_ComputeCrc16( SecM_CRC16ParamType * crcParam);
# 178 "../../../BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 179 "../../../BSW/SecMod/Sec_Crc.h" 2
# 84 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Decryption.h" 1
# 114 "../../../BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 115 "../../../BSW/SecMod/Sec_Decryption.h" 2
# 136 "../../../BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 137 "../../../BSW/SecMod/Sec_Decryption.h" 2
# 85 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_SeedKey.h" 1
# 56 "../../../BSW/SecMod/Sec_SeedKey.h"
# 1 "../../../BSW/SecMod/Sec_SeedKey_Cfg.h" 1
# 57 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_KeyBaseType;

typedef SecM_KeyBaseType SecM_KeyStorageType[0x00000012u];
# 100 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_SeedBaseType;

typedef SecM_SeedBaseType SecM_SeedStorageType[0x00000010u];
# 121 "../../../BSW/SecMod/Sec_SeedKey.h"
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
# 203 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_SeedBaseType * data;
   SecM_EntropyPoolType * entropyPool;
} SecM_SeedType;
# 218 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_KeyBaseType * data;

   SecM_VoidPtrType context;
} SecM_KeyType;






typedef SecM_StatusType (* pSecGenerateSeedFct)( SecM_SeedType * seed );




typedef SecM_StatusType (* pSecComputeKeyFct)( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

typedef SecM_StatusType (* pSecCompareKeyFct)( SecM_KeyType key, SecM_SeedType lastSeed );
# 252 "../../../BSW/SecMod/Sec_SeedKey.h"
# 1 "Include/MemMap.h" 1
# 253 "../../../BSW/SecMod/Sec_SeedKey.h" 2

extern SecM_StatusType SecM_GenerateSeed( SecM_SeedType * seed );




extern SecM_StatusType SecM_ComputeKey( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

extern SecM_StatusType SecM_CompareKey( SecM_KeyType key, SecM_SeedType lastSeed );





void SecM_InitEntropy( SecM_EntropyPoolType * pEntropyPool );


# 1 "Include/MemMap.h" 1
# 272 "../../../BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 7030 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 275 "../../../BSW/SecMod/Sec_SeedKey.h" 2
void SecM_ProvideEntropy( SecM_EntropyPoolType * pEntropyPool,
   SecM_ByteType * entropy, SecM_LengthType length );

# 1 "Include/MemMap.h" 1
# 7037 "Include/MemMap.h"
#pragma section
# 279 "../../../BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 282 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 292 "../../../BSW/SecMod/Sec_SeedKey.h"
extern SecM_StatusType SecM_ComputeKeyVendor( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );




# 1 "Include/MemMap.h" 1
# 299 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Verification.h" 1
# 178 "../../../BSW/SecMod/Sec_Verification.h"
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
# 230 "../../../BSW/SecMod/Sec_Verification.h"
# 1 "Include/MemMap.h" 1
# 231 "../../../BSW/SecMod/Sec_Verification.h" 2

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
# 272 "../../../BSW/SecMod/Sec_Verification.h" 2
# 87 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Cert.h" 1
# 75 "../../../BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 76 "../../../BSW/SecMod/Sec_Cert.h" 2

void SecM_InitCert( void );
# 101 "../../../BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 102 "../../../BSW/SecMod/Sec_Cert.h" 2
# 88 "../../../BSW/SecMod/Sec.h" 2
# 120 "../../../BSW/SecMod/Sec.h"
typedef SecM_ConstVoidPtrType SecM_InitType;


typedef void (* pSecTaskFct)( void );






# 1 "Include/MemMap.h" 1
# 131 "../../../BSW/SecMod/Sec.h" 2


 extern SecM_ShortType secTimer;



# 1 "Include/MemMap.h" 1
# 138 "../../../BSW/SecMod/Sec.h" 2
# 148 "../../../BSW/SecMod/Sec.h"
# 1 "Include/MemMap.h" 1
# 149 "../../../BSW/SecMod/Sec.h" 2

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
# 164 "../../../BSW/SecMod/Sec.h" 2
# 41 "../../../BSW/SecMod/SecM.h" 2
# 66 "Include/fbl_inc.h" 2






# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 105 "../../../BSW/Fbl/fbl_def.h"
# 1 "../../../BSW/Fbl/fbl_assert.h" 1
# 96 "../../../BSW/Fbl/fbl_assert.h"
# 1 "../../../BSW/Fbl/fbl_assert_oem.h" 1
# 97 "../../../BSW/Fbl/fbl_assert.h" 2
# 106 "../../../BSW/Fbl/fbl_def.h" 2
# 304 "../../../BSW/Fbl/fbl_def.h"
typedef vuint32 tFblStateBitmap;
# 328 "../../../BSW/Fbl/fbl_def.h"
typedef vuint8 tFblErrorType;
typedef vuint16 tFblErrorCode;

typedef vuint8 tFblResult;
typedef vuint8 tFblProgStatus;
typedef vuint8 tApplStatus;
typedef vuint8 tMagicFlag;
typedef vuint8 tFlashStatus;
# 346 "../../../BSW/Fbl/fbl_def.h"
typedef vuint32 FBL_ADDR_TYPE;
typedef vuint32 FBL_MEMSIZE_TYPE;







typedef vuint8 FBL_MEMID_TYPE;

typedef FBL_ADDR_TYPE tFblAddress;
typedef FBL_MEMSIZE_TYPE tFblLength;

typedef FBL_ADDR_TYPE tMtabAddress;
typedef FBL_MEMSIZE_TYPE tMtabLength;
typedef FBL_MEMID_TYPE tMtabMemId;

typedef vuint16 tChecksum;
# 374 "../../../BSW/Fbl/fbl_def.h"
typedef void (*tExportFct)(void);


typedef vuint8 (* tFblRealtimeFct)(void);


typedef tFblLength (* tReadMemoryFct)(tFblAddress address, vuint8 * buffer, tFblLength length);






typedef struct tagProcParam
{
   vuint8 * dataBuffer;
   vuint16 dataLength;
   vuint8 * dataOutBuffer;
   vuint16 dataOutLength;
   vuint16 dataOutMaxLength;
   vuint8 (* wdTriggerFct)(void);
   vuint8 mode;
} tProcParam;



typedef struct tagSegmentInfo
{
   tFblAddress targetAddress;
   tFblLength length;
} tSegmentInfo;


typedef struct tagSegmentList
{
   vuint8 nrOfSegments;
   tSegmentInfo segmentInfo[16u];
} tSegmentList;
# 73 "Include/fbl_inc.h" 2


# 1 "GenData/Fbl_Lbt.h" 1
# 94 "GenData/Fbl_Lbt.h"
typedef vuint8 tFblLbtBlockNr;
typedef boolean tFblLbtMandatoryType;
typedef vuint32 tFblLbtBlockIndex;
typedef vuint32 tFblLbtBlockType;
typedef vuint32 tFblLbtMagicFlag;
typedef vuint8 tFblLbtAssignFlags;
typedef vuint8 tFblLbtBlockCount;



typedef struct tBlockDescriptorTag {
  tFblLbtBlockNr blockNr;
  tFblLbtMandatoryType mandatoryType;
  tFblLbtBlockIndex blockIndex;
  tFblLbtBlockType blockType;
  tFblAddress blockStartAddress;
  tFblLength blockLength;
  tFblAddress headerAddress;
  tFblAddress bmHeaderAddress;
  tExportFct verifyOutput;
} tBlockDescriptor;


typedef struct tLogicalBlockTableTag {
  tFblLbtMagicFlag magicFlag;
  tFblLbtAssignFlags assignFlags[1u];
  tFblLbtBlockCount noOfBlocks;
  tBlockDescriptor logicalBlock[4u];
} tLogicalBlockTable;


 extern tLogicalBlockTable const FblLogicalBlockTable;
# 76 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_lbt_access.h" 1
# 58 "../../../BSW/Fbl/fbl_lbt_access.h"
typedef struct
{
   tFblLbtMandatoryType value;
   boolean enabled;
} tFblLbtMandatoryFilter;



typedef struct
{
   tFblLbtBlockType value;
   boolean enabled;
} tFblLbtTypeFilter;



typedef struct
{
   tFblLbtMandatoryFilter mandatoryType;

   tFblLbtTypeFilter blockType;

} tFblLbtBlockFilter;


# 1 "Include/MemMap.h" 1
# 84 "../../../BSW/Fbl/fbl_lbt_access.h" 2




void FblLbtInitPowerOn(void);


void FblLbtBlockFilterInit( tFblLbtBlockFilter * blockFilter);
void FblLbtBlockFilterSetMandatoryType( tFblLbtBlockFilter * blockFilter, tFblLbtMandatoryType mandatoryType);

void FblLbtBlockFilterSetBlockType( tFblLbtBlockFilter * blockFilter, tFblLbtBlockType blockType);



tFblLbtBlockCount FblLbtGetBlockCount(void);
tFblLbtMagicFlag FblLbtGetMagicFlag(void);
tFblResult FblLbtGetBlockNrByAddressLength(tFblAddress address, tFblLength length, tFblLbtBlockNr * blockNr);

tFblResult FblLbtGetBlockDescriptorByNr(tFblLbtBlockNr blockNr, tBlockDescriptor * blockDescriptor);
tFblResult FblLbtGetBlockDescriptorByAddressLength(tFblAddress address, tFblLength length, tBlockDescriptor * blockDescriptor);

tFblResult FblLbtGetBlockDescriptorByType(tFblLbtBlockType blockType, tBlockDescriptor * blockDescriptor);


tFblResult FblLbtGetBlockTypeByNr(tFblLbtBlockNr blockNr, tFblLbtBlockType * blockType);


tFblResult FblLbtGetBlockIndexByNr(tFblLbtBlockNr blockNr, tFblLbtBlockIndex * blockIndex);


tFblResult FblLbtGetBlockHeaderAddressByNr(tFblLbtBlockNr blockNr, tFblAddress * blockHeaderAddress);


tFblResult FblLbtGetBlockBmHeaderAddressByNr(tFblLbtBlockNr blockNr, tFblAddress * bmHeaderAddress);
# 132 "../../../BSW/Fbl/fbl_lbt_access.h"
tFblResult FblLbtGetBlockVerifyOutputFuncByNr(tFblLbtBlockNr blockNr, tExportFct * blockVerifyFunc);



tFblResult FblLbtGetBlockDescriptorByIndex(tFblLbtBlockIndex blockIndex, tBlockDescriptor * blockDescriptor);
tFblResult FblLbtGetBlockNrByIndex(tFblLbtBlockIndex blockIndex, tFblLbtBlockNr * blockNr);

tFblResult FblLbtGetBlockTypeByIndex(tFblLbtBlockIndex blockIndex, tFblLbtBlockType * blockType);


tFblResult FblLbtGetBlockHeaderAddressByIndex(tFblLbtBlockIndex blockIndex, tFblAddress * blockHeaderAddress);


tFblResult FblLbtGetBlockBmHeaderAddressByIndex(tFblLbtBlockIndex blockIndex, tFblAddress * bmHeaderAddress);
# 160 "../../../BSW/Fbl/fbl_lbt_access.h"
tFblResult FblLbtGetBlockVerifyOutputFuncByIndex(tFblLbtBlockIndex blockIndex, tExportFct * blockVerifyFunc);




tBlockDescriptor FblLbtBlockFirst(const tFblLbtBlockFilter * blockFilter);
tBlockDescriptor FblLbtBlockNext(void);
boolean FblLbtBlockDone(void);


tFblResult FblLbtCheckAddressRange(tFblAddress address, tFblAddress rangeStart, tFblLength rangeLength);
tFblResult FblLbtCheckRangeContained(tFblAddress address, tFblLength length, tFblAddress rangeStart, tFblLength rangeLength);





void FblLbtActivateLbtBlockByAddress(tFblAddress address);


# 1 "Include/MemMap.h" 1
# 181 "../../../BSW/Fbl/fbl_lbt_access.h" 2
# 77 "Include/fbl_inc.h" 2
# 86 "Include/fbl_inc.h"
# 1 "../../../BSW/Flash/flashdrv.h" 1
# 241 "../../../BSW/Flash/flashdrv.h"
typedef unsigned long tFlashData;
typedef unsigned long tFlashAddress;
typedef unsigned long tFlashLength;
typedef unsigned short tFlashErrorCode;


typedef unsigned char tFlashUint8;
typedef unsigned short tFlashUint16;
typedef unsigned long tFlashUint32;

typedef struct
{

   tFlashUint8 patchLevel;
   tFlashUint8 minorVersion;
   tFlashUint8 majorVersion;
   tFlashUint8 reserved1;

   tFlashErrorCode errorCode;

   tFlashUint16 programmingType;
   volatile tFlashUint32 * pflashEccStatReg;
   tFlashUint32 flashEccStatMask;
   volatile tFlashUint32 * pflashEccControlReg;
   tFlashUint32 flashEccControlMask;
   tFlashUint32 flashEccControlValue;
   tFlashAddress address;
   tFlashAddress verificationAddress;
   tFlashLength writeLength;
   tFlashLength eraseCount;
   tFlashData* data;

   tFlashUint8 (* wdTriggerFct)(void);

   tFlashData intendedData;
   tFlashData acutalData;
   tFlashAddress errorAddress;

   tFlashUint32* tempData;



} tFlashParam;


typedef void (* tFlashFct)(tFlashParam * flashParam);
# 298 "../../../BSW/Flash/flashdrv.h"
# 1 "Include/MemMap.h" 1
# 299 "../../../BSW/Flash/flashdrv.h" 2

void ExpFlashInit ( tFlashParam * flashParam );
void ExpFlashDeinit ( tFlashParam * flashParam );
void ExpFlashErase ( tFlashParam * flashParam );
void ExpFlashWrite ( tFlashParam * flashParam );





# 1 "Include/MemMap.h" 1
# 310 "../../../BSW/Flash/flashdrv.h" 2
# 87 "Include/fbl_inc.h" 2
# 101 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_wd.h" 1
# 72 "../../../BSW/Fbl/fbl_wd.h"
# 1 "Include/MemMap.h" 1
# 73 "../../../BSW/Fbl/fbl_wd.h" 2

 extern vuint16 P2Timer;
 extern vuint8 WDInitFlag;





typedef vuint8 tWdTime;


 extern tWdTime WDTimer;



# 1 "Include/MemMap.h" 1
# 89 "../../../BSW/Fbl/fbl_wd.h" 2






# 1 "Include/MemMap.h" 1
# 96 "../../../BSW/Fbl/fbl_wd.h" 2
void FblInitWatchdog ( void );

# 1 "Include/MemMap.h" 1
# 99 "../../../BSW/Fbl/fbl_wd.h" 2


# 1 "Include/MemMap.h" 1
# 4026 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 102 "../../../BSW/Fbl/fbl_wd.h" 2
void FblLookForWatchdogVoid( void );

# 1 "Include/MemMap.h" 1
# 4033 "Include/MemMap.h"
#pragma section
# 105 "../../../BSW/Fbl/fbl_wd.h" 2


# 1 "Include/MemMap.h" 1
# 4026 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 108 "../../../BSW/Fbl/fbl_wd.h" 2
vuint8 FblLookForWatchdog( void );

# 1 "Include/MemMap.h" 1
# 4033 "Include/MemMap.h"
#pragma section
# 111 "../../../BSW/Fbl/fbl_wd.h" 2
# 102 "Include/fbl_inc.h" 2

# 1 "../../../BSW/Fbl/iotypes.h" 1
# 43 "../../../BSW/Fbl/iotypes.h"
# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 44 "../../../BSW/Fbl/iotypes.h" 2
# 57 "../../../BSW/Fbl/iotypes.h"
typedef vuint8 IO_U8;
typedef vuint16 IO_U16;
typedef vuint32 IO_U32;
typedef vsint8 IO_S8;
typedef vsint16 IO_S16;
typedef vsint32 IO_S32;



typedef vuint32 IO_SizeType;
typedef vuint32 IO_PositionType;





typedef vuint16 IO_ErrorType;
typedef vuint8* IO_MemPtrType;
# 104 "Include/fbl_inc.h" 2


# 1 "GenData/Fbl_Fbt.h" 1
# 64 "GenData/Fbl_Fbt.h"
typedef struct tFlashBlockTag {
  tFblAddress begin;
  tFblAddress end;
  vuint8 device;
} tFlashBlock;

typedef IO_ErrorType (*tMemDrvFctInit)( void * );
typedef IO_ErrorType (*tMemDrvFctDeinit)( void * );
typedef IO_ErrorType (*tMemDrvFctErase)( IO_SizeType, IO_PositionType );
typedef IO_ErrorType (*tMemDrvFctWrite)( IO_MemPtrType, IO_SizeType, IO_PositionType );
typedef IO_ErrorType (*tMemDrvFctRead)( IO_MemPtrType, IO_SizeType, IO_PositionType );

typedef struct tMemDrvTag {
  tMemDrvFctInit init;
  tMemDrvFctDeinit deinit;
  tMemDrvFctErase erase;
  tMemDrvFctWrite write;
  tMemDrvFctRead read;
  vuint16 segmentSize;
  vuint8 erasedValue;
  boolean initHook;
  boolean deinitHook;
  boolean eraseHook;
  boolean writeHook;
  boolean readHook;
} tMemDrv;


 extern vuint8 const kNrOfFlashBlock;
 extern tFlashBlock const FlashBlock[];
 extern tMemDrv const memDrvLst[];
 extern vuint8 const kNrOfMemDrv;
# 107 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_mio.h" 1
# 103 "../../../BSW/Fbl/fbl_mio.h"
# 1 "Include/MemMap.h" 1
# 3858 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 104 "../../../BSW/Fbl/fbl_mio.h" 2

void MemDriver_InitPowerOn( void );

vsint16 FblMemSegmentNrGet( tFblAddress address );
tFblResult FblMemGetDeviceByAddr( tFblAddress address, vuint8 * device );
tFblResult FblMemGetDeviceByRange( tFblAddress address, tFblLength length, vuint8 * device );
tFblLength FblReadProm( tFblAddress address, vuint8 * buffer, tFblLength length );
IO_ErrorType FblReadPromExt( tFblAddress address, vuint8 * buffer, tFblLength length,
   tFblLength * actualReadCount );


IO_ErrorType MemDriver_InitSync( void * address );
IO_ErrorType MemDriver_DeinitSync( void * address );
IO_ErrorType MemDriver_RReadSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType MemDriver_RWriteSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType MemDriver_REraseSync( IO_SizeType len, IO_PositionType addr );

void MemDriver_Begin( vuint8 device, vuint8 function, boolean hookEnabled );
void MemDriver_End( boolean hookEnabled );


# 1 "Include/MemMap.h" 1
# 3865 "Include/MemMap.h"
#pragma section
# 126 "../../../BSW/Fbl/fbl_mio.h" 2






# 1 "Include/MemMap.h" 1
# 133 "../../../BSW/Fbl/fbl_mio.h" 2

 extern vuint8 memDrvDeviceActive;
 extern vuint8 memDrvFunctionActive;



 extern vsint16 memSegment;


# 1 "Include/MemMap.h" 1
# 143 "../../../BSW/Fbl/fbl_mio.h" 2
# 108 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_flio.h" 1
# 179 "../../../BSW/Fbl/fbl_flio.h"
# 1 "Include/MemMap.h" 1
# 3590 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 180 "../../../BSW/Fbl/fbl_flio.h" 2

IO_ErrorType FlashDriver_InitSync ( void * address );
IO_ErrorType FlashDriver_DeinitSync ( void * address );
IO_ErrorType FlashDriver_RWriteSync ( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress);
IO_ErrorType FlashDriver_REraseSync ( IO_SizeType eraseLength, IO_PositionType eraseAddress );
IO_ErrorType FlashDriver_RReadSync ( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_U32 FlashDriver_GetVersionOfDriver( void );
# 198 "../../../BSW/Fbl/fbl_flio.h"
void FlashDriver_ResumeProtection( void );
IO_ErrorType FlashDriver_DisableProtection(vuint16 uc, const vuint32 password[8u]);
# 226 "../../../BSW/Fbl/fbl_flio.h"
# 1 "Include/MemMap.h" 1
# 3597 "Include/MemMap.h"
#pragma section
# 227 "../../../BSW/Fbl/fbl_flio.h" 2






# 1 "Include/MemMap.h" 1
# 3542 "Include/MemMap.h"
#pragma section ".FblFlashDrvSection" awB
# 234 "../../../BSW/Fbl/fbl_flio.h" 2
 extern vuint8 flashCode[3072];

# 1 "Include/MemMap.h" 1
# 3549 "Include/MemMap.h"
#pragma section
# 237 "../../../BSW/Fbl/fbl_flio.h" 2
# 109 "Include/fbl_inc.h" 2
# 122 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/applvect.h" 1
# 95 "../../../BSW/Fbl/applvect.h"
# 1 "Include/MemMap.h" 1
# 4056 "Include/MemMap.h"
#pragma section ".ApplVectSection" a
# 96 "../../../BSW/Fbl/applvect.h" 2
extern vuint32 const ApplIntJmpTable[2u];

# 1 "Include/MemMap.h" 1
# 4063 "Include/MemMap.h"
#pragma section
# 99 "../../../BSW/Fbl/applvect.h" 2
# 123 "Include/fbl_inc.h" 2




# 1 "../../../BSW/FblCw/fbl_cw.h" 1
# 76 "../../../BSW/FblCw/fbl_cw.h"
# 1 "../../../BSW/_Common/ComStack_Types.h" 1
# 68 "../../../BSW/_Common/ComStack_Types.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 69 "../../../BSW/_Common/ComStack_Types.h" 2

# 1 "GenData/ComStack_Cfg.h" 1
# 63 "GenData/ComStack_Cfg.h"
typedef uint8 PduIdType;

typedef uint16 PduLengthType;
# 71 "../../../BSW/_Common/ComStack_Types.h" 2
# 178 "../../../BSW/_Common/ComStack_Types.h"
typedef uint8 * SduDataPtrType;
typedef struct
{
  SduDataPtrType SduDataPtr;
  PduLengthType SduLength;
} PduInfoType;

typedef enum
{
  BUFREQ_OK,
  BUFREQ_E_NOT_OK,
  BUFREQ_E_BUSY,
  BUFREQ_E_OVFL
} BufReq_ReturnType;

typedef uint8 NotifResultType;

typedef uint8 BusTrcvErrorType;

typedef uint8 NetworkHandleType;

typedef uint16 PNCHandleType;

typedef enum
{
  TP_DATACONF,

  TP_DATARETRY,

  TP_CONFPENDING
} TpDataStateType;

typedef struct
{
  TpDataStateType TpDataState;
  PduLengthType TxTpDataCnt;
} RetryInfoType;

typedef enum
{
  TP_STMIN,
  TP_BS,
  TP_BC
} TPParameterType;
# 77 "../../../BSW/FblCw/fbl_cw.h" 2
# 1 "GenData/Dcm_Cbk.h" 1
# 57 "GenData/Dcm_Cbk.h"
# 1 "GenData/FblCw_Cfg.h" 1
# 58 "GenData/Dcm_Cbk.h" 2
# 117 "GenData/Dcm_Cbk.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 118 "GenData/Dcm_Cbk.h" 2
# 135 "GenData/Dcm_Cbk.h"
BufReq_ReturnType Dcm_StartOfReception(PduIdType id, PduInfoType * info, PduLengthType TpSduLength, PduLengthType * bufferSizePtr);
# 152 "GenData/Dcm_Cbk.h"
BufReq_ReturnType Dcm_CopyRxData(PduIdType id, PduInfoType * info, PduLengthType * bufferSizePtr);
# 167 "GenData/Dcm_Cbk.h"
void Dcm_TpRxIndication(PduIdType id, Std_ReturnType result);
# 188 "GenData/Dcm_Cbk.h"
BufReq_ReturnType Dcm_CopyTxData(PduIdType id, PduInfoType * info, RetryInfoType * retry, PduLengthType * availableDataPtr);
# 203 "GenData/Dcm_Cbk.h"
void Dcm_TpTxConfirmation(PduIdType id, Std_ReturnType result);
# 236 "GenData/Dcm_Cbk.h"
# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 237 "GenData/Dcm_Cbk.h" 2
# 78 "../../../BSW/FblCw/fbl_cw.h" 2
# 1 "GenData/FblCw_Cfg.h" 1
# 79 "../../../BSW/FblCw/fbl_cw.h" 2
# 1 "GenData/FblCw_Lcfg.h" 1
# 668 "GenData/FblCw_Lcfg.h"
typedef uint8_least FblCw_CanIfCtrlInfoIterType;


typedef uint8_least FblCw_DcmDslConnectionGroupInfoIterType;


typedef uint8_least FblCw_DcmDslConnectionGroupInfoIndIterType;


typedef uint8_least FblCw_DcmDslConnectionInfoIterType;


typedef uint8_least FblCw_DcmDslProtocolRxInfoIterType;


typedef uint8_least FblCw_DcmDslProtocolTxInfoIterType;


typedef uint8_least FblCw_ParameterInfoIterType;
# 698 "GenData/FblCw_Lcfg.h"
typedef FblCw_ParameterInfoIterType FblCw_InitialBCIterType;


typedef FblCw_ParameterInfoIterType FblCw_InitialBSIterType;


typedef FblCw_ParameterInfoIterType FblCw_InitialSTminIterType;
# 716 "GenData/FblCw_Lcfg.h"
typedef uint16 FblCw_BusNmRxIndCycleMsType;


typedef uint8 FblCw_CanIfCtrlInfoType;


typedef uint8 FblCw_SnvOfDcmDslConnectionGroupInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndType;


typedef uint8 FblCw_BusTypeOfDcmDslConnectionInfoType;


typedef uint8 FblCw_ControllerOfDcmDslConnectionInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfoType;


typedef boolean FblCw_DcmDslConnectionGroupInfoIndUsedOfDcmDslConnectionInfoType;


typedef uint8 FblCw_ParameterInfoIdxOfDcmDslConnectionInfoType;


typedef boolean FblCw_ParameterInfoUsedOfDcmDslConnectionInfoType;


typedef uint16 FblCw_PayloadLimitOfDcmDslConnectionInfoType;


typedef uint8 FblCw_RxTesterSourceAddressOfDcmDslConnectionInfoType;


typedef uint8 FblCw_TxRemotePduIdOfDcmDslConnectionInfoType;


typedef uint8 FblCw_AddrTypeOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfoType;


typedef uint16 FblCw_InitialBCType;


typedef uint16 FblCw_InitialBSType;


typedef uint16 FblCw_InitialSTminType;


typedef boolean FblCw_InitializedType;


typedef uint8 FblCw_CanTpIdOfParameterInfoType;


typedef uint8 FblCw_PduRIdOfParameterInfoType;


typedef uint8 FblCw_SizeOfCanIfCtrlInfoType;


typedef uint8 FblCw_SizeOfDcmDslConnectionGroupInfoType;


typedef uint8 FblCw_SizeOfDcmDslConnectionGroupInfoIndType;


typedef uint8 FblCw_SizeOfDcmDslConnectionInfoType;


typedef uint8 FblCw_SizeOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_SizeOfDcmDslProtocolTxInfoType;


typedef uint8 FblCw_SizeOfInitialBCType;


typedef uint8 FblCw_SizeOfInitialBSType;


typedef uint8 FblCw_SizeOfInitialSTminType;


typedef uint8 FblCw_SizeOfParameterInfoType;


typedef uint8 FblCw_VariantIdxType;
# 831 "GenData/FblCw_Lcfg.h"
typedef struct sFblCw_DcmDslConnectionGroupInfoType
{
  FblCw_SnvOfDcmDslConnectionGroupInfoType SnvOfDcmDslConnectionGroupInfo;
} FblCw_DcmDslConnectionGroupInfoType;







typedef struct sFblCw_DcmDslConnectionInfoType
{
  FblCw_PayloadLimitOfDcmDslConnectionInfoType PayloadLimitOfDcmDslConnectionInfo;
  FblCw_BusTypeOfDcmDslConnectionInfoType BusTypeOfDcmDslConnectionInfo;
  FblCw_ControllerOfDcmDslConnectionInfoType ControllerOfDcmDslConnectionInfo;
  FblCw_DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfoType DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfo;
  FblCw_DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfoType DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfo;
  FblCw_ParameterInfoIdxOfDcmDslConnectionInfoType ParameterInfoIdxOfDcmDslConnectionInfo;
  FblCw_RxTesterSourceAddressOfDcmDslConnectionInfoType RxTesterSourceAddressOfDcmDslConnectionInfo;
  FblCw_TxRemotePduIdOfDcmDslConnectionInfoType TxRemotePduIdOfDcmDslConnectionInfo;
} FblCw_DcmDslConnectionInfoType;





typedef struct sFblCw_DcmDslProtocolRxInfoType
{
  FblCw_AddrTypeOfDcmDslProtocolRxInfoType AddrTypeOfDcmDslProtocolRxInfo;
  FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfoType DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfo;
} FblCw_DcmDslProtocolRxInfoType;





typedef struct sFblCw_DcmDslProtocolTxInfoType
{
  FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfoType DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfo;
} FblCw_DcmDslProtocolTxInfoType;


typedef struct sFblCw_ParameterInfoType
{
  FblCw_CanTpIdOfParameterInfoType CanTpIdOfParameterInfo;
  FblCw_PduRIdOfParameterInfoType PduRIdOfParameterInfo;
} FblCw_ParameterInfoType;
# 890 "GenData/FblCw_Lcfg.h"
typedef struct FblCw_InitialBCStructSTag
{
  FblCw_InitialBCType DcmDslConnection_9abab095;
  FblCw_InitialBCType DcmDslConnection_9a5c8c89;
} FblCw_InitialBCStructSType;


typedef struct FblCw_InitialBSStructSTag
{
  FblCw_InitialBSType DcmDslConnection_9abab095;
  FblCw_InitialBSType DcmDslConnection_9a5c8c89;
} FblCw_InitialBSStructSType;


typedef struct FblCw_InitialSTminStructSTag
{
  FblCw_InitialSTminType DcmDslConnection_9abab095;
  FblCw_InitialSTminType DcmDslConnection_9a5c8c89;
} FblCw_InitialSTminStructSType;
# 920 "GenData/FblCw_Lcfg.h"
typedef union FblCw_InitialBCUTag
{
  FblCw_InitialBCType raw[2];
  FblCw_InitialBCStructSType str;
} FblCw_InitialBCUType;


typedef union FblCw_InitialBSUTag
{
  FblCw_InitialBSType raw[2];
  FblCw_InitialBSStructSType str;
} FblCw_InitialBSUType;


typedef union FblCw_InitialSTminUTag
{
  FblCw_InitialSTminType raw[2];
  FblCw_InitialSTminStructSType str;
} FblCw_InitialSTminUType;
# 950 "GenData/FblCw_Lcfg.h"
typedef const FblCw_CanIfCtrlInfoType * FblCw_CanIfCtrlInfoPtrType;


typedef const FblCw_DcmDslConnectionGroupInfoType * FblCw_DcmDslConnectionGroupInfoPtrType;


typedef const FblCw_DcmDslConnectionGroupInfoIndType * FblCw_DcmDslConnectionGroupInfoIndPtrType;


typedef const FblCw_DcmDslConnectionInfoType * FblCw_DcmDslConnectionInfoPtrType;


typedef const FblCw_DcmDslProtocolRxInfoType * FblCw_DcmDslProtocolRxInfoPtrType;


typedef const FblCw_DcmDslProtocolTxInfoType * FblCw_DcmDslProtocolTxInfoPtrType;


typedef FblCw_InitialBCType * FblCw_InitialBCPtrType;


typedef FblCw_InitialBSType * FblCw_InitialBSPtrType;


typedef FblCw_InitialSTminType * FblCw_InitialSTminPtrType;


typedef FblCw_InitializedType * FblCw_InitializedPtrType;


typedef const FblCw_ParameterInfoType * FblCw_ParameterInfoPtrType;
# 992 "GenData/FblCw_Lcfg.h"
typedef struct sFblCw_PCConfigType
{
  uint8 FblCw_PCConfigNeverUsed;
} FblCw_PCConfigType;

typedef FblCw_PCConfigType FblCw_ConfigType;
# 1030 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3282 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1031 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_CanIfCtrlInfoType FblCw_CanIfCtrlInfo[1];


# 1 "Include/MemMap.h" 1
# 3289 "Include/MemMap.h"
#pragma section
# 1036 "GenData/FblCw_Lcfg.h" 2
# 1050 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1051 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionGroupInfoType FblCw_DcmDslConnectionGroupInfo[1];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1056 "GenData/FblCw_Lcfg.h" 2
# 1067 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3282 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1068 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionGroupInfoIndType FblCw_DcmDslConnectionGroupInfoInd[2];


# 1 "Include/MemMap.h" 1
# 3289 "Include/MemMap.h"
#pragma section
# 1073 "GenData/FblCw_Lcfg.h" 2
# 1094 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1095 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionInfoType FblCw_DcmDslConnectionInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1100 "GenData/FblCw_Lcfg.h" 2
# 1115 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1116 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslProtocolRxInfoType FblCw_DcmDslProtocolRxInfo[4];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1121 "GenData/FblCw_Lcfg.h" 2
# 1135 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1136 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslProtocolTxInfoType FblCw_DcmDslProtocolTxInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1141 "GenData/FblCw_Lcfg.h" 2
# 1156 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1157 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_ParameterInfoType FblCw_ParameterInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1162 "GenData/FblCw_Lcfg.h" 2
# 1173 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1174 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialBCUType FblCw_InitialBC;


# 1 "Include/MemMap.h" 1
# 1179 "GenData/FblCw_Lcfg.h" 2
# 1190 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1191 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialBSUType FblCw_InitialBS;


# 1 "Include/MemMap.h" 1
# 1196 "GenData/FblCw_Lcfg.h" 2
# 1207 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1208 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialSTminUType FblCw_InitialSTmin;


# 1 "Include/MemMap.h" 1
# 1213 "GenData/FblCw_Lcfg.h" 2
# 1224 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1225 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitializedType FblCw_Initialized;


# 1 "Include/MemMap.h" 1
# 1230 "GenData/FblCw_Lcfg.h" 2
# 1255 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1256 "GenData/FblCw_Lcfg.h" 2


# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 1259 "GenData/FblCw_Lcfg.h" 2
# 80 "../../../BSW/FblCw/fbl_cw.h" 2
# 298 "../../../BSW/FblCw/fbl_cw.h"
typedef uint16 FblCw_RxTesterSourceAddressOfDcmDslConnectionInfo16BitType;


typedef PduLengthType tCwDataLengthType;
typedef tCwDataLengthType tTpDataType;


typedef enum
{
  FBLCW_CONNECTIONBUSTYPE_UNSPECIFIED = 0,
  FBLCW_CONNECTIONBUSTYPE_CAN,
  FBLCW_CONNECTIONBUSTYPE_CANFD,
  FBLCW_CONNECTIONBUSTYPE_ETH,
  FBLCW_CONNECTIONBUSTYPE_LIN,
  FBLCW_CONNECTIONBUSTYPE_FR,
  FBLCW_CONNECTIONBUSTYPE_CDD
} tFblCw_ConnectionBusType;
# 330 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 331 "../../../BSW/FblCw/fbl_cw.h" 2
# 342 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_InitMemory(void);
# 360 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_Init(const FblCw_ConfigType * config);
# 374 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_Deinit(void);
# 385 "../../../BSW/FblCw/fbl_cw.h"
void FblCwIdleTask(void);
# 394 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTimerTask(void);







void FblCwStateTask(void);
# 412 "../../../BSW/FblCw/fbl_cw.h"
void FblCwPduTransmit( vuint8 * data, tCwDataLengthType length);
# 434 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTransmitRP(const vuint8 * data);







void FblCwRetransmitRP(void);
# 451 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCwCheckStartMessage(void);
# 460 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTxSetTargetAddress(FblCw_DcmDslConnectionInfoIterType targetAddress);







FblCw_DcmDslConnectionInfoIterType FblCwGetResponseAddress(void);






void FblCwResetResponseAddress(void);







tFblResult FblCwPrepareResponseAddress(void);







tFblResult FblCwSaveResponseAddress(void);
# 518 "../../../BSW/FblCw/fbl_cw.h"
void FblCwResetRxBlock(void);







tFblCw_ConnectionBusType FblCwGetBusTypeOfActiveConnection(void);







tCwDataLengthType FblCwGetPayloadLimit(void);
# 545 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCw_ChangeParameter(TPParameterType parameter, uint16 value);







tFblResult FblCw_ResetParameter(void);
# 563 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCw_ReadParameter(TPParameterType parameter, uint16 * value);
# 578 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 579 "../../../BSW/FblCw/fbl_cw.h" 2
# 594 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 595 "../../../BSW/FblCw/fbl_cw.h" 2


 extern vuint8 fblCwStateStartMsg;




# 1 "Include/MemMap.h" 1
# 603 "../../../BSW/FblCw/fbl_cw.h" 2
# 128 "Include/fbl_inc.h" 2



# 1 "../../../BSW/Fbl/fbl_hw.h" 1
# 112 "../../../BSW/Fbl/fbl_hw.h"
# 1 "../../../BSW/Fbl/fbl_sfr.h" 1
# 113 "../../../BSW/Fbl/fbl_hw.h" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 115 "../../../BSW/Fbl/fbl_hw.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 1 3
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 1 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\xkeycheck.h" 1 3
# 4 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 463 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long int _Int32t;
typedef unsigned long int _Uint32t;







typedef long int _Ptrdifft;






typedef long unsigned int _Sizet;
# 931 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 1 3











  typedef __builtin_va_list va_list;
# 39 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 3

# 932 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 1058 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
# 1113 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef int _Wchart;
typedef unsigned int _Wintt;
# 1152 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef va_list _Va_list;
# 1169 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3





void _Atexit(void (*)(void));

# 1189 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef char _Sysch_t;
# 1203 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3

# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 2 3



typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef unsigned short cnt_t;

typedef long off_t;
typedef long paddr_t;
typedef long key_t;

typedef char * caddr_t;

typedef unsigned short ino_t;
typedef int mode_t;
typedef short pid_t;
typedef short dev_t;
typedef unsigned short uid_t;
typedef unsigned short gid_t;
typedef short nlink_t;
typedef unsigned long daddr_t;




typedef int _ssize_t;
# 79 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
typedef _Sizet size_t;



# 116 "../../../BSW/Fbl/fbl_hw.h" 2
# 314 "../../../BSW/Fbl/fbl_hw.h"
typedef enum
{
   FBL_WDT_SYSTEM,
   FBL_WDT_CPU
} tFblWdtType;
# 329 "../../../BSW/Fbl/fbl_hw.h"
# 1 "Include/MemMap.h" 1
# 3678 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 330 "../../../BSW/Fbl/fbl_hw.h" 2
vuint16 FblGetTimerValue(void);

# 1 "Include/MemMap.h" 1
# 3685 "Include/MemMap.h"
#pragma section
# 333 "../../../BSW/Fbl/fbl_hw.h" 2


# 1 "Include/MemMap.h" 1
# 3693 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 336 "../../../BSW/Fbl/fbl_hw.h" 2
void FblTimerInit( void );

extern void FblHwRegisterUnlock( tFblWdtType wdtType );
extern void FblHwRegisterLock( tFblWdtType wdtType );
extern void FblHwRegisterModify( tFblWdtType wdtType, vuint16 password, vuint16 reload );

# 1 "Include/MemMap.h" 1
# 3699 "Include/MemMap.h"
#pragma section
# 343 "../../../BSW/Fbl/fbl_hw.h" 2





# 1 "Include/MemMap.h" 1
# 3693 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 349 "../../../BSW/Fbl/fbl_hw.h" 2

extern tFblLength FblReadBlock(tFblAddress address, vuint8 *buffer, tFblLength length);
extern vuint8 FblReadByte(tFblAddress address);

# 1 "Include/MemMap.h" 1
# 3699 "Include/MemMap.h"
#pragma section
# 354 "../../../BSW/Fbl/fbl_hw.h" 2



# 1 "Include/MemMap.h" 1
# 6396 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 358 "../../../BSW/Fbl/fbl_hw.h" 2

void* FblOwnMemcpy(void *dest, const void *source, unsigned int count);

# 1 "Include/MemMap.h" 1
# 6403 "Include/MemMap.h"
#pragma section
# 362 "../../../BSW/Fbl/fbl_hw.h" 2
# 374 "../../../BSW/Fbl/fbl_hw.h"
# 1 "Include/MemMap.h" 1
# 375 "../../../BSW/Fbl/fbl_hw.h" 2
 extern vuint32 fblCurrentTimer;
 extern vuint32 fblCurrentCmpValue;

# 1 "Include/MemMap.h" 1
# 379 "../../../BSW/Fbl/fbl_hw.h" 2
# 132 "Include/fbl_inc.h" 2




# 1 "../../../BSW/WrapNv/WrapNv.h" 1
# 67 "../../../BSW/WrapNv/WrapNv.h"
# 1 "GenData/WrapNv_Cfg.h" 1
# 106 "GenData/WrapNv_Cfg.h"
# 1 "Include/MemMap.h" 1
# 107 "GenData/WrapNv_Cfg.h" 2

void WrapNv_InitConfig( void );



# 1 "Include/MemMap.h" 1
# 113 "GenData/WrapNv_Cfg.h" 2
# 68 "../../../BSW/WrapNv/WrapNv.h" 2
# 157 "../../../BSW/WrapNv/WrapNv.h"
typedef enum
{
   WRAPNV_OPSTATUS_INIT = 0u,
   WRAPNV_OPSTATUS_PENDING,
   WRAPNV_OPSTATUS_CANCEL,
   WRAPNV_OPSTATUS_IDLE
} tWrapNvOpStatus;


typedef enum
{
   WRAPNV_ACCESS_DATAELEMENT = 0u,
   WRAPNV_ACCESS_BLOCKELEMENT
} tWrapNvAccessType;
# 179 "../../../BSW/WrapNv/WrapNv.h"
typedef unsigned char WrapNv_DefaultReturntype;






# 1 "Include/MemMap.h" 1
# 187 "../../../BSW/WrapNv/WrapNv.h" 2

void WrapNv_Init( void );
# 215 "../../../BSW/WrapNv/WrapNv.h"
# 1 "Include/MemMap.h" 1
# 216 "../../../BSW/WrapNv/WrapNv.h" 2
# 137 "Include/fbl_inc.h" 2


# 1 "../../../BSW/Fbl/fbl_nvpattern.h" 1
# 61 "../../../BSW/Fbl/fbl_nvpattern.h"
# 1 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 1
# 168 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
typedef enum
{
    kFblNvPatternId_Invalid = 0u


   ,kFblNvPatternId_PartitionValidity
   ,kFblNvPatternId_ApplValidity = kFblNvPatternId_PartitionValidity


   ,kFblNvPatternId_ModuleValidity
   ,kFblNvPatternId_BlockValidity = kFblNvPatternId_ModuleValidity




  





   ,kFblNvPatternId_Last
} tFblNvPatternId;
# 206 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
# 1 "Include/MemMap.h" 1
# 207 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 2
# 219 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
# 1 "Include/MemMap.h" 1
# 220 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 2
# 62 "../../../BSW/Fbl/fbl_nvpattern.h" 2
# 77 "../../../BSW/Fbl/fbl_nvpattern.h"
typedef enum
{
   FBL_NVPATTERN_STATE_NOMEMSEGMENT = 0u,
   FBL_NVPATTERN_STATE_READERROR,
   FBL_NVPATTERN_STATE_ERASED,
   FBL_NVPATTERN_STATE_UNEXPECTEDVALUE,
   FBL_NVPATTERN_STATE_EXPECTEDVALUE
} tFblNvPatternItemState;


typedef struct
{
   tFblNvPatternItemState markerState;
   tFblNvPatternItemState maskState;
} tFblNvPatternState;






# 1 "Include/MemMap.h" 1
# 99 "../../../BSW/Fbl/fbl_nvpattern.h" 2


tFblNvPatternState FblNvPatternGetPatternState( const tBlockDescriptor * pBlockDescriptor,
                                                       tFblNvPatternId patternId,
                                                       IO_PositionType * pPatternAddress,
                                                       IO_SizeType * pPatternLength );
vsint16 FblNvPatternGetBaseAddr( vuint8 blockNr,
                                 tFblNvPatternId patternId,
                                 IO_PositionType * pPatternAddress,
                                 IO_SizeType * pPatternLength );
vsint16 FblNvPatternGetBaseAddrByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
                                                  tFblNvPatternId patternId,
                                                  IO_PositionType * pPatternAddress,
                                                  IO_SizeType * pPatternLength );
tFblResult FblNvPatternSet( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternSetByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
tFblResult FblNvPatternClr( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternClrByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
tFblResult FblNvPatternGet( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternGetByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
# 141 "../../../BSW/Fbl/fbl_nvpattern.h"
# 1 "Include/MemMap.h" 1
# 142 "../../../BSW/Fbl/fbl_nvpattern.h" 2
# 140 "Include/fbl_inc.h" 2



# 1 "../../../BSW/Fbl/fbl_ramio_inc.h" 1
# 41 "../../../BSW/Fbl/fbl_ramio_inc.h"
# 1 "../../../BSW/Fbl/iotypes.h" 1
# 42 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "Include/fbl_ramio_cfg.h" 1
# 43 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_ramio.h" 1
# 77 "../../../BSW/Fbl/fbl_ramio.h"
# 1 "Include/MemMap.h" 1
# 78 "../../../BSW/Fbl/fbl_ramio.h" 2

IO_ErrorType RamDriver_InitSync( void * address);
IO_ErrorType RamDriver_DeinitSync( void * address );
IO_ErrorType RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_ErrorType RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress );
IO_ErrorType RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress );


# 1 "Include/MemMap.h" 1
# 87 "../../../BSW/Fbl/fbl_ramio.h" 2
# 44 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 144 "Include/fbl_inc.h" 2
# 155 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_diag.h" 1
# 530 "../../../BSW/Fbl/fbl_diag.h"
typedef vuint32 tStateBitmap;
# 813 "../../../BSW/Fbl/fbl_diag.h"
typedef struct tagSecurityLevel
{
   vuint8 accessType;
   vuint8 stateIdxKey;
   vuint8 stateIdxAccess;
} tSecurityLevel;
# 830 "../../../BSW/Fbl/fbl_diag.h"
typedef tFblAddress tFblDiagAddr;


typedef enum
{
   kBlockState_Init,
   kBlockState_Erased,
   kBlockState_Verified
} tBlockState;


typedef struct
{
   tBlockState state;
   vuint8 nrOfSegments;
   vuint8 segmentIdx[16u];
} tBlockHeader;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength length;
   vuint8 checksum[32u];
} tDiagSegmentInfo;


typedef struct
{
   vuint8 nrOfSegments;
   tDiagSegmentInfo segmentInfo[16u];
} tDiagSegmentList;





typedef enum
{
   kTokenHdlrOk = 0,
   kTokenHdlrProtocolFailed = 1,
   kTokenHdlrSyncPKeyValFailed = 2,
   kTokenHdlrFesnFailed = 3,
   kTokenHdlrTimeTokenFailed = 4,

   kTokenHdlrKeyChangeFailed = 5,

   kTokenHdlrSignatureFailed = 6,
   kTokenHdlrTokenApplPassed = 7,
   kTokenHdlrTokenSignFailed = 8,
   kTokenHdlrInternalFailed = 9
} tTokenHdlResult;

typedef enum
{
   FBL_DIAG_SRVMSGID_NOTSTORED = 0,
   FBL_DIAG_SRVMSGID_STORED = 1
} tFblDiagSrvMsgIdStoreStatus;
# 897 "../../../BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 898 "../../../BSW/Fbl/fbl_diag.h" 2

void FblDiagTimerTask( void );
void FblDiagStateTask( void );
vuint8 FblRealTimeSupport( void );

void FblDiagPostInit( void );
void FblDiagEcuReset(vuint8 resetOptions, vuint8 responseFlag);
void FblDiagInitPowerOn( void );
void FblDiagInit( void );
vuint8 FblDiagGetLastErasedBlock( void );
void FblDiagSetLastErasedBlock( vuint8 blockNr );

void DiagResponseProcessor( tCwDataLengthType dataLength );


# 1 "Include/MemMap.h" 1
# 914 "../../../BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 917 "../../../BSW/Fbl/fbl_diag.h" 2
void DiagExRCRResponsePending( vuint8 forceSend );

void FblDiagTxErrorIndication( vuint8 cwMsgType );
void FblDiagRxIndication( vuint8 * pbDiagBuffer, tCwDataLengthType rxDataLength );
void FblDiagTxConfirmation( vuint8 cwMsgType );
vuint8* FblDiagRxGetPhysBuffer( tCwDataLengthType rxDataLength );
vuint8* FblDiagRxGetFuncBuffer( tCwDataLengthType rxDataLength );
void FblDiagRxStartIndication( void );
void FblDiagRxErrorIndication( void );

# 1 "Include/MemMap.h" 1
# 3491 "Include/MemMap.h"
#pragma section
# 928 "../../../BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 931 "../../../BSW/Fbl/fbl_diag.h" 2

vuint8 FblDiagCheckStartMsg(const vuint8 *pData, vuint32 length);
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, tDiagSegmentList * blockSegList);


void CheckSuppressPosRspMsgIndication( vuint8 *subparam );

tFblResult FblDiagMemPreWrite( void );
tFblResult FblDiagMemPostWrite( void );



# 1 "Include/MemMap.h" 1
# 944 "../../../BSW/Fbl/fbl_diag.h" 2






# 1 "Include/MemMap.h" 1
# 951 "../../../BSW/Fbl/fbl_diag.h" 2


 extern vuint8 * DiagBuffer;
 extern vuint8 diagErrorCode;
 extern tCwDataLengthType DiagDataLength;
 extern vuint16 P2Timeout;
 extern vuint16 testerPresentTimeout;
 extern vuint8 diagResponseFlag;
 extern vuint8 diagServiceCurrent;
 extern tStateBitmap fblStates[(((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u];
 extern vuint8 diagCurrentSecLvl;


# 1 "Include/MemMap.h" 1
# 965 "../../../BSW/Fbl/fbl_diag.h" 2
# 985 "../../../BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 986 "../../../BSW/Fbl/fbl_diag.h" 2




 extern vuint16 errStatErrorCode;
 extern vuint16 errStatFblStates;
 extern vuint8 errStatLastServiceId;
 extern vuint8 errStatFlashDrvVersion[3];
 extern vuint16 errStatFlashDrvErrorCode;
 extern tBlockDescriptor errStatDescriptor;
# 1005 "../../../BSW/Fbl/fbl_diag.h"
 extern vuint8 tokenBuffer[1899u];




# 1 "Include/MemMap.h" 1
# 1011 "../../../BSW/Fbl/fbl_diag.h" 2
# 156 "Include/fbl_inc.h" 2

# 1 "../../../BSW/Fbl/fbl_mem.h" 1
# 187 "../../../BSW/Fbl/fbl_mem.h"
# 1 "../../../BSW/Fbl/fbl_mem_oem.h" 1
# 188 "../../../BSW/Fbl/fbl_mem.h" 2
# 594 "../../../BSW/Fbl/fbl_mem.h"
typedef SecM_StatusType tFblMemVerifyStatus;




typedef SecM_SignatureParamType tFblMemVerifyParamInput;




typedef SecM_VerifyParamType tFblMemVerifyParamOutput;




typedef SecM_LengthType tFblMemVerifyLength;




typedef SecM_SizeType tFblMemVerifySize;




typedef SecM_AddrType tFblMemVerifyAddr;




typedef vuint8 * tFblMemVerifyDataPtr;




typedef FL_WDTriggerFctType tFblMemVerifyWdFct;




typedef FL_ReadMemoryFctType tFblMemVerifyReadFct;


typedef tFblMemVerifyStatus (*tFblMemVerifyFctInput) ( tFblMemVerifyParamInput *);






typedef tFblMemVerifyStatus (*tFblMemVerifyFctOutput) ( tFblMemVerifyParamOutput *fp);





typedef FL_SegmentListType tFblMemSegmentList;




typedef FL_SegmentInfoType tFblMemSegmentListEntry;



typedef vuint8 tFblMemVerifyOption;


typedef enum
{


   kFblMemStatus_Ok = ((vuint8) 0x00u)
   ,kFblMemStatus_Failed = ((vuint8) 0x22u)

   ,kFblMemStatus_BlockEraseSequence = ((vuint8) 0x24u)

   ,kFblMemStatus_BlockStartSequence = ((vuint8) 0x22u)
   ,kFblMemStatus_BlockStartParam = ((vuint8) 0x22u)

   ,kFblMemStatus_BlockEndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_BlockEndVerifyFinalize = ((vuint8) 0x72u)

   ,kFblMemStatus_BlockVerifySequence = ((vuint8) 0x24u)
   ,kFblMemStatus_BlockVerifyInputVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyProcessedVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyPipeVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyOutputVerify = ((vuint8) 0x72u)

   ,kFblMemStatus_SegmentStartSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentStartDataProcInit = ((vuint8) 0x31u)
   ,kFblMemStatus_SegmentStartStreamOutInit = ((vuint8) 0x31u)
   ,kFblMemStatus_SegmentStartVerifyInit = ((vuint8) 0x22u)
   ,kFblMemStatus_SegmentStartVerifyCompute = ((vuint8) 0x72u)
   ,kFblMemStatus_SegmentStartSegmentCount = ((vuint8) 0x31u)

   ,kFblMemStatus_SegmentEndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentEndInsufficientData = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentEndPost = ((vuint8) 0x22u)

   ,kFblMemStatus_DataIndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_DataIndParam = ((vuint8) 0x72u)
   ,kFblMemStatus_DataIndOverflow = ((vuint8) 0x71u)

   ,kFblMemStatus_DataProc = ((vuint8) 0x72u)
   ,kFblMemStatus_DataProcConsume = ((vuint8) 0x72u)
   ,kFblMemStatus_DataProcDeinit = ((vuint8) 0x72u)

   ,kFblMemStatus_StreamOutput = ((vuint8) 0x72u)
   ,kFblMemStatus_StreamOutputConsume = ((vuint8) 0x72u)
   ,kFblMemStatus_StreamOutputOverflow = ((vuint8) 0x71u)
   ,kFblMemStatus_StreamOutputDeinit = ((vuint8) 0x72u)

   ,kFblMemStatus_DriverResumeWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverErase = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverRemainder = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverSuspendWrite = ((vuint8) 0x72u)

   ,kFblMemStatus_ProgramOverflow = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramOutsideFbt = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramUnalignedAddress = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramDriverNotReady = ((vuint8) 0x24u)
   ,kFblMemStatus_ProgramPreWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramPostWrite = ((vuint8) 0x72u)

   ,kFblMemStatus_EraseOutsideFbt = ((vuint8) 0x31u)
   ,kFblMemStatus_EraseDriverNotReady = ((vuint8) 0x22u)
   ,kFblMemStatus_ErasePreErase = ((vuint8) 0x22u)
   ,kFblMemStatus_ErasePostErase = ((vuint8) 0x22u)

   ,kFblMemStatus_VerifyCompute = ((vuint8) 0x72u)
   ,kFblMemStatus_VerifyFinalize = ((vuint8) 0x72u)

   ,kFblMemStatus_PassThroughLocal = ((vuint8) 0x22u)
   ,kFblMemStatus_PassThroughRemote = ((vuint8) 0x22u)
# 760 "../../../BSW/Fbl/fbl_mem.h"
} tFblMemStatus;


typedef enum
{
   kFblMemType_RAM = 0u,
   kFblMemType_ROM
} tFblMemType;


typedef enum
{
   kFblMemProgState_Idle = 0u,
   kFblMemProgState_Error,
   kFblMemProgState_Suspended,
   kFblMemProgState_SuspendPending,
   kFblMemProgState_Checkpoint,
   kFblMemProgState_Pending
} tFblMemProgState;


typedef vuint8 * tFblMemRamData;

typedef const vuint8 * tFblMemConstRamData;


typedef vuint8 tFblMemDfi;


typedef struct
{
   tFblMemVerifyFctInput function;
   tFblMemVerifyParamInput * param;
} tFblMemVerifyRoutineInput;


typedef struct
{
   tFblMemVerifyFctOutput function;
   tFblMemVerifyParamOutput * param;
} tFblMemVerifyRoutineOutput;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength targetLength;

   tFblAddress logicalAddress;
   tFblLength logicalLength;
   tFblMemVerifyRoutineInput verifyRoutineInput;
   tFblMemVerifyRoutineInput verifyRoutineProcessed;
   tFblMemVerifyRoutineInput verifyRoutinePipe;
   tFblMemVerifyRoutineOutput verifyRoutineOutput;
   tFblMemVerifyReadFct readFct;
   tFblMemSegmentList * segmentList;
   vuint32 maxSegments;
} tFblMemBlockInfo;


typedef struct
{
   tFblMemRamData data;
   tFblLength length;
} tFblMemVerifyData;


typedef struct
{
   tFblMemVerifyData verifyDataInput;
   tFblMemVerifyData verifyDataProcessed;
   tFblMemVerifyData verifyDataPipe;
   tFblMemVerifyData verifyDataOutput;
} tFblMemBlockVerifyData;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength targetLength;

   tFblAddress logicalAddress;
   tFblLength logicalLength;

   tFblMemType type;
   tFblMemDfi dataFormat;
} tFblMemSegmentInfo;



typedef vuint8 tFblMemTriggerStatus;





typedef vuint32 tFblMemInputSource;
# 904 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 905 "../../../BSW/Fbl/fbl_mem.h" 2
# 914 "../../../BSW/Fbl/fbl_mem.h"
tFblMemRamData FblMemInitPowerOn( void );
tFblMemRamData FblMemInitPowerOnExt( tFblLength preambleLen, tFblMemInputSource sourceHandle );
tFblMemRamData FblMemInit( void );
void FblMemDeinit( void );
tFblMemRamData FblMemGetActiveBuffer( void );
tFblMemStatus FblMemBlockEraseIndication( const tFblMemBlockInfo * block );
tFblMemStatus FblMemBlockStartIndication( tFblMemBlockInfo * block );
tFblMemStatus FblMemBlockEndIndication( void );
tFblMemStatus FblMemBlockVerify( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult );
tFblMemStatus FblMemBlockVerifyExtended( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult, const tFblMemVerifyOption option );
tFblMemStatus FblMemSegmentStartIndication( const tFblMemSegmentInfo * segment );
tFblMemStatus FblMemSegmentEndIndication( tFblLength * writeLength );
tFblMemStatus FblMemDataIndication( tFblMemConstRamData buffer, tFblLength offset, tFblLength length );
void FblMemTask( void );
void FblMemFlushInputData( void );


tFblMemStatus FblMemEraseRegion( tFblAddress eraseAddress, tFblLength eraseLength );
tFblMemStatus FblMemProgramBuffer( tFblAddress programAddress, tFblLength * programLength,
   tFblMemRamData programData );


void FblMemSetInteger( vuint32 count, vuint32 input, tFblMemRamData buffer );
vuint32 FblMemGetInteger( vuint32 count, tFblMemConstRamData buffer );
# 948 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 949 "../../../BSW/Fbl/fbl_mem.h" 2


# 1 "Include/MemMap.h" 1
# 3765 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 952 "../../../BSW/Fbl/fbl_mem.h" 2

void FblMemResumeIndication( void );

void FblMemRxNotification( void );



# 1 "Include/MemMap.h" 1
# 3774 "Include/MemMap.h"
#pragma section
# 960 "../../../BSW/Fbl/fbl_mem.h" 2
# 970 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 971 "../../../BSW/Fbl/fbl_mem.h" 2

 extern tFblMemProgState fblMemProgState;


# 1 "Include/MemMap.h" 1
# 976 "../../../BSW/Fbl/fbl_mem.h" 2
# 158 "Include/fbl_inc.h" 2




# 1 "Include/comdat.h" 1
# 53 "Include/comdat.h"
typedef struct tBootSwId_tag
{
   unsigned char NumberOfModules;

   unsigned char IdentificationParameterRecord[24 + 1];
} tBootSwId;

typedef struct tBootGenToolVer_tag
{
   unsigned char GenerationToolSupplier;
   unsigned char GenerationToolVersionNumber[10];
} tBootGenToolVer;

typedef struct tFblCommonData_tag
{

   unsigned char EcuCoreAssemblyNumber[24 + 1];
   unsigned char EcuDeliveryAssemblyNumber[24 + 1];
   unsigned char EcuSerialNumber[16 + 1];
   tBootSwId BootSoftwareIdentification;
   tBootGenToolVer BootloaderGenToolVersionNumber;
   unsigned char FordElectronicSerialNumber[8 + 1];
} tFblCommonData;
# 163 "Include/fbl_inc.h" 2
# 176 "Include/fbl_inc.h"
# 1 "Include/fbl_ap.h" 1
# 165 "Include/fbl_ap.h"
void ApplFblInit( void );
void ApplFblStartup( vuint8 initposition );
void ApplTrcvrNormalMode( void );
void ApplFblSetVfp( void );
void ApplFblResetVfp( void );
void ApplFblReset( void );


void ApplFblTask( void );



void ApplFblStateTask( void );


void ApplFblFatalError( vuint8 errorCode );

void ApplCanWakeUp( CAN_CHANNEL_CANTYPE_ONLY );


tFblResult ApplFblInitDataProcessing( tProcParam * procParam );
tFblResult ApplFblDataProcessing( tProcParam * procParam );
tFblResult ApplFblDeinitDataProcessing( tProcParam * procParam );
# 198 "Include/fbl_ap.h"
void ApplFblCanBusOff( void );




void ApplTrcvrSleepMode( void );
vuint8 ApplFblCwWakeUp( void );


void ApplFblPreMemDriver( vuint8 device, vuint8 function );


void ApplFblPostMemDriver( vuint8 device, vuint8 function );
# 228 "Include/fbl_ap.h"
 extern tFblCommonData const fblCommonData;
# 177 "Include/fbl_inc.h" 2


# 1 "Include/fbl_apwd.h" 1
# 154 "Include/fbl_apwd.h"
void ApplFblWDInit( void );
void ApplFblWDLong( void );
void ApplFblWDShort( void );

# 1 "Include/MemMap.h" 1
# 8063 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 159 "Include/fbl_apwd.h" 2
void ApplFblWDTrigger( void );

# 1 "Include/MemMap.h" 1
# 8072 "Include/MemMap.h"
#pragma section
# 162 "Include/fbl_apwd.h" 2
# 180 "Include/fbl_inc.h" 2



# 1 "Include/fbl_apdi.h" 1
# 163 "Include/fbl_apdi.h"
typedef vuint8 const * tDidDataPtr;

typedef struct tFblDidTable_tag
{
   vuint16 did;
   vuint16 size;
   tDidDataPtr ptr;
} tFblDidTable;
# 179 "Include/fbl_apdi.h"
 extern tFblDidTable const fblDidTable[];
 extern vuint8 const kNrOfDids;
# 195 "Include/fbl_apdi.h"
vuint8 ApplFblReadDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );

vuint8 ApplFblWriteDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );



void ApplFblTokenRevertKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevPermKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevTempKey( const vuint8 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevDateKey( const vuint8 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevIgniKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenProgKey( const vuint8 * tokenBuf, vuint16 tokenLength );






void ApplFblInitErrStatus( void );


tFblMemStatus ApplFblMemConditionCheck( void );

vuint8 ApplFblSecurityInit( void );

# 1 "Include/MemMap.h" 1
# 2905 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 221 "Include/fbl_apdi.h" 2
vuint8 ApplFblSecuritySeedInit( void );

# 1 "Include/MemMap.h" 1
# 2914 "Include/MemMap.h"
#pragma section
# 224 "Include/fbl_apdi.h" 2
vuint8 ApplFblSecuritySeed( void );
vuint8 ApplFblSecurityKey( void );
# 184 "Include/fbl_inc.h" 2
# 1 "Include/fbl_apnv.h" 1
# 186 "Include/fbl_apnv.h"
 extern vuint8 applSignValidState;






tFblProgStatus ApplFblExtProgRequest( void );
tApplStatus ApplFblIsValidApp( void );
tFblResult ApplFblValidateApp( void );
tFblResult ApplFblInvalidateApp( void );
tFblResult ApplFblValidateBlock( tBlockDescriptor blockDescriptor );
tFblResult ApplFblInvalidateBlock( tBlockDescriptor blockDescriptor );

tFblResult ApplFblAdjustLbtBlockData(tBlockDescriptor * blockDescriptor);



void ApplFblReadSecurityBytes( vuint8 * key, vuint16 length );





tFblResult ApplFblReadVerificationKey( SecM_AsymKeyType * publicKey );

tFblResult ApplFblWriteVerificationKey( vuint8 * key );




tFblResult ApplFblWriteDcmDslRxTesterSourceAddr(vuint8* buffer);
tFblResult ApplFblReadDcmDslRxTesterSourceAddr(vuint8* buffer);
# 185 "Include/fbl_inc.h" 2







# 1 "../../../BSW/Cmpr/cmpr.h" 1
# 76 "../../../BSW/Cmpr/cmpr.h"
typedef struct tagLZSS_InputBuffer_T
{

   vuint8 * buffer;

   vuint8 bitPos;

   vuint32 length;

   vuint32 bitLength;
} LZSS_InputBuffer_T;


typedef LZSS_InputBuffer_T LZSS_OutputBuffer_T;





void LZSS_Init( void );
void LZSS_ExpandData(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf);
# 193 "Include/fbl_inc.h" 2







# 1 "../../../BSW/Fbl/fbl_main.h" 1
# 48 "../../../BSW/Fbl/fbl_main.h"
# 1 "../../../BSW/Fbl/fbl_main_types.h" 1
# 48 "../../../BSW/Fbl/fbl_main_types.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
# 61 "../../../BSW/FblBm/bm_types.h"
# 1 "../../../BSW/FblBmHdr/bm_hdr_types.h" 1
# 44 "../../../BSW/FblBmHdr/bm_hdr_types.h"
# 1 "GenData/FblBmHdr_Cfg.h" 1
# 129 "GenData/FblBmHdr_Cfg.h"
typedef enum
{
  FBLBMHDR_TARGET_FBL = 0,
  FBLBMHDR_TARGET_FBLUPDATER = 1,
  FBLBMHDR_TARGET_APPL = 2,
  FBLBMHDR_TARGET_DATA = 3
} tFblBmHdrTargetHandle;


typedef struct
{
   uint32 address;
   uint32 length;
} tFblBmHdrVerificationList;


typedef struct
{
   uint32 bmMagicFlag;
   uint32 bmEntryAddress;
   tFblBmHdrTargetHandle bmTargetHandle;
   uint32 bmBlockStartAddress;
   uint32 bmBlockLength;
   uint32 bmAuthenticationHeaderAddress;
} tFblBmHdrHeader;






# 1 "Include/MemMap.h" 1
# 2980 "Include/MemMap.h"
#pragma section ".BmHdrHeaderSection" a
# 161 "GenData/FblBmHdr_Cfg.h" 2

extern const tFblBmHdrHeader FblBmHdrHeader;


# 1 "Include/MemMap.h" 1
# 2987 "Include/MemMap.h"
#pragma section
# 166 "GenData/FblBmHdr_Cfg.h" 2


# 1 "Include/MemMap.h" 1
# 169 "GenData/FblBmHdr_Cfg.h" 2

extern const uint32 FblBmHdrTargets[4u];


# 1 "Include/MemMap.h" 1
# 174 "GenData/FblBmHdr_Cfg.h" 2






# 1 "Include/MemMap.h" 1
# 181 "GenData/FblBmHdr_Cfg.h" 2



# 1 "Include/MemMap.h" 1
# 185 "GenData/FblBmHdr_Cfg.h" 2
# 45 "../../../BSW/FblBmHdr/bm_hdr_types.h" 2





typedef enum
{
   FBLBMHDR_CHKHDR_OK,
   FBLBMHDR_CHKHDR_BLOCK_INVALID,
   FBLBMHDR_CHKHDR_READ_FAIL,
   FBLBMHDR_CHKHDR_HEADER_INCONSISTENT,
   FBLBMHDR_CHKHDR_WRONG_TARGET,
   FBLBMHDR_CHKHDR_GET_MAC_FAIL,
   FBLBMHDR_CHKHDR_VERIFICATION_FAIL,
   FBLBMHDR_CHKHDR_NOT_FOUND
}tFblBmHdrCheckBmHeaderResult;
# 62 "../../../BSW/FblBm/bm_types.h" 2
# 1 "GenData/FblBm_Lcfg.h" 1
# 53 "GenData/FblBm_Lcfg.h"
# 1 "GenData/FblBm_Cfg.h" 1
# 54 "GenData/FblBm_Lcfg.h" 2





typedef enum
{
   FBLBM_TARGET_TYPE_MANDATORY = 0u,
   FBLBM_TARGET_TYPE_OPTIONAL
} tFblBmTargetType;

typedef struct
{
   tFblBmHdrTargetHandle target;
   tFblBmTargetType type;
}tFblBmHdrTargetDependency;

typedef struct
{
   tFblBmHdrTargetHandle target;
   tFblBmHdrTargetDependency const * dependencies;
   vuint32 dependenciesSize;
}tFblBmHdrTargetListEntry;
# 63 "../../../BSW/FblBm/bm_types.h" 2
# 73 "../../../BSW/FblBm/bm_types.h"
# 1 "../../../BSW/FblBm/bm_shared.h" 1
# 234 "../../../BSW/FblBm/bm_shared.h"
# 1 "Include/MemMap.h" 1
# 3096 "Include/MemMap.h"
#pragma section ".MagicFlagSection" awB
# 235 "../../../BSW/FblBm/bm_shared.h" 2
 extern volatile vuint8 fblBmMagicFlag[8u];
# 246 "../../../BSW/FblBm/bm_shared.h"
# 1 "Include/MemMap.h" 1
# 3103 "Include/MemMap.h"
#pragma section
# 247 "../../../BSW/FblBm/bm_shared.h" 2
# 74 "../../../BSW/FblBm/bm_types.h" 2
# 1 "../../../BSW/FblBm/bm_types_header.h" 1
# 110 "../../../BSW/FblBm/bm_types_header.h"
typedef void (*tFblStrtFct)(void);







typedef void (*tApplStrtFct)(void);



typedef struct
{
   uint32 magic;
   uint16 majorVersion;
   uint16 minorVersion;
   uint32 fblHeaderAddress;
   tFblStrtFct pFblStartFct;
   tApplStrtFct pApplStartFct;
   uint32 checksum;
   uint32 end_magic;
} tFblBmHeader;
# 75 "../../../BSW/FblBm/bm_types.h" 2
# 91 "../../../BSW/FblBm/bm_types.h"
typedef struct
{
   tBlockDescriptor logicalBlock;
   tFblBmHdrHeader bmHeader;
} tFblBmBlockInfo;


typedef enum
{
   FBLBM_ERROR_NO_ERROR = 0u,
   FBLBM_ERROR_HEADER_READ_FAILED,
   FBLBM_ERROR_HEADER_MAGIC_FAILED,
   FBLBM_ERROR_HEADER_VERSION_FAILED,
   FBLBM_ERROR_HEADER_LENGTH_FAILED,
   FBLBM_ERROR_VALIDITY_FAILED,
   FBLBM_ERROR_FBL_BMHEADER_INCORRECT,
   FBLBM_ERROR_FBL_VERIFICATION_FAILED,
   FBLBM_ERROR_FBL_FBLHEADER_FAILED,
   FBLBM_ERROR_KEY_NOT_AVAILABLE,
   FBLBM_ERROR_UPDATER_SEARCH_INIT_FAILED,
   FBLBM_ERROR_UPDATER_SEARCH_NEXT_FINISHED,
   FBLBM_ERROR_UPDATER_HEADER_ADDRESS,
   FBLBM_ERROR_UPDATER_HEADER_READ_ERROR,
   FBLBM_ERROR_UPDATER_HEADER_CONSISTENCY,
   FBLBM_ERROR_UPDATER_HEADER_TYPE,
   FBLBM_ERROR_UPDATER_BLOCK_VALIDITY,
   FBLBM_ERROR_UPDATER_HEADER_CMAC_VERIFY,
   FBLBM_ERROR_UPDATER_VERIFY,
   FBLBM_ERROR_LBT_POINTER_NULL,
   FBLBM_ERROR_LBT_TOO_LARGE,
   FBLBM_ERROR_LBT_SIZE,
   FBLBM_ERROR_LBT_VERIFY,
   FBLBM_ERROR_REPROG_LBT_DESCR,
   FBLBM_ERROR_REPROG_LBT_INVALID,
   FBLBM_ERROR_REPROG_LBT_BMHEADER_INCORRECT,
   FBLBM_ERROR_REPROG_LBT_VERIFY_HEADER,
   FBLBM_ERROR_REPROG_LBT_VERIFY_SEGMENTS,
   FBLBM_ERROR_REPROG_LBT_MAGIC_FLAG,
   FBLBM_ERROR_REPROG_LBT_BLOCK_COUNT,
   FBLBM_ERROR_TARGET_LIST_INIT,
   FBLBM_ERROR_TARGET_INVALID,
   FBLBM_ERROR_TARGET_NO_VALID_HEADER,
   FBLBM_ERROR_TARGET_VERIFICATION_FAILED,
   FBLBM_ERROR_TARGET_INVALID_ADDRESS,
   FBLBM_ERROR_TARGET_DEP_MANDATORY_MISSING,
   FBLBM_ERROR_TARGET_DEP_NO_VALID_HEADER,
   FBLBM_ERROR_TARGET_DEP_VERIFY_FAILED,
   FBLBM_ERROR_END_OF_MAIN_REACHED,
   FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL,
   FBLBM_ERROR_AP_CHECK_MAC_BUF_LENGTH,
   FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL_LENGTH
} tFblBmError;

typedef enum
{
   FBLBM_KEY_IS_NOT_AVAILABLE,
   FBLBM_KEY_IS_AVAILABLE
} tFblBmKeyEmptyResult;

typedef enum
{
   FBLBM_MAC_IS_NOT_AVAILABLE,
   FBLBM_MAC_IS_AVAILABLE
} tFblBmMacEmptyResult;
# 49 "../../../BSW/Fbl/fbl_main_types.h" 2
# 75 "../../../BSW/Fbl/fbl_main_types.h"
typedef void const * tFblCommonDataPtr;



typedef tLogicalBlockTable const * tFblHeaderLogicalBlockTablePtr;

typedef tFblBmHdrHeader const * tFblHeaderBmHeaderPtr;


typedef struct
{
   vuint32 magicFlag;
   tFblHeaderLogicalBlockTablePtr pLogicalBlockTable;
   tFblLength logicalBlockTableSize;

   tFblCommonDataPtr pFblCommonData;

   tFblAddress fblStartAddress;
   tFblLength fblLength;
   tFblHeaderBmHeaderPtr bmHeader;
} tFblHeader;
# 49 "../../../BSW/Fbl/fbl_main.h" 2
# 132 "../../../BSW/Fbl/fbl_main.h"
# 1 "Include/MemMap.h" 1
# 133 "../../../BSW/Fbl/fbl_main.h" 2

 extern tFblStateBitmap fblMainStates[((8u - 1u) / 32u) + 1u];


# 1 "Include/MemMap.h" 1
# 138 "../../../BSW/Fbl/fbl_main.h" 2


# 1 "Include/MemMap.h" 1
# 3662 "Include/MemMap.h"
#pragma section ".FblHeaderSection" a
# 141 "../../../BSW/Fbl/fbl_main.h" 2
 extern tFblHeader const FblHeader;

# 1 "Include/MemMap.h" 1
# 3669 "Include/MemMap.h"
#pragma section
# 144 "../../../BSW/Fbl/fbl_main.h" 2






# 1 "Include/MemMap.h" 1
# 151 "../../../BSW/Fbl/fbl_main.h" 2


void FblMain( void );

void FblMainInternal( void );


# 1 "Include/MemMap.h" 1
# 159 "../../../BSW/Fbl/fbl_main.h" 2
# 201 "Include/fbl_inc.h" 2


# 1 "../../../BSW/FblBm/bm_main.h" 1
# 74 "../../../BSW/FblBm/bm_main.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
# 75 "../../../BSW/FblBm/bm_main.h" 2
# 84 "../../../BSW/FblBm/bm_main.h"
# 1 "../../../BSW/FblBmHdr/bm_hdr.h" 1
# 58 "../../../BSW/FblBmHdr/bm_hdr.h"
# 1 "Include/MemMap.h" 1
# 59 "../../../BSW/FblBmHdr/bm_hdr.h" 2

tFblResult FblBmHdrCheckConsistency( const tFblBmHdrHeader * pBmHeader );
tFblBmHdrCheckBmHeaderResult FblBmHdrGetBmHeader(tFblBmHdrTargetHandle targetHandle, tFblAddress bmHeaderAddress,
   tFblBmHdrHeader * bmHeader);






# 1 "Include/MemMap.h" 1
# 70 "../../../BSW/FblBmHdr/bm_hdr.h" 2
# 85 "../../../BSW/FblBm/bm_main.h" 2
# 140 "../../../BSW/FblBm/bm_main.h"
# 1 "Include/MemMap.h" 1
# 3052 "Include/MemMap.h"
#pragma section ".BmHeaderSection" a
# 141 "../../../BSW/FblBm/bm_main.h" 2
 extern tFblBmHeader const FblBmHeader;

# 1 "Include/MemMap.h" 1
# 3059 "Include/MemMap.h"
#pragma section
# 144 "../../../BSW/FblBm/bm_main.h" 2






# 1 "Include/MemMap.h" 1
# 151 "../../../BSW/FblBm/bm_main.h" 2
# 164 "../../../BSW/FblBm/bm_main.h"
# 1 "Include/MemMap.h" 1
# 165 "../../../BSW/FblBm/bm_main.h" 2



# 1 "Include/MemMap.h" 1
# 169 "../../../BSW/FblBm/bm_main.h" 2




void FblStart( void );


# 1 "Include/MemMap.h" 1
# 177 "../../../BSW/FblBm/bm_main.h" 2




# 1 "Include/MemMap.h" 1
# 182 "../../../BSW/FblBm/bm_main.h" 2



void ApplStart( void );


# 1 "Include/MemMap.h" 1
# 189 "../../../BSW/FblBm/bm_main.h" 2
# 204 "Include/fbl_inc.h" 2
# 103 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2

# 1 "../../../BSW/Fbl/fbl_valstruct.h" 1
# 65 "../../../BSW/Fbl/fbl_valstruct.h"
# 1 "../../../BSW/Fbl/fbl_valstruct_oem.h" 1
# 66 "../../../BSW/Fbl/fbl_valstruct.h" 2
# 85 "../../../BSW/Fbl/fbl_valstruct.h"
typedef tFblResult tFblValStructResult;


typedef vuint8 tFblValStructOption;






# 1 "Include/MemMap.h" 1
# 96 "../../../BSW/Fbl/fbl_valstruct.h" 2
tFblValStructResult FblValStructValidateBlockExtended( const tBlockDescriptor * blockDescriptor,
                                                       const tFblValStructOption option );
tFblValStructResult FblValStructValidateBlock( const tBlockDescriptor * blockDescriptor );

# 1 "Include/MemMap.h" 1
# 101 "../../../BSW/Fbl/fbl_valstruct.h" 2
# 105 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2

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
# 107 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2

# 1 "../../../BSW/Can/Can.h" 1
# 607 "../../../BSW/Can/Can.h"
# 1 "GenData/Can_Cfg.h" 1
# 69 "GenData/Can_Cfg.h"
# 1 "../../../BSW/_Common/Can_GeneralTypes.h" 1
# 39 "../../../BSW/_Common/Can_GeneralTypes.h"
# 1 "../../../BSW/_Common/ComStack_Types.h" 1
# 40 "../../../BSW/_Common/Can_GeneralTypes.h" 2



typedef enum CanTrcv_TrcvModeTypeTag
{
  CANTRCV_TRCVMODE_NORMAL = 0u,
  CANTRCV_TRCVMODE_SLEEP,
  CANTRCV_TRCVMODE_STANDBY
} CanTrcv_TrcvModeType;

typedef enum CanTrcv_TrcvWakeupModeTypeTag
{
  CANTRCV_WUMODE_ENABLE = 0u,
  CANTRCV_WUMODE_CLEAR,
  CANTRCV_WUMODE_DISABLE
} CanTrcv_TrcvWakeupModeType;

typedef enum CanTrcv_TrcvWakeupReasonTypeTag
{
  CANTRCV_WU_ERROR = 0u,
  CANTRCV_WU_BY_BUS,
  CANTRCV_WU_BY_PIN,
  CANTRCV_WU_INTERNALLY,
  CANTRCV_WU_NOT_SUPPORTED,
  CANTRCV_WU_POWER_ON,
  CANTRCV_WU_RESET,
  CANTRCV_WU_BY_SYSERR
} CanTrcv_TrcvWakeupReasonType;




# 1 "GenData/Can_DrvGeneralTypes.h" 1
# 55 "GenData/Can_DrvGeneralTypes.h"
typedef uint16 Can_IdType;


typedef uint8 Can_HwHandleType;
typedef sint16 Can_SignedHwHandleType;

typedef uint8 * Can_SduPtrType;


typedef struct Can_PduTypeTag
{
  Can_IdType id;
  uint8 length;
  Can_SduPtrType sdu;
  PduIdType swPduHandle;
} Can_PduType;


typedef enum {
  CAN_T_START = 0,
  CAN_T_STOP,
  CAN_T_SLEEP,
  CAN_T_WAKEUP
} Can_StateTransitionType;

typedef enum {
  CAN_CS_UNINIT = 0,
  CAN_CS_STARTED = 1,
  CAN_CS_STOPPED = 2,
  CAN_CS_SLEEP = 3
} Can_ControllerStateType;

typedef enum {
  CAN_ERRORSTATE_ACTIVE = 0,
  CAN_ERRORSTATE_PASSIVE,
  CAN_ERRORSTATE_BUSOFF
} Can_ErrorStateType;


typedef enum {
  CAN_NOT_OK = 0,
  CAN_OK = 1,
  CAN_BUSY = 2,

  CAN_NOT_SUPPORTED = 3,
  CAN_REQUESTED = 4
} Can_ReturnType;




typedef struct Can_HwTypeTag
{
  Can_IdType CanId;
  Can_HwHandleType Hoh;
  uint8 ControllerId;
} Can_HwType;


typedef enum Can_ErrorTypeTag
{

  CAN_ERROR_BIT_MONITORING1 = 0x1,
  CAN_ERROR_BIT_MONITORING0 = 0x2,
  CAN_ERROR_BIT = 0x3,
  CAN_ERROR_CHECK_ACK_FAILED = 0x4,
  CAN_ERROR_ACK_DELIMITER = 0x5,
  CAN_ERROR_ARBITRATION_LOST = 0x6,
  CAN_ERROR_OVERLOAD = 0x7,

  CAN_ERROR_CHECK_FORM_FAILED = 0x8,
  CAN_ERROR_CHECK_STUFFING_FAILED = 0x9,
  CAN_ERROR_CHECK_CRC_FAILED = 0xA,
  CAN_ERROR_BUS_LOCK = 0xB
} Can_ErrorType;
# 73 "../../../BSW/_Common/Can_GeneralTypes.h" 2



# 1 "../../../BSW/CanIf/CanIf_GeneralTypes.h" 1
# 77 "../../../BSW/_Common/Can_GeneralTypes.h" 2
# 70 "GenData/Can_Cfg.h" 2
# 419 "GenData/Can_Cfg.h"
typedef uint32 tCanLLCanIntOld;





typedef uint8 Can_OsIsrType;







typedef uint8 CanChannelHandle;




typedef uint32 Can_ExternalTickType;


typedef Can_ExternalTickType Can_LoopTimeout_dim_type[7u +1u];
# 1761 "GenData/Can_Cfg.h"
typedef uint8_least Can_ActiveSendObjectIterType;


typedef uint8_least Can_BTPIterType;


typedef uint8_least Can_BufferConfigIterType;


typedef uint8_least Can_CanIfChannelIdIterType;


typedef uint8_least Can_CanSubSystemBaseAdrIterType;


typedef uint8_least Can_ControllerConfigIterType;


typedef uint8_least Can_FBTPIterType;


typedef uint8_least Can_GFCIterType;


typedef uint8_least Can_INT_PriorityIterType;


typedef uint8_least Can_INT_RoutingGroupIterType;


typedef uint8_least Can_InitObjectBaudrateIterType;


typedef uint8_least Can_InitObjectFdBrsConfigIterType;


typedef uint8_least Can_InitObjectStartIndexIterType;


typedef uint8_least Can_MailboxIterType;


typedef uint8_least Can_MemorySectionInfoIterType;


typedef uint8_least Can_MemorySectionObjectsIterType;


typedef uint8_least Can_SIDFCIterType;


typedef uint8_least Can_SIDFEIterType;


typedef uint8_least Can_SRN_AddressIterType;


typedef uint8_least Can_ShmAdrIterType;


typedef uint8_least Can_ShmElementSizeIterType;


typedef uint8_least Can_TDCRIterType;


typedef uint8_least Can_XIDAMIterType;


typedef uint8_least Can_XIDFCIterType;


typedef uint8_least Can_XIDFEIterType;
# 1845 "GenData/Can_Cfg.h"
typedef Can_ControllerConfigIterType Can_ControllerDataIterType;
# 1857 "GenData/Can_Cfg.h"
typedef PduIdType Can_PduOfActiveSendObjectType;


typedef uint16 Can_StateOfActiveSendObjectType;


typedef uint32 Can_BTPType;


typedef uint16 Can_BaseDll_GeneratorVersionType;


typedef uint8 Can_RXBCOfBufferConfigType;


typedef uint32 Can_RXF0COfBufferConfigType;


typedef uint8 Can_RXF1COfBufferConfigType;


typedef uint32 Can_TXBCOfBufferConfigType;


typedef uint8 Can_TXEFCOfBufferConfigType;


typedef uint8 Can_CAN_FD_NISOType;


typedef uint8 Can_CAN_NUMBER_OF_SRNType;


typedef uint8 Can_C_ENABLE_MPC5700_MCAN_CREL_SSTEPType;


typedef uint8 Can_C_ENABLE_MPC5700_MCAN_CREL_STEPType;


typedef uint8 Can_C_ENABLE_MPC5700_MCAN_MAJOR_CRELType;


typedef uint8 Can_CanIfChannelIdType;


typedef uint32 Can_CanSubSystemBaseAdrType;


typedef uint32 Can_BasisAdrOfControllerConfigType;


typedef uint8 Can_CanControllerDefaultBaudrateIdxOfControllerConfigType;


typedef uint16 Can_CanControllerDefaultBaudrateOfControllerConfigType;


typedef boolean Can_IsTTCanOfControllerConfigType;


typedef uint8 Can_MailboxRxBasicEndIdxOfControllerConfigType;


typedef uint8 Can_MailboxRxBasicLengthOfControllerConfigType;


typedef uint8 Can_MailboxRxBasicStartIdxOfControllerConfigType;


typedef boolean Can_MailboxRxBasicUsedOfControllerConfigType;


typedef uint8 Can_MailboxTxBasicEndIdxOfControllerConfigType;


typedef uint8 Can_MailboxTxBasicLengthOfControllerConfigType;


typedef uint8 Can_MailboxTxBasicStartIdxOfControllerConfigType;


typedef boolean Can_MailboxTxBasicUsedOfControllerConfigType;


typedef uint8 Can_RxBasicHwStartOfControllerConfigType;


typedef uint8 Can_RxBasicHwStopOfControllerConfigType;


typedef uint8 Can_RxFullHwStartOfControllerConfigType;


typedef uint8 Can_RxFullHwStopOfControllerConfigType;


typedef uint8 Can_RxSelectionOfControllerConfigType;


typedef uint8 Can_TxBasicHwStartOfControllerConfigType;


typedef uint8 Can_TxBasicHwStopOfControllerConfigType;


typedef uint8 Can_TxFullHwStartOfControllerConfigType;


typedef uint8 Can_TxFullHwStopOfControllerConfigType;


typedef uint8 Can_UnusedHwStartOfControllerConfigType;


typedef uint8 Can_UnusedHwStopOfControllerConfigType;


typedef uint8 Can_BusOffNotificationOfControllerDataType;


typedef uint8 Can_BusOffTransitionRequestOfControllerDataType;


typedef uint8 Can_CanInterruptCounterOfControllerDataType;


typedef uint32 Can_IntEnableOfControllerDataType;


typedef boolean Can_IsBusOffOfControllerDataType;


typedef uint8 Can_LastInitObjectOfControllerDataType;


typedef uint8 Can_LastStateOfControllerDataType;


typedef uint8 Can_LogStatusOfControllerDataType;


typedef uint8 Can_ModeTransitionRequestOfControllerDataType;


typedef uint32 Can_NonFdObjectsPendingFlagOfControllerDataType;


typedef uint8 Can_PrevModeOfControllerDataType;


typedef uint8 Can_RamCheckTransitionRequestOfControllerDataType;


typedef uint32 Can_TXBCROfControllerDataType;


typedef uint32 Can_TXBCRWaitOfControllerDataType;


typedef uint32 Can_TXBRPOfControllerDataType;


typedef uint32 Can_FBTPType;


typedef uint8 Can_GFCType;


typedef uint8 Can_INT_PriorityType;


typedef uint8 Can_INT_RoutingGroupType;


typedef uint16 Can_InitObjectBaudrateType;


typedef uint8 Can_InitObjectFdBrsConfigType;


typedef uint8 Can_InitObjectStartIndexType;


typedef uint8 Can_ActiveSendObjectOfMailboxType;


typedef uint8 Can_ControllerConfigIdxOfMailboxType;


typedef uint8 Can_FdPaddingOfMailboxType;


typedef uint8 Can_HwHandleOfMailboxType;


typedef uint8 Can_IDValueOfMailboxType;


typedef uint8 Can_MailboxSizeOfMailboxType;


typedef uint8 Can_MailboxTypeOfMailboxType;


typedef uint8 Can_MaxDataLenOfMailboxType;


typedef uint8 Can_MemorySectionsIndexOfMailboxType;


typedef uint8 Can_MemorySectionStartOfMemorySectionInfoType;


typedef uint8 Can_HwHandleOfMemorySectionObjectsType;


typedef uint8 Can_MailboxElementOfMemorySectionObjectsType;


typedef uint8 Can_MailboxHandleOfMemorySectionObjectsType;


typedef uint16 Can_PlatformDll_GeneratorVersionType;


typedef uint8 Can_FLSSAOfSIDFCType;


typedef uint8 Can_LSSOfSIDFCType;


typedef uint8 Can_SIDFEEndIdxOfSIDFCType;


typedef uint8 Can_SIDFEStartIdxOfSIDFCType;


typedef boolean Can_SIDFEUsedOfSIDFCType;


typedef uint32 Can_SIDFEType;


typedef uint32 Can_SRN_AddressType;


typedef uint32 Can_RXBAOfShmAdrType;


typedef uint32 Can_RXF0AOfShmAdrType;


typedef uint32 Can_RXF1AOfShmAdrType;


typedef uint32 Can_SIDFAOfShmAdrType;


typedef uint32 Can_StartAdrOfShmAdrType;


typedef uint32 Can_StopAdrOfShmAdrType;


typedef uint32 Can_TXBAOfShmAdrType;


typedef uint32 Can_TXEFAOfShmAdrType;


typedef uint32 Can_XIDFAOfShmAdrType;


typedef uint8 Can_F0DSOfShmElementSizeType;


typedef uint8 Can_F1DSOfShmElementSizeType;


typedef uint8 Can_RBDSOfShmElementSizeType;


typedef uint8 Can_TBDSOfShmElementSizeType;


typedef uint8 Can_TEFBDSOfShmElementSizeType;


typedef uint8 Can_SizeOfActiveSendObjectType;


typedef uint8 Can_SizeOfBTPType;


typedef uint8 Can_SizeOfBufferConfigType;


typedef uint8 Can_SizeOfCanIfChannelIdType;


typedef uint8 Can_SizeOfCanSubSystemBaseAdrType;


typedef uint8 Can_SizeOfControllerConfigType;


typedef uint8 Can_SizeOfControllerDataType;


typedef uint8 Can_SizeOfFBTPType;


typedef uint8 Can_SizeOfGFCType;


typedef uint8 Can_SizeOfINT_PriorityType;


typedef uint8 Can_SizeOfINT_RoutingGroupType;


typedef uint8 Can_SizeOfInitObjectBaudrateType;


typedef uint8 Can_SizeOfInitObjectFdBrsConfigType;


typedef uint8 Can_SizeOfInitObjectStartIndexType;


typedef uint8 Can_SizeOfMailboxType;


typedef uint8 Can_SizeOfMemorySectionInfoType;


typedef uint8 Can_SizeOfMemorySectionObjectsType;


typedef uint8 Can_SizeOfSIDFCType;


typedef uint8 Can_SizeOfSIDFEType;


typedef uint8 Can_SizeOfSRN_AddressType;


typedef uint8 Can_SizeOfShmAdrType;


typedef uint8 Can_SizeOfShmElementSizeType;


typedef uint8 Can_SizeOfTDCRType;


typedef uint8 Can_SizeOfXIDAMType;


typedef uint8 Can_SizeOfXIDFCType;


typedef uint8 Can_SizeOfXIDFEType;


typedef uint8 Can_TDCRType;


typedef uint32 Can_XIDAMType;


typedef uint8 Can_FLESAOfXIDFCType;


typedef uint8 Can_LSEOfXIDFCType;


typedef uint8 Can_EIDFE_0OfXIDFEType;


typedef uint8 Can_EIDFE_1OfXIDFEType;
# 2254 "GenData/Can_Cfg.h"
typedef struct sCan_ActiveSendObjectType
{
  Can_StateOfActiveSendObjectType StateOfActiveSendObject;
  Can_PduOfActiveSendObjectType PduOfActiveSendObject;
} Can_ActiveSendObjectType;


typedef struct sCan_BufferConfigType
{
  Can_RXF0COfBufferConfigType RXF0COfBufferConfig;
  Can_TXBCOfBufferConfigType TXBCOfBufferConfig;
  Can_RXBCOfBufferConfigType RXBCOfBufferConfig;
  Can_RXF1COfBufferConfigType RXF1COfBufferConfig;
  Can_TXEFCOfBufferConfigType TXEFCOfBufferConfig;
} Can_BufferConfigType;
# 2277 "GenData/Can_Cfg.h"
typedef struct sCan_ControllerConfigType
{
  Can_BasisAdrOfControllerConfigType BasisAdrOfControllerConfig;
  Can_CanControllerDefaultBaudrateOfControllerConfigType CanControllerDefaultBaudrateOfControllerConfig;
  Can_IsTTCanOfControllerConfigType IsTTCanOfControllerConfig;
  Can_CanControllerDefaultBaudrateIdxOfControllerConfigType CanControllerDefaultBaudrateIdxOfControllerConfig;
  Can_MailboxRxBasicEndIdxOfControllerConfigType MailboxRxBasicEndIdxOfControllerConfig;
  Can_MailboxRxBasicLengthOfControllerConfigType MailboxRxBasicLengthOfControllerConfig;
  Can_MailboxRxBasicStartIdxOfControllerConfigType MailboxRxBasicStartIdxOfControllerConfig;
  Can_MailboxTxBasicEndIdxOfControllerConfigType MailboxTxBasicEndIdxOfControllerConfig;
  Can_MailboxTxBasicLengthOfControllerConfigType MailboxTxBasicLengthOfControllerConfig;
  Can_MailboxTxBasicStartIdxOfControllerConfigType MailboxTxBasicStartIdxOfControllerConfig;
  Can_RxBasicHwStartOfControllerConfigType RxBasicHwStartOfControllerConfig;
  Can_RxBasicHwStopOfControllerConfigType RxBasicHwStopOfControllerConfig;
  Can_RxFullHwStartOfControllerConfigType RxFullHwStartOfControllerConfig;
  Can_RxFullHwStopOfControllerConfigType RxFullHwStopOfControllerConfig;
  Can_RxSelectionOfControllerConfigType RxSelectionOfControllerConfig;
  Can_TxBasicHwStartOfControllerConfigType TxBasicHwStartOfControllerConfig;
  Can_TxBasicHwStopOfControllerConfigType TxBasicHwStopOfControllerConfig;
  Can_TxFullHwStartOfControllerConfigType TxFullHwStartOfControllerConfig;
  Can_TxFullHwStopOfControllerConfigType TxFullHwStopOfControllerConfig;
  Can_UnusedHwStartOfControllerConfigType UnusedHwStartOfControllerConfig;
  Can_UnusedHwStopOfControllerConfigType UnusedHwStopOfControllerConfig;
} Can_ControllerConfigType;


typedef struct sCan_ControllerDataType
{
  Can_IntEnableOfControllerDataType IntEnableOfControllerData;
  Can_NonFdObjectsPendingFlagOfControllerDataType NonFdObjectsPendingFlagOfControllerData;
  Can_TXBCROfControllerDataType TXBCROfControllerData;
  Can_TXBCRWaitOfControllerDataType TXBCRWaitOfControllerData;
  Can_TXBRPOfControllerDataType TXBRPOfControllerData;
  Can_BusOffNotificationOfControllerDataType BusOffNotificationOfControllerData;
  Can_BusOffTransitionRequestOfControllerDataType BusOffTransitionRequestOfControllerData;
  Can_CanInterruptCounterOfControllerDataType CanInterruptCounterOfControllerData;
  Can_IsBusOffOfControllerDataType IsBusOffOfControllerData;
  Can_LastInitObjectOfControllerDataType LastInitObjectOfControllerData;
  Can_LastStateOfControllerDataType LastStateOfControllerData;
  Can_LogStatusOfControllerDataType LogStatusOfControllerData;
  Can_ModeTransitionRequestOfControllerDataType ModeTransitionRequestOfControllerData;
  Can_PrevModeOfControllerDataType PrevModeOfControllerData;
  Can_RamCheckTransitionRequestOfControllerDataType RamCheckTransitionRequestOfControllerData;
  tCanLLCanIntOld CanInterruptOldStatusOfControllerData;
  Can_LoopTimeout_dim_type LoopTimeoutOfControllerData;
} Can_ControllerDataType;





typedef struct sCan_MailboxType
{
  Can_ActiveSendObjectOfMailboxType ActiveSendObjectOfMailbox;
  Can_ControllerConfigIdxOfMailboxType ControllerConfigIdxOfMailbox;
  Can_FdPaddingOfMailboxType FdPaddingOfMailbox;
  Can_HwHandleOfMailboxType HwHandleOfMailbox;
  Can_IDValueOfMailboxType IDValueOfMailbox;
  Can_MailboxSizeOfMailboxType MailboxSizeOfMailbox;
  Can_MailboxTypeOfMailboxType MailboxTypeOfMailbox;
  Can_MaxDataLenOfMailboxType MaxDataLenOfMailbox;
  Can_MemorySectionsIndexOfMailboxType MemorySectionsIndexOfMailbox;
} Can_MailboxType;


typedef struct sCan_MemorySectionInfoType
{
  Can_MemorySectionStartOfMemorySectionInfoType MemorySectionStartOfMemorySectionInfo;
} Can_MemorySectionInfoType;


typedef struct sCan_MemorySectionObjectsType
{
  Can_HwHandleOfMemorySectionObjectsType HwHandleOfMemorySectionObjects;
  Can_MailboxElementOfMemorySectionObjectsType MailboxElementOfMemorySectionObjects;
  Can_MailboxHandleOfMemorySectionObjectsType MailboxHandleOfMemorySectionObjects;
} Can_MemorySectionObjectsType;






typedef struct sCan_SIDFCType
{
  Can_FLSSAOfSIDFCType FLSSAOfSIDFC;
  Can_LSSOfSIDFCType LSSOfSIDFC;
  Can_SIDFEEndIdxOfSIDFCType SIDFEEndIdxOfSIDFC;
  Can_SIDFEStartIdxOfSIDFCType SIDFEStartIdxOfSIDFC;
} Can_SIDFCType;


typedef struct sCan_ShmAdrType
{
  Can_RXBAOfShmAdrType RXBAOfShmAdr;
  Can_RXF0AOfShmAdrType RXF0AOfShmAdr;
  Can_RXF1AOfShmAdrType RXF1AOfShmAdr;
  Can_SIDFAOfShmAdrType SIDFAOfShmAdr;
  Can_StartAdrOfShmAdrType StartAdrOfShmAdr;
  Can_StopAdrOfShmAdrType StopAdrOfShmAdr;
  Can_TXBAOfShmAdrType TXBAOfShmAdr;
  Can_TXEFAOfShmAdrType TXEFAOfShmAdr;
  Can_XIDFAOfShmAdrType XIDFAOfShmAdr;
} Can_ShmAdrType;


typedef struct sCan_ShmElementSizeType
{
  Can_F0DSOfShmElementSizeType F0DSOfShmElementSize;
  Can_F1DSOfShmElementSizeType F1DSOfShmElementSize;
  Can_RBDSOfShmElementSizeType RBDSOfShmElementSize;
  Can_TBDSOfShmElementSizeType TBDSOfShmElementSize;
  Can_TEFBDSOfShmElementSizeType TEFBDSOfShmElementSize;
} Can_ShmElementSizeType;


typedef struct sCan_XIDFCType
{
  Can_FLESAOfXIDFCType FLESAOfXIDFC;
  Can_LSEOfXIDFCType LSEOfXIDFC;
} Can_XIDFCType;


typedef struct sCan_XIDFEType
{
  Can_EIDFE_0OfXIDFEType EIDFE_0OfXIDFE;
  Can_EIDFE_1OfXIDFEType EIDFE_1OfXIDFE;
} Can_XIDFEType;
# 2416 "GenData/Can_Cfg.h"
typedef Can_ActiveSendObjectType * Can_ActiveSendObjectPtrType;


typedef const Can_BTPType * Can_BTPPtrType;


typedef const Can_BufferConfigType * Can_BufferConfigPtrType;


typedef const Can_CanIfChannelIdType * Can_CanIfChannelIdPtrType;


typedef const Can_CanSubSystemBaseAdrType * Can_CanSubSystemBaseAdrPtrType;


typedef const Can_ControllerConfigType * Can_ControllerConfigPtrType;


typedef Can_ControllerDataType * Can_ControllerDataPtrType;


typedef const Can_FBTPType * Can_FBTPPtrType;


typedef const Can_GFCType * Can_GFCPtrType;


typedef const Can_INT_PriorityType * Can_INT_PriorityPtrType;


typedef const Can_INT_RoutingGroupType * Can_INT_RoutingGroupPtrType;


typedef const Can_InitObjectBaudrateType * Can_InitObjectBaudratePtrType;


typedef const Can_InitObjectFdBrsConfigType * Can_InitObjectFdBrsConfigPtrType;


typedef const Can_InitObjectStartIndexType * Can_InitObjectStartIndexPtrType;


typedef const Can_MailboxType * Can_MailboxPtrType;


typedef const Can_MemorySectionInfoType * Can_MemorySectionInfoPtrType;


typedef const Can_MemorySectionObjectsType * Can_MemorySectionObjectsPtrType;


typedef const Can_SIDFCType * Can_SIDFCPtrType;


typedef const Can_SIDFEType * Can_SIDFEPtrType;


typedef const Can_SRN_AddressType * Can_SRN_AddressPtrType;


typedef const Can_ShmAdrType * Can_ShmAdrPtrType;


typedef const Can_ShmElementSizeType * Can_ShmElementSizePtrType;


typedef const Can_TDCRType * Can_TDCRPtrType;


typedef const Can_XIDAMType * Can_XIDAMPtrType;


typedef const Can_XIDFCType * Can_XIDFCPtrType;


typedef const Can_XIDFEType * Can_XIDFEPtrType;
# 2503 "GenData/Can_Cfg.h"
typedef struct sCan_PCConfigType
{
  uint8 Can_PCConfigNeverUsed;
} Can_PCConfigType;

typedef Can_PCConfigType Can_ConfigType;
# 2550 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2551 "GenData/Can_Cfg.h" 2

extern const Can_BTPType Can_BTP[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2556 "GenData/Can_Cfg.h" 2
# 2574 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2575 "GenData/Can_Cfg.h" 2

extern const Can_BufferConfigType Can_BufferConfig[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2580 "GenData/Can_Cfg.h" 2
# 2591 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2592 "GenData/Can_Cfg.h" 2

extern const Can_CanIfChannelIdType Can_CanIfChannelId[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2597 "GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2605 "GenData/Can_Cfg.h" 2

extern const Can_CanSubSystemBaseAdrType Can_CanSubSystemBaseAdr[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2610 "GenData/Can_Cfg.h" 2
# 2644 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2645 "GenData/Can_Cfg.h" 2

extern const Can_ControllerConfigType Can_ControllerConfig[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2650 "GenData/Can_Cfg.h" 2
# 2661 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2662 "GenData/Can_Cfg.h" 2

extern const Can_FBTPType Can_FBTP[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2667 "GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2675 "GenData/Can_Cfg.h" 2

extern const Can_GFCType Can_GFC[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2680 "GenData/Can_Cfg.h" 2
# 2691 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2692 "GenData/Can_Cfg.h" 2

extern const Can_INT_PriorityType Can_INT_Priority[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2697 "GenData/Can_Cfg.h" 2
# 2708 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2709 "GenData/Can_Cfg.h" 2

extern const Can_INT_RoutingGroupType Can_INT_RoutingGroup[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2714 "GenData/Can_Cfg.h" 2
# 2725 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1076 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2726 "GenData/Can_Cfg.h" 2

extern const Can_InitObjectBaudrateType Can_InitObjectBaudrate[1];


# 1 "Include/MemMap.h" 1
# 1083 "Include/MemMap.h"
#pragma section
# 2731 "GenData/Can_Cfg.h" 2
# 2742 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2743 "GenData/Can_Cfg.h" 2

extern const Can_InitObjectFdBrsConfigType Can_InitObjectFdBrsConfig[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2748 "GenData/Can_Cfg.h" 2
# 2759 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2760 "GenData/Can_Cfg.h" 2

extern const Can_InitObjectStartIndexType Can_InitObjectStartIndex[2];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2765 "GenData/Can_Cfg.h" 2
# 2787 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2788 "GenData/Can_Cfg.h" 2

extern const Can_MailboxType Can_Mailbox[2];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2793 "GenData/Can_Cfg.h" 2
# 2807 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2808 "GenData/Can_Cfg.h" 2

extern const Can_MemorySectionInfoType Can_MemorySectionInfo[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2813 "GenData/Can_Cfg.h" 2
# 2829 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2830 "GenData/Can_Cfg.h" 2

extern const Can_MemorySectionObjectsType Can_MemorySectionObjects[32];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2835 "GenData/Can_Cfg.h" 2
# 2852 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2853 "GenData/Can_Cfg.h" 2

extern const Can_SIDFCType Can_SIDFC[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2858 "GenData/Can_Cfg.h" 2
# 2869 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2870 "GenData/Can_Cfg.h" 2

extern const Can_SIDFEType Can_SIDFE[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2875 "GenData/Can_Cfg.h" 2
# 2886 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2887 "GenData/Can_Cfg.h" 2

extern const Can_SRN_AddressType Can_SRN_Address[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2892 "GenData/Can_Cfg.h" 2
# 2914 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2915 "GenData/Can_Cfg.h" 2

extern const Can_ShmAdrType Can_ShmAdr[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2920 "GenData/Can_Cfg.h" 2
# 2938 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2939 "GenData/Can_Cfg.h" 2

extern const Can_ShmElementSizeType Can_ShmElementSize[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2944 "GenData/Can_Cfg.h" 2
# 2955 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2956 "GenData/Can_Cfg.h" 2

extern const Can_TDCRType Can_TDCR[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2961 "GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2969 "GenData/Can_Cfg.h" 2

extern const Can_XIDAMType Can_XIDAM[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2974 "GenData/Can_Cfg.h" 2
# 2989 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2990 "GenData/Can_Cfg.h" 2

extern const Can_XIDFCType Can_XIDFC[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2995 "GenData/Can_Cfg.h" 2
# 3010 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 3011 "GenData/Can_Cfg.h" 2

extern const Can_XIDFEType Can_XIDFE[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 3016 "GenData/Can_Cfg.h" 2
# 3031 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 3032 "GenData/Can_Cfg.h" 2

extern Can_ActiveSendObjectType Can_ActiveSendObject[1];


# 1 "Include/MemMap.h" 1
# 3037 "GenData/Can_Cfg.h" 2
# 3067 "GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 3068 "GenData/Can_Cfg.h" 2

extern Can_ControllerDataType Can_ControllerData[1];


# 1 "Include/MemMap.h" 1
# 3073 "GenData/Can_Cfg.h" 2
# 608 "../../../BSW/Can/Can.h" 2
# 1156 "../../../BSW/Can/Can.h"
typedef Std_VersionInfoType * Can_VersionInfoPtrType;
typedef const Can_ConfigType * Can_ConfigPtrType;
typedef const Can_PduType * Can_PduInfoPtrType;
typedef Can_PduType * Can_PduInfoPtrType_var;
typedef const uint8 * Can_DataPtrType;
typedef uint8 * Can_ErrorCounterPtrType;
typedef Can_ControllerStateType * Can_ControllerStatePtrType;
typedef Can_ErrorStateType * Can_ErrorStatePtrType;






typedef uint16 CanTransmitHandle;
typedef uint16 CanReceiveHandle;

typedef uint16 CanInitHandle;

typedef uint32 tCanRxId0;
typedef uint32 tCanTxId0;




typedef volatile uint8 * CanChipDataPtr;
typedef volatile uint8 * CanChipMsgPtr8;
typedef volatile uint16 * CanChipMsgPtr16;
typedef volatile uint32 * CanChipMsgPtr32;

typedef uint32 tCanDlc;

typedef struct tShiftMultiplyValueTypeTag
{
  uint8 v1;
  uint8 v2;
  uint8 v3;
} tShiftMultiplyValueType;

typedef volatile struct tSIFETypeTag
{
  volatile uint32 S0;
} tSIFEType;

typedef volatile struct tXIFETypeTag
{
  volatile uint32 F0;
  volatile uint32 F1;
} tXIFEType;

typedef union
{
  uint8 b[4];
  uint16 w[2];
  uint32 dw;
} tAlignCopyElem;

typedef union
{
  uint32 dw[2];

volatile uint32 data[64/4];



} tAlign32bit;

typedef volatile struct tElmTypeTag
{
 volatile uint32 E0;



 volatile uint32 E1;






volatile uint32 data[64/4];



} tElmType;
typedef tElmType CanElmType;
typedef volatile struct tTxEventFifoElmTypeTag
{
 volatile uint32 E0;


 volatile uint32 E1;



} tTxEventFifoElmType;




typedef uint32 tCanIdType;
typedef uint32 tCanFdType;
typedef uint32 tCanFdBrsType;

typedef tCanLLCanIntOld *tCanLLCanIntOldPtr;
# 1302 "../../../BSW/Can/Can.h"
typedef volatile struct tCanChipMsgPtrTag
{
  union
  {
    struct
    {
      volatile uint32 ID:29;
      volatile uint32 RTR:1;
      volatile uint32 XTD:1;
      volatile uint32 ESI:1;
    } b0;
    volatile uint32 B0;
  } uB0;
  union
  {
    struct
    {
      volatile uint32 RXTS:16;
      volatile uint32 DLC:4;
      volatile uint32 BRS:1;
      volatile uint32 FDF:1;
      volatile uint32 r0:2;
      volatile uint32 FIDX:7;
      volatile uint32 ANMF:1;
    } rb1;
    struct
    {
      volatile uint32 r1:16;
      volatile uint32 DLC:4;
      volatile uint32 BRS:1;
      volatile uint32 FDF:1;
      volatile uint32 r0:1;
      volatile uint32 EFC:1;
      volatile uint32 MM:8;
    } tb1;
    uint32 B1;
  } uB1;

volatile uint32 data[64/4];



} tCanChipMsgPtr;

typedef tCanChipMsgPtr * CanChipMsgPtr;

typedef union tRXFnSTag
{
  uint32 R;
  struct
  {
    uint32 FnFL:7;
    uint32 r2:1;
    uint32 FnGI:6;
    uint32 r1:10;
    uint32 FnF:1;
    uint32 RFnL:1;
    uint32 r0:6;
  } B;
} tRXFnS;

typedef union tRXFnCTag
{
  uint32 R;
  struct
  {
    uint32:2;
    uint32 FOSA:14;
    uint32 F0S:7;
    uint32:1;
    uint32 F0WM:7;
    uint32:1;
  } B;
} tRXFnC;


typedef union tRXESCTag
{
  uint32 R;
  struct
  {
    uint32 F0DS:3;
    uint32:1;
    uint32 F1DS:3;
    uint32:1;
    uint32 RBDS:3;
    uint32:21;
  } B;
} tRXESC;

typedef union tTXFQSTag
{
  uint32 R;
  struct
  {
    uint32 TFFL:6;
    uint32:2;
    uint32 TFGI:5;
    uint32:3;
    uint32 TFQPI:5;
    uint32 TFQF:1;
    uint32:10;
  } B;
} tTXFQS;

typedef union tTXEFSTag
{
  uint32 R;
  struct
  {
      uint32 EFFL:6;
      uint32 r1:2;
      uint32 EFGI:5;
      uint32:11;
      uint32 EFF:1;
      uint32 TEFL:1;
      uint32 r0:6;
  } B;
} tTXEFS;



typedef volatile struct tCanGlobalObjTypeTag
{
  volatile uint32 CLC;
  volatile uint32 unused1[11];
  volatile uint32 MCR;
  volatile uint32 BUFADR;
  volatile uint32 unused2[2];
  volatile uint32 MECR;
  volatile uint32 MESTAT;
  volatile uint32 unused3[37];
  volatile uint32 ACCENCTR0;
  volatile uint32 unused4[2];
  volatile uint32 OCS;
  volatile uint32 KRSTCLR;
  volatile uint32 KRST1;
  volatile uint32 KRST0;
  volatile uint32 unused5;
  volatile uint32 ACCEN0;
}tCanGlobalObjType;

typedef volatile struct tCanObjTypeTag
{

  volatile uint32 ACCENNODE0;
  volatile uint32 unused1;
  volatile uint32 STARTADR;
  volatile uint32 ENDADR;
  volatile uint32 ISREG;
  volatile uint32 GRINT1;
  volatile uint32 GRINT2;
  volatile uint32 unused2;
  volatile uint32 NTCCR;
  volatile uint32 NTATTR;
  volatile uint32 NTBTTR;
  volatile uint32 NTCTTR;
  volatile uint32 NTRTR;
  volatile uint32 unused3[3];
  volatile uint32 NPCR;
  volatile uint32 unused4[47];
  volatile uint32 CREL;
  volatile uint32 ENDN;
  volatile uint32 res0[1];
  volatile uint32 FBTP;



  volatile uint32 TEST;
  volatile uint32 RWD;
  volatile uint32 CCCR;
  volatile uint32 BTP;
  volatile uint32 TSCC;
  volatile uint32 TSCV;
  volatile uint32 TOCC;
  volatile uint32 TOCV;
           uint32 res1[4];
  volatile uint32 ECR;
  volatile uint32 PSR;


  volatile uint32 TDCR;
           uint32 res2;



  volatile uint32 IR;
  volatile uint32 IE;
  volatile uint32 resIL[2];
           uint32 res3[8];
  volatile uint32 GFC;
  volatile uint32 SIDFC;
  volatile uint32 XIDFC;
           uint32 res4;
  volatile uint32 XIDAM;
  volatile uint32 HPMS;
  volatile uint32 NDATA[2];

  volatile tRXFnC RXF0C;
  volatile tRXFnS RXF0S;
  volatile uint32 RXF0A;
  volatile uint32 RXBC;
  volatile tRXFnC RXF1C;
  volatile tRXFnS RXF1S;
  volatile uint32 RXF1A;
  volatile tRXESC RXESC;
  volatile uint32 TXBC;
  volatile tTXFQS TXFQS;
  volatile uint32 TXESC;
  volatile uint32 TXBRP;
  volatile uint32 TXBAR;
  volatile uint32 TXBCR;
  volatile uint32 TXBTO;
  volatile uint32 TXBCF;
  volatile uint32 TXBTIE;
  volatile uint32 TXBCIE;
           uint32 res9[2];
  volatile uint32 TXEFC;
  volatile tTXEFS TXEFS;
  volatile uint32 TXEFA;
           uint32 resA;
  volatile uint32 TTTMC;
  volatile uint32 TTRMC;
  volatile uint32 TTOCF;
}tCanObjType;
# 1541 "../../../BSW/Can/Can.h"
# 1 "Include/MemMap.h" 1
# 1044 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1542 "../../../BSW/Can/Can.h" 2
# 1559 "../../../BSW/Can/Can.h"
 void Can_InitMemory( void );
# 1576 "../../../BSW/Can/Can.h"
 void Can_Init( Can_ConfigPtrType ConfigPtr );
# 1596 "../../../BSW/Can/Can.h"
 Std_ReturnType Can_ChangeBaudrate( uint8 Controller, const uint16 Baudrate );
# 1780 "../../../BSW/Can/Can.h"
 Can_ReturnType Can_SetControllerMode( uint8 Controller, Can_StateTransitionType Transition );
# 1798 "../../../BSW/Can/Can.h"
 Can_ReturnType Can_Write( Can_HwHandleType Hth, Can_PduInfoPtrType PduInfo );
# 1816 "../../../BSW/Can/Can.h"
 void Can_CancelTx( Can_HwHandleType Hth, PduIdType PduId );
# 1875 "../../../BSW/Can/Can.h"
 Std_ReturnType Can_CheckWakeup( uint8 Controller );
# 1891 "../../../BSW/Can/Can.h"
 void Can_DisableControllerInterrupts( uint8 Controller );
# 1906 "../../../BSW/Can/Can.h"
 void Can_EnableControllerInterrupts( uint8 Controller );
# 1922 "../../../BSW/Can/Can.h"
extern void Can_MainFunction_Write( void );
# 1938 "../../../BSW/Can/Can.h"
extern void Can_MainFunction_Read( void );
# 1954 "../../../BSW/Can/Can.h"
extern void Can_MainFunction_BusOff( void );
# 1970 "../../../BSW/Can/Can.h"
extern void Can_MainFunction_Wakeup( void );
# 1984 "../../../BSW/Can/Can.h"
extern void Can_MainFunction_Mode( void );
# 2354 "../../../BSW/Can/Can.h"
 void CanInterrupt(void);



# 1 "Include/MemMap.h" 1
# 1051 "Include/MemMap.h"
#pragma section
# 2359 "../../../BSW/Can/Can.h" 2


# 1 "Include/MemMap.h" 1
# 1060 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 2362 "../../../BSW/Can/Can.h" 2
# 2472 "../../../BSW/Can/Can.h"
 void ApplCanTimerStart( uint8 source );
# 2494 "../../../BSW/Can/Can.h"
 Can_ReturnType ApplCanTimerLoop( uint8 source );
# 2512 "../../../BSW/Can/Can.h"
 void ApplCanTimerEnd( uint8 source );
# 2797 "../../../BSW/Can/Can.h"
 void Appl_UnlockEndinit(void);
# 2813 "../../../BSW/Can/Can.h"
 void Appl_LockEndinit(void);



# 1 "Include/MemMap.h" 1
# 1067 "Include/MemMap.h"
#pragma section
# 2818 "../../../BSW/Can/Can.h" 2
# 109 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2
# 1 "../../../BSW/CanTp/CanTp.h" 1
# 108 "../../../BSW/CanTp/CanTp.h"
# 1 "../../../BSW/CanTp/CanTp_Types.h" 1
# 38 "../../../BSW/CanTp/CanTp_Types.h"
# 1 "GenData/CanTp_Cfg.h" 1
# 39 "../../../BSW/CanTp/CanTp_Types.h" 2
# 88 "../../../BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_FrameType;







typedef uint8 CanTp_InitStatusType;





typedef uint8 CanTp_TxChannelStateType;
# 122 "../../../BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_RxChannelStateType;
# 141 "../../../BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_DirectionType;
# 163 "../../../BSW/CanTp/CanTp_Types.h"
typedef Std_ReturnType CanTp_NotificationType;
# 180 "../../../BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_BufferStateType;
# 189 "../../../BSW/CanTp/CanTp_Types.h"
typedef unsigned int CanTp_BitType;
typedef uint16 CanTp_WFTmaxType;
typedef uint16 CanTp_TimerType;
typedef uint8 CanTp_AddressingFormatType;




typedef struct sCanTp_RxStateType
{
  CanTp_FrameType FrameType;
  volatile CanTp_RxChannelStateType ChannelState;
  CanTp_TimerType Timer;
  PduLengthType DataLength;
  PduLengthType DataIndex;
  PduLengthType ProvidedBufferSize;
  PduIdType RxHdl;
  CanTp_WFTmaxType WFTCounter;
  CanTp_BufferStateType BufferState;
  uint8 BlocksizeCounter;
  uint8 Payload[63u];
  uint8 PayloadLength;
  uint8 InitalDLC;
  uint8 ExpectedSN;

  uint8 ApplState;
# 223 "../../../BSW/CanTp/CanTp_Types.h"
} CanTp_RxStateType;



typedef struct sCanTp_TxStateType
{
  CanTp_TimerType Timer;
  PduLengthType DataLength;
  PduLengthType DataIndex;
  PduIdType TxHdl;



  volatile CanTp_TxChannelStateType ChannelState;
  CanTp_BufferStateType BufferState;
  uint8 STmin;
  uint8 STminTimer;
  uint8 BlocksizeCounter;



  uint8 Payload[63u];
  uint8 PayloadLength;
  uint8 SeqNumber;



  uint8 FCLength;
  uint8 FCData[4];
# 262 "../../../BSW/CanTp/CanTp_Types.h"
} CanTp_TxStateType;



typedef struct sCanTp_DynFCParameterType
{
  uint8 BS;
  uint8 STmin;
} CanTp_DynFCParameterType;



typedef struct sTxSemaphoreType
{
  PduIdType Handle;
  CanTp_DirectionType Direction;
} CanTp_TxSemaphoreType;



typedef struct sTxQueueEntrype
{
  PduIdType PduId;
  PduIdType SduHandle;
  CanTp_DirectionType SduDirection;
  PduLengthType SduLength;
  uint8 SduData[64u + 0u];
} CanTp_TxQueueEntryType;



typedef struct sTxQueueType
{
  CanTp_TxQueueEntryType Entries[4u];
  uint8 ReadPos;
  uint8 WritePos;
} CanTp_TxQueueType;
# 109 "../../../BSW/CanTp/CanTp.h" 2


# 1 "GenData/CanTp_Lcfg.h" 1
# 51 "GenData/CanTp_Lcfg.h"
# 1 "GenData/CanTp_Cfg.h" 1
# 52 "GenData/CanTp_Lcfg.h" 2
# 1 "../../../BSW/CanTp/CanTp_Types.h" 1
# 53 "GenData/CanTp_Lcfg.h" 2
# 84 "GenData/CanTp_Lcfg.h"
typedef uint8_least CanTp_CalcBSIterType;



typedef uint8_least CanTp_DynFCParametersIterType;



typedef uint8_least CanTp_RxPduMapIterType;



typedef uint8_least CanTp_RxSduCfgIterType;



typedef uint8_least CanTp_RxSduCfgIndIterType;



typedef uint8_least CanTp_RxSduSnv2HdlIterType;



typedef uint8_least CanTp_RxStateIterType;



typedef uint8_least CanTp_TxSduCfgIterType;



typedef uint8_least CanTp_TxSduCfgIndIterType;



typedef uint8_least CanTp_TxSduSnv2HdlIterType;



typedef uint8_least CanTp_TxSemaphoresIterType;



typedef uint8_least CanTp_TxStateIterType;
# 140 "GenData/CanTp_Lcfg.h"
typedef uint8 CanTp_CalcBSType;


typedef uint32 CanTp_CompatibilityVersionType;


typedef uint8 CanTp_AddressingFormatOfRxPduMapType;


typedef boolean CanTp_GenericConnectionOfRxPduMapType;


typedef uint8 CanTp_PduMetadataLengthOfRxPduMapType;



typedef uint8 CanTp_RxSduCfgIndEndIdxOfRxPduMapType;



typedef uint8 CanTp_RxSduCfgIndStartIdxOfRxPduMapType;


typedef boolean CanTp_RxSduCfgIndUsedOfRxPduMapType;



typedef uint8 CanTp_TxSduCfgIndEndIdxOfRxPduMapType;



typedef uint8 CanTp_TxSduCfgIndStartIdxOfRxPduMapType;


typedef boolean CanTp_TxSduCfgIndUsedOfRxPduMapType;


typedef uint8 CanTp_BlockSizeOfRxSduCfgType;


typedef uint8 CanTp_CanTypeOfRxSduCfgType;


typedef uint8 CanTp_ChannelModeOfRxSduCfgType;


typedef boolean CanTp_GenericConnectionOfRxSduCfgType;


typedef PduIdType CanTp_LoLayerTxFcPduIdOfRxSduCfgType;


typedef uint16 CanTp_NArOfRxSduCfgType;


typedef uint16 CanTp_NBrOfRxSduCfgType;


typedef uint16 CanTp_NCrOfRxSduCfgType;


typedef uint8 CanTp_PduMetadataLengthOfRxSduCfgType;


typedef PduIdType CanTp_PduRRxSduIdOfRxSduCfgType;


typedef uint8 CanTp_RxAddressOfRxSduCfgType;


typedef uint8 CanTp_RxAddressingFormatOfRxSduCfgType;


typedef uint8 CanTp_RxMaxPayloadLengthOfRxSduCfgType;


typedef boolean CanTp_RxPaddingActivationOfRxSduCfgType;


typedef PduIdType CanTp_RxPduIdOfRxSduCfgType;


typedef uint8 CanTp_RxTaTypeOfRxSduCfgType;


typedef uint8 CanTp_RxWftMaxOfRxSduCfgType;


typedef uint8 CanTp_STminOfRxSduCfgType;


typedef uint8 CanTp_SduMetadataLengthOfRxSduCfgType;


typedef uint8 CanTp_TxFcAddressOfRxSduCfgType;


typedef PduIdType CanTp_TxFcPduConfirmationPduIdOfRxSduCfgType;



typedef uint8 CanTp_TxSduCfgIdxOfRxSduCfgType;


typedef boolean CanTp_TxSduCfgUsedOfRxSduCfgType;



typedef uint8 CanTp_RxSduCfgIndType;



typedef uint8 CanTp_RxSduCfgIdxOfRxSduSnv2HdlType;


typedef boolean CanTp_RxSduCfgUsedOfRxSduSnv2HdlType;


typedef uint8 CanTp_SizeOfCalcBSType;


typedef uint8 CanTp_SizeOfDynFCParametersType;


typedef uint8 CanTp_SizeOfRxPduMapType;


typedef uint8 CanTp_SizeOfRxSduCfgType;


typedef uint8 CanTp_SizeOfRxSduCfgIndType;


typedef uint8 CanTp_SizeOfRxSduSnv2HdlType;


typedef uint8 CanTp_SizeOfRxStateType;


typedef uint8 CanTp_SizeOfTxSduCfgType;


typedef uint8 CanTp_SizeOfTxSduCfgIndType;


typedef uint8 CanTp_SizeOfTxSduSnv2HdlType;


typedef uint8 CanTp_SizeOfTxSemaphoresType;


typedef uint8 CanTp_SizeOfTxStateType;


typedef uint8 CanTp_CanTypeOfTxSduCfgType;


typedef uint8 CanTp_ChannelModeOfTxSduCfgType;


typedef PduIdType CanTp_LoLayerTxPduIdOfTxSduCfgType;


typedef uint16 CanTp_NAsOfTxSduCfgType;


typedef uint16 CanTp_NBsOfTxSduCfgType;


typedef uint8 CanTp_NCsOfTxSduCfgType;


typedef uint8 CanTp_PduMetadataLengthOfTxSduCfgType;


typedef PduIdType CanTp_PduRTxSduIdOfTxSduCfgType;


typedef uint8 CanTp_RxFcAddressOfTxSduCfgType;


typedef PduIdType CanTp_RxFcPduIdOfTxSduCfgType;



typedef uint8 CanTp_RxSduCfgIdxOfTxSduCfgType;


typedef boolean CanTp_RxSduCfgUsedOfTxSduCfgType;


typedef uint8 CanTp_SduMetadataLengthOfTxSduCfgType;


typedef boolean CanTp_TransmitCancellationOfTxSduCfgType;


typedef uint8 CanTp_TxAddressOfTxSduCfgType;


typedef uint8 CanTp_TxAddressingFormatOfTxSduCfgType;


typedef uint8 CanTp_TxMaxPayloadLengthOfTxSduCfgType;


typedef boolean CanTp_TxPaddingActivationOfTxSduCfgType;


typedef PduIdType CanTp_TxPduConfirmationPduIdOfTxSduCfgType;


typedef uint8 CanTp_TxTaTypeOfTxSduCfgType;



typedef uint8 CanTp_TxSduCfgIndType;



typedef uint8 CanTp_TxSduCfgIdxOfTxSduSnv2HdlType;


typedef boolean CanTp_TxSduCfgUsedOfTxSduSnv2HdlType;
# 388 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_RxPduMapType
{
  CanTp_RxSduCfgIndEndIdxOfRxPduMapType RxSduCfgIndEndIdxOfRxPduMap;
  CanTp_RxSduCfgIndStartIdxOfRxPduMapType RxSduCfgIndStartIdxOfRxPduMap;
  CanTp_TxSduCfgIndEndIdxOfRxPduMapType TxSduCfgIndEndIdxOfRxPduMap;
  CanTp_TxSduCfgIndStartIdxOfRxPduMapType TxSduCfgIndStartIdxOfRxPduMap;
} CanTp_RxPduMapType;
# 403 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_RxSduCfgType
{
  CanTp_NArOfRxSduCfgType NArOfRxSduCfg;
  CanTp_NBrOfRxSduCfgType NBrOfRxSduCfg;
  CanTp_NCrOfRxSduCfgType NCrOfRxSduCfg;
  CanTp_LoLayerTxFcPduIdOfRxSduCfgType LoLayerTxFcPduIdOfRxSduCfg;
  CanTp_PduRRxSduIdOfRxSduCfgType PduRRxSduIdOfRxSduCfg;
  CanTp_RxPduIdOfRxSduCfgType RxPduIdOfRxSduCfg;
  CanTp_TxFcPduConfirmationPduIdOfRxSduCfgType TxFcPduConfirmationPduIdOfRxSduCfg;
  CanTp_BlockSizeOfRxSduCfgType BlockSizeOfRxSduCfg;
  CanTp_CanTypeOfRxSduCfgType CanTypeOfRxSduCfg;
  CanTp_RxMaxPayloadLengthOfRxSduCfgType RxMaxPayloadLengthOfRxSduCfg;
  CanTp_RxTaTypeOfRxSduCfgType RxTaTypeOfRxSduCfg;
  CanTp_RxWftMaxOfRxSduCfgType RxWftMaxOfRxSduCfg;
  CanTp_TxSduCfgIdxOfRxSduCfgType TxSduCfgIdxOfRxSduCfg;
} CanTp_RxSduCfgType;
# 427 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_RxSduSnv2HdlType
{
  CanTp_RxSduCfgIdxOfRxSduSnv2HdlType RxSduCfgIdxOfRxSduSnv2Hdl;
} CanTp_RxSduSnv2HdlType;
# 439 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_TxSduCfgType
{
  CanTp_LoLayerTxPduIdOfTxSduCfgType LoLayerTxPduIdOfTxSduCfg;
  CanTp_PduRTxSduIdOfTxSduCfgType PduRTxSduIdOfTxSduCfg;
  CanTp_RxFcPduIdOfTxSduCfgType RxFcPduIdOfTxSduCfg;
  CanTp_TxPduConfirmationPduIdOfTxSduCfgType TxPduConfirmationPduIdOfTxSduCfg;
  CanTp_CanTypeOfTxSduCfgType CanTypeOfTxSduCfg;
  CanTp_RxSduCfgIdxOfTxSduCfgType RxSduCfgIdxOfTxSduCfg;
  CanTp_TxMaxPayloadLengthOfTxSduCfgType TxMaxPayloadLengthOfTxSduCfg;
} CanTp_TxSduCfgType;
# 457 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_TxSduSnv2HdlType
{
  CanTp_TxSduCfgIdxOfTxSduSnv2HdlType TxSduCfgIdxOfTxSduSnv2Hdl;
} CanTp_TxSduSnv2HdlType;
# 472 "GenData/CanTp_Lcfg.h"
typedef CanTp_CalcBSType * CanTp_CalcBSPtrType;


typedef CanTp_DynFCParameterType * CanTp_DynFCParametersPtrType;


typedef const CanTp_RxPduMapType * CanTp_RxPduMapPtrType;


typedef const CanTp_RxSduCfgType * CanTp_RxSduCfgPtrType;


typedef const CanTp_RxSduCfgIndType * CanTp_RxSduCfgIndPtrType;


typedef const CanTp_RxSduSnv2HdlType * CanTp_RxSduSnv2HdlPtrType;


typedef CanTp_RxStateType * CanTp_RxStatePtrType;


typedef const CanTp_TxSduCfgType * CanTp_TxSduCfgPtrType;


typedef const CanTp_TxSduCfgIndType * CanTp_TxSduCfgIndPtrType;


typedef const CanTp_TxSduSnv2HdlType * CanTp_TxSduSnv2HdlPtrType;


typedef CanTp_TxSemaphoreType * CanTp_TxSemaphoresPtrType;


typedef CanTp_TxStateType * CanTp_TxStatePtrType;
# 517 "GenData/CanTp_Lcfg.h"
typedef struct sCanTp_PCConfigType
{
  uint8 CanTp_PCConfigNeverUsed;
} CanTp_PCConfigType;

typedef CanTp_PCConfigType CanTp_ConfigType;
# 560 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 422 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 561 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_RxPduMapType CanTp_RxPduMap[4];


# 1 "Include/MemMap.h" 1
# 429 "Include/MemMap.h"
#pragma section
# 566 "GenData/CanTp_Lcfg.h" 2
# 591 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 422 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 592 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_RxSduCfgType CanTp_RxSduCfg[4];


# 1 "Include/MemMap.h" 1
# 429 "Include/MemMap.h"
#pragma section
# 597 "GenData/CanTp_Lcfg.h" 2
# 608 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 406 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 609 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_RxSduCfgIndType CanTp_RxSduCfgInd[4];


# 1 "Include/MemMap.h" 1
# 413 "Include/MemMap.h"
#pragma section
# 614 "GenData/CanTp_Lcfg.h" 2
# 627 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 422 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 628 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_RxSduSnv2HdlType CanTp_RxSduSnv2Hdl[4];


# 1 "Include/MemMap.h" 1
# 429 "Include/MemMap.h"
#pragma section
# 633 "GenData/CanTp_Lcfg.h" 2
# 652 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 422 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 653 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_TxSduCfgType CanTp_TxSduCfg[2];


# 1 "Include/MemMap.h" 1
# 429 "Include/MemMap.h"
#pragma section
# 658 "GenData/CanTp_Lcfg.h" 2
# 669 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 406 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 670 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_TxSduCfgIndType CanTp_TxSduCfgInd[2];


# 1 "Include/MemMap.h" 1
# 413 "Include/MemMap.h"
#pragma section
# 675 "GenData/CanTp_Lcfg.h" 2
# 688 "GenData/CanTp_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 422 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 689 "GenData/CanTp_Lcfg.h" 2

extern const CanTp_TxSduSnv2HdlType CanTp_TxSduSnv2Hdl[2];


# 1 "Include/MemMap.h" 1
# 429 "Include/MemMap.h"
#pragma section
# 694 "GenData/CanTp_Lcfg.h" 2







# 1 "Include/MemMap.h" 1
# 702 "GenData/CanTp_Lcfg.h" 2

extern CanTp_CalcBSType CanTp_CalcBS[4];


# 1 "Include/MemMap.h" 1
# 707 "GenData/CanTp_Lcfg.h" 2







# 1 "Include/MemMap.h" 1
# 715 "GenData/CanTp_Lcfg.h" 2

extern CanTp_DynFCParameterType CanTp_DynFCParameters[4];


# 1 "Include/MemMap.h" 1
# 720 "GenData/CanTp_Lcfg.h" 2







# 1 "Include/MemMap.h" 1
# 728 "GenData/CanTp_Lcfg.h" 2

extern CanTp_RxStateType CanTp_RxState[4];


# 1 "Include/MemMap.h" 1
# 733 "GenData/CanTp_Lcfg.h" 2







# 1 "Include/MemMap.h" 1
# 741 "GenData/CanTp_Lcfg.h" 2

extern CanTp_TxSemaphoreType CanTp_TxSemaphores[2];


# 1 "Include/MemMap.h" 1
# 746 "GenData/CanTp_Lcfg.h" 2







# 1 "Include/MemMap.h" 1
# 754 "GenData/CanTp_Lcfg.h" 2

extern CanTp_TxStateType CanTp_TxState[2];


# 1 "Include/MemMap.h" 1
# 759 "GenData/CanTp_Lcfg.h" 2
# 112 "../../../BSW/CanTp/CanTp.h" 2
# 1 "GenData/CanTp_PBcfg.h" 1
# 113 "../../../BSW/CanTp/CanTp.h" 2
# 274 "../../../BSW/CanTp/CanTp.h"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 275 "../../../BSW/CanTp/CanTp.h" 2
# 290 "../../../BSW/CanTp/CanTp.h"
void CanTp_Init(const CanTp_ConfigType * CfgPtr);
# 304 "../../../BSW/CanTp/CanTp.h"
 void CanTp_InitMemory(void);
# 318 "../../../BSW/CanTp/CanTp.h"
void CanTp_Shutdown(void);
# 338 "../../../BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType * CanTpTxInfoPtr);
# 393 "../../../BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);
# 414 "../../../BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_ReadParameter(PduIdType id, TPParameterType parameter, uint16* value);
# 467 "../../../BSW/CanTp/CanTp.h"
# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 468 "../../../BSW/CanTp/CanTp.h" 2
# 110 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2
# 204 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
typedef enum
{
   kFblUseProductionKey,
   kFblUseDevelopmentKey
} tFblKeyState;




typedef struct
{
   vuint32 alignDummy;
   vuint8 data[(sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))];
} tAlignedPublicKeyWriteBuffer;
# 226 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
 vuint8 applSignValidState;
# 237 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
# 1 "Include/MemMap.h" 1
# 2888 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 238 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2
 static vuint8 const nvOtpArea[(((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)) + (((((((sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))) + 0x20u) - 1u) / 0x20u) * 0x20u)))];

# 1 "Include/MemMap.h" 1
# 2895 "Include/MemMap.h"
#pragma section
# 241 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c" 2
# 252 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
static tFlashStatus ApplFblOtpGetMemAreaErased( tFblAddress memAddress, tFblLength memLength );
static IO_ErrorType ApplFblOtpReadEntry ( tFblAddress address, tFblLength length, vuint8 * readBuffer );
static tFblResult ApplFblOtpWriteEntry( tFblAddress address, tFblLength length, vuint8 * writeBuffer );


static tFblResult ApplFblGetKeyState(tFblKeyState * keyState);
# 274 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
static tFlashStatus ApplFblOtpGetMemAreaErased( tFblAddress memAddress, tFblLength memLength )
{
   tFlashStatus result;
   tFblLength readLength;
   IO_ErrorType memDrvResult;
   vuint16 bufIdx;
   vuint8 readBuffer[16u];
   tFblAddress localAddress;
   tFblLength localLength;

   result = 1u;
   localAddress = memAddress;
   localLength = memLength;

   while ((localLength > 0u) && (1u == result))
   {
      readLength = (localLength >= sizeof(readBuffer)) ? sizeof(readBuffer) : localLength;
      memDrvResult = FlashDriver_RReadSync(readBuffer, readLength, localAddress);

      if ((0x00u == memDrvResult) || (0xE5u == memDrvResult))
      {
         for (bufIdx = 0u; bufIdx < readLength; bufIdx++)
         {

            if (readBuffer[bufIdx] != (vuint8)0x00u)
            {

               result = 0u;
               break;
            }
         }

         localAddress += readLength;
         localLength -= readLength;
      }
      else
      {

         result = 0u;
      }
   }

   return result;
}
# 330 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
static IO_ErrorType ApplFblOtpReadEntry(tFblAddress address, tFblLength length, vuint8 * readBuffer)
{
   IO_ErrorType result;

   if (0u == ApplFblOtpGetMemAreaErased(address, (((((length) + 0x20u) - 1u) / 0x20u) * 0x20u)))
   {

      if (0 != readBuffer)
      {

         result = FlashDriver_RReadSync(readBuffer, length, address);
      }
      else
      {

         result = 0x01u;
      }
   }
   else
   {

      result = 0xE5u;
   }

   return result;
}
# 366 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
static tFblResult ApplFblOtpWriteEntry(tFblAddress address, tFblLength length, vuint8 * writeBuffer)
{
   tFblResult result;
   tFblLength alignedLength, paddedLength;
   IO_ErrorType memDrvResult;
   vuint8 padBuffer[0x20u], padIdx;


   if (!((((tFblAddress)(&nvOtpArea[0u])) & (0x20u - 1u)) == 0u)) ApplFblFatalError((0x50u));


   paddedLength = (((((length) + 0x20u) - 1u) / 0x20u) * 0x20u);

   alignedLength = (paddedLength != length) ? (paddedLength - 0x20u) : length;


   if ((address >= ((tFblAddress)(&nvOtpArea[0u]))) && ((address - ((tFblAddress)(&nvOtpArea[0u]))) < (((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)) + (((((((sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))) + 0x20u) - 1u) / 0x20u) * 0x20u)))) &&
       (alignedLength <= (((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)) + (((((((sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))) + 0x20u) - 1u) / 0x20u) * 0x20u)))) && ((address - ((tFblAddress)(&nvOtpArea[0u]))) <= ((((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)) + (((((((sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))) + 0x20u) - 1u) / 0x20u) * 0x20u))) - alignedLength)))
   {

      memDrvResult = ApplFblOtpReadEntry(address, length, 0);
      if (0xE5u == memDrvResult)
      {
         MemDriver_Begin((0u), 3u, memDrvLst[(0u)].writeHook);


         memDrvResult = FlashDriver_RWriteSync(writeBuffer, alignedLength, address);

         if ((0x00u == memDrvResult) && (alignedLength < length))
         {

            for (padIdx = 0u; padIdx < 0x20u; padIdx++)
            {
               padBuffer[padIdx] = (vuint8)(((alignedLength + padIdx) < length) ? writeBuffer[alignedLength + padIdx]
                                                                                : 0x00u);
            }

            memDrvResult = FlashDriver_RWriteSync(padBuffer, 0x20u, address + alignedLength);
         }

         MemDriver_End(memDrvLst[(0u)].writeHook);
      }
      result = (tFblResult)((0x00u == memDrvResult) ? 0x00u : 0x01u);
   }
   else
   {

      result = 0x01u;
   }

   return result;
}
# 431 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblProgStatus ApplFblExtProgRequest( void )
{
   tFblProgStatus progStatus;





   progStatus = 0xFFu;




   if ((( (fblBmMagicFlag[0u] == 0x50u) && (fblBmMagicFlag[1u] == 0x72u) && (fblBmMagicFlag[2u] == 0x6Fu) && (fblBmMagicFlag[3u] == 0x67u) && (fblBmMagicFlag[4u] == 0x53u) && (fblBmMagicFlag[5u] == 0x69u) && (fblBmMagicFlag[6u] == 0x67u) && (fblBmMagicFlag[7u] == 0x6Eu)) ? 1u : 0u))
   {

      { fblBmMagicFlag[0u] = 0x00u; fblBmMagicFlag[1u] = 0x00u; fblBmMagicFlag[2u] = 0x00u; fblBmMagicFlag[3u] = 0x00u; fblBmMagicFlag[4u] = 0x00u; fblBmMagicFlag[5u] = 0x00u; fblBmMagicFlag[6u] = 0x00u; fblBmMagicFlag[7u] = 0x00u; };

      progStatus = 0x00u;
   }
# 471 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
   if ((( (fblBmMagicFlag[0u] == 0x53u) && (fblBmMagicFlag[1u] == 0x74u) && (fblBmMagicFlag[2u] == 0x61u) && (fblBmMagicFlag[3u] == 0x79u) && (fblBmMagicFlag[4u] == 0x42u) && (fblBmMagicFlag[5u] == 0x6Fu) && (fblBmMagicFlag[6u] == 0x6Fu) && (fblBmMagicFlag[7u] == 0x74u)) ? 1u : 0u))
   {

      { fblBmMagicFlag[0u] = 0x00u; fblBmMagicFlag[1u] = 0x00u; fblBmMagicFlag[2u] = 0x00u; fblBmMagicFlag[3u] = 0x00u; fblBmMagicFlag[4u] = 0x00u; fblBmMagicFlag[5u] = 0x00u; fblBmMagicFlag[6u] = 0x00u; fblBmMagicFlag[7u] = 0x00u; };

      progStatus = 0x10u;
   }
# 495 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
   return progStatus;
}
# 506 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tApplStatus ApplFblIsValidApp( void )
{
   tApplStatus applicationStatus;
   tBlockDescriptor iterBlock;
   tFblLbtBlockFilter blockFilter;





   applicationStatus = 0u;


   FblLbtBlockFilterInit(&blockFilter);
   FblLbtBlockFilterSetBlockType(&blockFilter, 0x0000009Au);
   iterBlock = FblLbtBlockFirst(&blockFilter);

   while (FblLbtBlockDone() == 0u)
   {

      if (FblNvPatternGet((&iterBlock), kFblNvPatternId_PartitionValidity) == 0x00u)
      {
         applicationStatus = 1u;
         break;
      }





      iterBlock = FblLbtBlockNext();
   }


   return applicationStatus;
}
# 551 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblValidateApp( void )
{







   tFblResult result = 0x01u;
   vuint8 blockNr;
   tBlockDescriptor blockDescriptor;


   blockNr = FblDiagGetLastErasedBlock();
   if (FblLbtGetBlockDescriptorByNr(blockNr, &blockDescriptor) == 0x00u)
   {
      result = FblNvPatternSet((&blockDescriptor), kFblNvPatternId_PartitionValidity);
   }

   return result;
}







tFblResult ApplFblInvalidateApp( void )
{
   tFblResult retCode = 0x01u;

   tBlockDescriptor iterBlock;
   tFblLbtBlockFilter blockFilter;






   FblLbtBlockFilterInit(&blockFilter);
   FblLbtBlockFilterSetBlockType(&blockFilter, 0x0000009Au);

   iterBlock = FblLbtBlockFirst(&blockFilter);
   while (FblLbtBlockDone() == 0u)
   {
      retCode = FblNvPatternClr((&iterBlock), kFblNvPatternId_PartitionValidity);
      if (retCode != 0x00u)
      {
         break;
      }
      iterBlock = FblLbtBlockNext();
   }




   return retCode;
}
# 621 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblValidateBlock( tBlockDescriptor blockDescriptor )
{
   tFblResult retCode;


   vuint8 localSigValidationState;


   tBlockDescriptor localBlockDescriptor;

   localBlockDescriptor = blockDescriptor;
# 642 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
   retCode = FblNvPatternGet((&localBlockDescriptor), kFblNvPatternId_ModuleValidity);






   if (0x00u != retCode)
   {




      {
         retCode = FblValStructValidateBlock(&localBlockDescriptor);
      }

      localSigValidationState = (applSignValidState);

      if ( ((localSigValidationState == 0x00u) && (retCode != 0x00u))
          || (localSigValidationState == 0xFFu))
      {

         (applSignValidState = (retCode));
      }







      if (0x00u == retCode)
      {


         if (localBlockDescriptor.blockType != 0x0000009Bu)
         {



            if (0x00u != FblNvPatternSet((&localBlockDescriptor), kFblNvPatternId_ModuleValidity))
            {
               retCode = 0x01u;
            }




         }
      }
   }


   return retCode;
}
# 707 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblInvalidateBlock( tBlockDescriptor blockDescriptor )
{
   tFblResult retCode;
   tBlockDescriptor localBlockDescriptor;

   localBlockDescriptor = blockDescriptor;







   retCode = ApplFblInvalidateApp();


   retCode |= FblNvPatternClr((&localBlockDescriptor), kFblNvPatternId_ModuleValidity);





   return retCode;
}
# 740 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
void ApplFblReadSecurityBytes( vuint8 * key, vuint16 length )
{
   const vuint8 staticKey[0x0Cu] = {0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu};




   if (!((0x0Cu == length))) ApplFblFatalError((0xE0u));
# 757 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
   {

      (void)FblOwnMemcpy( (void *)(key), (const void *)(staticKey), (unsigned int)(length));
   }
}
# 818 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblAdjustLbtBlockData( tBlockDescriptor * blockDescriptor )
{
   tFblResult result;

   IO_PositionType presPtnAddress;
   IO_SizeType presPtnLen;
# 835 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
   result = 0x00u;





   if (result == 0x00u)
   {

      memSegment = FblNvPatternGetBaseAddr(blockDescriptor->blockNr, (tFblNvPatternId)(kFblNvPatternId_Last - 1u), &presPtnAddress, &presPtnLen);

      if (memSegment >= 0)
      {

         blockDescriptor->blockLength = presPtnAddress - blockDescriptor->blockStartAddress;
      }
      else
      {
         result = 0x01u;
      }
   }



   return result;
}
# 871 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblWriteDcmDslRxTesterSourceAddr(vuint8* buffer)
{

   return 0x00u;
}
# 884 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblReadDcmDslRxTesterSourceAddr(vuint8* buffer)
{

   FblMemSetInteger(sizeof(FblCw_RxTesterSourceAddressOfDcmDslConnectionInfo16BitType), 0u, buffer);

   return 0x00u;
}
# 901 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblReadVerificationKey( SecM_AsymKeyType * publicKey )
{
   tFblResult result;
   tFblKeyState keyState;

   result = ApplFblGetKeyState(&keyState);

   if (result == 0x00u)
   {
# 939 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
      if (kFblUseProductionKey == keyState)
      {

         IO_ErrorType readModResult, readExpResult;

         if (!((sizeof(SecM_RsaDevelopmentMod) == publicKey->shared.size))) ApplFblFatalError((0xE0u));
         if (!((sizeof(SecM_RsaDevelopmentExp) == publicKey->individual.size))) ApplFblFatalError((0xE0u));


         readModResult = ApplFblOtpReadEntry(((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))])), publicKey->shared.size, 0);
         readExpResult = ApplFblOtpReadEntry(((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))])), publicKey->individual.size, 0);


         if ((0xE5u != readModResult) &&
             (0xE5u != readExpResult))
         {


            publicKey->shared.data = (SecM_RomDataType)((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))]));
            publicKey->individual.data = (SecM_RomDataType)((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))]));
         }
         else

         {

            publicKey->shared.data = SecM_RsaDevelopmentMod;
            publicKey->individual.data = SecM_RsaDevelopmentExp;
         }
      }
      else if (kFblUseDevelopmentKey == keyState)
      {


         IO_ErrorType readModResult, readExpResult;

         if (!((sizeof(SecM_RsaDevelopmentMod) == publicKey->shared.size))) ApplFblFatalError((0xE0u));
         if (!((sizeof(SecM_RsaDevelopmentExp) == publicKey->individual.size))) ApplFblFatalError((0xE0u));


         readModResult = ApplFblOtpReadEntry(((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))])), publicKey->shared.size, 0);
         readExpResult = ApplFblOtpReadEntry(((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))])), publicKey->individual.size, 0);


         if ((0xE5u != readModResult) &&
             (0xE5u != readExpResult))
         {


            publicKey->shared.data = (SecM_RomDataType)((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))]));
            publicKey->individual.data = (SecM_RomDataType)((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))]));
         }
         else

         {

            publicKey->shared.data = SecM_RsaDevelopmentMod;
            publicKey->individual.data = SecM_RsaDevelopmentExp;
         }




      }
      else
      {

         result = 0x01u;
      }

   }

   return result;
}
# 1022 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
tFblResult ApplFblWriteVerificationKey( vuint8 * key )
{
   tFblResult result = 0x00u;


   tAlignedPublicKeyWriteBuffer writeBuffer;


   if ((((fblStates)[((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      vuint8 keyModBuffer[sizeof(SecM_RsaDevelopmentMod)];
      vuint8 keyExpBuffer[sizeof(SecM_RsaDevelopmentExp)];

      MemDriver_Begin((0u), 6u, memDrvLst[(0u)].readHook);

      if (0x00u != FlashDriver_RReadSync(keyModBuffer, sizeof(SecM_RsaDevelopmentMod), (vuint32)SecM_RsaDevelopmentMod))
      {
         result = 0x01u;
      }
      else if (0x00u != FlashDriver_RReadSync(keyExpBuffer, sizeof(SecM_RsaDevelopmentExp), (vuint32)SecM_RsaDevelopmentExp))
      {
         result = 0x01u;
      }
      else
      {

      }
      MemDriver_End(memDrvLst[(0u)].readHook);

      if (0x00u == result)
      {

         if (0x00u != ApplFblOtpWriteEntry(((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))])), sizeof(SecM_RsaDevelopmentMod), keyModBuffer))
         {
            result = 0x01u;
         }
         else if (0x00u != ApplFblOtpWriteEntry(((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))])), sizeof(SecM_RsaDevelopmentExp), keyExpBuffer))
         {
            result = 0x01u;
         }
         else
         {

         }
      }
   }
   else

   {

      (void)FblOwnMemcpy( (void *)(writeBuffer.data), (const void *)(key), (unsigned int)((sizeof(SecM_RsaDevelopmentMod) + sizeof(SecM_RsaDevelopmentExp))));

      result = ApplFblOtpWriteEntry(((tFblAddress)(&nvOtpArea[(((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u))))])), sizeof(SecM_RsaDevelopmentMod), writeBuffer.data);
      result |= ApplFblOtpWriteEntry(((tFblAddress)(&nvOtpArea[((((0u) + ((((((0u) + 0x20u) - 1u) / 0x20u) * 0x20u)))) + sizeof(SecM_RsaDevelopmentMod))])), sizeof(SecM_RsaDevelopmentExp), &writeBuffer.data[sizeof(SecM_RsaDevelopmentMod)]);
   }

   if (0x00u != result)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
   }

   return result;
}
# 1096 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
static tFblResult ApplFblGetKeyState(tFblKeyState * keyState)
{





   if ((((fblStates)[((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {

      *keyState = kFblUseDevelopmentKey;




   }
   else

   {
      *keyState = kFblUseProductionKey;
   }

   return 0x00u;
}
