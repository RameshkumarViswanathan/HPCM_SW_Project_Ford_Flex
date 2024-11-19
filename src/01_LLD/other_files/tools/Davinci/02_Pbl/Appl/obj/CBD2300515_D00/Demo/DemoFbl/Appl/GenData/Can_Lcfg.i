# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 53 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 1
# 67 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 68 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

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
# 70 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2


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
# 73 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 419 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
typedef uint32 tCanLLCanIntOld;





typedef uint8 Can_OsIsrType;







typedef uint8 CanChannelHandle;


typedef TickType Can_ExternalTickType;




typedef Can_ExternalTickType Can_LoopTimeout_dim_type[7u +1u];
# 1761 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 1845 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
typedef Can_ControllerConfigIterType Can_ControllerDataIterType;
# 1857 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 2254 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 2277 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 2416 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
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
# 2503 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
typedef struct sCan_PCConfigType
{
  uint8 Can_PCConfigNeverUsed;
} Can_PCConfigType;

typedef Can_PCConfigType Can_ConfigType;
# 2550 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2551 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_BTPType Can_BTP[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2556 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2574 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2575 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_BufferConfigType Can_BufferConfig[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2580 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2591 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2592 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_CanIfChannelIdType Can_CanIfChannelId[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2597 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2605 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_CanSubSystemBaseAdrType Can_CanSubSystemBaseAdr[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2610 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2644 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2645 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_ControllerConfigType Can_ControllerConfig[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2650 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2661 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2662 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_FBTPType Can_FBTP[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2667 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2675 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_GFCType Can_GFC[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2680 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2691 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2692 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_INT_PriorityType Can_INT_Priority[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2697 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2708 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2709 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_INT_RoutingGroupType Can_INT_RoutingGroup[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2714 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2725 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1076 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2726 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_InitObjectBaudrateType Can_InitObjectBaudrate[1];


# 1 "Include/MemMap.h" 1
# 1083 "Include/MemMap.h"
#pragma section
# 2731 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2742 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2743 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_InitObjectFdBrsConfigType Can_InitObjectFdBrsConfig[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2748 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2759 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2760 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_InitObjectStartIndexType Can_InitObjectStartIndex[2];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2765 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2787 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2788 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_MailboxType Can_Mailbox[2];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2793 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2807 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2808 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_MemorySectionInfoType Can_MemorySectionInfo[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2813 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2829 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2830 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_MemorySectionObjectsType Can_MemorySectionObjects[32];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2835 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2852 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2853 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_SIDFCType Can_SIDFC[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2858 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2869 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2870 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_SIDFEType Can_SIDFE[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2875 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2886 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2887 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_SRN_AddressType Can_SRN_Address[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2892 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2914 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2915 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_ShmAdrType Can_ShmAdr[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2920 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2938 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2939 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_ShmElementSizeType Can_ShmElementSize[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2944 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2955 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2956 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_TDCRType Can_TDCR[1];


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 2961 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2969 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_XIDAMType Can_XIDAM[1];


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 2974 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 2989 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 2990 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_XIDFCType Can_XIDFC[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 2995 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 3010 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 3011 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern const Can_XIDFEType Can_XIDFE[1];


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 3016 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 3031 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 3032 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern Can_ActiveSendObjectType Can_ActiveSendObject[1];


# 1 "Include/MemMap.h" 1
# 3037 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 3067 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h"
# 1 "Include/MemMap.h" 1
# 3068 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2

extern Can_ControllerDataType Can_ControllerData[1];


# 1 "Include/MemMap.h" 1
# 3073 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Cfg.h" 2
# 54 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 110 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 111 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_BTPType Can_BTP[1] = {

               0x08013E0Fu
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 119 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 137 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 138 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_BufferConfigType Can_BufferConfig[1] = {

  { 0x00060004u, 0x000101B4u, 0x00u, 0x00u, 0x00u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 146 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 157 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 158 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_CanIfChannelIdType Can_CanIfChannelId[1] = {

                           0u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 166 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 174 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_CanSubSystemBaseAdrType Can_CanSubSystemBaseAdr[1] = {

                       0xF0218000u
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 182 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 216 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 217 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_ControllerConfigType Can_ControllerConfig[1] = {

  { 0xF0218100u, 500u, 0u, 0u, 2u , 1u , 1u , 1u , 1u , 0u , 0u, 1u, 0u, 0u, 0x02u, 0u, 1u, 1u, 1u, 0u, 0u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 225 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 236 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 237 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_FBTPType Can_FBTP[1] = {

               0x00031E72u
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 245 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2







# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 253 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_GFCType Can_GFC[1] = {

               0x3Fu
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 261 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 273 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_INT_PriorityType Can_INT_Priority[1] = {

                      0x00u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 281 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 292 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 293 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_INT_RoutingGroupType Can_INT_RoutingGroup[1] = {

                          0x00u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 301 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 312 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1076 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 313 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_InitObjectBaudrateType Can_InitObjectBaudrate[1] = {

                             500u
};


# 1 "Include/MemMap.h" 1
# 1083 "Include/MemMap.h"
#pragma section
# 321 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 332 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 333 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_InitObjectFdBrsConfigType Can_InitObjectFdBrsConfig[1] = {

               0x01u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 341 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 352 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 353 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_InitObjectStartIndexType Can_InitObjectStartIndex[2] = {

                                 0u,
                                 1u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 362 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 384 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 385 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_MailboxType Can_Mailbox[2] = {

  { 0u, 0u , 0u, 0u, 0x00u, 1u, 0x02u, 64u, 32u },
  { 0u, 0u , 0u, 0u, 0x00u, 6u, 0x00u, 64u, 32u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 394 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 408 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 409 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_MemorySectionInfoType Can_MemorySectionInfo[1] = {

  { 0u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 417 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 433 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 434 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_MemorySectionObjectsType Can_MemorySectionObjects[32] = {

  { 0u, 0u, 0u },
  { 1u, 0u, 0u },
  { 2u, 0u, 0u },
  { 3u, 0u, 0u },
  { 4u, 0u, 0u },
  { 5u, 0u, 0u },
  { 6u, 0u, 0u },
  { 7u, 0u, 0u },
  { 8u, 0u, 0u },
  { 9u, 0u, 0u },
  { 10u, 0u, 0u },
  { 11u, 0u, 0u },
  { 12u, 0u, 0u },
  { 13u, 0u, 0u },
  { 14u, 0u, 0u },
  { 15u, 0u, 0u },
  { 16u, 0u, 0u },
  { 17u, 0u, 0u },
  { 18u, 0u, 0u },
  { 19u, 0u, 0u },
  { 20u, 0u, 0u },
  { 21u, 0u, 0u },
  { 22u, 0u, 0u },
  { 23u, 0u, 0u },
  { 24u, 0u, 0u },
  { 25u, 0u, 0u },
  { 26u, 0u, 0u },
  { 27u, 0u, 0u },
  { 28u, 0u, 0u },
  { 29u, 0u, 0u },
  { 30u, 0u, 0u },
  { 31u, 0u, 0u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 473 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 490 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 491 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_SIDFCType Can_SIDFC[1] = {

  { 0x00u, 0x01u, 1u , 0u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 499 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 510 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 511 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_SIDFEType Can_SIDFE[1] = {

               0x88000000u
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 519 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 530 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 531 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_SRN_AddressType Can_SRN_Address[1] = {

               0xF00385F0u
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 539 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 561 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 562 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_ShmAdrType Can_ShmAdr[1] = {

  { 0xF0210000u , 0xF0210004u , 0xF0210000u , 0xF0210000u , 0xF0210000u, 0xF02101FDu, 0xF02101B4u , 0xF0210000u , 0xF0210000u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 570 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 588 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 589 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_ShmElementSizeType Can_ShmElementSize[1] = {

  { 0x07u , 0x00u , 0x00u , 0x07u , 0x00u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 597 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 608 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1108 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 609 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_TDCRType Can_TDCR[1] = {

               0x00u
};


# 1 "Include/MemMap.h" 1
# 1115 "Include/MemMap.h"
#pragma section
# 617 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2







# 1 "Include/MemMap.h" 1
# 1092 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 625 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_XIDAMType Can_XIDAM[1] = {

               0x1FFFFFFFu
};


# 1 "Include/MemMap.h" 1
# 1099 "Include/MemMap.h"
#pragma section
# 633 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 648 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 649 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_XIDFCType Can_XIDFC[1] = {

  { 0x00u, 0x00u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 657 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 672 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 1124 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 673 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

const Can_XIDFEType Can_XIDFE[1] = {

  { 0x00u, 0x00u }
};


# 1 "Include/MemMap.h" 1
# 1131 "Include/MemMap.h"
#pragma section
# 681 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 696 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 697 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

Can_ActiveSendObjectType Can_ActiveSendObject[1];


# 1 "Include/MemMap.h" 1
# 702 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
# 732 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c"
# 1 "Include/MemMap.h" 1
# 733 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2

Can_ControllerDataType Can_ControllerData[1];


# 1 "Include/MemMap.h" 1
# 738 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Can_Lcfg.c" 2
