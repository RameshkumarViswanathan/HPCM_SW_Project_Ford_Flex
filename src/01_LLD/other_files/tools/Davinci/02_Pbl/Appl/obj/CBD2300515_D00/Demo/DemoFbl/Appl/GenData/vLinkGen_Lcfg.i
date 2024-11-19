# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
# 60 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.h" 1
# 61 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.h"
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
# 62 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.h" 2
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Cfg.h" 1
# 61 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Cfg.h"
# 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vBrsCfg.h" 1
# 62 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Cfg.h" 2
# 63 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.h" 2
# 77 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.h"
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
# 61 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c" 2
# 95 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
const vLinkGen_MemArea vLinkGen_ZeroInit_Early_Blocks[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_One_Blocks[2u] =
{
  {
                    (uint32)0x70000000u,
                  (uint32)0x70000C00u,
                   0u,
                        0u
  },
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_HardReset_Blocks[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};
# 338 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
const vLinkGen_MemArea vLinkGen_ZeroInit_Early_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_Zero_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_One_Groups[4u] =
{
  {
                    (uint32)_bss_START,
                  (uint32)_bss_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_sbss_START,
                  (uint32)_sbss_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_zbss_START,
                  (uint32)_zbss_LIMIT,
                   0u,
                        0u
  },
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_Two_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_Three_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_MemArea vLinkGen_ZeroInit_HardReset_Groups[3u] =
{
  {
                    (uint32)_EepDummyVarGroup_START,
                  (uint32)_EepDummyVarGroup_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_MagicFlagGroup_START,
                  (uint32)_MagicFlagGroup_LIMIT,
                   0u,
                        0u
  },
  {
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_RamMemArea vLinkGen_Init_Zero_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_RamMemArea vLinkGen_Init_One_Groups[7u] =
{
  {
                    (uint32)_RamConstSection_START,
                  (uint32)_RamConstSection_LIMIT,
                       (uint32)_RamConstSection_ROM_START,
                     (uint32)_RamConstSection_ROM_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_RamCodeSection_START,
                  (uint32)_RamCodeSection_LIMIT,
                       (uint32)_RamCodeSection_ROM_START,
                     (uint32)_RamCodeSection_ROM_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_Brs_ExcVectRam_START,
                  (uint32)_Brs_ExcVectRam_LIMIT,
                       (uint32)_Brs_ExcVectRam_ROM_START,
                     (uint32)_Brs_ExcVectRam_ROM_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_data_START,
                  (uint32)_data_LIMIT,
                       (uint32)_data_ROM_START,
                     (uint32)_data_ROM_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_sdata_START,
                  (uint32)_sdata_LIMIT,
                       (uint32)_sdata_ROM_START,
                     (uint32)_sdata_ROM_LIMIT,
                   0u,
                        0u
  },
  {
                    (uint32)_zdata_START,
                  (uint32)_zdata_LIMIT,
                       (uint32)_zdata_ROM_START,
                     (uint32)_zdata_ROM_LIMIT,
                   0u,
                        0u
  },
  {
    0u,
    0u,
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_RamMemArea vLinkGen_Init_Two_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_RamMemArea vLinkGen_Init_Three_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u,
    0u,
    0u
  }
};


const vLinkGen_RamMemArea vLinkGen_Init_HardReset_Groups[1u] =
{
  {
    0u,
    0u,
    0u,
    0u,
    0u,
    0u
  }
};
# 898 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/GenData/vLinkGen_Lcfg.c"
const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Early_BlocksSet =
{
  1u,
  vLinkGen_ZeroInit_Early_Blocks
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_One_BlocksSet =
{
  2u,
  vLinkGen_ZeroInit_One_Blocks
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_HardReset_BlocksSet =
{
  1u,
  vLinkGen_ZeroInit_HardReset_Blocks
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Early_GroupsSet =
{
  1u,
  vLinkGen_ZeroInit_Early_Groups
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Zero_GroupsSet =
{
  1u,
  vLinkGen_ZeroInit_Zero_Groups
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_One_GroupsSet =
{
  4u,
  vLinkGen_ZeroInit_One_Groups
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Two_GroupsSet =
{
  1u,
  vLinkGen_ZeroInit_Two_Groups
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_Three_GroupsSet =
{
  1u,
  vLinkGen_ZeroInit_Three_Groups
};


const vLinkGen_MemAreaSet vLinkGen_ZeroInit_HardReset_GroupsSet =
{
  3u,
  vLinkGen_ZeroInit_HardReset_Groups
};


const vLinkGen_RamMemAreaSet vLinkGen_Init_Zero_GroupsSet =
{
  1u,
  vLinkGen_Init_Zero_Groups
};


const vLinkGen_RamMemAreaSet vLinkGen_Init_One_GroupsSet =
{
  7u,
  vLinkGen_Init_One_Groups
};


const vLinkGen_RamMemAreaSet vLinkGen_Init_Two_GroupsSet =
{
  1u,
  vLinkGen_Init_Two_Groups
};


const vLinkGen_RamMemAreaSet vLinkGen_Init_Three_GroupsSet =
{
  1u,
  vLinkGen_Init_Three_Groups
};


const vLinkGen_RamMemAreaSet vLinkGen_Init_HardReset_GroupsSet =
{
  1u,
  vLinkGen_Init_HardReset_Groups
};
