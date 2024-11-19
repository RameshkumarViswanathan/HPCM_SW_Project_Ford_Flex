# 1 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 233 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "../../../BSW/CanIf/CanIf_Cbk.h" 1
# 53 "../../../BSW/CanIf/CanIf_Cbk.h"
# 1 "GenData/CanIf_Cfg.h" 1
# 54 "GenData/CanIf_Cfg.h"
# 1 "../../../BSW/Can/Can.h" 1
# 607 "../../../BSW/Can/Can.h"
# 1 "GenData/Can_Cfg.h" 1
# 67 "GenData/Can_Cfg.h"
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
# 68 "GenData/Can_Cfg.h" 2

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
# 73 "GenData/Can_Cfg.h" 2
# 419 "GenData/Can_Cfg.h"
typedef uint32 tCanLLCanIntOld;





typedef uint8 Can_OsIsrType;







typedef uint8 CanChannelHandle;


typedef TickType Can_ExternalTickType;




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
# 54 "../../../BSW/CanIf/CanIf_Cbk.h" 2
# 69 "../../../BSW/CanIf/CanIf_Cbk.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 70 "../../../BSW/CanIf/CanIf_Cbk.h" 2
# 96 "../../../BSW/CanIf/CanIf_Cbk.h"
void CanIf_ControllerModeIndication(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
# 133 "../../../BSW/CanIf/CanIf_Cbk.h"
void CanIf_TxConfirmation(PduIdType CanTxPduId);
# 154 "../../../BSW/CanIf/CanIf_Cbk.h"
void CanIf_RxIndicationAsr403(Can_HwHandleType Hrh, Can_IdType CanId, uint8 CanDlc, const uint8 * CanSduPtr);
# 193 "../../../BSW/CanIf/CanIf_Cbk.h"
void CanIf_ControllerBusOff(uint8 ControllerId);
# 255 "../../../BSW/CanIf/CanIf_Cbk.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 256 "../../../BSW/CanIf/CanIf_Cbk.h" 2
# 234 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2

# 1 "../../../BSW/CanIf/CanIf.h" 1
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
# 236 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 1 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 1
# 222 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
# 1 "Include/SchM_Can.h" 1
# 54 "Include/SchM_Can.h"
# 1 "Include/Os.h" 1
# 55 "Include/SchM_Can.h" 2
# 63 "Include/SchM_Can.h"
# 1 "Include/MemMap.h" 1
# 1044 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 64 "Include/SchM_Can.h" 2

void Can_MainFunction_Write(void);
void Can_MainFunction_Read(void);
void Can_MainFunction_BusOff(void);
void Can_MainFunction_Wakeup(void);
void Can_MainFunction_Mode(void);


# 1 "Include/MemMap.h" 1
# 1051 "Include/MemMap.h"
#pragma section
# 73 "Include/SchM_Can.h" 2
# 81 "Include/SchM_Can.h"
void SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0(void);




void SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0(void);
# 107 "Include/SchM_Can.h"
void SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6(void);




void SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6(void);
# 223 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2
# 1 "../../../../CBD2300515_D00/BSW/Can/Can.h" 1
# 224 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2
# 1185 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
typedef struct sCanRxInfoStruct
{
  CanChipMsgPtr pChipMsgObj;
  CanChipDataPtr pChipData;
  Can_HwHandleType localMailboxHandle;
  Can_IdType localId;
  uint8 localDlc;

} tCanRxInfoStruct;
typedef tCanRxInfoStruct * CanRxInfoStructPtr;

typedef struct sCanTxConfInfoStruct
{
  CanChipMsgPtr pChipMsgObj;
  CanChipDataPtr pChipData;

  tAlign32bit tmpTXB;
} tCanTxConfInfoStruct;
typedef tCanTxConfInfoStruct * CanTxConfInfoStructPtr;

typedef struct sCanInitParaStruct
{
  CanInitHandle initObject;
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType hwObjHandle;
# 1232 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
  uint8 isInitOk;

  uint32 ie;
  uint32 canInterruptOldStatus;
  uint32 txbtie;


  const Can_SIDFEType * pFS;

  uint16 stdFeCount;




  uint32 tmpVal;
  CanElmType * pTXB;


} tCanInitParaStruct;
typedef tCanInitParaStruct * CanInitParaStructPtr;


typedef struct sCanTxTransmissionParaStruct
{

  Can_HwHandleType mailboxHandle;
  Can_HwHandleType mailboxElement;
  Can_HwHandleType hwObjHandle;
  Can_HwHandleType activeSendObject;
  tCanTxId0 idRaw0;
# 1274 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
  tCanDlc dlcRaw;
  Can_SduPtrType CanMemCopySrcPtr;

  tCanFdType fdType;
  tCanFdBrsType fdBrsType;
  uint8 messageLen;
  uint8 frameLen;
  uint8 paddingVal;

  Can_PduType pdu;

  CanElmType* lpTXB;



} tCanTxTransmissionParaStruct;
typedef tCanTxTransmissionParaStruct * CanTxTransmissionParaStructPtr;

typedef struct sCanRxBasicParaStruct
{
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType hwObjHandle;


  tCanRxInfoStruct rxStruct;

  CanElmType * pShm;
  volatile uint32 * pFifoAck;
  volatile tRXFnS * pFifoStatus;
  CanElmType fElm;
  uint8 fGetIndex;
} tCanRxBasicParaStruct;
typedef tCanRxBasicParaStruct * CanRxBasicParaStructPtr;

typedef struct sCanRxFullParaStruct
{
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType hwObjHandle;
  tCanRxInfoStruct rxStruct;

  CanElmType * pShm;
  uint16 objectNumber;
  CanElmType bfElm;
} tCanRxFullParaStruct;
typedef tCanRxFullParaStruct * CanRxFullParaStructPtr;
# 1332 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
typedef struct
{
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType mailboxElement;
  Can_HwHandleType hwObjHandle;
  Can_HwHandleType activeSendObject;



  tAlign32bit tmpTXB;
} tCanTxConfirmationParaStruct;
typedef tCanTxConfirmationParaStruct * CanTxConfirmationParaStructPtr;

typedef struct sCanTaskParaStruct
{
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType hwObjHandle;

} tCanTaskParaStruct;
typedef tCanTaskParaStruct * CanTaskParaStructPtr;
# 1361 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
# 1 "Include/MemMap.h" 1
# 1362 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2



# 1 "Include/MemMap.h" 1
# 1366 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2





# 1 "Include/MemMap.h" 1
# 1172 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1372 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2
# 1428 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_WriteReg32( CanChipMsgPtr32 regPtr, uint32 value, uint32 readMask, CanInitParaStructPtr initPara);
# 1472 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitBegin( CanInitParaStructPtr initPara );
# 1512 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitBeginSetRegisters( CanInitParaStructPtr initPara );
# 1530 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitMailboxTx( CanInitParaStructPtr initPara );
# 1607 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitMailboxRxBasicCan( CanInitParaStructPtr initPara );
# 1645 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitEndSetRegisters( CanInitParaStructPtr initPara );
# 1663 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitEnd( CanInitParaStructPtr initPara );
# 1700 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitPowerOn( void );
# 1714 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_InitMemoryPowerOn( void );
# 1731 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_InitPowerOnChannelSpecific( void );
# 1747 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxBegin( CanTxTransmissionParaStructPtr txPara);
# 1762 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxSetMailbox( CanTxTransmissionParaStructPtr txPara);
# 1777 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxCopyToCan( CanTxTransmissionParaStructPtr txPara);
# 1794 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_TxStart( CanTxTransmissionParaStructPtr txPara);
# 1809 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxEnd( CanTxTransmissionParaStructPtr txPara);
# 1826 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_TxIsGlobalConfPending(void);
# 1841 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxProcessPendings( CanTaskParaStructPtr taskPara);
# 1857 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxConfBegin( CanTxConfirmationParaStructPtr txConfPara);
# 1889 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TxConfEnd( CanTxConfirmationParaStructPtr txConfPara);
# 1908 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_RxBasicMsgReceivedBegin( CanRxBasicParaStructPtr rxBasicPara);
# 1923 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_RxBasicReleaseObj( CanRxBasicParaStructPtr rxBasicPara);
# 1938 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_RxBasicMsgReceivedEnd( CanRxBasicParaStructPtr rxBasicPara);
# 1955 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_RxBasicIsGlobalIndPending(void);
# 1972 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_RxBasicProcessPendings( CanTaskParaStructPtr taskPara);
# 2130 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_ErrorHandlingBegin(void);
# 2146 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_BusOffOccured(void);
# 2165 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_RxBasicCanOverrun(void);
# 2183 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_ErrorHandlingEnd(void);
# 2219 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static uint8 CanLL_ModeTransition( uint8 mode, uint8 busOffRecovery, uint8 ramCheck);
# 2233 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_StopReinit(void);
# 2250 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_CanInterruptDisable( tCanLLCanIntOldPtr localInterruptOldFlagPtr);
# 2266 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_CanInterruptRestore( tCanLLCanIntOld localInterruptOldFlag);
# 2288 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_TriCoreErratum_AI_H001( uint32 CanIrFlag);
# 2329 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_SetAllFilter( CanInitParaStructPtr initPara );
# 2347 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_SetAllRegister( CanInitParaStructPtr initPara);
# 2362 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_SetRegisterMcMcan( CanInitParaStructPtr localInfo );
# 2397 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanLL_SetGlobalRegisterMcMcan(void);
# 2416 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_StartRequest(void);
# 2452 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanLL_StopRequest(void);
# 2471 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint32 CanLL_if_TxIsObjConfPending( uint32 txBuffer );
# 2506 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanErrorHandlingBusOff(void);
# 2595 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 Can_EccInit(void);
# 2614 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_CleanUpSendState(void);
# 2659 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_ModeTransition( uint8 transitionRequest, uint8 busOffRecovery, uint8 doRamCheck);
# 2677 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_NotifyTransition( uint8 canState, CanIf_ControllerModeType canIfState, uint8 transitionState);
# 2695 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_WritePrepare( CanTxTransmissionParaStructPtr txPara);
# 2730 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ Can_ReturnType CanHL_WriteStart( CanTxTransmissionParaStructPtr txPara);
# 2745 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ Can_HwHandleType CanHL_GetActiveSendObject(Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement);
# 2798 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_InitBegin( CanInitParaStructPtr initPara);
# 2834 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_InitTxBasicCAN( CanInitParaStructPtr initPara);
# 2872 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_InitRxBasicCAN( CanInitParaStructPtr initPara);
# 2890 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_InitEnd_InitMode( CanInitParaStructPtr initPara);
# 2906 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_RxBasicCanPolling(void);
# 2944 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ uint8 CanHL_RxMsgReceivedNotification( CanRxInfoStructPtr rxStructPtr);
# 2978 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_TxConfirmationPolling( Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement, Can_HwHandleType hwObjHandle);
# 2997 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static void CanHL_TxConfirmation( Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement, Can_HwHandleType hwObjHandle);
# 3060 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static __inline__ void CanHL_BasicCanMsgReceivedPolling( Can_HwHandleType rxMailboxHandle, Can_HwHandleType hwObjHandle);
# 3077 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static void CanHL_BasicCanMsgReceived( Can_HwHandleType rxMailboxHandle, Can_HwHandleType hwObjHandle);
# 3128 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static void CanHL_ErrorHandling(void);
# 3179 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h"
static uint8 CanHL_ReInit( uint8 doRamCheck);


# 1 "Include/MemMap.h" 1
# 1179 "Include/MemMap.h"
#pragma section
# 3183 "../../../../CBD2300515_D00/BSW/Can/Can_Local.h" 2
# 237 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2




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
# 242 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 260 "../../../../CBD2300515_D00/BSW/Can/Can.c"
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
# 261 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 1290 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1291 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2

 const uint8 Can_MainVersion = (uint8)((0x0511u & 0xFF00u) >> 8);
 const uint8 Can_SubVersion = (uint8)(0x0511u & 0x00FFu);
 const uint8 Can_ReleaseVersion = (uint8)(0x04u & 0xFFu);



static const uint8 Can_DlcToFrameLenght[16] =
{
  0u, 1u, 2u, 3u,
  4u, 5u, 6u, 7u,
  8u, 12u, 16u, 20u,
 24u, 32u, 48u, 64u
};
static const uint8 Can_MessageLengthToDlc[65] =
{
              0u, 1u, 2u, 3u, 4u, 5u, 6u, 7u,
              8u, 9u, 9u, 9u, 9u, 10u, 10u, 10u,
             10u, 11u, 11u, 11u, 11u, 12u, 12u, 12u,
             12u, 13u, 13u, 13u, 13u, 13u, 13u, 13u,
             13u, 14u, 14u, 14u, 14u, 14u, 14u, 14u,
             14u, 14u, 14u, 14u, 14u, 14u, 14u, 14u,
             14u, 15u, 15u, 15u, 15u, 15u, 15u, 15u,
             15u, 15u, 15u, 15u, 15u, 15u, 15u, 15u,
             15u
};
# 1340 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static const uint8 CanLL_xES2Bytes[8] =
{
  8, 12, 16, 20,
 24, 32, 48, 64
};




# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 1350 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2





# 1 "Include/MemMap.h" 1
# 1356 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2







static uint8 canIsRxTaskLocked;




# 1 "Include/MemMap.h" 1
# 1369 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2


# 1 "Include/MemMap.h" 1
# 1372 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2

static uint8 canConfigInitFlag = ((uint8)0x00u);

# 1 "Include/MemMap.h" 1
# 1376 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 1388 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1389 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2

 const Can_ConfigType * const Can_ConfigDataPtr = ((void *)0);

# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 1393 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 1444 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "Include/MemMap.h" 1
# 1172 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1445 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 1601 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_CleanUpSendState( void )
{

  Can_HwHandleType activeSendObject;
  Can_HwHandleType mailboxHandle;
  Can_HwHandleType mailboxElement;



  mailboxHandle = (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxTxBasicStartIdxOfControllerConfig);



  {



    mailboxElement = 0u;

    {
      activeSendObject = CanHL_GetActiveSendObject(mailboxHandle, mailboxElement);
      Can_ActiveSendObject[(activeSendObject)].StateOfActiveSendObject = ((uint8)0xFF);
    }
# 1640 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  }
# 1649 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
}
# 1696 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static uint8 CanHL_ReInit( uint8 doRamCheck )
{

  uint8 errorId;
  tCanInitParaStruct initPara;
  ;
  errorId = (uint8)0x00u;
  initPara.isInitOk = (uint8)0x00;



  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else
# 1727 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {


    initPara.initObject = (Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData);
# 1745 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    {
      Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)(((uint8)0x08u)) | (uint8)((uint8)((uint8)0x04u))));
    }

    initPara.isInitOk = CanHL_InitBegin( &initPara);

    if (initPara.isInitOk == (uint8)0x01)
    {





      initPara.isInitOk &= CanHL_InitTxBasicCAN( &initPara);






      initPara.isInitOk &= CanHL_InitRxBasicCAN( &initPara);


      initPara.isInitOk &= CanHL_InitEnd_InitMode( &initPara);
# 1791 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    }
    if (initPara.isInitOk == (uint8)0x01)
    {
      Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) | (((uint8)0x04u)));
    }
    else
    {
      Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = (((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & (uint8)(((uint8)0x08u))));
      errorId = (uint8)0x05u;
    }
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x02u), (errorId)));
  }




  ;

  ;
  return initPara.isInitOk;
}
# 1855 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_ModeTransition( uint8 transitionRequest, uint8 busOffRecovery, uint8 doRamCheck )
{

  uint8 transitionState;



  transitionState = CanLL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
  if(transitionState != (uint8)0x01)
  {
    ApplCanTimerStart( (uint8)7u );;
    do
    {
      transitionState = CanLL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
      if (ApplCanTimerLoop( ((uint8)7u)) != CAN_OK) { break; };
    } while ( transitionState != (uint8)0x01 );
    ApplCanTimerEnd( (uint8)7u );;
  }
  if ( transitionState == (uint8)0x03 )
  {

    Can_ControllerData[(((CanChannelHandle)0))].ModeTransitionRequestOfControllerData = (transitionRequest);
    Can_ControllerData[(((CanChannelHandle)0))].BusOffTransitionRequestOfControllerData = (busOffRecovery);
    Can_ControllerData[(((CanChannelHandle)0))].RamCheckTransitionRequestOfControllerData = (doRamCheck);
  }
  return transitionState;
}
# 1907 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_NotifyTransition( uint8 canState, CanIf_ControllerModeType canIfState, uint8 transitionState )
{

  if ( transitionState == (uint8)0x01 )
  {

    Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((uint8)(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x0Cu)) | canState));

    Can_ControllerData[(((CanChannelHandle)0))].ModeTransitionRequestOfControllerData = (((uint8)0x10u));

    CanIf_ControllerModeIndication( (uint8)(Can_CanIfChannelId[((((CanChannelHandle)0)))]), canIfState );
  }
  ;
}
# 1959 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_WritePrepare( CanTxTransmissionParaStructPtr txPara )
{



  txPara->mailboxElement = 0u;
  txPara->activeSendObject = CanHL_GetActiveSendObject(txPara->mailboxHandle, 0u);



  {
# 2009 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  }
  ;

}
# 2097 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ Can_ReturnType CanHL_WriteStart( CanTxTransmissionParaStructPtr txPara )
{

  Can_ReturnType retval = CAN_OK;


  if ((Can_ActiveSendObject[(txPara->activeSendObject)].StateOfActiveSendObject) == (uint8)0xFF)
  {
    uint8 llretval;

    Can_ActiveSendObject[(txPara->activeSendObject)].PduOfActiveSendObject = (txPara->pdu.swPduHandle);
    Can_ActiveSendObject[(txPara->activeSendObject)].StateOfActiveSendObject = ((uint8)0x01);
# 2124 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    CanLL_TxBegin( txPara);

    txPara->dlcRaw = ((tCanDlc)((tCanDlc)(((uint8)Can_MessageLengthToDlc[(txPara->pdu.length)])) & (tCanDlc)0xFu));



    txPara->messageLen = txPara->pdu.length;
    txPara->frameLen = (Can_DlcToFrameLenght[((uint8)(((uint8)Can_MessageLengthToDlc[(txPara->messageLen)]))) & ((uint8)0xFu)]);
# 2145 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    {
      (txPara)->idRaw0 = (uint32) (((uint32)(((uint32)(txPara->pdu.id)) << 18)) & 0x1FFC0000u);
    }


    CanLL_TxSetMailbox( txPara);
    if(txPara->pdu.sdu != ((void *)0))
    {
      txPara->CanMemCopySrcPtr = txPara->pdu.sdu;
      CanLL_TxCopyToCan( txPara);
    }

    llretval = CanLL_TxStart( txPara);

    CanLL_TxEnd( txPara);
    ;
  }
  else
  {
    retval = CAN_BUSY;
  }
  return retval;
}
# 2199 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ Can_HwHandleType CanHL_GetActiveSendObject( Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement )
{

  Can_HwHandleType activeSendObject;


  activeSendObject = (Can_HwHandleType) (Can_Mailbox[(mailboxHandle)].ActiveSendObjectOfMailbox) + mailboxElement;
# 2215 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  return activeSendObject;
}
# 2332 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_InitBegin( CanInitParaStructPtr initPara )
{

  uint8 initOk;

  initOk = (uint8)0x00;
  if (CanLL_InitBegin( initPara) == (uint8)0x01)
  {
# 2348 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    initOk = CanLL_InitBeginSetRegisters( initPara);
  }
  return initOk;
}
# 2456 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_InitTxBasicCAN( CanInitParaStructPtr initPara )
{

  uint8 initOk;
  uint8 mailboxState;
  Can_HwHandleType activeSendObject;





  initOk = (uint8)0x01;
  initPara->mailboxHandle = (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxTxBasicStartIdxOfControllerConfig);



  {



    initPara->hwObjHandle = (Can_Mailbox[(initPara->mailboxHandle)].HwHandleOfMailbox);
    activeSendObject = CanHL_GetActiveSendObject(initPara->mailboxHandle, 0u);




    {
      Can_ActiveSendObject[(activeSendObject)].StateOfActiveSendObject = ((uint8)0xFF);
    }
# 2511 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    mailboxState = CanLL_InitMailboxTx( initPara);
    initOk &= mailboxState;
# 2530 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  }
  return initOk;
}
# 2652 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_InitRxBasicCAN( CanInitParaStructPtr initPara )
{

  uint8 initOk;
  uint8 mailboxState;





  initOk = (uint8)0x01;
  for (initPara->mailboxHandle = (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxRxBasicStartIdxOfControllerConfig); initPara->mailboxHandle < (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxRxBasicEndIdxOfControllerConfig); initPara->mailboxHandle++)
  {
    initPara->hwObjHandle = (Can_Mailbox[(initPara->mailboxHandle)].HwHandleOfMailbox);
# 2675 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    mailboxState = CanLL_InitMailboxRxBasicCan( initPara);
    initOk &= mailboxState;
# 2694 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  }
  return initOk;
}
# 2720 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_InitEnd_InitMode( CanInitParaStructPtr initPara )
{

  uint8 initOk;


  initOk = (uint8)0x01;


  initOk &= CanLL_InitEndSetRegisters( initPara);
  initOk &= CanLL_InitEnd( initPara );
  return initOk;
}
# 2762 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_RxBasicCanPolling( void )
{

  tCanTaskParaStruct taskPara;



  if(CanLL_RxBasicIsGlobalIndPending() == (uint8)0x01)
  {

    for (taskPara.mailboxHandle = (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxRxBasicStartIdxOfControllerConfig); taskPara.mailboxHandle < (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxRxBasicEndIdxOfControllerConfig); taskPara.mailboxHandle++)
    {
      taskPara.hwObjHandle = (Can_Mailbox[(taskPara.mailboxHandle)].HwHandleOfMailbox);




      {

        CanLL_RxBasicProcessPendings( &taskPara);
      }
    }
  }
}
# 2879 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanHL_RxMsgReceivedNotification( CanRxInfoStructPtr rxStructPtr )
{




  uint8 errorId;
  errorId = (uint8)0x00u;
# 2946 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {
    CanIf_RxIndicationAsr403((rxStructPtr->localMailboxHandle), (rxStructPtr->localId), (rxStructPtr->localDlc), ((Can_DataPtrType)rxStructPtr->pChipData));
  }

  ;
  ;
  return errorId;
}
# 3173 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_WriteReg32( CanChipMsgPtr32 regPtr, uint32 value, uint32 readMask, CanInitParaStructPtr initPara )
{
  uint8 result = (uint8)0x00;

  *regPtr = value;
# 3193 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
  ;




  return result;
}
# 3277 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitBegin( CanInitParaStructPtr initPara )
{

  initPara->canInterruptOldStatus = (uint32)((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IE);
  ;
  ;

  return((uint8)0x01);
}
# 3475 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitBeginSetRegisters( CanInitParaStructPtr initPara )
{
  uint8 result;

  result = CanLL_SetAllRegister( initPara);

  CanLL_SetRegisterMcMcan( initPara);

  result &= CanLL_SetAllFilter( initPara);


  return(result);
}
# 3517 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitMailboxTx( CanInitParaStructPtr initPara )
{
  Can_HwHandleType mailboxElement = 0;



  {

    initPara->pTXB = (CanElmType*) &(*((CanElmType*) ((Can_ShmAdr[(((CanChannelHandle)0))].TXBAOfShmAdr) + ((uint32)(((initPara->hwObjHandle + mailboxElement)) * (8u + CanLL_xES2Bytes[(Can_ShmElementSize[(((CanChannelHandle)0))].TBDSOfShmElementSize)]))))));
# 3534 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    initPara->pTXB->E1 = 0x00000000UL;






    {




    }
  }
  return((uint8)0x01);
}
# 3719 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitMailboxRxBasicCan( CanInitParaStructPtr initPara )
{


  ;
  ;
  return((uint8)0x01);
}
# 3837 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitEndSetRegisters( CanInitParaStructPtr initPara )
{







  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->SIDFC), (uint32)( ((uint32)(initPara->stdFeCount) << 16) | ((uint32)(Can_SIDFC[(((CanChannelHandle)0))].FLSSAOfSIDFC)) ), 0x00FFFFFCUL, initPara);
# 3877 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBTIE), (uint32)(initPara->txbtie), 0xFFFFFFFFUL, initPara);
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBCIE), (uint32)(initPara->txbtie), 0xFFFFFFFFUL, initPara);

  (Can_ControllerData[(((CanChannelHandle)0))].IntEnableOfControllerData) = initPara->ie;


  if ( ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u) ){
    (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IE), (uint32)(initPara->canInterruptOldStatus), 0x1FCFFFFFUL, initPara);
  }
  else
  {

    if(initPara->ie > 0UL)
    {
      (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IE), (uint32)(initPara->ie), 0x1FCFFFFFUL, initPara);
    }
    else
    {
      (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IE), (uint32)0x00000000UL, 0x1FCFFFFFUL, initPara);
    }







  }
# 3913 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
  return((uint8)0x01);
}
# 3938 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitEnd( CanInitParaStructPtr initPara )
{




 uint8 return_value;



  ;
  ;
  return_value = initPara->isInitOk;

  return (return_value);
}
# 4095 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitPowerOn(void)
{
  uint8 ret;







  {





    CanLL_SetGlobalRegisterMcMcan();

    ret = Can_EccInit();
  }
  return(ret);
}
# 4141 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_InitPowerOnChannelSpecific(void)
{




  (Can_ControllerData[(((CanChannelHandle)0))].BusOffNotificationOfControllerData) = 0;



  (Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) = 0;
  (Can_ControllerData[(((CanChannelHandle)0))].IntEnableOfControllerData) = 0;
  (Can_ControllerData[(((CanChannelHandle)0))].PrevModeOfControllerData) = 0xFF;
  (Can_ControllerData[(((CanChannelHandle)0))].LastStateOfControllerData) = 0xFF;
  return((uint8)0x01);
}
# 4178 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_InitMemoryPowerOn(void)
{

}
# 4211 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxBegin( CanTxTransmissionParaStructPtr txPara)
{
# 4221 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    {
      txPara->lpTXB = &(*((CanElmType*) ((Can_ShmAdr[(((CanChannelHandle)0))].TXBAOfShmAdr) + ((uint32)((((uint32)txPara->hwObjHandle + (uint32)(txPara->mailboxElement))) * (8u + CanLL_xES2Bytes[(Can_ShmElementSize[(((CanChannelHandle)0))].TBDSOfShmElementSize)]))))));
    }
# 4233 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
}
# 4259 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxSetMailbox( CanTxTransmissionParaStructPtr txPara)
{

  txPara->lpTXB->E0 = txPara->idRaw0;


  txPara->lpTXB->E1 = ( ((uint32) (((uint32)txPara->dlcRaw) << 16)) |
                         ((uint32) (((uint32)txPara->fdType) << 16)) |
                         ((uint32) (((uint32)txPara->fdBrsType) << 16)) );






  ;
}
# 4300 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxCopyToCan( CanTxTransmissionParaStructPtr txPara)
{




  uint8 curWord, curByte;
  tAlignCopyElem copyElem;


  curByte = 0u;

  for (curWord = 0u; (curWord << 2u) < txPara->frameLen; curWord++)



  {

    do
    {

      if(curByte < txPara->messageLen)

      {
        copyElem.b[curByte & 0x03u] = txPara->CanMemCopySrcPtr[curByte];
      }

      else
      {
        copyElem.b[curByte & 0x03u] = txPara->paddingVal;
      }

      curByte++;
    } while((curByte & 0x03u) != 0u);
# 4355 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    txPara->lpTXB->data[curWord] = copyElem.dw;
  }

  ;

}
# 4388 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_TxStart( CanTxTransmissionParaStructPtr txPara)
{
  uint8 retvalue = (uint8)0x01;
  uint32 txBRP;
# 4401 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {
    txBRP = (uint32)(0x00000001UL << ((txPara->hwObjHandle) + (txPara->mailboxElement)));
  }





  {

    ;
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBAR = txBRP;
# 4421 "../../../../CBD2300515_D00/BSW/Can/Can.c"
     (Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) |= txBRP;
  }
  return(retvalue);
}
# 4447 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxEnd( CanTxTransmissionParaStructPtr txPara)
{

  ;
  ;
}
# 4478 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_TxIsGlobalConfPending(void)
{
  uint8 retVal = (uint8)0x00;

  if((Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) != 0u)
  {
    retVal = (uint8)0x01;
  }
  return retVal;
}
# 4516 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxProcessPendings( CanTaskParaStructPtr taskPara)
{
 
  uint32 txBRP;
  Can_HwHandleType mailboxElement = 0;

  SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0();




    {

      txBRP = CanLL_if_TxIsObjConfPending( ((uint32)(0x00000001UL << (taskPara->hwObjHandle + mailboxElement))) );

      if(txBRP == (uint8)0x01)
      {
        CanHL_TxConfirmationPolling( taskPara->mailboxHandle, mailboxElement, taskPara->hwObjHandle + mailboxElement);
      }
    }
  SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0();
}
# 4565 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxConfBegin( CanTxConfirmationParaStructPtr txConfPara)
{
  uint32 txBRP = (uint32)(0x00000001UL << (txConfPara->hwObjHandle));

 


  if (!((((Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) & txBRP) != 0UL))) {((void) Det_ReportError(80u, 0, (0x60u), ((((uint8)0xA6)))));};

  SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0();

  (Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) &= ((uint32)~txBRP);
  SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0();
}
# 4651 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TxConfEnd( CanTxConfirmationParaStructPtr txConfPara)
{

  ;
  ;
}
# 4692 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_RxBasicMsgReceivedBegin( CanRxBasicParaStructPtr rxBasicPara)
{
  uint8 indexL;

  uint8 fElmSize;
# 4710 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {
    rxBasicPara->pFifoAck = &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0A);
    rxBasicPara->pFifoStatus = &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0S);
    rxBasicPara->fGetIndex = (uint8)(rxBasicPara->pFifoStatus->B.FnGI);
    rxBasicPara->pShm = ( (CanElmType*)((Can_ShmAdr[(((CanChannelHandle)0))].RXF0AOfShmAdr) + ((uint32)(((rxBasicPara->fGetIndex)) * (8u + CanLL_xES2Bytes[(Can_ShmElementSize[(((CanChannelHandle)0))].F0DSOfShmElementSize)])))) );
  }


  rxBasicPara->fElm.E0 = rxBasicPara->pShm->E0;
  rxBasicPara->fElm.E1 = rxBasicPara->pShm->E1;

  fElmSize = (Can_DlcToFrameLenght[((uint8)(((rxBasicPara->fElm.E1) & 0x000F0000UL) >> 16u)) & ((uint8)0xFu)]);
  for(indexL = 0u; ( ((indexL << 2u) < fElmSize) && (indexL < ((Can_Mailbox[(rxBasicPara->mailboxHandle)].MaxDataLenOfMailbox)/4u)) ); indexL++)



  {
    rxBasicPara->fElm.data[indexL] = (uint32)(rxBasicPara->pShm->data[indexL]);
  }


  rxBasicPara->rxStruct.pChipMsgObj = (CanChipMsgPtr) &rxBasicPara->fElm.E0;
  rxBasicPara->rxStruct.pChipData = (CanChipDataPtr) &rxBasicPara->fElm.data[0];

  return((uint8)0x01);
}
# 4760 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_RxBasicReleaseObj( CanRxBasicParaStructPtr rxBasicPara)
{
  if( (((uint32)*(uint32*) rxBasicPara->pFifoStatus) & 0x0000007FUL) > 0UL)
  {



    *rxBasicPara->pFifoAck = (rxBasicPara->fGetIndex & 0x0000003FUL);
  }
  else
  {
    ((void) Det_ReportError(80u, 0, (0x60u), ((uint8)0x04u)));
  }
  ;
}
# 4799 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_RxBasicMsgReceivedEnd( CanRxBasicParaStructPtr rxBasicPara)
{

  ;
  ;
}
# 4831 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_RxBasicIsGlobalIndPending(void)
{
  uint8 retvalue = (uint8)0x00;
# 4849 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0S.R & 0x0000007FUL) > 0u) )

  {
    retvalue = (uint8)0x01;
  }
  return retvalue;
}
# 4881 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_RxBasicProcessPendings( CanTaskParaStructPtr taskPara)
{
  uint8 fillLevel;
# 4893 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {
    fillLevel = (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0S.B.FnFL;
  }


  while( ((fillLevel) > 0u) )
  {
    fillLevel--;
    CanHL_BasicCanMsgReceivedPolling( taskPara->mailboxHandle, taskPara->hwObjHandle);
  }

}
# 5325 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_ErrorHandlingBegin(void)
{
# 5355 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;





}
# 5386 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_BusOffOccured(void)
{
  uint8 retVal = (uint8)0x00;

  if(CanErrorHandlingBusOff() == (uint8)0x01)
  {
    retVal = (uint8)0x01;
  }
  return(retVal);
}
# 5423 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_RxBasicCanOverrun(void)
{
  uint8 ret_val = (uint8)0x00;





  if( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR) & (0x00000008UL) ) != 0UL)

  {


    CanLL_TriCoreErratum_AI_H001( (uint32)(0x00000008UL | 0x00000004UL | 0x00000080UL | 0x00000040UL));



    ret_val = (uint8)0x01;
  }
  return(ret_val);
}
# 5471 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_ErrorHandlingEnd(void)
{



  if( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR) & (0x00000008UL) ) != 0UL)

  {


    CanLL_TriCoreErratum_AI_H001( (uint32)(0x00000008UL | 0x00000004UL | 0x00000080UL | 0x00000040UL));



  }
}
# 5552 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static uint8 CanLL_ModeTransition( uint8 mode, uint8 busOffRecovery, uint8 ramCheck)
{
  uint8 ret = (uint8)0x00;

  switch(mode)
  {
    case ((uint8)0x06u):
    case ((uint8)0x0Au):




      if( ((Can_ControllerData[(((CanChannelHandle)0))].PrevModeOfControllerData) == mode) && ((Can_ControllerData[(((CanChannelHandle)0))].LastStateOfControllerData) == (uint8)0x03) )
      {
        ret = CanLL_StartRequest();
      }
      else
      {
        ret = CanHL_ReInit( ramCheck);
        if(ret == (uint8)0x01)
        {
          ret = CanLL_StartRequest();
        }
      }
      break;

    case ((uint8)0x05u):


      ret = CanLL_StartRequest();
      break;
# 5603 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    case ((uint8)0x09u):
    case ((uint8)0x04u):

        if( ((Can_ControllerData[(((CanChannelHandle)0))].PrevModeOfControllerData) == mode) && ((Can_ControllerData[(((CanChannelHandle)0))].LastStateOfControllerData) == (uint8)0x03) )
        {
          ret = CanLL_StopRequest();
        }
        else
        {
          ret = CanHL_ReInit( ramCheck);
          if(ret == (uint8)0x01)
          {
            ret = CanLL_StopRequest();
          }
        }
        if(ret == (uint8)0x01) {
          ;
        }
        CanHL_CleanUpSendState();
      break;

    case ((uint8)0x03u):

        ret = CanLL_StopRequest();
        if(ret == (uint8)0x01) {
          CanLL_StopReinit();
          ;
          CanHL_CleanUpSendState();
        }
      break;

    default:

      break;
  }

  (Can_ControllerData[(((CanChannelHandle)0))].PrevModeOfControllerData) = mode;
  (Can_ControllerData[(((CanChannelHandle)0))].LastStateOfControllerData) = ret;

  ;
  return ret;
}
# 5678 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_StopReinit(void)
{
  uint32 tmpECR;
# 5690 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  tmpECR = (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->ECR;
  ;


  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR |= 0x00000002UL;


  (Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) = 0;


  if (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBRP)!=0UL)
  {
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBCR = (uint32)((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBRP);
  }
# 5712 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) != 0u)
  {
    if((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) == 1u)
    {

      (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR |= (uint32)(0x00000100UL | 0x00000200UL);




    }
    else
    {

      (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR &= (uint32)(~(0x00000100UL | 0x00000200UL));
      (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR |= (uint32)(0x00000100UL);




    }
  }
  else
  {

    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR &= (uint32)(~(0x00000100UL | 0x00000200UL));



  }
# 5752 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ApplCanTimerStart(((uint8)0x01u));
  while( ((((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0S).B.FnFL) > 0UL) && (ApplCanTimerLoop(((uint8)0x01u)) != CAN_NOT_OK) )
  {
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0A = (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0S.B.FnGI;
  }
  ApplCanTimerEnd(((uint8)0x01u));
# 5768 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR = 0x3FFFFFFFUL;
}
# 5802 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_CanInterruptDisable( tCanLLCanIntOldPtr localInterruptOldFlagPtr)
{







  *(localInterruptOldFlagPtr) = (uint32)(0x00003CFFu & *(((uint32*)(Can_SRN_Address[(((CanChannelHandle)0))]))));
  *(((uint32*)(Can_SRN_Address[(((CanChannelHandle)0))]))) = ((((*localInterruptOldFlagPtr) & 0xFFFFFBFFUL)));

}
# 5843 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_CanInterruptRestore( tCanLLCanIntOld localInterruptOldFlag)
{







  *(((uint32*)(Can_SRN_Address[(((CanChannelHandle)0))]))) = (((uint32)(0x00003CFFu & (*(((uint32*)(Can_SRN_Address[(((CanChannelHandle)0))]))) | localInterruptOldFlag))));

}
# 5907 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 Can_EccInit(void)
{

  uint8 ret = (uint8)0x01;
# 5977 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  uint16 ch, idx;
  uint32 length;
  uint32* dst;


  for(ch = 0; ch < 1u; ch++)
  {
    dst = (uint32*) (Can_ShmAdr[(ch)].StartAdrOfShmAdr);
    length = ((Can_ShmAdr[(ch)].StopAdrOfShmAdr) - (Can_ShmAdr[(ch)].StartAdrOfShmAdr)) >> 2;
    for(idx = 0; idx < length; idx++)
    {
      dst[idx] = 0x00000000UL;
    }
  }

  return (ret);
}
# 6021 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint32 CanLL_if_TxIsObjConfPending( uint32 txBuffer )
{
  uint32 ret;

  ret = (uint8)0x01;


  if( (((Can_ControllerData[(((CanChannelHandle)0))].TXBRPOfControllerData) & txBuffer) != 0u) && (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBTO & txBuffer) != 0u) )
  {
  }
  else
  {
    ret = (uint8)0x00;
  }
  return(ret);
}
# 6064 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_TriCoreErratum_AI_H001( uint32 CanIrFlag)
{

  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR = (CanIrFlag);

  if ( ((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR & CanIrFlag) != 0u )
  {
    ApplCanTimerStart(((uint8)0x05u));
    do
    {

      (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR = (CanIrFlag);
    } while( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR & CanIrFlag) != 0u ) && (ApplCanTimerLoop(((uint8)0x05u)) != CAN_NOT_OK) );
    ApplCanTimerEnd(((uint8)0x05u));
  }
}
# 6208 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanErrorHandlingBusOff(void)
{

  uint8 ret;
# 6228 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if( ((((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR & 0x02000000UL) != 0UL) && (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->PSR & 0x00000080UL) != 0UL))

    )
  {

    {
      if((Can_ControllerData[(((CanChannelHandle)0))].BusOffNotificationOfControllerData) == 0x01u)
      {
      }
      else
      {
        (Can_ControllerData[(((CanChannelHandle)0))].BusOffNotificationOfControllerData) = 0x01u;
      }
    }


    CanLL_TriCoreErratum_AI_H001( (uint32)(0x02000000UL));



    ret = (uint8)0x01;
  }
  else
  {
    ret = (uint8)0x00;
  }

  if((((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR & 0x00020000UL) != 0UL))
  {


        ((void) Det_ReportError(80u, 0, (0x53u), ((uint8)0x13u)));

    if(((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000004UL) != 0UL)
    {
# 6312 "../../../../CBD2300515_D00/BSW/Can/Can.c"
      (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR &= ( (~0x00000004UL) );

      ret = (uint8)0x01;
      }
    else
    {


    }

    CanLL_TriCoreErratum_AI_H001( (uint32)(0x00020000UL));



  }
  return(ret);
}
# 6354 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_SetAllFilter( CanInitParaStructPtr initPara)
{





  initPara->pFS = &(Can_SIDFE[((Can_SIDFC[(((CanChannelHandle)0))].SIDFEStartIdxOfSIDFC))]);
  for(initPara->tmpVal = 0; initPara->tmpVal < ((Can_SIDFC[(((CanChannelHandle)0))].LSSOfSIDFC)); (initPara->tmpVal)++)
  {
# 6372 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    {
      (void)CanLL_WriteReg32( &((*((tSIFEType*) ((Can_ShmAdr[(((CanChannelHandle)0))].SIDFAOfShmAdr) + ((uint32)(initPara->stdFeCount) << 2u)))).S0), (uint32)(initPara->pFS[initPara->tmpVal]), 0xFFFF07FFUL, initPara);
      (initPara->stdFeCount)++;
    }
  }
# 6403 "../../../../CBD2300515_D00/BSW/Can/Can.c"
;



  return((uint8)0x01);

}
# 6446 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_SetAllRegister( CanInitParaStructPtr initPara)
{
  uint32 LocalRegValue;
  initPara->tmpVal = 0;

  initPara->stdFeCount = 0;






  ;
# 6497 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR = 0x00000001UL;
  ApplCanTimerStart(((uint8)0x00u));
  while( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) == 0UL) && (ApplCanTimerLoop(((uint8)0x00u)) != CAN_NOT_OK) )
  { }
  ApplCanTimerEnd(((uint8)0x00u));







  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR = (uint32)(0x00000001UL | 0x00000002UL);
  ApplCanTimerStart(((uint8)0x00u));
  while( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000002UL) == 0UL) && (ApplCanTimerLoop(((uint8)0x00u)) != CAN_NOT_OK) )
  { }
  ApplCanTimerEnd(((uint8)0x00u));



  LocalRegValue = (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR;







    LocalRegValue &= (uint32)~0x00008000UL;




  if ((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) != 0u)
  {

      LocalRegValue |= (uint32)( 0x00000100UL | 0x00000200UL);



  }
  else
  {


    LocalRegValue &= (uint32)(~(0x00000100UL | 0x00000200UL));



  }
# 6556 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR), (uint32)LocalRegValue, 0xFFFFFFFFUL, initPara);



  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->IR = 0x3FFFFFFFUL;
# 6587 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RWD), (uint32)0x00000000UL, 0x000000FFUL, initPara);



  (void)CanLL_WriteReg32( &(( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->FBTP, (Can_FBTP[(initPara->initObject)]), 0xFFFFFFFFUL, initPara );
  (void)CanLL_WriteReg32( &(( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TDCR, (Can_TDCR[(initPara->initObject)]), 0xFFFFFFFFUL, initPara );
# 6609 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &(( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->BTP,(Can_BTP[(initPara->initObject)]),0xFFFFFFFFUL, initPara );





  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TSCC), (uint32)(0x00000000UL|0x00000000UL), 0x000F0003UL, initPara);




  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TSCV = 0x00000000UL;
# 6629 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TOCC), (uint32)(0UL), 0xFFFF0007UL, initPara);
# 6639 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TOCV = 0x00000000UL;


  initPara->tmpVal = (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->ECR;
  ;


  (void)CanLL_WriteReg32( &(( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->GFC,(Can_GFC[(((CanChannelHandle)0))]), 0xFFFFFFFFUL, initPara );







  (void)CanLL_WriteReg32( &(( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->XIDAM,((Can_XIDAM[(((CanChannelHandle)0))])), 0xFFFFFFFFUL, initPara );


  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXBC), (uint32)(Can_BufferConfig[(((CanChannelHandle)0))].RXBCOfBufferConfig), 0x0000FFFCUL, initPara);







  LocalRegValue = (uint32)( (((uint32)(Can_ShmElementSize[(((CanChannelHandle)0))].RBDSOfShmElementSize))<<8) | (((uint32)(Can_ShmElementSize[(((CanChannelHandle)0))].F1DSOfShmElementSize))<<4) | ((uint32)(Can_ShmElementSize[(((CanChannelHandle)0))].F0DSOfShmElementSize)) );
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXESC.R), (uint32)LocalRegValue, 0x00000777UL, initPara);







  if((Can_ControllerConfig[(((CanChannelHandle)0))].MailboxRxBasicLengthOfControllerConfig) > 0u)
  {
    (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0C.R), (uint32)((Can_BufferConfig[(((CanChannelHandle)0))].RXF0COfBufferConfig)), 0xFF7FFFFCUL, initPara);
  }
  else
  {
    (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF0C.R), (uint32)(0x00000000UL), 0xFF7FFFFCUL, initPara);
  }
# 6698 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->RXF1C.R), (uint32)(0x00000000UL), 0xFF7FFFFCUL, initPara);
# 6710 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBC), (uint32)((Can_BufferConfig[(((CanChannelHandle)0))].TXBCOfBufferConfig)), 0x7F3FFFFCUL, initPara);




  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXESC), (uint32)((Can_ShmElementSize[(((CanChannelHandle)0))].TBDSOfShmElementSize)), 0x00000007UL, initPara);
# 6724 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXEFC), (uint32)(0x00000000UL), 0x3F3FFFFCUL, initPara);



  initPara->ie = 0x00000000UL;
  initPara->txbtie = 0x00000000UL;
# 6815 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if(((Can_ControllerConfig[(((CanChannelHandle)0))].IsTTCanOfControllerConfig) != 0u))
  {

    (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TTOCF), (uint32)(0x00000000UL), 0x07FFFFFBUL, initPara);
  }


  return((uint8)0x01);
}
# 6838 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_SetRegisterMcMcan( CanInitParaStructPtr localInfo)
{

  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->GRINT1),(uint32)((Can_INT_RoutingGroup[(((CanChannelHandle)0))])),0xFFFFFFFFUL, localInfo);
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->GRINT2),(uint32)((Can_INT_RoutingGroup[(((CanChannelHandle)0))])),0xFFFFFFFFUL, localInfo);

  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NTCCR),(uint32)(0x00000000UL),0x001CCF00UL, localInfo);

  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NTATTR),(uint32)(0x00000000UL),0x0100FFFFUL, localInfo);
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NTBTTR),(uint32)(0x00000000UL),0x0100FFFFUL, localInfo);
  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NTCTTR),(uint32)(0x00000000UL),0x0100FFFFUL, localInfo);

  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NTRTR),(uint32)(0x00000000UL),0x0040FFFFUL, localInfo);

  (void)CanLL_WriteReg32( &((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->NPCR),(uint32)(0x00000400UL | (Can_ControllerConfig[(((CanChannelHandle)0))].RxSelectionOfControllerConfig)),0x00000707UL, localInfo);
# 6866 "../../../../CBD2300515_D00/BSW/Can/Can.c"
}
# 6915 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanLL_SetGlobalRegisterMcMcan(void)
{

  uint8 indx;


  Appl_UnlockEndinit();
# 6932 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {

    for (indx=0;indx<1u; indx++)
    {
      *(&((( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->CLC)) = (0);
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->MCR = 0xC0000000UL;
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->MCR = 0xC00000FFUL;
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->MCR = 0x000000FFUL;
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->BUFADR = 0x00000000UL;
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->MECR = 0x00000000UL;
      (( tCanGlobalObjType * )((Can_CanSubSystemBaseAdr[(indx)])))->MESTAT = 0x00000000UL;
    }
  }


  Appl_LockEndinit();
}
# 7434 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_StartRequest(void)
{
  uint8 transitionRequest;
  transitionRequest = (uint8)0x01;


  if(((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) == 0UL)
  {
    transitionRequest = (uint8)0x01;
  }
  else
  {





    ;



    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR &= (uint32)~(0x00000010UL);
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR &= (uint32)~(0x00000001UL);
# 7466 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    ApplCanTimerStart(((uint8)0x00u));
    while( (((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) != 0UL) && (ApplCanTimerLoop(((uint8)0x00u)) != CAN_NOT_OK) )
    { }
    ApplCanTimerEnd(((uint8)0x00u));
    if ( ((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) != 0UL)
    {
      transitionRequest = (uint8)0x03;
    }
  }

  return(transitionRequest);
}
# 7582 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ uint8 CanLL_StopRequest(void)
{
  uint8 transitionRequest;
  transitionRequest = (uint8)0x00;


  if( ((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) == 0UL)
  {
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->TXBCR = 0xFFFFFFFFUL;
# 7625 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    (( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR |= 0x00000001UL;
    if(((( tCanObjType * )((Can_ControllerConfig[(((CanChannelHandle)0))].BasisAdrOfControllerConfig)))->CCCR & 0x00000001UL) != 0x00000001UL)

    {
      transitionRequest = (uint8)0x03;
    }
    else
    {
      transitionRequest = (uint8)0x01;
    }
  }
  else
  {
    transitionRequest = (uint8)0x01;
  }
  return(transitionRequest);
}
# 7666 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_TxConfirmationPolling( Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement, Can_HwHandleType hwObjHandle )
{

  Can_DisableControllerInterrupts((uint8)((CanChannelHandle)0));

  CanHL_TxConfirmation( mailboxHandle, mailboxElement, hwObjHandle);
  Can_EnableControllerInterrupts((uint8)((CanChannelHandle)0));
}
# 7730 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static void CanHL_TxConfirmation( Can_HwHandleType mailboxHandle, Can_HwHandleType mailboxElement, Can_HwHandleType hwObjHandle )
{


  uint8 errorId;
  tCanTxConfirmationParaStruct txConfPara;



  ;
  errorId = (uint8)0x00u;
  txConfPara.mailboxHandle = mailboxHandle;
  txConfPara.mailboxElement = mailboxElement;
  txConfPara.hwObjHandle = hwObjHandle;
# 7769 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {

    PduIdType tmp_pdu;
# 7784 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    txConfPara.activeSendObject = CanHL_GetActiveSendObject(txConfPara.mailboxHandle, txConfPara.mailboxElement);
    {

      CanLL_TxConfBegin( &txConfPara);

      tmp_pdu = (Can_ActiveSendObject[(txConfPara.activeSendObject)].PduOfActiveSendObject);




      {
# 7850 "../../../../CBD2300515_D00/BSW/Can/Can.c"
        Can_ActiveSendObject[(txConfPara.activeSendObject)].StateOfActiveSendObject = ((uint8)0xFF);

        {
# 7861 "../../../../CBD2300515_D00/BSW/Can/Can.c"
          {
            CanIf_TxConfirmation(tmp_pdu);
          }
        }
# 7876 "../../../../CBD2300515_D00/BSW/Can/Can.c"
      }

      CanLL_TxConfEnd( &txConfPara);
    }
  }
# 7891 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
  ;
}
# 8073 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static __inline__ void CanHL_BasicCanMsgReceivedPolling( Can_HwHandleType rxMailboxHandle, Can_HwHandleType hwObjHandle )
{

  Can_DisableControllerInterrupts((uint8)((CanChannelHandle)0));

  CanHL_BasicCanMsgReceived( rxMailboxHandle, hwObjHandle );
  Can_EnableControllerInterrupts((uint8)((CanChannelHandle)0));
}
# 8123 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static void CanHL_BasicCanMsgReceived( Can_HwHandleType rxMailboxHandle, Can_HwHandleType hwObjHandle )
{

  uint8 errorId;
  tCanRxBasicParaStruct rxBasicPara;
  ;
  errorId = (uint8)0x00u;
  rxBasicPara.mailboxHandle = rxMailboxHandle;
  rxBasicPara.hwObjHandle = hwObjHandle;
# 8144 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {


    if (CanLL_RxBasicMsgReceivedBegin( &rxBasicPara) == (uint8)0x01)
    {




      {





        {


          rxBasicPara.rxStruct.localDlc = (uint8) (Can_DlcToFrameLenght[((uint8)(((&(rxBasicPara.rxStruct)))->pChipMsgObj->uB1.rb1.DLC)) & ((uint8)0xFu)]);
# 8177 "../../../../CBD2300515_D00/BSW/Can/Can.c"
          {
            rxBasicPara.rxStruct.localId = (uint16) (((((&(rxBasicPara.rxStruct)))->pChipMsgObj->uB0.B0) & 0x1FFC0000UL) >> 18u);


            if ( (tCanFdType) (((((&(rxBasicPara.rxStruct)))->pChipMsgObj->uB1.B1) >> 16u) & ((uint8)0x20U)) == ((uint8)0x20U) )
            {
              rxBasicPara.rxStruct.localId |= (Can_IdType)0x4000U;
            }

            if (((tCanFdType) (((((&(rxBasicPara.rxStruct)))->pChipMsgObj->uB1.B1) >> 16u) & ((uint8)0x20U)) != ((uint8)0x20U)) && (rxBasicPara.rxStruct.localDlc > 8u))
            {
              errorId = (uint8)0x03u;
            }
            else
# 8204 "../../../../CBD2300515_D00/BSW/Can/Can.c"
            if (rxBasicPara.rxStruct.localDlc > (Can_Mailbox[(rxBasicPara.mailboxHandle)].MaxDataLenOfMailbox))
            {
              errorId = (uint8)0x03u;
            }
            else
            {


              rxBasicPara.rxStruct.localMailboxHandle = rxBasicPara.mailboxHandle;
              errorId = CanHL_RxMsgReceivedNotification( &(rxBasicPara.rxStruct));
            }
          }
        }
      }
    }

    CanLL_RxBasicReleaseObj( &rxBasicPara);
    CanLL_RxBasicMsgReceivedEnd( &rxBasicPara);
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x50u), (errorId)));
  }



  ;
}
# 8461 "../../../../CBD2300515_D00/BSW/Can/Can.c"
static void CanHL_ErrorHandling( void )
{

  uint8 errorId;
  errorId = (uint8)0x00u;
# 8480 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {


    CanLL_ErrorHandlingBegin();
# 8503 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    if ( (CanLL_BusOffOccured() == (uint8)0x01) && (!((Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData) != 0u) ))
    {

      SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6();

      Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData = (1u);

      (void)CanHL_ModeTransition( ((uint8)0x09u), ((uint8)0x00u), (uint8)0x00);


      Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((uint8)(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x0Cu)) | ((uint8)0x02u)));
      SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6();

      CanIf_ControllerBusOff((uint8)(Can_CanIfChannelId[((((CanChannelHandle)0)))]));
    }




    if (CanLL_RxBasicCanOverrun() == (uint8)0x01)
    {

      errorId = (uint8)0x07u;



    }



    CanLL_ErrorHandlingEnd();
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x53u), (errorId)));
  }



}
# 8605 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "Include/MemMap.h" 1
# 1179 "Include/MemMap.h"
#pragma section
# 8606 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2



# 1 "Include/MemMap.h" 1
# 1044 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 8610 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
# 8689 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_InitMemory( void )
{



  canConfigInitFlag = ((uint8)0x00u);





  CanLL_InitMemoryPowerOn();



}
# 8729 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 Std_ReturnType Can_ChangeBaudrate( uint8 Controller, const uint16 Baudrate )
{

  Std_ReturnType retval;
  uint8 errorId;
  retval = 1u;
  errorId = (uint8)0x08u;




  if ( canConfigInitFlag == ((uint8)0x00u) )
  {
    errorId = (uint8)0x05u;
  }
  else







  if ( ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x02u)) != ((uint8)0x02u) )
  {
    errorId = (uint8)0x06u;
  }
  else

  {

    uint8_least baudrateIndex;
    for (baudrateIndex = (Can_InitObjectStartIndex[(((CanChannelHandle)0))]); baudrateIndex < (Can_InitObjectStartIndex[(((CanChannelHandle)0) + 1u)]); baudrateIndex++)
    {
      if ((Can_InitObjectBaudrate[(baudrateIndex)]) == Baudrate)
      {
        uint8 transitionState;
        Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData = ((uint8)baudrateIndex);
        transitionState = CanHL_ModeTransition( ((uint8)0x04u), ((uint8)0x01u), (uint8)0x00);
        if (transitionState == (uint8)0x01)
        {
          Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) | ((uint8)0x02u));
        }
        retval = 0u;
        errorId = (uint8)0x00u;
        break;
      }
    }
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x0Du), (errorId)));
  }




  ;

  return retval;
}
# 8996 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_Init( Can_ConfigPtrType ConfigPtr )
{

  uint8 errorId;
 
  ;
  errorId = (uint8)0x00u;
# 9031 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;

  ConfigPtr = Can_ConfigDataPtr;



  if (canConfigInitFlag != ((uint8)0x00u))
  {

    errorId = (uint8)0x06u;
  }
  else

  if ( ( 0x0103u != (uint16)0x0103u ) ||
        ( 0x0504u != (uint16)0x0504u ) )
  {




    errorId = (uint8)0x05u;

  }
  else
  {

    {
      canIsRxTaskLocked = (uint8)0x00;
# 9067 "../../../../CBD2300515_D00/BSW/Can/Can.c"
      if (CanLL_InitPowerOn() == (uint8)0x01)
      {
        canConfigInitFlag = ((uint8)0x04u);



        {







          Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = (((uint8)0x00u));
          Can_ControllerData[(((CanChannelHandle)0))].ModeTransitionRequestOfControllerData = (((uint8)0x10u));
          Can_ControllerData[(((CanChannelHandle)0))].BusOffTransitionRequestOfControllerData = (((uint8)0x01u));
          Can_ControllerData[(((CanChannelHandle)0))].RamCheckTransitionRequestOfControllerData = ((uint8)0x00);
          Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData = (0u);
          Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData = (0u);







          if (CanLL_InitPowerOnChannelSpecific() == (uint8)0x01)
          {
            uint8 transitionState;

            Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData = ((uint8)((Can_InitObjectStartIndex[(((CanChannelHandle)0))]) + (Can_ControllerConfig[(((CanChannelHandle)0))].CanControllerDefaultBaudrateIdxOfControllerConfig)));
            transitionState = CanHL_ModeTransition( ((uint8)0x04u), ((uint8)0x01u), (uint8)0x01);
            if (transitionState == (uint8)0x01)
            {
              Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData = ((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) | ((uint8)0x02u));
            }

            else
            {
              errorId = (uint8)0x06u;
            }

          }
        }
      }
    }
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x00u), (errorId)));
  }



  ;
}
# 9171 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 Can_ReturnType Can_SetControllerMode( uint8 Controller, Can_StateTransitionType Transition )
{

  uint8 errorId;
  Can_ReturnType retval;
  uint8 transitionRequest;
  uint8 busOffRecovery;
  uint8 doRamCheck;
  uint8 transitionState;
  ;
  retval = CAN_NOT_OK;
  transitionState = (uint8)0x00;
  errorId = (uint8)0x00u;



  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else
# 9207 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  {

    if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
    {
      errorId = (uint8)0x05u;
    }
    else
    if ((!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x02u)) == ((uint8)0x02u))) && (Transition == CAN_T_START))
    {
      errorId = (uint8)0x06u;
    }
    else

    if ( ((!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x02u)) == ((uint8)0x02u))) && (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x80u)) == ((uint8)0x80u))) && ((Transition == CAN_T_WAKEUP) || (Transition == CAN_T_SLEEP))) ||
         (((((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x80u)) == ((uint8)0x80u))) && (Transition == CAN_T_STOP)) )
    {

      errorId = (uint8)0x06u;
    }
    else






    {


      SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6();

      switch(Transition)
      {
      case CAN_T_START:

        if (((Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData) != 0u))
        {
          transitionRequest = ((uint8)0x0Au);
        }
        else
        {







          {



            transitionRequest = ((uint8)0x05u);

          }
        }
        busOffRecovery = ((uint8)0x00u);
        doRamCheck = (uint8)0x00;
        transitionState = CanHL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
        if ( transitionState == (uint8)0x01 )
        {
          Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData = (0u);
        }
        CanHL_NotifyTransition( ((uint8)0x01u), CANIF_CS_STARTED, transitionState);
        break;

      case CAN_T_STOP:

        transitionRequest = ((uint8)0x03u);
        busOffRecovery = ((uint8)0x00u);
        doRamCheck = (uint8)0x00;
        transitionState = CanHL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
        CanHL_NotifyTransition( ((uint8)0x02u), CANIF_CS_STOPPED, transitionState);
        break;

      case CAN_T_WAKEUP:
# 9292 "../../../../CBD2300515_D00/BSW/Can/Can.c"
        {
          transitionRequest = ((uint8)0x03u);
          doRamCheck = (uint8)0x00;
        }
        {
          busOffRecovery = ((uint8)0x01u);
        }
        transitionState = CanHL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
        CanHL_NotifyTransition( ((uint8)0x02u), CANIF_CS_STOPPED, transitionState);
        break;

      case CAN_T_SLEEP:

        {
          transitionState = (uint8)0x01;
        }
        CanHL_NotifyTransition( ((uint8)0x80u), CANIF_CS_SLEEP, transitionState);
        break;

      default:

        errorId = (uint8)0x06u;
        break;
      }
      SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6();
    }
  }
  if ( transitionState != (uint8)0x00 )
  {
    retval = CAN_OK;
  }


  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x03u), (errorId)));
  }




  ;

  ;
  return retval;
}
# 9377 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_DisableControllerInterrupts( uint8 Controller )
{

  uint8 errorId;
  errorId = (uint8)0x00u;




  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else
# 9405 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
  {
    errorId = (uint8)0x05u;
  }
  else

  {

    ;
    if ((Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData) == 0u)
    {

      {
        CanLL_CanInterruptDisable( &(Can_ControllerData[(((CanChannelHandle)0))].CanInterruptOldStatusOfControllerData));
      }





    }
    (Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData)++;
    ;
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x04u), (errorId)));
  }




  ;

}
# 9482 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_EnableControllerInterrupts( uint8 Controller )
{

  uint8 errorId;
  errorId = (uint8)0x00u;




  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else
# 9510 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
  {
    errorId = (uint8)0x05u;
  }
  else

  {

    ;
    if ((Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData) != 0u)
    {
      (Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData)--;
      if ((Can_ControllerData[(((CanChannelHandle)0))].CanInterruptCounterOfControllerData) == 0u)
      {

        {
          CanLL_CanInterruptRestore( (Can_ControllerData[(((CanChannelHandle)0))].CanInterruptOldStatusOfControllerData));
        }





      }
    }
    ;
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x05u), (errorId)));
  }




  ;

}
# 9592 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 Can_ReturnType Can_Write( Can_HwHandleType Hth, Can_PduInfoPtrType PduInfo )
{

  Can_ReturnType retval;
 
  uint8 errorId;
  ;
  errorId = (uint8)0x00u;
  retval = CAN_NOT_OK;




  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else
  if (Hth >= 2u) {
    errorId = (uint8)0x02u;
  }
  else

  {
# 9634 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
    {
      errorId = (uint8)0x05u;
    }
    else



    if (((Can_Mailbox[(Hth)].MailboxTypeOfMailbox) != 2u) && ((Can_Mailbox[(Hth)].MailboxTypeOfMailbox) != 5u) && ((Can_Mailbox[(Hth)].MailboxTypeOfMailbox) != 6u))

    {
      errorId = (uint8)0x02u;
    }
    else
    if ((PduInfo == ((void *)0)) || ((PduInfo->sdu == ((void *)0)) && (PduInfo->length != 0u)))
    {
      errorId = (uint8)0x01u;
    }
    else
# 9661 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    if ( ((PduInfo->length > 8u) && ((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) == 0u)) ||
         (PduInfo->length > (Can_Mailbox[(Hth)].MaxDataLenOfMailbox)) )
         {




      errorId = (uint8)0x03u;
    }
    else
# 9685 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    if ( (PduInfo->id & (Can_IdType)0x3800U) != (Can_IdType)0UL )
    {
      errorId = (uint8)0x01u;
    }
    else
# 9701 "../../../../CBD2300515_D00/BSW/Can/Can.c"
    if (((Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData) != 0u))
    {
      retval = CAN_NOT_OK;
    }
    else




    {

      tCanTxTransmissionParaStruct txPara;
# 9721 "../../../../CBD2300515_D00/BSW/Can/Can.c"
      txPara.mailboxHandle = Hth;
      txPara.hwObjHandle = (Can_Mailbox[(Hth)].HwHandleOfMailbox);
      txPara.pdu.id = PduInfo->id;
      txPara.pdu.length = PduInfo->length;
      txPara.pdu.sdu = PduInfo->sdu;
      txPara.pdu.swPduHandle = PduInfo->swPduHandle;

      if (txPara.pdu.length <= 8u)
      {
        if ((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) == 0u)
        {






          txPara.pdu.id = txPara.pdu.id & ((Can_IdType)(0x0000U | 0x07FFU));
        }
      }
      txPara.fdBrsType = ((uint8)0x00u);
      if ((((txPara.pdu.id) & (Can_IdType)0x4000U) == (Can_IdType)0x4000U))
      {
        txPara.fdType = ((uint8)0x20U);
        if (((Can_InitObjectFdBrsConfig[((Can_ControllerData[(((CanChannelHandle)0))].LastInitObjectOfControllerData))]) == 1u))
        {
          txPara.fdBrsType = ((uint8)0x10u);
        }
      } else {
        txPara.fdType = ((uint8)0x00U);
      }

      txPara.paddingVal = (Can_Mailbox[(txPara.mailboxHandle)].FdPaddingOfMailbox);



      CanHL_WritePrepare( &txPara);

      retval = CanHL_WriteStart( &txPara);





    }
  }


  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x06u), (errorId)));
  }



  ;
  return retval;
}
# 9813 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 Std_ReturnType Can_CheckWakeup( uint8 Controller )

{

  Std_ReturnType retval;
  retval = 1u;
  ;
  return retval;
}
# 9865 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_MainFunction_Write( void )
{


 
  uint8 errorId;
  errorId = (uint8)0x00u;
  ;




  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else

  {




    {







      if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
      {
        errorId = (uint8)0x05u;
      }
      else

      {
        if ( !(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x80u)) == ((uint8)0x80u)) )
        {
          tCanTaskParaStruct taskPara;


          if ( CanLL_TxIsGlobalConfPending() == (uint8)0x01 )
          {
            for ( taskPara.mailboxHandle = (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxTxBasicStartIdxOfControllerConfig); taskPara.mailboxHandle < (Can_HwHandleType)(Can_ControllerConfig[(((CanChannelHandle)0))].MailboxTxBasicEndIdxOfControllerConfig); taskPara.mailboxHandle++ )
            {
              taskPara.hwObjHandle = (Can_Mailbox[(taskPara.mailboxHandle)].HwHandleOfMailbox);



              {

                CanLL_TxProcessPendings( &taskPara);
              }
            }
          }
# 9942 "../../../../CBD2300515_D00/BSW/Can/Can.c"
        }
      }
    }
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x01u), (errorId)));
  }







  ;
}
# 9997 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_MainFunction_Read( void )
{

  uint8 errorId;
  ;
  errorId = (uint8)0x00u;




  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else



  if ( canIsRxTaskLocked == (uint8)0x00 )
  {

   

    canIsRxTaskLocked = (uint8)0x01;




    {







      if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
      {
        errorId = (uint8)0x05u;
      }
      else

      {
        if ( !(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x80u)) == ((uint8)0x80u)) )
        {







          CanHL_RxBasicCanPolling();

        }
      }
    }





    canIsRxTaskLocked = (uint8)0x00;
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x08u), (errorId)));
  }



  ;
}
# 10099 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_MainFunction_BusOff( void )
{


 
  uint8 errorId;
  errorId = (uint8)0x00u;



  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else

  {




    {







      if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
      {
        errorId = (uint8)0x05u;
      }
      else

      {
        if ( !(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x80u)) == ((uint8)0x80u)) )
        {

          Can_DisableControllerInterrupts((uint8)((CanChannelHandle)0));

          CanHL_ErrorHandling( );
          Can_EnableControllerInterrupts((uint8)((CanChannelHandle)0));
        }
      }
    }
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x09u), (errorId)));
  }




}
# 10186 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_MainFunction_Wakeup( void )
{

}
# 10216 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_MainFunction_Mode( void )
{

 
  uint8 errorId;
  errorId = (uint8)0x00u;



  if (canConfigInitFlag == ((uint8)0x00u))
  {
    errorId = (uint8)0x05u;
  }
  else

  {

    SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6();



    {







      if (!(((Can_ControllerData[(((CanChannelHandle)0))].LogStatusOfControllerData) & ((uint8)0x04u)) == ((uint8)0x04u)))
      {
        errorId = (uint8)0x05u;
      }
      else

      {
        uint8 transitionRequest;
        uint8 busOffRecovery;
        uint8 doRamCheck;
        uint8 transitionState;
        transitionRequest = (Can_ControllerData[(((CanChannelHandle)0))].ModeTransitionRequestOfControllerData);
        busOffRecovery = (Can_ControllerData[(((CanChannelHandle)0))].BusOffTransitionRequestOfControllerData);
        doRamCheck = (Can_ControllerData[(((CanChannelHandle)0))].RamCheckTransitionRequestOfControllerData);

        if(transitionRequest != ((uint8)0x10u))
        {
          transitionState = CanLL_ModeTransition( transitionRequest, busOffRecovery, doRamCheck);
          switch(transitionRequest)
          {
            case ((uint8)0x03u):
            case ((uint8)0x04u):
              CanHL_NotifyTransition( ((uint8)0x02u), CANIF_CS_STOPPED, transitionState);
              break;



            case ((uint8)0x05u):

            case ((uint8)0x0Au):



              CanHL_NotifyTransition( ((uint8)0x01u), CANIF_CS_STARTED, transitionState);
              if ( transitionState == (uint8)0x01 )
              {
                Can_ControllerData[(((CanChannelHandle)0))].IsBusOffOfControllerData = (0u);
              }
              break;
            case ((uint8)0x09u):
            default:
              break;
          }
        }
      }
    }
    SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6();
  }



  if (errorId != (uint8)0x00u)
  {
    ((void) Det_ReportError(80u, 0, (0x0Cu), (errorId)));
  }



}
# 10348 "../../../../CBD2300515_D00/BSW/Can/Can.c"
 void Can_CancelTx( Can_HwHandleType Hth, PduIdType PduId )
{
# 10459 "../../../../CBD2300515_D00/BSW/Can/Can.c"
  ;
  ;

}
# 11400 "../../../../CBD2300515_D00/BSW/Can/Can.c"
# 1 "Include/MemMap.h" 1
# 1051 "Include/MemMap.h"
#pragma section
# 11401 "../../../../CBD2300515_D00/BSW/Can/Can.c" 2
