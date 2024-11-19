# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c"
# 55 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.h" 1
# 56 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.h"
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
# 57 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.h" 2
# 56 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_Cfg.h" 1
# 57 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h" 1
# 50 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Cfg.h" 1
# 54 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Types.h" 1
# 66 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Types.h"
typedef PduInfoType * PduInfoTypeApplPtr;

typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint8 PduR_Lock_SpinLockCounterArrayType[1];
# 55 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Cfg.h" 2
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h" 2
# 74 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_MemMap.h" 1
# 473 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 75 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h" 2
# 101 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h"
Std_ReturnType PduR_DcmTransmit(PduIdType id, const PduInfoType * info);
# 124 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h"
Std_ReturnType PduR_DcmChangeParameter(PduIdType id, TPParameterType parameter, uint16 value);
# 133 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_MemMap.h" 1
# 489 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_MemMap.h"
#pragma section
# 134 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/PduR_Dcm.h" 2
# 58 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/FblCw_PBcfg.c" 2
