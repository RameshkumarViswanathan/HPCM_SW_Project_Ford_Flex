# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c"
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h" 1
# 51 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h"
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
# 52 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h" 2
# 106 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h"
# 1 "Include/MemMap.h" 1
# 107 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h" 2

void WrapNv_InitConfig( void );



# 1 "Include/MemMap.h" 1
# 113 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.h" 2
# 52 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c" 2



# 1 "Include/MemMap.h" 1
# 56 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c" 2




# 1 "Include/MemMap.h" 1
# 61 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c" 2





# 1 "Include/MemMap.h" 1
# 67 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c" 2


void WrapNv_InitConfig( void ) {


}


# 1 "Include/MemMap.h" 1
# 76 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/WrapNv_Cfg.c" 2
