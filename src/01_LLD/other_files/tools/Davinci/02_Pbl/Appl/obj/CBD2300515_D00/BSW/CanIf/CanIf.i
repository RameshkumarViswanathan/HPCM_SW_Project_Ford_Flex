# 1 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 39 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 1
# 218 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
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
# 219 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 2
# 283 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 284 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 2
# 298 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
void CanIf_InitMemory(void);
# 316 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
void CanIf_Init(const CanIf_ConfigType * ConfigPtr);
# 335 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_SetControllerMode(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
# 356 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_GetControllerMode(uint8 ControllerId, CanIf_ControllerModeType * ControllerModePtr);
# 375 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType * PduInfoPtr);
# 396 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_SetPduMode(uint8 ControllerId, CanIf_PduSetModeType PduModeRequest);
# 416 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
Std_ReturnType CanIf_GetPduMode(uint8 ControllerId, CanIf_PduGetModeType * PduModePtr);
# 731 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
CanIf_NotifStatusType CanIf_GetTxConfirmationState(uint8 ControllerId);
# 1089 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 1090 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 2






# 1 "GenData/CanIf_MemMap.h" 1
# 163 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1097 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 2

extern const uint8 CanIf_MainVersion;
extern const uint8 CanIf_SubVersion;
extern const uint8 CanIf_ReleaseVersion;


# 1 "GenData/CanIf_MemMap.h" 1
# 179 "GenData/CanIf_MemMap.h"
#pragma section
# 1104 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.h" 2
# 40 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2

# 1 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h" 1
# 69 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 70 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h" 2
# 96 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
void CanIf_ControllerModeIndication(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
# 133 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
void CanIf_TxConfirmation(PduIdType CanTxPduId);
# 154 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
void CanIf_RxIndicationAsr403(Can_HwHandleType Hrh, Can_IdType CanId, uint8 CanDlc, const uint8 * CanSduPtr);
# 193 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
void CanIf_ControllerBusOff(uint8 ControllerId);
# 255 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 256 "../../../../CBD2300515_D00/BSW/CanIf/CanIf_Cbk.h" 2
# 42 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2




# 1 "../../../BSW/VStdLib/vstdlib.h" 1
# 56 "../../../BSW/VStdLib/vstdlib.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 57 "../../../BSW/VStdLib/vstdlib.h" 2

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
# 47 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2







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
# 55 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2



# 1 "Include/SchM_CanIf.h" 1
# 54 "Include/SchM_CanIf.h"
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
# 55 "Include/SchM_CanIf.h" 2




void SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0(void);




void SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0(void);
# 59 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
# 661 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "GenData/CanIf_MemMap.h" 1
# 163 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 662 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2

const uint8 CanIf_MainVersion = (uint8)0x08u;
const uint8 CanIf_SubVersion = (uint8)0x05u;
const uint8 CanIf_ReleaseVersion = (uint8)0x01u;


# 1 "GenData/CanIf_MemMap.h" 1
# 179 "GenData/CanIf_MemMap.h"
#pragma section
# 669 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2






# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 676 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
# 693 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static Std_ReturnType CanIf_TxQueueTreatment(Can_HwHandleType hth);
# 710 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static Std_ReturnType CanIf_TxQueueTransmit(PduIdType PduId);
# 727 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_ClearQueue(uint8 ControllerId);
# 748 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetPrioByCanIdTxPduAsQueued(PduIdType PduId);
# 767 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_ClearPrioByCanIdTxPduAsQueued(PduIdType PduId);
# 829 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_HlIndication(Can_HwHandleType Hrh, PduIdType PduId, const uint8 * CanSduPtr, uint8 CanDlc);
# 845 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_HlTxConfirmation(PduIdType CanTxPduId);
# 863 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ CanIf_TransmitStateType CanIf_TransmitSubVerifyPduLength(const PduIdType CanTxPduId, Can_PduType * localPduPtr);
# 940 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_TransmitSubHandleTxResBusy(const Can_PduType * localPduPtr);
# 1027 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubLinearSearch(CanIf_RxSearchParamsType * rxSearchParams);
# 1045 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ CanIf_NotifStatusType CanIf_RxIndicationSubReceptionPduMode(CanIf_RxSearchParamsType * rxSearchParams);
# 1060 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubRangeSearch(CanIf_RxSearchParamsType * rxSearchParams);
# 1095 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_TransmitSubWrite(const Can_PduType * localPduPtr);
# 1110 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubBasicCan(CanIf_RxSearchParamsType * rxSearchParams);
# 1131 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_HlIndicationSubULCall(PduIdType PduId, const uint8 * CanSduPtr, uint8 CanDlc);
# 1150 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubSwitch(uint8 ControllerId, CanIf_ControllerModeType ControllerMode);
# 1168 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubStarted(uint8 ControllerId);
# 1186 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubStopped(uint8 ControllerId);
# 1204 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubSleep(uint8 ControllerId);
# 1222 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubWakeup(uint8 ControllerId);
# 1238 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_TxBufferPrioByCanIdQueuePdu(const Can_PduType * PduInfoPtr);
# 1261 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 1262 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2






# 1 "GenData/CanIf_MemMap.h" 1
# 256 "GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1269 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
# 1285 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static const uint8 CanIfState[CANIF_NO_MODE_PDU_GET_MODE_TYPE_END][CANIF_NO_MODE_PDU_SET_MODE_TYPE_END] =
{

  {
    (uint8)(((uint8)0xFFu)),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_RX_ONLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_TX_ONLINE),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE)




  },


  {
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE)




  },


  {
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE)




  },


  {
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(CANIF_GET_TX_ONLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_RX_ONLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE)




  },


  {
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE),
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(CANIF_GET_TX_ONLINE),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(((uint8)0xFFu))




  },


  {
    (uint8)(CANIF_GET_OFFLINE),
    (uint8)(CANIF_GET_OFFLINE_ACTIVE),
    (uint8)(((uint8)0xFFu)),
    (uint8)(CANIF_GET_RX_ONLINE),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(CANIF_GET_ONLINE),
    (uint8)(((uint8)0xFFu))




  }
# 1403 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
};
# 1436 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static const uint8 RxDlcMaxValueLookUp[2] =
{
  8,
  64
};
# 1459 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "GenData/CanIf_MemMap.h" 1
# 272 "GenData/CanIf_MemMap.h"
#pragma section
# 1460 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2



# 1 "GenData/CanIf_MemMap.h" 1
# 1464 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
# 1475 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "GenData/CanIf_MemMap.h" 1
# 1476 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2






# 1 "GenData/CanIf_MemMap.h" 1
# 70 "GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1483 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
# 1599 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetPrioByCanIdTxPduAsQueued(PduIdType PduId)
{






  uint8 errorId = 0u;
  Std_ReturnType retval = 1u;
  uint32_least txBufferCfgIdx = (CanIf_MailBoxConfig[((CanIf_TxPduConfig[(PduId)].MailBoxConfigIdxOfTxPduConfig))].TxBufferCfgIdxOfMailBoxConfig);
# 1638 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if ((CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued == 0u)
  {

    (CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued = 1u;
    (++(CanIf_TxBufferPrioByCanIdBase.raw[((CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfig))]).eQueueCounter);
    retval = 0u;
  }




  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (1u), (errorId)));
  }



  return retval;
}
# 1688 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_ClearPrioByCanIdTxPduAsQueued(PduIdType PduId)
{






  uint8 errorId = 0u;
  Std_ReturnType retval = 1u;
  uint32_least txBufferCfgIdx = (CanIf_MailBoxConfig[((CanIf_TxPduConfig[(PduId)].MailBoxConfigIdxOfTxPduConfig))].TxBufferCfgIdxOfMailBoxConfig);
# 1727 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if ((CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued == 1u)
  {

    (CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued = 0u;
    (--(CanIf_TxBufferPrioByCanIdBase.raw[((CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfig))]).eQueueCounter);
    retval = 0u;
  }




  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (1u), (errorId)));
  }



  return retval;
}
# 1782 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_ClearQueue(uint8 ControllerId)
{

  uint32_least idx2MappedTxBufferCfg;
  uint32_least hth;


  uint32_least txBufferBaseIdx;



  uint32_least MappedTxPdusIdx;
  uint32_least TxPduId;
# 1808 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  ;

  for(idx2MappedTxBufferCfg = (CanIf_CanIfCtrlId2MappedTxBuffersConfig[(ControllerId)].MappedTxBuffersConfigStartIdxOfCanIfCtrlId2MappedTxBuffersConfig); idx2MappedTxBufferCfg < (CanIf_CanIfCtrlId2MappedTxBuffersConfig[(ControllerId)].MappedTxBuffersConfigEndIdxOfCanIfCtrlId2MappedTxBuffersConfig); idx2MappedTxBufferCfg++ )
  {
    uint32_least txBufferCfgIdx;
    hth = (CanIf_MappedTxBuffersConfig[(idx2MappedTxBufferCfg)].MailBoxConfigIdxOfMappedTxBuffersConfig);
    txBufferCfgIdx = (CanIf_MailBoxConfig[(hth)].TxBufferCfgIdxOfMailBoxConfig);

    switch ((CanIf_MailBoxConfig[(hth)].TxBufferHandlingTypeOfMailBoxConfig))
    {

      case 1u:
# 1829 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
        for (MappedTxPdusIdx = (CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdByteQueueMappedTxPdusStartIdxOfTxBufferPrioByCanIdByteQueueConfig); MappedTxPdusIdx < (CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdByteQueueMappedTxPdusEndIdxOfTxBufferPrioByCanIdByteQueueConfig); MappedTxPdusIdx++)
        {
          TxPduId = (CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdus[(MappedTxPdusIdx)].TxPduConfigIdxOfTxBufferPrioByCanIdByteQueueMappedTxPdus);
          (CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(TxPduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued = 0;
        }
        txBufferBaseIdx = (CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfig);


        ((CanIf_TxBufferPrioByCanIdBase.raw[(txBufferBaseIdx)]).eQueueCounter = (0));
        break;
# 1874 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      default:
        break;
    }
  }
  ;
}
# 2000 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_Init(const CanIf_ConfigType * ConfigPtr)
{

  uint8 controllerId;
  uint8 errorId = 0u;
# 2040 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  ;





  if (sizeof (Can_IdType) != 2u)
  {
    errorId = 49u;
  }
# 2072 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  else

  {
# 2090 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    for (controllerId = 0u; controllerId < 1u; controllerId++)
    {




      CanIf_ClearQueue(controllerId);



      CanIf_CtrlStates.raw[((controllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_STOPPED));

      CanIf_CtrlStates.raw[((controllerId))].PduModeOfCtrlStates = ((CANIF_GET_OFFLINE));
# 2115 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      CanIf_CtrlStates.raw[((controllerId))].TxConfStateOfCtrlStates = ((CANIF_NO_NOTIFICATION));
# 2140 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    }
# 2160 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  }


  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (1u), (errorId)));
  }



}
# 2192 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubStarted(uint8 ControllerId)
{

  Std_ReturnType retval = 1u;
# 2223 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if(Can_SetControllerMode((uint8)(ControllerId), CAN_T_START) == CAN_OK)
  {
    retval = 0u;
  }


  return retval;
}
# 2252 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubStopped(uint8 ControllerId)
{

  Std_ReturnType retval = 1u;
# 2283 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if(Can_SetControllerMode((uint8)(ControllerId), CAN_T_STOP) == CAN_OK)
  {
    retval = 0u;
  }


  return retval;
}
# 2312 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubSleep(uint8 ControllerId)
{

  Std_ReturnType retval = 1u;
# 2343 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if(Can_SetControllerMode((uint8)(ControllerId), CAN_T_SLEEP) == CAN_OK)
  {
    retval = 0u;
  }


  return retval;
}
# 2372 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubWakeup(uint8 ControllerId)
{

  Std_ReturnType retval = 1u;
# 2404 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if(Can_SetControllerMode((uint8)(ControllerId), CAN_T_WAKEUP) == CAN_OK)
  {
    retval = 0u;
  }


  return retval;
}
# 2447 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_SetControllerModeSubSwitch(uint8 ControllerId, CanIf_ControllerModeType ControllerMode)
{

  Std_ReturnType retval = 1u;



  switch (ControllerMode)
  {
    case CANIF_CS_STOPPED:


      switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
      {
        case CANIF_CS_SLEEP:



          retval = CanIf_SetControllerModeSubWakeup(ControllerId);
          break;

        case CANIF_CS_STARTED:



          if (CanIf_SetControllerModeSubStopped(ControllerId) == 0u)
          {




            CanIf_CtrlStates.raw[((ControllerId))].PduModeOfCtrlStates = ((CANIF_GET_RX_ONLINE));




            CanIf_ClearQueue(ControllerId);

            retval = 0u;
          }
          break;


        case CANIF_CS_STOPPED:


          retval = CanIf_SetControllerModeSubStopped(ControllerId);
          break;

        default:


          break;
      }
      break;
    case CANIF_CS_STARTED:



      switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
      {
        case CANIF_CS_STOPPED:


          retval = CanIf_SetControllerModeSubStarted(ControllerId);
          break;

        case CANIF_CS_STARTED:


          retval = CanIf_SetControllerModeSubStarted(ControllerId);
          break;

        default:


          break;
      }
      break;
    case CANIF_CS_SLEEP:




      switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
      {
        case CANIF_CS_STOPPED:


          if (CanIf_SetControllerModeSubSleep(ControllerId) == 0u)
          {






            retval = 0u;
          }
          break;

        case CANIF_CS_SLEEP:

          retval = CanIf_SetControllerModeSubSleep(ControllerId);
          break;

        default:


          break;
      }
      break;
    default:


      ((void)Det_ReportError(60u, 0, (3u), (21u)));

      break;
    }
    return retval;
}
# 2597 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
Std_ReturnType CanIf_SetControllerMode(uint8 ControllerId, CanIf_ControllerModeType ControllerMode)
{


  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
# 2616 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 15u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }







  else

  {







    {


      SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0();
      retval = CanIf_SetControllerModeSubSwitch(ControllerId, ControllerMode);
      SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0();
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (3u), (errorId)));
  }




  return retval;
}
# 2691 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
Std_ReturnType CanIf_GetControllerMode(uint8 ControllerId, CanIf_ControllerModeType * ControllerModePtr)
{

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
# 2709 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 15u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }

  else if (ControllerModePtr == ((void *)0))
  {

    errorId = 20u;
  }
  else



  {


    *ControllerModePtr = (CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates);
    retval = 0u;
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (4u), (errorId)));
  }




  return retval;
}
# 2772 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ CanIf_TransmitStateType CanIf_TransmitSubVerifyPduLength(const PduIdType CanTxPduId, Can_PduType * localPduPtr)
{

  CanIf_TransmitStateType txState = CANIF_DO_TRANSMIT;
# 2787 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if(localPduPtr->length > (CanIf_TxPduConfig[(CanTxPduId)].TxPduLengthOfTxPduConfig))
  {

    if(((CanIf_TxPduConfig[(CanTxPduId)].IsTxPduTruncationOfTxPduConfig) != 0u))
    {

      localPduPtr->length = (CanIf_TxPduConfig[(CanTxPduId)].TxPduLengthOfTxPduConfig);
    }

    else
    {

      txState = CANIF_DO_NOT_TRANSMIT;
    }
  }

  return txState;
}
# 3061 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_TxBufferPrioByCanIdQueuePdu(const Can_PduType * PduInfoPtr )
{

  uint32_least queueindex = (CanIf_TxPduQueueIndex[(PduInfoPtr->swPduHandle)].TxQueueIdxOfTxPduQueueIndex);







  (CanIf_TxQueue.raw[(queueindex)]).eQueueParams.eBaseParams.eSduLength = PduInfoPtr->length;



  VStdLib_MemCpy((&(CanIf_TxQueueData.raw[((CanIf_TxQueueIndex2DataStartStop[((CanIf_TxPduQueueIndex[(PduInfoPtr->swPduHandle)].TxQueueIndex2DataStartStopIdxOfTxPduQueueIndex))].TxQueueDataStartIdxOfTxQueueIndex2DataStartStop))])), PduInfoPtr->sdu, PduInfoPtr->length);




}
# 3138 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_TransmitSubHandleTxResBusy(const Can_PduType * localPduPtr)
{

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
  uint32_least hth = (CanIf_TxPduConfig[(localPduPtr->swPduHandle)].MailBoxConfigIdxOfTxPduConfig);
# 3155 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if ((((boolean)((CanIf_MailBoxConfig[(hth)].TxBufferCfgIdxOfMailBoxConfig) != 255u)) != 0u))
  {



    if ((localPduPtr->sdu == ((void *)0)) && (localPduPtr->length != 0u))
    {
      errorId = 20u;
    }
    else

    {
      switch ((CanIf_MailBoxConfig[(hth)].TxBufferHandlingTypeOfMailBoxConfig))
      {


        case 1u:


          if(localPduPtr->length <= (CanIf_TxQueueIndex2DataStartStop[((CanIf_TxPduQueueIndex[(localPduPtr->swPduHandle)].TxQueueIndex2DataStartStopIdxOfTxPduQueueIndex))].TxQueueDataLengthOfTxQueueIndex2DataStartStop))



          {

            CanIf_TxBufferPrioByCanIdQueuePdu(localPduPtr);


            (void)CanIf_SetPrioByCanIdTxPduAsQueued(localPduPtr->swPduHandle);
            retval = 0u;
          }
          else

          {

            errorId = 11u;

            retval = 1u;
          }
          break;
# 3269 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      default:
        break;
      }
    }
  }
  else
  {

    retval = 1u;
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (5u), (errorId)));
  }



  return retval;
}
# 3327 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ Std_ReturnType CanIf_TransmitSubWrite(const Can_PduType * localPduPtr)
{

  Std_ReturnType retval;
  CanIf_CanDrvReturnType txResult;
# 3351 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  {
# 3387 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    txResult = Can_Write((Can_HwHandleType)(CanIf_TxPduConfig[(localPduPtr->swPduHandle)].MailBoxConfigIdxOfTxPduConfig), (const Can_PduType * )localPduPtr);

  }
  if (txResult == CAN_BUSY)
  {



    retval = CanIf_TransmitSubHandleTxResBusy(localPduPtr);



  }
  else if (txResult == CAN_NOT_OK)
  {

    retval = 1u;
  }
  else
  {





    if((CanIf_MailBoxConfig[((CanIf_TxPduConfig[(localPduPtr->swPduHandle)].MailBoxConfigIdxOfTxPduConfig))].TxBufferHandlingTypeOfMailBoxConfig) == 1u)
    {
      (void)CanIf_ClearPrioByCanIdTxPduAsQueued(localPduPtr->swPduHandle);
    }


    retval = 0u;
  }
  return retval;
}
# 3474 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType * PduInfoPtr)
{

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;



  Can_PduType localPdu;



  uint8 controllerId;
# 3516 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    if (CanTxPduId >= 2u)
    {

      errorId = 50u;
    }
    else

    {

      controllerId = (CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig);



      if (PduInfoPtr == ((void *)0))
      {

        errorId = 20u;
      }

      else if ((CanIf_CtrlStates.raw[(controllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
      {

        errorId = 30u;

      }
      else
# 3553 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      {





        {

          if ((CanIf_CtrlStates.raw[(controllerId)].CtrlModeOfCtrlStates) == CANIF_CS_STARTED)
          {


            if (((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_ONLINE) ||
              ((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_TX_ONLINE)




              )
            {


              ;


              localPdu.length = (uint8)(PduInfoPtr->SduLength);
              if(CANIF_DO_TRANSMIT == CanIf_TransmitSubVerifyPduLength(CanTxPduId, &localPdu))
              {
# 3593 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
                (localPdu).id = (CanIf_TxPduConfig[(CanTxPduId)].CanIdOfTxPduConfig);


                localPdu.sdu = (PduInfoPtr->SduDataPtr);
                localPdu.swPduHandle = (CanTxPduId);
# 3609 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
                {
# 3623 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
                  retval = CanIf_TransmitSubWrite(&localPdu);
                }
              }
              else
              {



                errorId = 90u;
              }

              ;
            }

            else if (((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_OFFLINE_ACTIVE) ||
                    ((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE))
            {
              retval = 0u;


              CanIf_HlTxConfirmation(CanTxPduId);
            }
            else
            {


              errorId = 70u;
            }
          }

          else if ((CanIf_CtrlStates.raw[(controllerId)].CtrlModeOfCtrlStates) == CANIF_CS_STOPPED)
          {

            errorId = 70u;
          }
          else
          {


          }
        }
      }
    }






  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (5u), (errorId)));
  }





  return retval;
}
# 3704 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_HlTxConfirmation(PduIdType CanTxPduId)
{


  CanIf_TxConfirmationFctListIdxOfTxPduConfigType index;
  PduIdType upperLayerTxPduId;
  CanIf_TxConfirmationFctType txConfirmationFct;




  index = (CanIf_TxPduConfig[(CanTxPduId)].TxConfirmationFctListIdxOfTxPduConfig);


  upperLayerTxPduId = (CanIf_TxPduConfig[(CanTxPduId)].UpperLayerTxPduIdOfTxPduConfig);

  txConfirmationFct = (CanIf_TxConfirmationFctList[(index)]);

  if (txConfirmationFct != ((void *)0))
  {

      txConfirmationFct(upperLayerTxPduId);
  }
}
# 3766 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_TxConfirmation(PduIdType CanTxPduId)
{


  uint8 controllerId;


  uint8 errorId = 0u;
# 3788 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (CanTxPduId >= 2u)
  {

    errorId = 13u;
  }

  else if ((CanIf_CtrlStates.raw[((CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig))].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT )
  {

    errorId = 30u;
  }
# 3808 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  else

  {



    if ((CanIf_CtrlStates.raw[((CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig))].CtrlModeOfCtrlStates) == CANIF_CS_STARTED)
    {
      if ( ((CanIf_CtrlStates.raw[((CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig))].PduModeOfCtrlStates) == CANIF_GET_ONLINE) ||
             ((CanIf_CtrlStates.raw[((CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig))].PduModeOfCtrlStates) == CANIF_GET_TX_ONLINE)




         )
      {

        controllerId = (CanIf_TxPduConfig[(CanTxPduId)].CtrlStatesIdxOfTxPduConfig);
# 3837 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
        CanIf_CtrlStates.raw[((controllerId))].TxConfStateOfCtrlStates = ((CANIF_TX_RX_NOTIFICATION));



        {
          uint32_least hth;
          hth = (CanIf_TxPduConfig[(CanTxPduId)].MailBoxConfigIdxOfTxPduConfig);


          if ((((boolean)((CanIf_MailBoxConfig[(hth)].TxBufferCfgIdxOfMailBoxConfig) != 255u)) != 0u))
          {


            ;



            (void)CanIf_TxQueueTreatment((Can_HwHandleType)hth);

            ;
          }
        }



        CanIf_HlTxConfirmation(CanTxPduId);
      }
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (19u), (errorId)));
  }



}
# 4322 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubLinearSearch(CanIf_RxSearchParamsType * rxSearchParams)
{
# 4332 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  while ((((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x2000u) != 0x2000u))
  {

    if ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig) == rxSearchParams->eCanId)
    {


      if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].MsgTypeOfRxPduConfig) == CANIF_MSG_TYPE_CAN) || ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].MsgTypeOfRxPduConfig) == rxSearchParams->eRxMsgType))

      {



        rxSearchParams->eRxPduIdMatch = rxSearchParams->eRxPduId;
        rxSearchParams->eContinueSearch = 0u;
        break;
      }
    }


    if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x4000u) != 0u)
    {


      rxSearchParams->eContinueSearch = 0u;
      break;
    }

    else
    {

      rxSearchParams->eRxPduId--;
    }
  }
}
# 4393 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ CanIf_NotifStatusType CanIf_RxIndicationSubReceptionPduMode(CanIf_RxSearchParamsType * rxSearchParams)
{

  CanIf_NotifStatusType retVal;



  retVal = CANIF_NO_NOTIFICATION;



  if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].MsgTypeOfRxPduConfig) == CANIF_MSG_TYPE_CAN) || ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].MsgTypeOfRxPduConfig) == rxSearchParams->eRxMsgType))

  {






      {

        rxSearchParams->eRxPduIdMatch = rxSearchParams->eRxPduId;
        retVal = CANIF_TX_RX_NOTIFICATION;
      }
# 4427 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  }
  return retVal;
}
# 4459 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubRangeSearch(CanIf_RxSearchParamsType * rxSearchParams)
{


  while (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x6000u) == 0x2000u)
  {

    if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig) & 0x2000u) == 0x2000u)
    {
      if ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig) == ((rxSearchParams->eCanId & ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) )) | 0x2000u ))
      {

        if (CanIf_RxIndicationSubReceptionPduMode(rxSearchParams) == CANIF_TX_RX_NOTIFICATION)
        {
          break;
        }
      }
    }
    else

    {
      if ((rxSearchParams->eCanId >= (CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig)) && (rxSearchParams->eCanId <= (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x9FFFu))))
      {

        if (CanIf_RxIndicationSubReceptionPduMode(rxSearchParams) == CANIF_TX_RX_NOTIFICATION)
        {
          break;
        }
      }
    }
    rxSearchParams->eRxPduId--;
  }


  if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x6000u) == 0x6000u)
  {

    if (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig) & 0x2000u) == 0x2000u)
    {

      if ((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig) == ((rxSearchParams->eCanId & (CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig)) | 0x2000u ))
      {

        (void)CanIf_RxIndicationSubReceptionPduMode(rxSearchParams);
      }
    }
    else

    {

      if ((rxSearchParams->eCanId >= (CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduCanIdOfRxPduConfig)) && (rxSearchParams->eCanId <= (((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x9FFFu))))
      {

        (void)CanIf_RxIndicationSubReceptionPduMode(rxSearchParams);
      }
    }
  }
}
# 4585 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_RxIndicationSubBasicCan(CanIf_RxSearchParamsType * rxSearchParams)
{

  rxSearchParams->eContinueSearch = 1u;

  if(((CanIf_RxPduConfig[(rxSearchParams->eRxPduId)].RxPduMaskOfRxPduConfig) & 0x2000u) != 0x2000u)
  {
# 4604 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    CanIf_RxIndicationSubLinearSearch(rxSearchParams);
# 4642 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  }


  if (rxSearchParams->eContinueSearch == 1u)
  {
    CanIf_RxIndicationSubRangeSearch(rxSearchParams);
  }
}
# 4707 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_RxIndicationAsr403(Can_HwHandleType Hrh, Can_IdType CanId, uint8 CanDlc, const uint8 * CanSduPtr)
{

  CanIf_RxSearchParamsType rxSearchParams;



  uint8 errorId = 0u;
# 4729 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (CanSduPtr == ((void *)0))
  {

    errorId = 20u;
  }


  else if ((CanId & 0xBFFFu) > 0x7FFu)
  {

    errorId = 10u;
  }


  else if (CanDlc > RxDlcMaxValueLookUp[(uint8)(((CanId) & 0x4000u) >> 14u)])
  {

    errorId = 11u;
  }

  else if (Hrh >= 2u)
  {

    errorId = 12u;
  }
  else

  {
# 4768 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    if ((CanId & 0x4000u) == 0x4000u)
    {
      rxSearchParams.eRxMsgType = CANIF_MSG_TYPE_FD_CAN;
    }
    else
    {
      rxSearchParams.eRxMsgType = CANIF_MSG_TYPE_NO_FD_CAN;
    }



    CanId = (CanId & 0xBFFFu);
    rxSearchParams.eCanId = CanId;
    rxSearchParams.eHrh = Hrh;
# 4799 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    {

      if (4u != 0u)
      {
        rxSearchParams.eRxPduId = (CanIf_MailBoxConfig[(Hrh)].PduIdLastOfMailBoxConfig);

        if (rxSearchParams.eRxPduId != 0xFFu)
        {
          rxSearchParams.eRxPduIdMatch = 0xFFu;


          if ((CanIf_MailBoxConfig[(Hrh)].MailBoxTypeOfMailBoxConfig) == CANIF_RxFullCANMailbox)
          {

            (void)CanIf_RxIndicationSubReceptionPduMode(&rxSearchParams);
          }
          else if ((CanIf_MailBoxConfig[(Hrh)].MailBoxTypeOfMailBoxConfig) == CANIF_RxBasicCANMailbox)


          {
            CanIf_RxIndicationSubBasicCan(&rxSearchParams);
          }
          else
          {


            errorId = 45u;

          }


          if (rxSearchParams.eRxPduIdMatch != 0xFFu)
          {
# 4856 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
            {
# 4865 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
              CanIf_HlIndication((Hrh), (rxSearchParams.eRxPduIdMatch), (CanSduPtr), (CanDlc));
            }
          }
        }
      }
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (20u), (errorId)));
  }



}
# 4916 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static __inline__ void CanIf_HlIndicationSubULCall(PduIdType PduId, const uint8 * CanSduPtr, uint8 CanDlc )

{

  CanIf_RxIndicationFctListIdxOfRxPduConfigType index = (CanIf_RxPduConfig[(PduId)].RxIndicationFctListIdxOfRxPduConfig);
# 4982 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if ((CanIf_RxIndicationFctList[(index)].RxIndicationLayoutOfRxIndicationFctList) == CanIf_AdvancedRxIndicationLayout)
  {

    CanIf_AdvancedRxIndicationFctType rxIndicationFct;
    PduInfoType pduinfo;


    pduinfo.SduDataPtr = (uint8 * )CanSduPtr;

    pduinfo.SduLength = CanDlc;

    rxIndicationFct = (CanIf_RxIndicationFctList[(index)].RxIndicationFctOfRxIndicationFctList).eAdvancedRxIndicationType;
    if (rxIndicationFct != ((void *)0))
    {



      rxIndicationFct((CanIf_RxPduConfig[(PduId)].UpperPduIdOfRxPduConfig), (const PduInfoType * )&pduinfo);
    }
  }
}
# 5052 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static void CanIf_HlIndication(Can_HwHandleType Hrh, PduIdType PduId, const uint8 * CanSduPtr, uint8 CanDlc)

{

  uint8 errorId = 0u;
  uint8 controllerId = (CanIf_MailBoxConfig[(Hrh)].CtrlStatesIdxOfMailBoxConfig);
# 5068 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (controllerId >= 1u)
  {
    errorId = 45u;
  }

  else if ((CanIf_CtrlStates.raw[(controllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }
  else

  {



    if ((CanIf_CtrlStates.raw[(controllerId)].CtrlModeOfCtrlStates) == CANIF_CS_STARTED)
    {
# 5100 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      if ( ((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_ONLINE) ||
           ((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_RX_ONLINE) ||
           ((CanIf_CtrlStates.raw[(controllerId)].PduModeOfCtrlStates) == CANIF_GET_OFFLINE_ACTIVE_RX_ONLINE)



         )
      {
# 5121 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
        {
# 5192 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
            if ( (CanIf_RxPduConfig[(PduId)].RxIndicationFctListIdxOfRxPduConfig) >= 2u )
            {
              errorId = 45u;
            }
            else

            {
# 5207 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
              CanIf_HlIndicationSubULCall(PduId, CanSduPtr, CanDlc);

            }



        }
      }
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (20u), (errorId)));
  }




}
# 5265 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_ControllerBusOff(uint8 ControllerId)
{



  uint8 errorId = 0u;
  CanIf_BusOffNotificationFctType busoffnotificationFct = ((*((&(CanIf_BusOffNotificationFctPtr)))));
# 5289 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 14u;
  }
  else

  {



    if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) != CANIF_CS_UNINIT)
    {



      (void)CanIf_SetPduMode(ControllerId, CANIF_SET_TX_OFFLINE);




      CanIf_CtrlStates.raw[((ControllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_STOPPED));



      CanIf_ClearQueue(ControllerId);
# 5324 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      CanIf_CtrlStates.raw[((ControllerId))].TxConfStateOfCtrlStates = ((CANIF_NO_NOTIFICATION));



      if (busoffnotificationFct != ((void *)0))
      {


        busoffnotificationFct(ControllerId);
      }






    }
    else
    {

      errorId = 30u;
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (22u), (errorId)));
  }



}
# 5395 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
Std_ReturnType CanIf_SetPduMode(uint8 ControllerId, CanIf_PduSetModeType PduModeRequest)
{

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
# 5413 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 15u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }

  else if(PduModeRequest >= CANIF_NO_MODE_PDU_SET_MODE_TYPE_END)
  {
    errorId = 22u;
  }
  else

  {


    if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_STARTED)
    {

      retval = 0u;
      ;


      if(CanIfState[(CanIf_CtrlStates.raw[(ControllerId)].PduModeOfCtrlStates)][PduModeRequest] != ((uint8)0xFFu))
      {
        switch (PduModeRequest)
        {
          case CANIF_SET_OFFLINE:
          case CANIF_SET_TX_OFFLINE:
          case CANIF_SET_TX_OFFLINE_ACTIVE:
            switch((CanIf_CtrlStates.raw[(ControllerId)].PduModeOfCtrlStates))
            {
              case CANIF_GET_TX_ONLINE:
              case CANIF_GET_ONLINE:







                CanIf_ClearQueue(ControllerId);

                break;
              default:
                break;
            }




            break;
          case CANIF_SET_ONLINE:
          case CANIF_SET_TX_ONLINE:



            break;
# 5488 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
          default:
            break;
        }


        CanIf_CtrlStates.raw[((ControllerId))].PduModeOfCtrlStates = (((CanIf_PduGetModeType)CanIfState[(CanIf_CtrlStates.raw[(ControllerId)].PduModeOfCtrlStates)][PduModeRequest]));
      }
      ;
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (9u), (errorId)));
  }




  return retval;
}
# 5539 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
Std_ReturnType CanIf_GetPduMode(uint8 ControllerId, CanIf_PduGetModeType * PduModePtr)
{

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
# 5557 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 15u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }

  else if (PduModePtr == ((void *)0))
  {

    errorId = 20u;
  }
  else

  {


    *PduModePtr = (CanIf_CtrlStates.raw[(ControllerId)].PduModeOfCtrlStates);
    retval = 0u;
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (10u), (errorId)));
  }




  return retval;
}
# 5636 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static Std_ReturnType CanIf_TxQueueTransmit( PduIdType PduId)
{

  Can_PduType localPdu;
  CanIf_CanDrvReturnType txResult;
  uint32_least hth;

  Std_ReturnType retval = 1u;
  uint8 errorId = 0u;
# 5659 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (PduId >= 2u)
  {

    errorId = 50u;
  }
  else

  {

    hth = (CanIf_TxPduConfig[(PduId)].MailBoxConfigIdxOfTxPduConfig);




    switch ((CanIf_MailBoxConfig[(hth)].TxBufferHandlingTypeOfMailBoxConfig))
    {

      case 1u:




        (localPdu).id = (CanIf_TxPduConfig[(PduId)].CanIdOfTxPduConfig);

        (localPdu).length = (uint8)(CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueueParams.eBaseParams.eSduLength;

        (localPdu).sdu = (&(CanIf_TxQueueData.raw[((CanIf_TxQueueIndex2DataStartStop[((CanIf_TxPduQueueIndex[(PduId)].TxQueueIndex2DataStartStopIdxOfTxPduQueueIndex))].TxQueueDataStartIdxOfTxQueueIndex2DataStartStop))]));



        (localPdu).swPduHandle = (PduId);
        break;
# 5707 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      default:


        localPdu.id = 0u;
        errorId = 45u;
        break;
    }
# 5751 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    txResult = Can_Write((Can_HwHandleType)hth, &localPdu);


    if (txResult == CAN_OK)
    {


      switch ((CanIf_MailBoxConfig[(hth)].TxBufferHandlingTypeOfMailBoxConfig))
      {

        case 1u:
          (void)CanIf_ClearPrioByCanIdTxPduAsQueued(PduId);
          break;
# 5781 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
        default:
          break;
      }
      retval = 0u;
    }
    else if (txResult == CAN_BUSY)
    {

      retval = 0u;
    }
    else
    {
      errorId = 53u;

    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (250u), (errorId)));
  }



  return retval;
}
# 5852 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
static Std_ReturnType CanIf_TxQueueTreatment(Can_HwHandleType hth)
{
# 5863 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  uint32_least TxPduId;
  uint32_least idx2MappedTxPdus;

  uint32_least txBufferPrioByCanIdBaseIdx;
# 5875 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  Std_ReturnType retval = 1u;
  uint32_least txBufferCfgIdx = (CanIf_MailBoxConfig[(hth)].TxBufferCfgIdxOfMailBoxConfig);



  switch ((CanIf_MailBoxConfig[(hth)].TxBufferHandlingTypeOfMailBoxConfig))
  {

    case 1u:
# 5920 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      txBufferPrioByCanIdBaseIdx = (CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdBaseIdxOfTxBufferPrioByCanIdByteQueueConfig);


      if (((CanIf_TxBufferPrioByCanIdBase.raw[(txBufferPrioByCanIdBaseIdx)]).eQueueCounter) != 0u)
      {

        for (idx2MappedTxPdus = ((uint32_least)(CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdByteQueueMappedTxPdusEndIdxOfTxBufferPrioByCanIdByteQueueConfig)-1u); idx2MappedTxPdus >= (CanIf_TxBufferPrioByCanIdByteQueueConfig[(txBufferCfgIdx)].TxBufferPrioByCanIdByteQueueMappedTxPdusStartIdxOfTxBufferPrioByCanIdByteQueueConfig); idx2MappedTxPdus--)
        {
          TxPduId = (CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdus[(idx2MappedTxPdus)].TxPduConfigIdxOfTxBufferPrioByCanIdByteQueueMappedTxPdus);

          if ((CanIf_TxQueue.raw[((CanIf_TxPduQueueIndex[(TxPduId)].TxQueueIdxOfTxPduQueueIndex))]).eQueued != 0u)
          {


            retval = CanIf_TxQueueTransmit((PduIdType)TxPduId);
            break;
          }
        }
      }

      break;
# 5981 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
    default:
      break;
  }
  return retval;
}
# 6071 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_InitMemory(void)
{

  uint8 controllerId;
# 6087 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  for (controllerId = 0u; controllerId < (sizeof(CanIf_CtrlStates) / sizeof(CanIf_CtrlStatesType)); controllerId++)
  {
    CanIf_CtrlStates.raw[((controllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_UNINIT));
  }
}
# 8412 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
void CanIf_ControllerModeIndication(uint8 ControllerId, CanIf_ControllerModeType ControllerMode)

{

  uint8 errorId = 0u;
  CanIf_CtrlModeIndicationFctType cbkFct;
  CanIf_ControllerModeType canIfCtrlMode;
# 8432 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 14u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }
  else

  {






    {
# 8467 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
      canIfCtrlMode = ControllerMode;




      switch(canIfCtrlMode)
      {
        case CANIF_CS_STOPPED:

          switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
          {
            case CANIF_CS_STARTED:
            case CANIF_CS_SLEEP:


              CanIf_CtrlStates.raw[((ControllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_STOPPED));







              CanIf_CtrlStates.raw[((ControllerId))].TxConfStateOfCtrlStates = ((CANIF_NO_NOTIFICATION));

              break;
            case CANIF_CS_STOPPED:



              break;
            default:

              break;
          }
          break;
        case CANIF_CS_STARTED:

          switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
          {
            case CANIF_CS_STOPPED:


              CanIf_CtrlStates.raw[((ControllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_STARTED));
              break;
            case CANIF_CS_STARTED:


              break;
            case CANIF_CS_SLEEP:


              break;
            default:

              break;
          }
          break;
        case CANIF_CS_SLEEP:

          switch((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates))
          {
            case CANIF_CS_STOPPED:
            case CANIF_CS_SLEEP:


              CanIf_CtrlStates.raw[((ControllerId))].CtrlModeOfCtrlStates = ((CANIF_CS_SLEEP));
              break;
            case CANIF_CS_STARTED:

              break;
            default:

              break;
          }
          break;
        default:

          break;
      }


      cbkFct = ((*((&(CanIf_CtrlModeIndicationFctPtr)))));


      if (cbkFct != ((void *)0))
      {

        cbkFct(ControllerId, canIfCtrlMode);
      }
    }
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (23u), (errorId)));
  }



}
# 8634 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
CanIf_NotifStatusType CanIf_GetTxConfirmationState(uint8 ControllerId)
{

  CanIf_NotifStatusType retval = CANIF_NO_NOTIFICATION;
  uint8 errorId = 0u;
# 8652 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
  if (ControllerId >= 1u)
  {

    errorId = 14u;
  }

  else if ((CanIf_CtrlStates.raw[(ControllerId)].CtrlModeOfCtrlStates) == CANIF_CS_UNINIT)
  {

    errorId = 30u;
  }
  else

  {


    retval = (CanIf_CtrlStates.raw[(ControllerId)].TxConfStateOfCtrlStates);
  }



  if (errorId != 0u)
  {
    ((void)Det_ReportError(60u, 0, (25u), (errorId)));
  }



  return retval;
}
# 10426 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c"
# 1 "GenData/CanIf_MemMap.h" 1
# 86 "GenData/CanIf_MemMap.h"
#pragma section
# 10427 "../../../../CBD2300515_D00/BSW/CanIf/CanIf.c" 2
