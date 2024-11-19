# 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoBm\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
# 49 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
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
# 246 "Include/BrsHw_Ports.h"
const brsHw_Port_ConfType BRSHW_PORT_CONF_CAN = {PORT_STRONG_DRIVER_MEDIUM_EDGE};

const brsHw_Port_ConfType BRSHW_PORT_CONF_ETHERNET = {PORT_RGMII_DRIVER};

const brsHw_Port_ConfType BRSHW_PORT_CONF_SHARPEDGE = {PORT_STRONG_DRIVER_SHARP_EDGE};
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
# 50 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 91 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
uint8 const kBrsHwMainVersion = (uint8)(0x0301u >> 8);
uint8 const kBrsHwSubVersion = (uint8)(0x0301u & 0xFF);
uint8 const kBrsHwBugfixVersion = (uint8)(0x07u);
# 114 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
# 1 "Include/Brs_MemMap.h" 1
# 260 "Include/Brs_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 115 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 124 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
const Brs_WdtRegTypes kBrsWdtCon0Addresses_RAM[8] = {
  {0xF003624C, 0xF0036250}, {0xF0036258, 0xF003625C}, {0xF0036264, 0xF0036268}, {0xF0036270, 0xF0036274}, {0xF003627C, 0xF0036280}, {0, 0}, {0xF0036288, 0xF003628C}, {0xF00362A8, 0xF00362AC}
};




# 1 "Include/Brs_MemMap.h" 1
# 270 "Include/Brs_MemMap.h"
#pragma section
# 132 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 141 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
const Brs_WdtRegTypes kBrsWdtCon0Addresses_ROM[8] = {
  {0xF003624C, 0xF0036250}, {0xF0036258, 0xF003625C}, {0xF0036264, 0xF0036268}, {0xF0036270, 0xF0036274}, {0xF003627C, 0xF0036280}, {0, 0}, {0xF0036288, 0xF003628C}, {0xF00362A8, 0xF00362AC}
};
# 157 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
#pragma section ".BMHD0" 32
# 167 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
volatile const uint32 bmiField0[128] =
{
  0xB359000Eul, 0x80000000ul, 0xD97FAA13ul, 0x268055ECul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x00000000ul, 0x00000000ul, 0x00000000ul, 0x00000000ul,
  0x43211234ul, 0x00000000ul, 0x00000000ul, 0x00000000ul
};


#pragma section
# 448 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwWatchdogInitPowerOn(void)
{
  uint32 memoryType = 1;
  volatile uint32* WdtCon1 = BrsHw_GetAddrWDTCON1(_mfcr(0xFE1C), memoryType);


  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);
  *WdtCon1 |= 0x8;
  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);

  WdtCon1 = BrsHw_GetAddrWDTCON1(-1, memoryType);
  BrsHwUnlockInitInline(-1, memoryType);
  *WdtCon1 |= 0x8;
  BrsHwLockInitInline(-1, memoryType);
}
# 474 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwPllInitPowerOn(void)
{
  uint32 memoryType = 1;
# 670 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  uint32 ulIdx;
# 704 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);
  (*((volatile uint32 *)(0xF0001800))) = 0x0;
  (*((volatile uint32 *)(0xF0036000 + 0x130))) |= 0x0F0F0F0F;
  (*((volatile uint32 *)(0xF0036000 + 0x120))) |= 0x0F0F;
  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);

  BrsHwUnlockInitInline(-1, memoryType);
# 723 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  (*((volatile uint32 *)(0xF0036000 + 0x10))) = 0x00000000
                 | (0x3 << 3)
                 | (5 << 16);

  (*((volatile uint32 *)(0xF0036000 + 0x10))) |= (0x1 << 2);
  BrsHwLockInitInline(-1, memoryType);

  while(((*((volatile uint32 *)(0xF0036000 + 0x10))) & 0x00000102) != 0x00000102);

  BrsHwUnlockInitInline(-1, memoryType);



  (*((volatile uint32 *)(0xF0036000 + 0x18))) &= ~(0x3 << 30);
  (*((volatile uint32 *)(0xF0036000 + 0x18))) |= (0x1 << 30);
# 753 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  (*((volatile uint32 *)(0xF0036000 + 0x18))) = 0x00000000
                     | (0x1 << 30)
                     | (0x1 << 16)
                     | (0x1D << 9);


  (*((volatile uint32 *)(0xF0036000 + 0x1C))) = 0x00000005;
# 782 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  (*((volatile uint32 *)(0xF0036000 + 0x28))) = 0x00000000
                     | (0x1 << 16)
                     | (0x1F << 9)
                     | (0 << 0);

  BrsHwLockInitInline(-1, memoryType);

  for (ulIdx=0; ulIdx < 1000000; ulIdx++) __asm__ ("nop");

  BrsHwUnlockInitInline(-1, memoryType);
# 807 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  (*((volatile uint32 *)(0xF0036000 + 0x2C))) = 0x00000000
                     | (0x1 << 8)
                     | (0x1 << 0);



  (*((volatile uint32 *)(0xF0036000 + 0x18))) |= 0x00040000;

  BrsHwLockInitInline(-1, memoryType);


  while(((*((volatile uint32 *)(0xF0036000 + 0x14))) & 0x4) == 0);


  while(((*((volatile uint32 *)(0xF0036000 + 0x30))) & 0x80000000) != 0);

  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x30))) = 0x47230113;
  BrsHwLockInitInline(-1, memoryType);

  while(((*((volatile uint32 *)(0xF0036000 + 0x30))) & 0x80000000) != 0);
  while(((*((volatile uint32 *)(0xF0036000 + 0x34))) & 0x80000000) != 0);

  BrsHwUnlockInitInline(-1, memoryType);


  (*((volatile uint32 *)(0xF0036000 + 0x34))) = 0x21210012;
# 842 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  BrsHwLockInitInline(-1, memoryType);

  while(((*((volatile uint32 *)(0xF0036000 + 0x34))) & 0x80000000) != 0);
  while(((*((volatile uint32 *)(0xF0036000 + 0x40))) & 0x80000000) != 0);

  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x40))) = 0x02001201;
  BrsHwLockInitInline(-1, memoryType);

  while(((*((volatile uint32 *)(0xF0036000 + 0x40))) & 0x80000000) != 0);


  while(((*((volatile uint32 *)(0xF0036000 + 0x30))) & 0x80000000) != 0);

  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x30))) = 0x57230113;
  BrsHwLockInitInline(-1, memoryType);

  while(((*((volatile uint32 *)(0xF0036000 + 0x30))) & 0x80000000) != 0);



  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x1C))) = 0x00000003;
  while(((*((volatile uint32 *)(0xF0036000 + 0x14))) & 0x4) == 0);
  BrsHwLockInitInline(-1, memoryType);

  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x1C))) = 0x00000002;
  while(((*((volatile uint32 *)(0xF0036000 + 0x14))) & 0x4) == 0);
  BrsHwLockInitInline(-1, memoryType);

  BrsHwUnlockInitInline(-1, memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x1C))) = 0x00000001;
  while(((*((volatile uint32 *)(0xF0036000 + 0x14))) & 0x4) == 0);
  BrsHwLockInitInline(-1, memoryType);


  while(((*((volatile uint32 *)(0xF0036000 + 0x4C))) & 0x80000000) != 0);

  BrsHwUnlockInitInline(-1, memoryType);

  (*((volatile uint32 *)(0xF0036000 + 0x4C))) = ((*((volatile uint32 *)(0xF0036000 + 0x4C))) | 0x01);
  (*((volatile uint32 *)(0xF0036000 + 0x4C))) = ((*((volatile uint32 *)(0xF0036000 + 0x4C))) | 0x01 << 30u);
  BrsHwLockInitInline(-1, memoryType);


  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);

  (*((volatile uint32 *)(0xF0036000 + 0x12C))) = 0xF;



  (*((volatile uint32 *)(0xF0036000 + 0x130))) = 0xF2F2F2F2;
  (*((volatile uint32 *)(0xF0036000 + 0x120))) = 0xF2F2;

  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);

}
# 1046 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwInitPortInput(brsHw_Port_PortType p)
{
  (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x10 + 4 * ((uint32)p.portNumber / 4)))) &= ~(uint32)( 0x1F << (3 + 8 * ((uint32)p.portNumber % 4)));
  (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x10 + 4 * ((uint32)p.portNumber / 4)))) |= (uint32)( 0x10 + p.portAlternative ) << (8 * ((uint32)p.portNumber % 4));
}
# 1062 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwInitPortOutput(brsHw_Port_PortType p)
{
  (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x10 + 4 * ((uint32)p.portNumber / 4)))) &= ~(uint32)( 0x1F << (3 + 8 * ((uint32)p.portNumber % 4)));
  (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x10 + 4 * ((uint32)p.portNumber / 4)))) |= (uint32)( 0x10 + p.portAlternative ) << (3 + 8 * ((uint32)p.portNumber % 4));
}
# 1078 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwInitPortInputOutput(brsHw_Port_PortType p)
{

  BrsHwInitPortOutput(p);
}
# 1096 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwInitPortConfig(brsHw_Port_PortType p, brsHw_Port_ConfType n)
{
  uint32 memoryType = 1;
  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);
  (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x40 + 4 * ((uint32)p.portNumber / 8)))) &= ~(uint32)( 0x0F << (4 * ((uint32)p.portNumber % 8)) );
  switch (n.PortDriverSetting)
  {
    case PORT_STRONG_DRIVER_SHARP_EDGE:
      (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x40 + 4 * ((uint32)p.portNumber / 8)))) |= (0x1 | PORT_STRONG_DRIVER_SHARP_EDGE) << (4 * ((uint32)p.portNumber % 8));
      break;
    case PORT_STRONG_DRIVER_MEDIUM_EDGE:
      (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x40 + 4 * ((uint32)p.portNumber / 8)))) |= (0x1 | PORT_STRONG_DRIVER_MEDIUM_EDGE) << (4 * ((uint32)p.portNumber % 8));
      break;
    case PORT_MEDIUM_DRIVER:
      (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x40 + 4 * ((uint32)p.portNumber / 8)))) |= (0x1 | PORT_MEDIUM_DRIVER) << (4 * ((uint32)p.portNumber % 8));
      break;
    case PORT_RGMII_DRIVER:
      (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x40 + 4 * ((uint32)p.portNumber / 8)))) |= (0x1 | PORT_RGMII_DRIVER) << (4 * ((uint32)p.portNumber % 8));
      break;
  }
  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);
}



# 1 "Include/Brs_MemMap.h" 1
# 161 "Include/Brs_MemMap.h"
#pragma section ".text.RamCodeSection" ax
# 1122 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 1137 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwPort_SetLevel(brsHw_Port_PortType p, uint8 Level)
{
  if (Level == (uint8)0)
  {
    (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x00))) &= ~(0x1 << p.portNumber);
  }
  else
  {
    (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x00))) |= (0x1 << p.portNumber);
  }
}
# 1161 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
uint8 BrsHwPort_GetLevel(brsHw_Port_PortType p)
{
  uint32 temp;

  temp = (*((volatile uint32 *)(0xF003A000 + p.portGroup * 0x100 + 0x24)));
  temp &= (1 << p.portNumber);

  if(temp !=0x0000)
  {
    return (uint8)1;
  }
  else
  {
    return (uint8)0;
  }
}


# 1 "Include/Brs_MemMap.h" 1
# 171 "Include/Brs_MemMap.h"
#pragma section
# 1180 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 1190 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwPortInitPowerOn(void)
{
# 1538 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
}
# 1549 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwDisableInterruptAtPowerOn(void)
{
}
# 1563 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHw_ExceptionTable_Init(Brs_AddressOfConstType ExcVecLabel, Brs_AddressOfConstType IntVecLabel)
{
  uint32 CurrentCoreId = _mfcr(0xFE1C);
  uint32 memoryType = 1;



  if (ExcVecLabel!=(Brs_AddressOfConstType)0xFFFFFFFF)
    if((((uint32)ExcVecLabel) % 0x100) != 0)
    {

      for(;;);
    }

  if (IntVecLabel!=(Brs_AddressOfConstType)0xFFFFFFFF)
    if((((uint32)IntVecLabel) % 0x2000) != 0)
    {

      for(;;);
    }

  BrsHwUnlockInitInline(CurrentCoreId, memoryType);
  if (ExcVecLabel!=(Brs_AddressOfConstType)0xFFFFFFFF)
    _dsync(); _mtcr(0xFE24,(uint32)ExcVecLabel); _isync();

  if (IntVecLabel!=(Brs_AddressOfConstType)0xFFFFFFFF)
    _dsync(); _mtcr(0xFE20,(uint32)IntVecLabel); _isync();

  _dsync(); _mtcr(0x920C,0x0UL); _isync();
  BrsHwLockInitInline(CurrentCoreId, memoryType);
}
# 1603 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwSoftwareResetECU(void)
{
  uint32 ui32tmp;
  uint32 memoryType = 1;
  BrsMain_SoftwareResetECU_Hook();







  BrsHwUnlockInitInline(-1, memoryType);
  ui32tmp = (*((volatile uint32 *)(0xF0036000 + 0x58)));
  ui32tmp &= 0xFFFFFCFF;
  ui32tmp |= 0x00000100;
  (*((volatile uint32 *)(0xF0036000 + 0x58))) = ui32tmp;






  BrsHwLockInitInline(-1, memoryType);
# 1635 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);
  (*((volatile uint32 *)(0xF0036000 + 0x60))) |= 0x00000002;
  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);


  while (1)
  {

  }
}




# 1 "Include/Brs_MemMap.h" 1
# 64 "Include/Brs_MemMap.h"
#pragma section ".text.brsMainStartup" ax
# 1650 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 1663 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
brsMain_ResetReasonType BrsHwGetResetReasonStartup(void)
{
  if(((*((volatile uint32 *)(0xF0036000 + 0x50))) & 0x10) == 0x10)
  {
    return BRSMAIN_RESET_SW;
  }
  else
  {
    return BRSMAIN_RESET_OTHER;
  }
}

# 1 "Include/Brs_MemMap.h" 1
# 74 "Include/Brs_MemMap.h"
#pragma section
# 1676 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 2
# 1689 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwTime100NOP(void)
{
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");

  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
  __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop"); __asm__ ("nop");
}
# 1737 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
uint32 BrsHw_GetCore(void)
{
  return _mfcr(0xFE1C);
}
# 1757 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHw_EnableInterrupt(uint32 Source, uint8 Priority)
{

  (*((volatile uint32 *)((0xF0037000 + 0x1000) + Source))) |= 0x00000400;
  (*((volatile uint32 *)((0xF0037000 + 0x1000) + Source))) |= Priority;
}
# 1773 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHw_DisableInterrupt(uint32 Source)
{

  (*((volatile uint32 *)((0xF0037000 + 0x1000) + Source))) &= ~0x00000400;
}
# 1789 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHw_TriggerSoftwareInterrupt(uint32 Source)
{
  (*((volatile uint32 *)((0xF0037000 + 0x1000) + Source))) |= 0x04000000;
}
# 1804 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
void BrsHwDisableEccErrorReporting(void)
{
  uint32 memoryType = 1;
# 1818 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  BrsHwUnlockInitInline(_mfcr(0xFE1C), memoryType);


  (*((volatile uint32 *)(0xF8800000u + 0x1100u + 0x00000000u + ((1u) * 0x04u)))) = 0x00010000u;

  (*((volatile uint32 *)(0xF8800000u + 0x1100u + 0x00020000u + ((1u) * 0x04u)))) = 0x00010000u;


  (*((volatile uint32 *)(0xF8800000u + 0x1100u + 0x00040000u + ((1u) * 0x04u)))) = 0x00010000u;
# 1837 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
  (*((volatile uint32 *)(0xF8040000u + 0x48u + ((0) * 0x200000u)))) = 0xC0000000u;



  BrsHwLockInitInline(_mfcr(0xFE1C), memoryType);




}
