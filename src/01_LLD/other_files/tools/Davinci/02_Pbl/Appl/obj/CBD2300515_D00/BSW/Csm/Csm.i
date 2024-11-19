# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
# 37 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm.h" 1
# 94 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
# 1 "GenData/Csm_Cfg.h" 1
# 51 "GenData/Csm_Cfg.h"
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
# 52 "GenData/Csm_Cfg.h" 2
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
# 95 "../../../../CBD2300515_D00/BSW/Csm/Csm.h" 2
# 240 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
# 1 "Include/MemMap.h" 1
# 241 "../../../../CBD2300515_D00/BSW/Csm/Csm.h" 2
# 253 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
void Csm_Init( void );
# 266 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
void Csm_InitMemory( void );
# 301 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_CancelJob(uint32 jobId, Crypto_OperationModeType mode);
# 324 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementSet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 const uint8 * keyPtr,
                                                 uint32 keyLength);
# 343 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeySetValid(uint32 keyId);
# 369 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementGet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 uint8 * keyPtr,
                                                 uint32 * keyLengthPtr);
# 399 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopy(uint32 keyId,
                                                  uint32 keyElementId,
                                                  uint32 targetKeyId,
                                                  uint32 targetKeyElementId);
# 436 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopyPartial( uint32 keyId,
                                                          uint32 keyElementId,
                                                          uint32 keyElementSourceOffset,
                                                          uint32 keyElementTargetOffset,
                                                          uint32 keyElementCopyLength,
                                                          uint32 targetKeyId,
                                                          uint32 targetKeyElementId);
# 465 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyCopy(uint32 keyId,
                                           uint32 targetKeyId);
# 484 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomSeed(uint32 keyId,
                                              const uint8 * seedPtr,
                                              uint32 seedLength);
# 502 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyGenerate(uint32 keyId);
# 521 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyDerive(uint32 keyId,
                                             uint32 targetKeyId);
# 547 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcPubVal(uint32 keyId,
                                                         uint8 * publicValuePtr,
                                                         uint32 * publicValueLengthPtr);
# 573 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcSecret(uint32 keyId,
                                                         const uint8 * partnerPublicValuePtr,
                                                         uint32 partnerPublicValueLength);
# 591 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateParse(uint32 keyId);
# 614 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateVerify(uint32 keyId,
                                                     uint32 verifyKeyId,
                                                     Crypto_VerifyResultType * verifyPtr);
# 643 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_Hash(uint32 jobId,
                                        Crypto_OperationModeType mode,
                                        const uint8 * dataPtr,
                                        uint32 dataLength,
                                        uint8 * resultPtr,
                                        uint32 * resultLengthPtr);
# 675 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_MacGenerate(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * dataPtr,
                                               uint32 dataLength,
                                               uint8 * macPtr,
                                               uint32 * macLengthPtr);
# 705 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_MacVerify(uint32 jobId,
                                             Crypto_OperationModeType mode,
                                             const uint8 * dataPtr,
                                             uint32 dataLength,
                                             const uint8 * macPtr,
                                             uint32 macLength,
                                             Crypto_VerifyResultType * verifyPtr);
# 738 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_Encrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 770 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_Decrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 809 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
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
# 850 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
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
# 887 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureGenerate(uint32 jobId,
                                                     Crypto_OperationModeType mode,
                                                     const uint8 * dataPtr,
                                                     uint32 dataLength,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr);
# 917 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureVerify(uint32 jobId,
                                                   Crypto_OperationModeType mode,
                                                   const uint8 * dataPtr,
                                                   uint32 dataLength,
                                                   const uint8 * signaturePtr,
                                                   uint32 signatureLength,
                                                   Crypto_VerifyResultType * verifyPtr);
# 949 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomGenerate(uint32 jobId,
                                                  uint8 * resultPtr,
                                                  uint32 * resultLengthPtr);
# 981 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeySetValid( uint32 jobId, uint32 keyId );
# 1002 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobRandomSeed( uint32 jobId, uint32 keyId, const uint8 * seedPtr, uint32 seedLength );
# 1022 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyGenerate( uint32 jobId, uint32 keyId );
# 1047 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyDerive( uint32 jobId, uint32 keyId, uint32 targetKeyId );
# 1071 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcPubVal( uint32 jobId,
                                                               uint32 keyId,
                                                               uint8 * publicValuePtr,
                                                               uint32 * publicValueLengthPtr );
# 1096 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcSecret( uint32 jobId,
                                                                uint32 keyId,
                                                                const uint8 * partnerPublicValuePtr,
                                                                uint32 partnerPublicValueLength );
# 1121 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_SaveContextJob( uint32 jobId,
                                                    uint8 * contextBufferPtr,
                                                    uint32 * contextBufferLengthPtr );
# 1144 "../../../../CBD2300515_D00/BSW/Csm/Csm.h"
Std_ReturnType Csm_RestoreContextJob( uint32 jobId,
                                                       uint8 * contextBufferPtr,
                                                       uint32 contextBufferLength );


# 1 "Include/MemMap.h" 1
# 1150 "../../../../CBD2300515_D00/BSW/Csm/Csm.h" 2
# 38 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h" 1
# 33 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h"
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm_Types.h" 1
# 34 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h" 2





# 1 "Include/MemMap.h" 1
# 40 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h" 2
# 55 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h"
void Csm_CallbackNotification(Crypto_JobType * job,
                                              Std_ReturnType result);


# 1 "Include/MemMap.h" 1
# 60 "../../../../CBD2300515_D00/BSW/Csm/Csm_Cbk.h" 2
# 39 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
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
# 40 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
# 1 "Include/SchM_Csm.h" 1
# 54 "Include/SchM_Csm.h"
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
# 55 "Include/SchM_Csm.h" 2
# 63 "Include/SchM_Csm.h"
# 1 "Include/MemMap.h" 1
# 64 "Include/SchM_Csm.h" 2

void Csm_MainFunction(void);


# 1 "Include/MemMap.h" 1
# 69 "Include/SchM_Csm.h" 2
# 41 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2


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
# 44 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
# 129 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
# 1 "Include/MemMap.h" 1
# 130 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2



static uint8 Csm_IsInitialized = (0x00u);



# 1 "Include/MemMap.h" 1
# 138 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
# 148 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
# 1 "Include/MemMap.h" 1
# 149 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
# 171 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_ProcessJob(Crypto_JobType * job);
# 189 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_GetJobObj(uint32 jobId, Csm_SizeOfJobType * jobObjId);
# 204 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static __inline__ void Csm_PrepareJobObj(uint32 jobId, Crypto_JobType * job);
# 318 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_HandleJobProcessing(Csm_ChannelIdOfQueueInfoType channelId, Crypto_JobType * job);
# 331 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static __inline__ void Csm_AppendRedirectionToJob(Crypto_JobType * job);
# 504 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static __inline__ void Csm_AppendRedirectionToJob(Crypto_JobType * job)
{
# 550 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  {


    job->jobRedirectionInfoRef = (Crypto_JobRedirectionInfoType * ) (((void *)0));



  }
}
# 570 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_HandleJobProcessing(Csm_ChannelIdOfQueueInfoType channelId, Crypto_JobType * job)
{
  Std_ReturnType retVal;
# 585 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  {

    retVal = CryIf_ProcessJob(channelId, job);
# 602 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  }
  return retVal;
}
# 643 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_ProcessJob(Crypto_JobType * job)
{
  Std_ReturnType retVal;
  uint32 jobId = job->jobId;
  Csm_QueueInfoIterType queueIdx = (Csm_JobTable[(jobId)].PriorityOfJobTable);
  Csm_ChannelIdOfQueueInfoType channelId = (Csm_QueueInfo[(queueIdx)].ChannelIdOfQueueInfo);
# 658 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  Csm_AppendRedirectionToJob(job);
# 773 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  {

    {

      Csm_JobState[(jobId)] = (2u);
      ;

      retVal = Csm_HandleJobProcessing(channelId, job);
    }


    if ((retVal != 0u) || ((job->jobPrimitiveInputOutput.mode & 4u) == 4u))
    {
      Csm_JobState[(jobId)] = (0u);

      job->jobId = (0xFFFFFFFFuL);

    }
    else
    {
      Csm_JobState[(jobId)] = (1u);
    }
  }

  return retVal;
}
# 809 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static __inline__ void Csm_PrepareJobObj(uint32 jobId, Crypto_JobType * job)
{
  job->jobId = jobId;
  job->jobPrimitiveInfo = (&(Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]));
  job->jobInfo = (&(Csm_JobInfo[(((Csm_JobInfoIdxOfJobTableType)((jobId))))]));
  job->jobState = 0u;


  job->PrimitiveInputOutput = job->jobPrimitiveInputOutput;
  job->state = job->jobState;

}
# 839 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
static Std_ReturnType Csm_GetJobObj(uint32 jobId, Csm_SizeOfJobType * jobObjId)
{

  Std_ReturnType retVal = 2u;


  if ((Csm_JobState[(jobId)]) >= 2u)
  {


  }
  else if ((Csm_JobState[(jobId)]) == 1u)
  {

    *jobObjId = (Csm_JobToObjMap[(jobId)]);
    retVal = 0u;
  }
# 872 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  else
  {

    Csm_QueueInfoIterType queueIdx = (Csm_JobTable[(jobId)].PriorityOfJobTable);
    Csm_SizeOfJobType idx;
# 897 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
    {

      idx = ((Csm_JobObjSynchronousIdxOfQueueInfoType)((queueIdx)));
      if ((Csm_Job[(idx)]).jobId == (0xFFFFFFFFuL))
      {
        *jobObjId = idx;
        Csm_JobToObjMap[(jobId)] = (idx);
        Csm_PrepareJobObj(jobId, (&(Csm_Job[(idx)])));
        retVal = 0u;
      }
    }
  }


  return retVal;
}
# 1374 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
void Csm_InitMemory(void)
{


  Csm_IsInitialized = (0x00u);

}
# 1394 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
void Csm_Init(void)
{

  uint8 errorId = (0x00u);




  if (Csm_IsInitialized == (uint8)(0x01u))
  {
    errorId = (0x11u);
  }
  else

  {

    uint32_least index;


    for (index = 0u; index < 1u; index++)
    {
      (Csm_Job[(index)]).jobState = 0u;
      (Csm_Job[(index)]).jobPrimitiveInputOutput.inputPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.inputLength = 0u;
      (Csm_Job[(index)]).jobPrimitiveInputOutput.secondaryInputPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.secondaryInputLength = 0u;
      (Csm_Job[(index)]).jobPrimitiveInputOutput.tertiaryInputPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.tertiaryInputLength = 0u;
      (Csm_Job[(index)]).jobPrimitiveInputOutput.outputPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.outputLengthPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.secondaryOutputPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.secondaryOutputLengthPtr = ((void *)0);
      (Csm_Job[(index)]).jobPrimitiveInputOutput.verifyPtr = ((void *)0);






      (Csm_Job[(index)]).jobPrimitiveInputOutput.mode = 0u;
      (Csm_Job[(index)]).cryptoKeyId = 0u;
      (Csm_Job[(index)]).jobId = (0xFFFFFFFFuL);

      (Csm_Job[(index)]).PrimitiveInputOutput = (Csm_Job[(index)]).jobPrimitiveInputOutput;
      (Csm_Job[(index)]).state = 0u;

    }

    for (index = 0u; index < 3u; index++)
    {
# 1454 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
      Csm_JobState[(index)] = (0u);
    }


    for (index = 0u; index < 1u; index++)
    {
      Csm_QueueState[(index)].QueueIdxOfQueueState = (((Csm_QueueStartIdxOfQueueInfoType)((index))));
      Csm_QueueState[(index)].LockOfQueueState = (0u);







    }
# 1491 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
    Csm_IsInitialized = (0x01u);


  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((110u), (0u), (0x00u), errorId);
  }



}
# 1565 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
void Csm_MainFunction(void)
{


  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }
  else

  {
# 1636 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x01u)), errorId);
  }




}
# 1669 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
void Csm_CallbackNotification(Crypto_JobType * job,
                                              Std_ReturnType result)
{
# 1783 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;

}
# 1800 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyElementSet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 const uint8 * keyPtr,
                                                 uint32 keyLength)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (keyPtr == ((void *)0))
  {
    errorId = (0x01u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyElementSet((Csm_Key[(keyId)].CryIfKeyIdOfKey), keyElementId, keyPtr, keyLength);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x78u)), errorId);
  }




  return retVal;







}
# 1864 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeySetValid(uint32 keyId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeySetValid((Csm_Key[(keyId)].CryIfKeyIdOfKey));
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x67u)), errorId);
  }




  return retVal;




}
# 1918 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyElementGet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 uint8 * keyPtr,
                                                 uint32 * keyLengthPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((keyPtr == ((void *)0))
         || (keyLengthPtr == ((void *)0)))
  {
    errorId = (0x01u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyElementGet((Csm_Key[(keyId)].CryIfKeyIdOfKey), keyElementId, keyPtr, keyLengthPtr);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x68u)), errorId);
  }




  return retVal;







}
# 1984 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyElementCopy(uint32 keyId,
                                                  uint32 keyElementId,
                                                  uint32 targetKeyId,
                                                  uint32 targetKeyElementId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((keyId >= 3u) || (targetKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyElementCopy((Csm_Key[(keyId)].CryIfKeyIdOfKey), keyElementId, (Csm_Key[(targetKeyId)].CryIfKeyIdOfKey), targetKeyElementId);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x71u)), errorId);
  }




  return retVal;







}
# 2043 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyElementCopyPartial( uint32 keyId,
                                                          uint32 keyElementId,
                                                          uint32 keyElementSourceOffset,
                                                          uint32 keyElementTargetOffset,
                                                          uint32 keyElementCopyLength,
                                                          uint32 targetKeyId,
                                                          uint32 targetKeyElementId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((keyId >= 3u) || (targetKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyElementCopyPartial((Csm_Key[(keyId)].CryIfKeyIdOfKey), keyElementId, keyElementSourceOffset, keyElementTargetOffset, keyElementCopyLength, (Csm_Key[(targetKeyId)].CryIfKeyIdOfKey), targetKeyElementId);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x79u)), errorId);
  }




  return retVal;
# 2096 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
}
# 2109 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyCopy(uint32 keyId,
                                           uint32 targetKeyId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((keyId >= 3u) || (targetKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyCopy((Csm_Key[(keyId)].CryIfKeyIdOfKey), (Csm_Key[(targetKeyId)].CryIfKeyIdOfKey));
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x73u)), errorId);
  }




  return retVal;





}
# 2166 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_RandomSeed(uint32 keyId,
                                              const uint8 * seedPtr,
                                              uint32 seedLength)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (seedPtr == ((void *)0))
  {
    errorId = (0x01u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_RandomSeed((Csm_Key[(keyId)].CryIfKeyIdOfKey), seedPtr, seedLength);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x69u)), errorId);
  }




  return retVal;






}
# 2229 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyGenerate(uint32 keyId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyGenerate((Csm_Key[(keyId)].CryIfKeyIdOfKey));
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Au)), errorId);
  }




  return retVal;




}
# 2283 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyDerive(uint32 keyId,
                                             uint32 targetKeyId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((keyId >= 3u) || (targetKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyDerive((Csm_Key[(keyId)].CryIfKeyIdOfKey), (Csm_Key[(targetKeyId)].CryIfKeyIdOfKey));
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Bu)), errorId);
  }




  return retVal;





}
# 2340 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyExchangeCalcPubVal(uint32 keyId,
                                                         uint8 * publicValuePtr,
                                                         uint32 * publicValueLengthPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if ((publicValuePtr == ((void *)0))
         || (publicValueLengthPtr == ((void *)0)))
  {
    errorId = (0x01u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyExchangeCalcPubVal((Csm_Key[(keyId)].CryIfKeyIdOfKey), publicValuePtr, publicValueLengthPtr);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Cu)), errorId);
  }




  return retVal;






}
# 2405 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_KeyExchangeCalcSecret(uint32 keyId,
                                                         const uint8 * partnerPublicValuePtr,
                                                         uint32 partnerPublicValueLength)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (partnerPublicValuePtr == ((void *)0))
  {
    errorId = (0x01u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_KeyExchangeCalcSecret((Csm_Key[(keyId)].CryIfKeyIdOfKey), partnerPublicValuePtr, partnerPublicValueLength);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Du)), errorId);
  }




  return retVal;






}
# 2468 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_CertificateParse(uint32 keyId)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (keyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_CertificateParse((Csm_Key[(keyId)].CryIfKeyIdOfKey));
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Eu)), errorId);
  }




  return retVal;




}
# 2523 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_CertificateVerify(uint32 keyId,
                                                     uint32 verifyKeyId,
                                                     Crypto_VerifyResultType * verifyPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (verifyPtr == ((void *)0))
  {
    errorId = (0x01u);
  }

  else if ((keyId >= 3u) || (verifyKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {


    retVal = CryIf_CertificateVerify((Csm_Key[(keyId)].CryIfKeyIdOfKey), (Csm_Key[(verifyKeyId)].CryIfKeyIdOfKey), verifyPtr);
  }


  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x74u)), errorId);
  }




  return retVal;






}
# 2600 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_CancelJob(uint32 jobId,
                                             Crypto_OperationModeType mode)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    ;

    if ((Csm_JobState[(jobId)]) == 0u)
    {

      ;
      retVal = 0u;
    }
    else
    {

      Crypto_JobType * job = (&(Csm_Job[((Csm_JobToObjMap[(jobId)]))]));
# 2645 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
      if ((Csm_JobState[(jobId)]) == 1u)
      {
        Csm_JobState[(jobId)] = (5u);
        ;


        retVal = CryIf_CancelJob((Csm_QueueInfo[((Csm_JobTable[(jobId)].PriorityOfJobTable))].ChannelIdOfQueueInfo), job);

        if (retVal == 0u)
        {
# 2664 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
          job->jobId = (0xFFFFFFFFuL);

          Csm_JobState[(jobId)] = (0u);
        }
        else
        {

          Csm_JobState[(jobId)] = (1u);
        }
      }
      else
      {




        ;

      }
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x6Fu)), errorId);
  }




  ;
  return retVal;






}
# 2721 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_Hash(uint32 jobId,
                                        Crypto_OperationModeType mode,
                                        const uint8 * dataPtr,
                                        uint32 dataLength,
                                        uint8 * resultPtr,
                                        uint32 * resultLengthPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }

  else if ((Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]).primitiveInfo->service != 0x00u)
  {
    errorId = (0x03u);
  }
  else

  {

    Crypto_JobType * job;
    Csm_SizeOfJobType jobObjId = 0u;

    ;

    retVal = Csm_GetJobObj(jobId, &jobObjId);
    if (retVal == 0u)
    {
      job = (&(Csm_Job[(jobObjId)]));

      job->jobPrimitiveInputOutput.mode = mode;
      job->jobPrimitiveInputOutput.inputPtr = dataPtr;
      job->jobPrimitiveInputOutput.inputLength = dataLength;
      job->jobPrimitiveInputOutput.outputPtr = resultPtr;
      job->jobPrimitiveInputOutput.outputLengthPtr = resultLengthPtr;


      retVal = Csm_ProcessJob(job);

    }
    else
    {
      ;
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x5Du)), errorId);
  }




  return retVal;
# 2800 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
}
# 2815 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_MacGenerate(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * dataPtr,
                                               uint32 dataLength,
                                               uint8 * macPtr,
                                               uint32 * macLengthPtr)
{
# 2886 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 2909 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_MacVerify(uint32 jobId,
                                             Crypto_OperationModeType mode,
                                             const uint8 * dataPtr,
                                             uint32 dataLength,
                                             const uint8 * macPtr,
                                             uint32 macLength,
                                             Crypto_VerifyResultType * verifyPtr)
{
# 2982 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3006 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_Encrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr)
{
# 3077 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3100 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_Decrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr)
{
# 3171 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3194 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_AEADEncrypt(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * plaintextPtr,
                                               uint32 plaintextLength,
                                               const uint8 * associatedDataPtr,
                                               uint32 associatedDataLength,
                                               uint8 * ciphertextPtr,
                                               uint32 * ciphertextLengthPtr,
                                               uint8 * tagPtr,
                                               uint32 * tagLengthPtr)
{
# 3273 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3300 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
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
                                               Crypto_VerifyResultType * verifyPtr)
{
# 3381 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3409 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_SignatureGenerate(uint32 jobId,
                                                     Crypto_OperationModeType mode,
                                                     const uint8 * dataPtr,
                                                     uint32 dataLength,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr)
{
# 3480 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  ;
  ;
  return 1u;

}
# 3503 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_SignatureVerify(uint32 jobId,
                                                   Crypto_OperationModeType mode,
                                                   const uint8 * dataPtr,
                                                   uint32 dataLength,
                                                   const uint8 * signaturePtr,
                                                   uint32 signatureLength,
                                                   Crypto_VerifyResultType * verifyPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }

  else if ((Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]).primitiveInfo->service != 0x08u)
  {
    errorId = (0x03u);
  }
  else

  {

    Crypto_JobType * job;
    Csm_SizeOfJobType jobObjId = 0u;

    ;

    retVal = Csm_GetJobObj(jobId, &jobObjId);
    if (retVal == 0u)
    {
      job = (&(Csm_Job[(jobObjId)]));

      job->jobPrimitiveInputOutput.mode = mode;
      job->jobPrimitiveInputOutput.inputPtr = dataPtr;
      job->jobPrimitiveInputOutput.inputLength = dataLength;
      job->jobPrimitiveInputOutput.secondaryInputPtr = signaturePtr;
      job->jobPrimitiveInputOutput.secondaryInputLength = signatureLength;
      job->jobPrimitiveInputOutput.verifyPtr = verifyPtr;


      retVal = Csm_ProcessJob(job);

    }
    else
    {
      ;
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x64u)), errorId);
  }




  return retVal;
# 3585 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
}
# 3600 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_RandomGenerate(uint32 jobId,
                                                  uint8 * resultPtr,
                                                  uint32 * resultLengthPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }

  else if ((Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]).primitiveInfo->service != 0x0Bu)
  {
    errorId = (0x03u);
  }
  else

  {

    Crypto_JobType * job;
    Csm_SizeOfJobType jobObjId = 0u;

    ;

    retVal = Csm_GetJobObj(jobId, &jobObjId);
    if (retVal == 0u)
    {
      job = (&(Csm_Job[(jobObjId)]));

      job->jobPrimitiveInputOutput.mode = ( 1u | 2u | 4u );
      job->jobPrimitiveInputOutput.outputPtr = resultPtr;
      job->jobPrimitiveInputOutput.outputLengthPtr = resultLengthPtr;


      retVal = Csm_ProcessJob(job);

    }
    else
    {
      ;
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x72u)), errorId);
  }




  return retVal;






}
# 3686 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobKeySetValid( uint32 jobId, uint32 keyId )
{
# 3748 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  return 1u;

}
# 3767 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobRandomSeed( uint32 jobId, uint32 keyId, const uint8 * seedPtr, uint32 seedLength )
{
# 3831 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  return 1u;

}
# 3852 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobKeyGenerate( uint32 jobId, uint32 keyId )
{
# 3914 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  return 1u;

}
# 3933 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobKeyDerive( uint32 jobId, uint32 keyId, uint32 targetKeyId )
{
# 3996 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  return 1u;

}
# 4016 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobKeyExchangeCalcPubVal( uint32 jobId,
                                                               uint32 keyId,
                                                               uint8 * publicValuePtr,
                                                               uint32 * publicValueLengthPtr )
{
# 4083 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  return 1u;

}
# 4104 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_JobKeyExchangeCalcSecret( uint32 jobId,
                                                                uint32 keyId,
                                                                const uint8 * partnerPublicValuePtr,
                                                                uint32 partnerPublicValueLength )
{
# 4171 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
  ;
  ;
  ;
  ;
  return 1u;

}
# 4194 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_SaveContextJob( uint32 jobId,
                                                    uint8 * contextBufferPtr,
                                                    uint32 * contextBufferLengthPtr )
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }

  else if ((contextBufferPtr == ((void *)0)) || (contextBufferLengthPtr == ((void *)0)))
  {
    errorId = (0x01u);
  }

  else if ((Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]).primitiveInfo->service > 0x08u)
  {
    errorId = (0x09u);
  }
  else


  if ((Csm_JobState[(jobId)]) == 0u)
  {

  }
  else
  {

    Crypto_JobType * job;
    Csm_SizeOfJobType jobObjId = 0u;

    ;

    retVal = Csm_GetJobObj(jobId, &jobObjId);
    if (retVal == 0u)
    {
      job = (&(Csm_Job[(jobObjId)]));

      job->jobPrimitiveInputOutput.mode = 8u;
      job->jobPrimitiveInputOutput.outputPtr = contextBufferPtr;
      job->jobPrimitiveInputOutput.outputLengthPtr = contextBufferLengthPtr;


      retVal = Csm_ProcessJob(job);

    }
    else
    {
      ;
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x86u)), errorId);
  }




  return retVal;






}
# 4293 "../../../../CBD2300515_D00/BSW/Csm/Csm.c"
Std_ReturnType Csm_RestoreContextJob( uint32 jobId,
                                                       uint8 * contextBufferPtr,
                                                       uint32 contextBufferLength )
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0x00u);




  if (Csm_IsInitialized != (0x01u))
  {
    errorId = (0x05u);
  }

  else if (jobId >= 3u)
  {
    errorId = (0x03u);
  }

  else if (contextBufferPtr == ((void *)0))
  {
    errorId = (0x01u);
  }

  else if ((Csm_JobPrimitiveInfo[(((Csm_JobPrimitiveInfoIdxOfJobTableType)((jobId))))]).primitiveInfo->service > 0x08u)
  {
    errorId = (0x09u);
  }
  else

  {

    Crypto_JobType * job;
    Csm_SizeOfJobType jobObjId = 0u;

    ;

    retVal = Csm_GetJobObj(jobId, &jobObjId);
    if (retVal == 0u)
    {
      job = (&(Csm_Job[(jobObjId)]));

      job->jobPrimitiveInputOutput.mode = 16u;
      job->jobPrimitiveInputOutput.inputPtr = contextBufferPtr;
      job->jobPrimitiveInputOutput.inputLength = contextBufferLength;


      retVal = Csm_ProcessJob(job);

    }
    else
    {
      ;
    }
  }



  if (errorId != (0x00u))
  {
    (void)Det_ReportError((uint16)(110u), (0u), (uint8)((0x87u)), errorId);
  }




  return retVal;






}


# 1 "Include/MemMap.h" 1
# 4373 "../../../../CBD2300515_D00/BSW/Csm/Csm.c" 2
