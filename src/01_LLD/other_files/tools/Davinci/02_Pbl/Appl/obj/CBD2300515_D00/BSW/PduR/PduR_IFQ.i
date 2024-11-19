# 1 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c"
# 41 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c"
# 1 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 1
# 254 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
# 1 "GenData/PduR_Types.h" 1
# 52 "GenData/PduR_Types.h"
# 1 "../../../BSW/_Common/ComStack_Types.h" 1
# 68 "../../../BSW/_Common/ComStack_Types.h"
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
# 53 "GenData/PduR_Types.h" 2
# 66 "GenData/PduR_Types.h"
typedef PduInfoType * PduInfoTypeApplPtr;

typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint8 PduR_Lock_SpinLockCounterArrayType[1];
# 255 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2
# 1 "GenData/PduR_Cfg.h" 1
# 54 "GenData/PduR_Cfg.h"
# 1 "GenData/PduR_Types.h" 1
# 55 "GenData/PduR_Cfg.h" 2
# 256 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2

# 1 "../../../BSW/Det/Det.h" 1
# 77 "../../../BSW/Det/Det.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 78 "../../../BSW/Det/Det.h" 2
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
# 258 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2

# 1 "GenData/PduR_Lcfg.h" 1
# 56 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_Cfg.h" 1
# 57 "GenData/PduR_Lcfg.h" 2
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
# 58 "GenData/PduR_Lcfg.h" 2
# 1 "GenData/PduR_PBcfg.h" 1
# 59 "GenData/PduR_Lcfg.h" 2




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
# 64 "GenData/PduR_Lcfg.h" 2
# 1 "GenData/Dcm_Cbk.h" 1
# 55 "GenData/Dcm_Cbk.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
# 56 "GenData/Dcm_Cbk.h" 2

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
# 65 "GenData/PduR_Lcfg.h" 2
# 1073 "GenData/PduR_Lcfg.h"
typedef void ( * PduR_LockFunctionType) (void);



typedef Std_ReturnType ( * PduR_TransmitFctPtrType) (PduIdType, const PduInfoType * );
typedef Std_ReturnType ( * PduR_TriggerTransmitFctPtrType) (PduIdType, PduInfoType * );
typedef void ( * PduR_IfRxIndicationType) (PduIdType, const PduInfoType * );
typedef void ( * PduR_IfTxConfirmationFctPtrType) (PduIdType);


typedef BufReq_ReturnType ( * PduR_StartOfReceptionFctPtrType) (PduIdType, PduInfoType * , PduLengthType, PduLengthType * );

typedef BufReq_ReturnType ( * PduR_CopyRxDataFctPtrType) (PduIdType, PduInfoType * , PduLengthType * );

typedef BufReq_ReturnType ( * PduR_CopyTxDataFctPtrType) (PduIdType, PduInfoType * , RetryInfoType * , PduLengthType * );

typedef void ( * PduR_TpRxIndicationFctPtrType) (PduIdType, Std_ReturnType);

typedef void ( * PduR_TpTxConfirmationFctPtrType) (PduIdType, Std_ReturnType);
# 1101 "GenData/PduR_Lcfg.h"
typedef Std_ReturnType ( * PduR_ChangeParameterFctPtrType) (PduIdType, TPParameterType, uint16);
# 1115 "GenData/PduR_Lcfg.h"
typedef uint8_least PduR_DestApplicationManagerRomIterType;


typedef uint8_least PduR_ExclusiveAreaRomIterType;


typedef uint8_least PduR_InitializedRamIterType;


typedef uint8_least PduR_LockRomIterType;


typedef uint8_least PduR_MmRomIterType;


typedef uint8_least PduR_PartitionIdentifiersIterType;


typedef uint8_least PduR_RmDestRomIterType;


typedef uint8_least PduR_RmGDestRomIterType;


typedef uint8_least PduR_RmSrcRomIterType;


typedef uint8_least PduR_RmTransmitFctPtrIterType;


typedef uint8_least PduR_RxTp2DestIterType;


typedef uint8_least PduR_RxTp2SrcIterType;


typedef uint8_least PduR_SrcApplicationRomIterType;


typedef uint8_least PduR_Tx2LoIterType;


typedef uint8_least PduR_TxTp2SrcIterType;


typedef uint8_least PduR_PCPartitionConfigIterType;
# 1172 "GenData/PduR_Lcfg.h"
typedef uint8 PduR_ConfigIdType;


typedef uint8 PduR_InitializedIdxOfDestApplicationManagerRomType;


typedef uint8 PduR_InitializedPartitionIdxOfDestApplicationManagerRomType;


typedef uint8 PduR_RmGDestRomEndIdxOfDestApplicationManagerRomType;


typedef uint8 PduR_RmGDestRomStartIdxOfDestApplicationManagerRomType;


typedef boolean PduR_RmGDestRomUsedOfDestApplicationManagerRomType;


typedef uint8 PduR_SrcApplicationRomEndIdxOfDestApplicationManagerRomType;


typedef uint8 PduR_SrcApplicationRomStartIdxOfDestApplicationManagerRomType;


typedef boolean PduR_InitializedRamType;


typedef uint8 PduR_ExclusiveAreaRomIdxOfLockRomType;


typedef boolean PduR_ExclusiveAreaRomUsedOfLockRomType;


typedef boolean PduR_ChangeParameterSupportedOfMmRomType;


typedef boolean PduR_LoTpOfMmRomType;


typedef uint8 PduR_MaskedBitsOfMmRomType;


typedef boolean PduR_UpTpOfMmRomType;


typedef uint8 PduR_PCPartitionConfigIdxOfPartitionIdentifiersType;


typedef uint32 PduR_PartitionSNVOfPartitionIdentifiersType;


typedef uint8 PduR_PduLengthHandlingStrategyOfRmDestRomType;


typedef uint8 PduR_RmGDestRomIdxOfRmDestRomType;


typedef uint8 PduR_RmSrcRomIdxOfRmDestRomType;


typedef uint8 PduR_RoutingTypeOfRmDestRomType;


typedef uint8 PduR_DestApplicationManagerRomIdxOfRmGDestRomType;


typedef uint8 PduR_DestHndOfRmGDestRomType;


typedef uint8 PduR_DirectionOfRmGDestRomType;


typedef uint8 PduR_LockRomIdxOfRmGDestRomType;


typedef uint8 PduR_MaxPduLengthOfRmGDestRomType;


typedef uint8 PduR_MmRomIdxOfRmGDestRomType;


typedef uint8 PduR_PduRDestPduProcessingOfRmGDestRomType;


typedef uint8 PduR_RmDestRomIdxOfRmGDestRomType;


typedef uint8 PduR_TxIf2UpIdxOfRmGDestRomType;


typedef uint8 PduR_DestApplicationManagerRomIdxOfRmSrcRomType;


typedef uint8 PduR_LockRomIdxOfRmSrcRomType;


typedef uint8 PduR_MmRomIdxOfRmSrcRomType;


typedef uint8 PduR_RmDestRomEndIdxOfRmSrcRomType;


typedef uint8 PduR_RmDestRomLengthOfRmSrcRomType;


typedef uint8 PduR_RmDestRomStartIdxOfRmSrcRomType;


typedef uint8 PduR_SrcHndOfRmSrcRomType;


typedef uint8 PduR_RmSrcRomIdxOfRxTp2DestType;


typedef uint8 PduR_RmDestRomIdxOfRxTp2SrcType;


typedef uint8 PduR_SizeOfDestApplicationManagerRomType;


typedef uint8 PduR_SizeOfExclusiveAreaRomType;


typedef uint8 PduR_SizeOfInitializedRamType;


typedef uint8 PduR_SizeOfLockRomType;


typedef uint8 PduR_SizeOfMmRomType;


typedef uint8 PduR_SizeOfPartitionIdentifiersType;


typedef uint8 PduR_SizeOfRmDestRomType;


typedef uint8 PduR_SizeOfRmGDestRomType;


typedef uint8 PduR_SizeOfRmSrcRomType;


typedef uint8 PduR_SizeOfRmTransmitFctPtrType;


typedef uint8 PduR_SizeOfRxTp2DestType;


typedef uint8 PduR_SizeOfRxTp2SrcType;


typedef uint8 PduR_SizeOfSrcApplicationRomType;


typedef uint8 PduR_SizeOfTx2LoType;


typedef uint8 PduR_SizeOfTxTp2SrcType;


typedef uint8 PduR_DeferredEventCacheRomPartitionIdxOfSrcApplicationRomType;


typedef uint8 PduR_RmSrcRomIdxOfTx2LoType;


typedef boolean PduR_RmSrcRomUsedOfTx2LoType;


typedef uint8 PduR_RmTransmitFctPtrIdxOfTx2LoType;


typedef uint8 PduR_RmGDestRomIdxOfTxTp2SrcType;
# 1359 "GenData/PduR_Lcfg.h"
typedef Std_ReturnType ( * PduR_RmTransmitFctPtrType) (PduR_RmSrcRomIterType, const PduInfoType * );


typedef Std_ReturnType ( * PduR_QAL_PutFctPtrType) (PduR_RmGDestRomIterType, PduR_RmDestRomIterType, PduLengthType, SduDataPtrType);
typedef Std_ReturnType ( * PduR_QAL_GetFctPtrType) (PduR_RmGDestRomIterType, PduR_RmDestRomIterType * , PduInfoType * );
typedef void ( * PduR_QAL_RemoveFctPtrType) (PduR_RmGDestRomIterType);
typedef uint16 ( * PduR_QAL_GetFillLevelFctPtrType) (PduR_RmGDestRomIterType);
typedef void ( * PduR_QAL_FlushFctPtrType) (PduR_RmGDestRomIterType);

typedef void ( * PduR_RmIf_TxConfirmation_StateHandler_FctPtrType) (PduR_RmGDestRomIterType);
typedef void ( * PduR_RmIf_FifoHandling_StateHandler_FctPtrType) (PduR_RmDestRomIterType, PduR_RmGDestRomIdxOfRmDestRomType, const PduInfoType * );

typedef uint8 PduR_MemIdxType;
# 1397 "GenData/PduR_Lcfg.h"
typedef struct sPduR_DestApplicationManagerRomType
{
  PduR_RmGDestRomStartIdxOfDestApplicationManagerRomType RmGDestRomStartIdxOfDestApplicationManagerRom;
} PduR_DestApplicationManagerRomType;


typedef struct sPduR_ExclusiveAreaRomType
{
  PduR_LockFunctionType LockOfExclusiveAreaRom;
  PduR_LockFunctionType UnlockOfExclusiveAreaRom;
} PduR_ExclusiveAreaRomType;


typedef struct sPduR_LockRomType
{
  PduR_ExclusiveAreaRomIdxOfLockRomType ExclusiveAreaRomIdxOfLockRom;
} PduR_LockRomType;


typedef struct sPduR_MmRomType
{
  PduR_MaskedBitsOfMmRomType MaskedBitsOfMmRom;
  PduR_ChangeParameterFctPtrType LoTpChangeParameterFctPtrOfMmRom;
  PduR_CopyRxDataFctPtrType UpTpCopyRxDataFctPtrOfMmRom;
  PduR_CopyTxDataFctPtrType UpTpCopyTxDataFctPtrOfMmRom;
  PduR_StartOfReceptionFctPtrType UpTpStartOfReceptionFctPtrOfMmRom;
  PduR_TpRxIndicationFctPtrType UpTpTpRxIndicationFctPtrOfMmRom;
  PduR_TpTxConfirmationFctPtrType UpTpTpTxConfirmationFctPtrOfMmRom;
  PduR_TransmitFctPtrType LoTpTransmitFctPtrOfMmRom;
} PduR_MmRomType;


typedef struct sPduR_PartitionIdentifiersType
{
  PduR_PartitionSNVOfPartitionIdentifiersType PartitionSNVOfPartitionIdentifiers;
} PduR_PartitionIdentifiersType;


typedef struct sPduR_RmDestRomType
{
  PduR_PduLengthHandlingStrategyOfRmDestRomType PduLengthHandlingStrategyOfRmDestRom;
  PduR_RmGDestRomIdxOfRmDestRomType RmGDestRomIdxOfRmDestRom;
  PduR_RmSrcRomIdxOfRmDestRomType RmSrcRomIdxOfRmDestRom;
  PduR_RoutingTypeOfRmDestRomType RoutingTypeOfRmDestRom;
} PduR_RmDestRomType;


typedef struct sPduR_RmGDestRomType
{
  PduR_DestHndOfRmGDestRomType DestHndOfRmGDestRom;
  PduR_DirectionOfRmGDestRomType DirectionOfRmGDestRom;
  PduR_LockRomIdxOfRmGDestRomType LockRomIdxOfRmGDestRom;
  PduR_MaxPduLengthOfRmGDestRomType MaxPduLengthOfRmGDestRom;
  PduR_MmRomIdxOfRmGDestRomType MmRomIdxOfRmGDestRom;
  PduR_RmDestRomIdxOfRmGDestRomType RmDestRomIdxOfRmGDestRom;
} PduR_RmGDestRomType;


typedef struct sPduR_RmSrcRomType
{
  PduR_LockRomIdxOfRmSrcRomType LockRomIdxOfRmSrcRom;
  PduR_MmRomIdxOfRmSrcRomType MmRomIdxOfRmSrcRom;
  PduR_RmDestRomStartIdxOfRmSrcRomType RmDestRomStartIdxOfRmSrcRom;
  PduR_SrcHndOfRmSrcRomType SrcHndOfRmSrcRom;
} PduR_RmSrcRomType;


typedef struct sPduR_RxTp2DestType
{
  uint8 PduR_RxTp2DestNeverUsed;
} PduR_RxTp2DestType;


typedef struct sPduR_RxTp2SrcType
{
  PduR_RmDestRomIdxOfRxTp2SrcType RmDestRomIdxOfRxTp2Src;
} PduR_RxTp2SrcType;


typedef struct sPduR_SrcApplicationRomType
{
  uint8 PduR_SrcApplicationRomNeverUsed;
} PduR_SrcApplicationRomType;


typedef struct sPduR_Tx2LoType
{
  PduR_RmSrcRomIdxOfTx2LoType RmSrcRomIdxOfTx2Lo;
  PduR_RmTransmitFctPtrIdxOfTx2LoType RmTransmitFctPtrIdxOfTx2Lo;
} PduR_Tx2LoType;


typedef struct sPduR_TxTp2SrcType
{
  uint8 PduR_TxTp2SrcNeverUsed;
} PduR_TxTp2SrcType;
# 1504 "GenData/PduR_Lcfg.h"
typedef struct PduR_InitializedRamStructSTag
{
  PduR_InitializedRamType PduRSinglePartitionDummy;
} PduR_InitializedRamStructSType;
# 1519 "GenData/PduR_Lcfg.h"
typedef union PduR_InitializedRamUTag
{
  PduR_InitializedRamType raw[1];
  PduR_InitializedRamStructSType str;
} PduR_InitializedRamUType;
# 1535 "GenData/PduR_Lcfg.h"
typedef const PduR_DestApplicationManagerRomType * PduR_DestApplicationManagerRomPtrType;


typedef const PduR_ExclusiveAreaRomType * PduR_ExclusiveAreaRomPtrType;


typedef PduR_InitializedRamType * PduR_InitializedRamPtrType;


typedef const PduR_LockRomType * PduR_LockRomPtrType;


typedef const PduR_MmRomType * PduR_MmRomPtrType;


typedef const PduR_PartitionIdentifiersType * PduR_PartitionIdentifiersPtrType;


typedef const PduR_RmDestRomType * PduR_RmDestRomPtrType;


typedef const PduR_RmGDestRomType * PduR_RmGDestRomPtrType;


typedef const PduR_RmSrcRomType * PduR_RmSrcRomPtrType;


typedef const PduR_RmTransmitFctPtrType * PduR_RmTransmitFctPtrPtrType;


typedef const PduR_RxTp2DestType * PduR_RxTp2DestPtrType;


typedef const PduR_RxTp2SrcType * PduR_RxTp2SrcPtrType;


typedef const PduR_SrcApplicationRomType * PduR_SrcApplicationRomPtrType;


typedef const PduR_Tx2LoType * PduR_Tx2LoPtrType;


typedef const PduR_TxTp2SrcType * PduR_TxTp2SrcPtrType;
# 1589 "GenData/PduR_Lcfg.h"
typedef struct sPduR_PCPartitionConfigType
{
  uint8 PduR_PCPartitionConfigNeverUsed;
} PduR_PCPartitionConfigType;


typedef const PduR_PCPartitionConfigType * PduR_PCPartitionConfigPtrType;
# 1607 "GenData/PduR_Lcfg.h"
typedef struct sPduR_PCConfigType
{
  uint8 PduR_PCConfigNeverUsed;
} PduR_PCConfigType;

typedef PduR_PCConfigType PduR_PBConfigType;
# 1644 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1645 "GenData/PduR_Lcfg.h" 2

extern const PduR_DestApplicationManagerRomType PduR_DestApplicationManagerRom[1];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1650 "GenData/PduR_Lcfg.h" 2
# 1665 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1666 "GenData/PduR_Lcfg.h" 2

extern const PduR_ExclusiveAreaRomType PduR_ExclusiveAreaRom[1];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1671 "GenData/PduR_Lcfg.h" 2
# 1685 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1686 "GenData/PduR_Lcfg.h" 2

extern const PduR_LockRomType PduR_LockRom[1];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1691 "GenData/PduR_Lcfg.h" 2
# 1712 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1713 "GenData/PduR_Lcfg.h" 2

extern const PduR_MmRomType PduR_MmRom[2];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1718 "GenData/PduR_Lcfg.h" 2
# 1732 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1733 "GenData/PduR_Lcfg.h" 2

extern const PduR_PartitionIdentifiersType PduR_PartitionIdentifiers[1];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1738 "GenData/PduR_Lcfg.h" 2
# 1755 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1756 "GenData/PduR_Lcfg.h" 2

extern const PduR_RmDestRomType PduR_RmDestRom[6];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1761 "GenData/PduR_Lcfg.h" 2
# 1780 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1781 "GenData/PduR_Lcfg.h" 2

extern const PduR_RmGDestRomType PduR_RmGDestRom[6];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1786 "GenData/PduR_Lcfg.h" 2
# 1803 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1804 "GenData/PduR_Lcfg.h" 2

extern const PduR_RmSrcRomType PduR_RmSrcRom[6];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1809 "GenData/PduR_Lcfg.h" 2
# 1820 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1821 "GenData/PduR_Lcfg.h" 2

extern const PduR_RmTransmitFctPtrType PduR_RmTransmitFctPtr[1];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1826 "GenData/PduR_Lcfg.h" 2
# 1840 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1841 "GenData/PduR_Lcfg.h" 2

extern const PduR_RxTp2SrcType PduR_RxTp2Src[4];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1846 "GenData/PduR_Lcfg.h" 2
# 1861 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 2612 "GenData/PduR_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1862 "GenData/PduR_Lcfg.h" 2

extern const PduR_Tx2LoType PduR_Tx2Lo[2];


# 1 "GenData/PduR_MemMap.h" 1
# 2628 "GenData/PduR_MemMap.h"
#pragma section
# 1867 "GenData/PduR_Lcfg.h" 2
# 1878 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 1879 "GenData/PduR_Lcfg.h" 2

extern PduR_InitializedRamUType PduR_InitializedRam;


# 1 "GenData/PduR_MemMap.h" 1
# 1884 "GenData/PduR_Lcfg.h" 2
# 1894 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_MemMap.h" 1
# 1895 "GenData/PduR_Lcfg.h" 2






# 1 "GenData/PduR_MemMap.h" 1
# 1902 "GenData/PduR_Lcfg.h" 2


# 1 "GenData/PduR_MemMap.h" 1
# 1905 "GenData/PduR_Lcfg.h" 2

extern boolean PduR_PreInitialized;


# 1 "GenData/PduR_MemMap.h" 1
# 1910 "GenData/PduR_Lcfg.h" 2
# 260 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2
# 496 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
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
# 497 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2
# 513 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
# 1 "GenData/PduR_MemMap.h" 1
# 473 "GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 514 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2
# 530 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
uint32 PduR_GetConfigurationId(void);
# 547 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
void PduR_PreInit(const PduR_PBConfigType * ConfigPtr);
# 565 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
void PduR_Init(const PduR_PBConfigType * ConfigPtr);
# 578 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
void PduR_InitMemory(void);
# 626 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
Std_ReturnType PduR_UpTransmit(PduIdType id, const PduInfoType * info);
# 734 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpStartOfReception(PduIdType id, PduInfoType * info, PduLengthType TpSduLength,
                                                             PduLengthType * bufferSizePtr);
# 773 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpCopyRxData(PduIdType id, PduInfoType * info, PduLengthType * bufferSizePtr);
# 800 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
void PduR_LoTpRxIndication(PduIdType id, Std_ReturnType result);
# 841 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpCopyTxData(PduIdType id, PduInfoType * info, RetryInfoType * retry,
                                                       PduLengthType * availableDataPtr);
# 869 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
void PduR_LoTpTxConfirmation(PduIdType id, Std_ReturnType result);
# 917 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
Std_ReturnType PduR_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);
# 1033 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
Std_ReturnType PduR_Rm_GetSrcDestPdu(PduR_RmGDestRomIterType rmGDestRomIdx, PduR_RmDestRomIterType * rmDestRomIdx);
# 1106 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
# 1 "GenData/PduR_MemMap.h" 1
# 489 "GenData/PduR_MemMap.h"
#pragma section
# 1107 "../../../../CBD2300515_D00/BSW/PduR/PduR.h" 2
# 42 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c" 2
# 1 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.h" 1
# 62 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.h"
# 1 "GenData/PduR_MemMap.h" 1
# 473 "GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 63 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.h" 2
# 165 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.h"
# 1 "GenData/PduR_MemMap.h" 1
# 489 "GenData/PduR_MemMap.h"
#pragma section
# 166 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.h" 2
# 43 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c" 2
# 1 "Include/SchM_PduR.h" 1
# 54 "Include/SchM_PduR.h"
# 1 "Include/Os.h" 1
# 55 "Include/SchM_PduR.h" 2
# 44 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c" 2
# 69 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c"
# 1 "GenData/PduR_MemMap.h" 1
# 473 "GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 70 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c" 2
# 610 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c"
# 1 "GenData/PduR_MemMap.h" 1
# 489 "GenData/PduR_MemMap.h"
#pragma section
# 611 "../../../../CBD2300515_D00/BSW/PduR/PduR_IFQ.c" 2
