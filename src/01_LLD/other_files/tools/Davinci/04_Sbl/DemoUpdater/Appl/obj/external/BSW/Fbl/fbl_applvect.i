# 1 "../../../../external/BSW/Fbl/fbl_applvect.c"
# 1 "D:\\usr\\usage\\Delivery\\CBD23x\\CBD2300515\\D00\\external\\Demo\\DemoUpdater\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../external/BSW/Fbl/fbl_applvect.c"
# 78 "../../../../external/BSW/Fbl/fbl_applvect.c"
# 1 "../../../BSW/FblAsrStubs/v_cfg.h" 1
# 34 "../../../BSW/FblAsrStubs/v_cfg.h"
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
# 35 "../../../BSW/FblAsrStubs/v_cfg.h" 2
# 79 "../../../../external/BSW/Fbl/fbl_applvect.c" 2

# 1 "GenData/FblHal_Cfg.h" 1
# 81 "../../../../external/BSW/Fbl/fbl_applvect.c" 2

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
# 83 "../../../../external/BSW/Fbl/fbl_applvect.c" 2
# 1 "../../../../external/BSW/Fbl/applvect.h" 1
# 95 "../../../../external/BSW/Fbl/applvect.h"
# 1 "Include/MemMap.h" 1
# 4056 "Include/MemMap.h"
#pragma section ".ApplVectSection" a
# 96 "../../../../external/BSW/Fbl/applvect.h" 2
extern vuint32 const ApplIntJmpTable[2u];

# 1 "Include/MemMap.h" 1
# 4063 "Include/MemMap.h"
#pragma section
# 99 "../../../../external/BSW/Fbl/applvect.h" 2
# 84 "../../../../external/BSW/Fbl/fbl_applvect.c" 2
# 98 "../../../../external/BSW/Fbl/fbl_applvect.c"
extern void _start( void );


# 1 "Include/MemMap.h" 1
# 4056 "Include/MemMap.h"
#pragma section ".ApplVectSection" a
# 102 "../../../../external/BSW/Fbl/fbl_applvect.c" 2
 vuint32 const ApplIntJmpTable[2u] = {(vuint32)_start, 0xA5000000ul};

# 1 "Include/MemMap.h" 1
# 4063 "Include/MemMap.h"
#pragma section
# 105 "../../../../external/BSW/Fbl/fbl_applvect.c" 2
