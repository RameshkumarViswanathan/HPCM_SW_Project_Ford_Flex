# 1 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
# 37 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
# 1 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h" 1
# 31 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h"
# 1 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h" 1
# 65 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
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
# 66 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h" 2
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
# 67 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h" 2
# 125 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
# 1 "Include/MemMap.h" 1
# 126 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h" 2
# 139 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
void CryIf_InitMemory(void);
# 157 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
void CryIf_Init(void);
# 195 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_ProcessJob(uint32 channelId,
                                                  Crypto_JobType * job);
# 214 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CancelJob(uint32 channelId,
                                                 Crypto_JobType * job);
# 239 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementSet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     const uint8 * keyPtr,
                                                     uint32 keyLength);
# 259 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeySetValid(uint32 cryIfKeyId);
# 282 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementGet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr);
# 314 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopy(uint32 cryIfKeyId,
                                                      uint32 keyElementId,
                                                      uint32 targetCryIfKeyId,
                                                      uint32 targetKeyElementId);
# 351 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopyPartial(uint32 cryIfKeyId,
                                                            uint32 keyElementId,
                                                            uint32 keyElementSourceOffset,
                                                            uint32 keyElementTargetOffset,
                                                            uint32 keyElementCopyLength,
                                                            uint32 targetCryIfKeyId,
                                                            uint32 targetKeyElementId);
# 381 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyCopy(uint32 cryIfKeyId,
                                               uint32 targetCryIfKeyId);
# 401 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_RandomSeed(uint32 cryIfKeyId,
                                                  const uint8 * seedPtr,
                                                  uint32 seedLength);
# 421 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyGenerate(uint32 cryIfKeyId);
# 439 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyDerive(uint32 cryIfKeyId,
                                                 uint32 targetCryIfKeyId);
# 465 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyExchangeCalcPubVal(uint32 cryIfKeyId,
                                                             uint8 * publicValuePtr,
                                                             uint32 * publicValueLengthPtr);
# 490 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyExchangeCalcSecret(uint32 cryIfKeyId,
                                                             const uint8 * partnerPublicValuePtr,
                                                             uint32 partnerPublicValueLength);
# 510 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CertificateParse(uint32 cryIfKeyId);
# 533 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_CertificateVerify(uint32 cryIfKeyId,
                                                         uint32 verifyCryIfKeyId,
                                                         Crypto_VerifyResultType * verifyPtr);
# 564 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h"
Std_ReturnType CryIf_KeyElementCopyPartial_Stub(uint32 cryIfKeyId,
                                                                  uint32 keyElementId,
                                                                  uint32 keyElementSourceOffset,
                                                                  uint32 keyElementTargetOffset,
                                                                  uint32 keyElementCopyLength,
                                                                  uint32 targetCryIfKeyId,
                                                                  uint32 targetKeyElementId);


# 1 "Include/MemMap.h" 1
# 574 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.h" 2
# 32 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h" 2






# 1 "Include/MemMap.h" 1
# 39 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h" 2
# 54 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h"
void CryIf_CallbackNotification(Crypto_JobType * job,
  Std_ReturnType result);


# 1 "Include/MemMap.h" 1
# 59 "../../../../CBD2300515_D00/BSW/CryIf/CryIf_Cbk.h" 2
# 38 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2
# 1 "../../../BSW/Csm/Csm_Cbk.h" 1
# 33 "../../../BSW/Csm/Csm_Cbk.h"
# 1 "../../../BSW/Csm/Csm_Types.h" 1
# 34 "../../../BSW/Csm/Csm_Cbk.h" 2





# 1 "Include/MemMap.h" 1
# 40 "../../../BSW/Csm/Csm_Cbk.h" 2
# 55 "../../../BSW/Csm/Csm_Cbk.h"
void Csm_CallbackNotification(Crypto_JobType * job,
                                              Std_ReturnType result);


# 1 "Include/MemMap.h" 1
# 60 "../../../BSW/Csm/Csm_Cbk.h" 2
# 39 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2


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
# 42 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2
# 81 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
# 1 "Include/MemMap.h" 1
# 82 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2



static uint8 CryIf_ModuleInitialized = (0x00u);



# 1 "Include/MemMap.h" 1
# 90 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2
# 100 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
# 1 "Include/MemMap.h" 1
# 101 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2
# 118 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static Std_ReturnType CryIf_KeyCopyForDifferentDrivers(uint32 cryIfKeyId, uint32 targetCryIfKeyId);
# 164 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ uint32 CryIf_Util_Max(uint32 a, uint32 b);
# 179 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ void CryIf_Util_MemSet(uint8 * dst, uint8 pattern, uint32 count);
# 194 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ void CryIf_Util_MemCpy(uint8 * dst, const uint8 * src, uint32 count);
# 230 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ Std_ReturnType CryIf_KeyElementCopyPartial_Internal(CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxSrc,
                                                                                         CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxDst,
                                                                                         uint32 cryptoKeyId,
                                                                                         uint32 keyElementId,
                                                                                         uint32 keyElementSourceOffset,
                                                                                         uint32 keyElementTargetOffset,
                                                                                         uint32 keyElementCopyLength,
                                                                                         uint32 targetCryptoKeyId,
                                                                                         uint32 targetKeyElementId);
# 253 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static Std_ReturnType CryIf_KeyCopyForDifferentDrivers(uint32 cryIfKeyId, uint32 targetCryIfKeyId)
{
  uint8 i, j;
  Std_ReturnType retVal = 1u;
  Std_ReturnType retValSrc;
  Std_ReturnType retValDst;
  uint8 buffer[32u];
  uint32 bufferSize = 32u;
  uint32 elementIdsSrc[10u];
  uint32 elementIdsSrcSize = 10u;
  uint32 elementIdsDst[10u];
  uint32 elementIdsDstSize = 10u;


  retValSrc = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementIdsGetOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey), elementIdsSrc, &elementIdsSrcSize);
  retValDst = (CryIf_CryptoFunctions[((CryIf_Key[(targetCryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementIdsGetOfCryptoFunctions)((CryIf_Key[(targetCryIfKeyId)].RefOfKey), elementIdsDst, &elementIdsDstSize);

  if ((retValSrc == 0u) && (retValDst == 0u))
  {

    for (i = 0; i < elementIdsSrcSize; i++)
    {
      for (j = 0; j < elementIdsDstSize; j++)
      {
        if (elementIdsSrc[i] == elementIdsDst[j])
        {

          if (0u == (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementGetOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey), elementIdsSrc[i], buffer, &bufferSize))
          {
            if (0u == (CryIf_CryptoFunctions[((CryIf_Key[(targetCryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementSetOfCryptoFunctions)((CryIf_Key[(targetCryIfKeyId)].RefOfKey), elementIdsDst[j], buffer, bufferSize))
            {
              retVal = 0u;
            }
          }
          break;
        }
      }
    }
  }

  return retVal;
}
# 401 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ uint32 CryIf_Util_Max(uint32 a, uint32 b)
{
  return (a > b)?(a):(b);
}
# 414 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ void CryIf_Util_MemSet(uint8 * dst, uint8 pattern, uint32 count)
{
  uint32_least i;

  for(i = 0; i < count; ++i)
  {
    dst[i] = pattern;
  }
}
# 432 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ void CryIf_Util_MemCpy(uint8 * dst, const uint8 * src, uint32 count)
{
  uint32_least i;

  for(i = 0; i < count; ++i)
  {
    dst[i] = src[i];
  }
}
# 455 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
static __inline__ Std_ReturnType CryIf_KeyElementCopyPartial_Internal(
      CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxSrc,
      CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxDst,
      uint32 cryptoKeyId,
      uint32 keyElementId,
      uint32 keyElementSourceOffset,
      uint32 keyElementTargetOffset,
      uint32 keyElementCopyLength,
      uint32 targetCryptoKeyId,
      uint32 targetKeyElementId)
{
  Std_ReturnType retVal;

  uint8 bufferSrc[32u];
  uint8 bufferDst[32u];
  uint32 bufferSizeSrc = 32u;
  uint32 bufferSizeDst = 32u;


  if (((keyElementTargetOffset + keyElementCopyLength) <= 32u))
  {

    retVal = (CryIf_CryptoFunctions[(cryptoFctIdxSrc)].KeyElementGetOfCryptoFunctions)(cryptoKeyId, keyElementId, bufferSrc, &bufferSizeSrc);


    if (retVal == 0u)
    {
      if ((keyElementSourceOffset + keyElementCopyLength) <= bufferSizeSrc)
      {

        retVal = (CryIf_CryptoFunctions[(cryptoFctIdxDst)].KeyElementGetOfCryptoFunctions)(targetCryptoKeyId, targetKeyElementId, bufferDst, &bufferSizeDst);
        switch (retVal)
        {
        case 13u:
        {
          bufferSizeDst = 0u;
        }


        case 0u:
        {

          if (bufferSizeDst < keyElementTargetOffset)
          {
            CryIf_Util_MemSet(&bufferDst[bufferSizeDst], 0u, keyElementTargetOffset - bufferSizeDst);
          }


          CryIf_Util_MemCpy(&bufferDst[keyElementTargetOffset], &bufferSrc[keyElementSourceOffset], keyElementCopyLength);

          bufferSizeDst = CryIf_Util_Max(bufferSizeDst, keyElementTargetOffset + keyElementCopyLength);


          retVal = (CryIf_CryptoFunctions[(cryptoFctIdxDst)].KeyElementSetOfCryptoFunctions)(targetCryptoKeyId, targetKeyElementId, bufferDst, bufferSizeDst);
        }
          break;

        default:

          break;
        }

      }
      else
      {
        retVal = 1u;
      }
    }
  }
  else
  {
    retVal = 1u;
  }

  return retVal;
}
# 545 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
void CryIf_InitMemory(void)
{


  CryIf_ModuleInitialized = (0x00u);

}
# 562 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
void CryIf_Init(void)
{

  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x01u))
  {
    errorId = (0x11u);
  }
  else

  {


    CryIf_ModuleInitialized = (uint8)(0x01u);

  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x00u), errorId);
  }



}
# 646 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
void CryIf_CallbackNotification(Crypto_JobType * job,
                                                  Std_ReturnType result)
{
# 658 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
  Csm_CallbackNotification(job, result);
}
# 671 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_ProcessJob(uint32 channelId,
                                                  Crypto_JobType * job)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (job == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if (channelId >= 1u)
  {
    errorId = (0x03u);
  }
  else

  {



    if(job->jobPrimitiveInfo->cryIfKeyId < 3u)
    {

      if (job->jobPrimitiveInfo->primitiveInfo->service < 0x0Cu)
      {
        job->cryptoKeyId = (CryIf_Key[(job->jobPrimitiveInfo->cryIfKeyId)].RefOfKey);
      }
      else
      {
        job->cryptoKeyId = (CryIf_Key[(job->jobPrimitiveInputOutput.cryIfKeyId)].RefOfKey);


        if (job->jobPrimitiveInfo->primitiveInfo->service == (Crypto_ServiceInfoType)0x0Eu)
        {
          job->targetCryptoKeyId = (CryIf_Key[(job->jobPrimitiveInputOutput.targetCryIfKeyId)].RefOfKey);
        }
      }
# 726 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
      {
        retVal = (CryIf_CryptoFunctions[((CryIf_Channel[(channelId)].CryptoFunctionsIdxOfChannel))].ProcessJobOfCryptoFunctions)((CryIf_Channel[(channelId)].DriverObjectRefOfChannel), job);
      }
    }
    else
    {
      retVal = 8u;
    }
  }


  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x02u), errorId);
  }




  return retVal;
}
# 758 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_CancelJob(uint32 channelId,
                                                 Crypto_JobType * job)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (job == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if (channelId >= 1u)
  {
    errorId = (0x03u);
  }
  else

  {



    if (job->jobPrimitiveInfo->cryIfKeyId < 3u)
    {

      if (job->jobPrimitiveInfo->primitiveInfo->service < 0x0Cu)
      {
        job->cryptoKeyId = (CryIf_Key[(job->jobPrimitiveInfo->cryIfKeyId)].RefOfKey);
      }
      else
      {
        job->cryptoKeyId = (CryIf_Key[(job->jobPrimitiveInputOutput.cryIfKeyId)].RefOfKey);


        if (job->jobPrimitiveInfo->primitiveInfo->service == (Crypto_ServiceInfoType)0x0Eu)
        {
          job->targetCryptoKeyId = (CryIf_Key[(job->jobPrimitiveInputOutput.targetCryIfKeyId)].RefOfKey);
        }
      }
# 819 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
      {
        retVal = (CryIf_CryptoFunctions[((CryIf_Channel[(channelId)].CryptoFunctionsIdxOfChannel))].CancelJobOfCryptoFunctions)((CryIf_Channel[(channelId)].DriverObjectRefOfChannel), job);
      }
    }
    else
    {
      retVal = 8u;
    }
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x03u), errorId);
  }




  return retVal;
}
# 852 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyElementSet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     const uint8 * keyPtr,
                                                     uint32 keyLength)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (keyPtr == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if (keyLength == 0u)
  {
    errorId = (0x04u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementSetOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                     keyElementId,
                                                     keyPtr,
                                                     keyLength);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x04u), errorId);
  }




  return retVal;
}
# 916 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeySetValid(uint32 cryIfKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyValidSetOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey));
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x05u), errorId);
  }




  return retVal;
}
# 964 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyElementGet(uint32 cryIfKeyId,
                                                     uint32 keyElementId,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr)
{


  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((resultPtr == ((void *)0)) || (resultLengthPtr == ((void *)0)))
  {
    errorId = (0x02u);
  }

  else if (*resultLengthPtr == 0u)
  {
    errorId = (0x04u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyElementGetOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                                                                   keyElementId,
                                                                                                   resultPtr,
                                                                                                   resultLengthPtr);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x06u), errorId);
  }




  return retVal;
}
# 1030 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyElementCopy(uint32 cryIfKeyId,
                                                      uint32 keyElementId,
                                                      uint32 targetCryIfKeyId,
                                                      uint32 targetKeyElementId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((cryIfKeyId >= 3u)
    || (targetCryIfKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {
    CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxSrc = (CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey);
    CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxDst = (CryIf_Key[(targetCryIfKeyId)].CryptoFunctionsIdxOfKey);
    CryIf_RefOfKeyType cryptoKeyIdSrc = (CryIf_Key[(cryIfKeyId)].RefOfKey);
    CryIf_RefOfKeyType cryptoKeyIdDst = (CryIf_Key[(targetCryIfKeyId)].RefOfKey);


    if (cryptoFctIdxSrc == cryptoFctIdxDst)
    {

      retVal = (CryIf_CryptoFunctions[(cryptoFctIdxSrc)].KeyElementCopyOfCryptoFunctions)(cryptoKeyIdSrc, keyElementId, cryptoKeyIdDst, targetKeyElementId);
    }
    else
    {
      uint8 buffer[32u];
      uint32 bufferSize = 32u;

      if ((CryIf_CryptoFunctions[(cryptoFctIdxSrc)].KeyElementGetOfCryptoFunctions)(cryptoKeyIdSrc, keyElementId, buffer, &bufferSize) == 0u)
      {
        retVal = (CryIf_CryptoFunctions[(cryptoFctIdxDst)].KeyElementSetOfCryptoFunctions)(cryptoKeyIdDst, targetKeyElementId, buffer, bufferSize);
      }
    }
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x0fu), errorId);
  }




  return retVal;
}
# 1099 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyElementCopyPartial_Stub(uint32 cryIfKeyId,
                                                                  uint32 keyElementId,
                                                                  uint32 keyElementSourceOffset,
                                                                  uint32 keyElementTargetOffset,
                                                                  uint32 keyElementCopyLength,
                                                                  uint32 targetCryIfKeyId,
                                                                  uint32 targetKeyElementId)
{
  ;
  ;
  ;
  ;
  ;
  ;
  ;

  return 1u;
}
# 1129 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyElementCopyPartial(uint32 cryIfKeyId,
                                                            uint32 keyElementId,
                                                            uint32 keyElementSourceOffset,
                                                            uint32 keyElementTargetOffset,
                                                            uint32 keyElementCopyLength,
                                                            uint32 targetCryIfKeyId,
                                                            uint32 targetKeyElementId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((cryIfKeyId >= 3u)
    || (targetCryIfKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {
    CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxSrc = (CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey);
    CryIf_CryptoFunctionsIdxOfKeyType cryptoFctIdxDst = (CryIf_Key[(targetCryIfKeyId)].CryptoFunctionsIdxOfKey);
    CryIf_RefOfKeyType cryptoKeyIdSrc = (CryIf_Key[(cryIfKeyId)].RefOfKey);
    CryIf_RefOfKeyType cryptoKeyIdDst = (CryIf_Key[(targetCryIfKeyId)].RefOfKey);




    if((cryptoFctIdxSrc == cryptoFctIdxDst) && (((CryIf_CryptoFunctions[(cryptoFctIdxDst)].SupportsKeyElementCopyPartialOfCryptoFunctions) != 0u)))
    {
      retVal = (CryIf_CryptoFunctions[(cryptoFctIdxSrc)].KeyElementCopyPartialOfCryptoFunctions)(cryptoKeyIdSrc, keyElementId, keyElementSourceOffset, keyElementTargetOffset, keyElementCopyLength, cryptoKeyIdDst, targetKeyElementId);
    }
    else
    {
      retVal = CryIf_KeyElementCopyPartial_Internal(cryptoFctIdxSrc, cryptoFctIdxDst, cryptoKeyIdSrc, keyElementId, keyElementSourceOffset, keyElementTargetOffset, keyElementCopyLength, cryptoKeyIdDst, targetKeyElementId);
    }
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x12u), errorId);
  }




  return retVal;
}
# 1199 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyCopy(uint32 cryIfKeyId,
                                               uint32 targetCryIfKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((cryIfKeyId >= 3u)
    || (targetCryIfKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {

    if ((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey) == (CryIf_Key[(targetCryIfKeyId)].CryptoFunctionsIdxOfKey))
    {

      retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyCopyOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey), (CryIf_Key[(targetCryIfKeyId)].RefOfKey));
    }
    else
    {

      retVal = CryIf_KeyCopyForDifferentDrivers(cryIfKeyId, targetCryIfKeyId);
    }
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x10u), errorId);
  }




  return retVal;
}
# 1258 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_RandomSeed(uint32 cryIfKeyId,
                                                  const uint8 * seedPtr,
                                                  uint32 seedLength)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (seedPtr == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if (seedLength == 0u)
  {
    errorId = (0x04u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].RandomSeedOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                                                                seedPtr,
                                                                                                seedLength);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x07u), errorId);
  }




  return retVal;
}
# 1320 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyGenerate(uint32 cryIfKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyGenerateOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey));
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x08u), errorId);
  }




  return retVal;
}
# 1368 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyDerive(uint32 cryIfKeyId,
                                                 uint32 targetCryIfKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((cryIfKeyId >= 3u)
    || (targetCryIfKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyDeriveOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey), (CryIf_Key[(targetCryIfKeyId)].RefOfKey));
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x09u), errorId);
  }




  return retVal;
}
# 1418 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyExchangeCalcPubVal(uint32 cryIfKeyId,
                                                             uint8 * publicValuePtr,
                                                             uint32 * publicValueLengthPtr)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if ((publicValuePtr == ((void *)0)) || (publicValueLengthPtr == ((void *)0)))
  {
    errorId = (0x02u);
  }

  else if (*publicValueLengthPtr == 0u)
  {
    errorId = (0x04u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyExchangeCalcPubValOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                                                                           publicValuePtr,
                                                                                                           publicValueLengthPtr);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x0au), errorId);
  }




  return retVal;
}
# 1480 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_KeyExchangeCalcSecret(uint32 cryIfKeyId,
                                                             const uint8 * partnerPublicValuePtr,
                                                             uint32 partnerPublicValueLength)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (partnerPublicValuePtr == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if (partnerPublicValueLength == 0u)
  {
    errorId = (0x04u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].KeyExchangeCalcSecretOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                                                                           partnerPublicValuePtr,
                                                                                                           partnerPublicValueLength);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x0bu), errorId);
  }




  return retVal;
}
# 1542 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_CertificateParse(uint32 cryIfKeyId)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (cryIfKeyId >= 3u)
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].CertificateParseOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey));
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x0cu), errorId);
  }




  return retVal;
}
# 1590 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c"
Std_ReturnType CryIf_CertificateVerify(uint32 cryIfKeyId,
                                                         uint32 verifyCryIfKeyId,
                                                         Crypto_VerifyResultType * verifyPtr)
{

  Std_ReturnType retVal = 1u;
  uint8 errorId = (0xFFu);




  if (CryIf_ModuleInitialized == (uint8)(0x00u))
  {
    errorId = (0x00u);
  }

  else if (verifyPtr == ((void *)0))
  {
    errorId = (0x02u);
  }

  else if ((cryIfKeyId >= 3u)
    || (verifyCryIfKeyId >= 3u))
  {
    errorId = (0x03u);
  }
  else

  {

    retVal = (CryIf_CryptoFunctions[((CryIf_Key[(cryIfKeyId)].CryptoFunctionsIdxOfKey))].CertificateVerifyOfCryptoFunctions)((CryIf_Key[(cryIfKeyId)].RefOfKey),
                                                                                                       (CryIf_Key[(verifyCryIfKeyId)].RefOfKey),
                                                                                                       verifyPtr);
  }



  if (errorId != (0xFFu))
  {
    (void)Det_ReportError((112u), (0x00u), (0x11u), errorId);
  }




  return retVal;
}


# 1 "Include/MemMap.h" 1
# 1640 "../../../../CBD2300515_D00/BSW/CryIf/CryIf.c" 2
