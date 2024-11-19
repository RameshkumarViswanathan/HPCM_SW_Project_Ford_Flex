# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 50 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 1
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
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
# 52 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 1
# 34 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h"
# 1 "GenData/Crypto_30_LibCv_Custom_Generated.h" 1
# 35 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 2
# 53 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1096 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef Crypto_JobType * Csm_QueueElementType;
typedef uint8 Csm_JobCalloutStateType;
typedef void ( * Csm_CallbackFunc43Type)(Crypto_JobType * job, Std_ReturnType result);
typedef void ( * Csm_CallbackFunc44Type)(const uint32 jobID, Csm_ResultType result);
typedef void ( * Csm_CallbackFunc45Type)(const Crypto_JobType * job, Crypto_ResultType result);
typedef Std_ReturnType ( * Csm_PreJobCalloutFunc)(Crypto_JobType * job, Csm_JobCalloutStateType state);
typedef Std_ReturnType ( * Csm_PostJobCalloutFunc)(Crypto_JobType * job, Csm_JobCalloutStateType state, Std_ReturnType * jobReturnValue);
# 1115 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef uint8_least Csm_JobIterType;


typedef uint8_least Csm_JobInfoIterType;


typedef uint8_least Csm_JobPrimitiveInfoIterType;


typedef uint8_least Csm_JobTableIterType;


typedef uint8_least Csm_KeyIterType;


typedef uint8_least Csm_PrimitiveInfoIterType;


typedef uint8_least Csm_QueueIterType;


typedef uint8_least Csm_QueueInfoIterType;
# 1148 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef Csm_JobTableIterType Csm_JobStateIterType;


typedef Csm_JobTableIterType Csm_JobToObjMapIterType;


typedef Csm_QueueInfoIterType Csm_QueueStateIterType;
# 1166 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
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
# 1302 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
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
# 1337 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef struct Csm_QueueStructSTag
{
  Csm_QueueElementType CsmQueue_Standard;
} Csm_QueueStructSType;
# 1352 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef union Csm_QueueUTag
{
  Csm_QueueElementType raw[1];
  Csm_QueueStructSType str;
} Csm_QueueUType;
# 1368 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
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
# 1410 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
typedef struct sCsm_PCConfigType
{
  uint8 Csm_PCConfigNeverUsed;
} Csm_PCConfigType;

typedef Csm_PCConfigType Csm_ConfigType;
# 1463 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1464 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Crypto_JobInfoType Csm_JobInfo[3];


# 1 "Include/MemMap.h" 1
# 1469 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1480 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1481 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Crypto_JobPrimitiveInfoType Csm_JobPrimitiveInfo[3];


# 1 "Include/MemMap.h" 1
# 1486 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1501 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1502 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Csm_JobTableType Csm_JobTable[3];


# 1 "Include/MemMap.h" 1
# 1507 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1521 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1522 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Csm_KeyType Csm_Key[3];


# 1 "Include/MemMap.h" 1
# 1527 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1535 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Crypto_PrimitiveInfoType Csm_PrimitiveInfo[3];


# 1 "Include/MemMap.h" 1
# 1540 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1554 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1555 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern const Csm_QueueInfoType Csm_QueueInfo[1];


# 1 "Include/MemMap.h" 1
# 1560 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1568 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern Crypto_JobType Csm_Job[1];


# 1 "Include/MemMap.h" 1
# 1573 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1581 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern Csm_JobStateType Csm_JobState[3];


# 1 "Include/MemMap.h" 1
# 1586 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1594 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern Csm_SizeOfJobType Csm_JobToObjMap[3];


# 1 "Include/MemMap.h" 1
# 1599 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1607 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern Csm_QueueUType Csm_Queue;


# 1 "Include/MemMap.h" 1
# 1612 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 1627 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1628 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2

extern Csm_QueueStateType Csm_QueueState[1];


# 1 "Include/MemMap.h" 1
# 1633 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.h" 2
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 1 "../../../BSW/CryIf/CryIf.h" 1
# 66 "../../../BSW/CryIf/CryIf.h"
# 1 "GenData/CryIf_Cfg.h" 1
# 572 "GenData/CryIf_Cfg.h"
typedef Std_ReturnType ( * CryIf_ProcessJobFuncType)(uint32 objectId, Crypto_JobType* job);
typedef Std_ReturnType ( * CryIf_KeyElementSetFuncType)(uint32 cryptoKeyId, uint32 keyElementId, const uint8* keyPtr, uint32 keyLength);
typedef Std_ReturnType ( * CryIf_KeyValidSetFuncType)(uint32 cryptoKeyId);
typedef Std_ReturnType ( * CryIf_KeyElementGetFuncType)(uint32 cryptoKeyId, uint32 keyElementId, uint8* resultPtr, uint32* resultLengthPtr);
typedef Std_ReturnType ( * CryIf_KeyElementCopyFuncType)(uint32 cryptoKeyId, uint32 keyElementId, uint32 targetCryptoKeyId, uint32 targetKeyElementId);
typedef Std_ReturnType ( * CryIf_KeyElementCopyPartialFuncType)(uint32 cryptoKeyId, uint32 keyElementId, uint32 keyElementSourceOffset, uint32 keyElementTargetOffset, uint32 keyElementCopyLength, uint32 targetCryptoKeyId, uint32 targetKeyElementId);
typedef Std_ReturnType ( * CryIf_KeyElementIdsGetFuncType)(uint32 cryptoKeyId, uint32* keyElementIdsPtr, uint32* keyElementIdsLengthPtr);
typedef Std_ReturnType ( * CryIf_KeyCopyFuncType)(uint32 cryptoKeyId, uint32 targetCryptoKeyId);
typedef Std_ReturnType ( * CryIf_RandomSeedFuncType)(uint32 cryptoKeyId, const uint8* entropyPtr, uint32 entropyLength);
typedef Std_ReturnType ( * CryIf_KeyGenerateFuncType)(uint32 cryptoKeyId);
typedef Std_ReturnType ( * CryIf_KeyDeriveFuncType)(uint32 cryptoKeyId, uint32 targetCryptoKeyId);
typedef Std_ReturnType ( * CryIf_KeyExchangeCalcPubValFuncType)(uint32 cryptoKeyId, uint8* publicValuePtr, uint32* publicValueLengthPtr);
typedef Std_ReturnType ( * CryIf_KeyExchangeCalcSecretFuncType)(uint32 cryptoKeyId, const uint8* partnerPublicValuePtr, uint32 partnerPublicValueLength);
typedef Std_ReturnType ( * CryIf_CertificateParseFuncType)(uint32 cryptoKeyId);
typedef Std_ReturnType ( * CryIf_CertificateVerifyFuncType)(uint32 cryptoKeyId, uint32 verifyCryptoKeyId, Crypto_VerifyResultType* verifyPtr);
typedef Std_ReturnType ( * CryIf_CancelJobFuncType)(uint32 objectId, Crypto_JobType* job);
typedef Std_ReturnType ( * CryIf_CancelJobFuncWithInfoType)(uint32 objectId, Crypto_JobInfoType* job);
# 601 "GenData/CryIf_Cfg.h"
typedef uint8_least CryIf_ChannelIterType;


typedef uint8_least CryIf_CryptoFunctionsIterType;


typedef uint8_least CryIf_KeyIterType;
# 619 "GenData/CryIf_Cfg.h"
typedef uint8 CryIf_CryptoFunctionsIdxOfChannelType;


typedef uint32 CryIf_DriverObjectRefOfChannelType;


typedef uint8 CryIf_IdOfChannelType;


typedef boolean CryIf_SupportsKeyElementCopyPartialOfCryptoFunctionsType;


typedef uint8 CryIf_CryptoFunctionsIdxOfKeyType;


typedef uint32 CryIf_RefOfKeyType;


typedef uint8 CryIf_MaxNumberOfKeyElementsOfGeneralType;


typedef uint8 CryIf_MaxSizeOfKeyElementOfGeneralType;


typedef boolean CryIf_RedirectionOfGeneralType;


typedef uint8 CryIf_SizeOfChannelType;


typedef uint8 CryIf_SizeOfCryptoFunctionsType;


typedef uint8 CryIf_SizeOfKeyType;


typedef boolean CryIf_VersionInfoApiOfGeneralType;
# 674 "GenData/CryIf_Cfg.h"
typedef struct sCryIf_ChannelType
{
  CryIf_DriverObjectRefOfChannelType DriverObjectRefOfChannel;
  CryIf_CryptoFunctionsIdxOfChannelType CryptoFunctionsIdxOfChannel;
  CryIf_IdOfChannelType IdOfChannel;
} CryIf_ChannelType;


typedef struct sCryIf_CryptoFunctionsType
{
  CryIf_SupportsKeyElementCopyPartialOfCryptoFunctionsType SupportsKeyElementCopyPartialOfCryptoFunctions;
  CryIf_CancelJobFuncType CancelJobOfCryptoFunctions;
  CryIf_CertificateParseFuncType CertificateParseOfCryptoFunctions;
  CryIf_CertificateVerifyFuncType CertificateVerifyOfCryptoFunctions;
  CryIf_KeyCopyFuncType KeyCopyOfCryptoFunctions;
  CryIf_KeyDeriveFuncType KeyDeriveOfCryptoFunctions;
  CryIf_KeyElementCopyFuncType KeyElementCopyOfCryptoFunctions;
  CryIf_KeyElementCopyPartialFuncType KeyElementCopyPartialOfCryptoFunctions;
  CryIf_KeyElementGetFuncType KeyElementGetOfCryptoFunctions;
  CryIf_KeyElementIdsGetFuncType KeyElementIdsGetOfCryptoFunctions;
  CryIf_KeyElementSetFuncType KeyElementSetOfCryptoFunctions;
  CryIf_KeyExchangeCalcPubValFuncType KeyExchangeCalcPubValOfCryptoFunctions;
  CryIf_KeyExchangeCalcSecretFuncType KeyExchangeCalcSecretOfCryptoFunctions;
  CryIf_KeyGenerateFuncType KeyGenerateOfCryptoFunctions;
  CryIf_KeyValidSetFuncType KeyValidSetOfCryptoFunctions;
  CryIf_ProcessJobFuncType ProcessJobOfCryptoFunctions;
  CryIf_RandomSeedFuncType RandomSeedOfCryptoFunctions;
} CryIf_CryptoFunctionsType;





typedef struct sCryIf_KeyType
{
  CryIf_RefOfKeyType RefOfKey;
  CryIf_CryptoFunctionsIdxOfKeyType CryptoFunctionsIdxOfKey;
} CryIf_KeyType;
# 723 "GenData/CryIf_Cfg.h"
typedef const CryIf_ChannelType * CryIf_ChannelPtrType;


typedef const CryIf_CryptoFunctionsType * CryIf_CryptoFunctionsPtrType;


typedef const CryIf_KeyType * CryIf_KeyPtrType;
# 741 "GenData/CryIf_Cfg.h"
typedef struct sCryIf_PCConfigType
{
  uint8 CryIf_PCConfigNeverUsed;
} CryIf_PCConfigType;

typedef CryIf_PCConfigType CryIf_ConfigType;
# 803 "GenData/CryIf_Cfg.h"
# 1 "Include/MemMap.h" 1
# 804 "GenData/CryIf_Cfg.h" 2

extern const CryIf_ChannelType CryIf_Channel[1];


# 1 "Include/MemMap.h" 1
# 809 "GenData/CryIf_Cfg.h" 2
# 838 "GenData/CryIf_Cfg.h"
# 1 "Include/MemMap.h" 1
# 839 "GenData/CryIf_Cfg.h" 2

extern const CryIf_CryptoFunctionsType CryIf_CryptoFunctions[1];


# 1 "Include/MemMap.h" 1
# 844 "GenData/CryIf_Cfg.h" 2
# 859 "GenData/CryIf_Cfg.h"
# 1 "Include/MemMap.h" 1
# 860 "GenData/CryIf_Cfg.h" 2

extern const CryIf_KeyType CryIf_Key[3];


# 1 "Include/MemMap.h" 1
# 865 "GenData/CryIf_Cfg.h" 2
# 67 "../../../BSW/CryIf/CryIf.h" 2
# 125 "../../../BSW/CryIf/CryIf.h"
# 1 "Include/MemMap.h" 1
# 126 "../../../BSW/CryIf/CryIf.h" 2
# 139 "../../../BSW/CryIf/CryIf.h"
void CryIf_InitMemory(void);
# 157 "../../../BSW/CryIf/CryIf.h"
void CryIf_Init(void);
# 195 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_ProcessJob(uint32 channelId,
                                                  Crypto_JobType * job);
# 214 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CancelJob(uint32 channelId,
                                                 Crypto_JobType * job);
# 239 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementSet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     const uint8 * keyPtr,
                                                     uint32 keyLength);
# 259 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeySetValid(uint32 cryIfKeyId);
# 282 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementGet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr);
# 314 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopy(uint32 cryIfKeyId,
                                                      uint32 keyElementId,
                                                      uint32 targetCryIfKeyId,
                                                      uint32 targetKeyElementId);
# 351 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopyPartial(uint32 cryIfKeyId,
                                                            uint32 keyElementId,
                                                            uint32 keyElementSourceOffset,
                                                            uint32 keyElementTargetOffset,
                                                            uint32 keyElementCopyLength,
                                                            uint32 targetCryIfKeyId,
                                                            uint32 targetKeyElementId);
# 381 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyCopy(uint32 cryIfKeyId,
                                               uint32 targetCryIfKeyId);
# 401 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_RandomSeed(uint32 cryIfKeyId,
                                                  const uint8 * seedPtr,
                                                  uint32 seedLength);
# 421 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyGenerate(uint32 cryIfKeyId);
# 439 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyDerive(uint32 cryIfKeyId,
                                                 uint32 targetCryIfKeyId);
# 465 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyExchangeCalcPubVal(uint32 cryIfKeyId,
                                                             uint8 * publicValuePtr,
                                                             uint32 * publicValueLengthPtr);
# 490 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyExchangeCalcSecret(uint32 cryIfKeyId,
                                                             const uint8 * partnerPublicValuePtr,
                                                             uint32 partnerPublicValueLength);
# 510 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CertificateParse(uint32 cryIfKeyId);
# 533 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CertificateVerify(uint32 cryIfKeyId,
                                                         uint32 verifyCryIfKeyId,
                                                         Crypto_VerifyResultType * verifyPtr);
# 564 "../../../BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopyPartial_Stub(uint32 cryIfKeyId,
                                                                  uint32 keyElementId,
                                                                  uint32 keyElementSourceOffset,
                                                                  uint32 keyElementTargetOffset,
                                                                  uint32 keyElementCopyLength,
                                                                  uint32 targetCryIfKeyId,
                                                                  uint32 targetKeyElementId);


# 1 "Include/MemMap.h" 1
# 574 "../../../BSW/CryIf/CryIf.h" 2
# 52 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 119 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 120 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Crypto_JobInfoType Csm_JobInfo[3] = {

              {0u, 0u} ,
              {1u, 0u} ,
              {2u, 0u}
};


# 1 "Include/MemMap.h" 1
# 130 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 141 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 142 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Crypto_JobPrimitiveInfoType Csm_JobPrimitiveInfo[3] = {

              {0u, &Csm_PrimitiveInfo[2], 0x000000FFu, 0u, 1u, 0u} ,
              {0u, &Csm_PrimitiveInfo[0], 0x000000FFu, 2u, 1u, 0u} ,
              {0u, &Csm_PrimitiveInfo[1], 0x000000FFu, 1u, 1u, 0u}
};


# 1 "Include/MemMap.h" 1
# 152 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 167 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 168 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Csm_JobTableType Csm_JobTable[3] = {

  { 1u, 0u },
  { 2u, 0u },
  { 0u, 0u }
};


# 1 "Include/MemMap.h" 1
# 178 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 192 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 193 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Csm_KeyType Csm_Key[3] = {

  { 1u },
  { 0u },
  { 2u }
};


# 1 "Include/MemMap.h" 1
# 203 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2







# 1 "Include/MemMap.h" 1
# 211 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Crypto_PrimitiveInfoType Csm_PrimitiveInfo[3] = {

              {16u, 0x0Bu, {((131u)), 0u, 0x00u, 0x14u}} ,
              {0u, 0x08u, {0x16u, 32u, 0x0Au, 0x03u}} ,
              {32u, 0x00u, {0x03u, 0u, 0x00u, 0x00u}}
};


# 1 "Include/MemMap.h" 1
# 221 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 235 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 236 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

const Csm_QueueInfoType Csm_QueueInfo[1] = {

  { 0u }
};


# 1 "Include/MemMap.h" 1
# 244 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2







# 1 "Include/MemMap.h" 1
# 252 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

Crypto_JobType Csm_Job[1];





# 1 "Include/MemMap.h" 1
# 260 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2







# 1 "Include/MemMap.h" 1
# 268 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

Csm_JobStateType Csm_JobState[3];







# 1 "Include/MemMap.h" 1
# 278 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2







# 1 "Include/MemMap.h" 1
# 286 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

Csm_SizeOfJobType Csm_JobToObjMap[3];







# 1 "Include/MemMap.h" 1
# 296 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2







# 1 "Include/MemMap.h" 1
# 304 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

Csm_QueueUType Csm_Queue;





# 1 "Include/MemMap.h" 1
# 312 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
# 327 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c"
# 1 "Include/MemMap.h" 1
# 328 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2

Csm_QueueStateType Csm_QueueState[1];





# 1 "Include/MemMap.h" 1
# 336 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Csm_Cfg.c" 2
