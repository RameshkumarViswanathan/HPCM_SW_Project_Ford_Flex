# 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoBm\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
# 49 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
# 1 "Include/BrsHw.h" 1
# 126 "Include/BrsHw.h"
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
# 59 "GenData/vBrsCfg.h" 2
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
# 130 "Include/BrsHw.h" 2


# 1 "Include/BrsHwStartup_TC2xx_TC3xx.h" 1
# 133 "Include/BrsHw.h" 2

# 1 "Include/BrsMain.h" 1
# 207 "Include/BrsMain.h"
# 1 "../../../BSW/_Common/Compiler.h" 1
# 208 "Include/BrsMain.h" 2




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






# 1 "Include/Brs_MemMap.h" 1
# 64 "Include/Brs_MemMap.h"
#pragma section ".text.brsMainStartup" ax
# 558 "Include/BrsMain.h" 2
# 569 "Include/BrsMain.h"
void BrsMainExceptionStartup(void);

# 1 "Include/Brs_MemMap.h" 1
# 74 "Include/Brs_MemMap.h"
#pragma section
# 572 "Include/BrsMain.h" 2
# 589 "Include/BrsMain.h"
brsMain_ResetReasonType BrsMainGetResetReason(void);

int main(void);
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
# 339 "Include/BrsHw.h"
static uint32 * BrsHw_GetAddrWDTCON0 (sint32 nr, uint32 memoryType) __attribute__((always_inline));
__inline__ static uint32 * BrsHw_GetAddrWDTCON0 (sint32 nr, uint32 memoryType)
{
  if (nr == -1)
  {
    if (memoryType == 2)
    {
      return (uint32*)(kBrsWdtCon0Addresses_RAM[7].WdtCon0Address);
    }
    else
    {
      return (uint32*)(kBrsWdtCon0Addresses_ROM[7].WdtCon0Address);
    }
  }
  else
  {
    if (memoryType == 2)
    {
      return (uint32*)(kBrsWdtCon0Addresses_RAM[nr].WdtCon0Address);
    }
    else
    {
      return (uint32*)(kBrsWdtCon0Addresses_ROM[nr].WdtCon0Address);
    }
  }
}

static uint32 * BrsHw_GetAddrWDTCON1 (sint32 nr, uint32 memoryType) __attribute__((always_inline));
__inline__ static uint32 * BrsHw_GetAddrWDTCON1 (sint32 nr, uint32 memoryType)
{
  if (nr == -1)
  {
    if (memoryType == 2)
    {
      return (uint32*)(kBrsWdtCon0Addresses_RAM[7].WdtCon1Address);
    }
    else
    {
      return (uint32*)(kBrsWdtCon0Addresses_ROM[7].WdtCon1Address);
    }
  }
  else
  {
    if (memoryType == 2)
    {
    return (uint32*)(kBrsWdtCon0Addresses_RAM[nr].WdtCon1Address);
    }
    else
    {
    return (uint32*)(kBrsWdtCon0Addresses_ROM[nr].WdtCon1Address);
    }
  }
}






static void BrsHwUnlockInitInline (sint32 coreID, uint32 memoryType) __attribute__((always_inline));
__inline__ static void BrsHwUnlockInitInline (sint32 coreID, uint32 memoryType)
{
  volatile uint32 wdtcon0value;
  uint32 *WDTCON0;
  WDTCON0 = BrsHw_GetAddrWDTCON0(coreID, memoryType);




  wdtcon0value = *WDTCON0;
  wdtcon0value &= 0xFFFFFF01;
  wdtcon0value |= 0xF0;
  wdtcon0value |= 0x01;

  *WDTCON0 = wdtcon0value;




  wdtcon0value &= 0xFFFFFFF0;
  wdtcon0value |= 0x02;
  _isync();
  *WDTCON0 = wdtcon0value;
  wdtcon0value = *WDTCON0;
  _isync();
  _dsync();
}







static void BrsHwLockInitInline (sint32 coreID, uint32 memoryType) __attribute__((always_inline));
__inline__ static void BrsHwLockInitInline (sint32 coreID, uint32 memoryType)
{
  volatile uint32 wdtcon0value;
  uint32 *WDTCON0;
  WDTCON0 = BrsHw_GetAddrWDTCON0(coreID, memoryType);




  wdtcon0value = *WDTCON0;
  wdtcon0value &= 0xFFFFFF01;
  wdtcon0value |= 0xF0;
  wdtcon0value |= 0x01;

  *WDTCON0 = wdtcon0value;




  wdtcon0value &= 0xFFFFFFF0;
  wdtcon0value |= 0x03;
  _isync();
  *WDTCON0 = wdtcon0value;
  wdtcon0value = *WDTCON0;
  _isync();
  _dsync();
}
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




# 1 "Include/Brs_MemMap.h" 1
# 64 "Include/Brs_MemMap.h"
#pragma section ".text.brsMainStartup" ax
# 610 "Include/BrsHw.h" 2
# 623 "Include/BrsHw.h"
brsMain_ResetReasonType BrsHwGetResetReasonStartup(void);

# 1 "Include/Brs_MemMap.h" 1
# 74 "Include/Brs_MemMap.h"
#pragma section
# 626 "Include/BrsHw.h" 2
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
# 50 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c" 2




# 1 "GenData/vBrs_Lcfg.h" 1
# 59 "GenData/vBrs_Lcfg.h"
# 1 "Include/BrsMain_Types.h" 1
# 60 "GenData/vBrs_Lcfg.h" 2






extern const brsMain_CoreType BrsMain_CoreConfig[1u];
extern const uint32 BrsMain_CoreConfig_Size;
# 55 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c" 2
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
extern const vLinkGen_RamMemArea vLinkGen_Init_One_Groups[6u];
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
# 56 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c" 2

# 1 "Include/BrsHwStartup_TC2xx_TC3xx.h" 1
# 58 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c" 2
# 78 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
typedef uint32 BRS_CSA_Element[16];

extern uint32 _Brs_ExcVect_START;

const uint32 Brs_SizeOfbrsMain_CoreType = sizeof(brsMain_CoreType);
# 94 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
__asm("  .section .""brsStartup"", \"ax\"");
__asm("  .balign ""32""");

__asm("  .global ""brsStartupEntry""");
__asm("""brsStartupEntry"":");
__asm("  mfcr     %d8, lo:65052"); __asm("  movh.a   %a14, hi:BrsMain_CoreConfig"); __asm("  lea      %a14,[%a14]lo:BrsMain_CoreConfig"); __asm("brsStartupEntryloop:"); __asm("  ld.w	 %d9,[%a14]8"); __asm("  ld.w	 %d10,[%a14]4"); __asm("  jne      %d8, %d10, brsGetNextCoreConfig"); __asm("  mov.a    %a10, %d9"); __asm("  j        brsStartupEntry_C"); __asm("brsGetNextCoreConfig:"); __asm("  movh.a   %a12,hi:Brs_SizeOfbrsMain_CoreType"); __asm("  ld.a     %a12,[%a12]lo:Brs_SizeOfbrsMain_CoreType"); __asm("  add.a    %a14, %a12"); __asm("  j        brsStartupEntryloop"); __asm("  .previous");


void brsStartupEntry_C(void)
{
  uint32 CurrentCoreId = _mfcr(0xFE1C);
  uint32 AuxVariable = 0;
# 163 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
  uint32 CurrentCoreConfig = 0;
  uint32 i;
  for (i=0; i<BrsMain_CoreConfig_Size; i++)
  {
    if (BrsMain_CoreConfig[i].PhysicalCoreId == CurrentCoreId)
    {
      CurrentCoreConfig = i;
      i=BrsMain_CoreConfig_Size+1;
    }
  }


  if (i==BrsMain_CoreConfig_Size)
    BrsMainExceptionStartup();




  _dsync(); _mtcr(0xFE04,0x00000B80UL); _isync();




  AuxVariable = _mfcr(0xFE00);
  AuxVariable &= 0xfff00000UL;
  _dsync(); _mtcr(0xFE00,AuxVariable); _isync();





  BRS_CSA_Element* CSA;
  uint32 NumberOfCSA;
  uint32 pcxi_val = 0;
  uint32 CSAReserve = 20;
  uint32 seg_nr, seg_idx;

  BRS_CSA_Element* CSAAddress = (BRS_CSA_Element*)((uint32)BrsMain_CoreConfig[CurrentCoreConfig].StartupStackEndLabel - (uint32)BrsMain_CoreConfig[CurrentCoreConfig].StartupStackSize);
  uint32 CSA_Numbers = ((uint32)BrsMain_CoreConfig[CurrentCoreConfig].StartupStackEndLabel - 4096ul - (uint32)CSAAddress) / 64;

  if (CSA_Numbers<512)
  {
# 215 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
    while (1);
  }

  if(CSAAddress != 0)
  {
    CSA = CSAAddress;
    for (NumberOfCSA=0; NumberOfCSA < CSA_Numbers; NumberOfCSA++)
    {
      *CSA[0] = pcxi_val;


      seg_nr = (((unsigned int)CSA >> 28) & 0xf) << 16;
      seg_idx = (((unsigned int)CSA >> 6) & 0xffff);
      pcxi_val = seg_nr | seg_idx;
      if (NumberOfCSA == CSAReserve)
      {
        _dsync(); _mtcr(0xFE3C,pcxi_val); _isync();
      }
      CSA++;
    }
    _dsync(); _mtcr(0xFE38,pcxi_val); _isync();
  }


  BrsHw_ExceptionTable_Init((Brs_AddressOfConstType)&_Brs_ExcVect_START, (Brs_AddressOfConstType)0xFFFFFFFF);






  Brs_PreMainStartup();







  BrsMainExceptionStartup();
}
