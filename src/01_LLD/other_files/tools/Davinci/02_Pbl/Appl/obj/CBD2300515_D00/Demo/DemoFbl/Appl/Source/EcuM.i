# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
# 57 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
# 1 "Include/EcuM.h" 1
# 57 "Include/EcuM.h"
# 1 "Include/EcuM_Cbk.h" 1
# 63 "Include/EcuM_Cbk.h"
# 1 "Include/EcuM_Generated_Types.h" 1
# 63 "Include/EcuM_Generated_Types.h"
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
# 64 "Include/EcuM_Generated_Types.h" 2





typedef uint32 EcuM_WakeupSourceType;
# 64 "Include/EcuM_Cbk.h" 2
# 72 "Include/EcuM_Cbk.h"
void EcuM_BswErrorHook(uint16 moduleId, uint8 errorId);
void EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource);
void EcuM_GeneratorCompatibilityError(uint16 moduleId, uint8 instanceId);
void EcuM_SetWakeupEvent(EcuM_WakeupSourceType wakeupSource);
void EcuM_ValidationWakeupEvent(EcuM_WakeupSourceType wakeupSource);
# 58 "Include/EcuM.h" 2
# 1 "../../../BSW/_Common/ComStack_Types.h" 1
# 68 "../../../BSW/_Common/ComStack_Types.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
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
# 59 "Include/EcuM.h" 2





void EcuM_Init(void);
void EcuM_StartupTwo(void);
void EcuM_Shutdown(void);
# 58 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2


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
# 61 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
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
# 62 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2

# 1 "../../../BSW/CryIf/CryIf.h" 1
# 65 "../../../BSW/CryIf/CryIf.h"
# 1 "../../../BSW/Csm/Csm_Types.h" 1
# 38 "../../../BSW/Csm/Csm_Types.h"
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
# 66 "../../../BSW/CryIf/CryIf.h" 2
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
# 64 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 1
# 217 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "GenData/Crypto_30_LibCv_Cfg.h" 1
# 54 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "../../../BSW/vSecPrim/vSecPrim.h" 1
# 97 "../../../BSW/vSecPrim/vSecPrim.h"
# 1 "../../../BSW/vSecPrim/vSecPrim_types.h" 1
# 37 "../../../BSW/vSecPrim/vSecPrim_types.h"
# 1 "../../../BSW/vSecPrim/ESLib_Helper.h" 1
# 40 "../../../BSW/vSecPrim/ESLib_Helper.h"
# 1 "../../../BSW/vSecPrim/ESLib.h" 1
# 42 "../../../BSW/vSecPrim/ESLib.h"
# 1 "../../../BSW/vSecPrim/ESLib_t.h" 1
# 37 "../../../BSW/vSecPrim/ESLib_t.h"
# 1 "../../../BSW/vSecPrim/actConfig.h" 1
# 40 "../../../BSW/vSecPrim/actConfig.h"
# 1 "GenData/vSecPrim_Cfg.h" 1
# 962 "GenData/vSecPrim_Cfg.h"
typedef boolean vSecPrim_ANSI_X963EnabledOfKeyDerivationType;


typedef boolean vSecPrim_ANSI_X963_SHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_ANSI_X963_SHA512EnabledOfKeyDerivationType;


typedef boolean vSecPrim_AeadChaCha20Poly1305EnabledOfCipherType;


typedef boolean vSecPrim_Aes128EnabledOfCipherType;


typedef boolean vSecPrim_Aes192EnabledOfCipherType;


typedef boolean vSecPrim_Aes256EnabledOfCipherType;


typedef boolean vSecPrim_AesCcmEnabledOfCipherType;


typedef uint8 vSecPrim_AesSpeedUpOfOptimizationType;


typedef uint8 vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralType;


typedef boolean vSecPrim_ChaCha20EnabledOfCipherType;


typedef uint8 vSecPrim_ChaCha20SpeedUpOfOptimizationType;


typedef boolean vSecPrim_ClearWorkspaceEnabledOfGeneralType;


typedef boolean vSecPrim_CmacEnabledOfMacType;


typedef boolean vSecPrim_CtrDrbgEnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_DesEnabledOfCipherType;


typedef uint32 vSecPrim_DrbgReseedIntervalOfGeneralType;


typedef boolean vSecPrim_ECBD_GenericEnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECCEnabledOfKeyGenerationType;


typedef boolean vSecPrim_ECDH_25519EnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECDH_GenericEnabledOfKeyExchangeType;


typedef boolean vSecPrim_ECDSA_25519EnabledOfSignatureType;


typedef boolean vSecPrim_ECDSA_GenericEnabledOfSignatureType;


typedef uint8 vSecPrim_ECPMaxKeySizeOfGeneralType;


typedef boolean vSecPrim_FIPS186EnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_GMacEnabledOfMacType;


typedef boolean vSecPrim_GcmEnabledOfCipherType;


typedef boolean vSecPrim_HKDF_HMAC_SHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_HKDF_HMAC_SHA384EnabledOfKeyDerivationType;


typedef boolean vSecPrim_HKDF_SHA2_256_OnestepEnabledOfKeyDerivationType;


typedef boolean vSecPrim_HMacRMD160EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA1EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA2_256EnabledOfMacType;


typedef boolean vSecPrim_HMacSHA2_384EnabledOfMacType;


typedef boolean vSecPrim_HashDrbgEnabledOfRandomNumberGenerationType;


typedef boolean vSecPrim_MD5EnabledOfHashType;


typedef boolean vSecPrim_PKCS5EnabledOfKeyDerivationType;


typedef boolean vSecPrim_PKCS5HMacSHA256EnabledOfKeyDerivationType;


typedef boolean vSecPrim_Poly1305EnabledOfMacType;


typedef boolean vSecPrim_RC2EnabledOfCipherType;


typedef boolean vSecPrim_RIPEMD160EnabledOfHashType;


typedef uint8 vSecPrim_RSAMaxKeySizeOfGeneralType;


typedef boolean vSecPrim_RSA_OAEP_SHA1EnabledOfCipherType;


typedef boolean vSecPrim_RSA_OAEP_SHA2_256EnabledOfCipherType;


typedef boolean vSecPrim_RSA_PSS_RIPEMD160EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_PSS_SHA1EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_PSS_SHA2_256EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15EnabledOfCipherType;


typedef boolean vSecPrim_RSA_V15_RIPEMD160EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15_SHA1EnabledOfSignatureType;


typedef boolean vSecPrim_RSA_V15_SHA2_256EnabledOfSignatureType;


typedef boolean vSecPrim_SHA1EnabledOfHashType;


typedef boolean vSecPrim_SHA2_256EnabledOfHashType;


typedef boolean vSecPrim_SHA2_512EnabledOfHashType;


typedef boolean vSecPrim_SHA3EnabledOfHashType;


typedef boolean vSecPrim_SPAKE2pEnabledOfKeyExchangeType;


typedef uint8 vSecPrim_SPAKE2pMaxAADSizeOfGeneralType;


typedef uint8 vSecPrim_SPAKE2pPreambleOKMLengthOfGeneralType;


typedef uint8 vSecPrim_Sha1SpeedUpOfOptimizationType;


typedef uint8 vSecPrim_Sha256SpeedUpOfOptimizationType;


typedef uint8 vSecPrim_Sha512SpeedUpOfOptimizationType;


typedef boolean vSecPrim_SipHashEnabledOfMacType;


typedef uint8 vSecPrim_SizeOfEsltLengthOfGeneralType;


typedef boolean vSecPrim_SupportUInt64OfGeneralType;


typedef boolean vSecPrim_TDesEnabledOfCipherType;


typedef boolean vSecPrim_UseVstdLibOfGeneralType;


typedef uint8 vSecPrim_WatchdogLevelOfGeneralType;
# 1176 "GenData/vSecPrim_Cfg.h"
typedef const vSecPrim_AesSpeedUpOfOptimizationType * vSecPrim_AesSpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralType * vSecPrim_CTRDRBGAES128SecurityStrengthOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_ChaCha20SpeedUpOfOptimizationType * vSecPrim_ChaCha20SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_ECPMaxKeySizeOfGeneralType * vSecPrim_ECPMaxKeySizeOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_RSAMaxKeySizeOfGeneralType * vSecPrim_RSAMaxKeySizeOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_Sha1SpeedUpOfOptimizationType * vSecPrim_Sha1SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_Sha256SpeedUpOfOptimizationType * vSecPrim_Sha256SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_Sha512SpeedUpOfOptimizationType * vSecPrim_Sha512SpeedUpOfOptimizationOfPCConfigPtrType;


typedef const vSecPrim_SizeOfEsltLengthOfGeneralType * vSecPrim_SizeOfEsltLengthOfGeneralOfPCConfigPtrType;


typedef const vSecPrim_WatchdogLevelOfGeneralType * vSecPrim_WatchdogLevelOfGeneralOfPCConfigPtrType;
# 1215 "GenData/vSecPrim_Cfg.h"
typedef struct svSecPrim_PCConfigType
{
  uint8 vSecPrim_PCConfigNeverUsed;
} vSecPrim_PCConfigType;

typedef vSecPrim_PCConfigType vSecPrim_ConfigType;
# 41 "../../../BSW/vSecPrim/actConfig.h" 2
# 38 "../../../BSW/vSecPrim/ESLib_t.h" 2
# 1 "../../../BSW/vSecPrim/actITypes.h" 1
# 40 "../../../BSW/vSecPrim/actITypes.h"
# 1 "../../../BSW/vSecPrim/actPlatformTypes.h" 1
# 77 "../../../BSW/vSecPrim/actPlatformTypes.h"
typedef uint8 actPlatformUint8;
typedef uint16 actPlatformUint16;
typedef uint32 actPlatformUint32;
# 90 "../../../BSW/vSecPrim/actPlatformTypes.h"
typedef unsigned long long actPlatformUint64;
# 41 "../../../BSW/vSecPrim/actITypes.h" 2







typedef actPlatformUint8 actU8;
typedef actPlatformUint16 actU16;
typedef actPlatformUint32 actU32;

typedef actPlatformUint64 actU64;
# 63 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actLengthType;
typedef actLengthType actBNLENGTH;
typedef unsigned char actBoolean;

typedef actLengthType actDRBGReseedCounterType;


typedef const actU8 * actPKey;


typedef const actU8 * actPROMU8;
# 132 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actBNDIGIT;
typedef actU64 actBNDDIGIT;
# 147 "../../../BSW/vSecPrim/actITypes.h"
typedef actU32 actRETURNCODE;
# 578 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
  actU32 e_key[64];
  actLengthType key_dword_len;
  actLengthType buffer_used;
  actU8 prev_block[(16u)];
  actU8 buffer[(16u)];
  actU8 mode;
} actAESSTRUCT;


typedef actAESSTRUCT actCMACAESSTRUCT;


typedef struct
{
  actU32 H[5];
  actU32 low_count, hi_count;
  actLengthType buffer_used;
  actU8 buffer[(64u)];
} actSHASTRUCT;


typedef struct
{
  actU32 H[8];
  actU32 low_count, hi_count;
  actLengthType buffer_used;
  actU16 result_length;
  actU8 buffer[(64u)];
} actSHA224STRUCT, actSHA256STRUCT;


typedef struct
{

  actU64 H[8];
  actU64 count_L, count_H;




  actLengthType buffer_used;
  actU16 result_length;
  actU8 buffer[(128u)];
} actSHA512_224STRUCT, actSHA512_256STRUCT, actSHA384STRUCT, actSHA512STRUCT;



typedef struct
{
  actU64 state[(1600u)/64u];
  actLengthType strength;
  actLengthType rUsed;
  actLengthType dUsed;
  actLengthType rate;
  actU8 digest[(512u / 8u)];
  actU8 data[(64u) >> 3];
  actU8 pad1;
  actU8 phase;
} actKECCAKcSTRUCT;
# 655 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
   actU32 H[5];
   actU32 low_count, hi_count;
   actLengthType buffer_used;
   actU8 buffer[(64u)];
} actRMD160STRUCT;


typedef struct
{
  actSHASTRUCT sha;
  actU8 key_buf[(64u)];
  actLengthType key_length;
} actHASHMACSTRUCT;


typedef struct
{
  actSHA256STRUCT sha256;
  actU8 key_buf[(64u)];
  actLengthType key_length;
} actHASHMACSHA256STRUCT;


typedef struct
{
   actSHA384STRUCT sha384;
   actU8 key_buf[(128u)];
   actLengthType key_length;
} actHASHMACSHA384STRUCT;


typedef struct
{
   actRMD160STRUCT rmd160;
   actU8 key_buf[(64u)];
   actLengthType key_length;
} actHASHMACRMD160STRUCT;

typedef union
{



  actHASHMACSTRUCT hmac_sha1;
}actHASHMACUNION_KDF2;


typedef struct
{
  actU32 iteration_count;
  actHASHMACUNION_KDF2 hmac;

  actU8 U_buf[(20u)];
  actU8 F_buf[(20u)];
} actKDF2STRUCT;


typedef struct
{
  actSHASTRUCT actwsHash;
  actU8 hashBuf[(20u)];
} actKDFX963STRUCT;


typedef struct
{
  actSHA256STRUCT actwsHash;
  actU8 hashBuf[(32u)];
} actKDFX963SHA256;


typedef struct
{
  actSHA512STRUCT actwsHash;
  actU8 hashBuf[(64u)];
} actKDFX963SHA512;


typedef union
{



  actHASHMACSHA256STRUCT hmac_sha256;
}actHASHMACUNION_HKDF;


typedef struct
{
  actHASHMACUNION_HKDF actwsHmac;
  union
  {





    actU8 tmpKey[(32u)];
    actU8 blockT[(32u)];
  }tmpBlock;
  actU8 keyDerivationKey[(32u)];
  actU8 methodID;
}actHKDFSTRUCT;


typedef struct
{
  actSHA256STRUCT actwsSha;
  actU8 blockT[(32u)];
  actU8 hashID;
}actHKDFHASHSTRUCT;


typedef struct
{
  actLengthType bytes_remain;
  actU8 X_KEY[(20u)];
  actSHASTRUCT sha1;
} actFIPS186STRUCT;


typedef struct
{
  actU8 result[((16u))];
  actU8 input[((16u))];
} actCTRDRBGTmpBufferStruct;

typedef struct
{
  actAESSTRUCT wsAES;
  union
  {
    actU8 additionalInputPrepared[(((32u)) + ((16u)))];
    actU8 seedData[(((32u)) + ((16u)))];
  } tmpBuffer;
  union
  {
    actU8 blockUpdateTmpBuffer[(((32u)) + ((16u)))];
    actCTRDRBGTmpBufferStruct BCCTmpBuffer;
  } BCCUpdateTmpBuffer;
  actU8 DFencryptBuffer[(((32u)) + ((16u)))];
  actU8 DFIV[((16u))];
  union
  {
    actU8 blockOfS[((16u))];
    actU8 tempAesBlock[((16u))];
  } tempBlocks;
  actU8 key[((32u))];
  actU8 variable[((16u))];
  actDRBGReseedCounterType reseedCount;
  actU8 mode;
  actU8 seedState;
} actCTRDRBGSTRUCT;

typedef struct
{
  actSHA512STRUCT wsSHA512;
  actU8 DFtmp[2u * (64u)];
  actU8 hashdata[(128u)];
  actU8 tmpdigest[(64u)];
  actU8 constant[(111u)];
  actU8 variable[(111u)];
  actU32 reseedCount;
  actU8 mode;
  actU8 seedState;
} actHASHDRBGSTRUCT;



typedef struct
{
  actBNDIGIT x[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT y[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT z[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT t[(256u /8u /sizeof (actBNDIGIT))];
} actPoint;
# 843 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
  actBNDIGIT * m;
  actLengthType m_length;
  actLengthType m_byte_length;
  actBNDIGIT * RR;
  actBNDIGIT m_bar;






} actBNRING;

typedef struct
{
  actBNRING p_field;
  actBNRING n_field;
  const actU8 * a_R;
  const actU8 * b_R;
  const actU8 * G_R;
  boolean a_equals_p_minus_3;
  actBNDIGIT * t[(((((1u << (((1u))-1u))+2u))>(4u))? (((1u << (((1u))-1u))+2u)):(4u))];
  actLengthType groups;
  const actU8 * prec_first;
} actECCURVE;


typedef struct
{
  actBNDIGIT privKey[(256u/((32u)))];
  actBNDIGIT ephKey[(256u/((32u)))];
} actECPPrivateKeys;

typedef struct
{
  actBNDIGIT u1[(256u/((32u))) + 1u];
  actBNDIGIT u2[(256u/((32u))) + 1u];
} actECPTmpVarVerify;

typedef struct
{
  actBNDIGIT xcoord[(256u/((32u)))];
  actBNDIGIT ycoord[(256u/((32u)))];
} actECPaffinePointBuffer;

typedef struct
{
  actBNDIGIT xcoord[(256u/((32u)))];
  actBNDIGIT ycoord[(256u/((32u)))];
  actBNDIGIT zcoord[(256u/((32u)))];
} actECPprojectivePointBuffer;


typedef struct
{
  actECCURVE Curve;
  actBNDIGIT p_field_modulus[(256u/((32u)))];
  actBNDIGIT p_field_RR[(256u/((32u)))];
  actBNDIGIT n_field_modulus[(256u/((32u)))];
  actBNDIGIT n_field_RR[(256u/((32u)))];
  actBNDIGIT Curve_tmp0[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp1[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp2[(256u/((32u))) + 1u];
  actBNDIGIT Curve_tmp3[(256u/((32u))) + 1u];
}actECPBasicStruct;




typedef struct
{

  actECPBasicStruct baseData;

  union
  {
    actECPTmpVarVerify u12;
    actECPPrivateKeys privKeys;
  } dataPair;

  union
  {
    actBNDIGIT hashed_message[(256u/((32u)))];
    actBNDIGIT secret_x[(256u/((32u)))];
  }msg;

  actBNDIGIT signature_r[(256u/((32u)))];
  actBNDIGIT signature_s[(256u/((32u)))];
  actBNDIGIT public_key_x[(256u/((32u)))];
  actBNDIGIT public_key_y[(256u/((32u)))];

  union
  {
    actECPprojectivePointBuffer kG;
    actECPprojectivePointBuffer QG;
  } multG;

  union
  {
    actECPaffinePointBuffer precomputedPoint;
    actECPaffinePointBuffer basePoint;
  } curvePoint;

  actECPprojectivePointBuffer Q;

} actECPSTRUCT;


typedef struct
{

  actECPBasicStruct baseData;


  actECPprojectivePointBuffer M;
  actECPprojectivePointBuffer N;
  actECPprojectivePointBuffer L;
  actECPprojectivePointBuffer pA;
  actECPprojectivePointBuffer pB;
  actECPprojectivePointBuffer Z;
  actECPprojectivePointBuffer V;


  actECPprojectivePointBuffer kG;
  actECPprojectivePointBuffer tmp1;

  union
  {
    actECPprojectivePointBuffer tmp2;
    actU8 hashTT[(32u)];
  } tmpVariables;

  actECPaffinePointBuffer basePoint;


  actBNDIGIT w0[(256u/((32u)))];
  actBNDIGIT w1[(256u/((32u)))];

  actBNDIGIT randomNumber[(256u/((32u)))];

  actLengthType aadLength;
  actU32 ciphersuite;


  actU8 addInHKDF[16u + 16u];
  actU8 pointToByteString[(32u)];
  actU8 macKeys[2u * (16u)];

  actU8 algoState;
  actU8 setAdditionalInformationWasCalled;
  actU8 isPartyA;
} actSPAKE2PSTRUCT;


typedef struct
{

  actECPBasicStruct baseData;


  actECPprojectivePointBuffer L;
  actECPaffinePointBuffer basePoint;


  actBNDIGIT digitsW0[(((((64u) + 1u)/2u) + ((((32u)))>>3) - 1u)/((((32u)))>>3)) + 1u];
  actBNDIGIT digitsW1[(((((64u) + 1u)/2u) + ((((32u)))>>3) - 1u)/((((32u)))>>3)) + 1u];
  actBNDIGIT result[(256u/((32u))) + 1u];
} actSPAKE2PPreambleStruct;


typedef struct
{
  actU32 nECUs;
  actU32 ecuID;
} actECBD;

typedef struct
{
  actECBD bd;

  actECPBasicStruct baseData;

  actBNDIGIT ai[(256u/((32u)))];
  actBNDIGIT Zi_x[(256u/((32u)))];
  actBNDIGIT Zi_y[(256u/((32u)))];
  actBNDIGIT Zi_z[(256u/((32u)))];
  actBNDIGIT Xi_x[(256u/((32u)))];
  actBNDIGIT Xi_y[(256u/((32u)))];
  actBNDIGIT Xi_z[(256u/((32u)))];
  actBNDIGIT TP_x[(256u/((32u)))];
  actBNDIGIT TP_y[(256u/((32u)))];
  actBNDIGIT TP_z[(256u/((32u)))];
} actECBDstruct;


typedef struct
{
  actBNDIGIT tempA[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempB[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempC[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempD[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempE[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempF[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempG[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempH[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT temp1[(512u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT tempQ[(256u /8u /sizeof (actBNDIGIT))];
} actTempType;


typedef struct
{
  actBNDIGIT prime[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT order[(256u /8u /sizeof (actBNDIGIT))];
  actBNDIGIT orderB[(256u /8u /sizeof (actBNDIGIT)) + 1u];

  actBNRING pRing;
  actBNRING qRing;
  actTempType auxVar;
} actCurve25519ws;


typedef struct
{
  actU32 instance;
  union
  {
    actSHA512STRUCT sha512;
    actPoint point_A;
    actPoint point_rB;
    actPoint point_sB;
  } shaWs;
  union
  {
    actU8 hashValue[(64u)];
    actBNDIGIT bnDigit_s;
    actBNDIGIT bnDigit_k;
  } hashBuf;
  actU8 privateKey[(64u)];
  union
  {
    actU8 publicKey[(32u)];
    actBNDIGIT bnDigit_a;
  } pubKeyBuf;
  const actU8 * message;
  actU32 msgLen;
  const actU8 * context;
  actU32 ctxLen;
  actCurve25519ws coreWS;
} actEd25519STRUCT;


typedef struct
{
  actU8 privateKey[(32u)];
  union
  {
    actU8 uCoord[(32u)];
    actBNDIGIT bnDigit_x_1[(256u /8u /sizeof (actBNDIGIT))];
  } basePointBuf;
  actCurve25519ws coreWS;
} actX25519STRUCT;


typedef actX25519STRUCT actX25519Struct;
typedef actEd25519STRUCT actEd25519Struct;


typedef struct
{

  actU64 v0;
  actU64 v1;
  actU64 v2;
  actU64 v3;

  actU8 buffer[(8u)];
  actU32 length;
  actU8 buffer_used;
} actSipHashSTRUCT;


typedef struct
{
  actLengthType buffer_used;
  actU8 buffer[(16u)];
  actU32 H[((16u)/(4u))];
  actU8 Y[(16u)];



  actU32 M[16][4];

} actGHASHSTRUCT;


typedef struct
{
  actAESSTRUCT aes;
  actGHASHSTRUCT ghash;
  actU8 J0[16u];
  actU8 J[16u];
  actU8 encJ[16u];
  actLengthType buffer_used;
  actU8 buffer[16u];
  uint8 state;
  actU32 count[4];
} actGCMSTRUCT;


typedef struct
{
  actAESSTRUCT wsAES;
  actLengthType aadLen;
  actLengthType msgLen;
  actLengthType remainingLen;
  actU8 AESCounter[(16u)];
  actU8 dataBlockB[(16u)];
  actU8 dataBlockIn[(16u)];
  actU8 dataBlockOut[(16u)];
  actU8 MAC[(16u)];
  actU8 nonce[(16u) - 1u];
  actU8 authFieldSize;
  actU8 lengthFieldSize;
  actU8 updateState;
} actAESCCMSTRUCT;


typedef struct
{
  actBNDIGIT cipher[(2048u/((32u)))];
  actBNDIGIT message[(2048u/((32u))) + 1u];
} actRSACipherAndMSgStruct;

typedef struct
{
  actBNRING wsRSARing;

  union
  {
    actBNDIGIT tmpInit[(2u*(2048u/((32u)))) + 2u];
    actRSACipherAndMSgStruct cipherAndMsg;
  } tmp;

  actBNDIGIT RRBuffer[(2048u/((32u))) + 1u];
  actBNDIGIT exponent[(2048u/((32u)))];
  actBNDIGIT modulusBuffer[(2048u/((32u)))];
  actBNDIGIT tmpExp[(2048u/((32u))) + 1u];

}actRSAPRIMSTRUCT;
# 1265 "../../../BSW/vSecPrim/actITypes.h"
typedef struct
{
    actBNDIGIT primeP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeDP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT primeDQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT qInv[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
    actBNDIGIT one[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
} actCRTINITSTRUCT;

typedef struct
{
  actBNDIGIT origCipherBeforeReduction[(2048u/((32u))) + 1u];
  actU8 reducedCipherInBytes[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) * ((((32u)))>>3)];
  actBNDIGIT reducedCipherInDigits[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTCIPHERSTRUCT;

typedef struct
{
  actBNDIGIT m1[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT m2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTMSGSTRUCT;

typedef struct
{
  actBNDIGIT m2Copy[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT m2ModP[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT m1m2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInv[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInvM1M2R[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
  actBNDIGIT qInvM1M2[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u)))) + 1u];
} actCRTSTEP3STRUCT;

typedef struct
{
  actBNDIGIT m2Padded[(2048u/((32u)))];
  actBNDIGIT primeQ[((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT qInvM1M2q[2u* ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  actBNDIGIT msg[(2048u/((32u)))];
} actCRTSTEP4STRUCT;

typedef struct
{
  union
  {
    actRSAPRIMSTRUCT wsRSAPrim;
    actCRTINITSTRUCT wsCRTInit;
    actCRTSTEP4STRUCT wsCRTSTEP4;
  } wsUnion1;

  union
  {
    actCRTCIPHERSTRUCT wsCRTCipherOperations;
    actCRTSTEP3STRUCT wsCRTStep3;
  } wsUnion2;

  union
  {
    actCRTMSGSTRUCT messages;
    actBNDIGIT fullModulus[2u * ((((2048u/((32u))) + 1u) / 2u) + (32u / ((32u))))];
  } keySizeBuffer;

  actLengthType p_bytes;
  actLengthType q_bytes;
  actLengthType dp_bytes;
  actLengthType dq_bytes;
  actLengthType q_inv_bytes;
  actLengthType n_bytes;


  const actU8 * p;
  const actU8 * q;
  const actU8 * dp;
  const actU8 * dq;
  const actU8 * q_inv;

} actRSACRTSTRUCT;
# 39 "../../../BSW/vSecPrim/ESLib_t.h" 2
# 63 "../../../BSW/vSecPrim/ESLib_t.h"
typedef actPlatformUint8 eslt_Size8;
typedef actPlatformUint16 eslt_Size16;
typedef actPlatformUint32 eslt_Size32;

typedef actPlatformUint64 eslt_Size64;


typedef eslt_Size8 eslt_Byte;

typedef eslt_Size32 eslt_Length;



typedef eslt_Size8 eslt_Mode;
typedef eslt_Size16 eslt_WSStatus;
typedef eslt_Size32 eslt_WSCheckSum;
# 204 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  const char * parameter;
  eslt_Size16 value;
}eslt_Version;





typedef eslt_Mode eslt_PaddingMode;




typedef eslt_Mode eslt_HashAlgorithm;
# 238 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Mode eslt_BlockMode;






typedef eslt_Mode eslt_DRBGMode;






typedef eslt_Size32 eslt_DRBGReseedCounterType;


typedef eslt_Byte eslt_DRBGSeedStatusType;






typedef eslt_Size32 eslt_SPAKE2PMode;
# 316 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_HKDFMode;
# 449 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomain;
# 486 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccDomainExt;
# 512 "../../../BSW/vSecPrim/ESLib_t.h"
typedef eslt_Byte eslt_EccSpeedUpExt;
# 521 "../../../BSW/vSecPrim/ESLib_t.h"
typedef void ( * esl_WatchdogFuncPtr)(void);


typedef struct
{
  eslt_Length size;
  eslt_WSStatus status;
  esl_WatchdogFuncPtr watchdog;
  eslt_WSCheckSum checkSum;
}eslt_WorkSpaceHeader;
# 1139 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  eslt_WorkSpaceHeader header;
  actAESSTRUCT wsAES;
} eslt_WorkSpaceAES;

typedef eslt_WorkSpaceAES eslt_WorkSpaceAES128;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES128Block;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES192;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES192Block;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES256;
typedef eslt_WorkSpaceAES eslt_WorkSpaceAES256Block;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsDES[((200u) + (2u * 8u) + 8u)];
} eslt_WorkSpaceDES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsDESBlock[(200u)];
} eslt_WorkSpaceDESBlock;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsTDES[((500u) + (2u * 8u) + 8u)];
} eslt_WorkSpaceTDES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsTDESBlock[(500u)];
} eslt_WorkSpaceTDESBlock;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsRC2[((200u) + (3u * 8u) + 8u)];
} eslt_WorkSpaceRC2;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsRC2Block[(200u)];
} eslt_WorkSpaceRC2Block;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actGCMSTRUCT wsGCM;
} eslt_WorkSpaceGCM;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actGCMSTRUCT wsGMAC;
} eslt_WorkSpaceGMAC;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHASTRUCT wsSHA1;
} eslt_WorkSpaceSHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA224STRUCT wsSHA224;
} eslt_WorkSpaceSHA224;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA256STRUCT wsSHA256;
} eslt_WorkSpaceSHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512_224STRUCT wsSHA512_224;
} eslt_WorkSpaceSHA512_224;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512_256STRUCT wsSHA512_256;
} eslt_WorkSpaceSHA512_256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA384STRUCT wsSHA384;
} eslt_WorkSpaceSHA384;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSHA512STRUCT wsSHA512;
} eslt_WorkSpaceSHA512;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKECCAKcSTRUCT wsSHA3;
} eslt_WorkSpaceSHA3;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKECCAKcSTRUCT wsSHAKE;
} eslt_WorkSpaceSHAKE;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRMD160STRUCT wsRIPEMD160;
} eslt_WorkSpaceRIPEMD160;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsMD5[(((((64u + 16u + 12u) +(((4u)) - 1u))/((4u)))*((4u))))];
} eslt_WorkSpaceMD5;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSTRUCT wsHMACSHA1;
} eslt_WorkSpaceHMACSHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSHA256STRUCT wsHMACSHA256;
} eslt_WorkSpaceHMACSHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACSHA384STRUCT wsHMACSHA384;
} eslt_WorkSpaceHMACSHA384;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHMACRMD160STRUCT wsHMACRIPEMD160;
} eslt_WorkSpaceHMACRIPEMD160;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actCMACAESSTRUCT wsCMACAESbuffer;
  eslt_Byte * wsCMACAES;
} eslt_WorkSpaceCMACAES;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSipHashSTRUCT wsSipHash;
} eslt_WorkSpaceSipHash;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actFIPS186STRUCT wsFIPS186buffer;
  eslt_Byte * wsFIPS186;
} eslt_WorkSpaceFIPS186;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actCTRDRBGSTRUCT wsDRBG;
} eslt_WorkSpaceCTRDRBG;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHASHDRBGSTRUCT wsDRBG;
} eslt_WorkSpaceHASHDRBG;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDF2STRUCT wsKDF2HMACSHA;
} eslt_WorkSpaceKDF2;




typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963STRUCT wsKDFX963SHA1;
} eslt_WorkSpaceKDFX963SHA1;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963SHA256 wsKDFX963SHA256;
} eslt_WorkSpaceKDFX963SHA256;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actKDFX963SHA512 wsKDFX963SHA512;
} eslt_WorkSpaceKDFX963SHA512;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHKDFHASHSTRUCT wsHKDF;
}eslt_WorkSpaceHKDFHASH;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actHKDFSTRUCT wsHKDF;
}eslt_WorkSpaceHKDFHMAC;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actECPSTRUCT wsEcP;
} eslt_WorkSpaceEcP;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSPAKE2PSTRUCT workSpaceSpake;
  actCMACAESSTRUCT workSpaceCMAC;
  actHKDFSTRUCT workSpaceHKDF;
  actSHA256STRUCT workSpaceSHA;
} eslt_WorkSpaceSPAKE2P;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actSPAKE2PPreambleStruct wsSPAKEPreamble;
} eslt_WorkSpaceSPAKE2PPreamble;




typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAenc_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAdec_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSACRTSTRUCT CRTStruct;
} eslt_WorkSpaceRSACRTdec_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAsig_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSACRTSTRUCT CRTStruct;
} eslt_WorkSpaceRSACRTsig_prim;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actRSAPRIMSTRUCT wsRSAPrimBuf;
} eslt_WorkSpaceRSAver_prim;

typedef union
{

  eslt_WorkSpaceSHA256 SHA256ws;




  eslt_WorkSpaceSHA1 SHA1ws;
} eslt_WorkSpaceUnionHashFunctions_RSA;
# 1444 "../../../BSW/vSecPrim/ESLib_t.h"
typedef struct
{
  eslt_Byte encodedMessage[((2048u) >> 3)];
  eslt_Byte dataBlock[((2048u) >> 3) - 20u - 1u];
  eslt_Byte tempVariables[32u];
}eslt_EMBuffer;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer * encodedMessageBufferPtr;
  eslt_WorkSpaceUnionHashFunctions_RSA * wsHashUnionPtr;
  eslt_Length * modulusInformationPtr;
} eslt_WorkSpace;




typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceRSAenc_prim wsRSAEncPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAenc;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceRSAdec_prim wsRSADecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAdec;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsEncoding[((2048u) >> 3)];
  eslt_WorkSpaceRSACRTdec_prim wsRSACRTDecPrim;
  eslt_Length primeSizesInformation;
} eslt_WorkSpaceRSACRTdec;




typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAsig_prim wsRSASigPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsEncoding[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSACRTsig_prim wsRSACRTSigPrim;
  eslt_Length primeSizesInformation;
} eslt_WorkSpaceRSACRTsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte messageBuffer[((2048u) >> 3)];
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAver_prim wsRSAVerPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAver;





typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAenc_prim wsRSAEncPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAOAEPenc;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSAdec_prim wsRSADecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAOAEPdec;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_WorkSpaceRSACRTdec_prim wsRSACRTDecPrim;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSACRTOAEPdec;





typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceRSAsig_prim wsRSASigPrim;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAPSSsig;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_EMBuffer encodedMessageBuffer;
  eslt_WorkSpaceRSAver_prim wsRSAVerPrim;
  eslt_WorkSpaceUnionHashFunctions_RSA wsHashUnion;
  eslt_Length modulusSizeInformation;
} eslt_WorkSpaceRSAPSSver;





typedef struct
{
  eslt_WorkSpaceHeader header;
  actEd25519STRUCT wsEd25519buffer;
  eslt_Byte * wsEd25519;
} eslt_WorkSpaceEd25519;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actX25519STRUCT wsX25519buffer;
  eslt_Byte * wsX25519;
} eslt_WorkSpaceX25519;


typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsChaCha20 [(140u)];
} eslt_WorkSpaceChaCha20;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsPoly1305 [(180u)];
} eslt_WorkSpacePoly1305;

typedef struct
{
  eslt_WorkSpaceHeader header;
  eslt_Byte wsAEADChaChaPoly [(390u)];
} eslt_WorkSpaceChaChaPoly;

typedef struct
{
  eslt_WorkSpaceHeader header;
  actAESCCMSTRUCT wsAESCCM;
} eslt_WorkSpaceAESCCM;


typedef struct
{
  eslt_WorkSpaceHeader header;
  actECBDstruct wsECBD;
} eslt_WorkSpaceECBD;
# 43 "../../../BSW/vSecPrim/ESLib.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_ERC.h" 1
# 243 "../../../BSW/vSecPrim/ESLib_ERC.h"
typedef actU16 eslt_ErrorCode;
# 44 "../../../BSW/vSecPrim/ESLib.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_RNG.h" 1
# 51 "../../../BSW/vSecPrim/ESLib_RNG.h"
  typedef struct
  {
    eslt_WorkSpaceHeader header;
    eslt_Byte wsRNG[(sizeof(actFIPS186STRUCT))];
  } eslt_WorkSpaceRNG;




# 1 "GenData/vSecPrim_MemMap.h" 1
# 61 "../../../BSW/vSecPrim/ESLib_RNG.h" 2
# 88 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_initRNG(
  eslt_WorkSpaceRNG * workSpace,
  const eslt_Length entropyLength,
  const eslt_Byte * entropy,
  eslt_Byte * savedState);
# 112 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_getBytesRNG(
  const eslt_Length targetLength,
  eslt_Byte * target);
# 133 "../../../BSW/vSecPrim/ESLib_RNG.h"
extern eslt_ErrorCode esl_stirRNG(
  const eslt_Length inputLength,
  eslt_Byte * input);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 139 "../../../BSW/vSecPrim/ESLib_RNG.h" 2
# 45 "../../../BSW/vSecPrim/ESLib.h" 2
# 70 "../../../BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 71 "../../../BSW/vSecPrim/ESLib.h" 2
# 91 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initESCryptoLib(void);
# 113 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initWorkSpaceHeader(
  eslt_WorkSpaceHeader * workSpaceHeader,
  const eslt_Length workSpaceSize,
  esl_WatchdogFuncPtr watchdog);
# 224 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_initCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_DRBGMode modeDRBG);
# 273 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_seedCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  const eslt_Byte * entropyPtr,
  eslt_Length entropyLength,
  const eslt_Byte * noncePtr,
  eslt_Length nonceLength,
  const eslt_Byte * personalizationStringPtr,
  eslt_Length personalizationStringLength,
  const eslt_Byte * additionalInputPtr,
  eslt_Length additionalInputLength);
# 315 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getBytesCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Length requestedLength,
  eslt_Byte * outputBuffer,
  const eslt_Byte * additionalInputPtr,
  eslt_Length additionalInputLength);
# 352 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_getStateCTRDRBG(
  const eslt_WorkSpaceCTRDRBG * workSpace,
  eslt_Byte * internalStateBuffer,
  eslt_Length * internalStateBufferLength,
  eslt_DRBGReseedCounterType * reseedCounter,
  eslt_DRBGSeedStatusType * seedStatus,
  eslt_DRBGMode * modeDRBG);
# 385 "../../../BSW/vSecPrim/ESLib.h"
eslt_ErrorCode esl_restoreStateCTRDRBG(
  eslt_WorkSpaceCTRDRBG * workSpace,
  const eslt_Byte * internalStateBuffer,
  eslt_Length internalStateBufferLength,
  eslt_DRBGReseedCounterType reseedCounter,
  eslt_DRBGSeedStatusType seedStatus,
  eslt_DRBGMode modeDRBG);
# 3060 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA224(
  eslt_WorkSpaceSHA224 * workSpace);
# 3083 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  const eslt_Length inputSize,
  const eslt_Byte * input);
# 3108 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA224(
  eslt_WorkSpaceSHA224 * workSpace,
  eslt_Byte * messageDigest);
# 3132 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSHA256(eslt_WorkSpaceSHA256 * workSpace);
# 3154 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSHA256(
eslt_WorkSpaceSHA256 * workSpace,
const eslt_Length inputSize, const eslt_Byte * input);
# 3178 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSHA256(
eslt_WorkSpaceSHA256 * workSpace, eslt_Byte * messageDigest);
# 6116 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSA_prim(
   eslt_WorkSpaceRSAsig_prim * workSpace,
     eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
     eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 6145 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_signRSA_prim(
  eslt_WorkSpaceRSAsig_prim * workSpace,
  eslt_Length messageSize,
  const eslt_Byte * message,
  eslt_Length * signatureSize,
  eslt_Byte * signature);
# 6298 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 6331 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifyRSA_prim(
  eslt_WorkSpaceRSAver_prim * workSpace,
  eslt_Length signatureSize,
  const eslt_Byte * signature,
  eslt_Length * messageSize,
  eslt_Byte * message);
# 8199 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length privateKeyExponentSize, const eslt_Byte * privateKeyExponent);
# 8227 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8253 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 8294 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize, const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8324 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8355 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8384 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8411 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8436 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 8462 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length keyPairModuleSize, const eslt_Byte * keyPairModule,
   eslt_Length publicKeyExponentSize, const eslt_Byte * publicKeyExponent);
# 8489 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize, const eslt_Byte * input);
# 8515 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 8552 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8578 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8602 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8627 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8651 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize, eslt_Length signatureSize,
   const eslt_Byte * signature);
# 8674 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8696 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8718 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA1_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize, const eslt_Byte * signature);
# 8746 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA1_PSS(
   eslt_WorkSpaceSHA1 * wsHash,
   eslt_Length saltSize, const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 9357 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initSignRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSsig * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length privateKeyExponentSize,
  const eslt_Byte * privateKeyExponent);
# 9386 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9413 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Byte * messageDigest);
# 9454 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9485 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9516 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSigSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9546 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length saltSize,
  const eslt_Byte * salt,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9573 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9598 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeSignRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSsig * workSpace,
   eslt_Length * signatureSize,
   eslt_Byte * signature);
# 9624 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_initVerifyRSASHA256_PSS(
  eslt_WorkSpaceRSAPSSver * workSpace,
  eslt_Length keyPairModuleSize,
  const eslt_Byte * keyPairModule,
  eslt_Length publicKeyExponentSize,
  const eslt_Byte * publicKeyExponent);
# 9653 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_updateVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length inputSize,
   const eslt_Byte * input);
# 9680 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeHashVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Byte * messageDigest);
# 9718 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length saltSize,
   eslt_Length signatureSize,
  const eslt_Byte * signature);
# 9746 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9772 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9799 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_verifySigVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   const eslt_Byte * messageDigest,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9825 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length saltSize,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9850 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_AutoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9873 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_NoSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9897 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_finalizeVerifyRSASHA256_PSS_DigestLengthSalt(
   eslt_WorkSpaceRSAPSSver * workSpace,
   eslt_Length signatureSize,
   const eslt_Byte * signature);
# 9927 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_calcSaltedHashRSASHA256_PSS(
   eslt_WorkSpaceSHA256 * wsHash,
   eslt_Length saltSize,
   const eslt_Byte * salt,
   const eslt_Byte * messageDigest,
   eslt_Byte * saltedHash);
# 10003 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA1_PSS(
  eslt_WorkSpaceSHA1 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10041 "../../../BSW/vSecPrim/ESLib.h"
extern eslt_ErrorCode esl_generateMaskMGF1RSASHA256_PSS(
  eslt_WorkSpaceSHA256 * wsHash,
  eslt_Byte * tempHash,
  eslt_Length seedLength,
  const eslt_Byte * seed,
  eslt_Length maskLength,
  eslt_Byte * mask);
# 10988 "../../../BSW/vSecPrim/ESLib.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 10989 "../../../BSW/vSecPrim/ESLib.h" 2
# 41 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 1 "../../../BSW/vSecPrim/ESLib_types.h" 1
# 42 "../../../BSW/vSecPrim/ESLib_Helper.h" 2

# 1 "../../../BSW/vSecPrim/actUtilities.h" 1
# 39 "../../../BSW/vSecPrim/actUtilities.h"
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
# 40 "../../../BSW/vSecPrim/actUtilities.h" 2
# 110 "../../../BSW/vSecPrim/actUtilities.h"
# 1 "GenData/vSecPrim_MemMap.h" 1
# 111 "../../../BSW/vSecPrim/actUtilities.h" 2
# 128 "../../../BSW/vSecPrim/actUtilities.h"
void actWatchdogTriggerFunction( void ( * watchdog)(void));
# 144 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemSet(void * dest, actU8 fill, actLengthType count);
# 160 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy(void * dest, const void * src, actU32 count);
# 176 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROM(void * dest, const void * src, actLengthType count);
# 192 "../../../BSW/vSecPrim/actUtilities.h"
 void actMemcpy_ROMRAM(void * dest, const actU8 * src, actLengthType count);
# 209 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp(const void * buf1, const void * buf2, actLengthType count);
# 226 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROM(const actU8 * buf1, const actU8 * buf2, actLengthType count);
# 243 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actMemcmp_ROMRAM(const void * buf1, const actU8 * buf2, actLengthType count);
# 258 "../../../BSW/vSecPrim/actUtilities.h"
 void actXOR(void * buf1, const void * buf2, actU32 count);
# 276 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actAddBE(actU8 * tgt, const actU8 * src, const actU32 length, const actU8 carry);
# 291 "../../../BSW/vSecPrim/actUtilities.h"
 actU8 actLEtoU8(const actU8 * src);
# 306 "../../../BSW/vSecPrim/actUtilities.h"
 void actU8toLE(actU8 * tgt, const actU8 in);
# 323 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU8(actU8 * tgt, const actU8 * src, const actU32 length);
# 340 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU8toLE(actU8 * tgt, const actU8 * src, const actU32 length);
# 355 "../../../BSW/vSecPrim/actUtilities.h"
 actU16 actLEtoU16(const actU8 * src);
# 370 "../../../BSW/vSecPrim/actUtilities.h"
 void actU16toLE(actU8 * tgt, const actU16 src);
# 387 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU16(actU16 * tgt, const actU8 * src, const actU32 length);
# 404 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU16toLE(actU8 * tgt, const actU16 * src, const actU32 length);
# 419 "../../../BSW/vSecPrim/actUtilities.h"
 actU32 actBEtoU32(const actU8 * src);
# 434 "../../../BSW/vSecPrim/actUtilities.h"
 actU32 actLEtoU32(const actU8 * src);
# 449 "../../../BSW/vSecPrim/actUtilities.h"
 void actU32toBE(actU8 * tgt, const actU32 src);
# 464 "../../../BSW/vSecPrim/actUtilities.h"
 void actU32toLE(actU8 * tgt, const actU32 src);
# 481 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 501 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyLEtoU32(
  actU32 * tgt,
  const actU8 * src,
  const actU32 length);
# 521 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU32toBE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 541 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU32toLE(
  actU8 * tgt,
  const actU32 * src,
  const actU32 length);
# 560 "../../../BSW/vSecPrim/actUtilities.h"
 actU64 actBEtoU64 (const actU8 * src);
# 575 "../../../BSW/vSecPrim/actUtilities.h"
 void actU64toBE(actU8 * tgt, const actU64 src);
# 592 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyBEtoU64(
  actU64 * tgt,
  const actU8 * src,
  const actU32 length);
# 612 "../../../BSW/vSecPrim/actUtilities.h"
 void actCpyU64toBE(
  actU8 * tgt,
  const actU64 * src,
  const actU32 length);
# 630 "../../../BSW/vSecPrim/actUtilities.h"
 actU64 actLEtoU64(const actU8 * src);
# 645 "../../../BSW/vSecPrim/actUtilities.h"
 void actU64toLE(actU8 * tgt, const actU64 src);







# 1 "GenData/vSecPrim_MemMap.h" 1
# 654 "../../../BSW/vSecPrim/actUtilities.h" 2
# 44 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 57 "../../../BSW/vSecPrim/ESLib_Helper.h"
typedef eslt_WorkSpace * eslt_WorkSpaceRefType;
typedef const eslt_WorkSpace * eslt_WorkSpaceConstRefType;

typedef const eslt_Length * eslt_LengthConstRef;






# 1 "GenData/vSecPrim_MemMap.h" 1
# 68 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 81 "../../../BSW/vSecPrim/ESLib_Helper.h"
void esl_ResetAndClearWorkspace(eslt_WorkSpaceHeader * workSpaceHeader,
  void * workSpaceBuffer);
# 96 "../../../BSW/vSecPrim/ESLib_Helper.h"
void esl_SetWorkspaceStatus(eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_WSStatus algo);
# 114 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceHeader(const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_Length minSize);
# 131 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceState(
  const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_WSStatus algo);
# 151 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_CheckWorkSpaceHeaderAndState(const eslt_WorkSpaceHeader * workSpaceHeader,
  eslt_Length minSize,
  eslt_WSStatus algo);
# 170 "../../../BSW/vSecPrim/ESLib_Helper.h"
eslt_ErrorCode esl_checkLengthRef(eslt_LengthConstRef lenRef,
  eslt_Length lengthValue);


# 1 "GenData/vSecPrim_MemMap.h" 1
# 175 "../../../BSW/vSecPrim/ESLib_Helper.h" 2
# 38 "../../../BSW/vSecPrim/vSecPrim_types.h" 2
# 88 "../../../BSW/vSecPrim/vSecPrim_types.h"
typedef eslt_Size16 vSecPrimType_OutputBufferFlag;
typedef eslt_HashAlgorithm vSecPrimType_HashAlgorithm;
typedef eslt_Byte vSecPrimType_CallUpdateFlag;




typedef union
{
  eslt_WorkSpaceSHA1 wsSHA1;


  eslt_WorkSpaceSHA224 wsSHA2_224;
  eslt_WorkSpaceSHA256 wsSHA2_256;
# 124 "../../../BSW/vSecPrim/vSecPrim_types.h"
} vSecPrimType_WorkSpaceUnionHash;


typedef struct
{
  eslt_WorkSpaceHeader header;
  vSecPrimType_WorkSpaceUnionHash wsHash;

  vSecPrimType_OutputBufferFlag outputLengthFlag;
  eslt_Byte tempHash[(64u)];
  vSecPrimType_HashAlgorithm hashID;
  vSecPrimType_CallUpdateFlag updateCalled;

} vSecPrimType_WorkSpaceHash;
# 98 "../../../BSW/vSecPrim/vSecPrim.h" 2
# 140 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_initHash(
vSecPrimType_WorkSpaceHash * workSpace,
vSecPrimType_HashAlgorithm hashID,
vSecPrimType_OutputBufferFlag outputLengthFlag);
# 168 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_updateHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  const eslt_Length inputLength,
  const eslt_Byte * input);
# 209 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_finalizeHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  eslt_Length * messageDigestLength,
  eslt_Byte * messageDigest);
# 257 "../../../BSW/vSecPrim/vSecPrim.h"
extern eslt_ErrorCode vSecPrim_digestHash(
  vSecPrimType_WorkSpaceHash * workSpace,
  const eslt_Length inputLength,
  const eslt_Byte * input,
  eslt_Length * messageDigestLength,
  eslt_Byte * messageDigest);
# 55 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 3381 "GenData/Crypto_30_LibCv_Cfg.h"
typedef union
{
  eslt_WorkSpaceEcP wsEcP;
  vSecPrimType_WorkSpaceHash wsPreHash;
} Crypto_30_LibCv_WorkSpaceEcP;


typedef union
{
  eslt_WorkSpaceAES128 wsAES128;
} Crypto_30_LibCv_WorkSpaceAESSubType;


typedef struct
{
  uint8 mode;
  Crypto_30_LibCv_WorkSpaceAESSubType wsAES;
} Crypto_30_LibCv_WorkSpaceAES;


typedef struct
{
  uint8 mode;
  eslt_WorkSpaceCMACAES wsCMACAES;
} Crypto_30_LibCv_WorkSpaceCMACAES;


typedef union
{
  eslt_WorkSpaceEcP wsEcP;
  eslt_WorkSpaceSHA256 wsSHA256;
  eslt_WorkSpaceAES128 wsAes;
} Crypto_30_LibCv_WorkSpaceISO15118;


typedef struct
{
  uint32 saltLength;
  eslt_WorkSpaceRSAPSSver wsRsa;
} Crypto_30_LibCv_WorkSpaceRsaPssVer;


typedef struct
{
  uint8 decryptionMode;
  eslt_WorkSpaceRSAdec wsRsa;
} Crypto_30_LibCv_WorkSpaceRsaDecrypt;


typedef uint8 Crypto_30_LibCv_WorkSpaceKeySetValid;

typedef uint8 Crypto_30_LibCv_WorkSpaceKeyGenerateSymmetric;

typedef Std_ReturnType ( * Crypto_30_LibCv_DispatchFctPtrType)(uint32 objectId, Crypto_JobType * job, Crypto_OperationModeType mode);

typedef uint8 * Crypto_30_LibCv_SaveAndRestoreWorkspaceAddressType;

typedef Crypto_JobType * Crypto_30_LibCv_JobPtrType;

typedef union
{
  vSecPrimType_WorkSpaceHash Hash;
  eslt_WorkSpaceCTRDRBG DRBGAES;
  Crypto_30_LibCv_WorkSpaceRsaPssVer RsaPssVerify;
} Crypto_30_LibCv_UnionWS_Crypto_30_LibCv_Type;

typedef struct sCrypto_30_LibCv_WS_Crypto_30_LibCv_Type
{



  Crypto_30_LibCv_UnionWS_Crypto_30_LibCv_Type primWS;
} Crypto_30_LibCv_WS_Crypto_30_LibCv_Type;

typedef vSecPrimType_WorkSpaceHash * Crypto_30_LibCv_vSecPrimType_WorkSpaceHash_PtrType;
typedef eslt_WorkSpaceCTRDRBG * Crypto_30_LibCv_eslt_WorkSpaceCTRDRBG_PtrType;
typedef Crypto_30_LibCv_WorkSpaceRsaPssVer * Crypto_30_LibCv_Crypto_30_LibCv_WorkSpaceRsaPssVer_PtrType;
# 3471 "GenData/Crypto_30_LibCv_Cfg.h"
typedef uint8_least Crypto_30_LibCv_DRBGAESIterType;



typedef uint8_least Crypto_30_LibCv_FamilyToHashMappingIterType;



typedef uint8_least Crypto_30_LibCv_HashIterType;



typedef uint8_least Crypto_30_LibCv_InitValueIterType;



typedef uint8_least Crypto_30_LibCv_KeyIterType;



typedef uint8_least Crypto_30_LibCv_KeyElementInfoIterType;



typedef uint8_least Crypto_30_LibCv_KeyElementsIterType;



typedef uint16_least Crypto_30_LibCv_KeyStorageIterType;



typedef uint8_least Crypto_30_LibCv_ObjectInfoIterType;



typedef uint8_least Crypto_30_LibCv_ObjectInfoIndIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveFctIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveInfoIterType;



typedef uint8_least Crypto_30_LibCv_PrimitiveServiceInfoIterType;



typedef uint8_least Crypto_30_LibCv_QueueIterType;



typedef uint8_least Crypto_30_LibCv_RsaPssVerifyIterType;
# 3540 "GenData/Crypto_30_LibCv_Cfg.h"
typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_BufferLengthIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_DriverObjectStateIterType;



typedef Crypto_30_LibCv_KeyIterType Crypto_30_LibCv_KeyLockIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_LockIterType;



typedef Crypto_30_LibCv_ObjectInfoIterType Crypto_30_LibCv_WrittenLengthIterType;
# 3568 "GenData/Crypto_30_LibCv_Cfg.h"
typedef boolean Crypto_30_LibCv_AlignKeyStorageOfGeneralType;


typedef uint32 Crypto_30_LibCv_BufferLengthType;


typedef boolean Crypto_30_LibCv_CmacAesRoundkeyReuseOfMacPrimitivesType;


typedef uint8 Crypto_30_LibCv_DefaultRandomMaxRetriesOfGeneralType;


typedef uint8 Crypto_30_LibCv_DriverObjectStateType;


typedef boolean Crypto_30_LibCv_EnableAES192OfCipherPrimitivesType;


typedef boolean Crypto_30_LibCv_EnableAES256OfCipherPrimitivesType;


typedef uint8 Crypto_30_LibCv_FamilyToHashMappingType;


typedef uint8 Crypto_30_LibCv_InitValueType;



typedef uint8 Crypto_30_LibCv_KeyElementsEndIdxOfKeyType;



typedef uint8 Crypto_30_LibCv_KeyElementsStartIdxOfKeyType;


typedef boolean Crypto_30_LibCv_KeyElementDeleteOfGeneralType;


typedef uint16 Crypto_30_LibCv_IdOfKeyElementInfoType;



typedef uint8 Crypto_30_LibCv_InitValueEndIdxOfKeyElementInfoType;



typedef uint8 Crypto_30_LibCv_InitValueStartIdxOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_InitValueUsedOfKeyElementInfoType;


typedef uint16 Crypto_30_LibCv_LengthOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_MaskedBitsOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_OnceOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_PartialOfKeyElementInfoType;


typedef boolean Crypto_30_LibCv_PersistOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_ReadOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_WriteOfKeyElementInfoType;


typedef uint16 Crypto_30_LibCv_IdOfKeyElementsType;



typedef uint8 Crypto_30_LibCv_KeyElementInfoIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageEndIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageExtensionIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageStartIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageValidIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageWrittenLengthEndIdxOfKeyElementsType;



typedef uint16 Crypto_30_LibCv_KeyStorageWrittenLengthStartIdxOfKeyElementsType;


typedef uint8 Crypto_30_LibCv_KeyGenerateMaxLengthOfKeyGeneratePrimitivesType;


typedef uint8 Crypto_30_LibCv_KeyLockType;


typedef uint8 Crypto_30_LibCv_KeyStorageType;


typedef uint32 Crypto_30_LibCv_LockType;


typedef uint8 Crypto_30_LibCv_MainFunctionPeriodOfGeneralType;


typedef uint8 Crypto_30_LibCv_NumberOfLongTermPrimitiveWorkspaceOfGeneralType;


typedef boolean Crypto_30_LibCv_NvMEnableSetRamBlockStatusOfGeneralType;


typedef uint8 Crypto_30_LibCv_NvManagementDataPerKeyOfNvStorageType;


typedef uint32 Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageType;



typedef uint8 Crypto_30_LibCv_DRBGAESIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_DRBGAESUsedOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_HashIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_HashUsedOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_QueueIdxOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_RsaPssVerifyIdxOfObjectInfoType;


typedef boolean Crypto_30_LibCv_RsaPssVerifyUsedOfObjectInfoType;


typedef uint32 Crypto_30_LibCv_WorkspaceLengthOfObjectInfoType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndEndIdxOfPrimitiveFctType;



typedef uint8 Crypto_30_LibCv_ObjectInfoIndStartIdxOfPrimitiveFctType;


typedef boolean Crypto_30_LibCv_ObjectInfoIndUsedOfPrimitiveFctType;


typedef uint32 Crypto_30_LibCv_CombinedOfPrimitiveInfoType;


typedef boolean Crypto_30_LibCv_ContextOfPrimitiveInfoType;


typedef boolean Crypto_30_LibCv_DefaultRandomSourceOfPrimitiveInfoType;


typedef uint8 Crypto_30_LibCv_MaskedBitsOfPrimitiveInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveFctIdxOfPrimitiveInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveInfoEndIdxOfPrimitiveServiceInfoType;



typedef uint8 Crypto_30_LibCv_PrimitiveInfoStartIdxOfPrimitiveServiceInfoType;


typedef boolean Crypto_30_LibCv_PrimitiveInfoUsedOfPrimitiveServiceInfoType;


typedef boolean Crypto_30_LibCv_RedirectionOfGeneralType;


typedef uint8 Crypto_30_LibCv_SizeOfBufferLengthType;


typedef uint8 Crypto_30_LibCv_SizeOfDRBGAESType;


typedef uint8 Crypto_30_LibCv_SizeOfDriverObjectStateType;


typedef uint8 Crypto_30_LibCv_SizeOfFamilyToHashMappingType;


typedef uint8 Crypto_30_LibCv_SizeOfHashType;


typedef uint8 Crypto_30_LibCv_SizeOfInitValueType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyElementInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyElementsType;


typedef uint8 Crypto_30_LibCv_SizeOfKeyLockType;


typedef uint16 Crypto_30_LibCv_SizeOfKeyStorageType;


typedef uint8 Crypto_30_LibCv_SizeOfLockType;


typedef uint8 Crypto_30_LibCv_SizeOfObjectInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfObjectInfoIndType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveFctType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfPrimitiveServiceInfoType;


typedef uint8 Crypto_30_LibCv_SizeOfQueueType;


typedef uint8 Crypto_30_LibCv_SizeOfRsaPssVerifyType;


typedef uint8 Crypto_30_LibCv_SizeOfWrittenLengthType;


typedef boolean Crypto_30_LibCv_StrictLengthCheckForKeyElementGetOfGeneralType;


typedef boolean Crypto_30_LibCv_UseVStdLibOfGeneralType;


typedef boolean Crypto_30_LibCv_VersionInfoApiOfGeneralType;


typedef uint32 Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralType;


typedef uint32 Crypto_30_LibCv_WrittenLengthType;
# 3860 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_DRBGAESType
{
  Crypto_30_LibCv_eslt_WorkSpaceCTRDRBG_PtrType WorkspaceOfDRBGAES;
} Crypto_30_LibCv_DRBGAESType;


typedef struct sCrypto_30_LibCv_HashType
{
  Crypto_30_LibCv_vSecPrimType_WorkSpaceHash_PtrType WorkspaceOfHash;
} Crypto_30_LibCv_HashType;
# 3879 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyType
{
  Crypto_30_LibCv_KeyElementsEndIdxOfKeyType KeyElementsEndIdxOfKey;
  Crypto_30_LibCv_KeyElementsStartIdxOfKeyType KeyElementsStartIdxOfKey;
} Crypto_30_LibCv_KeyType;
# 3893 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyElementInfoType
{
  Crypto_30_LibCv_IdOfKeyElementInfoType IdOfKeyElementInfo;
  Crypto_30_LibCv_LengthOfKeyElementInfoType LengthOfKeyElementInfo;
  Crypto_30_LibCv_InitValueEndIdxOfKeyElementInfoType InitValueEndIdxOfKeyElementInfo;
  Crypto_30_LibCv_InitValueStartIdxOfKeyElementInfoType InitValueStartIdxOfKeyElementInfo;
  Crypto_30_LibCv_MaskedBitsOfKeyElementInfoType MaskedBitsOfKeyElementInfo;
  Crypto_30_LibCv_ReadOfKeyElementInfoType ReadOfKeyElementInfo;
  Crypto_30_LibCv_WriteOfKeyElementInfoType WriteOfKeyElementInfo;
} Crypto_30_LibCv_KeyElementInfoType;
# 3917 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_KeyElementsType
{
  Crypto_30_LibCv_IdOfKeyElementsType IdOfKeyElements;
  Crypto_30_LibCv_KeyStorageEndIdxOfKeyElementsType KeyStorageEndIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageExtensionIdxOfKeyElementsType KeyStorageExtensionIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageStartIdxOfKeyElementsType KeyStorageStartIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageValidIdxOfKeyElementsType KeyStorageValidIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageWrittenLengthEndIdxOfKeyElementsType KeyStorageWrittenLengthEndIdxOfKeyElements;
  Crypto_30_LibCv_KeyStorageWrittenLengthStartIdxOfKeyElementsType KeyStorageWrittenLengthStartIdxOfKeyElements;
  Crypto_30_LibCv_KeyElementInfoIdxOfKeyElementsType KeyElementInfoIdxOfKeyElements;
} Crypto_30_LibCv_KeyElementsType;
# 3939 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_ObjectInfoType
{
  Crypto_30_LibCv_WorkspaceLengthOfObjectInfoType WorkspaceLengthOfObjectInfo;
  Crypto_30_LibCv_DRBGAESIdxOfObjectInfoType DRBGAESIdxOfObjectInfo;
  Crypto_30_LibCv_HashIdxOfObjectInfoType HashIdxOfObjectInfo;
  Crypto_30_LibCv_QueueIdxOfObjectInfoType QueueIdxOfObjectInfo;
  Crypto_30_LibCv_RsaPssVerifyIdxOfObjectInfoType RsaPssVerifyIdxOfObjectInfo;
  uint8 * WorkspaceAddrOfObjectInfo;
} Crypto_30_LibCv_ObjectInfoType;
# 3957 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveFctType
{
  Crypto_30_LibCv_ObjectInfoIndEndIdxOfPrimitiveFctType ObjectInfoIndEndIdxOfPrimitiveFct;
  Crypto_30_LibCv_ObjectInfoIndStartIdxOfPrimitiveFctType ObjectInfoIndStartIdxOfPrimitiveFct;
  Crypto_30_LibCv_DispatchFctPtrType DispatchOfPrimitiveFct;
} Crypto_30_LibCv_PrimitiveFctType;
# 3971 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveInfoType
{
  Crypto_30_LibCv_CombinedOfPrimitiveInfoType CombinedOfPrimitiveInfo;
  Crypto_30_LibCv_MaskedBitsOfPrimitiveInfoType MaskedBitsOfPrimitiveInfo;
  Crypto_30_LibCv_PrimitiveFctIdxOfPrimitiveInfoType PrimitiveFctIdxOfPrimitiveInfo;
} Crypto_30_LibCv_PrimitiveInfoType;
# 3986 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PrimitiveServiceInfoType
{
  Crypto_30_LibCv_PrimitiveInfoEndIdxOfPrimitiveServiceInfoType PrimitiveInfoEndIdxOfPrimitiveServiceInfo;
  Crypto_30_LibCv_PrimitiveInfoStartIdxOfPrimitiveServiceInfoType PrimitiveInfoStartIdxOfPrimitiveServiceInfo;
} Crypto_30_LibCv_PrimitiveServiceInfoType;


typedef struct sCrypto_30_LibCv_RsaPssVerifyType
{
  Crypto_30_LibCv_Crypto_30_LibCv_WorkSpaceRsaPssVer_PtrType WorkspaceOfRsaPssVerify;
} Crypto_30_LibCv_RsaPssVerifyType;
# 4008 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct Crypto_30_LibCv_KeyLockStructSTag
{
  Crypto_30_LibCv_KeyLockType SmhKeyRSA;
  Crypto_30_LibCv_KeyLockType Smh_CryptoKey_Nist_800_90A;
  Crypto_30_LibCv_KeyLockType SmhCryptoKeyDummy;
} Crypto_30_LibCv_KeyLockStructSType;


typedef struct Crypto_30_LibCv_QueueStructSTag
{
  Crypto_30_LibCv_JobPtrType Crypto_30_LibCv;
} Crypto_30_LibCv_QueueStructSType;
# 4031 "GenData/Crypto_30_LibCv_Cfg.h"
typedef union Crypto_30_LibCv_KeyLockUTag
{
  Crypto_30_LibCv_KeyLockType raw[3];
  Crypto_30_LibCv_KeyLockStructSType str;
} Crypto_30_LibCv_KeyLockUType;


typedef union Crypto_30_LibCv_QueueUTag
{
  Crypto_30_LibCv_JobPtrType raw[1];
  Crypto_30_LibCv_QueueStructSType str;
} Crypto_30_LibCv_QueueUType;
# 4054 "GenData/Crypto_30_LibCv_Cfg.h"
typedef Crypto_30_LibCv_BufferLengthType * Crypto_30_LibCv_BufferLengthPtrType;


typedef const Crypto_30_LibCv_DRBGAESType * Crypto_30_LibCv_DRBGAESPtrType;


typedef Crypto_30_LibCv_DriverObjectStateType * Crypto_30_LibCv_DriverObjectStatePtrType;


typedef const Crypto_30_LibCv_FamilyToHashMappingType * Crypto_30_LibCv_FamilyToHashMappingPtrType;


typedef const Crypto_30_LibCv_HashType * Crypto_30_LibCv_HashPtrType;


typedef const Crypto_30_LibCv_InitValueType * Crypto_30_LibCv_InitValuePtrType;


typedef const Crypto_30_LibCv_KeyType * Crypto_30_LibCv_KeyPtrType;


typedef const Crypto_30_LibCv_KeyElementInfoType * Crypto_30_LibCv_KeyElementInfoPtrType;


typedef const Crypto_30_LibCv_KeyElementsType * Crypto_30_LibCv_KeyElementsPtrType;


typedef Crypto_30_LibCv_KeyLockType * Crypto_30_LibCv_KeyLockPtrType;


typedef Crypto_30_LibCv_KeyStorageType * Crypto_30_LibCv_KeyStoragePtrType;


typedef Crypto_30_LibCv_LockType * Crypto_30_LibCv_LockPtrType;


typedef const Crypto_30_LibCv_ObjectInfoType * Crypto_30_LibCv_ObjectInfoPtrType;


typedef const Crypto_30_LibCv_ObjectInfoIndType * Crypto_30_LibCv_ObjectInfoIndPtrType;


typedef const Crypto_30_LibCv_PrimitiveFctType * Crypto_30_LibCv_PrimitiveFctPtrType;


typedef const Crypto_30_LibCv_PrimitiveInfoType * Crypto_30_LibCv_PrimitiveInfoPtrType;


typedef const Crypto_30_LibCv_PrimitiveServiceInfoType * Crypto_30_LibCv_PrimitiveServiceInfoPtrType;


typedef Crypto_30_LibCv_JobPtrType * Crypto_30_LibCv_QueuePtrType;


typedef const Crypto_30_LibCv_RsaPssVerifyType * Crypto_30_LibCv_RsaPssVerifyPtrType;


typedef Crypto_30_LibCv_WS_Crypto_30_LibCv_Type * Crypto_30_LibCv_UnionWS_Crypto_30_LibCvPtrType;


typedef Crypto_30_LibCv_WrittenLengthType * Crypto_30_LibCv_WrittenLengthPtrType;


typedef const Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageType * Crypto_30_LibCv_NvWriteBlockFctNameOfNvStorageOfPCConfigPtrType;


typedef const Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralType * Crypto_30_LibCv_WatchdogTriggerFunctionOfGeneralOfPCConfigPtrType;
# 4132 "GenData/Crypto_30_LibCv_Cfg.h"
typedef struct sCrypto_30_LibCv_PCConfigType
{
  uint8 Crypto_30_LibCv_PCConfigNeverUsed;
} Crypto_30_LibCv_PCConfigType;

typedef Crypto_30_LibCv_PCConfigType Crypto_30_LibCv_ConfigType;
# 4191 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4192 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_DRBGAESType Crypto_30_LibCv_DRBGAES[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4197 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4205 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_FamilyToHashMappingType Crypto_30_LibCv_FamilyToHashMapping[4];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4210 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4223 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4224 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_HashType Crypto_30_LibCv_Hash[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4229 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4237 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_InitValueType Crypto_30_LibCv_InitValue[5];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4242 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4256 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4257 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyType Crypto_30_LibCv_Key[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4262 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4281 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4282 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyElementInfoType Crypto_30_LibCv_KeyElementInfo[8];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4287 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4307 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4308 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_KeyElementsType Crypto_30_LibCv_KeyElements[8];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4313 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4331 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4332 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_ObjectInfoType Crypto_30_LibCv_ObjectInfo[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4337 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4348 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 99 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4349 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_ObjectInfoIndType Crypto_30_LibCv_ObjectInfoInd[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 115 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4354 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4369 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4370 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveFctType Crypto_30_LibCv_PrimitiveFct[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4375 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4390 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4391 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveInfoType Crypto_30_LibCv_PrimitiveInfo[3];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4396 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4410 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4411 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_PrimitiveServiceInfoType Crypto_30_LibCv_PrimitiveServiceInfo[20];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4416 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4429 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 161 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section ".rodata.MSR_CONST" a
# 4430 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern const Crypto_30_LibCv_RsaPssVerifyType Crypto_30_LibCv_RsaPssVerify[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 177 "GenData/Crypto_30_LibCv_MemMap.h"
#pragma section
# 4435 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4446 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4447 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_BufferLengthType Crypto_30_LibCv_BufferLength[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4452 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4463 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4464 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_DriverObjectStateType Crypto_30_LibCv_DriverObjectState[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4469 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4480 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4481 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_KeyLockUType Crypto_30_LibCv_KeyLock;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4486 "GenData/Crypto_30_LibCv_Cfg.h" 2







# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4494 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_KeyStorageType Crypto_30_LibCv_KeyStorage[413];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4499 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4510 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4511 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_LockType Crypto_30_LibCv_Lock[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4516 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4527 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4528 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_QueueUType Crypto_30_LibCv_Queue;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4533 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4544 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4545 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_WS_Crypto_30_LibCv_Type Crypto_30_LibCv_UnionWS_Crypto_30_LibCv;


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4550 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4561 "GenData/Crypto_30_LibCv_Cfg.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4562 "GenData/Crypto_30_LibCv_Cfg.h" 2

extern Crypto_30_LibCv_WrittenLengthType Crypto_30_LibCv_WrittenLength[1];


# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 4567 "GenData/Crypto_30_LibCv_Cfg.h" 2
# 4604 "GenData/Crypto_30_LibCv_Cfg.h"
extern void FblLookForWatchdogVoid( void );
# 218 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 1
# 33 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 34 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 2
# 60 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyCopy(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId);
# 93 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementCopy(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId);
# 137 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementCopyPartial(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint32 keyElementSourceOffset,
  uint32 keyElementTargetOffset,
  uint32 keyElementCopyLength,
  uint32 targetCryptoKeyId,
  uint32 targetKeyElementId);
# 167 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementIdsGet(
  uint32 cryptoKeyId,
  uint32 * keyElementIdsPtr,
  uint32 * keyElementIdsLengthPtr);
# 196 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementSet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  const uint8 * keyPtr,
  uint32 keyLength);
# 217 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyValidSet(
  uint32 cryptoKeyId);
# 247 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyElementGet(
  uint32 cryptoKeyId,
  uint32 keyElementId,
  uint8 * resultPtr,
  uint32 * resultLengthPtr);
# 272 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_RandomSeed(
  uint32 cryptoKeyId,
  const uint8 * entropyPtr,
  uint32 entropyLength);
# 293 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyGenerate(
  uint32 cryptoKeyId);
# 367 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyDerive(
  uint32 cryptoKeyId,
  uint32 targetCryptoKeyId);
# 395 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcPubVal(
  uint32 cryptoKeyId,
  uint8 * publicValuePtr,
  uint32 * publicValueLengthPtr);
# 422 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_KeyExchangeCalcSecret(
  uint32 cryptoKeyId,
  const uint8 * partnerPublicValuePtr,
  uint32 partnerPublicValueLength);
# 443 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_CertificateParse(
  uint32 cryptoKeyId);
# 466 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
Std_ReturnType Crypto_30_LibCv_CertificateVerify(
  uint32 cryptoKeyId,
  uint32 verifyCryptoKeyId,
  Crypto_VerifyResultType * verifyPtr);
# 496 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 497 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_KeyManagement.h" 2
# 219 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 1 "Include/SchM_Crypto_30_LibCv.h" 1
# 54 "Include/SchM_Crypto_30_LibCv.h"
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
# 55 "Include/SchM_Crypto_30_LibCv.h" 2
# 63 "Include/SchM_Crypto_30_LibCv.h"
# 1 "Include/MemMap.h" 1
# 64 "Include/SchM_Crypto_30_LibCv.h" 2

void Crypto_30_LibCv_MainFunction(void);


# 1 "Include/MemMap.h" 1
# 69 "Include/SchM_Crypto_30_LibCv.h" 2
# 220 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2

# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 1
# 34 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h"
# 1 "GenData/Crypto_30_LibCv_Custom_Generated.h" 1
# 35 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 2
# 222 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 345 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 346 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 360 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
void Crypto_30_LibCv_Init(void);
# 372 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
void Crypto_30_LibCv_InitMemory(void);
# 417 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
Std_ReturnType Crypto_30_LibCv_ProcessJob(
  uint32 objectId,
  Crypto_JobType * job);
# 436 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
Std_ReturnType Crypto_30_LibCv_CancelJob(
  uint32 objectId,
  Crypto_JobType * job);
# 534 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
# 1 "GenData/Crypto_30_LibCv_MemMap.h" 1
# 535 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h" 2
# 65 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
# 1 "../../../BSW/Csm/Csm.h" 1
# 94 "../../../BSW/Csm/Csm.h"
# 1 "GenData/Csm_Cfg.h" 1
# 52 "GenData/Csm_Cfg.h"
# 1 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv_Custom.h" 1
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
# 95 "../../../BSW/Csm/Csm.h" 2
# 240 "../../../BSW/Csm/Csm.h"
# 1 "Include/MemMap.h" 1
# 241 "../../../BSW/Csm/Csm.h" 2
# 253 "../../../BSW/Csm/Csm.h"
void Csm_Init( void );
# 266 "../../../BSW/Csm/Csm.h"
void Csm_InitMemory( void );
# 301 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CancelJob(uint32 jobId, Crypto_OperationModeType mode);
# 324 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementSet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 const uint8 * keyPtr,
                                                 uint32 keyLength);
# 343 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeySetValid(uint32 keyId);
# 369 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementGet(uint32 keyId,
                                                 uint32 keyElementId,
                                                 uint8 * keyPtr,
                                                 uint32 * keyLengthPtr);
# 399 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopy(uint32 keyId,
                                                  uint32 keyElementId,
                                                  uint32 targetKeyId,
                                                  uint32 targetKeyElementId);
# 436 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyElementCopyPartial( uint32 keyId,
                                                          uint32 keyElementId,
                                                          uint32 keyElementSourceOffset,
                                                          uint32 keyElementTargetOffset,
                                                          uint32 keyElementCopyLength,
                                                          uint32 targetKeyId,
                                                          uint32 targetKeyElementId);
# 465 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyCopy(uint32 keyId,
                                           uint32 targetKeyId);
# 484 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomSeed(uint32 keyId,
                                              const uint8 * seedPtr,
                                              uint32 seedLength);
# 502 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyGenerate(uint32 keyId);
# 521 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyDerive(uint32 keyId,
                                             uint32 targetKeyId);
# 547 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcPubVal(uint32 keyId,
                                                         uint8 * publicValuePtr,
                                                         uint32 * publicValueLengthPtr);
# 573 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_KeyExchangeCalcSecret(uint32 keyId,
                                                         const uint8 * partnerPublicValuePtr,
                                                         uint32 partnerPublicValueLength);
# 591 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateParse(uint32 keyId);
# 614 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_CertificateVerify(uint32 keyId,
                                                     uint32 verifyKeyId,
                                                     Crypto_VerifyResultType * verifyPtr);
# 643 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Hash(uint32 jobId,
                                        Crypto_OperationModeType mode,
                                        const uint8 * dataPtr,
                                        uint32 dataLength,
                                        uint8 * resultPtr,
                                        uint32 * resultLengthPtr);
# 675 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_MacGenerate(uint32 jobId,
                                               Crypto_OperationModeType mode,
                                               const uint8 * dataPtr,
                                               uint32 dataLength,
                                               uint8 * macPtr,
                                               uint32 * macLengthPtr);
# 705 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_MacVerify(uint32 jobId,
                                             Crypto_OperationModeType mode,
                                             const uint8 * dataPtr,
                                             uint32 dataLength,
                                             const uint8 * macPtr,
                                             uint32 macLength,
                                             Crypto_VerifyResultType * verifyPtr);
# 738 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Encrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 770 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_Decrypt(uint32 jobId,
                                           Crypto_OperationModeType mode,
                                           const uint8 * dataPtr,
                                           uint32 dataLength,
                                           uint8 * resultPtr,
                                           uint32 * resultLengthPtr);
# 809 "../../../BSW/Csm/Csm.h"
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
# 850 "../../../BSW/Csm/Csm.h"
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
# 887 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureGenerate(uint32 jobId,
                                                     Crypto_OperationModeType mode,
                                                     const uint8 * dataPtr,
                                                     uint32 dataLength,
                                                     uint8 * resultPtr,
                                                     uint32 * resultLengthPtr);
# 917 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SignatureVerify(uint32 jobId,
                                                   Crypto_OperationModeType mode,
                                                   const uint8 * dataPtr,
                                                   uint32 dataLength,
                                                   const uint8 * signaturePtr,
                                                   uint32 signatureLength,
                                                   Crypto_VerifyResultType * verifyPtr);
# 949 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RandomGenerate(uint32 jobId,
                                                  uint8 * resultPtr,
                                                  uint32 * resultLengthPtr);
# 981 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeySetValid( uint32 jobId, uint32 keyId );
# 1002 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobRandomSeed( uint32 jobId, uint32 keyId, const uint8 * seedPtr, uint32 seedLength );
# 1022 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyGenerate( uint32 jobId, uint32 keyId );
# 1047 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyDerive( uint32 jobId, uint32 keyId, uint32 targetKeyId );
# 1071 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcPubVal( uint32 jobId,
                                                               uint32 keyId,
                                                               uint8 * publicValuePtr,
                                                               uint32 * publicValueLengthPtr );
# 1096 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_JobKeyExchangeCalcSecret( uint32 jobId,
                                                                uint32 keyId,
                                                                const uint8 * partnerPublicValuePtr,
                                                                uint32 partnerPublicValueLength );
# 1121 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_SaveContextJob( uint32 jobId,
                                                    uint8 * contextBufferPtr,
                                                    uint32 * contextBufferLengthPtr );
# 1144 "../../../BSW/Csm/Csm.h"
Std_ReturnType Csm_RestoreContextJob( uint32 jobId,
                                                       uint8 * contextBufferPtr,
                                                       uint32 contextBufferLength );


# 1 "Include/MemMap.h" 1
# 1150 "../../../BSW/Csm/Csm.h" 2
# 66 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
# 1 "Include/fbl_inc.h" 1
# 53 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/v_ver.h" 1
# 54 "Include/fbl_inc.h" 2
# 1 "../../../BSW/FblAsrStubs/v_cfg.h" 1
# 34 "../../../BSW/FblAsrStubs/v_cfg.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
# 35 "../../../BSW/FblAsrStubs/v_cfg.h" 2
# 55 "Include/fbl_inc.h" 2





# 1 "GenData/FblBm_Cfg.h" 1
# 61 "Include/fbl_inc.h" 2




# 1 "../../../BSW/SecMod/SecM.h" 1
# 40 "../../../BSW/SecMod/SecM.h"
# 1 "../../../BSW/SecMod/Sec.h" 1
# 79 "../../../BSW/SecMod/Sec.h"
# 1 "../../../BSW/SecMod/Sec_Inc.h" 1
# 42 "../../../BSW/SecMod/Sec_Inc.h"
# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 43 "../../../BSW/SecMod/Sec_Inc.h" 2

# 1 "../../../BSW/_Common/v_def.h" 1
# 563 "../../../BSW/_Common/v_def.h"
typedef unsigned char vuint8;




typedef signed char vsint8;





typedef unsigned short vuint16;




typedef signed short vsint16;






typedef unsigned long vuint32;




typedef signed long vsint32;





typedef unsigned char *TxDataPtr;
typedef unsigned char *RxDataPtr;
# 654 "../../../BSW/_Common/v_def.h"
typedef unsigned int vbittype;
# 665 "../../../BSW/_Common/v_def.h"
struct _c_bits8
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;
 };

struct _c_bits16
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;
};

struct _c_bits32
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;

  vbittype b20:1;
  vbittype b21:1;
  vbittype b22:1;
  vbittype b23:1;
  vbittype b24:1;
  vbittype b25:1;
  vbittype b26:1;
  vbittype b27:1;

  vbittype b30:1;
  vbittype b31:1;
  vbittype b32:1;
  vbittype b33:1;
  vbittype b34:1;
  vbittype b35:1;
  vbittype b36:1;
  vbittype b37:1;
};
# 45 "../../../BSW/SecMod/Sec_Inc.h" 2


# 1 "GenData/SecM_cfg.h" 1
# 48 "../../../BSW/SecMod/Sec_Inc.h" 2
# 57 "../../../BSW/SecMod/Sec_Inc.h"
# 1 "../../../BSW/SecMod/Sec_Types.h" 1
# 135 "../../../BSW/SecMod/Sec_Types.h"
typedef vuint32 SecM_WordType;




typedef vuint8 SecM_ByteType;

typedef vuint16 SecM_ShortType;


typedef SecM_ByteType * SecM_RamDataType;

typedef SecM_ShortType * SecM_RamShortType;

typedef SecM_WordType * SecM_RamWordType;

typedef const SecM_ByteType * SecM_ConstRamDataType;

typedef const SecM_WordType * SecM_ConstRamWordType;

typedef SecM_ByteType const * SecM_RomDataType;

typedef void * SecM_VoidPtrType;

typedef const void * SecM_ConstVoidPtrType;

typedef void const * SecM_RomVoidPtrType;






typedef SecM_ByteType SecM_StatusType;

typedef SecM_ShortType SecM_LengthType;


typedef SecM_WordType SecM_AddrType;

typedef SecM_WordType SecM_SizeType;


typedef struct
{
   SecM_AddrType transferredAddress;
   SecM_AddrType targetAddress;
   SecM_SizeType length;
} FL_SegmentInfoType;


typedef struct
{

   SecM_WordType nrOfSegments;


   FL_SegmentInfoType * segmentInfo;
} FL_SegmentListType;


typedef void (* FL_WDTriggerFctType)( void );

typedef SecM_SizeType (* FL_ReadMemoryFctType)( SecM_AddrType address, SecM_RamDataType buffer, SecM_SizeType length );
# 213 "../../../BSW/SecMod/Sec_Types.h"
typedef SecM_WordType SecM_ByteFastType;
typedef SecM_WordType SecM_ShortFastType;



typedef SecM_ShortFastType SecM_LengthFastType;






typedef struct
{

   SecM_ConstRamDataType data;

   SecM_LengthType size;
} SecM_RamBufferType;


typedef struct
{

   SecM_RomDataType data;

   SecM_LengthType size;
} SecM_RomBufferType;


typedef struct
{

   SecM_RamDataType buffer;

   SecM_ShortType pos;

   SecM_LengthType size;
} SecM_RamBufferProcessingType;


typedef SecM_RamBufferProcessingType * SecM_RamBufferProcessingPtrType;






typedef struct
{
   SecM_ByteType digest[1];
   SecM_WordType dummy;
} SecM_BasicWkspType;


typedef SecM_BasicWkspType * SecM_WorkspacePtrType;


typedef struct
{

   SecM_WorkspacePtrType data;

   SecM_LengthType size;
} SecM_WorkspaceType;


typedef struct
{

   SecM_ByteType *data;

   SecM_WordType size;
} SecM_VerificationWksp;
# 296 "../../../BSW/SecMod/Sec_Types.h"
typedef SecM_RomBufferType SecM_CryptKeyType;



typedef SecM_RamBufferType SecM_SymKeyType;


typedef struct
{

   SecM_CryptKeyType shared;

   SecM_CryptKeyType individual;
} SecM_AsymKeyType;


typedef struct
{

   SecM_CryptKeyType key;

   SecM_CryptKeyType iv;
} SecM_AesKeyType;


typedef struct
{
   SecM_CryptKeyType iterations;
   SecM_CryptKeyType salt;
   SecM_CryptKeyType password;
   SecM_CryptKeyType function;
} SecM_PBKDF2KeyType;


typedef struct
{

   SecM_RomDataType data;

   SecM_LengthType size;

   uint32 cryptoElementId;
} SecM_CryptographicKeyValueType;


typedef SecM_CryptographicKeyValueType const * SecM_CryptographicKeyValuePtrType;


typedef struct
{
   SecM_ByteType count;
   SecM_CryptographicKeyValuePtrType keyValues;
} SecM_CryptographicKeyType;


typedef SecM_CryptographicKeyType const * SecM_CryptographicKeyPtrType;






typedef enum
{
   SECM_HASH,
   SECM_MACVERIFY,
   SECM_MACGENERATE,
   SECM_ENCRYPTION,
   SECM_DECRYPTION,
   SECM_RANDOMGENERATE,
   SECM_RANDOMSEED,
   SECM_SIGNATUREVERIFY,
   SECM_AEADENCRYPT,
   SECM_AEADDECRYPT,
   SECM_KEYDERIVE
} SecM_JobServiceType;


typedef enum
{
   SEC_KEY_TYPE_NONE,
   SEC_KEY_TYPE_AES,
   SEC_KEY_TYPE_MAC,
   SEC_KEY_TYPE_SYMMETRIC,
   SEC_KEY_TYPE_ASYMMETRIC,
   SEC_KEY_TYPE_PBKDF2
} SecM_JobKeyType;

typedef enum
{
   SEC_BUFF_UNTIL_FULL,
   SEC_BUFF_FIFO
} SecM_BufferMode;

typedef enum
{
   SEC_BUFF_OK,
   SEC_BUFF_FULL
} SecM_BufferRetType;

typedef enum
{
   SECM_DECRAEAD_AUTHDATA,
   SECM_DECRAEAD_DECRYPT
} SecM_DecrStatusFsm;


typedef struct
{
   SecM_ShortType authDataLength;
   SecM_ShortType dataTagLength;
} SecM_JobDecryptionAEADParamTypes;


typedef struct
{
   SecM_JobServiceType service;
   uint32 csmJobId;
   uint32 csmKeyId;
   SecM_WordType smhKeyId;
   SecM_JobKeyType keyType;
   SecM_RomVoidPtrType jobParam;
} SecM_JobInfoType;


typedef SecM_JobInfoType const * SecM_JobInfoPtrType;



typedef Crypto_OperationModeType SecM_OperationModeType;
# 488 "../../../BSW/SecMod/Sec_Types.h"
typedef SecM_ShortType SecM_Crc16Type;
typedef SecM_WordType SecM_Crc32Type;
typedef SecM_WordType SecM_Crc64BaseType;
typedef struct
{
   SecM_Crc64BaseType highWord;
   SecM_Crc64BaseType lowWord;
} SecM_Crc64Type;


typedef SecM_Crc16Type SecM_CRCType;
# 507 "../../../BSW/SecMod/Sec_Types.h"
typedef void * SecM_CRCParamGenericType;
typedef SecM_StatusType(*SecM_CRCFunctionGenericType) (void * crcParam);


typedef struct
{
   SecM_ByteType crcType;
   SecM_CRCFunctionGenericType pCrcFunc;
   SecM_ByteType crcSize;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_CrcPrimitiveType;





typedef struct
{
   SecM_WordType jobId;
   SecM_RamDataType digest;
   SecM_LengthType digestLength;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_HashPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   SecM_WordType contextBufferSize;
   SecM_VerificationWksp * pVerWks;
   boolean computationOnly;
   boolean updateVerifiedData;
} SecM_MacPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   SecM_WordType hashJobId;
   SecM_RamDataType hashDigest;
   SecM_LengthType hashDigestLength;
   SecM_WordType contextBufferSize;
   SecM_VerificationWksp * pVerWks;
   boolean updateVerifiedData;
} SecM_SigPrimitiveType;


typedef struct
{
   SecM_WordType jobId;
   uint32 targetKeyId;
} SecM_KeyDerivePrimitiveType;





typedef SecM_SizeType SecM_ResultBufferType;


typedef SecM_VoidPtrType SecM_VerifyKeyType;


typedef SecM_RamDataType SecM_VerifyDataType;


typedef struct
{


   FL_SegmentListType segmentList;

   SecM_AddrType blockStartAddress;

   SecM_SizeType blockLength;

   SecM_VerifyDataType verificationData;

   SecM_CRCType crcTotal;

   FL_WDTriggerFctType wdTriggerFct;

   FL_ReadMemoryFctType readMemory;


   SecM_WorkspaceType workspace;

   SecM_VerifyKeyType key;
} SecM_VerifyParamType;


typedef struct
{
   SecM_ResultBufferType sigResultBuffer;
   SecM_SizeType length;
} SecM_SignatureType;


typedef struct
{

   SecM_SignatureType currentHash;

   SecM_SizeType * currentDataLength;

   SecM_StatusType sigState;

   SecM_VerifyDataType sigSourceBuffer;

   SecM_LengthType sigByteCount;

   FL_WDTriggerFctType wdTriggerFct;


   SecM_VerifyKeyType key;
} SecM_SignatureParamType;


typedef enum
{
   CRC_WORKSPACE_UNDEF,
   CRC_WORKSPACE_INIT
} SecM_CrcWorkspaceStateType;

typedef struct
{
   SecM_ResultBufferType workspacePtr;
   SecM_SizeType workspaceLength;
   SecM_CrcWorkspaceStateType state;
} SecM_CrcWorkspaceInfoType;
# 58 "../../../BSW/SecMod/Sec_Inc.h" 2


# 1 "GenData/SecMPar.h" 1
# 52 "GenData/SecMPar.h"
# 1 "../../../BSW/SecMod/Sec_Inc.h" 1
# 53 "GenData/SecMPar.h" 2






# 1 "Include/MemMap.h" 1
# 60 "GenData/SecMPar.h" 2



SecM_StatusType SecM_VerifySha256( SecM_SignatureParamType * pVerifyParam );
SecM_StatusType SecM_VerifyClassCCC_Rsa2048PssSha256( SecM_SignatureParamType * pVerifyParam );
SecM_StatusType FblDiagVerifyTokenSignature( SecM_SignatureParamType * pVerifyParam );

SecM_StatusType SecM_VerificationClassDDD_Sha256( SecM_VerifyParamType * pVerifyParam );
SecM_StatusType SecM_VerificationClassCCC_Rsa2048PssSha256( SecM_VerifyParamType * pVerifyParam );




# 1 "Include/MemMap.h" 1
# 74 "GenData/SecMPar.h" 2







# 1 "Include/MemMap.h" 1
# 82 "GenData/SecMPar.h" 2



# 1 "Include/MemMap.h" 1
# 86 "GenData/SecMPar.h" 2


# 1 "Include/MemMap.h" 1
# 89 "GenData/SecMPar.h" 2



 extern vuint8 const SecM_RsaDevelopmentMod[256];
 extern vuint8 const SecM_RsaDevelopmentExp[4];

 extern vuint8 const SecM_RsaTokenFunctionExp[4];
 extern vuint8 const SecM_RsaTokenFunctionMod[256];

 extern vuint8 const SecM_RsaKeyChangeExp[4];
 extern vuint8 const SecM_RsaKeyChangeMod[256];

 extern SecM_CryptographicKeyType const SecM_CryptographicKeys[3];



 extern SecM_HashPrimitiveType const SecM_HashPrimitives[1];



 extern SecM_RamDataType const SecM_SignaturePrimitivesContextBuffs[2];

 extern SecM_SigPrimitiveType const SecM_SignaturePrimitives[2];



 extern SecM_JobInfoType const SecM_JobInfo[5];



# 1 "Include/MemMap.h" 1
# 120 "GenData/SecMPar.h" 2
# 61 "../../../BSW/SecMod/Sec_Inc.h" 2
# 80 "../../../BSW/SecMod/Sec.h" 2


# 1 "../../../BSW/SecMod/Sec_Job.h" 1
# 51 "../../../BSW/SecMod/Sec_Job.h"
# 1 "Include/MemMap.h" 1
# 52 "../../../BSW/SecMod/Sec_Job.h" 2


SecM_CryptographicKeyValuePtrType SecM_GetKeyValueByElementId(SecM_WordType smhKeyId, uint32 keyElementId);



SecM_StatusType SecM_HashJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_ConstRamDataType dataPtr,
   SecM_WordType dataLength, SecM_RamDataType hashPtr, SecM_WordType * hashLengthPtr);
# 79 "../../../BSW/SecMod/Sec_Job.h"
SecM_StatusType SecM_RandomGenerateJob(SecM_WordType jobId, SecM_RamDataType resultPtr, SecM_WordType * resultLengthPtr);


SecM_StatusType SecM_RandomSeedJob(SecM_WordType jobId, SecM_ConstRamDataType seedPtr, SecM_WordType seedLength);


SecM_StatusType SecM_SignatureVerifyJob(SecM_WordType jobId, SecM_OperationModeType mode, SecM_VoidPtrType keyPtr,
   SecM_ConstRamDataType dataPtr, SecM_WordType dataLength, SecM_ConstRamDataType signaturePtr, SecM_WordType signatureLength);
# 155 "../../../BSW/SecMod/Sec_Job.h"
void SecM_CancelAllJobs(void);


# 1 "Include/MemMap.h" 1
# 159 "../../../BSW/SecMod/Sec_Job.h" 2
# 83 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Crc.h" 1
# 90 "../../../BSW/SecMod/Sec_Crc.h"
typedef struct
{
   SecM_Crc16Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC16ParamType;
typedef struct
{
   SecM_Crc32Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC32ParamType;
typedef struct
{
   SecM_Crc64Type currentCRC;
   SecM_ByteType crcState;
   SecM_ConstRamDataType crcSourceBuffer;
   SecM_RamDataType crcOutputBuffer;
   SecM_LengthType crcByteCount;
   FL_WDTriggerFctType wdTriggerFct;
} SecM_CRC64ParamType;


typedef SecM_CRC16ParamType SecM_CRCParamType;







typedef SecM_StatusType (* pSecComputeCRCFct)( SecM_CRCParamType * crcParam );







# 1 "Include/MemMap.h" 1
# 136 "../../../BSW/SecMod/Sec_Crc.h" 2






# 1 "Include/MemMap.h" 1
# 143 "../../../BSW/SecMod/Sec_Crc.h" 2
# 153 "../../../BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 154 "../../../BSW/SecMod/Sec_Crc.h" 2

void SecM_InitPowerOnCRC( void );

SecM_StatusType SecM_ComputeCRC( SecM_CRCParamType * crcParam );






SecM_StatusType SecM_ComputeCrc16( SecM_CRC16ParamType * crcParam);
# 178 "../../../BSW/SecMod/Sec_Crc.h"
# 1 "Include/MemMap.h" 1
# 179 "../../../BSW/SecMod/Sec_Crc.h" 2
# 84 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Decryption.h" 1
# 114 "../../../BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 115 "../../../BSW/SecMod/Sec_Decryption.h" 2
# 136 "../../../BSW/SecMod/Sec_Decryption.h"
# 1 "Include/MemMap.h" 1
# 137 "../../../BSW/SecMod/Sec_Decryption.h" 2
# 85 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_SeedKey.h" 1
# 56 "../../../BSW/SecMod/Sec_SeedKey.h"
# 1 "../../../BSW/SecMod/Sec_SeedKey_Cfg.h" 1
# 57 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_KeyBaseType;

typedef SecM_KeyBaseType SecM_KeyStorageType[0x00000012u];
# 100 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef SecM_ByteType SecM_SeedBaseType;

typedef SecM_SeedBaseType SecM_SeedStorageType[0x00000010u];
# 121 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef SecM_WordType SecM_ConstBaseType;




typedef struct
{

   SecM_WorkspaceType workspace;

   FL_WDTriggerFctType wdTriggerFct;
} SecM_SeedKeyContextType;



typedef SecM_SeedKeyContextType SecM_GenerateSeedParamType;





typedef SecM_SeedKeyContextType SecM_ComputeKeyParamType;


typedef struct
{

   SecM_ComputeKeyParamType common;

   SecM_SymKeyType secretKey;
} SecM_ComputeKeySymParamType;


typedef struct
{

   SecM_ComputeKeyParamType common;

   SecM_AsymKeyType publicKey;
} SecM_ComputeKeyAsymParamType;



typedef struct
{

   SecM_ConstBaseType constant;

   SecM_VoidPtrType context;
} SecM_ConstType;







typedef enum
{
   SEC_RNG_UNINTIALIZED,
   SEC_RNG_INTIALIZED
} SecM_RngState;


typedef struct
{
   SecM_ByteType data[0x00000020u];
   SecM_LengthType fillLevel;
   SecM_LengthType offset;
   SecM_RngState state;
   SecM_VoidPtrType context;
} SecM_EntropyPoolType;
# 203 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_SeedBaseType * data;
   SecM_EntropyPoolType * entropyPool;
} SecM_SeedType;
# 218 "../../../BSW/SecMod/Sec_SeedKey.h"
typedef struct
{

   SecM_KeyBaseType * data;

   SecM_VoidPtrType context;
} SecM_KeyType;






typedef SecM_StatusType (* pSecGenerateSeedFct)( SecM_SeedType * seed );




typedef SecM_StatusType (* pSecComputeKeyFct)( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

typedef SecM_StatusType (* pSecCompareKeyFct)( SecM_KeyType key, SecM_SeedType lastSeed );
# 252 "../../../BSW/SecMod/Sec_SeedKey.h"
# 1 "Include/MemMap.h" 1
# 253 "../../../BSW/SecMod/Sec_SeedKey.h" 2

extern SecM_StatusType SecM_GenerateSeed( SecM_SeedType * seed );




extern SecM_StatusType SecM_ComputeKey( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );

extern SecM_StatusType SecM_CompareKey( SecM_KeyType key, SecM_SeedType lastSeed );





void SecM_InitEntropy( SecM_EntropyPoolType * pEntropyPool );


# 1 "Include/MemMap.h" 1
# 272 "../../../BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 7030 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 275 "../../../BSW/SecMod/Sec_SeedKey.h" 2
void SecM_ProvideEntropy( SecM_EntropyPoolType * pEntropyPool,
   SecM_ByteType * entropy, SecM_LengthType length );

# 1 "Include/MemMap.h" 1
# 7037 "Include/MemMap.h"
#pragma section
# 279 "../../../BSW/SecMod/Sec_SeedKey.h" 2


# 1 "Include/MemMap.h" 1
# 282 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 292 "../../../BSW/SecMod/Sec_SeedKey.h"
extern SecM_StatusType SecM_ComputeKeyVendor( SecM_SeedStorageType inputSeed, SecM_ConstType constant,
   SecM_KeyStorageType * computedKey );




# 1 "Include/MemMap.h" 1
# 299 "../../../BSW/SecMod/Sec_SeedKey.h" 2
# 86 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Verification.h" 1
# 178 "../../../BSW/SecMod/Sec_Verification.h"
typedef SecM_ConstVoidPtrType SecM_VerifyInitType;

typedef SecM_ConstVoidPtrType SecM_VerifyDeinitType;


typedef SecM_StatusType (*pSecInitVerificationFct) (SecM_VerifyInitType init);
typedef SecM_StatusType (*pSecDeinitVerificationFct) (SecM_VerifyDeinitType deinit);
typedef SecM_StatusType (*pSecVerificationFct) ( SecM_VerifyParamType * pVerifyParam);
typedef SecM_StatusType (*pSecVerifySignatureFct) ( SecM_SignatureParamType * pVerifyParam);






typedef struct
{
   pSecVerifySignatureFct pFunction;
   SecM_LengthType length;
   SecM_LengthFastType offset;
   SecM_ByteType mask;
} SecM_VerifyOperationType;


typedef struct
{
   SecM_VerifyOperationType const * pOperation;
   SecM_SignatureParamType * pContext;




} SecM_VerifyConfigType;


typedef struct
{
   SecM_VerifyConfigType pPrimitives;
   SecM_ByteFastType count;
} SecM_VerifyConfigListType;
# 230 "../../../BSW/SecMod/Sec_Verification.h"
# 1 "Include/MemMap.h" 1
# 231 "../../../BSW/SecMod/Sec_Verification.h" 2

void SecM_InitPowerOnVerification ( void );
SecM_StatusType SecM_InitVerification ( SecM_VerifyInitType init );
SecM_StatusType SecM_DeinitVerification ( SecM_VerifyDeinitType deinit );






void SecM_UpdateDataLength ( SecM_SignatureParamType * pVerifyParam );





SecM_StatusType SecM_VerificationBase( SecM_VerifyParamType * pVerifyParam,
   const SecM_VerifyConfigListType * pCfgList);





SecM_StatusType SecM_VerifyChecksumCrc( SecM_SignatureParamType * pVerifyParam);






SecM_StatusType SecM_VerifyHash( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId);





SecM_StatusType SecM_VerifySig( SecM_SignatureParamType * pVerifyParam, SecM_WordType primitiveId);



# 1 "Include/MemMap.h" 1
# 272 "../../../BSW/SecMod/Sec_Verification.h" 2
# 87 "../../../BSW/SecMod/Sec.h" 2
# 1 "../../../BSW/SecMod/Sec_Cert.h" 1
# 75 "../../../BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 76 "../../../BSW/SecMod/Sec_Cert.h" 2

void SecM_InitCert( void );
# 101 "../../../BSW/SecMod/Sec_Cert.h"
# 1 "Include/MemMap.h" 1
# 102 "../../../BSW/SecMod/Sec_Cert.h" 2
# 88 "../../../BSW/SecMod/Sec.h" 2
# 120 "../../../BSW/SecMod/Sec.h"
typedef SecM_ConstVoidPtrType SecM_InitType;


typedef void (* pSecTaskFct)( void );






# 1 "Include/MemMap.h" 1
# 131 "../../../BSW/SecMod/Sec.h" 2


 extern SecM_ShortType secTimer;



# 1 "Include/MemMap.h" 1
# 138 "../../../BSW/SecMod/Sec.h" 2
# 148 "../../../BSW/SecMod/Sec.h"
# 1 "Include/MemMap.h" 1
# 149 "../../../BSW/SecMod/Sec.h" 2

SecM_StatusType SecM_InitPowerOn( SecM_InitType initParam );
void SecM_Init( void );
void SecM_Task( void );
SecM_WordType SecM_GetInteger( SecM_ByteFastType count, SecM_ConstRamDataType buffer );
void SecM_SetInteger( SecM_ByteFastType count, SecM_WordType input, SecM_RamDataType buffer );
void SecM_CopyBuffer( SecM_ConstRamDataType input, SecM_RamDataType output, SecM_ShortType count );
void SecM_InitBuffer( SecM_RamBufferProcessingPtrType buff, SecM_ShortType size );
SecM_BufferRetType SecM_AccumulateBufferStore( SecM_RamBufferProcessingPtrType buff, SecM_ConstRamDataType src,
   SecM_RamShortType size );
SecM_BufferRetType SecM_FifoBufferStore( SecM_RamBufferProcessingPtrType buff, SecM_ConstRamDataType src,
   SecM_RamShortType srcSize, SecM_RamDataType flushBuff, SecM_RamShortType flushSize );


# 1 "Include/MemMap.h" 1
# 164 "../../../BSW/SecMod/Sec.h" 2
# 41 "../../../BSW/SecMod/SecM.h" 2
# 66 "Include/fbl_inc.h" 2






# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 105 "../../../BSW/Fbl/fbl_def.h"
# 1 "../../../BSW/Fbl/fbl_assert.h" 1
# 96 "../../../BSW/Fbl/fbl_assert.h"
# 1 "../../../BSW/Fbl/fbl_assert_oem.h" 1
# 97 "../../../BSW/Fbl/fbl_assert.h" 2
# 106 "../../../BSW/Fbl/fbl_def.h" 2
# 304 "../../../BSW/Fbl/fbl_def.h"
typedef vuint32 tFblStateBitmap;
# 328 "../../../BSW/Fbl/fbl_def.h"
typedef vuint8 tFblErrorType;
typedef vuint16 tFblErrorCode;

typedef vuint8 tFblResult;
typedef vuint8 tFblProgStatus;
typedef vuint8 tApplStatus;
typedef vuint8 tMagicFlag;
typedef vuint8 tFlashStatus;
# 346 "../../../BSW/Fbl/fbl_def.h"
typedef vuint32 FBL_ADDR_TYPE;
typedef vuint32 FBL_MEMSIZE_TYPE;







typedef vuint8 FBL_MEMID_TYPE;

typedef FBL_ADDR_TYPE tFblAddress;
typedef FBL_MEMSIZE_TYPE tFblLength;

typedef FBL_ADDR_TYPE tMtabAddress;
typedef FBL_MEMSIZE_TYPE tMtabLength;
typedef FBL_MEMID_TYPE tMtabMemId;

typedef vuint16 tChecksum;
# 374 "../../../BSW/Fbl/fbl_def.h"
typedef void (*tExportFct)(void);


typedef vuint8 (* tFblRealtimeFct)(void);


typedef tFblLength (* tReadMemoryFct)(tFblAddress address, vuint8 * buffer, tFblLength length);






typedef struct tagProcParam
{
   vuint8 * dataBuffer;
   vuint16 dataLength;
   vuint8 * dataOutBuffer;
   vuint16 dataOutLength;
   vuint16 dataOutMaxLength;
   vuint8 (* wdTriggerFct)(void);
   vuint8 mode;
} tProcParam;



typedef struct tagSegmentInfo
{
   tFblAddress targetAddress;
   tFblLength length;
} tSegmentInfo;


typedef struct tagSegmentList
{
   vuint8 nrOfSegments;
   tSegmentInfo segmentInfo[16u];
} tSegmentList;
# 73 "Include/fbl_inc.h" 2


# 1 "GenData/Fbl_Lbt.h" 1
# 94 "GenData/Fbl_Lbt.h"
typedef vuint8 tFblLbtBlockNr;
typedef boolean tFblLbtMandatoryType;
typedef vuint32 tFblLbtBlockIndex;
typedef vuint32 tFblLbtBlockType;
typedef vuint32 tFblLbtMagicFlag;
typedef vuint8 tFblLbtAssignFlags;
typedef vuint8 tFblLbtBlockCount;



typedef struct tBlockDescriptorTag {
  tFblLbtBlockNr blockNr;
  tFblLbtMandatoryType mandatoryType;
  tFblLbtBlockIndex blockIndex;
  tFblLbtBlockType blockType;
  tFblAddress blockStartAddress;
  tFblLength blockLength;
  tFblAddress headerAddress;
  tFblAddress bmHeaderAddress;
  tExportFct verifyOutput;
} tBlockDescriptor;


typedef struct tLogicalBlockTableTag {
  tFblLbtMagicFlag magicFlag;
  tFblLbtAssignFlags assignFlags[1u];
  tFblLbtBlockCount noOfBlocks;
  tBlockDescriptor logicalBlock[4u];
} tLogicalBlockTable;


 extern tLogicalBlockTable const FblLogicalBlockTable;
# 76 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_lbt_access.h" 1
# 58 "../../../BSW/Fbl/fbl_lbt_access.h"
typedef struct
{
   tFblLbtMandatoryType value;
   boolean enabled;
} tFblLbtMandatoryFilter;



typedef struct
{
   tFblLbtBlockType value;
   boolean enabled;
} tFblLbtTypeFilter;



typedef struct
{
   tFblLbtMandatoryFilter mandatoryType;

   tFblLbtTypeFilter blockType;

} tFblLbtBlockFilter;


# 1 "Include/MemMap.h" 1
# 84 "../../../BSW/Fbl/fbl_lbt_access.h" 2




void FblLbtInitPowerOn(void);


void FblLbtBlockFilterInit( tFblLbtBlockFilter * blockFilter);
void FblLbtBlockFilterSetMandatoryType( tFblLbtBlockFilter * blockFilter, tFblLbtMandatoryType mandatoryType);

void FblLbtBlockFilterSetBlockType( tFblLbtBlockFilter * blockFilter, tFblLbtBlockType blockType);



tFblLbtBlockCount FblLbtGetBlockCount(void);
tFblLbtMagicFlag FblLbtGetMagicFlag(void);
tFblResult FblLbtGetBlockNrByAddressLength(tFblAddress address, tFblLength length, tFblLbtBlockNr * blockNr);

tFblResult FblLbtGetBlockDescriptorByNr(tFblLbtBlockNr blockNr, tBlockDescriptor * blockDescriptor);
tFblResult FblLbtGetBlockDescriptorByAddressLength(tFblAddress address, tFblLength length, tBlockDescriptor * blockDescriptor);

tFblResult FblLbtGetBlockDescriptorByType(tFblLbtBlockType blockType, tBlockDescriptor * blockDescriptor);


tFblResult FblLbtGetBlockTypeByNr(tFblLbtBlockNr blockNr, tFblLbtBlockType * blockType);


tFblResult FblLbtGetBlockIndexByNr(tFblLbtBlockNr blockNr, tFblLbtBlockIndex * blockIndex);


tFblResult FblLbtGetBlockHeaderAddressByNr(tFblLbtBlockNr blockNr, tFblAddress * blockHeaderAddress);


tFblResult FblLbtGetBlockBmHeaderAddressByNr(tFblLbtBlockNr blockNr, tFblAddress * bmHeaderAddress);
# 132 "../../../BSW/Fbl/fbl_lbt_access.h"
tFblResult FblLbtGetBlockVerifyOutputFuncByNr(tFblLbtBlockNr blockNr, tExportFct * blockVerifyFunc);



tFblResult FblLbtGetBlockDescriptorByIndex(tFblLbtBlockIndex blockIndex, tBlockDescriptor * blockDescriptor);
tFblResult FblLbtGetBlockNrByIndex(tFblLbtBlockIndex blockIndex, tFblLbtBlockNr * blockNr);

tFblResult FblLbtGetBlockTypeByIndex(tFblLbtBlockIndex blockIndex, tFblLbtBlockType * blockType);


tFblResult FblLbtGetBlockHeaderAddressByIndex(tFblLbtBlockIndex blockIndex, tFblAddress * blockHeaderAddress);


tFblResult FblLbtGetBlockBmHeaderAddressByIndex(tFblLbtBlockIndex blockIndex, tFblAddress * bmHeaderAddress);
# 160 "../../../BSW/Fbl/fbl_lbt_access.h"
tFblResult FblLbtGetBlockVerifyOutputFuncByIndex(tFblLbtBlockIndex blockIndex, tExportFct * blockVerifyFunc);




tBlockDescriptor FblLbtBlockFirst(const tFblLbtBlockFilter * blockFilter);
tBlockDescriptor FblLbtBlockNext(void);
boolean FblLbtBlockDone(void);


tFblResult FblLbtCheckAddressRange(tFblAddress address, tFblAddress rangeStart, tFblLength rangeLength);
tFblResult FblLbtCheckRangeContained(tFblAddress address, tFblLength length, tFblAddress rangeStart, tFblLength rangeLength);





void FblLbtActivateLbtBlockByAddress(tFblAddress address);


# 1 "Include/MemMap.h" 1
# 181 "../../../BSW/Fbl/fbl_lbt_access.h" 2
# 77 "Include/fbl_inc.h" 2
# 86 "Include/fbl_inc.h"
# 1 "../../../BSW/Flash/flashdrv.h" 1
# 241 "../../../BSW/Flash/flashdrv.h"
typedef unsigned long tFlashData;
typedef unsigned long tFlashAddress;
typedef unsigned long tFlashLength;
typedef unsigned short tFlashErrorCode;


typedef unsigned char tFlashUint8;
typedef unsigned short tFlashUint16;
typedef unsigned long tFlashUint32;

typedef struct
{

   tFlashUint8 patchLevel;
   tFlashUint8 minorVersion;
   tFlashUint8 majorVersion;
   tFlashUint8 reserved1;

   tFlashErrorCode errorCode;

   tFlashUint16 programmingType;
   volatile tFlashUint32 * pflashEccStatReg;
   tFlashUint32 flashEccStatMask;
   volatile tFlashUint32 * pflashEccControlReg;
   tFlashUint32 flashEccControlMask;
   tFlashUint32 flashEccControlValue;
   tFlashAddress address;
   tFlashAddress verificationAddress;
   tFlashLength writeLength;
   tFlashLength eraseCount;
   tFlashData* data;

   tFlashUint8 (* wdTriggerFct)(void);

   tFlashData intendedData;
   tFlashData acutalData;
   tFlashAddress errorAddress;

   tFlashUint32* tempData;



} tFlashParam;


typedef void (* tFlashFct)(tFlashParam * flashParam);
# 298 "../../../BSW/Flash/flashdrv.h"
# 1 "Include/MemMap.h" 1
# 299 "../../../BSW/Flash/flashdrv.h" 2

void ExpFlashInit ( tFlashParam * flashParam );
void ExpFlashDeinit ( tFlashParam * flashParam );
void ExpFlashErase ( tFlashParam * flashParam );
void ExpFlashWrite ( tFlashParam * flashParam );





# 1 "Include/MemMap.h" 1
# 310 "../../../BSW/Flash/flashdrv.h" 2
# 87 "Include/fbl_inc.h" 2
# 101 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_wd.h" 1
# 72 "../../../BSW/Fbl/fbl_wd.h"
# 1 "Include/MemMap.h" 1
# 73 "../../../BSW/Fbl/fbl_wd.h" 2

 extern vuint16 P2Timer;
 extern vuint8 WDInitFlag;





typedef vuint8 tWdTime;


 extern tWdTime WDTimer;



# 1 "Include/MemMap.h" 1
# 89 "../../../BSW/Fbl/fbl_wd.h" 2






# 1 "Include/MemMap.h" 1
# 96 "../../../BSW/Fbl/fbl_wd.h" 2
void FblInitWatchdog ( void );

# 1 "Include/MemMap.h" 1
# 99 "../../../BSW/Fbl/fbl_wd.h" 2


# 1 "Include/MemMap.h" 1
# 4026 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 102 "../../../BSW/Fbl/fbl_wd.h" 2
void FblLookForWatchdogVoid( void );

# 1 "Include/MemMap.h" 1
# 4033 "Include/MemMap.h"
#pragma section
# 105 "../../../BSW/Fbl/fbl_wd.h" 2


# 1 "Include/MemMap.h" 1
# 4026 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 108 "../../../BSW/Fbl/fbl_wd.h" 2
vuint8 FblLookForWatchdog( void );

# 1 "Include/MemMap.h" 1
# 4033 "Include/MemMap.h"
#pragma section
# 111 "../../../BSW/Fbl/fbl_wd.h" 2
# 102 "Include/fbl_inc.h" 2

# 1 "../../../BSW/Fbl/iotypes.h" 1
# 43 "../../../BSW/Fbl/iotypes.h"
# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 44 "../../../BSW/Fbl/iotypes.h" 2
# 57 "../../../BSW/Fbl/iotypes.h"
typedef vuint8 IO_U8;
typedef vuint16 IO_U16;
typedef vuint32 IO_U32;
typedef vsint8 IO_S8;
typedef vsint16 IO_S16;
typedef vsint32 IO_S32;



typedef vuint32 IO_SizeType;
typedef vuint32 IO_PositionType;





typedef vuint16 IO_ErrorType;
typedef vuint8* IO_MemPtrType;
# 104 "Include/fbl_inc.h" 2


# 1 "GenData/Fbl_Fbt.h" 1
# 64 "GenData/Fbl_Fbt.h"
typedef struct tFlashBlockTag {
  tFblAddress begin;
  tFblAddress end;
  vuint8 device;
} tFlashBlock;

typedef IO_ErrorType (*tMemDrvFctInit)( void * );
typedef IO_ErrorType (*tMemDrvFctDeinit)( void * );
typedef IO_ErrorType (*tMemDrvFctErase)( IO_SizeType, IO_PositionType );
typedef IO_ErrorType (*tMemDrvFctWrite)( IO_MemPtrType, IO_SizeType, IO_PositionType );
typedef IO_ErrorType (*tMemDrvFctRead)( IO_MemPtrType, IO_SizeType, IO_PositionType );

typedef struct tMemDrvTag {
  tMemDrvFctInit init;
  tMemDrvFctDeinit deinit;
  tMemDrvFctErase erase;
  tMemDrvFctWrite write;
  tMemDrvFctRead read;
  vuint16 segmentSize;
  vuint8 erasedValue;
  boolean initHook;
  boolean deinitHook;
  boolean eraseHook;
  boolean writeHook;
  boolean readHook;
} tMemDrv;


 extern vuint8 const kNrOfFlashBlock;
 extern tFlashBlock const FlashBlock[];
 extern tMemDrv const memDrvLst[];
 extern vuint8 const kNrOfMemDrv;
# 107 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_mio.h" 1
# 103 "../../../BSW/Fbl/fbl_mio.h"
# 1 "Include/MemMap.h" 1
# 3858 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 104 "../../../BSW/Fbl/fbl_mio.h" 2

void MemDriver_InitPowerOn( void );

vsint16 FblMemSegmentNrGet( tFblAddress address );
tFblResult FblMemGetDeviceByAddr( tFblAddress address, vuint8 * device );
tFblResult FblMemGetDeviceByRange( tFblAddress address, tFblLength length, vuint8 * device );
tFblLength FblReadProm( tFblAddress address, vuint8 * buffer, tFblLength length );
IO_ErrorType FblReadPromExt( tFblAddress address, vuint8 * buffer, tFblLength length,
   tFblLength * actualReadCount );


IO_ErrorType MemDriver_InitSync( void * address );
IO_ErrorType MemDriver_DeinitSync( void * address );
IO_ErrorType MemDriver_RReadSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType MemDriver_RWriteSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType MemDriver_REraseSync( IO_SizeType len, IO_PositionType addr );

void MemDriver_Begin( vuint8 device, vuint8 function, boolean hookEnabled );
void MemDriver_End( boolean hookEnabled );


# 1 "Include/MemMap.h" 1
# 3865 "Include/MemMap.h"
#pragma section
# 126 "../../../BSW/Fbl/fbl_mio.h" 2






# 1 "Include/MemMap.h" 1
# 133 "../../../BSW/Fbl/fbl_mio.h" 2

 extern vuint8 memDrvDeviceActive;
 extern vuint8 memDrvFunctionActive;



 extern vsint16 memSegment;


# 1 "Include/MemMap.h" 1
# 143 "../../../BSW/Fbl/fbl_mio.h" 2
# 108 "Include/fbl_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_flio.h" 1
# 179 "../../../BSW/Fbl/fbl_flio.h"
# 1 "Include/MemMap.h" 1
# 3590 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 180 "../../../BSW/Fbl/fbl_flio.h" 2

IO_ErrorType FlashDriver_InitSync ( void * address );
IO_ErrorType FlashDriver_DeinitSync ( void * address );
IO_ErrorType FlashDriver_RWriteSync ( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress);
IO_ErrorType FlashDriver_REraseSync ( IO_SizeType eraseLength, IO_PositionType eraseAddress );
IO_ErrorType FlashDriver_RReadSync ( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_U32 FlashDriver_GetVersionOfDriver( void );
# 198 "../../../BSW/Fbl/fbl_flio.h"
void FlashDriver_ResumeProtection( void );
IO_ErrorType FlashDriver_DisableProtection(vuint16 uc, const vuint32 password[8u]);
# 226 "../../../BSW/Fbl/fbl_flio.h"
# 1 "Include/MemMap.h" 1
# 3597 "Include/MemMap.h"
#pragma section
# 227 "../../../BSW/Fbl/fbl_flio.h" 2






# 1 "Include/MemMap.h" 1
# 3542 "Include/MemMap.h"
#pragma section ".FblFlashDrvSection" awB
# 234 "../../../BSW/Fbl/fbl_flio.h" 2
 extern vuint8 flashCode[3072];

# 1 "Include/MemMap.h" 1
# 3549 "Include/MemMap.h"
#pragma section
# 237 "../../../BSW/Fbl/fbl_flio.h" 2
# 109 "Include/fbl_inc.h" 2
# 122 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/applvect.h" 1
# 95 "../../../BSW/Fbl/applvect.h"
# 1 "Include/MemMap.h" 1
# 4056 "Include/MemMap.h"
#pragma section ".ApplVectSection" a
# 96 "../../../BSW/Fbl/applvect.h" 2
extern vuint32 const ApplIntJmpTable[2u];

# 1 "Include/MemMap.h" 1
# 4063 "Include/MemMap.h"
#pragma section
# 99 "../../../BSW/Fbl/applvect.h" 2
# 123 "Include/fbl_inc.h" 2




# 1 "../../../BSW/FblCw/fbl_cw.h" 1
# 77 "../../../BSW/FblCw/fbl_cw.h"
# 1 "GenData/Dcm_Cbk.h" 1
# 57 "GenData/Dcm_Cbk.h"
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
# 78 "../../../BSW/FblCw/fbl_cw.h" 2
# 1 "GenData/FblCw_Cfg.h" 1
# 79 "../../../BSW/FblCw/fbl_cw.h" 2
# 1 "GenData/FblCw_Lcfg.h" 1
# 668 "GenData/FblCw_Lcfg.h"
typedef uint8_least FblCw_CanIfCtrlInfoIterType;


typedef uint8_least FblCw_DcmDslConnectionGroupInfoIterType;


typedef uint8_least FblCw_DcmDslConnectionGroupInfoIndIterType;


typedef uint8_least FblCw_DcmDslConnectionInfoIterType;


typedef uint8_least FblCw_DcmDslProtocolRxInfoIterType;


typedef uint8_least FblCw_DcmDslProtocolTxInfoIterType;


typedef uint8_least FblCw_ParameterInfoIterType;
# 698 "GenData/FblCw_Lcfg.h"
typedef FblCw_ParameterInfoIterType FblCw_InitialBCIterType;


typedef FblCw_ParameterInfoIterType FblCw_InitialBSIterType;


typedef FblCw_ParameterInfoIterType FblCw_InitialSTminIterType;
# 716 "GenData/FblCw_Lcfg.h"
typedef uint16 FblCw_BusNmRxIndCycleMsType;


typedef uint8 FblCw_CanIfCtrlInfoType;


typedef uint8 FblCw_SnvOfDcmDslConnectionGroupInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndType;


typedef uint8 FblCw_BusTypeOfDcmDslConnectionInfoType;


typedef uint8 FblCw_ControllerOfDcmDslConnectionInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfoType;


typedef uint8 FblCw_DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfoType;


typedef boolean FblCw_DcmDslConnectionGroupInfoIndUsedOfDcmDslConnectionInfoType;


typedef uint8 FblCw_ParameterInfoIdxOfDcmDslConnectionInfoType;


typedef boolean FblCw_ParameterInfoUsedOfDcmDslConnectionInfoType;


typedef uint16 FblCw_PayloadLimitOfDcmDslConnectionInfoType;


typedef uint8 FblCw_RxTesterSourceAddressOfDcmDslConnectionInfoType;


typedef uint8 FblCw_TxRemotePduIdOfDcmDslConnectionInfoType;


typedef uint8 FblCw_AddrTypeOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfoType;


typedef uint16 FblCw_InitialBCType;


typedef uint16 FblCw_InitialBSType;


typedef uint16 FblCw_InitialSTminType;


typedef boolean FblCw_InitializedType;


typedef uint8 FblCw_CanTpIdOfParameterInfoType;


typedef uint8 FblCw_PduRIdOfParameterInfoType;


typedef uint8 FblCw_SizeOfCanIfCtrlInfoType;


typedef uint8 FblCw_SizeOfDcmDslConnectionGroupInfoType;


typedef uint8 FblCw_SizeOfDcmDslConnectionGroupInfoIndType;


typedef uint8 FblCw_SizeOfDcmDslConnectionInfoType;


typedef uint8 FblCw_SizeOfDcmDslProtocolRxInfoType;


typedef uint8 FblCw_SizeOfDcmDslProtocolTxInfoType;


typedef uint8 FblCw_SizeOfInitialBCType;


typedef uint8 FblCw_SizeOfInitialBSType;


typedef uint8 FblCw_SizeOfInitialSTminType;


typedef uint8 FblCw_SizeOfParameterInfoType;


typedef uint8 FblCw_VariantIdxType;
# 831 "GenData/FblCw_Lcfg.h"
typedef struct sFblCw_DcmDslConnectionGroupInfoType
{
  FblCw_SnvOfDcmDslConnectionGroupInfoType SnvOfDcmDslConnectionGroupInfo;
} FblCw_DcmDslConnectionGroupInfoType;







typedef struct sFblCw_DcmDslConnectionInfoType
{
  FblCw_PayloadLimitOfDcmDslConnectionInfoType PayloadLimitOfDcmDslConnectionInfo;
  FblCw_BusTypeOfDcmDslConnectionInfoType BusTypeOfDcmDslConnectionInfo;
  FblCw_ControllerOfDcmDslConnectionInfoType ControllerOfDcmDslConnectionInfo;
  FblCw_DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfoType DcmDslConnectionGroupInfoIndEndIdxOfDcmDslConnectionInfo;
  FblCw_DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfoType DcmDslConnectionGroupInfoIndStartIdxOfDcmDslConnectionInfo;
  FblCw_ParameterInfoIdxOfDcmDslConnectionInfoType ParameterInfoIdxOfDcmDslConnectionInfo;
  FblCw_RxTesterSourceAddressOfDcmDslConnectionInfoType RxTesterSourceAddressOfDcmDslConnectionInfo;
  FblCw_TxRemotePduIdOfDcmDslConnectionInfoType TxRemotePduIdOfDcmDslConnectionInfo;
} FblCw_DcmDslConnectionInfoType;





typedef struct sFblCw_DcmDslProtocolRxInfoType
{
  FblCw_AddrTypeOfDcmDslProtocolRxInfoType AddrTypeOfDcmDslProtocolRxInfo;
  FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfoType DcmDslConnectionInfoIdxOfDcmDslProtocolRxInfo;
} FblCw_DcmDslProtocolRxInfoType;





typedef struct sFblCw_DcmDslProtocolTxInfoType
{
  FblCw_DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfoType DcmDslConnectionInfoIdxOfDcmDslProtocolTxInfo;
} FblCw_DcmDslProtocolTxInfoType;


typedef struct sFblCw_ParameterInfoType
{
  FblCw_CanTpIdOfParameterInfoType CanTpIdOfParameterInfo;
  FblCw_PduRIdOfParameterInfoType PduRIdOfParameterInfo;
} FblCw_ParameterInfoType;
# 890 "GenData/FblCw_Lcfg.h"
typedef struct FblCw_InitialBCStructSTag
{
  FblCw_InitialBCType DcmDslConnection_9abab095;
  FblCw_InitialBCType DcmDslConnection_9a5c8c89;
} FblCw_InitialBCStructSType;


typedef struct FblCw_InitialBSStructSTag
{
  FblCw_InitialBSType DcmDslConnection_9abab095;
  FblCw_InitialBSType DcmDslConnection_9a5c8c89;
} FblCw_InitialBSStructSType;


typedef struct FblCw_InitialSTminStructSTag
{
  FblCw_InitialSTminType DcmDslConnection_9abab095;
  FblCw_InitialSTminType DcmDslConnection_9a5c8c89;
} FblCw_InitialSTminStructSType;
# 920 "GenData/FblCw_Lcfg.h"
typedef union FblCw_InitialBCUTag
{
  FblCw_InitialBCType raw[2];
  FblCw_InitialBCStructSType str;
} FblCw_InitialBCUType;


typedef union FblCw_InitialBSUTag
{
  FblCw_InitialBSType raw[2];
  FblCw_InitialBSStructSType str;
} FblCw_InitialBSUType;


typedef union FblCw_InitialSTminUTag
{
  FblCw_InitialSTminType raw[2];
  FblCw_InitialSTminStructSType str;
} FblCw_InitialSTminUType;
# 950 "GenData/FblCw_Lcfg.h"
typedef const FblCw_CanIfCtrlInfoType * FblCw_CanIfCtrlInfoPtrType;


typedef const FblCw_DcmDslConnectionGroupInfoType * FblCw_DcmDslConnectionGroupInfoPtrType;


typedef const FblCw_DcmDslConnectionGroupInfoIndType * FblCw_DcmDslConnectionGroupInfoIndPtrType;


typedef const FblCw_DcmDslConnectionInfoType * FblCw_DcmDslConnectionInfoPtrType;


typedef const FblCw_DcmDslProtocolRxInfoType * FblCw_DcmDslProtocolRxInfoPtrType;


typedef const FblCw_DcmDslProtocolTxInfoType * FblCw_DcmDslProtocolTxInfoPtrType;


typedef FblCw_InitialBCType * FblCw_InitialBCPtrType;


typedef FblCw_InitialBSType * FblCw_InitialBSPtrType;


typedef FblCw_InitialSTminType * FblCw_InitialSTminPtrType;


typedef FblCw_InitializedType * FblCw_InitializedPtrType;


typedef const FblCw_ParameterInfoType * FblCw_ParameterInfoPtrType;
# 992 "GenData/FblCw_Lcfg.h"
typedef struct sFblCw_PCConfigType
{
  uint8 FblCw_PCConfigNeverUsed;
} FblCw_PCConfigType;

typedef FblCw_PCConfigType FblCw_ConfigType;
# 1030 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3282 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1031 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_CanIfCtrlInfoType FblCw_CanIfCtrlInfo[1];


# 1 "Include/MemMap.h" 1
# 3289 "Include/MemMap.h"
#pragma section
# 1036 "GenData/FblCw_Lcfg.h" 2
# 1050 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1051 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionGroupInfoType FblCw_DcmDslConnectionGroupInfo[1];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1056 "GenData/FblCw_Lcfg.h" 2
# 1067 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3282 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1068 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionGroupInfoIndType FblCw_DcmDslConnectionGroupInfoInd[2];


# 1 "Include/MemMap.h" 1
# 3289 "Include/MemMap.h"
#pragma section
# 1073 "GenData/FblCw_Lcfg.h" 2
# 1094 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1095 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslConnectionInfoType FblCw_DcmDslConnectionInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1100 "GenData/FblCw_Lcfg.h" 2
# 1115 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1116 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslProtocolRxInfoType FblCw_DcmDslProtocolRxInfo[4];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1121 "GenData/FblCw_Lcfg.h" 2
# 1135 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1136 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_DcmDslProtocolTxInfoType FblCw_DcmDslProtocolTxInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1141 "GenData/FblCw_Lcfg.h" 2
# 1156 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3298 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1157 "GenData/FblCw_Lcfg.h" 2

extern const FblCw_ParameterInfoType FblCw_ParameterInfo[2];


# 1 "Include/MemMap.h" 1
# 3305 "Include/MemMap.h"
#pragma section
# 1162 "GenData/FblCw_Lcfg.h" 2
# 1173 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1174 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialBCUType FblCw_InitialBC;


# 1 "Include/MemMap.h" 1
# 1179 "GenData/FblCw_Lcfg.h" 2
# 1190 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1191 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialBSUType FblCw_InitialBS;


# 1 "Include/MemMap.h" 1
# 1196 "GenData/FblCw_Lcfg.h" 2
# 1207 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1208 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitialSTminUType FblCw_InitialSTmin;


# 1 "Include/MemMap.h" 1
# 1213 "GenData/FblCw_Lcfg.h" 2
# 1224 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 1225 "GenData/FblCw_Lcfg.h" 2

extern FblCw_InitializedType FblCw_Initialized;


# 1 "Include/MemMap.h" 1
# 1230 "GenData/FblCw_Lcfg.h" 2
# 1255 "GenData/FblCw_Lcfg.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1256 "GenData/FblCw_Lcfg.h" 2


# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 1259 "GenData/FblCw_Lcfg.h" 2
# 80 "../../../BSW/FblCw/fbl_cw.h" 2
# 298 "../../../BSW/FblCw/fbl_cw.h"
typedef uint16 FblCw_RxTesterSourceAddressOfDcmDslConnectionInfo16BitType;


typedef PduLengthType tCwDataLengthType;
typedef tCwDataLengthType tTpDataType;


typedef enum
{
  FBLCW_CONNECTIONBUSTYPE_UNSPECIFIED = 0,
  FBLCW_CONNECTIONBUSTYPE_CAN,
  FBLCW_CONNECTIONBUSTYPE_CANFD,
  FBLCW_CONNECTIONBUSTYPE_ETH,
  FBLCW_CONNECTIONBUSTYPE_LIN,
  FBLCW_CONNECTIONBUSTYPE_FR,
  FBLCW_CONNECTIONBUSTYPE_CDD
} tFblCw_ConnectionBusType;
# 330 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 3218 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 331 "../../../BSW/FblCw/fbl_cw.h" 2
# 342 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_InitMemory(void);
# 360 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_Init(const FblCw_ConfigType * config);
# 374 "../../../BSW/FblCw/fbl_cw.h"
void FblCw_Deinit(void);
# 385 "../../../BSW/FblCw/fbl_cw.h"
void FblCwIdleTask(void);
# 394 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTimerTask(void);







void FblCwStateTask(void);
# 412 "../../../BSW/FblCw/fbl_cw.h"
void FblCwPduTransmit( vuint8 * data, tCwDataLengthType length);
# 434 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTransmitRP(const vuint8 * data);







void FblCwRetransmitRP(void);
# 451 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCwCheckStartMessage(void);
# 460 "../../../BSW/FblCw/fbl_cw.h"
void FblCwTxSetTargetAddress(FblCw_DcmDslConnectionInfoIterType targetAddress);







FblCw_DcmDslConnectionInfoIterType FblCwGetResponseAddress(void);






void FblCwResetResponseAddress(void);







tFblResult FblCwPrepareResponseAddress(void);







tFblResult FblCwSaveResponseAddress(void);
# 518 "../../../BSW/FblCw/fbl_cw.h"
void FblCwResetRxBlock(void);







tFblCw_ConnectionBusType FblCwGetBusTypeOfActiveConnection(void);







tCwDataLengthType FblCwGetPayloadLimit(void);
# 545 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCw_ChangeParameter(TPParameterType parameter, uint16 value);







tFblResult FblCw_ResetParameter(void);
# 563 "../../../BSW/FblCw/fbl_cw.h"
tFblResult FblCw_ReadParameter(TPParameterType parameter, uint16 * value);
# 578 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 3225 "Include/MemMap.h"
#pragma section
# 579 "../../../BSW/FblCw/fbl_cw.h" 2
# 594 "../../../BSW/FblCw/fbl_cw.h"
# 1 "Include/MemMap.h" 1
# 595 "../../../BSW/FblCw/fbl_cw.h" 2


 extern vuint8 fblCwStateStartMsg;




# 1 "Include/MemMap.h" 1
# 603 "../../../BSW/FblCw/fbl_cw.h" 2
# 128 "Include/fbl_inc.h" 2



# 1 "../../../BSW/Fbl/fbl_hw.h" 1
# 112 "../../../BSW/Fbl/fbl_hw.h"
# 1 "../../../BSW/Fbl/fbl_sfr.h" 1
# 113 "../../../BSW/Fbl/fbl_hw.h" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 115 "../../../BSW/Fbl/fbl_hw.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 1 3
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 1 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\xkeycheck.h" 1 3
# 4 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 463 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long int _Int32t;
typedef unsigned long int _Uint32t;







typedef long int _Ptrdifft;






typedef long unsigned int _Sizet;
# 931 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 1 3











  typedef __builtin_va_list va_list;
# 39 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 3

# 932 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 1058 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
# 1113 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef int _Wchart;
typedef unsigned int _Wintt;
# 1152 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef va_list _Va_list;
# 1169 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3





void _Atexit(void (*)(void));

# 1189 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef char _Sysch_t;
# 1203 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3

# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 2 3



typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef unsigned short cnt_t;

typedef long off_t;
typedef long paddr_t;
typedef long key_t;

typedef char * caddr_t;

typedef unsigned short ino_t;
typedef int mode_t;
typedef short pid_t;
typedef short dev_t;
typedef unsigned short uid_t;
typedef unsigned short gid_t;
typedef short nlink_t;
typedef unsigned long daddr_t;




typedef int _ssize_t;
# 79 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
typedef _Sizet size_t;



# 116 "../../../BSW/Fbl/fbl_hw.h" 2
# 314 "../../../BSW/Fbl/fbl_hw.h"
typedef enum
{
   FBL_WDT_SYSTEM,
   FBL_WDT_CPU
} tFblWdtType;
# 329 "../../../BSW/Fbl/fbl_hw.h"
# 1 "Include/MemMap.h" 1
# 3678 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 330 "../../../BSW/Fbl/fbl_hw.h" 2
vuint16 FblGetTimerValue(void);

# 1 "Include/MemMap.h" 1
# 3685 "Include/MemMap.h"
#pragma section
# 333 "../../../BSW/Fbl/fbl_hw.h" 2


# 1 "Include/MemMap.h" 1
# 3693 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 336 "../../../BSW/Fbl/fbl_hw.h" 2
void FblTimerInit( void );

extern void FblHwRegisterUnlock( tFblWdtType wdtType );
extern void FblHwRegisterLock( tFblWdtType wdtType );
extern void FblHwRegisterModify( tFblWdtType wdtType, vuint16 password, vuint16 reload );

# 1 "Include/MemMap.h" 1
# 3699 "Include/MemMap.h"
#pragma section
# 343 "../../../BSW/Fbl/fbl_hw.h" 2





# 1 "Include/MemMap.h" 1
# 3693 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" x
# 349 "../../../BSW/Fbl/fbl_hw.h" 2

extern tFblLength FblReadBlock(tFblAddress address, vuint8 *buffer, tFblLength length);
extern vuint8 FblReadByte(tFblAddress address);

# 1 "Include/MemMap.h" 1
# 3699 "Include/MemMap.h"
#pragma section
# 354 "../../../BSW/Fbl/fbl_hw.h" 2



# 1 "Include/MemMap.h" 1
# 6396 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 358 "../../../BSW/Fbl/fbl_hw.h" 2

void* FblOwnMemcpy(void *dest, const void *source, unsigned int count);

# 1 "Include/MemMap.h" 1
# 6403 "Include/MemMap.h"
#pragma section
# 362 "../../../BSW/Fbl/fbl_hw.h" 2
# 374 "../../../BSW/Fbl/fbl_hw.h"
# 1 "Include/MemMap.h" 1
# 375 "../../../BSW/Fbl/fbl_hw.h" 2
 extern vuint32 fblCurrentTimer;
 extern vuint32 fblCurrentCmpValue;

# 1 "Include/MemMap.h" 1
# 379 "../../../BSW/Fbl/fbl_hw.h" 2
# 132 "Include/fbl_inc.h" 2




# 1 "../../../BSW/WrapNv/WrapNv.h" 1
# 67 "../../../BSW/WrapNv/WrapNv.h"
# 1 "GenData/WrapNv_Cfg.h" 1
# 106 "GenData/WrapNv_Cfg.h"
# 1 "Include/MemMap.h" 1
# 107 "GenData/WrapNv_Cfg.h" 2

void WrapNv_InitConfig( void );



# 1 "Include/MemMap.h" 1
# 113 "GenData/WrapNv_Cfg.h" 2
# 68 "../../../BSW/WrapNv/WrapNv.h" 2
# 157 "../../../BSW/WrapNv/WrapNv.h"
typedef enum
{
   WRAPNV_OPSTATUS_INIT = 0u,
   WRAPNV_OPSTATUS_PENDING,
   WRAPNV_OPSTATUS_CANCEL,
   WRAPNV_OPSTATUS_IDLE
} tWrapNvOpStatus;


typedef enum
{
   WRAPNV_ACCESS_DATAELEMENT = 0u,
   WRAPNV_ACCESS_BLOCKELEMENT
} tWrapNvAccessType;
# 179 "../../../BSW/WrapNv/WrapNv.h"
typedef unsigned char WrapNv_DefaultReturntype;






# 1 "Include/MemMap.h" 1
# 187 "../../../BSW/WrapNv/WrapNv.h" 2

void WrapNv_Init( void );
# 215 "../../../BSW/WrapNv/WrapNv.h"
# 1 "Include/MemMap.h" 1
# 216 "../../../BSW/WrapNv/WrapNv.h" 2
# 137 "Include/fbl_inc.h" 2


# 1 "../../../BSW/Fbl/fbl_nvpattern.h" 1
# 61 "../../../BSW/Fbl/fbl_nvpattern.h"
# 1 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 1
# 168 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
typedef enum
{
    kFblNvPatternId_Invalid = 0u


   ,kFblNvPatternId_PartitionValidity
   ,kFblNvPatternId_ApplValidity = kFblNvPatternId_PartitionValidity


   ,kFblNvPatternId_ModuleValidity
   ,kFblNvPatternId_BlockValidity = kFblNvPatternId_ModuleValidity




  





   ,kFblNvPatternId_Last
} tFblNvPatternId;
# 206 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
# 1 "Include/MemMap.h" 1
# 207 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 2
# 219 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
# 1 "Include/MemMap.h" 1
# 220 "../../../BSW/Fbl/fbl_nvpattern_oem.h" 2
# 62 "../../../BSW/Fbl/fbl_nvpattern.h" 2
# 77 "../../../BSW/Fbl/fbl_nvpattern.h"
typedef enum
{
   FBL_NVPATTERN_STATE_NOMEMSEGMENT = 0u,
   FBL_NVPATTERN_STATE_READERROR,
   FBL_NVPATTERN_STATE_ERASED,
   FBL_NVPATTERN_STATE_UNEXPECTEDVALUE,
   FBL_NVPATTERN_STATE_EXPECTEDVALUE
} tFblNvPatternItemState;


typedef struct
{
   tFblNvPatternItemState markerState;
   tFblNvPatternItemState maskState;
} tFblNvPatternState;






# 1 "Include/MemMap.h" 1
# 99 "../../../BSW/Fbl/fbl_nvpattern.h" 2


tFblNvPatternState FblNvPatternGetPatternState( const tBlockDescriptor * pBlockDescriptor,
                                                       tFblNvPatternId patternId,
                                                       IO_PositionType * pPatternAddress,
                                                       IO_SizeType * pPatternLength );
vsint16 FblNvPatternGetBaseAddr( vuint8 blockNr,
                                 tFblNvPatternId patternId,
                                 IO_PositionType * pPatternAddress,
                                 IO_SizeType * pPatternLength );
vsint16 FblNvPatternGetBaseAddrByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
                                                  tFblNvPatternId patternId,
                                                  IO_PositionType * pPatternAddress,
                                                  IO_SizeType * pPatternLength );
tFblResult FblNvPatternSet( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternSetByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
tFblResult FblNvPatternClr( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternClrByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
tFblResult FblNvPatternGet( const tBlockDescriptor * blockDescriptor, tFblNvPatternId patternId );
tFblResult FblNvPatternGetByBlockDescriptor( const tBlockDescriptor * blockDescriptor,
   tFblNvPatternId patternId );
# 141 "../../../BSW/Fbl/fbl_nvpattern.h"
# 1 "Include/MemMap.h" 1
# 142 "../../../BSW/Fbl/fbl_nvpattern.h" 2
# 140 "Include/fbl_inc.h" 2



# 1 "../../../BSW/Fbl/fbl_ramio_inc.h" 1
# 41 "../../../BSW/Fbl/fbl_ramio_inc.h"
# 1 "../../../BSW/Fbl/iotypes.h" 1
# 42 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "Include/fbl_ramio_cfg.h" 1
# 43 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "../../../BSW/Fbl/fbl_ramio.h" 1
# 77 "../../../BSW/Fbl/fbl_ramio.h"
# 1 "Include/MemMap.h" 1
# 78 "../../../BSW/Fbl/fbl_ramio.h" 2

IO_ErrorType RamDriver_InitSync( void * address);
IO_ErrorType RamDriver_DeinitSync( void * address );
IO_ErrorType RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_ErrorType RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress );
IO_ErrorType RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress );


# 1 "Include/MemMap.h" 1
# 87 "../../../BSW/Fbl/fbl_ramio.h" 2
# 44 "../../../BSW/Fbl/fbl_ramio_inc.h" 2
# 144 "Include/fbl_inc.h" 2
# 155 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_diag.h" 1
# 530 "../../../BSW/Fbl/fbl_diag.h"
typedef vuint32 tStateBitmap;
# 813 "../../../BSW/Fbl/fbl_diag.h"
typedef struct tagSecurityLevel
{
   vuint8 accessType;
   vuint8 stateIdxKey;
   vuint8 stateIdxAccess;
} tSecurityLevel;
# 830 "../../../BSW/Fbl/fbl_diag.h"
typedef tFblAddress tFblDiagAddr;


typedef enum
{
   kBlockState_Init,
   kBlockState_Erased,
   kBlockState_Verified
} tBlockState;


typedef struct
{
   tBlockState state;
   vuint8 nrOfSegments;
   vuint8 segmentIdx[16u];
} tBlockHeader;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength length;
   vuint8 checksum[32u];
} tDiagSegmentInfo;


typedef struct
{
   vuint8 nrOfSegments;
   tDiagSegmentInfo segmentInfo[16u];
} tDiagSegmentList;





typedef enum
{
   kTokenHdlrOk = 0,
   kTokenHdlrProtocolFailed = 1,
   kTokenHdlrSyncPKeyValFailed = 2,
   kTokenHdlrFesnFailed = 3,
   kTokenHdlrTimeTokenFailed = 4,

   kTokenHdlrKeyChangeFailed = 5,

   kTokenHdlrSignatureFailed = 6,
   kTokenHdlrTokenApplPassed = 7,
   kTokenHdlrTokenSignFailed = 8,
   kTokenHdlrInternalFailed = 9
} tTokenHdlResult;

typedef enum
{
   FBL_DIAG_SRVMSGID_NOTSTORED = 0,
   FBL_DIAG_SRVMSGID_STORED = 1
} tFblDiagSrvMsgIdStoreStatus;
# 897 "../../../BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 898 "../../../BSW/Fbl/fbl_diag.h" 2

void FblDiagTimerTask( void );
void FblDiagStateTask( void );
vuint8 FblRealTimeSupport( void );

void FblDiagPostInit( void );
void FblDiagEcuReset(vuint8 resetOptions, vuint8 responseFlag);
void FblDiagInitPowerOn( void );
void FblDiagInit( void );
vuint8 FblDiagGetLastErasedBlock( void );
void FblDiagSetLastErasedBlock( vuint8 blockNr );

void DiagResponseProcessor( tCwDataLengthType dataLength );


# 1 "Include/MemMap.h" 1
# 914 "../../../BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 917 "../../../BSW/Fbl/fbl_diag.h" 2
void DiagExRCRResponsePending( vuint8 forceSend );

void FblDiagTxErrorIndication( vuint8 cwMsgType );
void FblDiagRxIndication( vuint8 * pbDiagBuffer, tCwDataLengthType rxDataLength );
void FblDiagTxConfirmation( vuint8 cwMsgType );
vuint8* FblDiagRxGetPhysBuffer( tCwDataLengthType rxDataLength );
vuint8* FblDiagRxGetFuncBuffer( tCwDataLengthType rxDataLength );
void FblDiagRxStartIndication( void );
void FblDiagRxErrorIndication( void );

# 1 "Include/MemMap.h" 1
# 3491 "Include/MemMap.h"
#pragma section
# 928 "../../../BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 931 "../../../BSW/Fbl/fbl_diag.h" 2

vuint8 FblDiagCheckStartMsg(const vuint8 *pData, vuint32 length);
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, tDiagSegmentList * blockSegList);


void CheckSuppressPosRspMsgIndication( vuint8 *subparam );

tFblResult FblDiagMemPreWrite( void );
tFblResult FblDiagMemPostWrite( void );



# 1 "Include/MemMap.h" 1
# 944 "../../../BSW/Fbl/fbl_diag.h" 2






# 1 "Include/MemMap.h" 1
# 951 "../../../BSW/Fbl/fbl_diag.h" 2


 extern vuint8 * DiagBuffer;
 extern vuint8 diagErrorCode;
 extern tCwDataLengthType DiagDataLength;
 extern vuint16 P2Timeout;
 extern vuint16 testerPresentTimeout;
 extern vuint8 diagResponseFlag;
 extern vuint8 diagServiceCurrent;
 extern tStateBitmap fblStates[(((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u];
 extern vuint8 diagCurrentSecLvl;


# 1 "Include/MemMap.h" 1
# 965 "../../../BSW/Fbl/fbl_diag.h" 2
# 985 "../../../BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 986 "../../../BSW/Fbl/fbl_diag.h" 2




 extern vuint16 errStatErrorCode;
 extern vuint16 errStatFblStates;
 extern vuint8 errStatLastServiceId;
 extern vuint8 errStatFlashDrvVersion[3];
 extern vuint16 errStatFlashDrvErrorCode;
 extern tBlockDescriptor errStatDescriptor;
# 1005 "../../../BSW/Fbl/fbl_diag.h"
 extern vuint8 tokenBuffer[1899u];




# 1 "Include/MemMap.h" 1
# 1011 "../../../BSW/Fbl/fbl_diag.h" 2
# 156 "Include/fbl_inc.h" 2

# 1 "../../../BSW/Fbl/fbl_mem.h" 1
# 187 "../../../BSW/Fbl/fbl_mem.h"
# 1 "../../../BSW/Fbl/fbl_mem_oem.h" 1
# 188 "../../../BSW/Fbl/fbl_mem.h" 2
# 594 "../../../BSW/Fbl/fbl_mem.h"
typedef SecM_StatusType tFblMemVerifyStatus;




typedef SecM_SignatureParamType tFblMemVerifyParamInput;




typedef SecM_VerifyParamType tFblMemVerifyParamOutput;




typedef SecM_LengthType tFblMemVerifyLength;




typedef SecM_SizeType tFblMemVerifySize;




typedef SecM_AddrType tFblMemVerifyAddr;




typedef vuint8 * tFblMemVerifyDataPtr;




typedef FL_WDTriggerFctType tFblMemVerifyWdFct;




typedef FL_ReadMemoryFctType tFblMemVerifyReadFct;


typedef tFblMemVerifyStatus (*tFblMemVerifyFctInput) ( tFblMemVerifyParamInput *);






typedef tFblMemVerifyStatus (*tFblMemVerifyFctOutput) ( tFblMemVerifyParamOutput *fp);





typedef FL_SegmentListType tFblMemSegmentList;




typedef FL_SegmentInfoType tFblMemSegmentListEntry;



typedef vuint8 tFblMemVerifyOption;


typedef enum
{


   kFblMemStatus_Ok = ((vuint8) 0x00u)
   ,kFblMemStatus_Failed = ((vuint8) 0x22u)

   ,kFblMemStatus_BlockEraseSequence = ((vuint8) 0x24u)

   ,kFblMemStatus_BlockStartSequence = ((vuint8) 0x22u)
   ,kFblMemStatus_BlockStartParam = ((vuint8) 0x22u)

   ,kFblMemStatus_BlockEndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_BlockEndVerifyFinalize = ((vuint8) 0x72u)

   ,kFblMemStatus_BlockVerifySequence = ((vuint8) 0x24u)
   ,kFblMemStatus_BlockVerifyInputVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyProcessedVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyPipeVerify = ((vuint8) 0x72u)
   ,kFblMemStatus_BlockVerifyOutputVerify = ((vuint8) 0x72u)

   ,kFblMemStatus_SegmentStartSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentStartDataProcInit = ((vuint8) 0x31u)
   ,kFblMemStatus_SegmentStartStreamOutInit = ((vuint8) 0x31u)
   ,kFblMemStatus_SegmentStartVerifyInit = ((vuint8) 0x22u)
   ,kFblMemStatus_SegmentStartVerifyCompute = ((vuint8) 0x72u)
   ,kFblMemStatus_SegmentStartSegmentCount = ((vuint8) 0x31u)

   ,kFblMemStatus_SegmentEndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentEndInsufficientData = ((vuint8) 0x24u)
   ,kFblMemStatus_SegmentEndPost = ((vuint8) 0x22u)

   ,kFblMemStatus_DataIndSequence = ((vuint8) 0x24u)
   ,kFblMemStatus_DataIndParam = ((vuint8) 0x72u)
   ,kFblMemStatus_DataIndOverflow = ((vuint8) 0x71u)

   ,kFblMemStatus_DataProc = ((vuint8) 0x72u)
   ,kFblMemStatus_DataProcConsume = ((vuint8) 0x72u)
   ,kFblMemStatus_DataProcDeinit = ((vuint8) 0x72u)

   ,kFblMemStatus_StreamOutput = ((vuint8) 0x72u)
   ,kFblMemStatus_StreamOutputConsume = ((vuint8) 0x72u)
   ,kFblMemStatus_StreamOutputOverflow = ((vuint8) 0x71u)
   ,kFblMemStatus_StreamOutputDeinit = ((vuint8) 0x72u)

   ,kFblMemStatus_DriverResumeWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverErase = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverRemainder = ((vuint8) 0x72u)
   ,kFblMemStatus_DriverSuspendWrite = ((vuint8) 0x72u)

   ,kFblMemStatus_ProgramOverflow = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramOutsideFbt = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramUnalignedAddress = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramDriverNotReady = ((vuint8) 0x24u)
   ,kFblMemStatus_ProgramPreWrite = ((vuint8) 0x72u)
   ,kFblMemStatus_ProgramPostWrite = ((vuint8) 0x72u)

   ,kFblMemStatus_EraseOutsideFbt = ((vuint8) 0x31u)
   ,kFblMemStatus_EraseDriverNotReady = ((vuint8) 0x22u)
   ,kFblMemStatus_ErasePreErase = ((vuint8) 0x22u)
   ,kFblMemStatus_ErasePostErase = ((vuint8) 0x22u)

   ,kFblMemStatus_VerifyCompute = ((vuint8) 0x72u)
   ,kFblMemStatus_VerifyFinalize = ((vuint8) 0x72u)

   ,kFblMemStatus_PassThroughLocal = ((vuint8) 0x22u)
   ,kFblMemStatus_PassThroughRemote = ((vuint8) 0x22u)
# 760 "../../../BSW/Fbl/fbl_mem.h"
} tFblMemStatus;


typedef enum
{
   kFblMemType_RAM = 0u,
   kFblMemType_ROM
} tFblMemType;


typedef enum
{
   kFblMemProgState_Idle = 0u,
   kFblMemProgState_Error,
   kFblMemProgState_Suspended,
   kFblMemProgState_SuspendPending,
   kFblMemProgState_Checkpoint,
   kFblMemProgState_Pending
} tFblMemProgState;


typedef vuint8 * tFblMemRamData;

typedef const vuint8 * tFblMemConstRamData;


typedef vuint8 tFblMemDfi;


typedef struct
{
   tFblMemVerifyFctInput function;
   tFblMemVerifyParamInput * param;
} tFblMemVerifyRoutineInput;


typedef struct
{
   tFblMemVerifyFctOutput function;
   tFblMemVerifyParamOutput * param;
} tFblMemVerifyRoutineOutput;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength targetLength;

   tFblAddress logicalAddress;
   tFblLength logicalLength;
   tFblMemVerifyRoutineInput verifyRoutineInput;
   tFblMemVerifyRoutineInput verifyRoutineProcessed;
   tFblMemVerifyRoutineInput verifyRoutinePipe;
   tFblMemVerifyRoutineOutput verifyRoutineOutput;
   tFblMemVerifyReadFct readFct;
   tFblMemSegmentList * segmentList;
   vuint32 maxSegments;
} tFblMemBlockInfo;


typedef struct
{
   tFblMemRamData data;
   tFblLength length;
} tFblMemVerifyData;


typedef struct
{
   tFblMemVerifyData verifyDataInput;
   tFblMemVerifyData verifyDataProcessed;
   tFblMemVerifyData verifyDataPipe;
   tFblMemVerifyData verifyDataOutput;
} tFblMemBlockVerifyData;


typedef struct
{
   tFblAddress targetAddress;
   tFblLength targetLength;

   tFblAddress logicalAddress;
   tFblLength logicalLength;

   tFblMemType type;
   tFblMemDfi dataFormat;
} tFblMemSegmentInfo;



typedef vuint8 tFblMemTriggerStatus;





typedef vuint32 tFblMemInputSource;
# 904 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 905 "../../../BSW/Fbl/fbl_mem.h" 2
# 914 "../../../BSW/Fbl/fbl_mem.h"
tFblMemRamData FblMemInitPowerOn( void );
tFblMemRamData FblMemInitPowerOnExt( tFblLength preambleLen, tFblMemInputSource sourceHandle );
tFblMemRamData FblMemInit( void );
void FblMemDeinit( void );
tFblMemRamData FblMemGetActiveBuffer( void );
tFblMemStatus FblMemBlockEraseIndication( const tFblMemBlockInfo * block );
tFblMemStatus FblMemBlockStartIndication( tFblMemBlockInfo * block );
tFblMemStatus FblMemBlockEndIndication( void );
tFblMemStatus FblMemBlockVerify( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult );
tFblMemStatus FblMemBlockVerifyExtended( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult, const tFblMemVerifyOption option );
tFblMemStatus FblMemSegmentStartIndication( const tFblMemSegmentInfo * segment );
tFblMemStatus FblMemSegmentEndIndication( tFblLength * writeLength );
tFblMemStatus FblMemDataIndication( tFblMemConstRamData buffer, tFblLength offset, tFblLength length );
void FblMemTask( void );
void FblMemFlushInputData( void );


tFblMemStatus FblMemEraseRegion( tFblAddress eraseAddress, tFblLength eraseLength );
tFblMemStatus FblMemProgramBuffer( tFblAddress programAddress, tFblLength * programLength,
   tFblMemRamData programData );


void FblMemSetInteger( vuint32 count, vuint32 input, tFblMemRamData buffer );
vuint32 FblMemGetInteger( vuint32 count, tFblMemConstRamData buffer );
# 948 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 949 "../../../BSW/Fbl/fbl_mem.h" 2


# 1 "Include/MemMap.h" 1
# 3765 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 952 "../../../BSW/Fbl/fbl_mem.h" 2

void FblMemResumeIndication( void );

void FblMemRxNotification( void );



# 1 "Include/MemMap.h" 1
# 3774 "Include/MemMap.h"
#pragma section
# 960 "../../../BSW/Fbl/fbl_mem.h" 2
# 970 "../../../BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 971 "../../../BSW/Fbl/fbl_mem.h" 2

 extern tFblMemProgState fblMemProgState;


# 1 "Include/MemMap.h" 1
# 976 "../../../BSW/Fbl/fbl_mem.h" 2
# 158 "Include/fbl_inc.h" 2




# 1 "Include/comdat.h" 1
# 53 "Include/comdat.h"
typedef struct tBootSwId_tag
{
   unsigned char NumberOfModules;

   unsigned char IdentificationParameterRecord[24 + 1];
} tBootSwId;

typedef struct tBootGenToolVer_tag
{
   unsigned char GenerationToolSupplier;
   unsigned char GenerationToolVersionNumber[10];
} tBootGenToolVer;

typedef struct tFblCommonData_tag
{

   unsigned char EcuCoreAssemblyNumber[24 + 1];
   unsigned char EcuDeliveryAssemblyNumber[24 + 1];
   unsigned char EcuSerialNumber[16 + 1];
   tBootSwId BootSoftwareIdentification;
   tBootGenToolVer BootloaderGenToolVersionNumber;
   unsigned char FordElectronicSerialNumber[8 + 1];
} tFblCommonData;
# 163 "Include/fbl_inc.h" 2
# 176 "Include/fbl_inc.h"
# 1 "Include/fbl_ap.h" 1
# 165 "Include/fbl_ap.h"
void ApplFblInit( void );
void ApplFblStartup( vuint8 initposition );
void ApplTrcvrNormalMode( void );
void ApplFblSetVfp( void );
void ApplFblResetVfp( void );
void ApplFblReset( void );


void ApplFblTask( void );



void ApplFblStateTask( void );


void ApplFblFatalError( vuint8 errorCode );

void ApplCanWakeUp( void );


tFblResult ApplFblInitDataProcessing( tProcParam * procParam );
tFblResult ApplFblDataProcessing( tProcParam * procParam );
tFblResult ApplFblDeinitDataProcessing( tProcParam * procParam );
# 198 "Include/fbl_ap.h"
void ApplFblCanBusOff( void );




void ApplTrcvrSleepMode( void );
vuint8 ApplFblCwWakeUp( void );


void ApplFblPreMemDriver( vuint8 device, vuint8 function );


void ApplFblPostMemDriver( vuint8 device, vuint8 function );
# 228 "Include/fbl_ap.h"
 extern tFblCommonData const fblCommonData;
# 177 "Include/fbl_inc.h" 2


# 1 "Include/fbl_apwd.h" 1
# 154 "Include/fbl_apwd.h"
void ApplFblWDInit( void );
void ApplFblWDLong( void );
void ApplFblWDShort( void );

# 1 "Include/MemMap.h" 1
# 8063 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 159 "Include/fbl_apwd.h" 2
void ApplFblWDTrigger( void );

# 1 "Include/MemMap.h" 1
# 8072 "Include/MemMap.h"
#pragma section
# 162 "Include/fbl_apwd.h" 2
# 180 "Include/fbl_inc.h" 2



# 1 "Include/fbl_apdi.h" 1
# 163 "Include/fbl_apdi.h"
typedef vuint8 const * tDidDataPtr;

typedef struct tFblDidTable_tag
{
   vuint16 did;
   vuint16 size;
   tDidDataPtr ptr;
} tFblDidTable;
# 179 "Include/fbl_apdi.h"
 extern tFblDidTable const fblDidTable[];
 extern vuint8 const kNrOfDids;
# 195 "Include/fbl_apdi.h"
vuint8 ApplFblReadDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );

vuint8 ApplFblWriteDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );



void ApplFblTokenRevertKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevPermKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevTempKey( const vuint8 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevDateKey( const vuint8 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevIgniKey( const vuint8 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenProgKey( const vuint8 * tokenBuf, vuint16 tokenLength );






void ApplFblInitErrStatus( void );


tFblMemStatus ApplFblMemConditionCheck( void );

vuint8 ApplFblSecurityInit( void );

# 1 "Include/MemMap.h" 1
# 2905 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 221 "Include/fbl_apdi.h" 2
vuint8 ApplFblSecuritySeedInit( void );

# 1 "Include/MemMap.h" 1
# 2914 "Include/MemMap.h"
#pragma section
# 224 "Include/fbl_apdi.h" 2
vuint8 ApplFblSecuritySeed( void );
vuint8 ApplFblSecurityKey( void );
# 184 "Include/fbl_inc.h" 2
# 1 "Include/fbl_apnv.h" 1
# 186 "Include/fbl_apnv.h"
 extern vuint8 applSignValidState;






tFblProgStatus ApplFblExtProgRequest( void );
tApplStatus ApplFblIsValidApp( void );
tFblResult ApplFblValidateApp( void );
tFblResult ApplFblInvalidateApp( void );
tFblResult ApplFblValidateBlock( tBlockDescriptor blockDescriptor );
tFblResult ApplFblInvalidateBlock( tBlockDescriptor blockDescriptor );

tFblResult ApplFblAdjustLbtBlockData(tBlockDescriptor * blockDescriptor);



void ApplFblReadSecurityBytes( vuint8 * key, vuint16 length );





tFblResult ApplFblReadVerificationKey( SecM_AsymKeyType * publicKey );

tFblResult ApplFblWriteVerificationKey( vuint8 * key );




tFblResult ApplFblWriteDcmDslRxTesterSourceAddr(vuint8* buffer);
tFblResult ApplFblReadDcmDslRxTesterSourceAddr(vuint8* buffer);
# 185 "Include/fbl_inc.h" 2







# 1 "../../../BSW/Cmpr/cmpr.h" 1
# 76 "../../../BSW/Cmpr/cmpr.h"
typedef struct tagLZSS_InputBuffer_T
{

   vuint8 * buffer;

   vuint8 bitPos;

   vuint32 length;

   vuint32 bitLength;
} LZSS_InputBuffer_T;


typedef LZSS_InputBuffer_T LZSS_OutputBuffer_T;





void LZSS_Init( void );
void LZSS_ExpandData(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf);
# 193 "Include/fbl_inc.h" 2







# 1 "../../../BSW/Fbl/fbl_main.h" 1
# 48 "../../../BSW/Fbl/fbl_main.h"
# 1 "../../../BSW/Fbl/fbl_main_types.h" 1
# 48 "../../../BSW/Fbl/fbl_main_types.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
# 61 "../../../BSW/FblBm/bm_types.h"
# 1 "../../../BSW/FblBmHdr/bm_hdr_types.h" 1
# 44 "../../../BSW/FblBmHdr/bm_hdr_types.h"
# 1 "GenData/FblBmHdr_Cfg.h" 1
# 129 "GenData/FblBmHdr_Cfg.h"
typedef enum
{
  FBLBMHDR_TARGET_FBL = 0,
  FBLBMHDR_TARGET_FBLUPDATER = 1,
  FBLBMHDR_TARGET_APPL = 2,
  FBLBMHDR_TARGET_DATA = 3
} tFblBmHdrTargetHandle;


typedef struct
{
   uint32 address;
   uint32 length;
} tFblBmHdrVerificationList;


typedef struct
{
   uint32 bmMagicFlag;
   uint32 bmEntryAddress;
   tFblBmHdrTargetHandle bmTargetHandle;
   uint32 bmBlockStartAddress;
   uint32 bmBlockLength;
   uint32 bmAuthenticationHeaderAddress;
} tFblBmHdrHeader;






# 1 "Include/MemMap.h" 1
# 2980 "Include/MemMap.h"
#pragma section ".BmHdrHeaderSection" a
# 161 "GenData/FblBmHdr_Cfg.h" 2

extern const tFblBmHdrHeader FblBmHdrHeader;


# 1 "Include/MemMap.h" 1
# 2987 "Include/MemMap.h"
#pragma section
# 166 "GenData/FblBmHdr_Cfg.h" 2


# 1 "Include/MemMap.h" 1
# 169 "GenData/FblBmHdr_Cfg.h" 2

extern const uint32 FblBmHdrTargets[4u];


# 1 "Include/MemMap.h" 1
# 174 "GenData/FblBmHdr_Cfg.h" 2






# 1 "Include/MemMap.h" 1
# 181 "GenData/FblBmHdr_Cfg.h" 2



# 1 "Include/MemMap.h" 1
# 185 "GenData/FblBmHdr_Cfg.h" 2
# 45 "../../../BSW/FblBmHdr/bm_hdr_types.h" 2





typedef enum
{
   FBLBMHDR_CHKHDR_OK,
   FBLBMHDR_CHKHDR_BLOCK_INVALID,
   FBLBMHDR_CHKHDR_READ_FAIL,
   FBLBMHDR_CHKHDR_HEADER_INCONSISTENT,
   FBLBMHDR_CHKHDR_WRONG_TARGET,
   FBLBMHDR_CHKHDR_GET_MAC_FAIL,
   FBLBMHDR_CHKHDR_VERIFICATION_FAIL,
   FBLBMHDR_CHKHDR_NOT_FOUND
}tFblBmHdrCheckBmHeaderResult;
# 62 "../../../BSW/FblBm/bm_types.h" 2
# 1 "GenData/FblBm_Lcfg.h" 1
# 53 "GenData/FblBm_Lcfg.h"
# 1 "GenData/FblBm_Cfg.h" 1
# 54 "GenData/FblBm_Lcfg.h" 2





typedef enum
{
   FBLBM_TARGET_TYPE_MANDATORY = 0u,
   FBLBM_TARGET_TYPE_OPTIONAL
} tFblBmTargetType;

typedef struct
{
   tFblBmHdrTargetHandle target;
   tFblBmTargetType type;
}tFblBmHdrTargetDependency;

typedef struct
{
   tFblBmHdrTargetHandle target;
   tFblBmHdrTargetDependency const * dependencies;
   vuint32 dependenciesSize;
}tFblBmHdrTargetListEntry;
# 63 "../../../BSW/FblBm/bm_types.h" 2
# 73 "../../../BSW/FblBm/bm_types.h"
# 1 "../../../BSW/FblBm/bm_shared.h" 1
# 234 "../../../BSW/FblBm/bm_shared.h"
# 1 "Include/MemMap.h" 1
# 3096 "Include/MemMap.h"
#pragma section ".MagicFlagSection" awB
# 235 "../../../BSW/FblBm/bm_shared.h" 2
 extern volatile vuint8 fblBmMagicFlag[8u];
# 246 "../../../BSW/FblBm/bm_shared.h"
# 1 "Include/MemMap.h" 1
# 3103 "Include/MemMap.h"
#pragma section
# 247 "../../../BSW/FblBm/bm_shared.h" 2
# 74 "../../../BSW/FblBm/bm_types.h" 2
# 1 "../../../BSW/FblBm/bm_types_header.h" 1
# 110 "../../../BSW/FblBm/bm_types_header.h"
typedef void (*tFblStrtFct)(void);







typedef void (*tApplStrtFct)(void);



typedef struct
{
   uint32 magic;
   uint16 majorVersion;
   uint16 minorVersion;
   uint32 fblHeaderAddress;
   tFblStrtFct pFblStartFct;
   tApplStrtFct pApplStartFct;
   uint32 checksum;
   uint32 end_magic;
} tFblBmHeader;
# 75 "../../../BSW/FblBm/bm_types.h" 2
# 91 "../../../BSW/FblBm/bm_types.h"
typedef struct
{
   tBlockDescriptor logicalBlock;
   tFblBmHdrHeader bmHeader;
} tFblBmBlockInfo;


typedef enum
{
   FBLBM_ERROR_NO_ERROR = 0u,
   FBLBM_ERROR_HEADER_READ_FAILED,
   FBLBM_ERROR_HEADER_MAGIC_FAILED,
   FBLBM_ERROR_HEADER_VERSION_FAILED,
   FBLBM_ERROR_HEADER_LENGTH_FAILED,
   FBLBM_ERROR_VALIDITY_FAILED,
   FBLBM_ERROR_FBL_BMHEADER_INCORRECT,
   FBLBM_ERROR_FBL_VERIFICATION_FAILED,
   FBLBM_ERROR_FBL_FBLHEADER_FAILED,
   FBLBM_ERROR_KEY_NOT_AVAILABLE,
   FBLBM_ERROR_UPDATER_SEARCH_INIT_FAILED,
   FBLBM_ERROR_UPDATER_SEARCH_NEXT_FINISHED,
   FBLBM_ERROR_UPDATER_HEADER_ADDRESS,
   FBLBM_ERROR_UPDATER_HEADER_READ_ERROR,
   FBLBM_ERROR_UPDATER_HEADER_CONSISTENCY,
   FBLBM_ERROR_UPDATER_HEADER_TYPE,
   FBLBM_ERROR_UPDATER_BLOCK_VALIDITY,
   FBLBM_ERROR_UPDATER_HEADER_CMAC_VERIFY,
   FBLBM_ERROR_UPDATER_VERIFY,
   FBLBM_ERROR_LBT_POINTER_NULL,
   FBLBM_ERROR_LBT_TOO_LARGE,
   FBLBM_ERROR_LBT_SIZE,
   FBLBM_ERROR_LBT_VERIFY,
   FBLBM_ERROR_REPROG_LBT_DESCR,
   FBLBM_ERROR_REPROG_LBT_INVALID,
   FBLBM_ERROR_REPROG_LBT_BMHEADER_INCORRECT,
   FBLBM_ERROR_REPROG_LBT_VERIFY_HEADER,
   FBLBM_ERROR_REPROG_LBT_VERIFY_SEGMENTS,
   FBLBM_ERROR_REPROG_LBT_MAGIC_FLAG,
   FBLBM_ERROR_REPROG_LBT_BLOCK_COUNT,
   FBLBM_ERROR_TARGET_LIST_INIT,
   FBLBM_ERROR_TARGET_INVALID,
   FBLBM_ERROR_TARGET_NO_VALID_HEADER,
   FBLBM_ERROR_TARGET_VERIFICATION_FAILED,
   FBLBM_ERROR_TARGET_INVALID_ADDRESS,
   FBLBM_ERROR_TARGET_DEP_MANDATORY_MISSING,
   FBLBM_ERROR_TARGET_DEP_NO_VALID_HEADER,
   FBLBM_ERROR_TARGET_DEP_VERIFY_FAILED,
   FBLBM_ERROR_END_OF_MAIN_REACHED,
   FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL,
   FBLBM_ERROR_AP_CHECK_MAC_BUF_LENGTH,
   FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL_LENGTH
} tFblBmError;

typedef enum
{
   FBLBM_KEY_IS_NOT_AVAILABLE,
   FBLBM_KEY_IS_AVAILABLE
} tFblBmKeyEmptyResult;

typedef enum
{
   FBLBM_MAC_IS_NOT_AVAILABLE,
   FBLBM_MAC_IS_AVAILABLE
} tFblBmMacEmptyResult;
# 49 "../../../BSW/Fbl/fbl_main_types.h" 2
# 75 "../../../BSW/Fbl/fbl_main_types.h"
typedef void const * tFblCommonDataPtr;



typedef tLogicalBlockTable const * tFblHeaderLogicalBlockTablePtr;

typedef tFblBmHdrHeader const * tFblHeaderBmHeaderPtr;


typedef struct
{
   vuint32 magicFlag;
   tFblHeaderLogicalBlockTablePtr pLogicalBlockTable;
   tFblLength logicalBlockTableSize;

   tFblCommonDataPtr pFblCommonData;

   tFblAddress fblStartAddress;
   tFblLength fblLength;
   tFblHeaderBmHeaderPtr bmHeader;
} tFblHeader;
# 49 "../../../BSW/Fbl/fbl_main.h" 2
# 132 "../../../BSW/Fbl/fbl_main.h"
# 1 "Include/MemMap.h" 1
# 133 "../../../BSW/Fbl/fbl_main.h" 2

 extern tFblStateBitmap fblMainStates[((8u - 1u) / 32u) + 1u];


# 1 "Include/MemMap.h" 1
# 138 "../../../BSW/Fbl/fbl_main.h" 2


# 1 "Include/MemMap.h" 1
# 3662 "Include/MemMap.h"
#pragma section ".FblHeaderSection" a
# 141 "../../../BSW/Fbl/fbl_main.h" 2
 extern tFblHeader const FblHeader;

# 1 "Include/MemMap.h" 1
# 3669 "Include/MemMap.h"
#pragma section
# 144 "../../../BSW/Fbl/fbl_main.h" 2






# 1 "Include/MemMap.h" 1
# 151 "../../../BSW/Fbl/fbl_main.h" 2


void FblMain( void );

void FblMainInternal( void );


# 1 "Include/MemMap.h" 1
# 159 "../../../BSW/Fbl/fbl_main.h" 2
# 201 "Include/fbl_inc.h" 2


# 1 "../../../BSW/FblBm/bm_main.h" 1
# 74 "../../../BSW/FblBm/bm_main.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
# 75 "../../../BSW/FblBm/bm_main.h" 2
# 84 "../../../BSW/FblBm/bm_main.h"
# 1 "../../../BSW/FblBmHdr/bm_hdr.h" 1
# 58 "../../../BSW/FblBmHdr/bm_hdr.h"
# 1 "Include/MemMap.h" 1
# 59 "../../../BSW/FblBmHdr/bm_hdr.h" 2

tFblResult FblBmHdrCheckConsistency( const tFblBmHdrHeader * pBmHeader );
tFblBmHdrCheckBmHeaderResult FblBmHdrGetBmHeader(tFblBmHdrTargetHandle targetHandle, tFblAddress bmHeaderAddress,
   tFblBmHdrHeader * bmHeader);






# 1 "Include/MemMap.h" 1
# 70 "../../../BSW/FblBmHdr/bm_hdr.h" 2
# 85 "../../../BSW/FblBm/bm_main.h" 2
# 140 "../../../BSW/FblBm/bm_main.h"
# 1 "Include/MemMap.h" 1
# 3052 "Include/MemMap.h"
#pragma section ".BmHeaderSection" a
# 141 "../../../BSW/FblBm/bm_main.h" 2
 extern tFblBmHeader const FblBmHeader;

# 1 "Include/MemMap.h" 1
# 3059 "Include/MemMap.h"
#pragma section
# 144 "../../../BSW/FblBm/bm_main.h" 2






# 1 "Include/MemMap.h" 1
# 151 "../../../BSW/FblBm/bm_main.h" 2
# 164 "../../../BSW/FblBm/bm_main.h"
# 1 "Include/MemMap.h" 1
# 165 "../../../BSW/FblBm/bm_main.h" 2



# 1 "Include/MemMap.h" 1
# 169 "../../../BSW/FblBm/bm_main.h" 2




void FblStart( void );


# 1 "Include/MemMap.h" 1
# 177 "../../../BSW/FblBm/bm_main.h" 2




# 1 "Include/MemMap.h" 1
# 182 "../../../BSW/FblBm/bm_main.h" 2



void ApplStart( void );


# 1 "Include/MemMap.h" 1
# 189 "../../../BSW/FblBm/bm_main.h" 2
# 204 "Include/fbl_inc.h" 2
# 67 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
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
# 68 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
# 1 "../../../BSW/PduR/PduR.h" 1
# 254 "../../../BSW/PduR/PduR.h"
# 1 "GenData/PduR_Types.h" 1
# 66 "GenData/PduR_Types.h"
typedef PduInfoType * PduInfoTypeApplPtr;

typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint8 PduR_Lock_SpinLockCounterArrayType[1];
# 255 "../../../BSW/PduR/PduR.h" 2
# 1 "GenData/PduR_Cfg.h" 1
# 54 "GenData/PduR_Cfg.h"
# 1 "GenData/PduR_Types.h" 1
# 55 "GenData/PduR_Cfg.h" 2
# 256 "../../../BSW/PduR/PduR.h" 2



# 1 "GenData/PduR_Lcfg.h" 1
# 56 "GenData/PduR_Lcfg.h"
# 1 "GenData/PduR_Cfg.h" 1
# 57 "GenData/PduR_Lcfg.h" 2
# 1 "Include/Os.h" 1
# 58 "GenData/PduR_Lcfg.h" 2
# 1 "GenData/PduR_PBcfg.h" 1
# 59 "GenData/PduR_Lcfg.h" 2





# 1 "GenData/Dcm_Cbk.h" 1
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
# 260 "../../../BSW/PduR/PduR.h" 2
# 513 "../../../BSW/PduR/PduR.h"
# 1 "GenData/PduR_MemMap.h" 1
# 473 "GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 514 "../../../BSW/PduR/PduR.h" 2
# 530 "../../../BSW/PduR/PduR.h"
uint32 PduR_GetConfigurationId(void);
# 547 "../../../BSW/PduR/PduR.h"
void PduR_PreInit(const PduR_PBConfigType * ConfigPtr);
# 565 "../../../BSW/PduR/PduR.h"
void PduR_Init(const PduR_PBConfigType * ConfigPtr);
# 578 "../../../BSW/PduR/PduR.h"
void PduR_InitMemory(void);
# 626 "../../../BSW/PduR/PduR.h"
Std_ReturnType PduR_UpTransmit(PduIdType id, const PduInfoType * info);
# 734 "../../../BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpStartOfReception(PduIdType id, PduInfoType * info, PduLengthType TpSduLength,
                                                             PduLengthType * bufferSizePtr);
# 773 "../../../BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpCopyRxData(PduIdType id, PduInfoType * info, PduLengthType * bufferSizePtr);
# 800 "../../../BSW/PduR/PduR.h"
void PduR_LoTpRxIndication(PduIdType id, Std_ReturnType result);
# 841 "../../../BSW/PduR/PduR.h"
BufReq_ReturnType PduR_LoTpCopyTxData(PduIdType id, PduInfoType * info, RetryInfoType * retry,
                                                       PduLengthType * availableDataPtr);
# 869 "../../../BSW/PduR/PduR.h"
void PduR_LoTpTxConfirmation(PduIdType id, Std_ReturnType result);
# 917 "../../../BSW/PduR/PduR.h"
Std_ReturnType PduR_ChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);
# 1033 "../../../BSW/PduR/PduR.h"
Std_ReturnType PduR_Rm_GetSrcDestPdu(PduR_RmGDestRomIterType rmGDestRomIdx, PduR_RmDestRomIterType * rmDestRomIdx);
# 1106 "../../../BSW/PduR/PduR.h"
# 1 "GenData/PduR_MemMap.h" 1
# 489 "GenData/PduR_MemMap.h"
#pragma section
# 1107 "../../../BSW/PduR/PduR.h" 2
# 69 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2
# 1 "../../../BSW/SecMod/Sec.h" 1
# 70 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c" 2





extern void FblMain(void);
# 84 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
void EcuM_Init(void)
{

  CanIf_InitMemory();

  CanTp_InitMemory();

  Can_InitMemory();

  CryIf_InitMemory();

  Crypto_30_LibCv_InitMemory();

  Csm_InitMemory();

  FblCw_InitMemory();

  Det_InitMemory();

  PduR_InitMemory();

  Det_Init(((void *)0));

  PduR_PreInit(((void *)0));

  FblMain();
}

void EcuM_StartupTwo(void)
{

  Can_Init(((void *)0));

  Crypto_30_LibCv_Init();

  CanIf_Init(((void *)0));

  CryIf_Init();

  PduR_Init(((void *)0));

  CanTp_Init(((void *)0));

  Csm_Init();

  SecM_Init();

  WrapNv_Init();

  FblCw_Init(((void *)0));
}

void EcuM_Shutdown(void)
{
}

void EcuM_BswErrorHook(uint16 moduleId, uint8 errorId)
{



}

void EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource)
{



}

void EcuM_GeneratorCompatibilityError(uint16 moduleId, uint8 instanceId)
{



}

void EcuM_SetWakeupEvent(EcuM_WakeupSourceType wakeupSource)
{



}

void EcuM_ValidationWakeupEvent(EcuM_WakeupSourceType wakeupSource)
{



}
