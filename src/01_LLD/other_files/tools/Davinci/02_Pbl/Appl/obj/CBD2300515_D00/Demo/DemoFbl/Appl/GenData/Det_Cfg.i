# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 1 "../../../BSW/Det/Det.h" 1
# 77 "../../../BSW/Det/Det.h"
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
# 78 "../../../BSW/Det/Det.h" 2
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
# 52 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2
# 70 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 101 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 71 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2

const Det_CalloutTableType Det_ErrorHookTable[1] = {

              ApplFbl_DetEntryHandler
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 117 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section
# 79 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2
# 90 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 101 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 91 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2

const Det_CalloutTableType Det_RuntimeErrorCalloutTable[1] = {

              ApplFbl_DetEntryHandler
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 117 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section
# 99 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2
# 110 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 101 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section ".rodata.RamConstSection" a
# 111 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2

const Det_CalloutTableType Det_TransientFaultCalloutTable[1] = {

              ApplFbl_DetEntryHandler
};


# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h" 1
# 117 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_MemMap.h"
#pragma section
# 119 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/Det_Cfg.c" 2
