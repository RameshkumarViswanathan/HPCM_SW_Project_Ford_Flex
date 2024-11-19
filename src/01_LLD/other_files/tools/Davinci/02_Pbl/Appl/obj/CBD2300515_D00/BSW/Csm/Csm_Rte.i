# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.c"
# 37 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.c"
# 1 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.h" 1
# 33 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.h"
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
# 34 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.h" 2
# 38 "../../../../CBD2300515_D00/BSW/Csm/Csm_Rte.c" 2
