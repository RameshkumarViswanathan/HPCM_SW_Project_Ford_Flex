# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
# 47 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
# 1 "Include/BrsMain.h" 1
# 207 "Include/BrsMain.h"
# 1 "../../../BSW/_Common/Compiler.h" 1
# 45 "../../../BSW/_Common/Compiler.h"
# 1 "Include/Compiler_Cfg.h" 1
# 46 "../../../BSW/_Common/Compiler.h" 2
# 208 "Include/BrsMain.h" 2

# 1 "GenData/vBrsCfg.h" 1
# 58 "GenData/vBrsCfg.h"
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
# 59 "GenData/vBrsCfg.h" 2
# 210 "Include/BrsMain.h" 2


# 1 "Include/BrsMain_Types.h" 1
# 45 "Include/BrsMain_Types.h"
typedef enum
{
  NON_ASR = 0,
  ASR = 4096
}brsCoreAsrType;


typedef const void * Brs_AddressOfConstType;




typedef struct
{

  uint32 LogicalCoreId;


  uint32 PhysicalCoreId;


  Brs_AddressOfConstType StartupStackEndLabel;


  uint32 StartupStackSize;


  brsCoreAsrType CoreIsAsr;


  Brs_AddressOfConstType ExcVecLabel;


  Brs_AddressOfConstType IntVecLabel;
}brsMain_CoreType;




typedef enum
{
  BRSMAIN_RESET_SW,
  BRSMAIN_RESET_OTHER
}brsMain_ResetReasonType;
# 213 "Include/BrsMain.h" 2

# 1 "Include/BrsHw.h" 1
# 126 "Include/BrsHw.h"
# 1 "GenData/vBrsCfg.h" 1
# 127 "Include/BrsHw.h" 2


# 1 "Include/BrsHw_Ports.h" 1
# 37 "Include/BrsHw_Ports.h"
# 1 "GenData/fbl_cfg.h" 1
# 149 "GenData/fbl_cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/fbl_cfg.h" 2
# 38 "Include/BrsHw_Ports.h" 2




typedef enum
{
  BRSHW_PORT_PORTGROUP_0,
  BRSHW_PORT_PORTGROUP_1,
  BRSHW_PORT_PORTGROUP_2,
  BRSHW_PORT_PORTGROUP_3,
  BRSHW_PORT_PORTGROUP_4,
  BRSHW_PORT_PORTGROUP_5,
  BRSHW_PORT_PORTGROUP_6,
  BRSHW_PORT_PORTGROUP_7,
  BRSHW_PORT_PORTGROUP_8,
  BRSHW_PORT_PORTGROUP_9,
  BRSHW_PORT_PORTGROUP_10,
  BRSHW_PORT_PORTGROUP_11,
  BRSHW_PORT_PORTGROUP_12,
  BRSHW_PORT_PORTGROUP_13,
  BRSHW_PORT_PORTGROUP_14,
  BRSHW_PORT_PORTGROUP_15,
  BRSHW_PORT_PORTGROUP_16,
  BRSHW_PORT_PORTGROUP_17,
  BRSHW_PORT_PORTGROUP_18,
  BRSHW_PORT_PORTGROUP_19,
  BRSHW_PORT_PORTGROUP_20,
  BRSHW_PORT_PORTGROUP_21,
  BRSHW_PORT_PORTGROUP_22,
  BRSHW_PORT_PORTGROUP_23,
  BRSHW_PORT_PORTGROUP_24,
  BRSHW_PORT_PORTGROUP_25,
  BRSHW_PORT_PORTGROUP_26,
  BRSHW_PORT_PORTGROUP_27,
  BRSHW_PORT_PORTGROUP_28,
  BRSHW_PORT_PORTGROUP_29,
  BRSHW_PORT_PORTGROUP_30,
  BRSHW_PORT_PORTGROUP_31,
  BRSHW_PORT_PORTGROUP_32,
  BRSHW_PORT_PORTGROUP_33,
  BRSHW_PORT_PORTGROUP_34,
  BRSHW_PORT_PORTGROUP_35,
  BRSHW_PORT_PORTGROUP_36,
  BRSHW_PORT_PORTGROUP_37,
  BRSHW_PORT_PORTGROUP_38,
  BRSHW_PORT_PORTGROUP_39,
  BRSHW_PORT_PORTGROUP_40,
  BRSHW_PORT_PORTGROUP_41
}brsHw_Port_PortGroupType;

typedef enum
{
  BRSHW_PORT_PORTNUMBER_0,
  BRSHW_PORT_PORTNUMBER_1,
  BRSHW_PORT_PORTNUMBER_2,
  BRSHW_PORT_PORTNUMBER_3,
  BRSHW_PORT_PORTNUMBER_4,
  BRSHW_PORT_PORTNUMBER_5,
  BRSHW_PORT_PORTNUMBER_6,
  BRSHW_PORT_PORTNUMBER_7,
  BRSHW_PORT_PORTNUMBER_8,
  BRSHW_PORT_PORTNUMBER_9,
  BRSHW_PORT_PORTNUMBER_10,
  BRSHW_PORT_PORTNUMBER_11,
  BRSHW_PORT_PORTNUMBER_12,
  BRSHW_PORT_PORTNUMBER_13,
  BRSHW_PORT_PORTNUMBER_14,
  BRSHW_PORT_PORTNUMBER_15,
  BRSHW_PORT_PORTNUMBER_16
}brsHw_Port_PortNumberType;

typedef enum
{
  BRSHW_PORT_ALT_0,
  BRSHW_PORT_ALT_1,
  BRSHW_PORT_ALT_2,
  BRSHW_PORT_ALT_3,
  BRSHW_PORT_ALT_4,
  BRSHW_PORT_ALT_5,
  BRSHW_PORT_ALT_6,
  BRSHW_PORT_ALT_7,
  BRSHW_PORT_ALT_8,
  BRSHW_PORT_ALT_9,
  BRSHW_PORT_ALT_10,
  BRSHW_PORT_ALT_11,
  BRSHW_PORT_ALT_12,
  BRSHW_PORT_ALT_13,
  BRSHW_PORT_ALT_14,
  BRSHW_PORT_ALT_15,
  BRSHW_PORT_ALT_16,
  BRSHW_PORT_ALT_17,
  BRSHW_PORT_ALT_18,
  BRSHW_PORT_ALT_19,
  BRSHW_PORT_ALT_20
}brsHw_Port_AlternativeType;

typedef struct
{
  brsHw_Port_PortGroupType portGroup;
  brsHw_Port_PortNumberType portNumber;
  brsHw_Port_AlternativeType portAlternative;
}brsHw_Port_PortType;







typedef enum
{
  PORT_STRONG_DRIVER_SHARP_EDGE,
  PORT_STRONG_DRIVER_MEDIUM_EDGE,
  PORT_MEDIUM_DRIVER,
  PORT_RGMII_DRIVER,
}brsHw_Port_Driver_Setting;

typedef struct
{
  brsHw_Port_Driver_Setting PortDriverSetting;
}brsHw_Port_ConfType;
# 307 "Include/BrsHw_Ports.h"
extern const brsHw_Port_PortType BRSHW_PORT_CAN1_TX;
extern const brsHw_Port_PortType BRSHW_PORT_CAN1_RX;
# 130 "Include/BrsHw.h" 2


# 1 "Include/BrsHwStartup_TC2xx_TC3xx.h" 1
# 133 "Include/BrsHw.h" 2

# 1 "Include/BrsMain.h" 1
# 135 "Include/BrsHw.h" 2
# 201 "Include/BrsHw.h"
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
# 202 "Include/BrsHw.h" 2
# 311 "Include/BrsHw.h"
extern uint8 const kBrsHwMainVersion;
extern uint8 const kBrsHwSubVersion;
extern uint8 const kBrsHwBugfixVersion;

struct Brs_WdtRegTypes_Tag
{
  uint32 WdtCon0Address;
  uint32 WdtCon1Address;
};

typedef struct Brs_WdtRegTypes_Tag Brs_WdtRegTypes;





extern const Brs_WdtRegTypes kBrsWdtCon0Addresses_RAM[8];
extern const Brs_WdtRegTypes kBrsWdtCon0Addresses_ROM[8];
# 473 "Include/BrsHw.h"
void BrsHwWatchdogInitPowerOn(void);
# 485 "Include/BrsHw.h"
void BrsHwPllInitPowerOn(void);
# 499 "Include/BrsHw.h"
void BrsHwInitPortInput(brsHw_Port_PortType);
# 511 "Include/BrsHw.h"
void BrsHwInitPortOutput(brsHw_Port_PortType);
# 523 "Include/BrsHw.h"
void BrsHwInitPortInputOutput(brsHw_Port_PortType);



# 1 "Include/Brs_MemMap.h" 1
# 161 "Include/Brs_MemMap.h"
#pragma section ".text.RamCodeSection" ax
# 528 "Include/BrsHw.h" 2
# 543 "Include/BrsHw.h"
void BrsHwPort_SetLevel(brsHw_Port_PortType, uint8);
# 557 "Include/BrsHw.h"
uint8 BrsHwPort_GetLevel(brsHw_Port_PortType);


# 1 "Include/Brs_MemMap.h" 1
# 171 "Include/Brs_MemMap.h"
#pragma section
# 561 "Include/BrsHw.h" 2
# 571 "Include/BrsHw.h"
void BrsHwPortInitPowerOn(void);
# 582 "Include/BrsHw.h"
void BrsHwDisableInterruptAtPowerOn(void);
# 594 "Include/BrsHw.h"
void BrsHw_ExceptionTable_Init(Brs_AddressOfConstType, Brs_AddressOfConstType);
# 604 "Include/BrsHw.h"
void BrsHwSoftwareResetECU(void);
# 645 "Include/BrsHw.h"
void BrsHwTime100NOP(void);
# 677 "Include/BrsHw.h"
uint32 BrsHw_GetCore(void);
# 694 "Include/BrsHw.h"
void BrsHw_EnableInterrupt(uint32, uint8);
# 705 "Include/BrsHw.h"
void BrsHw_DisableInterrupt(uint32);
# 717 "Include/BrsHw.h"
void BrsHw_TriggerSoftwareInterrupt(uint32);
# 730 "Include/BrsHw.h"
void BrsHwDisableEccErrorReporting(void);
# 215 "Include/BrsMain.h" 2
# 226 "Include/BrsMain.h"
# 1 "Include/EcuM.h" 1
# 57 "Include/EcuM.h"
# 1 "Include/EcuM_Cbk.h" 1
# 63 "Include/EcuM_Cbk.h"
# 1 "Include/EcuM_Generated_Types.h" 1
# 69 "Include/EcuM_Generated_Types.h"
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
# 227 "Include/BrsMain.h" 2
# 336 "Include/BrsMain.h"
# 1 "Include/Brs_MemMap.h" 1
# 64 "Include/Brs_MemMap.h"
#pragma section ".text.brsMainStartup" ax
# 337 "Include/BrsMain.h" 2
# 348 "Include/BrsMain.h"
void Brs_PreMainStartup(void);

# 1 "Include/Brs_MemMap.h" 1
# 74 "Include/Brs_MemMap.h"
#pragma section
# 351 "Include/BrsMain.h" 2
# 367 "Include/BrsMain.h"
void Brs_ApplicationEntry(void);
# 390 "Include/BrsMain.h"
void BrsMainInit(void);
# 401 "Include/BrsMain.h"
void BrsMain_MemoryInit_StageZero_Hook(uint32);
# 412 "Include/BrsMain.h"
void BrsMain_MemoryInit_StageHardReset_Hook(uint32);
# 423 "Include/BrsMain.h"
void BrsMain_MemoryInit_StageOne_Hook(uint32);
# 434 "Include/BrsMain.h"
void BrsMain_MemoryInit_StageTwo_Hook(uint32);
# 445 "Include/BrsMain.h"
void BrsMain_MemoryInit_StageThree_Hook(uint32);
# 456 "Include/BrsMain.h"
void BrsMain_PreMainHook(uint32);
# 468 "Include/BrsMain.h"
void BrsMain_SoftwareResetECU_Hook(void);
# 545 "Include/BrsMain.h"
# 1 "Include/Brs_MemMap.h" 1
# 161 "Include/Brs_MemMap.h"
#pragma section ".text.RamCodeSection" ax
# 546 "Include/BrsMain.h" 2

void BrsMainExceptionHandler(uint8 ErrorCode, uint8 ModuleCode, uint16 LineNumber);


# 1 "Include/Brs_MemMap.h" 1
# 171 "Include/Brs_MemMap.h"
#pragma section
# 551 "Include/BrsMain.h" 2
# 589 "Include/BrsMain.h"
brsMain_ResetReasonType BrsMainGetResetReason(void);

int main(void);
# 48 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c" 2

# 1 "GenData/vLinkGen_Lcfg.h" 1
# 62 "GenData/vLinkGen_Lcfg.h"
# 1 "GenData/vLinkGen_Cfg.h" 1
# 61 "GenData/vLinkGen_Cfg.h"
# 1 "GenData/vBrsCfg.h" 1
# 62 "GenData/vLinkGen_Cfg.h" 2
# 63 "GenData/vLinkGen_Lcfg.h" 2
# 77 "GenData/vLinkGen_Lcfg.h"
typedef struct
{

  uint32 Start;

  uint32 End;

  uint32 Core;

  uint32 Alignment;
} vLinkGen_MemArea;


typedef struct
{

  uint32 Num;

  const vLinkGen_MemArea *Areas;
} vLinkGen_MemAreaSet;


typedef struct
{

  uint32 Start;

  uint32 End;

  uint32 Romstart;

  uint32 Romend;

  uint32 Core;

  uint32 Alignment;
} vLinkGen_RamMemArea;


typedef struct
{

  uint32 Num;

  const vLinkGen_RamMemArea *Areas;
} vLinkGen_RamMemAreaSet;






extern uint8 _Brs_ExcVectRam_LIMIT[];
extern uint8 _Brs_ExcVectRam_ROM_LIMIT[];
extern uint8 _Brs_ExcVectRam_ROM_START[];
extern uint8 _Brs_ExcVectRam_START[];
extern uint8 _EepDummyVarGroup_LIMIT[];
extern uint8 _EepDummyVarGroup_START[];
extern uint8 _MagicFlagGroup_LIMIT[];
extern uint8 _MagicFlagGroup_START[];
extern uint8 _RamCodeSection_LIMIT[];
extern uint8 _RamCodeSection_ROM_LIMIT[];
extern uint8 _RamCodeSection_ROM_START[];
extern uint8 _RamCodeSection_START[];
extern uint8 _RamConstSection_LIMIT[];
extern uint8 _RamConstSection_ROM_LIMIT[];
extern uint8 _RamConstSection_ROM_START[];
extern uint8 _RamConstSection_START[];
extern uint8 _bss_LIMIT[];
extern uint8 _bss_START[];
extern uint8 _data_LIMIT[];
extern uint8 _data_ROM_LIMIT[];
extern uint8 _data_ROM_START[];
extern uint8 _data_START[];
extern uint8 _sbss_LIMIT[];
extern uint8 _sbss_START[];
extern uint8 _sdata_LIMIT[];
extern uint8 _sdata_ROM_LIMIT[];
extern uint8 _sdata_ROM_START[];
extern uint8 _sdata_START[];
extern uint8 _zbss_LIMIT[];
extern uint8 _zbss_START[];
extern uint8 _zdata_LIMIT[];
extern uint8 _zdata_ROM_LIMIT[];
extern uint8 _zdata_ROM_START[];
extern uint8 _zdata_START[];


extern const vLinkGen_MemArea vLinkGen_ZeroInit_Early_Blocks[1u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_Early_Groups[1u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_HardReset_Blocks[1u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_HardReset_Groups[3u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_One_Blocks[2u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_One_Groups[4u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_Three_Groups[1u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_Two_Groups[1u];
extern const vLinkGen_MemArea vLinkGen_ZeroInit_Zero_Groups[1u];
extern const vLinkGen_RamMemArea vLinkGen_Init_HardReset_Groups[1u];
extern const vLinkGen_RamMemArea vLinkGen_Init_One_Groups[7u];
extern const vLinkGen_RamMemArea vLinkGen_Init_Three_Groups[1u];
extern const vLinkGen_RamMemArea vLinkGen_Init_Two_Groups[1u];
extern const vLinkGen_RamMemArea vLinkGen_Init_Zero_Groups[1u];


extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Early_BlocksSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Early_GroupsSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_HardReset_BlocksSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_HardReset_GroupsSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_One_BlocksSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_One_GroupsSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Three_GroupsSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Two_GroupsSet;
extern const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Zero_GroupsSet;
extern const vLinkGen_RamMemAreaSet vLinkGen_Init_HardReset_GroupsSet;
extern const vLinkGen_RamMemAreaSet vLinkGen_Init_One_GroupsSet;
extern const vLinkGen_RamMemAreaSet vLinkGen_Init_Three_GroupsSet;
extern const vLinkGen_RamMemAreaSet vLinkGen_Init_Two_GroupsSet;
extern const vLinkGen_RamMemAreaSet vLinkGen_Init_Zero_GroupsSet;
# 50 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c" 2
# 91 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
# 1 "Include/Brs_MemMap.h" 1
# 316 "Include/Brs_MemMap.h"
#pragma section ".bss.brsSharedVar" awB 8
# 92 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c" 2
volatile brsMain_ResetReasonType brsMain_ResetReason;

# 1 "Include/Brs_MemMap.h" 1
# 326 "Include/Brs_MemMap.h"
#pragma section
# 95 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c" 2
# 115 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
void Brs_MemoryZeroInit(const vLinkGen_MemAreaSet *, uint32, uint32);
void Brs_MemoryInit(const vLinkGen_RamMemAreaSet *, uint32);
# 172 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
#pragma section ".brsStartup" ax
void Brs_ApplicationEntry(void)
{
  uint32 coreID;





  coreID = BrsHw_GetCore();

  BrsMain_MemoryInit_StageZero_Hook(coreID);
# 195 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
  BrsMain_MemoryInit_StageHardReset_Hook(coreID);
# 206 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
  if (brsMain_ResetReason != BRSMAIN_RESET_SW)
  {

    Brs_MemoryZeroInit(&vLinkGen_ZeroInit_HardReset_GroupsSet, (0x0UL), coreID);
  }
# 221 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
  BrsMain_MemoryInit_StageOne_Hook(coreID);



  Brs_MemoryZeroInit(&vLinkGen_ZeroInit_One_BlocksSet, (0x0UL), coreID);




  Brs_MemoryZeroInit(&vLinkGen_ZeroInit_One_GroupsSet, (0x0UL), coreID);




  Brs_MemoryInit(&vLinkGen_Init_One_GroupsSet, coreID);


  BrsMain_MemoryInit_StageTwo_Hook(coreID);
# 250 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
  BrsMain_MemoryInit_StageThree_Hook(coreID);
# 262 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
  BrsMain_PreMainHook(coreID);

  main();

  BrsMainExceptionHandler(0x0C, 0x02, (uint16)(266));
}

#pragma section
# 283 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
void Brs_MemoryZeroInit(const vLinkGen_MemAreaSet *memAreaSet, uint32 InitPattern, uint32 coreId)
{
  uint32 i;

  volatile uint32 *memPtr;


  for (i=0; i<memAreaSet->Num; i++)
  {
    if ((memAreaSet->Areas[i].Core==coreId) && ((memAreaSet->Areas[i].End - memAreaSet->Areas[i].Start) > 0))
    {




      memPtr = (volatile uint32*)memAreaSet->Areas[i].Start;
      while ((uint32)memPtr < memAreaSet->Areas[i].End)
      {
        *memPtr = InitPattern;
        memPtr++;
      }

    }
  }
}
# 319 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMainStartup.c"
void Brs_MemoryInit(const vLinkGen_RamMemAreaSet *memAreasSet, uint32 coreId)
{
  volatile uint32 *memPtr;
  volatile uint32 *romPtr;
  uint32 i;

  for (i=0; i<memAreasSet->Num; i++)
  {
    if ((memAreasSet->Areas[i].Core==coreId) && ((memAreasSet->Areas[i].End - memAreasSet->Areas[i].Start) > 0))
    {
      if ((memAreasSet->Areas[i].End - memAreasSet->Areas[i].Start) != (memAreasSet->Areas[i].Romend - memAreasSet->Areas[i].Romstart))
      {

        BrsMainExceptionHandler(0x05, 0x04, (uint16)(332));
      }

      memPtr = (volatile uint32*)memAreasSet->Areas[i].Start;
      romPtr = (volatile uint32*)memAreasSet->Areas[i].Romstart;
      while ((uint32)memPtr < memAreasSet->Areas[i].End)
      {
        *memPtr = *romPtr;
        memPtr++;
        romPtr++;
      }
    }
  }
}