# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 53 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 1
# 54 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 55 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 186 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 193 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1138 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1192 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1371 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1505 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1540 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1577 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
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
# 1637 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
typedef struct sCanIf_PCConfigType
{
  uint8 CanIf_PCConfigNeverUsed;
} CanIf_PCConfigType;

typedef CanIf_PCConfigType CanIf_ConfigType;
# 1671 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1672 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_BusOffNotificationFctType CanIf_BusOffNotificationFctPtr;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1677 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1692 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1693 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_CanIfCtrlId2MappedTxBuffersConfigType CanIf_CanIfCtrlId2MappedTxBuffersConfig[1];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1698 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2







# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1706 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_CtrlModeIndicationFctType CanIf_CtrlModeIndicationFctPtr;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1711 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1731 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1732 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_MailBoxConfigType CanIf_MailBoxConfig[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1737 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1751 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1752 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_MappedTxBuffersConfigType CanIf_MappedTxBuffersConfig[1];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1757 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1772 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1773 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_RxIndicationFctListType CanIf_RxIndicationFctList[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1778 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1797 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1798 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_RxPduConfigType CanIf_RxPduConfig[4];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1803 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1820 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1821 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxBufferPrioByCanIdByteQueueConfigType CanIf_TxBufferPrioByCanIdByteQueueConfig[1];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1826 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1840 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1841 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdus[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1846 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1857 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1858 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxConfirmationFctType CanIf_TxConfirmationFctList[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1863 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1883 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1884 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxPduConfigType CanIf_TxPduConfig[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1889 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1905 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1906 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxPduQueueIndexType CanIf_TxPduQueueIndex[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1911 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1926 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 1927 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern const CanIf_TxQueueIndex2DataStartStopType CanIf_TxQueueIndex2DataStartStop[2];


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 1932 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1947 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1948 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern CanIf_CtrlStatesUType CanIf_CtrlStates;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1953 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1964 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1965 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern CanIf_TxBufferPrioByCanIdBaseUType CanIf_TxBufferPrioByCanIdBase;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1970 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1981 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1982 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern CanIf_TxQueueUType CanIf_TxQueue;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1987 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 1998 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 1999 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2

extern CanIf_TxQueueDataUType CanIf_TxQueueData;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 2004 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Cfg.h" 2
# 54 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanTp_Cfg.h" 1
# 57 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 1 "../../../BSW/CanTp/CanTp_Cbk.h" 1
# 37 "../../../BSW/CanTp/CanTp_Cbk.h"
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
# 38 "../../../BSW/CanTp/CanTp_Cbk.h" 2
# 64 "../../../BSW/CanTp/CanTp_Cbk.h"
# 1 "Include/MemMap.h" 1
# 374 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 65 "../../../BSW/CanTp/CanTp_Cbk.h" 2
# 80 "../../../BSW/CanTp/CanTp_Cbk.h"
void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr);
# 94 "../../../BSW/CanTp/CanTp_Cbk.h"
void CanTp_TxConfirmation(PduIdType TxPduId);
# 213 "../../../BSW/CanTp/CanTp_Cbk.h"
# 1 "Include/MemMap.h" 1
# 381 "Include/MemMap.h"
#pragma section
# 214 "../../../BSW/CanTp/CanTp_Cbk.h" 2
# 58 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

# 1 "Include/CanIf_Cdd.h" 1
# 37 "Include/CanIf_Cdd.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 38 "Include/CanIf_Cdd.h" 2
# 51 "Include/CanIf_Cdd.h"
void FblCw_ControllerBusOff(uint8 controllerId);
# 61 "Include/CanIf_Cdd.h"
void FblCw_ControllerModeIndication(uint8 controllerId, CanIf_ControllerModeType controllerMode);







void FblCw_CheckTransceiverWakeFlagIndication(uint8 transceiverId);







void FblCw_ClearTrcvWufFlagIndication(uint8 transceiverId);
# 86 "Include/CanIf_Cdd.h"
void FblCw_ConfirmPnAvailability(uint8 transceiverId);
# 96 "Include/CanIf_Cdd.h"
void FblCw_TransceiverModeIndication(uint8 transceiverId, CanTrcv_TrcvModeType transceiverMode);


# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 100 "Include/CanIf_Cdd.h" 2
# 60 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2




# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 101 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 65 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 86 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 117 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 87 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 121 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 122 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_BusOffNotificationFctType CanIf_BusOffNotificationFctPtr = FblCw_ControllerBusOff;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 127 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 142 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 143 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_CanIfCtrlId2MappedTxBuffersConfigType CanIf_CanIfCtrlId2MappedTxBuffersConfig[1] = {

  { 1u , 0u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 151 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2







# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 159 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_CtrlModeIndicationFctType CanIf_CtrlModeIndicationFctPtr = FblCw_ControllerModeIndication;


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 164 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 184 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 185 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_MailBoxConfigType CanIf_MailBoxConfig[2] = {

  { 0u , 0u , 0u , 0x00u, 0u , 1u, CANIF_TxBasicCANMailbox },
  { 0u , 0u , 3u , 0xFFu, 255u , 3u , CANIF_RxBasicCANMailbox }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 194 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 208 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 209 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_MappedTxBuffersConfigType CanIf_MappedTxBuffersConfig[1] = {

  { 0u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 217 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 232 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 233 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_RxIndicationFctListType CanIf_RxIndicationFctList[2] = {

  { { (CanIf_SimpleRxIndicationFctType)((void *)0) } , CanIf_SimpleRxIndicationLayout },
  { { (CanIf_SimpleRxIndicationFctType)CanTp_RxIndication }, CanIf_AdvancedRxIndicationLayout }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 242 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 261 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 262 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_RxPduConfigType CanIf_RxPduConfig[4] = {

  { 0x07DFu , 0x47FFu , 3u , 1u , 64u, CANIF_MSG_TYPE_FD_CAN },
  { 0x07DFu , 0x07FFu , 2u , 1u , 8u, CANIF_MSG_TYPE_NO_FD_CAN },
  { 0x0727u , 0x07FFu , 0u , 1u , 64u, CANIF_MSG_TYPE_FD_CAN },
  { 0x0727u , 0x07FFu , 1u, 1u , 8u, CANIF_MSG_TYPE_NO_FD_CAN }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 273 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 290 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 291 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxBufferPrioByCanIdByteQueueConfigType CanIf_TxBufferPrioByCanIdByteQueueConfig[1] = {

  { 0u , 2u , 2u , 0u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 299 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 313 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 314 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdusType CanIf_TxBufferPrioByCanIdByteQueueMappedTxPdus[2] = {

  { 0u },
  { 1u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 323 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 334 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 335 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxConfirmationFctType CanIf_TxConfirmationFctList[2] = {

              (CanIf_TxConfirmationFctType)((void *)0) ,
              CanTp_TxConfirmation
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 344 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 364 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 365 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxPduConfigType CanIf_TxPduConfig[2] = {

  { 0x472Fu, 0u, 1u , 0u , 0u , 1u , 64u },
  { 0x072Fu, 1u , 1u , 0u , 0u , 1u , 8u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 374 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 390 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 391 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxPduQueueIndexType CanIf_TxPduQueueIndex[2] = {

  { 0x00u, 0u , 0u },
  { 0x00u, 1u , 1u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 400 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 415 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 256 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 416 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

const CanIf_TxQueueIndex2DataStartStopType CanIf_TxQueueIndex2DataStartStop[2] = {

  { 64u , 64u , 0u },
  { 72u , 8u , 64u }
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 272 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h"
#pragma section
# 425 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 440 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 441 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

CanIf_CtrlStatesUType CanIf_CtrlStates;





# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 449 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 460 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 461 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

CanIf_TxBufferPrioByCanIdBaseUType CanIf_TxBufferPrioByCanIdBase;





# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 469 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 480 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 481 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

CanIf_TxQueueUType CanIf_TxQueue;






# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 490 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2
# 501 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 502 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2

CanIf_TxQueueDataUType CanIf_TxQueueData;
# 514 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_MemMap.h" 1
# 515 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/CanIf_Lcfg.c" 2