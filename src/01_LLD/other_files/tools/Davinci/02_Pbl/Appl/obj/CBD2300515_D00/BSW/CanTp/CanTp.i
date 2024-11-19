# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 35 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 1
# 108 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h" 1
# 37 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
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
# 38 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h" 2
# 1 "GenData/CanTp_Cfg.h" 1
# 39 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h" 2
# 88 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_FrameType;







typedef uint8 CanTp_InitStatusType;





typedef uint8 CanTp_TxChannelStateType;
# 122 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_RxChannelStateType;
# 141 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_DirectionType;
# 163 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
typedef Std_ReturnType CanTp_NotificationType;
# 180 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
typedef uint8 CanTp_BufferStateType;
# 189 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
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
# 223 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
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
# 262 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Types.h"
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
# 109 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 2


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
# 112 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 2
# 1 "GenData/CanTp_PBcfg.h" 1
# 113 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 2
# 274 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 275 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 2
# 290 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
void CanTp_Init(const CanTp_ConfigType * CfgPtr);
# 304 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
 void CanTp_InitMemory(void);
# 318 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
void CanTp_Shutdown(void);
# 338 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType * CanTpTxInfoPtr);
# 393 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);
# 414 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
Std_ReturnType CanTp_ReadParameter(PduIdType id, TPParameterType parameter, uint16* value);
# 467 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h"
# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 468 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.h" 2
# 36 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h" 1
# 64 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 65 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h" 2
# 80 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h"
void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr);
# 94 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h"
void CanTp_TxConfirmation(PduIdType TxPduId);
# 213 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h"
# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 214 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Cbk.h" 2
# 37 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2


# 1 "GenData/PduR_CanTp.h" 1
# 50 "GenData/PduR_CanTp.h"
# 1 "GenData/PduR_Cfg.h" 1
# 54 "GenData/PduR_Cfg.h"
# 1 "GenData/PduR_Types.h" 1
# 66 "GenData/PduR_Types.h"
typedef PduInfoType * PduInfoTypeApplPtr;

typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint8 PduR_Lock_SpinLockCounterArrayType[1];
# 55 "GenData/PduR_Cfg.h" 2
# 51 "GenData/PduR_CanTp.h" 2
# 74 "GenData/PduR_CanTp.h"
# 1 "GenData/PduR_MemMap.h" 1
# 473 "GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 75 "GenData/PduR_CanTp.h" 2
# 101 "GenData/PduR_CanTp.h"
void PduR_CanTpRxIndication(PduIdType id, Std_ReturnType result);
# 126 "GenData/PduR_CanTp.h"
void PduR_CanTpTxConfirmation(PduIdType id, Std_ReturnType result);
# 158 "GenData/PduR_CanTp.h"
BufReq_ReturnType PduR_CanTpStartOfReception(PduIdType id, PduInfoType * info, PduLengthType TpSduLength, PduLengthType * bufferSizePtr);
# 193 "GenData/PduR_CanTp.h"
BufReq_ReturnType PduR_CanTpCopyRxData(PduIdType id, PduInfoType * info, PduLengthType * bufferSizePtr);
# 231 "GenData/PduR_CanTp.h"
BufReq_ReturnType PduR_CanTpCopyTxData(PduIdType id, PduInfoType * info, RetryInfoType * retry, PduLengthType * availableDataPtr);







# 1 "GenData/PduR_MemMap.h" 1
# 489 "GenData/PduR_MemMap.h"
#pragma section
# 240 "GenData/PduR_CanTp.h" 2
# 40 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2

# 1 "../../../BSW/CanIf/CanIf.h" 1
# 218 "../../../BSW/CanIf/CanIf.h"
# 1 "GenData/CanIf_Cfg.h" 1
# 54 "GenData/CanIf_Cfg.h"
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
# 55 "GenData/CanIf_Cfg.h" 2
# 186 "GenData/CanIf_Cfg.h"
typedef uint8 CanIf_TxBufferSizeType;





# 1 "../../../BSW/CanIf/CanIf_Types.h" 1
# 315 "../../../BSW/CanIf/CanIf_Types.h"
typedef enum
{
  CANIF_CS_UNINIT = 0u,
  CANIF_CS_STOPPED,
  CANIF_CS_STARTED,
  CANIF_CS_SLEEP
} CanIf_ControllerModeType;


typedef enum
{
  CANIF_SET_OFFLINE = 0u,
  CANIF_SET_RX_OFFLINE,
  CANIF_SET_RX_ONLINE,
  CANIF_SET_TX_OFFLINE,
  CANIF_SET_TX_ONLINE,
  CANIF_SET_ONLINE,
  CANIF_SET_TX_OFFLINE_ACTIVE,




  CANIF_NO_MODE_PDU_SET_MODE_TYPE_END
} CanIf_PduSetModeType;


typedef enum
{
  CANIF_GET_OFFLINE = 0u,
  CANIF_GET_RX_ONLINE,
  CANIF_GET_TX_ONLINE,
  CANIF_GET_ONLINE,
  CANIF_GET_OFFLINE_ACTIVE,
  CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE,




  CANIF_NO_MODE_PDU_GET_MODE_TYPE_END
} CanIf_PduGetModeType;


typedef enum
{
  CANIF_RxBasicCANMailbox = 0u,
  CANIF_RxFullCANMailbox,
  CANIF_TxBasicCANMailbox,
  CANIF_TxFullCANMailbox,
  CANIF_UnusedCANMailbox
} CanIf_MailBoxTypeType;


typedef enum
{
  CanIf_SimpleRxIndicationLayout = 0u,
  CanIf_AdvancedRxIndicationLayout,
  CanIf_NmOsekRxIndicationLayout,
  CanIf_CddRxIndicationLayout
} CanIf_RxIndicationLayoutType;


typedef enum
{
  CANIF_NO_NOTIFICATION = 0u,
  CANIF_TX_RX_NOTIFICATION
} CanIf_NotifStatusType;

typedef enum
{
  CANIF_WAKEUPREQUEST_NONE = 0u,
  CANIF_WAKEUPREQUEST_CAN = 1u,
  CANIF_WAKEUPREQUEST_TRCV = 2u
} CanIf_WakeUpTargetType;

typedef enum
{
  CANIF_WUVALIDATION_IDLE = 0u,
  CANIF_WUVALIDATION_ARMED = 1u,
  CANIF_WUVALIDATION_DETECTED = 2u
} CanIf_WakeUpValidationStateType;

typedef enum
{
  CANIF_DO_TRANSMIT = 0u,
  CANIF_DO_NOT_TRANSMIT = 1u
} CanIf_TransmitStateType;

typedef enum
{
  CANIF_MSG_TYPE_CAN = 0u,
  CANIF_MSG_TYPE_FD_CAN,
  CANIF_MSG_TYPE_NO_FD_CAN
} CanIf_MsgType;

typedef enum
{
  CANIF_RMT_RECEIVE_STOP = 0u,
  CANIF_RMT_IGNORE_CONTINUE = 1u
} CanIf_ReceptionModeType;

typedef struct sCanIf_RxSearchParamsType
{
  Can_IdType eCanId;
  PduIdType eRxPduId;
  PduIdType eRxPduIdMatch;

  CanIf_MsgType eRxMsgType;

  Can_HwHandleType eHrh;
  boolean eContinueSearch;
} CanIf_RxSearchParamsType;



typedef void ( * CanIf_TxConfirmationFctType) (PduIdType CanTxPduId);





typedef void ( * CanIf_SimpleRxIndicationFctType) (PduIdType CanRxPduId, const uint8 * CanSduPtr);




typedef void ( * CanIf_AdvancedRxIndicationFctType) (PduIdType CanRxPduId, const PduInfoType * PduInfoPtr);



typedef void ( * CanIf_NmOsekRxIndicationFctType) (PduIdType CanRxPduId, const uint8 * CanSduPtr, Can_IdType CanId);



typedef void ( * CanIf_CddRxIndicationFctType) (PduIdType CanRxPduId, const PduInfoType * PduInfoPtr, Can_IdType CanId);



typedef void ( * CanIf_CtrlModeIndicationFctType) (uint8 ControllerId, CanIf_ControllerModeType ControllerMode);



typedef void ( * CanIf_BusOffNotificationFctType) (uint8 ControllerId);
# 619 "../../../BSW/CanIf/CanIf_Types.h"
typedef union
{
  CanIf_SimpleRxIndicationFctType eSimpleRxIndicationType;
  CanIf_AdvancedRxIndicationFctType eAdvancedRxIndicationType;
  CanIf_NmOsekRxIndicationFctType eNmOsekRxIndicationType;
  CanIf_CddRxIndicationFctType eCddRxIndicationType;
} CanIf_RxIndicationFctType;


typedef boolean CanIf_CancelResultType;

typedef struct sCanIf_TxQueueBaseType
{



  uint8 eSduLength;
} CanIf_TxQueueBaseType;


typedef struct sCanIf_TxQueueBaseWithDataType
{



  CanIf_TxQueueBaseType eBaseParams;
} CanIf_TxQueueBaseWithDataType;




typedef struct sCanIf_TxPrioByCanIdByteQueueType
{
  CanIf_TxQueueBaseWithDataType eQueueParams;
  uint8 eQueued;
} CanIf_TxPrioByCanIdByteQueueType;



typedef struct sCanIf_TxPrioByCanIdBitQueueType
{
  CanIf_TxQueueBaseWithDataType eQueueParams;
} CanIf_TxPrioByCanIdBitQueueType;


typedef struct sCanIf_TxBufferPrioByCanIdBaseType
{
  CanIf_TxBufferSizeType eQueueCounter;
} CanIf_TxBufferPrioByCanIdBaseType;




typedef struct sCanIf_TxFifoQueueBaseType
{
  CanIf_TxQueueBaseType eBaseParams;
  PduIdType eTxPduId;



} CanIf_TxFifoQueueBaseType;


typedef struct sCanIf_TxBufferFifoBaseType
{
  CanIf_TxBufferSizeType eWriteIdx;
  CanIf_TxBufferSizeType eReadIdx;
  CanIf_TxBufferSizeType eQueueCounter;
} CanIf_TxBufferFifoBaseType;
# 696 "../../../BSW/CanIf/CanIf_Types.h"
typedef void ( * CanIf_DataChecksumRxErrFctType) (PduIdType CanIfRxPduId);






typedef Can_ReturnType CanIf_CanDrvReturnType;
# 193 "GenData/CanIf_Cfg.h" 2
# 1138 "GenData/CanIf_Cfg.h"
typedef uint8_least CanIf_CanIfCtrlId2MappedTxBuffersConfigIterType;


typedef uint8_least CanIf_CtrlStatesIterType;


typedef uint8_least CanIf_MailBoxConfigIterType;


typedef uint8_least CanIf_MappedTxBuffersConfigIterType;


typedef uint8_least CanIf_RxIndicationFctListIterType;


typedef uint8_least CanIf_RxPduConfigIterType;


typedef uint8_least CanIf_TxBufferPrioByCanIdBaseIterType;


typedef uint8_least CanIf_TxBufferPrioByCanIdByteQueueConfigIterType;


typedef uint8_least CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusIterType;


typedef uint8_least CanIf_TxConfirmationFctListIterType;


typedef uint8_least CanIf_TxPduConfigIterType;


typedef uint8_least CanIf_TxPduQueueIndexIterType;


typedef uint8_least CanIf_TxQueueIterType;


typedef uint8_least CanIf_TxQueueDataIterType;


typedef uint8_least CanIf_TxQueueIndex2DataStartStopIterType;
# 1192 "GenData/CanIf_Cfg.h"
typedef uint8 CanIf_MappedTxBuffersConfigEndIdxOfCanIfCtrlId2MappedTxBuffersConfigType;


typedef uint8 CanIf_MappedTxBuffersConfigStartIdxOfCanIfCtrlId2MappedTxBuffersConfigType;


typedef uint16 CanIf_GeneratorCompatibilityVersionType;


typedef uint32 CanIf_GeneratorVersionType;


typedef uint8 CanIf_CtrlStatesIdxOfMailBoxConfigType;


typedef uint8 CanIf_PduIdFirstOfMailBoxConfigType;


typedef uint8 CanIf_PduIdLastOfMailBoxConfigType;


typedef uint8 CanIf_TxBufferCfgIdxOfMailBoxConfigType;


typedef uint8 CanIf_TxBufferCfgOfMailBoxConfigType;


typedef boolean CanIf_TxBufferCfgUsedOfMailBoxConfigType;


typedef uint8 CanIf_TxBufferHandlingTypeOfMailBoxConfigType;


typedef uint8 CanIf_MailBoxConfigIdxOfMappedTxBuffersConfigType;


typedef uint8 CanIf_RxIndicationFctListIdxOfRxPduConfigType;


typedef uint16 CanIf_RxPduCanIdOfRxPduConfigType;


typedef uint8 CanIf_RxPduDlcOfRxPduConfigType;


typedef uint16 CanIf_RxPduMaskOfRxPduConfigType;


typedef PduIdType CanIf_UpperPduIdOfRxPduConfigType;


typedef uint8 CanIf_SizeOfCanIfCtrlId2MappedTxBuffersConfigType;


typedef uint8 CanIf_SizeOfCtrlStatesType;


typedef uint8 CanIf_SizeOfMailBoxConfigType;


typedef uint8 CanIf_SizeOfMappedTxBuffersConfigType;


typedef uint8 CanIf_SizeOfRxIndicationFctListType;


typedef uint8 CanIf_SizeOfRxPduConfigType;


typedef uint8 CanIf_SizeOfTxBufferPrioByCanIdBaseType;


typedef uint8 CanIf_SizeOfTxBufferPrioByCanIdByteQueueConfigType;


typedef uint8 CanIf_SizeOfTxBufferPrioByCanIdByteQueueMappedTxPdusType;


typedef uint8 CanIf_SizeOfTxConfirmationFctListType;


typedef uint8 CanIf_SizeOfTxPduConfigType;


typedef uint8 CanIf_SizeOfTxPduQueueIndexType;


typedef uint8 CanIf_SizeOfTxQueueType;


typedef uint8 CanIf_SizeOfTxQueueDataType;


typedef uint8 CanIf_SizeOfTxQueueIndex2DataStartStopType;


typedef uint8 CanIf_TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfigType;


typedef uint8 CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusEndIdxOfTxBufferPrioByCanIdByteQueueConfigType;


typedef uint8 CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusLengthOfTxBufferPrioByCanIdByteQueueConfigType;


typedef uint8 CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusStartIdxOfTxBufferPrioByCanIdByteQueueConfigType;


typedef uint8 CanIf_TxPduConfigIdxOfTxBufferPrioByCanIdByteQueueMappedTxPdusType;


typedef uint16 CanIf_CanIdOfTxPduConfigType;


typedef uint8 CanIf_CtrlStatesIdxOfTxPduConfigType;


typedef boolean CanIf_IsTxPduTruncationOfTxPduConfigType;


typedef uint8 CanIf_MailBoxConfigIdxOfTxPduConfigType;


typedef uint8 CanIf_TxConfirmationFctListIdxOfTxPduConfigType;


typedef uint8 CanIf_TxPduLengthOfTxPduConfigType;


typedef PduIdType CanIf_UpperLayerTxPduIdOfTxPduConfigType;


typedef uint8 CanIf_TxQueueIdxOfTxPduQueueIndexType;


typedef uint8 CanIf_TxQueueIndex2DataStartStopIdxOfTxPduQueueIndexType;


typedef boolean CanIf_TxQueueIndex2DataStartStopUsedOfTxPduQueueIndexType;


typedef uint8 CanIf_TxQueueOfTxPduQueueIndexType;


typedef boolean CanIf_TxQueueUsedOfTxPduQueueIndexType;


typedef uint8 CanIf_TxQueueDataType;


typedef uint8 CanIf_TxQueueDataEndIdxOfTxQueueIndex2DataStartStopType;


typedef uint8 CanIf_TxQueueDataLengthOfTxQueueIndex2DataStartStopType;


typedef uint8 CanIf_TxQueueDataStartIdxOfTxQueueIndex2DataStartStopType;


typedef boolean CanIf_TxQueueDataUsedOfTxQueueIndex2DataStartStopType;
# 1371 "GenData/CanIf_Cfg.h"
typedef struct sCanIf_CanIfCtrlId2MappedTxBuffersConfigType
{
  CanIf_MappedTxBuffersConfigEndIdxOfCanIfCtrlId2MappedTxBuffersConfigType MappedTxBuffersConfigEndIdxOfCanIfCtrlId2MappedTxBuffersConfig;
  CanIf_MappedTxBuffersConfigStartIdxOfCanIfCtrlId2MappedTxBuffersConfigType MappedTxBuffersConfigStartIdxOfCanIfCtrlId2MappedTxBuffersConfig;
} CanIf_CanIfCtrlId2MappedTxBuffersConfigType;


typedef struct sCanIf_CtrlStatesType
{
  CanIf_ControllerModeType CtrlModeOfCtrlStates;
  CanIf_PduGetModeType PduModeOfCtrlStates;
  CanIf_NotifStatusType TxConfStateOfCtrlStates;
} CanIf_CtrlStatesType;






typedef struct sCanIf_MailBoxConfigType
{
  CanIf_CtrlStatesIdxOfMailBoxConfigType CtrlStatesIdxOfMailBoxConfig;
  CanIf_PduIdFirstOfMailBoxConfigType PduIdFirstOfMailBoxConfig;
  CanIf_PduIdLastOfMailBoxConfigType PduIdLastOfMailBoxConfig;
  CanIf_TxBufferCfgOfMailBoxConfigType TxBufferCfgOfMailBoxConfig;
  CanIf_TxBufferCfgIdxOfMailBoxConfigType TxBufferCfgIdxOfMailBoxConfig;
  CanIf_TxBufferHandlingTypeOfMailBoxConfigType TxBufferHandlingTypeOfMailBoxConfig;
  CanIf_MailBoxTypeType MailBoxTypeOfMailBoxConfig;
} CanIf_MailBoxConfigType;





typedef struct sCanIf_MappedTxBuffersConfigType
{
  CanIf_MailBoxConfigIdxOfMappedTxBuffersConfigType MailBoxConfigIdxOfMappedTxBuffersConfig;
} CanIf_MappedTxBuffersConfigType;


typedef struct sCanIf_RxIndicationFctListType
{
  CanIf_RxIndicationFctType RxIndicationFctOfRxIndicationFctList;
  CanIf_RxIndicationLayoutType RxIndicationLayoutOfRxIndicationFctList;
} CanIf_RxIndicationFctListType;





typedef struct sCanIf_RxPduConfigType
{
  CanIf_RxPduCanIdOfRxPduConfigType RxPduCanIdOfRxPduConfig;
  CanIf_RxPduMaskOfRxPduConfigType RxPduMaskOfRxPduConfig;
  CanIf_UpperPduIdOfRxPduConfigType UpperPduIdOfRxPduConfig;
  CanIf_RxIndicationFctListIdxOfRxPduConfigType RxIndicationFctListIdxOfRxPduConfig;
  CanIf_RxPduDlcOfRxPduConfigType RxPduDlcOfRxPduConfig;
  CanIf_MsgType MsgTypeOfRxPduConfig;
} CanIf_RxPduConfigType;







typedef struct sCanIf_TxBufferPrioByCanIdByteQueueConfigType
{
  CanIf_TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfigType TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfig;
  CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusEndIdxOfTxBufferPrioByCanIdByteQueueConfigType TxBufferPrioByCanIdByteQueueMappedTxPdusEndIdxOfTxBufferPrioByCanIdByteQueueConfig;
  CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusLengthOfTxBufferPrioByCanIdByteQueueConfigType TxBufferPrioByCanIdByteQueueMappedTxPdusLengthOfTxBufferPrioByCanIdByteQueueConfig;
  CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusStartIdxOfTxBufferPrioByCanIdByteQueueConfigType TxBufferPrioByCanIdByteQueueMappedTxPdusStartIdxOfTxBufferPrioByCanIdByteQueueConfig;
} CanIf_TxBufferPrioByCanIdByteQueueConfigType;





typedef struct sCanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType
{
  CanIf_TxPduConfigIdxOfTxBufferPrioByCanIdByteQueueMappedTxPdusType TxPduConfigIdxOfTxBufferPrioByCanIdByteQueueMappedTxPdus;
} CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType;







typedef struct sCanIf_TxPduConfigType
{
  CanIf_CanIdOfTxPduConfigType CanIdOfTxPduConfig;
  CanIf_UpperLayerTxPduIdOfTxPduConfigType UpperLayerTxPduIdOfTxPduConfig;
  CanIf_IsTxPduTruncationOfTxPduConfigType IsTxPduTruncationOfTxPduConfig;
  CanIf_CtrlStatesIdxOfTxPduConfigType CtrlStatesIdxOfTxPduConfig;
  CanIf_MailBoxConfigIdxOfTxPduConfigType MailBoxConfigIdxOfTxPduConfig;
  CanIf_TxConfirmationFctListIdxOfTxPduConfigType TxConfirmationFctListIdxOfTxPduConfig;
  CanIf_TxPduLengthOfTxPduConfigType TxPduLengthOfTxPduConfig;
} CanIf_TxPduConfigType;






typedef struct sCanIf_TxPduQueueIndexType
{
  CanIf_TxQueueOfTxPduQueueIndexType TxQueueOfTxPduQueueIndex;
  CanIf_TxQueueIdxOfTxPduQueueIndexType TxQueueIdxOfTxPduQueueIndex;
  CanIf_TxQueueIndex2DataStartStopIdxOfTxPduQueueIndexType TxQueueIndex2DataStartStopIdxOfTxPduQueueIndex;
} CanIf_TxPduQueueIndexType;






typedef struct sCanIf_TxQueueIndex2DataStartStopType
{
  CanIf_TxQueueDataEndIdxOfTxQueueIndex2DataStartStopType TxQueueDataEndIdxOfTxQueueIndex2DataStartStop;
  CanIf_TxQueueDataLengthOfTxQueueIndex2DataStartStopType TxQueueDataLengthOfTxQueueIndex2DataStartStop;
  CanIf_TxQueueDataStartIdxOfTxQueueIndex2DataStartStopType TxQueueDataStartIdxOfTxQueueIndex2DataStartStop;
} CanIf_TxQueueIndex2DataStartStopType;
# 1505 "GenData/CanIf_Cfg.h"
typedef struct CanIf_CtrlStatesStructSTag
{
  CanIf_CtrlStatesType CT_DemoFBL_Ford_CANFD_b8e23c38;
} CanIf_CtrlStatesStructSType;


typedef struct CanIf_TxBufferPrioByCanIdBaseStructSTag
{
  CanIf_TxBufferPrioByCanIdBaseType CHNL_b66b048e;
} CanIf_TxBufferPrioByCanIdBaseStructSType;


typedef struct CanIf_TxQueueStructSTag
{
  CanIf_TxPrioByCanIdByteQueueType Diag_Demo_Response_Message_Tp_oDemoFBL_Ford_CANFD_c05af67e_Tx;
  CanIf_TxPrioByCanIdByteQueueType Diag_Demo_Response_Message_Tp_oDemoFBL_Ford_CANFD_20_eb76a012_Tx;
} CanIf_TxQueueStructSType;


typedef struct CanIf_TxQueueDataStructSTag
{
  CanIf_TxQueueDataType Diag_Demo_Response_Message_Tp_oDemoFBL_Ford_CANFD_c05af67e_Tx[64];
  CanIf_TxQueueDataType Diag_Demo_Response_Message_Tp_oDemoFBL_Ford_CANFD_20_eb76a012_Tx[8];
} CanIf_TxQueueDataStructSType;
# 1540 "GenData/CanIf_Cfg.h"
typedef union CanIf_CtrlStatesUTag
{
  CanIf_CtrlStatesType raw[1];
  CanIf_CtrlStatesStructSType str;
} CanIf_CtrlStatesUType;


typedef union CanIf_TxBufferPrioByCanIdBaseUTag
{
  CanIf_TxBufferPrioByCanIdBaseType raw[1];
  CanIf_TxBufferPrioByCanIdBaseStructSType str;
} CanIf_TxBufferPrioByCanIdBaseUType;


typedef union CanIf_TxQueueUTag
{
  CanIf_TxPrioByCanIdByteQueueType raw[2];
  CanIf_TxQueueStructSType str;
} CanIf_TxQueueUType;


typedef union CanIf_TxQueueDataUTag
{
  CanIf_TxQueueDataType raw[72];
  CanIf_TxQueueDataStructSType str;
} CanIf_TxQueueDataUType;
# 1577 "GenData/CanIf_Cfg.h"
typedef const CanIf_BusOffNotificationFctType * CanIf_BusOffNotificationFctPtrPtrType;


typedef const CanIf_CanIfCtrlId2MappedTxBuffersConfigType * CanIf_CanIfCtrlId2MappedTxBuffersConfigPtrType;


typedef const CanIf_CtrlModeIndicationFctType * CanIf_CtrlModeIndicationFctPtrPtrType;


typedef CanIf_CtrlStatesType * CanIf_CtrlStatesPtrType;


typedef const CanIf_MailBoxConfigType * CanIf_MailBoxConfigPtrType;


typedef const CanIf_MappedTxBuffersConfigType * CanIf_MappedTxBuffersConfigPtrType;


typedef const CanIf_RxIndicationFctListType * CanIf_RxIndicationFctListPtrType;


typedef const CanIf_RxPduConfigType * CanIf_RxPduConfigPtrType;


typedef CanIf_TxBufferPrioByCanIdBaseType * CanIf_TxBufferPrioByCanIdBasePtrType;


typedef const CanIf_TxBufferPrioByCanIdByteQueueConfigType * CanIf_TxBufferPrioByCanIdByteQueueConfigPtrType;


typedef const CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType * CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusPtrType;


typedef const CanIf_TxConfirmationFctType * CanIf_TxConfirmationFctListPtrType;


typedef const CanIf_TxPduConfigType * CanIf_TxPduConfigPtrType;


typedef const CanIf_TxPduQueueIndexType * CanIf_TxPduQueueIndexPtrType;


typedef CanIf_TxPrioByCanIdByteQueueType * CanIf_TxQueuePtrType;


typedef CanIf_TxQueueDataType * CanIf_TxQueueDataPtrType;


typedef const CanIf_TxQueueIndex2DataStartStopType * CanIf_TxQueueIndex2DataStartStopPtrType;
# 1637 "GenData/CanIf_Cfg.h"
typedef struct sCanIf_PCConfigType
{
  uint8 CanIf_PCConfigNeverUsed;
} CanIf_PCConfigType;

typedef CanIf_PCConfigType CanIf_ConfigType;
# 1671 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1672 "GenData/CanIf_Cfg.h" 2

extern const CanIf_BusOffNotificationFctType CanIf_BusOffNotificationFctPtr;


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1677 "GenData/CanIf_Cfg.h" 2
# 1692 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1693 "GenData/CanIf_Cfg.h" 2

extern const CanIf_CanIfCtrlId2MappedTxBuffersConfigType CanIf_CanIfCtrlId2MappedTxBuffersConfig[1];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1698 "GenData/CanIf_Cfg.h" 2







# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1706 "GenData/CanIf_Cfg.h" 2

extern const CanIf_CtrlModeIndicationFctType CanIf_CtrlModeIndicationFctPtr;


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1711 "GenData/CanIf_Cfg.h" 2
# 1731 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1732 "GenData/CanIf_Cfg.h" 2

extern const CanIf_MailBoxConfigType CanIf_MailBoxConfig[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1737 "GenData/CanIf_Cfg.h" 2
# 1751 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1752 "GenData/CanIf_Cfg.h" 2

extern const CanIf_MappedTxBuffersConfigType CanIf_MappedTxBuffersConfig[1];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1757 "GenData/CanIf_Cfg.h" 2
# 1772 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1773 "GenData/CanIf_Cfg.h" 2

extern const CanIf_RxIndicationFctListType CanIf_RxIndicationFctList[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1778 "GenData/CanIf_Cfg.h" 2
# 1797 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1798 "GenData/CanIf_Cfg.h" 2

extern const CanIf_RxPduConfigType CanIf_RxPduConfig[4];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1803 "GenData/CanIf_Cfg.h" 2
# 1820 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1821 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxBufferPrioByCanIdByteQueueConfigType CanIf_TxBufferPrioByCanIdByteQueueConfig[1];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1826 "GenData/CanIf_Cfg.h" 2
# 1840 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1841 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdus[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1846 "GenData/CanIf_Cfg.h" 2
# 1857 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1858 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxConfirmationFctType CanIf_TxConfirmationFctList[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1863 "GenData/CanIf_Cfg.h" 2
# 1883 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1884 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxPduConfigType CanIf_TxPduConfig[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1889 "GenData/CanIf_Cfg.h" 2
# 1905 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1906 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxPduQueueIndexType CanIf_TxPduQueueIndex[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1911 "GenData/CanIf_Cfg.h" 2
# 1926 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1927 "GenData/CanIf_Cfg.h" 2

extern const CanIf_TxQueueIndex2DataStartStopType CanIf_TxQueueIndex2DataStartStop[2];


# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1932 "GenData/CanIf_Cfg.h" 2
# 1947 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 1948 "GenData/CanIf_Cfg.h" 2

extern CanIf_CtrlStatesUType CanIf_CtrlStates;


# 1 "GenData/CanIf_MemMap.h" 1
# 1953 "GenData/CanIf_Cfg.h" 2
# 1964 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 1965 "GenData/CanIf_Cfg.h" 2

extern CanIf_TxBufferPrioByCanIdBaseUType CanIf_TxBufferPrioByCanIdBase;


# 1 "GenData/CanIf_MemMap.h" 1
# 1970 "GenData/CanIf_Cfg.h" 2
# 1981 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 1982 "GenData/CanIf_Cfg.h" 2

extern CanIf_TxQueueUType CanIf_TxQueue;


# 1 "GenData/CanIf_MemMap.h" 1
# 1987 "GenData/CanIf_Cfg.h" 2
# 1998 "GenData/CanIf_Cfg.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 1999 "GenData/CanIf_Cfg.h" 2

extern CanIf_TxQueueDataUType CanIf_TxQueueData;


# 1 "GenData/CanIf_MemMap.h" 1
# 2004 "GenData/CanIf_Cfg.h" 2
# 219 "../../../BSW/CanIf/CanIf.h" 2
# 283 "../../../BSW/CanIf/CanIf.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 284 "../../../BSW/CanIf/CanIf.h" 2
# 298 "../../../BSW/CanIf/CanIf.h"
void CanIf_InitMemory(void);
# 316 "../../../BSW/CanIf/CanIf.h"
void CanIf_Init(const CanIf_ConfigType * ConfigPtr);
# 335 "../../../BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_SetControllerMode(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
# 356 "../../../BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_GetControllerMode(uint8 ControllerId, CanIf_ControllerModeType * ControllerModePtr);
# 375 "../../../BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType * PduInfoPtr);
# 396 "../../../BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_SetPduMode(uint8 ControllerId, CanIf_PduSetModeType PduModeRequest);
# 416 "../../../BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_GetPduMode(uint8 ControllerId, CanIf_PduGetModeType * PduModePtr);
# 731 "../../../BSW/CanIf/CanIf.h"
CanIf_NotifStatusType CanIf_GetTxConfirmationState(uint8 ControllerId);
# 1089 "../../../BSW/CanIf/CanIf.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 1090 "../../../BSW/CanIf/CanIf.h" 2






# 1 "GenData/CanIf_MemMap.h" 1
# 163 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1097 "../../../BSW/CanIf/CanIf.h" 2

extern const uint8 CanIf_MainVersion;
extern const uint8 CanIf_SubVersion;
extern const uint8 CanIf_ReleaseVersion;


# 1 "GenData/CanIf_MemMap.h" 1
# 179 "GenData/CanIf_MemMap.h"
#pragma section
# 1104 "../../../BSW/CanIf/CanIf.h" 2
# 42 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2







# 1 "Include/SchM_CanTp.h" 1
# 54 "Include/SchM_CanTp.h"
# 1 "Include/Os.h" 1
# 44 "Include/Os.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 45 "Include/Os.h" 2
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
# 55 "Include/SchM_CanTp.h" 2
# 63 "Include/SchM_CanTp.h"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 64 "Include/SchM_CanTp.h" 2

void CanTp_MainFunction(void);


# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 69 "Include/SchM_CanTp.h" 2
# 50 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2



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
# 54 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
# 62 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Priv.h" 1
# 635 "../../../../CBD2300515_D00/BSW/CanTp/CanTp_Priv.h"
typedef uint8 CanTp_CanType;


typedef uint8 CanTp_TxResultType;





typedef uint8 CanTp_ResetControlType;




typedef struct sCanTp_PduTxInfoType
{
  CanTp_DirectionType SduDirection;
  PduIdType SduHdl;
  PduIdType TxPduId;
  PduIdType TxConfPduId;

  uint8 PaddingLength;





} CanTp_PduTxInfoType;
# 63 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
# 250 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "Include/MemMap.h" 1
# 251 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
static CanTp_InitStatusType CanTp_InitState = (0x00u);

# 1 "Include/MemMap.h" 1
# 254 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
# 286 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 287 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
# 302 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_MainFunctionRx(void);
# 316 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_MainFunctionTx(void);
# 332 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxInitState(CanTp_RxStatePtrType pTpRxState);
# 345 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_TxInitState(CanTp_TxStatePtrType pTpTxState);
# 363 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxInit(CanTp_RxStatePtrType pTpRxState, CanTp_NotificationType NotifyCode, uint8 DetError, CanTp_ResetControlType ResetRequest);
# 381 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxInit(CanTp_TxStatePtrType pTpTxState, CanTp_NotificationType NotifyCode, uint8 DetError);
# 394 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_ResetChannels(void);
# 413 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationSF(CanTp_RxStatePtrType pTpRxState, const PduInfoType * pPdu);
# 428 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationFF(CanTp_RxStatePtrType pTpRxState, const PduInfoType * pPdu);
# 443 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationCF(CanTp_RxStatePtrType pTpRxState, const PduInfoType * pPdu);
# 459 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationFC(CanTp_TxStatePtrType pTpTxState, const PduInfoType * pPdu);
# 478 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfRxIndication(PduIdType SduHdl,
                                                           uint8 FrameType,
                                                           const PduInfoType * pPayloadInfo,
                                                           const PduInfoType * pMetadataInfo);
# 496 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfTxConfirmation(CanTp_TxStatePtrType pTpTxState);
# 512 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfTxConfirmationFC(CanTp_RxStatePtrType pTpRxState);
# 536 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static CanTp_TxResultType CanTp_CanIfTransmitFrame(const CanTp_PduTxInfoType * pPduTxData,
                                                                          PduInfoType * pTpData);
# 563 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ Std_ReturnType CanTp_TxStartConnection(PduIdType TxSduSnv,
                                                                            PduIdType TxHdl,
                                                                            PduLengthType SduLength,
                                                                            const PduInfoType * CanTpTxInfoPtr);
# 581 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_TxGetStminTimerFromStminValue(uint8 STminValue);
# 596 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxGetBuffer(CanTp_TxStatePtrType pTpTxState);
# 612 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxTransmitFrame(CanTp_TxStatePtrType pTpTxState);
# 676 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduLengthType CanTp_RxGetBytesPerBlock(CanTp_RxStatePtrType pTpRxState);
# 691 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferSF(CanTp_RxStatePtrType pTpRxState);
# 705 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferFF(CanTp_RxStatePtrType pTpRxState);
# 720 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferCF(CanTp_RxStatePtrType pTpRxState);
# 734 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferFCWait(CanTp_RxStatePtrType pTpRxState);
# 748 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxGetBuffer(CanTp_RxStatePtrType pTpRxState);
# 762 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxTransmitFrame(CanTp_RxStatePtrType pTpRxState);
# 779 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_Util_MemCpy(uint8 * pDest, const uint8 * pSrc, uint16 Count);
# 815 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ boolean CanTp_Util_AssertLessEqual(uint32 CurrentValue, uint32 UpperLimit);
# 830 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ boolean CanTp_Util_CheckConfigValidity(void);
# 849 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_Util_GetPaddingLength(uint8 CurrentLength, boolean PaddingActivation, CanTp_CanType CanType);
# 867 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduLengthType CanTp_Util_GetMinFittingCanDl(uint8 ByteCount, boolean HasPadding);
# 886 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_FrameType CanTp_Util_GetFrameType(uint8 Addressing, const PduInfoType * pPayloadInfo);
# 901 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_Util_GetAdrOffset(uint8 Addressing);
# 1114 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static Std_ReturnType CanTp_RxCheckChannelMode(PduIdType RxHdl);
# 1132 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static Std_ReturnType CanTp_TxCheckChannelMode(PduIdType TxHdl);
# 1154 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduIdType CanTp_Cfg_GetSduHdlByRxPduOnly (PduIdType RxPduId, uint8 FrameType);
# 1223 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_RxStatePtrType CanTp_RxGetFreeChannelPtr(PduIdType RxHdl,
                                                                             const PduInfoType * pPayloadInfo,
                                                                             const PduInfoType * pMetadataInfo);
# 1241 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_RxStatePtrType CanTp_RxGetActiveChannelPtr(PduIdType RxHdl);
# 1262 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_TxStatePtrType CanTp_TxGetFreeChannelPtr(PduIdType TxHdl,
                                                                             const PduInfoType * CanTpTxInfoPtr);
# 1279 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_TxStatePtrType CanTp_TxGetActiveChannelPtr(PduIdType TxHdl);
# 1334 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_Util_MemCpy(uint8 * pDest,
                                                            const uint8 * pSrc,
                                                            uint16 Count)
{
  uint16_least i;


  for (i = 0; i < Count; i++)
  {
    pDest[i] = pSrc[i];
  }
}
# 1389 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ boolean CanTp_Util_AssertLessEqual (uint32 CurrentValue, uint32 UpperLimit)
{
  boolean lResult;

  if (CurrentValue <= UpperLimit)
  {
    lResult = 1u;
  }
  else
  {
    lResult = 0u;
    ((void)Det_ReportError((0x23u), (0x00u), ((0x01u)), ((0x01u)) ));
  }
  return lResult;
}
# 1431 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ boolean CanTp_Util_CheckConfigValidity(void)
{
  boolean lResult = 1u;


  boolean lTmp;
  PduIdType lSduId;
  PduIdType lSduHdl;







  for (lSduId = 0; lSduId < ((PduIdType)(4u)); lSduId++)
  {
    if ((((1u)) != 0u))
    {
      lSduHdl = (PduIdType)(CanTp_RxSduSnv2Hdl[((lSduId))].RxSduCfgIdxOfRxSduSnv2Hdl);

      lTmp = CanTp_Util_AssertLessEqual(((uint8)((CanTp_RxSduCfg[((lSduHdl))].RxMaxPayloadLengthOfRxSduCfg))), 63u);
      if (lTmp == 0u)
      {
        lResult = 0u;
      }


      if ((((CanTp_RxSduCfg[((lSduHdl))].RxTaTypeOfRxSduCfg))) == 0u)
      {
        lTmp = CanTp_Util_AssertLessEqual(((PduIdType)((CanTp_RxSduCfg[((lSduHdl))].TxFcPduConfirmationPduIdOfRxSduCfg))), (((PduIdType)(2u)) - (uint32)1));
        if (lTmp == 0u)
        {
          lResult = 0u;
        }
      }
# 1481 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    }

  }




  for (lSduId = 0; lSduId < ((PduIdType)(2u)); lSduId++)
  {
    if ((((1u)) != 0u))
    {
      lSduHdl = (PduIdType)(CanTp_TxSduSnv2Hdl[((lSduId))].TxSduCfgIdxOfTxSduSnv2Hdl);

      lTmp = CanTp_Util_AssertLessEqual(((uint8)((CanTp_TxSduCfg[((lSduHdl))].TxMaxPayloadLengthOfTxSduCfg))), 63u);
      if (lTmp == 0u)
      {
        lResult = 0u;
      }


      lTmp = CanTp_Util_AssertLessEqual(((PduIdType)((CanTp_TxSduCfg[((lSduHdl))].TxPduConfirmationPduIdOfTxSduCfg))), (((PduIdType)(2u)) - (uint32)1));
      if (lTmp == 0u)
      {
        lResult = 0u;
      }


      switch (((0x00u)))
      {


        case 0u:







          lTmp = CanTp_Util_AssertLessEqual((((uint8)((CanTp_TxSduCfg[((lSduHdl))].TxMaxPayloadLengthOfTxSduCfg))) + (uint32)1), 64u);
          if (lTmp == 0u)
          {
            lResult = 0u;
          }
          break;
# 1546 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      default:
        break;
      }
# 1562 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    }

  }





  lTmp = CanTp_Util_AssertLessEqual(4u, 4u);
  if (lTmp == 0u)
  {
    lResult = 0u;
  }


  lTmp = CanTp_Util_AssertLessEqual(4u, 4u);
  if (lTmp == 0u)
  {
    lResult = 0u;
  }
# 1590 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  lTmp = CanTp_Util_AssertLessEqual(4u, 4u);
  if (lTmp == 0u)
  {
    lResult = 0u;
  }
# 1605 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  lTmp = CanTp_Util_AssertLessEqual(2u, 2u);
  if (lTmp == 0u)
  {
    lResult = 0u;
  }
# 1651 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  return lResult;
}
# 1679 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_Util_GetPaddingLength(uint8 CurrentLength, boolean PaddingActivation, CanTp_CanType CanType)
{
  uint8 lPaddedLength;


  lPaddedLength = 0;

  if (CurrentLength <= 8u)
  {

    if (PaddingActivation == 0u)
    {

      lPaddedLength = CurrentLength;
    }
    else
    {

      lPaddedLength = 8u;
    }
  }

  else
  {

    if (CanType == 1u)
    {
# 1720 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      if (CurrentLength <= 24u)
      {

        lPaddedLength = (uint8)(((uint8)(CurrentLength - 1u) & 0xFCu) + 0x04u);
      }
      else if (CurrentLength <= 64u)
      {

        lPaddedLength = (uint8)(((uint8)(CurrentLength - 1u) & 0xF0u) + 0x10u);
      }
      else
      {

      }
    }

  }




  return lPaddedLength;
}
# 1770 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduLengthType CanTp_Util_GetMinFittingCanDl(uint8 ByteCount, boolean HasPadding)
{
  PduLengthType lMinFittingCanDl;

  if (ByteCount <= 0u) { lMinFittingCanDl = 0u; }
  else if (ByteCount <= 8u) { lMinFittingCanDl = (HasPadding == 1u) ? 8u : ByteCount; }
  else if (ByteCount <= 12u) { lMinFittingCanDl = 12u; }
  else if (ByteCount <= 16u) { lMinFittingCanDl = 16u; }
  else if (ByteCount <= 20u) { lMinFittingCanDl = 20u; }
  else if (ByteCount <= 24u) { lMinFittingCanDl = 24u; }
  else if (ByteCount <= 32u) { lMinFittingCanDl = 32u; }
  else if (ByteCount <= 48u) { lMinFittingCanDl = 48u; }
  else if (ByteCount <= 64u) { lMinFittingCanDl = 64u; }
  else { lMinFittingCanDl = 0u; }

  return lMinFittingCanDl;
}
# 1803 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_FrameType CanTp_Util_GetFrameType(uint8 Addressing, const PduInfoType * pPayloadInfo)
{
  CanTp_FrameType lFrameType;

  switch (Addressing)
  {



    case 0u:







      lFrameType = (pPayloadInfo->SduDataPtr[0] & (0xF0u)) >> 4;
      break;
# 1838 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    default:
      lFrameType = (0x04u);
      break;
  }

  if (lFrameType > (0x03u))
  {
    lFrameType = (0x04u);
  }

  return lFrameType;
}
# 1861 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_Util_GetAdrOffset(uint8 Addressing)
{
  uint8 offset = 0u;

  switch (Addressing)
  {



  case 0u:







    offset = 0u;
    break;
# 1896 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  default:
    break;
  }

  return offset;
}
# 2474 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ uint8 CanTp_TxGetStminTimerFromStminValue(uint8 STminValue)
{
  uint8 lTaskCycles = 0;
  uint8 lSTminTemp = STminValue;

  if (STminValue > (0x7Fu))
  {

    if ((STminValue >= (0xF1u)) && (STminValue <= (0xF9u)))
    {
      lTaskCycles = 1;
      lSTminTemp = 0;
    }
    else
    {

      lSTminTemp = (0x7Fu);



    }
  }



  if (lSTminTemp != 0u)
  {
    lTaskCycles = (uint8)(((lSTminTemp + (((5u)) - 1u)) / ((5u))) + 1u);
  }

  return lTaskCycles;
}
# 2528 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationSF(CanTp_RxStatePtrType pTpRxState,
                                                                    const PduInfoType * pPdu)
{
  uint8 lAddressingOffset;
  uint8 lPayloadOffset;
  uint8 lMinPayloadLength;
  uint8 lMaxPayloadLength;
  uint8 lReceivedDataLength;

  lAddressingOffset = CanTp_Util_GetAdrOffset(((0x00u)));



  lReceivedDataLength = pPdu->SduDataPtr[lAddressingOffset] & (0x0Fu);


  lPayloadOffset = (uint8)(lAddressingOffset + 1u);
  lMinPayloadLength = 1;
  lMaxPayloadLength = ((uint8)(8u - (CanTp_Util_GetAdrOffset(((0x00u))) + 1u)));





  if (pPdu->SduLength > 8u)
  {
    if (lReceivedDataLength == 0u)
    {

      lReceivedDataLength = pPdu->SduDataPtr[lAddressingOffset + 1u];
      lPayloadOffset = (uint8)(lAddressingOffset + 2u);
      lMinPayloadLength = (uint8)(((uint8)(8u - (CanTp_Util_GetAdrOffset(((0x00u))) + 1u))) + 1u);
      lMaxPayloadLength = (uint8)((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg))) - 1u));
    }
    else
    {


      lMaxPayloadLength = 0u;
    }
  }




  if ( (lReceivedDataLength >= lMinPayloadLength) &&
       (lReceivedDataLength <= lMaxPayloadLength) &&
       (pPdu->SduLength == CanTp_Util_GetMinFittingCanDl(lPayloadOffset + lReceivedDataLength, 1u)) )
  {


    if (pTpRxState->ChannelState != (0x00u))
    {

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC6u), (CanTp_ResetControlType)(0x00u));
    }


    pTpRxState->FrameType = (0x00u);
    pTpRxState->DataLength = lReceivedDataLength;
    pTpRxState->PayloadLength = (uint8)pTpRxState->DataLength;
    CanTp_Util_MemCpy((uint8 * )(&pTpRxState->Payload[0]),
                      (uint8 * )(&pPdu->SduDataPtr[lPayloadOffset]),
                      (pTpRxState->PayloadLength));

   

    pTpRxState->ProvidedBufferSize = 0;
# 2611 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    {
      pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpStartOfReception( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), ((void *)0), (pTpRxState->DataLength), (&(pTpRxState->ProvidedBufferSize)) ))


                                                                                             ;
    }


    switch(pTpRxState->BufferState)
    {

      case (CanTp_BufferStateType)BUFREQ_OK:
      case (CanTp_BufferStateType)BUFREQ_E_BUSY:

        pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NBrOfRxSduCfg)));
        pTpRxState->ChannelState = (0x41u);



        pTpRxState->ApplState = (uint8)(0x01u);

        (CanTp_RxGetBuffer( (pTpRxState) ));
        break;

      case (CanTp_BufferStateType)BUFREQ_E_NOT_OK:
      case (CanTp_BufferStateType)BUFREQ_E_OVFL:
      default:

        CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
        break;
    }
  }
  else
  {

    ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), ((0x80u)) ));
    if (pTpRxState->ChannelState == (0x00u))
    {

      CanTp_RxInit(pTpRxState, (Std_ReturnType)(0x80u), (0xFFu), (CanTp_ResetControlType)(0x01u));
    }

  }
}
# 2679 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationFF(CanTp_RxStatePtrType pTpRxState,
                                                                    const PduInfoType * pPdu)
{
  uint8 lAddressingOffset;
  uint8 lPayloadOffset;
  uint8 lMaxPayloadLen;
  uint16 lDataLengthLowerLimit;
  PduLengthType lReceivedDataLength;

  lAddressingOffset = CanTp_Util_GetAdrOffset(((0x00u)));



  if (1u == (((CanTp_RxSduCfg[((pTpRxState->RxHdl))].RxTaTypeOfRxSduCfg))))
  {

    CanTp_RxInit(pTpRxState, (Std_ReturnType)(0x80u), (0x90u), (CanTp_ResetControlType)(0x01u));
  }

  else

  {

    lReceivedDataLength = ((uint16)((((uint16)((uint8)(pPdu->SduDataPtr[lAddressingOffset] & (0x0Fu)))) << 8) | ((uint16)((uint8)(pPdu->SduDataPtr[lAddressingOffset + 1u])))))
                                                                                                   ;



    if (lReceivedDataLength == 0u)
    {


      if ((pPdu->SduDataPtr[lAddressingOffset + 2u] == 0u) &&
          (pPdu->SduDataPtr[lAddressingOffset + 3u] == 0u))
      {
        lReceivedDataLength = (PduLengthType)((uint16)((((uint16)((uint8)(pPdu->SduDataPtr[lAddressingOffset + 4u]))) << 8) | ((uint16)((uint8)(pPdu->SduDataPtr[lAddressingOffset + 5u])))))
                                                                                                                    ;
      }
      else
      {

        lReceivedDataLength = 0;
      }
# 2730 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      lDataLengthLowerLimit = 4095u;
      lMaxPayloadLen = ((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg))) - 5u));
      lPayloadOffset = (uint8) (lAddressingOffset + 6u);
    }
    else

    {

      lDataLengthLowerLimit = (uint16)((((pPdu->SduLength) > (PduLengthType)8u) ? ((pPdu->SduLength) - (CanTp_Util_GetAdrOffset(((0x00u))) + (PduLengthType)2u)) : (((uint8)(8u - (CanTp_Util_GetAdrOffset(((0x00u))) + 1u))))));
      lMaxPayloadLen = ((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg))) - 1u));
      lPayloadOffset = (uint8) (lAddressingOffset + 2u);
    }


    if ((lReceivedDataLength > lDataLengthLowerLimit) &&
        (pPdu->SduLength <= ((PduLengthType)lPayloadOffset + lMaxPayloadLen)) &&
        (pPdu->SduLength >= 8u))
    {


      if (pTpRxState->ChannelState != (0x00u))
      {

        CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC6u), (CanTp_ResetControlType)(0x00u));
      }


      pTpRxState->DataLength = lReceivedDataLength;
      pTpRxState->FrameType = (0x01u);
      pTpRxState->ExpectedSN = (0x01u);
      pTpRxState->DataIndex = 0;
      pTpRxState->WFTCounter = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].RxWftMaxOfRxSduCfg)));


      pTpRxState->PayloadLength = (uint8)(pPdu->SduLength - lPayloadOffset);
      pTpRxState->InitalDLC = (uint8)pPdu->SduLength;
      CanTp_Util_MemCpy((uint8 * ) (&pTpRxState->Payload[0]),
                        (uint8 * ) (&pPdu->SduDataPtr[lPayloadOffset]),
                        (pTpRxState->PayloadLength) );

     


      pTpRxState->ProvidedBufferSize = 0;
# 2789 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      {
        pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpStartOfReception( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), ((void *)0), (pTpRxState->DataLength), (&(pTpRxState->ProvidedBufferSize)) ))


                                                                                               ;
      }


      switch(pTpRxState->BufferState)
      {
        case (CanTp_BufferStateType)BUFREQ_OK:

          pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NBrOfRxSduCfg)));
          pTpRxState->ChannelState = (0x42u);



          pTpRxState->ApplState = (uint8)(0x01u);



          (CanTp_CalcBS[((pTpRxState->RxHdl))]) = 0;

          (CanTp_RxGetBuffer( (pTpRxState) ));
          break;

        case (CanTp_BufferStateType)BUFREQ_E_BUSY:

          pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
          pTpRxState->ChannelState = (0x12u);


          pTpRxState->ApplState = (uint8)(0x01u);

          (CanTp_RxTransmitFrame( (pTpRxState) ));
          break;

        case (CanTp_BufferStateType)BUFREQ_E_OVFL:

          pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
          pTpRxState->ChannelState = (0x13u);
          (CanTp_RxTransmitFrame( (pTpRxState) ));
          break;

        case (CanTp_BufferStateType)BUFREQ_E_NOT_OK:
        default:

          CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
          break;
      }
    }


    else
    {
      ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), ((0x80u)) ));
      if (pTpRxState->ChannelState == (0x00u))
      {

        CanTp_RxInit(pTpRxState, (Std_ReturnType)(0x80u), (0xFFu), (CanTp_ResetControlType)(0x01u));
      }

    }
  }
}
# 2875 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationCF(CanTp_RxStatePtrType pTpRxState,
                                                                    const PduInfoType * pPdu)
{

  uint8 lAddressingOffset;
  uint8 lPayloadOffset;
  uint8 lSNinFrame;

  lAddressingOffset = CanTp_Util_GetAdrOffset(((0x00u)));


  if (pTpRxState->ChannelState == (0x21u))
  {




    (CanTp_TxSemaphores[((((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].TxFcPduConfirmationPduIdOfRxSduCfg)))))]).Handle = ((PduIdType) 255u);
    (CanTp_TxSemaphores[((((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].TxFcPduConfirmationPduIdOfRxSduCfg)))))]).Direction = (CanTp_DirectionType)(0x01u);
    ;

    CanTp_CanIfTxConfirmationFC(pTpRxState);
  }


  if (pTpRxState->ChannelState == (0x01u))
  {
    uint8 lErrorId = (0x80u);

    pTpRxState->FrameType = (0x02u);
    lSNinFrame = (uint8)(pPdu->SduDataPtr[lAddressingOffset] & (0x0Fu));
# 2914 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    lPayloadOffset = (uint8)(lAddressingOffset + 1u);
    pTpRxState->PayloadLength = (uint8)(pTpRxState->InitalDLC - lPayloadOffset);

    if (pTpRxState->PayloadLength <= (pTpRxState->DataLength - pTpRxState->DataIndex))
    {

      if (pPdu->SduLength == pTpRxState->InitalDLC)
      {

        lErrorId = (0xFFu);
      }
    }
    else
    {

      pTpRxState->PayloadLength = (uint8)(pTpRxState->DataLength - pTpRxState->DataIndex);

      if (pPdu->SduLength == CanTp_Util_GetMinFittingCanDl((pTpRxState->PayloadLength + lPayloadOffset), 1u))
      {

        lErrorId = (0xFFu);
      }
    }

    if (lErrorId != (0xFFu))
    {

      ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), (lErrorId) ));
    }


    else if (lSNinFrame != (uint8)(pTpRxState->ExpectedSN))
    {


      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC4u), (CanTp_ResetControlType)(0x01u));

    }
    else
    {

      pTpRxState->ExpectedSN = (uint8)((pTpRxState->ExpectedSN + 1u) & (0x0Fu));
     


      CanTp_Util_MemCpy((uint8 * ) (&pTpRxState->Payload[0]),
                        (uint8 * ) (&pPdu->SduDataPtr[lPayloadOffset]),
                        (pTpRxState->PayloadLength) );





      if (pTpRxState->ProvidedBufferSize >= pTpRxState->PayloadLength)
      {

        pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_OK;
      }
      else
      {

        pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_BUSY;
      }


      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NCrOfRxSduCfg)));
      pTpRxState->ChannelState = (0x43u);
      (CanTp_RxGetBuffer( (pTpRxState) ));
    }
  }

}
# 3017 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_CanIfRxIndicationFC(CanTp_TxStatePtrType pTpTxState,
                                                                    const PduInfoType * pPdu)
{
  uint8 lAddressingOffset = CanTp_Util_GetAdrOffset(((0x00u)));


  if ( (pTpTxState->ChannelState == (0x22u) ) ||
       ((pTpTxState->ChannelState == (0x23u)) && (pTpTxState->BlocksizeCounter == 1u)) )
  {

    pTpTxState->FCLength = 3u + lAddressingOffset;
    CanTp_Util_MemCpy((uint8 * ) (pTpTxState->FCData),
                      (uint8 * ) (pPdu->SduDataPtr),
                      (pTpTxState->FCLength) );


  }
  else
  {

    if (pTpTxState->ChannelState == (0x01u))
    {

      if (pPdu->SduLength >= ((PduLengthType)3u + lAddressingOffset))
      {

        switch(pPdu->SduDataPtr[lAddressingOffset] & (0x0Fu))
        {

          case (0x00u):
# 3057 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
            {
# 3076 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
              pTpTxState->STmin = pPdu->SduDataPtr[lAddressingOffset + 2u];
              pTpTxState->BlocksizeCounter = pPdu->SduDataPtr[lAddressingOffset + 1u];




            }


            pTpTxState->Timer = ((uint16)(41u));
            pTpTxState->ChannelState = (0x43u);
            (CanTp_TxGetBuffer( (pTpTxState) ));
            break;



          case (0x01u):

            pTpTxState->Timer = ((uint16)(281u));
            break;
# 3105 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
          case (0x02u):

            CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD4u));
            break;


          default:

            CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD5u));
            break;

        }
      }

      else
      {
        ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), ((0x80u)) ));
      }
    }

  }
}
# 3144 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ Std_ReturnType CanTp_TxStartConnection(PduIdType TxSduSnv,
                                                                            PduIdType TxHdl,
                                                                            PduLengthType SduLength,
                                                                            const PduInfoType * CanTpTxInfoPtr)
{
  CanTp_TxStatePtrType pTpTxState;
  Std_ReturnType lReturnValue;

  lReturnValue = 1u;
  ;



  pTpTxState = CanTp_TxGetFreeChannelPtr(TxHdl, CanTpTxInfoPtr);


  if (pTpTxState != ((void *)0))
  {
    lReturnValue = 0u;





    if (SduLength > ((1u == (((CanTp_TxSduCfg[(((TxHdl)))].CanTypeOfTxSduCfg)))) ? (((uint8)(((uint8)((CanTp_TxSduCfg[((((TxHdl))))].TxMaxPayloadLengthOfTxSduCfg))) - 1u))) : (((uint8)(8u - (CanTp_Util_GetAdrOffset(((0x00u))) + 1u))))))
    {

      pTpTxState->ChannelState = (0x42u);
# 3183 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    }
    else
    {

      pTpTxState->ChannelState = (0x41u);
    }
  }




  if (lReturnValue == 0u)
  {

    pTpTxState->DataIndex = 0;
    pTpTxState->DataLength = SduLength;
    pTpTxState->Timer = ((uint16)(41u));



    CanTp_TxGetBuffer(pTpTxState);



  }


  return lReturnValue;
}
# 3232 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduLengthType CanTp_RxGetBytesPerBlock(CanTp_RxStatePtrType pTpRxState)
{
  PduLengthType lBytesPerBlock;


  lBytesPerBlock = (PduLengthType)((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg)))));


  if (pTpRxState->FrameType != (0x01u))
  {

    lBytesPerBlock = (PduLengthType)(lBytesPerBlock * (CanTp_CalcBS[((pTpRxState->RxHdl))]));
  }



  if (lBytesPerBlock > (pTpRxState->DataLength - pTpRxState->DataIndex))
  {
    lBytesPerBlock = pTpRxState->DataLength - pTpRxState->DataIndex;
  }

  return lBytesPerBlock;
}
# 3274 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferSF(CanTp_RxStatePtrType pTpRxState)
{
  PduInfoType lPduInfo;


  if ((pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK) && (pTpRxState->ProvidedBufferSize >= pTpRxState->PayloadLength))
  {

    lPduInfo.SduLength = pTpRxState->PayloadLength;
    lPduInfo.SduDataPtr = &pTpRxState->Payload[0];
    pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                   ;


    if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK)
    {
      CanTp_RxInit(pTpRxState, (Std_ReturnType)0u, (0xFFu), (CanTp_ResetControlType)(0x01u));
    }

    else
    {

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
    }
  }
# 3309 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  else if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_E_BUSY)
  {

  }

  else
  {

    CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
  }
}
# 3342 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferFF(CanTp_RxStatePtrType pTpRxState)
{
  PduInfoType lPduInfo;
# 3353 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  if (pTpRxState->ProvidedBufferSize >= pTpRxState->PayloadLength)

  {

    lPduInfo.SduLength = pTpRxState->PayloadLength;
    lPduInfo.SduDataPtr = &pTpRxState->Payload[0];
    pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                   ;
  }
  else
  {





    pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_NOT_OK;

  }


  switch (pTpRxState->BufferState)
  {
    case (CanTp_BufferStateType)BUFREQ_OK:

      pTpRxState->DataIndex = (PduLengthType)(pTpRxState->DataIndex + pTpRxState->PayloadLength);
      pTpRxState->PayloadLength = 0;







      {
        PduLengthType lBytesPerBlock;
        lBytesPerBlock = CanTp_RxGetBytesPerBlock(pTpRxState);


        if (pTpRxState->ProvidedBufferSize >= lBytesPerBlock)
        {

          pTpRxState->ChannelState = (0x11u);
        }
        else
        {

          pTpRxState->ChannelState = (0x12u);
        }
      }



      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
      CanTp_RxTransmitFrame(pTpRxState);
      break;

    case (CanTp_BufferStateType)BUFREQ_E_BUSY:

      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
      pTpRxState->ChannelState = (0x12u);
      CanTp_RxTransmitFrame(pTpRxState);
      break;

    case (CanTp_BufferStateType)BUFREQ_E_OVFL:

      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
      pTpRxState->ChannelState = (0x13u);
      CanTp_RxTransmitFrame(pTpRxState);
      break;

    case (CanTp_BufferStateType)BUFREQ_E_NOT_OK:
    default:

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
      break;
  }
}
# 3461 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferCF(CanTp_RxStatePtrType pTpRxState)
{
  PduInfoType lPduInfo;
# 3475 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK)
  {
    if (pTpRxState->ProvidedBufferSize >= pTpRxState->PayloadLength)
    {

      lPduInfo.SduLength = pTpRxState->PayloadLength;
      lPduInfo.SduDataPtr = &pTpRxState->Payload[0];
      pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                     ;
    }
    else
    {


      pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_NOT_OK;
    }
  }



  switch (pTpRxState->BufferState)
  {
    case (CanTp_BufferStateType)BUFREQ_OK:
      pTpRxState->DataIndex = (PduLengthType)(pTpRxState->DataIndex + pTpRxState->PayloadLength);
      pTpRxState->PayloadLength = 0;


      if (pTpRxState->DataIndex >= pTpRxState->DataLength)
      {

        CanTp_RxInit(pTpRxState, (Std_ReturnType)0u, (0xFFu), (CanTp_ResetControlType)(0x01u));
      }
      else
      {






        pTpRxState->ChannelState = (0x01u);


        if (pTpRxState->BlocksizeCounter > 0u)
        {

          pTpRxState->BlocksizeCounter--;
          if (pTpRxState->BlocksizeCounter == 0u)
          {
# 3535 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
            PduLengthType lBytesPerBlock;

            lBytesPerBlock = CanTp_RxGetBytesPerBlock(pTpRxState);

            if (pTpRxState->ProvidedBufferSize >= lBytesPerBlock)
            {

              pTpRxState->ChannelState = (0x11u);
            }
            else
            {

              lPduInfo.SduLength = 0;
              pTpRxState->BufferState = (CanTp_BufferStateType)(CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                                                    ;


              pTpRxState->ChannelState = (0x12u);
              if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK)
              {
                if (pTpRxState->ProvidedBufferSize >= lBytesPerBlock)
                {

                  pTpRxState->ChannelState = (0x11u);
                }

              }
              else
              {
                if (pTpRxState->BufferState != (CanTp_BufferStateType)BUFREQ_E_BUSY)
                {

                  CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
                }

              }
            }

            if (pTpRxState->ChannelState != (0x00u))
            {

              pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
              CanTp_RxTransmitFrame(pTpRxState);
            }


          }

        }



      }
      break;

    case (CanTp_BufferStateType)BUFREQ_E_BUSY:


      if (pTpRxState->BlocksizeCounter == 1u)
      {

        pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
        pTpRxState->ChannelState = (0x12u);
        CanTp_RxTransmitFrame(pTpRxState);
      }
      else
      {


        CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
      }
      break;

    case (CanTp_BufferStateType)BUFREQ_E_OVFL:
    case (CanTp_BufferStateType)BUFREQ_E_NOT_OK:
    default:

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
      break;
  }
}
# 3638 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxGetBufferFCWait(CanTp_RxStatePtrType pTpRxState)
{
  PduInfoType lPduInfo;


  if ((pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK) && (pTpRxState->PayloadLength != 0u) )
  {




    if (pTpRxState->ProvidedBufferSize >= pTpRxState->PayloadLength)

    {

      lPduInfo.SduLength = pTpRxState->PayloadLength;
      lPduInfo.SduDataPtr = &pTpRxState->Payload[0];
      pTpRxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                     ;
    }
    else
    {

      pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_BUSY;
    }
  }


  switch (pTpRxState->BufferState)
  {
    case (CanTp_BufferStateType)BUFREQ_OK:

      pTpRxState->DataIndex = (pTpRxState->DataIndex + pTpRxState->PayloadLength);
      pTpRxState->PayloadLength = 0;
# 3681 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      if (pTpRxState->DataIndex >= pTpRxState->DataLength)
      {
        CanTp_RxInit(pTpRxState, (Std_ReturnType)0u, (0xFFu), (CanTp_ResetControlType)(0x01u));
      }
      else
      {


        PduLengthType lBytesPerBlock;


        lBytesPerBlock = CanTp_RxGetBytesPerBlock(pTpRxState);

        if (pTpRxState->ProvidedBufferSize >= lBytesPerBlock)
        {
          pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
          pTpRxState->ChannelState = (0x11u);
          CanTp_RxTransmitFrame(pTpRxState);
        }
        else
        {

          pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_BUSY;
        }
      }

      break;

    case (CanTp_BufferStateType)BUFREQ_E_BUSY:

      break;

    default:

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
      break;
  }
}
# 3735 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ PduIdType CanTp_Cfg_GetSduHdlByRxPduOnly (PduIdType RxPduId, uint8 FrameType)
{
  PduIdType lSduHdl = ((PduIdType) 255u);


  ;


  if ( (FrameType == (0x03u)) && ((((boolean)((CanTp_RxPduMap[((RxPduId))].TxSduCfgIndStartIdxOfRxPduMap) != 255u)) != 0u)) )
  {



    lSduHdl = (PduIdType)(CanTp_TxSduCfgInd[((CanTp_RxPduMap[(RxPduId)].TxSduCfgIndStartIdxOfRxPduMap))]);
  }

  else if ( (FrameType != (0x03u)) && ((((1u)) != 0u)) )
  {



    lSduHdl = (PduIdType)(CanTp_RxSduCfgInd[((CanTp_RxPduMap[(RxPduId)].RxSduCfgIndStartIdxOfRxPduMap))]);
  }

  else
  {

  }


  return lSduHdl;
}
# 3958 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_RxInitState(CanTp_RxStatePtrType pTpRxState)
{





  pTpRxState->RxHdl = ((PduIdType) 255u);
  pTpRxState->FrameType = (0x04u);
  pTpRxState->ChannelState = (0x00u);
  pTpRxState->Timer = 0u;
  pTpRxState->DataLength = 0u;
  pTpRxState->DataIndex = 0u;
  pTpRxState->ProvidedBufferSize = 0u;
  pTpRxState->WFTCounter = 0u;
  pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_OK;
  pTpRxState->BlocksizeCounter = 0u;
  pTpRxState->PayloadLength = 0u;
  pTpRxState->InitalDLC = 0u;
  pTpRxState->ExpectedSN = 0u;

  pTpRxState->ApplState = (0x00u);





}
# 3996 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ void CanTp_TxInitState(CanTp_TxStatePtrType pTpTxState)
{






  pTpTxState->TxHdl = ((PduIdType) 255u);



  pTpTxState->ChannelState = (0x00u);
  pTpTxState->Timer = 0u;
  pTpTxState->DataLength = 0u;
  pTpTxState->DataIndex = 0u;
  pTpTxState->BufferState = (CanTp_BufferStateType)BUFREQ_OK;
  pTpTxState->BlocksizeCounter = 0u;
  pTpTxState->STmin = 0u;
  pTpTxState->STminTimer = 0u;
  pTpTxState->PayloadLength = 0u;
  pTpTxState->SeqNumber = 0u;




  pTpTxState->FCLength = 0u;



}
# 4045 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_RxStatePtrType CanTp_RxGetFreeChannelPtr(PduIdType RxHdl,
                                                                                    const PduInfoType * pPayloadInfo,
                                                                                    const PduInfoType * pMetadataInfo)
{
  CanTp_RxStatePtrType pTpRxState = ((void *)0);


  if (((CanTp_RxState[(((RxHdl)))]).ChannelState == (0x00u) ))
  {
# 4074 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    pTpRxState = &(CanTp_RxState[((RxHdl))]);
    pTpRxState->RxHdl = RxHdl;

  }
# 4097 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  ;
  ;


  return pTpRxState;
}
# 4114 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_RxStatePtrType CanTp_RxGetActiveChannelPtr(PduIdType RxHdl)
{
  CanTp_RxStatePtrType pTpRxState = ((void *)0);


  if (!((CanTp_RxState[(((RxHdl)))]).ChannelState == (0x00u) ))
  {
    pTpRxState = &(CanTp_RxState[(((RxHdl)))]);
  }

  return pTpRxState;
}
# 4144 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_TxStatePtrType CanTp_TxGetFreeChannelPtr(PduIdType TxHdl,
  const PduInfoType * CanTpTxInfoPtr)
{
  CanTp_TxStatePtrType pTpTxState = ((void *)0);


  if (((CanTp_TxState[(((TxHdl)))]).ChannelState == (0x00u)))
  {
# 4171 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    pTpTxState = &(CanTp_TxState[((TxHdl))]);
    pTpTxState->TxHdl = TxHdl;

  }
# 4194 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  ;


  return pTpTxState;
}
# 4210 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static __inline__ CanTp_TxStatePtrType CanTp_TxGetActiveChannelPtr(PduIdType TxHdl)
{
  CanTp_TxStatePtrType pTpTxState = ((void *)0);


  if (!((CanTp_TxState[(((TxHdl)))]).ChannelState == (0x00u)))
  {
    pTpTxState = &(CanTp_TxState[(((TxHdl)))]);
  }

  return pTpTxState;
}
# 4320 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfRxIndication(PduIdType SduHdl,
                                                           uint8 FrameType,
                                                           const PduInfoType * pPayloadInfo,
                                                           const PduInfoType * pMetadataInfo)
{
  ;
  ;

  if ((0x03u) != FrameType)
  {



    uint8 lPaddingLength;

    lPaddingLength = CanTp_Util_GetPaddingLength((uint8)pPayloadInfo->SduLength, 1u, (((CanTp_RxSduCfg[((SduHdl))].CanTypeOfRxSduCfg))));
    if (pPayloadInfo->SduLength != lPaddingLength)
    {

      ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), ((0x01u)) ));
    }
    else

    {
      ;



      if (CanTp_RxCheckChannelMode(SduHdl) == 0u)

      {

        CanTp_RxStatePtrType pTpRxState;
        pTpRxState = CanTp_RxGetActiveChannelPtr(SduHdl);

        if (pTpRxState == ((void *)0))
        {


            if ((FrameType == (0x00u)) || (FrameType == (0x01u)))
          {
            pTpRxState = CanTp_RxGetFreeChannelPtr(SduHdl, pPayloadInfo, pMetadataInfo);
          }

        }



        if (pTpRxState != ((void *)0))
        {

          switch (FrameType)
          {




              case (0x00u):




              {
                CanTp_CanIfRxIndicationSF(pTpRxState, pPayloadInfo);
              }
              break;
              case (0x01u):




              {
                CanTp_CanIfRxIndicationFF(pTpRxState, pPayloadInfo);
              }
              break;


              case (0x02u):
              CanTp_CanIfRxIndicationCF(pTpRxState, pPayloadInfo);
              break;


            default:

              break;
          }
        }

      }


      ;
    }

  }

  else
  {



    uint8 lPaddingLength;

    lPaddingLength = CanTp_Util_GetPaddingLength((uint8)pPayloadInfo->SduLength, 1u, (((CanTp_TxSduCfg[((SduHdl))].CanTypeOfTxSduCfg))));
    if (pPayloadInfo->SduLength != lPaddingLength )
    {

      ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), ((0x01u)) ));
    }
    else

    {
      CanTp_TxStatePtrType pTpTxState;


      ;


      pTpTxState = CanTp_TxGetActiveChannelPtr(SduHdl);
      if (pTpTxState != ((void *)0))
      {

        CanTp_CanIfRxIndicationFC(pTpTxState, pPayloadInfo);
      }


      ;
    }

  }
}
# 4475 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfTxConfirmation(CanTp_TxStatePtrType pTpTxState)
{
  switch (pTpTxState->ChannelState)
  {

    case (0x21u):

      CanTp_TxInit(pTpTxState, (Std_ReturnType)0u, (0xFFu));
      break;


    case (0x22u):




      pTpTxState->Timer = ((uint16)(281u));
      pTpTxState->ChannelState = (0x01u);
      break;


    case (0x23u):
      if (pTpTxState->DataIndex < pTpTxState->DataLength)
      {


        pTpTxState->SeqNumber = (uint8)((pTpTxState->SeqNumber + 1u) & (0x0Fu));



        if (pTpTxState->BlocksizeCounter != 0u)
        {
          pTpTxState->BlocksizeCounter--;
          if (pTpTxState->BlocksizeCounter == 0u)
          {

            pTpTxState->Timer = ((uint16)(281u));
            pTpTxState->ChannelState = (0x01u);
          }
        }



        if (pTpTxState->ChannelState != (0x01u))
        {



          pTpTxState->Timer = ((uint16)(41u));
          {
# 4541 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
            {

              if (pTpTxState->STmin == 0u)
              {

                pTpTxState->ChannelState = (0x43u);
                (CanTp_TxGetBuffer( (pTpTxState) ));
              }
              else
              {

                pTpTxState->STminTimer = CanTp_TxGetStminTimerFromStminValue(pTpTxState->STmin);
                pTpTxState->ChannelState = (0x02u);
              }
            }

          }

        }

      }

      else
      {
        CanTp_TxInit(pTpTxState, (Std_ReturnType)0u, (0xFFu));
      }
      break;


    default:
      ((void)Det_ReportError((0x23u), (0x00u), ((0x05u)), ((0xB2u)) ));
      break;
  }



  if (pTpTxState->FCLength != 0u)
  {
    PduInfoType PduInfo;

    PduInfo.SduDataPtr = pTpTxState->FCData;
    PduInfo.SduLength = pTpTxState->FCLength;
    pTpTxState->FCLength = 0;
    CanTp_CanIfRxIndicationFC(pTpTxState, &PduInfo);
  }
}
# 4606 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_CanIfTxConfirmationFC(CanTp_RxStatePtrType pTpRxState)
{

  switch (pTpRxState->ChannelState)
  {

    case (0x21u):

      pTpRxState->WFTCounter = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].RxWftMaxOfRxSduCfg)));
      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NCrOfRxSduCfg)));
      pTpRxState->ChannelState = (0x01u);
      break;


    case (0x22u):

      { if (!((pTpRxState->WFTCounter >= 1u))) {((void)Det_ReportError((0x23u), (0x00u), (((0x05u))), ((((0x01u)))) )); }}
      pTpRxState->WFTCounter--;
      pTpRxState->BufferState = (CanTp_BufferStateType)BUFREQ_E_BUSY;
      pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NBrOfRxSduCfg)));
      pTpRxState->ChannelState = (0x02u);
      break;


    case (0x23u):

      CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
      break;


    default:
      ((void)Det_ReportError((0x23u), (0x00u), ((0x05u)), ((0xB1u)) ));
      break;
  }
}
# 4658 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static CanTp_TxResultType CanTp_CanIfTransmitFrame(const CanTp_PduTxInfoType * pPduTxData,
                                                                          PduInfoType * pTpData)
{
  CanTp_TxResultType lCanIfResult;




  while( pTpData->SduLength < (PduLengthType)pPduTxData->PaddingLength )
  {

    pTpData->SduDataPtr[pTpData->SduLength] = 0xCCu;
    pTpData->SduLength++;
  }
# 4691 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  if ((CanTp_TxSemaphores[((pPduTxData->TxConfPduId))]).Handle == ((PduIdType) 255u))
  {

    lCanIfResult = (CanIf_Transmit((pPduTxData->TxPduId),(pTpData)));

    if (lCanIfResult == 0u)
    {

      (CanTp_TxSemaphores[((pPduTxData->TxConfPduId))]).Direction = pPduTxData->SduDirection;
      (CanTp_TxSemaphores[((pPduTxData->TxConfPduId))]).Handle = pPduTxData->SduHdl;

     
    }

  }

  else
  {

    lCanIfResult = (0x0Fu);
# 4728 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  }

  return lCanIfResult;
}
# 4749 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxInit(CanTp_RxStatePtrType pTpRxState,
                                                CanTp_NotificationType NotifyCode,
                                                uint8 DetError,
                                                CanTp_ResetControlType ResetRequest)
{
  uint8 lIndicationPduR = 0u;
  PduIdType lRxHdl = pTpRxState->RxHdl;


  if ((pTpRxState->ChannelState & (0x20u)) == (0x20u))
  {





    (CanTp_TxSemaphores[((((PduIdType)((CanTp_RxSduCfg[((lRxHdl))].TxFcPduConfirmationPduIdOfRxSduCfg)))))]).Handle = ((PduIdType) 255u);
    (CanTp_TxSemaphores[((((PduIdType)((CanTp_RxSduCfg[((lRxHdl))].TxFcPduConfirmationPduIdOfRxSduCfg)))))]).Direction = (CanTp_DirectionType)(0x01u);
    ;

  }




  if (NotifyCode != (Std_ReturnType)(0x80u))
  {

    if (pTpRxState->ApplState == (0x01u))

    {
      lIndicationPduR = 1u;
    }
  }



  CanTp_RxInitState(pTpRxState);

  if (ResetRequest == (CanTp_ResetControlType)(0x00u))
  {

    pTpRxState->RxHdl = lRxHdl;
  }
# 4804 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  if (lIndicationPduR != 0u)
  {
    (PduR_CanTpRxIndication( (((PduIdType)((CanTp_RxSduCfg[((lRxHdl))].PduRRxSduIdOfRxSduCfg)))), (NotifyCode) ));
  }


  if (DetError != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x34u)), (DetError) ));
  }
}
# 4831 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxInit(CanTp_TxStatePtrType pTpTxState,
                                                CanTp_NotificationType NotifyCode,
                                                uint8 DetError)
{
  PduIdType lTxHdl = pTpTxState->TxHdl;
  ;


  if ((pTpTxState->ChannelState & (0x20u)) == (0x20u))
  {






    (CanTp_TxSemaphores[((((PduIdType)((CanTp_TxSduCfg[((lTxHdl))].TxPduConfirmationPduIdOfTxSduCfg)))))]).Handle = ((PduIdType) 255u);
    (CanTp_TxSemaphores[((((PduIdType)((CanTp_TxSduCfg[((lTxHdl))].TxPduConfirmationPduIdOfTxSduCfg)))))]).Direction = (CanTp_DirectionType)(0x01u);
    ;

  }


  CanTp_TxInitState(pTpTxState);
# 4864 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  {
    (PduR_CanTpTxConfirmation( (((PduIdType)((CanTp_TxSduCfg[((lTxHdl))].PduRTxSduIdOfTxSduCfg)))), (NotifyCode) ));
  }


  if (DetError != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x35u)), (DetError) ));
  }
}
# 4896 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_ResetChannels(void)
{
  {
    PduIdType lSduHdl;


    for (lSduHdl = 0; lSduHdl < ((PduIdType)(4u)); lSduHdl++)
    {







      (CanTp_DynFCParameters[((lSduHdl))]).BS = ((uint8)((CanTp_RxSduCfg[((lSduHdl))].BlockSizeOfRxSduCfg)));
      (CanTp_DynFCParameters[((lSduHdl))]).STmin = ((uint8)(0u));

    }
# 4924 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  }


  {
    PduIdType lChannelHdl;


    for (lChannelHdl = 0; lChannelHdl < ((PduIdType)(4u)); lChannelHdl++)
    {
      CanTp_RxInitState(&(CanTp_RxState[((lChannelHdl))]));
    }


    for (lChannelHdl = 0; lChannelHdl < ((PduIdType)(2u)); lChannelHdl++)
    {
      CanTp_TxInitState(&(CanTp_TxState[((lChannelHdl))]));
    }
  }
# 4950 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  {
    PduIdType lTxConfHdl;

    for (lTxConfHdl = 0; lTxConfHdl < ((PduIdType)(2u)); lTxConfHdl++)
    {

      (CanTp_TxSemaphores[((lTxConfHdl))]).Handle = ((PduIdType) 255u);
      (CanTp_TxSemaphores[((lTxConfHdl))]).Direction = (CanTp_DirectionType)(0x01u);
# 4973 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    }
  }
}
# 4989 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxGetBuffer(CanTp_RxStatePtrType pTpRxState)
{
  PduInfoType lPduInfo;


  if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_E_BUSY)
  {
    lPduInfo.SduLength = 0;
    pTpRxState->BufferState = (CanTp_BufferStateType)(CanTp_BufferStateType)(PduR_CanTpCopyRxData( (((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].PduRRxSduIdOfRxSduCfg)))), (&lPduInfo), (&pTpRxState->ProvidedBufferSize) ))

                                                                                                           ;
  }



  switch (pTpRxState->ChannelState)
  {
    case (0x41u):

      CanTp_RxGetBufferSF(pTpRxState);
      break;

    case (0x42u):

      CanTp_RxGetBufferFF(pTpRxState);
      break;

    case (0x43u):

      CanTp_RxGetBufferCF(pTpRxState);
      break;

    case (0x02u):

      CanTp_RxGetBufferFCWait(pTpRxState);
      break;

    default:

      ((void)Det_ReportError((0x23u), (0x00u), ((0x30u)), ((0xB1u)) ));
      break;
  }
}
# 5055 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxGetBuffer(CanTp_TxStatePtrType pTpTxState)
{

  PduInfoType lPduInfo;
  CanTp_TxChannelStateType lNewChannelState = (0x00u);
  PduLengthType lRemainingBufferSize;
  boolean lIsChannelStateValid = 1u;


  switch (pTpTxState->ChannelState)
  {
  case (0x41u):

    pTpTxState->PayloadLength = (uint8)pTpTxState->DataLength;
    lNewChannelState = (0x11u);
    break;

  case (0x42u):


    if (pTpTxState->DataLength > 4095u)
    {

      pTpTxState->PayloadLength = ((uint8)(((uint8)((CanTp_TxSduCfg[(((pTpTxState->TxHdl)))].TxMaxPayloadLengthOfTxSduCfg))) - 5u));
    }
    else

    {
      pTpTxState->PayloadLength = ((uint8)(((uint8)((CanTp_TxSduCfg[(((pTpTxState->TxHdl)))].TxMaxPayloadLengthOfTxSduCfg))) - 1u));
    }
    lNewChannelState = (0x12u);
    break;

  case (0x43u):

    pTpTxState->PayloadLength = ((uint8)(((uint8)((CanTp_TxSduCfg[(((pTpTxState->TxHdl)))].TxMaxPayloadLengthOfTxSduCfg)))));
    lNewChannelState = (0x13u);

    if ((pTpTxState->DataIndex + pTpTxState->PayloadLength) > pTpTxState->DataLength)
    {

      pTpTxState->PayloadLength = (uint8)(pTpTxState->DataLength - pTpTxState->DataIndex);
    }
    break;

  default:

    ((void)Det_ReportError((0x23u), (0x00u), ((0x31u)), ((0xB2u)) ));
    lIsChannelStateValid = 0u;
    break;
  }


  if (lIsChannelStateValid == 1u)
  {

    lPduInfo.SduDataPtr = &pTpTxState->Payload[0];
    lPduInfo.SduLength = pTpTxState->PayloadLength;
    pTpTxState->BufferState = (CanTp_BufferStateType)(PduR_CanTpCopyTxData( (((PduIdType)((CanTp_TxSduCfg[((pTpTxState->TxHdl))].PduRTxSduIdOfTxSduCfg)))), (&lPduInfo), ((void *)0), (&lRemainingBufferSize) ))


                            ;






    if (pTpTxState->BufferState == (CanTp_BufferStateType)BUFREQ_OK)
    {
      pTpTxState->Timer = ((uint16)(281u));
      pTpTxState->ChannelState = lNewChannelState;
      CanTp_TxTransmitFrame(pTpTxState);
    }
    else
    {
      if (pTpTxState->BufferState != (CanTp_BufferStateType)BUFREQ_E_BUSY)
      {
        CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0x50u));
      }

    }
  }
}
# 5174 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_RxTransmitFrame(CanTp_RxStatePtrType pTpRxState)
{
  CanTp_TxResultType lTxResult;
  PduInfoType lFCFrameData;
  uint8 lFCBuffer[8u + 0u];
  uint8 lBlockSizeValue;
  boolean lTransmitFC;


  lTransmitFC = 1u;
  lFCFrameData.SduDataPtr = lFCBuffer;
  lFCFrameData.SduLength = 0;
# 5200 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  lBlockSizeValue = (CanTp_DynFCParameters[(((pTpRxState->RxHdl)))]).BS;


  switch(pTpRxState->ChannelState)
  {

    case (0x11u):

      if (lBlockSizeValue != 0u)
      {

        if ((CanTp_CalcBS[((pTpRxState->RxHdl))]) != 0u)
        {

          lBlockSizeValue = (CanTp_CalcBS[((pTpRxState->RxHdl))]);
        }
        else

        {
          uint16 lBytesPerBlock;


          lBytesPerBlock = ((uint16)lBlockSizeValue) * ((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg)))));
          if ( (pTpRxState->ProvidedBufferSize < lBytesPerBlock) &&
               (pTpRxState->ProvidedBufferSize < (pTpRxState->DataLength - pTpRxState->DataIndex)) )
          {

            lBlockSizeValue = (uint8)(pTpRxState->ProvidedBufferSize / ((uint8)(((uint8)((CanTp_RxSduCfg[(((pTpRxState->RxHdl)))].RxMaxPayloadLengthOfRxSduCfg))))));



            { if (!(lBlockSizeValue >= 1u)) {((void)Det_ReportError((0x23u), (0x00u), (((0x32u))), (((0x60u))) )); }}
          }




          (CanTp_CalcBS[((pTpRxState->RxHdl))]) = lBlockSizeValue;

        }
      }


      lFCFrameData.SduDataPtr[lFCFrameData.SduLength] = (0x30u);


      pTpRxState->BlocksizeCounter = lBlockSizeValue;
      break;



    case (0x12u):

      if (pTpRxState->WFTCounter > 0u )
      {

        lFCFrameData.SduDataPtr[lFCFrameData.SduLength] = ((0x30u) | (0x01u));
      }
      else
      {

        lTransmitFC = 0u;
        CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC5u), (CanTp_ResetControlType)(0x01u));
      }
      break;



    case (0x13u):

      lFCFrameData.SduDataPtr[lFCFrameData.SduLength] = ((0x30u) | (0x02u));
      break;



    default:
      ((void)Det_ReportError((0x23u), (0x00u), ((0x32u)), ((0xB1u)) ));
      lTransmitFC = 0u;
      break;
  }



  if (lTransmitFC == 1u)
  {
    CanTp_PduTxInfoType lPduTxInfo;


    lFCFrameData.SduDataPtr[lFCFrameData.SduLength + 1u ] = lBlockSizeValue;
    lFCFrameData.SduDataPtr[lFCFrameData.SduLength + 2u] = (CanTp_DynFCParameters[(((pTpRxState->RxHdl)))]).STmin;
    lFCFrameData.SduLength += 3u;


    lPduTxInfo.SduDirection = (CanTp_DirectionType)(0x03u);
    lPduTxInfo.SduHdl = pTpRxState->RxHdl;
    lPduTxInfo.TxPduId = ((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].LoLayerTxFcPduIdOfRxSduCfg)));
    lPduTxInfo.TxConfPduId = ((PduIdType)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].TxFcPduConfirmationPduIdOfRxSduCfg)));


    lPduTxInfo.PaddingLength = CanTp_Util_GetPaddingLength((uint8)lFCFrameData.SduLength, 1u, (((CanTp_RxSduCfg[((pTpRxState->RxHdl))].CanTypeOfRxSduCfg))));
# 5309 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    lTxResult = CanTp_CanIfTransmitFrame(&lPduTxInfo, &lFCFrameData);

    if (lTxResult == 0u)
    {

      pTpRxState->ChannelState = (CanTp_RxChannelStateType)((pTpRxState->ChannelState & (0xEFu))
                                                            | (0x20u));
    }
    else
    {
      if (lTxResult == 1u)
      {

        CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC7u), (CanTp_ResetControlType)(0x01u));
      }

    }
  }
}
# 5358 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static void CanTp_TxTransmitFrame(CanTp_TxStatePtrType pTpTxState)
{
  PduInfoType lTxFrameData;
  uint8 lTxFrameDataBuffer[64u + 0u];
  CanTp_PduTxInfoType lPduTxInfo;
  Std_ReturnType lTxResult;
  boolean lIsChannelStateValid = 1u;


  lTxFrameData.SduDataPtr = lTxFrameDataBuffer;
  lTxFrameData.SduLength = 0u;
# 5381 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  switch(pTpTxState->ChannelState)
  {

    case (0x11u):
      lTxFrameData.SduDataPtr[lTxFrameData.SduLength] = (0x00u);


      if ((1u + lTxFrameData.SduLength + pTpTxState->PayloadLength) > 8u)
      {

        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 1u] = (uint8)(pTpTxState->DataLength);
        lTxFrameData.SduLength += 2u;
      }
      else

      {

        lTxFrameData.SduDataPtr[lTxFrameData.SduLength] |= (uint8)((pTpTxState->DataLength) & (0x0Fu));
        lTxFrameData.SduLength += 1u;
      }
      break;



    case (0x12u):
      lTxFrameData.SduDataPtr[lTxFrameData.SduLength] = (0x10u);


      if (pTpTxState->DataLength > 4095u)
      {

        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 1u] = 0;


        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 2u] = 0;
        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 3u] = 0;
        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 4u] = ((uint8)(((uint16)(pTpTxState->DataLength)) >> 8));
        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 5u] = ((uint8)(pTpTxState->DataLength));







        lTxFrameData.SduLength += 6u;
      }
      else

      {

        lTxFrameData.SduDataPtr[lTxFrameData.SduLength] |= (uint8)(((uint8)(((uint16)(pTpTxState->DataLength)) >> 8)) & (0x0Fu));
        lTxFrameData.SduDataPtr[lTxFrameData.SduLength + 1u] = (uint8)(((uint8)(pTpTxState->DataLength)));
        lTxFrameData.SduLength += 2u;
      }

      pTpTxState->SeqNumber = (0x01u);
      pTpTxState->BlocksizeCounter = 0;
      pTpTxState->DataIndex = 0;
      break;



    case (0x13u):
      lTxFrameData.SduDataPtr[lTxFrameData.SduLength] = (0x20u);
      lTxFrameData.SduDataPtr[lTxFrameData.SduLength] |= (uint8) (pTpTxState->SeqNumber);
      lTxFrameData.SduLength += 1u;
      break;



    default:
      ((void)Det_ReportError((0x23u), (0x00u), ((0x33u)), ((0xB2u)) ));
      lIsChannelStateValid = 0u;
      break;
  }

  if (lIsChannelStateValid == 1u)
  {

    CanTp_Util_MemCpy((uint8 * )(&lTxFrameData.SduDataPtr[lTxFrameData.SduLength]),
      (uint8 * )(pTpTxState->Payload),
      pTpTxState->PayloadLength);
    lTxFrameData.SduLength += pTpTxState->PayloadLength;



    lPduTxInfo.SduDirection = (CanTp_DirectionType)(0x02u);
    lPduTxInfo.SduHdl = pTpTxState->TxHdl;
    lPduTxInfo.TxPduId = ((PduIdType)((CanTp_TxSduCfg[((pTpTxState->TxHdl))].LoLayerTxPduIdOfTxSduCfg)));
    lPduTxInfo.TxConfPduId = ((PduIdType)((CanTp_TxSduCfg[((pTpTxState->TxHdl))].TxPduConfirmationPduIdOfTxSduCfg)));


    lPduTxInfo.PaddingLength = CanTp_Util_GetPaddingLength((uint8)lTxFrameData.SduLength,
      1u,
      (((CanTp_TxSduCfg[((pTpTxState->TxHdl))].CanTypeOfTxSduCfg))));
# 5488 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    lTxResult = CanTp_CanIfTransmitFrame(&lPduTxInfo, &lTxFrameData);






    if (lTxResult == 0u)
    {
      pTpTxState->ChannelState = (CanTp_TxChannelStateType)((pTpTxState->ChannelState & (0xEFu))
        | (0x20u));
      pTpTxState->DataIndex = pTpTxState->DataIndex + pTpTxState->PayloadLength;
    }
    else
    {
      if (lTxResult == 1u)
      {
        CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD7u));
      }

    }
  }
}
# 5531 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static Std_ReturnType CanTp_RxCheckChannelMode(PduIdType RxHdl)
{
  Std_ReturnType lResult;
  ;

  if (!(((boolean)((CanTp_RxSduCfg[((RxHdl))].TxSduCfgIdxOfRxSduCfg) != 255u)) != 0u))
  {

    lResult = 0u;
  }







  else if (((CanTp_TxState[(((((PduIdType)((CanTp_RxSduCfg[((RxHdl))].TxSduCfgIdxOfRxSduCfg))))))]).ChannelState == (0x00u)))
  {

    lResult = 0u;
  }
  else
  {

    lResult = 1u;
  }
  return lResult;
}
# 5581 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
static Std_ReturnType CanTp_TxCheckChannelMode(PduIdType TxHdl)
{
  Std_ReturnType lResult;
  ;

  if (!(((1u)) != 0u))
  {

    lResult = 0u;
  }







  else if (((CanTp_RxState[(((((PduIdType)((CanTp_TxSduCfg[((TxHdl))].RxSduCfgIdxOfTxSduCfg))))))]).ChannelState == (0x00u) ) == 1u)
  {

    lResult = 0u;
  }
  else
  {

    lResult = 1u;
  }
  return lResult;
}
# 5775 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_Init(const CanTp_ConfigType * CfgPtr)
{
# 5809 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  {

    if (CanTp_Util_CheckConfigValidity() == 1u)
    {

      CanTp_ResetChannels();
      CanTp_InitState = (0x01u);
    }

  }
# 5832 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  ;

}
# 5846 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_InitMemory(void)
{

  CanTp_InitState = (0x00u);
}
# 5863 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_Shutdown(void)
{

  uint8 lErrorId = (0xFFu);



  if (CanTp_InitState != (0x01u))
  {
    lErrorId = (0x20u);
  }
  else
  {



    CanTp_ResetChannels();
    CanTp_InitState = (0x00u);
  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x02u)), (lErrorId) ));
  }



}
# 5955 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_MainFunction(void)
{






  CanTp_MainFunctionRx();



  CanTp_MainFunctionTx();

}
# 5996 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_MainFunctionRx(void)
{


  PduIdType lRxChannelHdl;
  CanTp_RxStatePtrType pTpRxState;


  if (CanTp_InitState == (0x01u))
  {



    for (lRxChannelHdl = 0; lRxChannelHdl < ((PduIdType)(4u)); lRxChannelHdl++)
    {
      pTpRxState = &(CanTp_RxState[((lRxChannelHdl))]);

      if (pTpRxState->RxHdl != ((PduIdType) 255u))
      {
        ;


        if (pTpRxState->RxHdl != ((PduIdType) 255u))
        {

          pTpRxState->Timer--;

          if (pTpRxState->Timer == 0u)
          {

            switch (pTpRxState->ChannelState)
            {

              case (0x01u):
                CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC3u), (CanTp_ResetControlType)(0x01u));
                break;


              case (0x11u):
              case (0x12u):
              case (0x21u):
              case (0x22u):
                CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0xC1u), (CanTp_ResetControlType)(0x01u));
                break;


              case (0x13u):
              case (0x23u):

                CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
                break;


              case (0x41u):
              case (0x42u):
              case (0x43u):

                CanTp_RxGetBuffer(pTpRxState);


                if (pTpRxState->BufferState == (CanTp_BufferStateType)BUFREQ_E_BUSY)
                {
                  CanTp_RxInit(pTpRxState, (Std_ReturnType)1u, (0x60u), (CanTp_ResetControlType)(0x01u));
                }
                break;


              case (0x02u):

                pTpRxState->Timer = ((uint16)((CanTp_RxSduCfg[((pTpRxState->RxHdl))].NArOfRxSduCfg)));
                pTpRxState->ChannelState = (0x12u);
                CanTp_RxTransmitFrame(pTpRxState);
                break;


              default:
                ((void)Det_ReportError((0x23u), (0x00u), ((0x20u)), ((0xB1u)) ));
                break;
            }
          }

          else
          {
# 6092 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
            if ( ((pTpRxState->ChannelState & (0x40u)) == (0x40u)) ||
                  (pTpRxState->ChannelState == (0x02u)) )
            {
              CanTp_RxGetBuffer(pTpRxState);
            }


            if ((pTpRxState->ChannelState & (0x10u)) == (0x10u))
            {
              CanTp_RxTransmitFrame(pTpRxState);
            }
          }
        }

        ;
      }

    }

  }


}
# 6140 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_MainFunctionTx(void)
{


  PduIdType lTxChannelHdl;
  CanTp_TxStatePtrType pTpTxState;


  if (CanTp_InitState == (0x01u))
  {



    for (lTxChannelHdl = 0; lTxChannelHdl < ((PduIdType)(2u)); lTxChannelHdl++)
    {
      pTpTxState = &(CanTp_TxState[((lTxChannelHdl))]);

      if (pTpTxState->TxHdl != ((PduIdType) 255u))
      {
        ;


        if (pTpTxState->TxHdl != ((PduIdType) 255u))
        {

          if (pTpTxState->STminTimer > 0u)
          {
            pTpTxState->STminTimer--;


            if (pTpTxState->STminTimer == 0u)
            {

              pTpTxState->ChannelState = (0x43u);

            }
          }

          pTpTxState->Timer--;
          if (pTpTxState->Timer == 0u)
          {

            switch (pTpTxState->ChannelState)
            {

              case (0x01u):
                CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD2u));
                break;





              case (0x02u):

                pTpTxState->STminTimer = 0;
                pTpTxState->ChannelState = (0x43u);



              case (0x41u):
              case (0x42u):
              case (0x43u):

                CanTp_TxGetBuffer(pTpTxState);

                if (pTpTxState->BufferState == (CanTp_BufferStateType)BUFREQ_E_BUSY)
                {
                  CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD3u));
                }
                break;


              case (0x11u):
              case (0x12u):
              case (0x13u):
              case (0x21u):
              case (0x22u):
              case (0x23u):
                CanTp_TxInit(pTpTxState, (Std_ReturnType)1u, (0xD1u));
                break;


              default:
                ((void)Det_ReportError((0x23u), (0x00u), ((0x21u)), ((0xB2u)) ));
                break;
            }
          }

          else
          {
# 6243 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
            if ((pTpTxState->ChannelState & (0x40u)) == (0x40u))
            {
              CanTp_TxGetBuffer(pTpTxState);
            }


            if ((pTpTxState->ChannelState & (0x10u)) == (0x10u))
            {
              CanTp_TxTransmitFrame(pTpTxState);
            }
          }
        }


        ;
      }

    }

  }


}
# 6283 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType * CanTpTxInfoPtr)
{

  uint8 lErrorId = (0xFFu);
  Std_ReturnType lReturnValue = 1u;

  ;


  if (CanTp_InitState != (0x01u))
  {

    lErrorId = (0x20u);
  }

  else if (CanTpTxSduId >= ((PduIdType)(2u)))
  {
    lErrorId = (0x30u);
  }
  else if (CanTpTxInfoPtr == ((void *)0))
  {
    lErrorId = (0x03u);
  }
# 6321 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
  else
  {



    const PduIdType lTxSduHdl = (PduIdType)(CanTp_TxSduSnv2Hdl[((CanTpTxSduId))].TxSduCfgIdxOfTxSduSnv2Hdl);



    if (CanTpTxInfoPtr->SduLength > 0u)
    {
      ;



      if (CanTp_TxCheckChannelMode(lTxSduHdl) == 0u)

      {


        lReturnValue = CanTp_TxStartConnection(CanTpTxSduId, lTxSduHdl, CanTpTxInfoPtr->SduLength, CanTpTxInfoPtr);
      }


      ;
    }


  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x03u)), (lErrorId) ));
  }




  return lReturnValue;
}
# 6391 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{

  uint8 lErrorId = (0xFFu);


  if (CanTp_InitState != (0x01u))
  {

    lErrorId = (0x20u);
  }

  else if (RxPduId >= ((PduIdType)(4u)))
  {
    lErrorId = (0x40u);
  }
  else if (PduInfoPtr == ((void *)0))
  {
    lErrorId = (0x03u);
  }
  else if (PduInfoPtr->SduDataPtr == ((void *)0))
  {
    lErrorId = (0x03u);
  }

  else
  {


    if ((PduInfoPtr->SduLength - ((uint8)(0u))) > 1u)
    {
      PduIdType lSduHdl = ((PduIdType) 255u);
      uint8 lReceivedFrameType;
      PduInfoType lPayloadInfo;
      PduInfoType lMetadataInfo;

      lPayloadInfo.SduDataPtr = PduInfoPtr->SduDataPtr;
      lMetadataInfo.SduLength = ((uint8)(0u));
# 6439 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      {
        lPayloadInfo.SduLength = PduInfoPtr->SduLength;
        lMetadataInfo.SduDataPtr = PduInfoPtr->SduDataPtr;
      }


      lReceivedFrameType = CanTp_Util_GetFrameType(((CanTp_AddressingFormatType)(0x00u)), &lPayloadInfo);
# 6464 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      {
        switch (((CanTp_AddressingFormatType)(0x00u)))
        {


          case 0u:




            lSduHdl = CanTp_Cfg_GetSduHdlByRxPduOnly(RxPduId, lReceivedFrameType);
            break;
# 6492 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
          default:



            break;
        }
      }
# 6514 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
      if (lSduHdl != ((PduIdType) 255u))
      {
        CanTp_CanIfRxIndication(lSduHdl, lReceivedFrameType, &lPayloadInfo, &lMetadataInfo);
      }
# 6529 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    }
  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x04u)), (lErrorId) ));
  }



}
# 6561 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
void CanTp_TxConfirmation(PduIdType TxPduId)
{

  uint8 lErrorId = (0xFFu);



  if (CanTp_InitState != (0x01u))
  {
    lErrorId = (0x20u);
  }
  else if (TxPduId >= ((PduIdType)(2u)))
  {
    lErrorId = (0x30u);
  }
  else

  {


    PduIdType lSduHdl;
    CanTp_DirectionType lSduDir;

    ;


    lSduHdl = (CanTp_TxSemaphores[((TxPduId))]).Handle;
    lSduDir = (CanTp_TxSemaphores[((TxPduId))]).Direction;


    (CanTp_TxSemaphores[((TxPduId))]).Handle = ((PduIdType) 255u);
    (CanTp_TxSemaphores[((TxPduId))]).Direction = (CanTp_DirectionType)(0x01u);
# 6602 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
    ;



    if (lSduHdl != ((PduIdType) 255u))
    {
      if (lSduDir == (CanTp_DirectionType)(0x02u))
      {


        if (((PduIdType)((CanTp_TxSduCfg[((lSduHdl))].TxPduConfirmationPduIdOfTxSduCfg))) == TxPduId)
        {
          CanTp_TxStatePtrType pTpTxState;
          ;

          pTpTxState = CanTp_TxGetActiveChannelPtr(lSduHdl);
          if (pTpTxState != ((void *)0))
          {

           
            CanTp_CanIfTxConfirmation(pTpTxState);
          }


          ;
        }


      }

      else
      {


        if (((PduIdType)((CanTp_RxSduCfg[((lSduHdl))].TxFcPduConfirmationPduIdOfRxSduCfg))) == TxPduId)
        {
          CanTp_RxStatePtrType pTpRxState;

          ;

          pTpRxState = CanTp_RxGetActiveChannelPtr(lSduHdl);
          if (pTpRxState != ((void *)0))
          {

           
            CanTp_CanIfTxConfirmationFC(pTpRxState);
          }


          ;
        }


      }
    }

  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x05u)), (lErrorId) ));
  }



}
# 6688 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
Std_ReturnType CanTp_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value)
{

  Std_ReturnType lReturnValue = 1u;
  uint8 lErrorId = (0xFFu);

  ;



  if (CanTp_InitState != (0x01u))
  {
    lErrorId = (0x20u);
  }
  else if (id >= ((PduIdType)(4u)))
  {
    lErrorId = (0x40u);
  }
  else if ((parameter != TP_STMIN) && (parameter != TP_BS))
  {
    lErrorId = (0x02u);
  }







  else

  {



    const PduIdType lRxSduHdl = (PduIdType)(CanTp_RxSduSnv2Hdl[((id))].RxSduCfgIdxOfRxSduSnv2Hdl);

    ;


    if (((CanTp_RxState[(((lRxSduHdl)))]).ChannelState == (0x00u) ) == 1u)
    {


      if (parameter == TP_STMIN)
      {

        if ( ((value > (0x7Fu)) && (value < (0xF1u))) ||
              (value > (0xF9u)) )
        {

          lErrorId = (0x02u);
        }
        else
        {
          (CanTp_DynFCParameters[((lRxSduHdl))]).STmin = (uint8)value;
          lReturnValue = 0u;
        }
      }


      else
      {
        (CanTp_DynFCParameters[((lRxSduHdl))]).BS = (uint8)value;
        lReturnValue = 0u;
      }
    }


    ;
  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x0Au)), (lErrorId) ));
  }




  return lReturnValue;
}
# 6788 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
Std_ReturnType CanTp_ReadParameter(PduIdType id, TPParameterType parameter, uint16* value)
{

  Std_ReturnType lReturnValue;
  uint8 lErrorId = (0xFFu);

  ;




  lReturnValue = 1u;

  if (CanTp_InitState != (0x01u))
  {
    lErrorId = (0x20u);
  }
  else if (id >= ((PduIdType)(4u)))
  {
    lErrorId = (0x40u);
  }
  else if ((parameter != TP_STMIN) && (parameter != TP_BS))
  {
    lErrorId = (0x02u);
  }
  else if (value == ((void *)0))
  {
    lErrorId = (0x03u);
  }







  else

  {



    const PduIdType lRxSduHdl = (PduIdType)(CanTp_RxSduSnv2Hdl[((id))].RxSduCfgIdxOfRxSduSnv2Hdl);

    lReturnValue = 0u;



    if (parameter == TP_STMIN)
    {
      *value = (CanTp_DynFCParameters[(((lRxSduHdl)))]).STmin;
    }
    else
    {
      *value = (CanTp_DynFCParameters[(((lRxSduHdl)))]).BS;
    }
  }



  if (lErrorId != (0xFFu))
  {
    ((void)Det_ReportError((0x23u), (0x00u), ((0x0Bu)), (lErrorId) ));
  }




  return lReturnValue;
}
# 7148 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c"
# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 7149 "../../../../CBD2300515_D00/BSW/CanTp/CanTp.c" 2
