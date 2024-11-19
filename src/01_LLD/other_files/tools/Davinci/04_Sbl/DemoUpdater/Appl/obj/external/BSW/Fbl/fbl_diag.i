# 1 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "D:\\usr\\usage\\Delivery\\CBD23x\\CBD2300515\\D00\\external\\Demo\\DemoUpdater\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../external/BSW/Fbl/fbl_diag.c"
# 145 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "Include/fbl_inc.h" 1
# 53 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/v_ver.h" 1
# 54 "Include/fbl_inc.h" 2
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
# 55 "Include/fbl_inc.h" 2





# 1 "GenData/FblBm_Cfg.h" 1
# 61 "Include/fbl_inc.h" 2
# 72 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 85 "../../../BSW/Fbl/fbl_def.h"
# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 86 "../../../BSW/Fbl/fbl_def.h" 2
# 98 "../../../BSW/Fbl/fbl_def.h"
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
# 99 "../../../BSW/Fbl/fbl_def.h" 2






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
# 98 "GenData/Fbl_Lbt.h"
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
  tBlockDescriptor logicalBlock[5u];
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
# 131 "Include/fbl_inc.h"
# 1 "../../../BSW/Fbl/fbl_hw.h" 1
# 112 "../../../BSW/Fbl/fbl_hw.h"
# 1 "../../../BSW/Fbl/fbl_sfr.h" 1
# 113 "../../../BSW/Fbl/fbl_hw.h" 2

# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
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
# 227 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 115 "../../../BSW/Fbl/fbl_hw.h" 2
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 1 3
# 36 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 1 3


# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\xkeycheck.h" 1 3
# 4 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 463 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long int _Int32t;
typedef unsigned long int _Uint32t;







typedef long int _Ptrdifft;






typedef long unsigned int _Sizet;
# 931 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 1 3











  typedef __builtin_va_list va_list;
# 39 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdarg.h" 3

# 932 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 2 3
# 1058 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
# 1113 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef int _Wchart;
typedef unsigned int _Wintt;
# 1152 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef va_list _Va_list;
# 1169 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3





void _Atexit(void (*)(void));

# 1189 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3
typedef char _Sysch_t;
# 1203 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\yvals.h" 3

# 37 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 2 3



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
# 79 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\types.h" 3
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
# 162 "Include/fbl_inc.h"
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
# 179 "Include/fbl_inc.h"
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
# 203 "Include/fbl_inc.h"
# 1 "../../../BSW/FblBm/bm_main.h" 1
# 74 "../../../BSW/FblBm/bm_main.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
# 61 "../../../BSW/FblBm/bm_types.h"
# 1 "../../../BSW/FblBmHdr/bm_hdr_types.h" 1
# 44 "../../../BSW/FblBmHdr/bm_hdr_types.h"
# 1 "GenData/FblBmHdr_Cfg.h" 1
# 51 "GenData/FblBmHdr_Cfg.h"
# 1 "../../../BSW/_Common/Std_Types.h" 1
# 56 "../../../BSW/_Common/Std_Types.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
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
# 52 "GenData/FblBmHdr_Cfg.h" 2
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


# 1 "Include/upd_ap.h" 1
# 68 "Include/upd_ap.h"
# 1 "../../../BSW/FblUpd/upd_types.h" 1
# 44 "../../../BSW/FblUpd/upd_types.h"
# 1 "../../../BSW/Fbl/fbl_main_types.h" 1
# 48 "../../../BSW/Fbl/fbl_main_types.h"
# 1 "../../../BSW/FblBm/bm_types.h" 1
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
# 45 "../../../BSW/FblUpd/upd_types.h" 2






typedef vuint8 * tFblMemRamData;

typedef const vuint8 * tFblMemConstRamData;


typedef struct
{
   tFblAddress source;
   tFblAddress target;
   tFblLength length;
} tFblUpdSegmentInfo;


typedef tFblResult (*tFblUpdFunc)( void );

typedef tFblResult (* tFblUpAdjustSegment)( tFblUpdSegmentInfo * pSegmentList,
   vuint32 * pSegmentCount );
# 69 "Include/upd_ap.h" 2
# 1 "Include/upd_cfg.h" 1
# 41 "Include/upd_cfg.h"
# 1 "Include/upd_hw_cfg.h" 1
# 42 "Include/upd_cfg.h" 2
# 1 "Include/upd_oem_cfg.h" 1
# 43 "Include/upd_cfg.h" 2
# 1 "Include/upd_ap_cfg.h" 1
# 44 "Include/upd_cfg.h" 2



# 1 "Include/DemoFbl.h" 1
# 19 "Include/DemoFbl.h"
typedef struct _tFblUpdateBlkInfo
{
   FBL_ADDR_TYPE blockAddress;
   FBL_MEMSIZE_TYPE blockLength;
   vuint8 const * blockSource;
} tFblUpdateBlkInfo;

 extern tFblUpdateBlkInfo const FblUpdateBlkInfo[2];


# 1 "Include/MemMap.h" 1
# 30 "Include/DemoFbl.h" 2





 extern vuint8 const FblUpdateBlk0[0xE0];





 extern vuint8 const FblUpdateBlk1[0x19140];


# 1 "Include/MemMap.h" 1
# 45 "Include/DemoFbl.h" 2
# 48 "Include/upd_cfg.h" 2




# 1 "../../DemoFlashDrv/FlashRom.h" 1
# 22 "../../DemoFlashDrv/FlashRom.h"
 extern vuint8 const flashDrvBlk0[0x800];
# 53 "Include/upd_cfg.h" 2
# 70 "Include/upd_ap.h" 2
# 1 "Include/upd_hw_ap.h" 1
# 86 "Include/upd_hw_ap.h"
void ApplFblUpdHwInit(void);
void ApplFblUpdHwReset(void);
# 71 "Include/upd_ap.h" 2
# 1 "Include/upd_oem_ap.h" 1
# 69 "Include/upd_oem_ap.h"
# 1 "Include/MemMap.h" 1
# 70 "Include/upd_oem_ap.h" 2


tFblResult ApplFblUpdOemInvalidateUpdater( void );

# 1 "Include/MemMap.h" 1
# 75 "Include/upd_oem_ap.h" 2
# 72 "Include/upd_ap.h" 2
# 91 "Include/upd_ap.h"
void ApplFblUpdInitPowerOn( void );
void ApplFblUpdSetVfp( void );
void ApplFblUpdResetVfp( void );
void ApplFblUpdReset( void );
void ApplFblUpdTrcvrNormalMode( void );



tFblResult ApplFblUpdGetSegment( vuint32 index, tFblUpdSegmentInfo * pSegment );
tFblResult ApplFblUpdAdjustSegmentProgram( tFblUpdSegmentInfo * pSegmentList,
   vuint32 * pSegmentCount );
tFblResult ApplFblUpdAdjustSegmentValidity( tFblUpdSegmentInfo * pSegmentList,
   vuint32 * pSegmentCount );



tFblResult ApplFblUpdInit( void );
tFblResult ApplFblUpdSendResponse( void );
tFblResult ApplFblUpdPrepareErase( void );
tFblResult ApplFblUpdFinalizeErase( void );
tFblResult ApplFblUpdPrepareProgram( void );
tFblResult ApplFblUpdFinalizeProgram( void );
tFblResult ApplFblUpdFinalizeVerify( void );
tFblResult ApplFblUpdInvalidateUpdater( void );


# 1 "Include/MemMap.h" 1
# 4286 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 118 "Include/upd_ap.h" 2
tFblResult ApplFblUpdRemoveAndReset( void );

# 1 "Include/MemMap.h" 1
# 4293 "Include/MemMap.h"
#pragma section
# 121 "Include/upd_ap.h" 2

void ApplFblUpdPrepareResponsePending( vuint8 * pResponse );



void ApplTrcvrNormalMode( void );
void ApplFblCanBusOff( void );

void ApplFblFatalError( vuint8 errorCode );
# 207 "Include/fbl_inc.h" 2
# 1 "../../../BSW/FblUpd/upd_main.h" 1
# 57 "../../../BSW/FblUpd/upd_main.h"
# 1 "../../../BSW/FblUpd/upd_types.h" 1
# 58 "../../../BSW/FblUpd/upd_main.h" 2
# 1 "Include/upd_cfg.h" 1
# 59 "../../../BSW/FblUpd/upd_main.h" 2
# 154 "../../../BSW/FblUpd/upd_main.h"
# 1 "Include/MemMap.h" 1
# 155 "../../../BSW/FblUpd/upd_main.h" 2







# 1 "Include/MemMap.h" 1
# 163 "../../../BSW/FblUpd/upd_main.h" 2
# 185 "../../../BSW/FblUpd/upd_main.h"
# 1 "Include/MemMap.h" 1
# 186 "../../../BSW/FblUpd/upd_main.h" 2

void FblMain( void );
void FblMemSetInteger( vuint32 count, vuint32 input, tFblMemRamData buffer );
vuint32 FblMemGetInteger( vuint32 count, tFblMemConstRamData buffer );


# 1 "Include/MemMap.h" 1
# 193 "../../../BSW/FblUpd/upd_main.h" 2
# 208 "Include/fbl_inc.h" 2
# 146 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 1 "../../../../external/BSW/Fbl/fbl_diag.h" 1
# 530 "../../../../external/BSW/Fbl/fbl_diag.h"
typedef vuint32 tStateBitmap;
# 813 "../../../../external/BSW/Fbl/fbl_diag.h"
typedef struct tagSecurityLevel
{
   vuint8 accessType;
   vuint8 stateIdxKey;
   vuint8 stateIdxAccess;
} tSecurityLevel;
# 830 "../../../../external/BSW/Fbl/fbl_diag.h"
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
   vuint8 checksum[SEC_VERIFY_CLASS_DDD_VERIFY_SIZE];
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
# 897 "../../../../external/BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 898 "../../../../external/BSW/Fbl/fbl_diag.h" 2

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
# 914 "../../../../external/BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 917 "../../../../external/BSW/Fbl/fbl_diag.h" 2
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
# 928 "../../../../external/BSW/Fbl/fbl_diag.h" 2


# 1 "Include/MemMap.h" 1
# 931 "../../../../external/BSW/Fbl/fbl_diag.h" 2

vuint8 FblDiagCheckStartMsg(const vuint8 *pData, vuint32 length);
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, tDiagSegmentList * blockSegList);


void CheckSuppressPosRspMsgIndication( vuint8 *subparam );

tFblResult FblDiagMemPreWrite( void );
tFblResult FblDiagMemPostWrite( void );



# 1 "Include/MemMap.h" 1
# 944 "../../../../external/BSW/Fbl/fbl_diag.h" 2






# 1 "Include/MemMap.h" 1
# 951 "../../../../external/BSW/Fbl/fbl_diag.h" 2


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
# 965 "../../../../external/BSW/Fbl/fbl_diag.h" 2
# 985 "../../../../external/BSW/Fbl/fbl_diag.h"
# 1 "Include/MemMap.h" 1
# 986 "../../../../external/BSW/Fbl/fbl_diag.h" 2




 extern vuint16 errStatErrorCode;
 extern vuint16 errStatFblStates;
 extern vuint8 errStatLastServiceId;
 extern vuint8 errStatFlashDrvVersion[3];
 extern vuint16 errStatFlashDrvErrorCode;
 extern tBlockDescriptor errStatDescriptor;
# 1005 "../../../../external/BSW/Fbl/fbl_diag.h"
 extern vuint8 tokenBuffer[1899u];




# 1 "Include/MemMap.h" 1
# 1011 "../../../../external/BSW/Fbl/fbl_diag.h" 2
# 147 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 540 "../../../../external/BSW/Fbl/fbl_diag.c"
typedef struct tagServiceProp * ptServiceProp;




typedef struct tagServiceCheck
{
   vuint8 checkHandlerIdx;
   vuint8 NRC;
   vuint8 errorHandlerIdx;
} tServiceCheck;

typedef struct
{
   struct tagServiceCheck const * list;
   vuint8 count;
} tServiceCheckList;

typedef struct tagServiceList
{
   ptServiceProp list;
   tCwDataLengthType bufPos;
   vuint8 idSize;
   vuint8 count;
} tServiceList;
# 580 "../../../../external/BSW/Fbl/fbl_diag.c"
typedef struct tagServiceProp
{
   struct tagServiceList const * subServices;
   vuint8 const * serviceId;




   vuint16 minLength;
   vuint16 maxLength;


   tStateBitmap states[(2u + 3u)][((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)];







   vuint8 mainHandlerIdx;

   vuint8 checkListIdx;

} tServiceProp;


typedef struct
{




   vuint8 const * serviceId;




   vuint16 minLength;
   vuint16 maxLength;
   vuint8 stateUsage;
   vuint8 mainHandlerIdx;

   vuint8 checkListIdx;


   vuint8 subServicesHandler;

} tServicePropROM;
# 641 "../../../../external/BSW/Fbl/fbl_diag.c"
typedef tFblResult (*tFblDiagCheckHandler)( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
typedef tFblResult (*tFblDiagErrorHandler)( const tServiceProp *properties, vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
typedef tFblResult (*tFblDiagMainHandler)( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );




typedef struct
{
   vuint8 sessionType;
   vuint16 p2Timing;
   vuint16 p2StarTiming;
} tDiagSessionParameters;







# 1 "Include/MemMap.h" 1
# 662 "../../../../external/BSW/Fbl/fbl_diag.c" 2


 vuint8 * DiagBuffer;
 vuint8 diagErrorCode;
 tCwDataLengthType DiagDataLength;
 vuint16 P2Timeout;
 vuint16 testerPresentTimeout;
 vuint8 diagResponseFlag;
 vuint8 diagServiceCurrent;
 tStateBitmap fblStates[(((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u];
 vuint8 diagCurrentSecLvl;
# 683 "../../../../external/BSW/Fbl/fbl_diag.c"
 vuint8 tokenBuffer[1899u];





 vuint16 errStatErrorCode;
 vuint16 errStatFblStates;
 vuint8 errStatLastServiceId;
 vuint8 errStatFlashDrvVersion[3];
 vuint16 errStatFlashDrvErrorCode;
 tBlockDescriptor errStatDescriptor;



# 1 "Include/MemMap.h" 1
# 699 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 719 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "Include/MemMap.h" 1
# 720 "../../../../external/BSW/Fbl/fbl_diag.c" 2




 static tDiagSegmentList diagSegmentList;
 static vuint8 currentSegment;
 static vuint8 currentBlock;
 static vuint8 lastErasedBlock;
 static tBlockHeader blockHeader[5u];
 static tFblDiagAddr transferAddress;
 static tFblLength transferRemainder;
 static vuint8 transferType;
 static vuint8 expectedSequenceCnt;
 static vuint8 currentSequenceCnt;
 static vuint16 ecuResetTimeout;
 static vuint8 dataFormatId;
 static tFblLength totalProgramLength;







 static vuint8 currentDiagSessionIndex;






# 1 "Include/MemMap.h" 1
# 752 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 3513 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 755 "../../../../external/BSW/Fbl/fbl_diag.c" 2


 static tStateBitmap const kDiagStateMaskSessions[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)(((((1uL << ((0u))) | (1uL << (((0u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };
 static tStateBitmap const kDiagStateMaskFunctional[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)((((1uL << ((((((0u) + 1u) + 1u) + 1u) + 1u)))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };
 static tStateBitmap const kDiagStateMaskSecurityAccess[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)((((1uL << (((((0u) + 1u) + 1u) + 1u)))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };
 static tStateBitmap const kDiagStateMaskSequenceError[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)((((1uL << ((((0u) + 1u) + 1u))) | (1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };

 static tStateBitmap const kDiagStateMaskGeneralConditions[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)(((((((~0uL) >> (0u)) << (0u)) ^ (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u) * 32u) - 1u)) < (32u - 1u)) ? (((~0uL) >> ((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u) * 32u) - 1u)) + 1u)) << ((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u) * 32u) - 1u)) + 1u)) : 0uL))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };
 static tStateBitmap const kDiagStateMaskReset[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u)] = { ((tStateBitmap)((((0x00uL)) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))) };


# 1 "Include/MemMap.h" 1
# 3519 "Include/MemMap.h"
#pragma section
# 767 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 770 "../../../../external/BSW/Fbl/fbl_diag.c" 2


 static tServiceProp serviceProperties;

 static tFblResult serviceResult;




 static vuint16 maxNumberOfBlockLength;



# 1 "Include/MemMap.h" 1
# 784 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 3513 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 787 "../../../../external/BSW/Fbl/fbl_diag.c" 2


 static tDiagSessionParameters const kDiagSessionParameters[] =
{

   { ((vuint8) 0x01u), 50, 500 },

   { ((vuint8) 0x02u), ((vuint16) ((25u / 1u) * 1u)), ((vuint16) ((vuint32)((5000u / 1u) * 1u) / 10u)) }
};

 static vuint8 const kDiagNumberOfSessions = sizeof(kDiagSessionParameters) / sizeof(tDiagSessionParameters);



# 1 "Include/MemMap.h" 1
# 3519 "Include/MemMap.h"
#pragma section
# 802 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 814 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "Include/MemMap.h" 1
# 815 "../../../../external/BSW/Fbl/fbl_diag.c" 2



 static SecM_SignatureParamType pipeVerifyParam;

 static SecM_SignatureParamType pipeVerifyParamCrc;


 static vuint8 pipeVerifyBuf[(SEC_VERIFY_CLASS_DDD_DIGEST_SIZE + SEC_SIZE_CHECKSUM_CRC)];
 static vuint32 pipeVerifyLength;

 static SecM_CRCParamType pipeVerifyCrc;
 static vuint32 pipeVerifyLengthCrc;




 static SecM_VerifyParamType verifyParam;
 static FL_SegmentInfoType verifySegmentInfo[1];



 static vuint16 verifyTokenSignLength;



 static vuint8 verifyOutputBuf[(SEC_VERIFY_CLASS_DDD_DIGEST_SIZE + SEC_SIZE_CHECKSUM_CRC)];


# 1 "Include/MemMap.h" 1
# 845 "../../../../external/BSW/Fbl/fbl_diag.c" 2







# 1 "Include/MemMap.h" 1
# 853 "../../../../external/BSW/Fbl/fbl_diag.c" 2

static void FblDiagSegmentInit( void );
static vuint8 FblDiagSegmentNext( tFblDiagAddr segAddr, tFblLength segLength, vuint8 blockIdx );
static tCwDataLengthType FblDiagGetMaxTransferDataBlockLength(void);
static void DiagDiscardReception( void );
static void FblDeinitMemoryDriver( void );
static void FblDiagDeinit( void );


# 1 "Include/MemMap.h" 1
# 863 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 866 "../../../../external/BSW/Fbl/fbl_diag.c" 2
static void DiagResetResponseHandling( void );

# 1 "Include/MemMap.h" 1
# 3491 "Include/MemMap.h"
#pragma section
# 869 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 872 "../../../../external/BSW/Fbl/fbl_diag.c" 2

static vuint8 * FblDiagMemGetActiveBuffer(void);


static void FblDiagSetState (const tStateBitmap * state);
static void FblDiagClrState (const tStateBitmap * state);
static void FblDiagRetainState ( tStateBitmap const * state);
static void FblDiagInitStateTables ( void );
static void FblDiagSetProperties(ptServiceProp source, tServiceProp * destination);
static void FblDiagMergeProperties(ptServiceProp source, tServiceProp * merge);
static void FblDiagDispatch ( void );

static tFblResult FblDiagSecAccessSeed( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel);
static tFblResult FblDiagSecAccessKey( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel);


static tFblResult FblDiagSearchService( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckSession( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckLength( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckFunctional( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckSuppressPosRsp( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckSecurityAccess( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckSequenceError( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
static tFblResult FblDiagCheckGeneralConditions( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );

static tFblResult FblDiagCheckTransferMode( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result );
# 912 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagErrorHandlerExecMainHandler( const tServiceProp *properties, vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );


static tFblResult FblDiagMainHandlerDefaultSession( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerProgrammingSession( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerTesterPresent( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerEcuReset( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerRcEraseMemory( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerRcCheckProgDep( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerRcActivateSbl( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerRcCheckValidApp( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );


static tFblResult FblDiagMainHandlerRcTokenDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );





static tFblResult FblDiagMainHandlerSecAccessSeed( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerSecAccessKey( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerRequestDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerTransferDataDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );

static tFblResult FblDiagMainHandlerRequestUpload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerTransferDataUpload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );

static tFblResult FblDiagMainHandlerRequestTransferExit( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static tFblResult FblDiagMainHandlerReadDataById( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );

static tFblResult FblDiagMainHandlerWriteDataById( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );






static void FblDiagInitDownloadSequence( void );
static tFblResult FblDiagPrepareDidResponse( vuint8 *pbDiagBuffer, vuint16 reqDid, tDidDataPtr didData, vuint16 didLen );
static tFblResult FblDiagCheckState( const tServiceProp *properties, vuint8 *pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, tStateBitmap const * stateMask, ptServiceProp * result);
static tFblResult FblDiagSessionTransition( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );
static void FblDiagSessionControlParamInit( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen );

static vuint8 FblDiagGetSessionIndex( vuint8 diagnosticSessionType );


static SecM_StatusType FblDiagVerification( SecM_VerifyParamType * verifyPar );


static SecM_StatusType FblDiagVerifySignature( SecM_SignatureParamType * pVerifyParam );



static tTokenHdlResult FblDiagValidateToken( const vuint8 * tokenBuf );
static tFblResult FblDiagCheckServerMessageId( const vuint8 * tokenBuf );
static tTokenHdlResult FblDiagTokenCallout( vuint8 cmdType, const vuint8 * tokenBuf, vuint16 tokenLength );




# 1 "Include/MemMap.h" 1
# 973 "../../../../external/BSW/Fbl/fbl_diag.c" 2






enum
{
   kServiceCheckHandlerSearchService
   ,kServiceCheckHandlerCheckSession
   ,kServiceCheckHandlerCheckLength
   ,kServiceCheckHandlerCheckFunctional
   ,kServiceCheckHandlerCheckSuppressPosRsp
   ,kServiceCheckHandlerCheckSecurityAccess
   ,kServiceCheckHandlerCheckSequenceError
   ,kServiceCheckHandlerCheckGeneralConditions

   ,kServiceCheckHandlerTransferMode






};


# 1 "Include/MemMap.h" 1
# 3513 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 1001 "../../../../external/BSW/Fbl/fbl_diag.c" 2

 static tFblDiagCheckHandler const kServiceCheckHandlerFctTable[] =
{
   FblDiagSearchService
   ,FblDiagCheckSession
   ,FblDiagCheckLength
   ,FblDiagCheckFunctional
   ,FblDiagCheckSuppressPosRsp
   ,FblDiagCheckSecurityAccess
   ,FblDiagCheckSequenceError
   ,FblDiagCheckGeneralConditions

   ,FblDiagCheckTransferMode






};

enum
{
   kServiceErrorHandlerExecMainHandler







   ,kServiceErrorHandlerNone
};

 static tFblDiagErrorHandler const kServiceErrorHandlerFctTable[] =
{
   FblDiagErrorHandlerExecMainHandler






};

enum
{
    kServiceMainHandlerDefaultSession
   ,kServiceMainHandlerProgrammingSession
   ,kServiceMainHandlerTesterPresent
   ,kServiceMainHandlerEcuReset
   ,kServiceMainHandlerRcEraseMemory
   ,kServiceMainHandlerRcCheckProgDep
   ,kServiceMainHandlerRcActivateSbl
   ,kServiceMainHandlerRcCheckValidApp


   ,kServiceMainHandlerRcTokenDownload





   ,kServiceMainHandlerSecAccessSeed
   ,kServiceMainHandlerSecAccessKey
   ,kServiceMainHandlerRequestDownload
   ,kServiceMainHandlerTransferDataDownload

   ,kServiceMainHandlerRequestUpload
   ,kServiceMainHandlerTransferDataUpload

   ,kServiceMainHandlerRequestTransferExit
   ,kServiceMainHandlerReadDataById

   ,kServiceMainHandlerWriteDataById





   ,kServiceMainHandlerNone
};

 static tFblDiagMainHandler const kServiceMainHandlerFctTable[] = {
   FblDiagMainHandlerDefaultSession
   ,FblDiagMainHandlerProgrammingSession
   ,FblDiagMainHandlerTesterPresent
   ,FblDiagMainHandlerEcuReset
   ,FblDiagMainHandlerRcEraseMemory
   ,FblDiagMainHandlerRcCheckProgDep
   ,FblDiagMainHandlerRcActivateSbl
   ,FblDiagMainHandlerRcCheckValidApp


   ,FblDiagMainHandlerRcTokenDownload





   ,FblDiagMainHandlerSecAccessSeed
   ,FblDiagMainHandlerSecAccessKey
   ,FblDiagMainHandlerRequestDownload
   ,FblDiagMainHandlerTransferDataDownload

   ,FblDiagMainHandlerRequestUpload
   ,FblDiagMainHandlerTransferDataUpload

   ,FblDiagMainHandlerRequestTransferExit
   ,FblDiagMainHandlerReadDataById

   ,FblDiagMainHandlerWriteDataById




};





 static tServiceCheck const kDiagServiceChecks[] =
{
   {
      kServiceCheckHandlerSearchService
      ,((vuint8) 0x11u)



      ,kServiceErrorHandlerNone

   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,((vuint8) 0x7Fu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,((vuint8) 0x13u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,((vuint8) 0x33u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,((vuint8) 0x24u)
      ,kServiceErrorHandlerNone
   }
};

 static tServiceCheckList const kDiagServiceCheckTable =
{
   kDiagServiceChecks
   ,(sizeof(kDiagServiceChecks)/sizeof(kDiagServiceChecks[0]))
};



 static tServiceCheck const kDiagSubFctChecks[] =
{

   {
      kServiceCheckHandlerCheckSuppressPosRsp
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerSearchService
      ,((vuint8) 0x12u)



      ,kServiceErrorHandlerNone

   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,((vuint8) 0x7Eu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,((vuint8) 0x13u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,((vuint8) 0x33u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,((vuint8) 0x24u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,((vuint8) 0x22u)
      ,kServiceErrorHandlerNone
   }
};

 static tServiceCheckList const kDiagSubFctCheckTable =
{
   kDiagSubFctChecks
   ,(sizeof(kDiagSubFctChecks)/sizeof(kDiagSubFctChecks[0]))
};
# 1279 "../../../../external/BSW/Fbl/fbl_diag.c"
 static tServiceCheck const kDiagRcTypeChecks[] =
{

   {
      kServiceCheckHandlerCheckSuppressPosRsp
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerSearchService
      ,((vuint8) 0x12u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,((vuint8) 0x7Eu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,((vuint8) 0x13u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,((vuint8) 0x33u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSequenceError
      ,((vuint8) 0x24u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,((vuint8) 0x22u)
      ,kServiceErrorHandlerNone
   }
};

 static tServiceCheckList const kDiagRcTypeCheckTable =
{
   kDiagRcTypeChecks
   ,(sizeof(kDiagRcTypeChecks)/sizeof(kDiagRcTypeChecks[0]))
};



 static tServiceCheck const kDiagNonSubFctChecks[] =
{
   {
      kServiceCheckHandlerCheckGeneralConditions
      ,((vuint8) 0x22u)
      ,kServiceErrorHandlerNone
   }
};

 static tServiceCheckList const kDiagNonSubFctCheckTable =
{
   kDiagNonSubFctChecks
   ,(sizeof(kDiagNonSubFctChecks)/sizeof(kDiagNonSubFctChecks[0]))
};



 static tServiceCheck const kDiagSubRoutineChecks[] =
{
   {
      kServiceCheckHandlerSearchService
      ,((vuint8) 0x31u)
      ,kServiceErrorHandlerExecMainHandler
   }
   ,{
      kServiceCheckHandlerCheckFunctional
      ,((vuint8) 0xFFu)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSession
      ,((vuint8) 0x31u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,((vuint8) 0x33u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,((vuint8) 0x22u)
      ,kServiceErrorHandlerNone
   }
};

 static tServiceCheckList const kDiagSubRoutineCheckTable =
{
   kDiagSubRoutineChecks
   ,(sizeof(kDiagSubRoutineChecks)/sizeof(kDiagSubRoutineChecks[0]))
};




 static tServiceCheck const kDiagTransferDataChecks[] =
{
   {
      kServiceCheckHandlerTransferMode
      ,((vuint8) 0x00u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckLength
      ,((vuint8) 0x13u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckSecurityAccess
      ,((vuint8) 0x33u)
      ,kServiceErrorHandlerNone
   }
   ,{
      kServiceCheckHandlerCheckGeneralConditions
      ,((vuint8) 0x22u)
      ,kServiceErrorHandlerNone
   }

};

 static tServiceCheckList const kDiagTransferDataCheckTable =
{
   kDiagTransferDataChecks
   ,(sizeof(kDiagTransferDataChecks)/sizeof(kDiagTransferDataChecks[0]))
};






enum
{
   kServiceCheckListServiceCheck
   ,kServiceCheckListSubFctCheck



   ,kServiceCheckListNonSubFctCheck
   ,kServiceCheckListSubRoutineCheck
   ,kServiceCheckListRcTypeCheck

   ,kServiceCheckListTransferDataCheck


   ,kServiceCheckListNone
};

 static tServiceCheckList const * const kServiceCheckListTable[] =
{
   &kDiagServiceCheckTable
   ,&kDiagSubFctCheckTable



   ,&kDiagNonSubFctCheckTable
   ,&kDiagSubRoutineCheckTable
   ,&kDiagRcTypeCheckTable

   ,&kDiagTransferDataCheckTable

};





enum
{




# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRoot,
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceDiagnosticSessionControl,
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceEcuReset,
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceSecurityAccess,
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceTesterPresent,
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceReadDataByIdentifier,
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceWriteDataByIdentifier,
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRoutineControl,
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRequestDownload,
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRequestUpload,
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceTransferData,
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRequestTransferExit,
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceDefaultSession,
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceProgrammingSession,
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceHardReset,
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceRequestSeed,
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceSendKey,
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceZeroSubFunction,
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceActivateSbl,
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceCheckValidApp,
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceTokenDownload,
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceEraseMemory,
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceCheckProgDep,
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceStartRoutine,
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceTransferDataDownload,
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceTransferDataUpload,
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1466 "../../../../external/BSW/Fbl/fbl_diag.c" 2





   kDiagNumberOfServices
};



 static tStateBitmap const kDiagStateBitmaps[] =
{

# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)((((((1uL << ((((0u) + 1u) + 1u)))) | ((1uL << (((((0u) + 1u) + 1u) + 1u)))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 171 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((0u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 189 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)((((((1uL << ((((0u) + 1u) + 1u)))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))) | (1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))) | (1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))) | (1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))) | (1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 183 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((0u) + 1u))) | (1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)(((((1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) | (1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((0u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)((((((1uL << ((((0u) + 1u) + 1u)))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((0u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),





   ((tStateBitmap)((((((1uL << ((((0u) + 1u) + 1u)))) | ((1uL << (((((0u) + 1u) + 1u) + 1u)))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 177 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((((0u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 183 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 165 "../../../../external/BSW/Fbl/fbl_diag.imp"
   ((tStateBitmap)(((((1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))))) >> ((0u) * 32u)) & (tStateBitmap)(0xFFFFFFFFuL))),
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1480 "../../../../external/BSW/Fbl/fbl_diag.c" 2

};





 static tServiceProp kDiagServiceProperties[kDiagNumberOfServices];
# 1498 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_Root [] = { 0x00 };
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_DiagnosticSessionControl [] = { ((vuint8) 0x10u) };
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_EcuReset [] = { ((vuint8) 0x11u) };
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_SecurityAccess [] = { ((vuint8) 0x27u) };
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_TesterPresent [] = { ((vuint8) 0x3Eu) };
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_ReadDataByIdentifier [] = { ((vuint8) 0x22u) };
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_WriteDataByIdentifier [] = { ((vuint8) 0x2Eu) };
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_RoutineControl [] = { ((vuint8) 0x31u) };
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_RequestDownload [] = { ((vuint8) 0x34u) };
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_RequestUpload [] = { ((vuint8) 0x35u) };
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_TransferData [] = { ((vuint8) 0x36u) };
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_RequestTransferExit [] = { ((vuint8) 0x37u) };
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_DefaultSession [] = { ((vuint8) 0x01u) };
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_ProgrammingSession [] = { ((vuint8) 0x02u) };
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_HardReset [] = { ((vuint8) 0x01u) };
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_RequestSeed [] = { ((vuint8) 0x01u) };
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_SendKey [] = { ((vuint8) 0x02u) };
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_ZeroSubFunction [] = { ((vuint8) 0x00u) };
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_ActivateSbl [] = { ((vuint8)(((((vuint16) 0x0301u)) >> 8u) & 0xFFu)), ((vuint8)((((vuint16) 0x0301u)) & 0xFFu)) };
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_CheckValidApp [] = { ((vuint8)(((((vuint16) 0x0304u)) >> 8u) & 0xFFu)), ((vuint8)((((vuint16) 0x0304u)) & 0xFFu)) };
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_TokenDownload [] = { ((vuint8)(((((vuint16) 0x7013u)) >> 8u) & 0xFFu)), ((vuint8)((((vuint16) 0x7013u)) & 0xFFu)) };
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_EraseMemory [] = { ((vuint8)(((((vuint16) 0xFF00u)) >> 8u) & 0xFFu)), ((vuint8)((((vuint16) 0xFF00u)) & 0xFFu)) };
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_CheckProgDep [] = { ((vuint8)(((((vuint16) 0xFF01u)) >> 8u) & 0xFFu)), ((vuint8)((((vuint16) 0xFF01u)) & 0xFFu)) };
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_StartRoutine [] = { ((vuint8) 0x01u) };
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_TransferDataDownload [] = { ((vuint8) 0x36u) };
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 154 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static vuint8 const kDiagSrvId_TransferDataUpload [] = { ((vuint8) 0x36u) };
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1499 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 1507 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_Root = { &kDiagServiceProperties[kDiagServiceDiagnosticSessionControl] ,(((tCwDataLengthType) 0x00u)) ,(sizeof(kDiagSrvId_DiagnosticSessionControl)/sizeof(kDiagSrvId_DiagnosticSessionControl [0])) ,((kDiagServiceRequestTransferExit - kDiagServiceDiagnosticSessionControl) + 1) };
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_DiagnosticSessionControl = { &kDiagServiceProperties[kDiagServiceDefaultSession] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_DefaultSession)/sizeof(kDiagSrvId_DefaultSession [0])) ,((kDiagServiceProgrammingSession - kDiagServiceDefaultSession) + 1) };
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_EcuReset = { &kDiagServiceProperties[kDiagServiceHardReset] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_HardReset)/sizeof(kDiagSrvId_HardReset [0])) ,((kDiagServiceHardReset - kDiagServiceHardReset) + 1) };
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_SecurityAccess = { &kDiagServiceProperties[kDiagServiceRequestSeed] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_RequestSeed)/sizeof(kDiagSrvId_RequestSeed [0])) ,((kDiagServiceSendKey - kDiagServiceRequestSeed) + 1) };
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_TesterPresent = { &kDiagServiceProperties[kDiagServiceZeroSubFunction] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_ZeroSubFunction)/sizeof(kDiagSrvId_ZeroSubFunction [0])) ,((kDiagServiceZeroSubFunction - kDiagServiceZeroSubFunction) + 1) };
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_RoutineControl = { &kDiagServiceProperties[kDiagServiceActivateSbl] ,(((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))) ,(sizeof(kDiagSrvId_ActivateSbl)/sizeof(kDiagSrvId_ActivateSbl [0])) ,((kDiagServiceCheckProgDep - kDiagServiceActivateSbl) + 1) };
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_TransferData = { &kDiagServiceProperties[kDiagServiceTransferDataDownload] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_TransferDataDownload)/sizeof(kDiagSrvId_TransferDataDownload [0])) ,((kDiagServiceTransferDataUpload - kDiagServiceTransferDataDownload) + 1) };
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_ActivateSbl = { &kDiagServiceProperties[kDiagServiceStartRoutine] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_StartRoutine)/sizeof(kDiagSrvId_StartRoutine [0])) ,((kDiagServiceStartRoutine - kDiagServiceStartRoutine) + 1) };
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_CheckValidApp = { &kDiagServiceProperties[kDiagServiceStartRoutine] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_StartRoutine)/sizeof(kDiagSrvId_StartRoutine [0])) ,((kDiagServiceStartRoutine - kDiagServiceStartRoutine) + 1) };
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_TokenDownload = { &kDiagServiceProperties[kDiagServiceStartRoutine] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_StartRoutine)/sizeof(kDiagSrvId_StartRoutine [0])) ,((kDiagServiceStartRoutine - kDiagServiceStartRoutine) + 1) };
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_EraseMemory = { &kDiagServiceProperties[kDiagServiceStartRoutine] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_StartRoutine)/sizeof(kDiagSrvId_StartRoutine [0])) ,((kDiagServiceStartRoutine - kDiagServiceStartRoutine) + 1) };
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 374 "../../../../external/BSW/Fbl/fbl_diag.imp"
 static tServiceList const kDiagSubFctTbl_CheckProgDep = { &kDiagServiceProperties[kDiagServiceStartRoutine] ,(((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))) ,(sizeof(kDiagSrvId_StartRoutine)/sizeof(kDiagSrvId_StartRoutine [0])) ,((kDiagServiceStartRoutine - kDiagServiceStartRoutine) + 1) };
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1508 "../../../../external/BSW/Fbl/fbl_diag.c" 2



enum
{

# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_Root,
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_DiagnosticSessionControl,
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_EcuReset,
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_SecurityAccess,
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_TesterPresent,
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_RoutineControl,
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_TransferData,
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_ActivateSbl,
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_CheckValidApp,
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_TokenDownload,
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_EraseMemory,
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 420 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagServiceListHandler_CheckProgDep,
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1515 "../../../../external/BSW/Fbl/fbl_diag.c" 2

  kDiagServiceListHandler_None
};

 static tServiceList const * const kDiagSubFctTblHandler[] =
{

# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_Root,
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_DiagnosticSessionControl,
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_EcuReset,
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_SecurityAccess,
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_TesterPresent,
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_RoutineControl,
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_TransferData,
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_ActivateSbl,
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_CheckValidApp,
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_TokenDownload,
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_EraseMemory,
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 397 "../../../../external/BSW/Fbl/fbl_diag.imp"
&kDiagSubFctTbl_CheckProgDep,
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1523 "../../../../external/BSW/Fbl/fbl_diag.c" 2

   ( tServiceList const *)0
};





 static tServicePropROM const kDiagServicePropertiesROM[] =



{

# 1 "../../../../external/BSW/Fbl/fbl_diag.def" 1
# 210 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_Root ,0u ,(0xFFFFu) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListServiceCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_Root





   },
# 211 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_DiagnosticSessionControl ,((tCwDataLengthType) 0x01u) ,(0xFFFFu) ,(0x00u | 0x00u | 0x04u | 0x08u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListSubFctCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_DiagnosticSessionControl





   },
# 216 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_EcuReset ,((tCwDataLengthType) 0x01u) ,(0xFFFFu) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListSubFctCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_EcuReset





   },
# 219 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_SecurityAccess ,((tCwDataLengthType) 0x01u) ,(0xFFFFu) ,(0x00u | 0x02u | 0x00u | 0x00u | 0x10u) ,kServiceMainHandlerNone ,kServiceCheckListSubFctCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_SecurityAccess





   },
# 222 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_TesterPresent ,((tCwDataLengthType) 0x01u) ,(0xFFFFu) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListSubFctCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_TesterPresent





   },
# 225 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_ReadDataByIdentifier ,((tCwDataLengthType) 0x02u) ,((tCwDataLengthType) ((5) * 2u)) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerReadDataById ,kServiceCheckListNonSubFctCheck
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 228 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_WriteDataByIdentifier ,((tCwDataLengthType) 0x03u) ,(0xFFFFu) ,(0x01u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerWriteDataById ,kServiceCheckListNonSubFctCheck
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 232 "../../../../external/BSW/Fbl/fbl_diag.def" 2







# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_RoutineControl ,((tCwDataLengthType) 0x03u) ,(0xFFFFu) ,(0x01u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListSubRoutineCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_RoutineControl





   },
# 240 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_RequestDownload ,((tCwDataLengthType) 0x02u) + ((vuint8) 0x04u) + ((vuint8) 0x04u) ,((tCwDataLengthType) 0x02u) + ((vuint8) 0x04u) + ((vuint8) 0x04u) ,(0x01u | 0x00u | 0x04u | 0x08u | 0x10u) ,kServiceMainHandlerRequestDownload ,kServiceCheckListNonSubFctCheck
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 243 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_RequestUpload ,((tCwDataLengthType) 0x02u) + ((vuint8) 0x04u) + ((vuint8) 0x04u) ,((tCwDataLengthType) 0x02u) + ((vuint8) 0x04u) + ((vuint8) 0x04u) ,(0x01u | 0x02u | 0x04u | 0x08u | 0x10u) ,kServiceMainHandlerRequestUpload ,kServiceCheckListNonSubFctCheck
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 247 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_TransferData ,((tCwDataLengthType) 0x01u) ,(0xFFFFu) ,(0x01u | 0x00u | 0x00u | 0x08u | 0x10u) ,kServiceMainHandlerNone ,kServiceCheckListTransferDataCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_TransferData





   },
# 250 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_RequestTransferExit ,((tCwDataLengthType) 0x00u) ,((tCwDataLengthType) 0x00u) ,(0x01u | 0x00u | 0x04u | 0x08u | 0x10u) ,kServiceMainHandlerRequestTransferExit ,kServiceCheckListNonSubFctCheck
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 253 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 268 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_DefaultSession ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerDefaultSession ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 269 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_ProgrammingSession ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerProgrammingSession ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 272 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_HardReset ,((tCwDataLengthType) 0x01u) ,((tCwDataLengthType) 0x01u) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerEcuReset ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 275 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_RequestSeed ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) ,(0x00u | 0x00u | 0x04u | 0x08u | 0x00u) ,kServiceMainHandlerSecAccessSeed ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 278 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_SendKey ,((tCwDataLengthType) (0x01u+((SEC_KEY_LENGTH)))) ,((tCwDataLengthType) (0x01u+((SEC_KEY_LENGTH)))) ,(0x01u | 0x00u | 0x04u | 0x08u | 0x00u) ,kServiceMainHandlerSecAccessKey ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 281 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_ZeroSubFunction ,((tCwDataLengthType) 0x01u) ,((tCwDataLengthType) 0x01u) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerTesterPresent ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 284 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_ActivateSbl ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x04u))) ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x04u))) ,(0x01u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerRcActivateSbl ,kServiceCheckListRcTypeCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_ActivateSbl





   },
# 287 "../../../../external/BSW/Fbl/fbl_diag.def" 2



# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_CheckValidApp ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u))) ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u))) ,(0x00u | 0x00u | 0x04u | 0x00u | 0x00u) ,kServiceMainHandlerRcCheckValidApp ,kServiceCheckListRcTypeCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_CheckValidApp





   },
# 291 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_TokenDownload ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u) + 80u)) ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u) + 1899u)) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerRcTokenDownload ,kServiceCheckListRcTypeCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_TokenDownload





   },
# 296 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 306 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_EraseMemory ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x00u)+((tCwDataLengthType) 0x04u)+((tCwDataLengthType) 0x04u))) ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x00u)+((tCwDataLengthType) 0x04u)+((tCwDataLengthType) 0x04u))) ,(0x01u | 0x00u | 0x00u | 0x08u | 0x00u) ,kServiceMainHandlerRcEraseMemory ,kServiceCheckListRcTypeCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_EraseMemory





   },
# 307 "../../../../external/BSW/Fbl/fbl_diag.def" 2

# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_CheckProgDep ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x04u)+((tCwDataLengthType) 0x04u))) ,((tCwDataLengthType) (((tCwDataLengthType) 0x03u)+((tCwDataLengthType) 0x04u)+((tCwDataLengthType) 0x04u))) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerRcCheckProgDep ,kServiceCheckListRcTypeCheck
# 333 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_CheckProgDep





   },
# 309 "../../../../external/BSW/Fbl/fbl_diag.def" 2




# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_StartRoutine ,((tCwDataLengthType) 0x03u) ,(0xFFFFu) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerNone ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 314 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 322 "../../../../external/BSW/Fbl/fbl_diag.def"
# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_TransferDataDownload ,((tCwDataLengthType) 0x02u) ,(2050u - 1u) ,(0x00u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerTransferDataDownload ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 323 "../../../../external/BSW/Fbl/fbl_diag.def" 2


# 1 "../../../../external/BSW/Fbl/fbl_diag.imp" 1
# 248 "../../../../external/BSW/Fbl/fbl_diag.imp"
   {
# 321 "../../../../external/BSW/Fbl/fbl_diag.imp"
kDiagSrvId_TransferDataUpload ,((tCwDataLengthType) 0x01u) ,((tCwDataLengthType) 0x01u) ,(0x01u | 0x00u | 0x00u | 0x00u | 0x00u) ,kServiceMainHandlerTransferDataUpload ,kServiceCheckListNone
# 335 "../../../../external/BSW/Fbl/fbl_diag.imp"
      ,kDiagServiceListHandler_None



   },
# 326 "../../../../external/BSW/Fbl/fbl_diag.def" 2
# 1538 "../../../../external/BSW/Fbl/fbl_diag.c" 2

};
# 1550 "../../../../external/BSW/Fbl/fbl_diag.c"
# 1 "Include/MemMap.h" 1
# 3519 "Include/MemMap.h"
#pragma section
# 1551 "../../../../external/BSW/Fbl/fbl_diag.c" 2






# 1 "Include/MemMap.h" 1
# 1558 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 1628 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagErrorHandlerExecMainHandler( const tServiceProp *properties, vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;

   result = 0x01u;
   if (properties->mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
   {
      result = (kServiceMainHandlerFctTable[properties->mainHandlerIdx])(pbDiagBuffer, diagReqDataLen);
   }

   return result;
}
# 1655 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagSearchService( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   tServiceList const * localSubServices;
   ptServiceProp subSrvLst = 0;
   ptServiceProp subService = 0;

   vuint8 curPos;
   vuint8 subSrvIdx;
   tFblResult valid;
   tFblResult found;



   (void)length;


   localSubServices = properties->subServices;
   subSrvLst = localSubServices->list;

   found = 0x01u;
   for (subSrvIdx = 0; subSrvIdx < localSubServices->count; subSrvIdx++)
   {
      subService = &subSrvLst[subSrvIdx];

      valid = 0x00u;
      for (curPos = 0; curPos < localSubServices->idSize; curPos++)
      {
         if (subService->serviceId[curPos] != pbDiagBuffer[position + curPos])
         {
            valid = 0x01u;

            break;
         }
      }

      if (valid == 0x00u)
      {
         found = 0x00u;
         *result = subService;

         break;
      }
   }

   return found;
}
# 1717 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckState( const tServiceProp *properties, vuint8 *pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, tStateBitmap const * stateMask, ptServiceProp * result)
{
   vuint8 idx, valid;
   tStateBitmap maskedState;



   (void)pbDiagBuffer;
   (void)length;
   (void)position;
   (void)result;

   valid = 0x00u;


   idx = 0u;



   {

      maskedState = properties->states[0][idx] & stateMask[idx];


      if ((maskedState != (tStateBitmap)(0x00000000uL)) && ((maskedState & fblStates[idx]) != maskedState))
      {

         valid = 0x01u;
      }
      else
      {

         maskedState = properties->states[1][idx] & stateMask[idx];


         if ((maskedState != (tStateBitmap)(0x00000000uL)) && ((maskedState & fblStates[idx]) != (tStateBitmap)(0x00000000uL)))
         {

            valid = 0x01u;
         }
      }
   }






   return valid;
}
# 1781 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckSession( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSessions, result);
}
# 1799 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckFunctional( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskFunctional, result);
}
# 1817 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckSecurityAccess( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSecurityAccess, result);
}
# 1835 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckSequenceError( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskSequenceError, result);
}
# 1853 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckGeneralConditions( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   return FblDiagCheckState(properties, pbDiagBuffer, length, position, kDiagStateMaskGeneralConditions, result);
}
# 1872 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckLength( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   vuint8 valid;



   (void)pbDiagBuffer;
   (void)position;
   (void)result;

   valid = 0x00u;

   if ((properties->minLength > 0u) && (length < properties->minLength))
   {
      valid = 0x01u;
   }

   if (length > properties->maxLength)
   {
      valid = 0x01u;
   }

   return valid;
}
# 1912 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckSuppressPosRsp( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{


   (void)properties;
   (void)length;
   (void)result;


   CheckSuppressPosRspMsgIndication(&pbDiagBuffer[position]);

   return 0x00u;
}
# 1941 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckTransferMode( const tServiceProp * properties, vuint8 * pbDiagBuffer, tCwDataLengthType length, tCwDataLengthType position, ptServiceProp * result )
{
   tServiceList const * localSubServices;
   ptServiceProp subSrvLst = 0;
   ptServiceProp subService = 0;
   vuint8 subSrvIdx;
   vuint8 found;



   (void)pbDiagBuffer;
   (void)length;
   (void)position;


   localSubServices = properties->subServices;
   subSrvLst = localSubServices->list;

   found = 0x01u;
   for (subSrvIdx = 0; (subSrvIdx < localSubServices->count) && (found != 0x00u); subSrvIdx++)
   {
      subService = &subSrvLst[subSrvIdx];
      if ((((subService->states[0])[((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] & ((tStateBitmap)(1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))) == (((fblStates)[(((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
      {
         found = 0x00u;
      }
   }

   if (found == 0x00u)
   {
      *result = subService;
   }

   return found;
}
# 2144 "../../../../external/BSW/Fbl/fbl_diag.c"
static void FblDiagSetState (const tStateBitmap * state)
{
   vuint8 idx;


   idx = 0u;



   {
      fblStates[idx] |= state[idx];
   }
}







static void FblDiagClrState (const tStateBitmap * state)
{
   vuint8 idx;


   idx = 0u;



   {
      fblStates[idx] &= ((tStateBitmap)~((tStateBitmap)(state[idx])));
   }
}







static void FblDiagRetainState ( tStateBitmap const * state)
{
   vuint8 idx;



   idx = 0u;



   {
      fblStates[idx] &= state[idx];
   }


   for ( ; idx < (sizeof(fblStates) / sizeof((fblStates)[0])); idx++)
   {
      fblStates[idx] = 0;
   }
}
# 2213 "../../../../external/BSW/Fbl/fbl_diag.c"
static vuint8 FblDiagGetSessionIndex(vuint8 diagnosticSessionType)
{
   vuint8 sessionIdx;

   for (sessionIdx = 0u; sessionIdx < kDiagNumberOfSessions; sessionIdx++)
   {
      if (kDiagSessionParameters[sessionIdx].sessionType == diagnosticSessionType)
      {

         break;
      }
   }

   if (sessionIdx == kDiagNumberOfSessions)
   {




      if (!(0u)) ApplFblFatalError((0xA0u));
      sessionIdx = ((vuint8)0xFFu);
   }

   return sessionIdx;
}



# 1 "Include/MemMap.h" 1
# 2242 "../../../../external/BSW/Fbl/fbl_diag.c" 2




# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 2247 "../../../../external/BSW/Fbl/fbl_diag.c" 2






static void DiagResetResponseHandling( void )
{
   (diagErrorCode = ((vuint8) 0x00u));


   if (!(((fblStates)[((((0u))) / 32u)] & ((tStateBitmap)(1uL << ((((0u))) % 32u)))) == ((tStateBitmap)(1uL << ((((0u))) % 32u)))))
   {
      (testerPresentTimeout = (vuint16)(((vuint32) 5000u)/1u));
   }


   ((fblStates)[((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


   ((fblStates)[(((((((0u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));

}
# 2278 "../../../../external/BSW/Fbl/fbl_diag.c"
void DiagExRCRResponsePending( vuint8 forceSend )
{
   static vuint8 rcrrpDiagBuffer[3];

   if ((((fblStates)[((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      if ((((P2Timeout) > 0x00u) && ((P2Timer) < ((P2Timeout)))) || (forceSend == ((vuint8) 0x01u)))
      {

         rcrrpDiagBuffer[0] = ((vuint8) 0x7Fu);
         rcrrpDiagBuffer[1] = diagServiceCurrent;
         rcrrpDiagBuffer[2] = ((vuint8) 0x78u);
         FblCwTransmitRP(rcrrpDiagBuffer);


         (P2Timer = ((5000u / 1u)));
         (P2Timeout = ((((5000u / 1u)) > 0x01u) ? (((5000u / 1u)) / 0x02u) : 0x01u));



         ((fblStates)[((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


         ((fblStates)[(((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
      }
   }
}

# 1 "Include/MemMap.h" 1
# 3491 "Include/MemMap.h"
#pragma section
# 2307 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 2310 "../../../../external/BSW/Fbl/fbl_diag.c" 2







static vuint8 * FblDiagMemGetActiveBuffer(void)
{
   DiagBuffer = FblMemGetActiveBuffer();
   return DiagBuffer;
}






static void DiagDiscardReception( void )
{
   ((fblStates)[((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));

   FblCwDiscardReception();

   ((fblStates)[((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
}
# 2346 "../../../../external/BSW/Fbl/fbl_diag.c"
void DiagResponseProcessor( tCwDataLengthType dataLength )
{
   ((fblStates)[(((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
   ((fblStates)[(((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
   (P2Timer = 0x00u);
   (P2Timeout = 0x00u);
   DiagDiscardReception();
   (errStatLastServiceId = (diagServiceCurrent));

   if ((diagErrorCode) != ((vuint8) 0x00u))
   {
      if ((((fblStates)[((((((((0u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u))) % 32u))))
           && (((diagErrorCode) == ((vuint8) 0x11u))
           || ((diagErrorCode) == ((vuint8) 0x7Fu))
           || ((diagErrorCode) == ((vuint8) 0x12u))
           || ((diagErrorCode) == ((vuint8) 0x7Eu))
           || ((diagErrorCode) == ((vuint8) 0x31u))
         ))
      {




         DiagResetResponseHandling();
         FblCwResetRxBlock();
      }
      else
      {

         DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] = diagServiceCurrent;
         DiagBuffer[((tCwDataLengthType) 0x00u)] = ((vuint8) 0x7Fu);
         DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))] = (diagErrorCode);


         FblCwTransmit(DiagBuffer, 3, kFblCwTxCallNegResponse );
      }

      (diagErrorCode = ((vuint8) 0x00u));
   }
   else if (diagResponseFlag == ((vuint8) 0x01u))
   {
      if (!(((fblStates)[(((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
      {

         DiagBuffer[((tCwDataLengthType) 0x00u)] = (vuint8)(diagServiceCurrent + 0x40u);


         FblCwTransmit(DiagBuffer, (tCwDataLengthType)(dataLength + 1u), kFblCwTxCallPosResponse);
      }
      else
      {
         DiagResetResponseHandling();
         FblCwResetRxBlock();
         ((fblStates)[((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


         if ((((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
         {

            ((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
         }
      }
   }
   else
   {

      DiagResetResponseHandling();
      FblCwResetRxBlock();
      ((fblStates)[((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


      if ((((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
      {

         ((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
      }
   }


   ((fblStates)[((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
}
# 2435 "../../../../external/BSW/Fbl/fbl_diag.c"
vuint8 FblRealTimeSupport( void )
{
   vuint8 returnCode;

   returnCode = FblLookForWatchdog();

   DiagExRCRResponsePending(((vuint8) 0x00u));

   return returnCode;
}







static void FblDiagInitStateTables ( void )
{
   vuint8 idx;
   vuint16 bitmapIdx;
   vuint8 stateIdx;
   vuint8 stateArrIdx;
   vuint8 stateMask;
   static tStateBitmap const * sourceState;
   static tStateBitmap * targetState;

   bitmapIdx = 0;

   for (idx = 0; idx < (sizeof(kDiagServicePropertiesROM)/sizeof(kDiagServicePropertiesROM[0])); idx++)
   {

      kDiagServiceProperties[idx].subServices = kDiagSubFctTblHandler[kDiagServicePropertiesROM[idx].subServicesHandler];



      kDiagServiceProperties[idx].serviceId = kDiagServicePropertiesROM[idx].serviceId;




      kDiagServiceProperties[idx].minLength = kDiagServicePropertiesROM[idx].minLength;
      kDiagServiceProperties[idx].maxLength = kDiagServicePropertiesROM[idx].maxLength;
      kDiagServiceProperties[idx].mainHandlerIdx = kDiagServicePropertiesROM[idx].mainHandlerIdx;

      kDiagServiceProperties[idx].checkListIdx = kDiagServicePropertiesROM[idx].checkListIdx;



      stateMask = 0x01;


      for (stateArrIdx = 0; stateArrIdx < (2u + 3u); stateArrIdx++)
      {

         targetState = kDiagServiceProperties[idx].states[stateArrIdx];
# 2517 "../../../../external/BSW/Fbl/fbl_diag.c"
         if ((kDiagServicePropertiesROM[idx].stateUsage & stateMask) == stateMask)
         {
            sourceState = &kDiagStateBitmaps[bitmapIdx];
            bitmapIdx += ((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) - 1u) / 32u) + 1u);
         }
         else
         {
            sourceState = kDiagStateMaskReset;
         }


         stateIdx = 0;



         {
            targetState[stateIdx] = sourceState[stateIdx];
         }

         stateMask <<= 1;
      }
   }
}







static void FblDiagInitDownloadSequence( void )
{
   vuint8 blockIdx;


   transferRemainder = 0u;
   transferType = ((vuint8) 0x10u);
   expectedSequenceCnt = 0u;
   lastErasedBlock = 0xFFu;


   FblDiagSegmentInit();


   currentBlock = 0xFFu;

   for (blockIdx = 0u; blockIdx < 5u; blockIdx++)
   {
      blockHeader[blockIdx].state = kBlockState_Init;
      blockHeader[blockIdx].nrOfSegments = 0u;
   }


   (void)ApplFblSecurityInit();
   diagCurrentSecLvl = (((vuint8) 0x00u));





}






void FblDiagInitPowerOn( void )
{
   vuint8 idx;

   for (idx = 0u; idx < (sizeof(fblStates)/sizeof(fblStates[0])); idx++)
   {
      fblStates[idx] = (tStateBitmap)0x00u;
   }

   transferRemainder = 0u;
   transferType = ((vuint8) 0x10u);
   expectedSequenceCnt = 0u;
   memSegment = -1;
   diagResponseFlag = ((vuint8) 0x01u);


   FblLbtInitPowerOn();

   (diagErrorCode = ((vuint8) 0x00u));

   { ((fblStates)[(((0u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)((((((tStateBitmap)(0xFFFFFFFFuL)) >> ((((0u))) % 32u)) << ((((0u))) % 32u)) ^ ((((tStateBitmap)(0xFFFFFFFFuL)) >> ((((((0u) + 1u))) + 1u) % 32u)) << ((((((0u) + 1u))) + 1u) % 32u))))))); ((fblStates)[(((0u)) / 32u)] |= ((tStateBitmap)(1uL << (((0u)) % 32u)))); (currentDiagSessionIndex = FblDiagGetSessionIndex(((vuint8) 0x01u))); };


   (testerPresentTimeout = 0);


   (P2Timer = 0x00u);

   (P2Timeout = 0x00u);

   ApplFblResetVfp();


   (void)SecM_InitPowerOn(0);



   ApplFblInitErrStatus();

}







void FblDiagInit( void )
{


   vuint32 idx;



   DiagBuffer = FblMemInitPowerOn();


   FblDiagInitStateTables();



   FblDiagSetProperties(&kDiagServiceProperties[0], &serviceProperties);

   (ecuResetTimeout = 0);


   FblCwSetTxInit();
# 2664 "../../../../external/BSW/Fbl/fbl_diag.c"
   for(idx = 0u; idx < 1899u; idx++)
   {
      tokenBuffer[idx] = 0u;
   }




   (void)SecM_InitVerification(0);



   verifyParam.segmentList.segmentInfo = verifySegmentInfo;


   (void)RamDriver_InitSync(0);


   FblDiagInitDownloadSequence();

}






vuint8 FblDiagGetLastErasedBlock( void )
{
   return lastErasedBlock;
}







void FblDiagSetLastErasedBlock( vuint8 blockNr )
{
   lastErasedBlock = blockNr;
}
# 2714 "../../../../external/BSW/Fbl/fbl_diag.c"
void CheckSuppressPosRspMsgIndication( vuint8 *subparam )
{
   if (((*(subparam)) & (((vuint8) 0x80u))) != 0u)
   {
      ((fblStates)[((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
      (*(subparam)) &= ((vuint8)~((vuint8)(((vuint8) 0x80u))));
   }
}






static void FblDiagSegmentInit( void )
{
   currentSegment = ((vuint8) 0xFFu);
   diagSegmentList.nrOfSegments = 0u;
}
# 2744 "../../../../external/BSW/Fbl/fbl_diag.c"
static vuint8 FblDiagSegmentNext( tFblDiagAddr segAddr, tFblLength segLength, vuint8 blockIdx )
{
   vuint8 result;


   if (diagSegmentList.nrOfSegments < 16u)
   {
      currentSegment = diagSegmentList.nrOfSegments;


      diagSegmentList.segmentInfo[currentSegment].targetAddress = ((segAddr));
      diagSegmentList.segmentInfo[currentSegment].length = segLength;


      blockHeader[blockIdx].segmentIdx[blockHeader[blockIdx].nrOfSegments] = currentSegment;


      diagSegmentList.nrOfSegments++;
      blockHeader[blockIdx].nrOfSegments++;


      result = currentSegment;
   }
   else
   {

      result = ((vuint8) 0xFFu);
   }

   return result;
}
# 2783 "../../../../external/BSW/Fbl/fbl_diag.c"
static tCwDataLengthType FblDiagGetMaxTransferDataBlockLength(void)
{
   tCwDataLengthType maxBlockLength;


   maxBlockLength = FblCwGetPayloadLimit();


   if (2050u < maxBlockLength)
   {
      maxBlockLength = 2050u;
   }







   return maxBlockLength;
}







void FblDiagPostInit( void )
{
   if ( (FblMainGetStartFromAppl())
        && (0x00u == FblCwPrepareResponseAddress()))
   {
      if (FblDiagRxGetPhysBuffer(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) + 1u) == DiagBuffer)
      {


         FblCwSetRxBlock();


         ((fblStates)[((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));


         diagServiceCurrent = ((vuint8) 0x10u);
         DiagBuffer[((tCwDataLengthType) 0x00u)] = ((vuint8) 0x10u);
         DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] = ((vuint8) 0x02u);

         DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] |= 0x80u;
         DiagDataLength = ((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u)));



         FblDiagRxStartIndication();
         FblDiagRxIndication(DiagBuffer, DiagDataLength + 1u);
      }
   }
}
# 2852 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagSessionTransition( vuint8 *pbDiagBuffer, tCwDataLengthType diagReqDataLen)
{
   tFblResult result = 0x00u;



   (void)pbDiagBuffer;
   (void)diagReqDataLen;



   ((fblStates)[(((((0u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((0u) + 1u) + 1u)) % 32u)))))));
   ((fblStates)[((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
   ((fblStates)[(((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));

   FblDiagInitDownloadSequence();


   return result;
}
# 2881 "../../../../external/BSW/Fbl/fbl_diag.c"
static void FblDiagSessionControlParamInit( vuint8 *pbDiagBuffer, tCwDataLengthType diagReqDataLen)
{


   (void)diagReqDataLen;







   (currentDiagSessionIndex = FblDiagGetSessionIndex(pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))]));


   pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u)) + 1u] = (vuint8)((kDiagSessionParameters[currentDiagSessionIndex].p2Timing) >> 8u);
   pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u)) + 2u] = (vuint8) (kDiagSessionParameters[currentDiagSessionIndex].p2Timing);
   pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u)) + 3u] = (vuint8)((kDiagSessionParameters[currentDiagSessionIndex].p2StarTiming) >> 8u);
   pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u)) + 4u] = (vuint8) (kDiagSessionParameters[currentDiagSessionIndex].p2StarTiming);
}
# 2914 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerDefaultSession( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{



   FblDiagSessionControlParamInit(pbDiagBuffer, diagReqDataLen);


   FblDiagEcuReset(((vuint8) 0x01u), 0x01u);



   return 0x00u;
}
# 2940 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerProgrammingSession( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;
   vuint8 * localPbDiagBuffer;



   (void)pbDiagBuffer;



   DiagBuffer = FblMemInit();
   localPbDiagBuffer = DiagBuffer;


   FblDeinitMemoryDriver();


   FblDiagSessionControlParamInit(localPbDiagBuffer, diagReqDataLen);





   { ((fblStates)[(((0u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)((((((tStateBitmap)(0xFFFFFFFFuL)) >> ((((0u))) % 32u)) << ((((0u))) % 32u)) ^ ((((tStateBitmap)(0xFFFFFFFFuL)) >> ((((((0u) + 1u))) + 1u) % 32u)) << ((((((0u) + 1u))) + 1u) % 32u))))))); ((fblStates)[((((0u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((0u) + 1u)) % 32u)))); (currentDiagSessionIndex = FblDiagGetSessionIndex(((vuint8) 0x02u))); };


   DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x04u))));


   result = FblDiagSessionTransition(localPbDiagBuffer, diagReqDataLen);


   return result;
}
# 2987 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerTesterPresent( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{


   (void)pbDiagBuffer;
   (void)diagReqDataLen;



   DiagResponseProcessor(((tCwDataLengthType) 0x01u));

   return 0x00u;
}
# 3012 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerEcuReset( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{


   (void)pbDiagBuffer;
   (void)diagReqDataLen;


   FblDiagEcuReset(((vuint8) 0x01u), 0x02u);


   return 0x00u;
}
# 3074 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRcActivateSbl( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   IO_ErrorType memErrorCode;
   tFblResult result;
   tBlockDescriptor blockDescriptor;



   (void)diagReqDataLen;



   DiagExRCRResponsePending(((vuint8) 0x01u));

   result = FblLbtGetBlockDescriptorByNr(0u, &blockDescriptor);

   if (0x00u == result)
   {

      result = ApplFblValidateBlock(blockDescriptor);
   }

   if (0x00u == result)
   {

      blockHeader[0u].state = kBlockState_Verified;


      { errStatFlashDrvVersion[0] = flashCode[0]; errStatFlashDrvVersion[1] = flashCode[1]; errStatFlashDrvVersion[2] = flashCode[3]; };


      ApplFblSetVfp();


      if (!(((diagErrorCode) == ((vuint8) 0x00u)))) ApplFblFatalError((0xE1u));


      FblCwSetOfflineMode();
      memErrorCode = MemDriver_InitSync(0);
      FblCwSetOnlineMode();





      if (memErrorCode == 0x00u)
      {

         ((fblStates)[((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));


         transferType = ((vuint8) 0x40u);

         result = 0x00u;
      }
      else
      {

         result = 0x01u;
         (errStatErrorCode = (((vuint8) 0x30u)));
         (errStatFlashDrvErrorCode = (memErrorCode));


         ApplFblResetVfp();


         if (!(((diagErrorCode) == ((vuint8) 0x00u)))) ApplFblFatalError((0xE1u));
      }
   }

   if (result == 0x00u)
   {

      pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))] = (vuint8)((((vuint8) 0x01u) << 4u) | ((vuint8) 0x00u));
   }
   else
   {

      (diagErrorCode = (((vuint8) 0x22u)));
   }


   DiagResponseProcessor(((tCwDataLengthType) (0x03u+((tCwDataLengthType) 0x01u))));

   return result;
}
# 3174 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRcCheckValidApp( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;
   tFblLbtBlockFilter blockFilter;
   tBlockDescriptor iterBlock;
   tDiagSegmentList localSegmentList;
   FL_SegmentListType localSegmentListSB;
   FL_SegmentInfoType segListPerBlock[16u];
   vuint8 idxSeg;



   (void)diagReqDataLen;



   result = 0x00u;

   localSegmentList.nrOfSegments = 0u;
   for(idxSeg = 0u; idxSeg < 16u; idxSeg++)
   {
      localSegmentList.segmentInfo[idxSeg].targetAddress = 0u;
      localSegmentList.segmentInfo[idxSeg].length = 0u;
   }


   if ((0xFFu != currentBlock) && (0u != currentBlock))
   {

      DiagExRCRResponsePending(((vuint8) 0x01u));


      FblLbtBlockFilterInit(&blockFilter);
      FblLbtBlockFilterSetBlockType(&blockFilter, 0x0000009Au);
      iterBlock = FblLbtBlockFirst(&blockFilter);
      while (FblLbtBlockDone() == 0u)
      {

         if (0x00u == ApplFblValidateBlock(iterBlock))
         {
            if (blockHeader[iterBlock.blockNr].state == kBlockState_Erased)
            {

               (void)FblDiagGetSegmentList(iterBlock.blockNr, &localSegmentList);

               for(idxSeg = 0u; idxSeg < localSegmentList.nrOfSegments; idxSeg++)
               {
                  segListPerBlock[idxSeg].transferredAddress = localSegmentList.segmentInfo[idxSeg].targetAddress;
                  segListPerBlock[idxSeg].targetAddress = localSegmentList.segmentInfo[idxSeg].targetAddress;
                  segListPerBlock[idxSeg].length = localSegmentList.segmentInfo[idxSeg].length;
               }

               localSegmentListSB.nrOfSegments = localSegmentList.nrOfSegments;
               localSegmentListSB.segmentInfo = segListPerBlock;


               if (ApplFblUpdateBlockMac(&iterBlock, &localSegmentListSB) == 0x00u)
               {

                  blockHeader[iterBlock.blockNr].state = kBlockState_Verified;
               }
               else
               {

                  if (iterBlock.mandatoryType == 1u)
                  {

                     result = 0x01u;
                  }
               }
            }
            else
            {

               blockHeader[iterBlock.blockNr].state = kBlockState_Verified;
            }
         }
         else
         {

            if (iterBlock.mandatoryType == 1u)
            {

               result = 0x01u;
            }
         }


         iterBlock = FblLbtBlockNext();
      }

      if (0x00u == result)
      {





         result = ApplFblValidateApp();
      }
# 3286 "../../../../external/BSW/Fbl/fbl_diag.c"
      if (!(((result == 0x00u) && ((diagErrorCode) == ((vuint8) 0x00u))) || ((result != 0x00u) && ((diagErrorCode) == ((vuint8) 0x00u))) || ((result != 0x00u) && ((diagErrorCode) != ((vuint8) 0x00u))))) ApplFblFatalError((0xE1u))


                                                    ;

   }


   if ((diagErrorCode) == ((vuint8) 0x00u))
   {

      if (ApplFblIsValidApp() != 1u)
      {
         pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))+0x01u))] = ((vuint8) 0x01u);
      }
      else
      {
         pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))+0x01u))] = ((vuint8) 0x02u);
      }


      pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))] = (vuint8)((((vuint8) 0x01u) << 4) | ((vuint8) 0x00u));


      DiagResponseProcessor(((tCwDataLengthType) (0x03u+((tCwDataLengthType) 0x02u))));
   }
   else
   {

      result = 0x01u;
   }


   return result;
}
# 3336 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRcTokenDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   SecM_SignatureParamType verifyToken;
   SecM_AsymKeyType keyChangeKey;
   vuint8 *tokenBufferPtr;
   tTokenHdlResult resultTkn;
   tFblResult result;
   vuint8 cmdType;
   vuint16 tokenLength;

   resultTkn = kTokenHdlrOk;

   tokenLength = diagReqDataLen - 3u;
   tokenBufferPtr = &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))];

   verifyTokenSignLength = tokenLength - SEC_SIZE_SIG_RSA2048;

   cmdType = ((tokenBufferPtr)[35u]);


   if (cmdType == 0u)
   {

      if ( (tokenLength != 80u) &&
           (tokenLength != (80u + SEC_SIZE_SIG_RSA2048)) )
      {
         (diagErrorCode = (((vuint8) 0x13u)));
         resultTkn = kTokenHdlrInternalFailed;
      }
   }
   else if (cmdType == 5u)
   {

      if (tokenLength != 1899u)
      {
         (diagErrorCode = (((vuint8) 0x13u)));
         resultTkn = kTokenHdlrInternalFailed;
      }
   }
   else
   {

      if (tokenLength != (80u + SEC_SIZE_SIG_RSA2048))
      {
         (diagErrorCode = (((vuint8) 0x13u)));
         resultTkn = kTokenHdlrInternalFailed;
      }
   }


   if ((cmdType != 0u) && (resultTkn == kTokenHdlrOk))
   {



      verifyToken.currentHash.sigResultBuffer = (SecM_ResultBufferType)SEC_DEFAULT_WORKSPACE;
      verifyToken.currentHash.length = SEC_DEFAULT_WORKSPACE_SIZE;
      verifyToken.currentDataLength = 0;
      verifyToken.sigSourceBuffer = tokenBufferPtr;
      verifyToken.sigByteCount = verifyTokenSignLength;
      verifyToken.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport;

      if (((tokenBufferPtr)[36u]) == 0u)
      {

         keyChangeKey.individual.size = sizeof(SecM_RsaKeyChangeExp);
         keyChangeKey.individual.data = SecM_RsaKeyChangeExp;
         keyChangeKey.shared.size = sizeof(SecM_RsaKeyChangeMod);
         keyChangeKey.shared.data = SecM_RsaKeyChangeMod;
         verifyToken.key = (SecM_VerifyKeyType)&keyChangeKey;
      }
      else
      {

         verifyToken.key = 0;
      }

      verifyToken.sigState = SEC_HASH_INIT;
      if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
      {
         resultTkn = kTokenHdlrSignatureFailed;
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_HASH_COMPUTE;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_HASH_FINALIZE;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }

      if (resultTkn == kTokenHdlrOk)
      {
         verifyToken.sigState = SEC_SIG_VERIFY;
         verifyToken.sigSourceBuffer = &tokenBufferPtr[verifyTokenSignLength];
         verifyToken.sigByteCount = SEC_SIZE_SIG_RSA2048;
         if (FblDiagVerifyTokenSignature(&verifyToken) != SECM_VER_OK)
         {
            resultTkn = kTokenHdlrSignatureFailed;
         }
      }
   }


   if (resultTkn == kTokenHdlrOk)
   {
      resultTkn = FblDiagValidateToken(tokenBufferPtr);
   }



   if (resultTkn == kTokenHdlrOk)
   {


      (void)FblOwnMemcpy( (void *)(tokenBuffer), (const void *)(&pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))]), (unsigned int)(tokenLength));
   }


   if ((cmdType != 3u) && (cmdType != 4u))
   {
# 3574 "../../../../external/BSW/Fbl/fbl_diag.c"
      if (resultTkn == kTokenHdlrOk)
      {
         switch (cmdType)
         {
            case 0u:
            {

               ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
               break;
            }
            case 1u:
            {

               ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
               if (ApplFblWriteVerificationKey(0) != 0x00u)
               {
                  resultTkn = kTokenHdlrKeyChangeFailed;

                  ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
               }
               break;
            }
            case 2u:
            {

               ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
               break;
            }
            case 5u:
            {
               vuint8 isDevKeyActive = 0u;
               vuint8 localProdKey[256u + 256u];


               if ((((fblStates)[((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
               {
                  isDevKeyActive = 1u;
               }
               ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


               (void)FblOwnMemcpy( (void *)(localProdKey), (const void *)((&(tokenBuffer)[619u])), (unsigned int)(256u));
               (void)FblOwnMemcpy( (void *)(&localProdKey[256u]), (const void *)((&(tokenBuffer)[875u + 256u - 256u])), (unsigned int)(256u));

               if (ApplFblWriteVerificationKey(localProdKey) != 0x00u)
               {
                  resultTkn = kTokenHdlrKeyChangeFailed;
                  if (isDevKeyActive == 1u)
                  {
                     ((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
                  }
               }
               break;
            }
            default:
            {
               resultTkn = kTokenHdlrInternalFailed;
               break;
            }
         }
      }

   }


   if (resultTkn == kTokenHdlrOk)
   {
      resultTkn = FblDiagTokenCallout(cmdType, tokenBufferPtr, tokenLength);
   }

   if ((diagErrorCode) == ((vuint8) 0x00u))
   {

      pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))] = (vuint8)resultTkn;
      DiagResponseProcessor(((tCwDataLengthType) (0x03u+((tCwDataLengthType) 0x01u))));
      result = 0x00u;
   }
   else
   {
      result = 0x01u;
   }

   return result;
}
# 3731 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRcEraseMemory( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;
   tBlockDescriptor eraseBlockDescriptor = {0};
   tFblMemBlockInfo blockInfo;
   tFblAddress eraseAddress = {0};
   tFblLength eraseLength = {0};



   (void)diagReqDataLen;



   result = 0x00u;

   ((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


   eraseAddress = (tFblAddress)FblMemGetInteger(((tCwDataLengthType) 0x04u), &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))]);
   eraseLength = (tFblLength)FblMemGetInteger(((tCwDataLengthType) 0x04u), &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))+((tCwDataLengthType) 0x04u)))]);


   if (! (((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {

      (diagErrorCode = (((vuint8) 0x22u)));
      result = 0x01u;
   }


   if (result == 0x00u)
   {

      result = FblLbtGetBlockDescriptorByAddressLength(eraseAddress, eraseLength, &eraseBlockDescriptor);
      if ((result != 0x00u)

          || (eraseBlockDescriptor.blockStartAddress != eraseAddress)
          || (eraseBlockDescriptor.blockLength != eraseLength)
         )
      {
         (diagErrorCode = (((vuint8) 0x31u)));
         result = 0x01u;
      }
   }

   if (result == 0x00u)
   {







      {

         DiagExRCRResponsePending(((vuint8) 0x01u));


         result = ApplFblInvalidateBlock(eraseBlockDescriptor);


         if (!(((result == 0x00u) && ((diagErrorCode) == ((vuint8) 0x00u))) || ((result == 0x01u) && ((diagErrorCode) != ((vuint8) 0x00u))))) ApplFblFatalError((0xE1u))

                                                       ;


         if (result == 0x00u)
         {

            blockInfo.targetAddress = eraseBlockDescriptor.blockStartAddress;
            blockInfo.targetLength = eraseBlockDescriptor.blockLength;
            blockInfo.logicalAddress = eraseBlockDescriptor.blockStartAddress;
            blockInfo.logicalLength = eraseBlockDescriptor.blockLength;


            result = FblMemRemapStatus(FblMemBlockEraseIndication(&blockInfo));
         }

         if (result == 0x00u)
         {



         }
      }
   }

   if (result == 0x00u)
   {

      ((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
      lastErasedBlock = eraseBlockDescriptor.blockNr;
      blockHeader[eraseBlockDescriptor.blockNr].state = kBlockState_Erased;
   }


   if ((diagErrorCode) == ((vuint8) 0x00u))
   {

      if (result == 0x00u)
      {
         pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))] = (vuint8)((((vuint8) 0x01u) << 4) | ((vuint8) 0x00u) );

         DiagResponseProcessor(((tCwDataLengthType) (0x03u+((tCwDataLengthType) 0x01u))));
      }
      else
      {

         (diagErrorCode = (((vuint8) 0x72u)));
      }
   }
   else
   {

      result = 0x01u;
   }

   return result;
}
# 3863 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRcCheckProgDep( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblAddress checkStartAddress;
   tFblLength checkLength;
   tFblResult result;
   tFblLbtBlockNr requestedCheckBlock;



   (void)diagReqDataLen;



   checkStartAddress = FblMemGetInteger(((tCwDataLengthType) 0x04u), &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))]);
   checkLength = FblMemGetInteger(((tCwDataLengthType) 0x04u), &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))+((tCwDataLengthType) 0x04u)))]);


   result = FblLbtGetBlockNrByAddressLength(checkStartAddress, checkLength, &requestedCheckBlock);


   if (result != 0x00u)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
   }
   else
   {

      verifySegmentInfo[0].targetAddress = checkStartAddress;
      verifySegmentInfo[0].transferredAddress = checkStartAddress;
      verifySegmentInfo[0].length = checkLength;
      verifyParam.segmentList.nrOfSegments = 1;


      verifyParam.blockStartAddress = checkStartAddress;
      verifyParam.blockLength = checkLength;

      verifyParam.verificationData = verifyOutputBuf;
      verifyParam.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport;

      verifyParam.readMemory = (FL_ReadMemoryFctType)FblReadProm;


      if (SECM_VER_OK == FblDiagVerification(&verifyParam))
      {

         pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))] = (vuint8)((((vuint8) 0x01u) << 4) | ((vuint8) 0x00u));


         (void)FblOwnMemcpy( (void *)(&pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))+0x01u))))+0x01u))]), (const void *)(&verifyOutputBuf[SEC_VERIFY_CLASS_DDD_CHECKSUM_OFFSET]), (unsigned int)(SEC_SIZE_CHECKSUM_CRC));


         DiagResponseProcessor(((tCwDataLengthType) (0x03u+((tCwDataLengthType) 0x03u))));
      }
      else
      {

         (diagErrorCode = (((vuint8) 0x10u)));
         result = 0x01u;
      }
   }

   return result;
}
# 3940 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagSecAccessSeed( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel )
{
   vuint8 returnCode;
   vuint8 i;



   (void)diagReqDataLen;
   (void)secLevel;


   (void)pbDiagBuffer;
# 3961 "../../../../external/BSW/Fbl/fbl_diag.c"
   if (diagCurrentSecLvl != ((vuint8) 0x00u))
   {

      for (i = 0; i < (SEC_SEED_LENGTH); i++)
      {
         pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u)) + i] = 0x00u;
      }


      ((fblStates)[(((((0u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((0u) + 1u) + 1u)) % 32u)))))));
      returnCode = 0x01u;
   }
   else
   {

      if (ApplFblSecuritySeed() == 0x00u)
      {

         returnCode = 0x00u;




      }
      else
      {

         (errStatErrorCode = (((vuint8) 0x24u)));
         (diagErrorCode = (((vuint8) 0x22u)));
         returnCode = 0x01u;
      }
   }
# 4003 "../../../../external/BSW/Fbl/fbl_diag.c"
   DiagResponseProcessor(1u + (SEC_SEED_LENGTH));

   return returnCode;
}
# 4020 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagSecAccessKey( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen, vuint8 secLevel)
{
   vuint8 returnCode;



   (void)diagReqDataLen;
   (void)secLevel;







   ((fblStates)[(((((0u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((0u) + 1u) + 1u)) % 32u)))))));


   returnCode = ApplFblSecurityKey();

   if (returnCode != 0x00u)
   {

      (diagErrorCode = (((vuint8) 0x35u)));
   }
   else
   {
      diagCurrentSecLvl = ((vuint8)(pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] - 1u));
      DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))));
   }

   return returnCode;
}
# 4064 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerSecAccessSeed( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   return FblDiagSecAccessSeed(pbDiagBuffer, diagReqDataLen, ((vuint8) 0x01u));
}
# 4079 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerSecAccessKey( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   return FblDiagSecAccessKey(pbDiagBuffer, diagReqDataLen, ((vuint8) 0x01u));
}
# 4095 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRequestDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   vuint8 lengthFormat = 0u;
   vuint8 addrFormat = 0u;
   tFblLbtBlockNr requestedDownloadBlock = 0u;
   tBlockDescriptor logicalBlockDescriptor = {0};
   tFblLength transferLength = 0u;
   tFblMemSegmentInfo segInfo;
   tFblMemBlockInfo blockInfo;
   tFblResult result;
   tCwDataLengthType maxBlockLength;
   vuint8 * localPbDiagBuffer = 0;




   (void)diagReqDataLen;



   localPbDiagBuffer = pbDiagBuffer;


   dataFormatId = localPbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))];


   if (localPbDiagBuffer[((tCwDataLengthType) 0x02u)] != ((vuint8)(((vuint8) 0x04u) << 4u) | ((vuint8) 0x04u)))
   {
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }

   lengthFormat = ((vuint8) 0x04u);
   addrFormat = ((vuint8) 0x04u);
# 4154 "../../../../external/BSW/Fbl/fbl_diag.c"
   if (((vuint8)((dataFormatId) & ((vuint8) 0x0Fu))) != ((vuint8) 0x00u))
   {
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }
# 4178 "../../../../external/BSW/Fbl/fbl_diag.c"
   expectedSequenceCnt = ((vuint8) 0x01u);

   currentSequenceCnt = ((vuint8) 0x01u);


   transferAddress = (tFblAddress)FblMemGetInteger(addrFormat, &localPbDiagBuffer[((tCwDataLengthType) 0x03u)]);
   transferRemainder = (tFblLength)FblMemGetInteger(lengthFormat, &localPbDiagBuffer[((tCwDataLengthType) 0x03u) + addrFormat]);


   if (transferRemainder == 0u)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }







   if (dataFormatId != ((vuint8) ((((vuint8) 0x00u) << 4u) | ((vuint8) 0x00u))))
   {




      transferLength = 1u;
   }
   else

   {
      transferLength = transferRemainder;
   }


   result = FblLbtGetBlockDescriptorByAddressLength(transferAddress, transferLength, &logicalBlockDescriptor);


   if (result != 0x00u)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }

   requestedDownloadBlock = logicalBlockDescriptor.blockNr;

   if (transferType == ((vuint8) 0x40u))
   {

      if (!(((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
      {
         (diagErrorCode = (((vuint8) 0x22u)));
         return 0x01u;
      }
   }
   else
   {
      if (!(!(((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))) ApplFblFatalError((0xA2u));


      if (requestedDownloadBlock != 0u)
      {

         (diagErrorCode = (((vuint8) 0x31u)));
         return 0x01u;
      }


      if (blockHeader[requestedDownloadBlock].state == kBlockState_Init)
      {


         if (!(3072 == logicalBlockDescriptor.blockLength)) ApplFblFatalError((0x50u));
         if (kFblMemStatus_Ok == FblMemEraseRegion(logicalBlockDescriptor.blockStartAddress, logicalBlockDescriptor.blockLength))
         {
            blockHeader[requestedDownloadBlock].state = kBlockState_Erased;
         }
      }
   }


   if (blockHeader[requestedDownloadBlock].state != kBlockState_Erased)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }

   (void)ApplFblAdjustLbtBlockData(&logicalBlockDescriptor);


   if ((transferAddress + transferLength) > (logicalBlockDescriptor.blockStartAddress + logicalBlockDescriptor.blockLength))
   {
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }


   if (FblDiagSegmentNext(transferAddress, transferRemainder, requestedDownloadBlock) == ((vuint8) 0xFFu))
   {
      (errStatErrorCode = (((vuint8) 0x22u)));
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }




   blockInfo.targetAddress = logicalBlockDescriptor.blockStartAddress;
   blockInfo.targetLength = logicalBlockDescriptor.blockLength;
   blockInfo.logicalAddress = blockInfo.targetAddress;
   blockInfo.logicalLength = blockInfo.targetLength;
   blockInfo.verifyRoutineInput.function = 0;
   blockInfo.verifyRoutineInput.param = 0;
   blockInfo.segmentList = &verifyParam.segmentList;
   blockInfo.maxSegments = 1u;


   if (0 != logicalBlockDescriptor.verifyOutput)
   {

      blockInfo.verifyRoutineOutput.function = FblDiagVerification;
      blockInfo.verifyRoutineOutput.param = &verifyParam;
      blockInfo.verifyRoutinePipe.function = 0;
      blockInfo.verifyRoutinePipe.param = 0;
   }
   else
   {

      pipeVerifyParam.currentHash.sigResultBuffer = (vuint32)pipeVerifyBuf;
      pipeVerifyParam.currentHash.length = sizeof(pipeVerifyBuf);
      pipeVerifyParam.currentDataLength = &pipeVerifyLength;


      pipeVerifyParamCrc.currentHash.sigResultBuffer = (vuint32)&pipeVerifyCrc;
      pipeVerifyParamCrc.currentHash.length = sizeof(pipeVerifyCrc);
      pipeVerifyParamCrc.currentDataLength = &pipeVerifyLengthCrc;
      blockInfo.verifyRoutinePipe.function = FblDiagVerifySignature;



      blockInfo.verifyRoutinePipe.param = &pipeVerifyParam;
      blockInfo.verifyRoutineOutput.function = 0;
      blockInfo.verifyRoutineOutput.param = 0;
   }






   blockInfo.readFct = FblReadProm;


   result = FblMemRemapStatus(FblMemBlockStartIndication(&blockInfo));
   (void)FblDiagMemGetActiveBuffer();
   if (result != ((vuint8) 0x00u))
   {
      (diagErrorCode = (result));
      return 0x01u;
   }


   segInfo.targetAddress = transferAddress;
   segInfo.targetLength = transferRemainder;
   segInfo.logicalAddress = segInfo.targetAddress;
   segInfo.logicalLength = segInfo.targetLength;
   segInfo.type = kFblMemType_ROM;
   segInfo.dataFormat = dataFormatId;


   result = FblMemRemapStatus(FblMemSegmentStartIndication(&segInfo));
   localPbDiagBuffer = FblDiagMemGetActiveBuffer();
   if (result != ((vuint8) 0x00u))
   {
      (diagErrorCode = (result));
      return 0x01u;
   }


   currentBlock = requestedDownloadBlock;






   maxBlockLength = FblDiagGetMaxTransferDataBlockLength();



   if (maxBlockLength > 0xFFFFFFuL)
   {
      lengthFormat = 4u;
   }
   else if (maxBlockLength > 0xFFFFu)
   {
      lengthFormat = 3u;
   }
   else
   {

      lengthFormat = 2u;
   }



   localPbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] = lengthFormat << 4u;
   FblMemSetInteger(lengthFormat, maxBlockLength, &localPbDiagBuffer[((vuint8) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))]);

   DiagResponseProcessor(((tCwDataLengthType) 0x01u) + lengthFormat);


   return 0x00u;
}
# 4408 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerTransferDataDownload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;


   if (pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] != expectedSequenceCnt )
   {

      if (pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] == currentSequenceCnt)
      {




         DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))));

         return 0x00u;
      }
      else
      {

         (diagErrorCode = (((vuint8) 0x73u)));
         return 0x01u;
      }
   }

   result = FblMemRemapStatus(FblMemDataIndication(DiagBuffer, ((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u)), (tFblLength)diagReqDataLen - 1u));
   (void)FblDiagMemGetActiveBuffer();
   if (result != ((vuint8) 0x00u))
   {
      (diagErrorCode = (result));
      ((fblStates)[((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
      return 0x01u;
   }

   transferRemainder -= ((tFblLength)diagReqDataLen - 1u);

   if (transferRemainder == 0u)
   {

      result = FblMemRemapStatus(FblMemSegmentEndIndication(&totalProgramLength));

      if (result != ((vuint8) 0x00u))
      {
         (diagErrorCode = (result));
         return 0x01u;
      }

      result = FblMemRemapStatus(FblMemBlockEndIndication());
      if (result != ((vuint8) 0x00u))
      {
         (diagErrorCode = (result));
         return 0x01u;
      }

   }


   currentSequenceCnt = expectedSequenceCnt;


   expectedSequenceCnt++;

   DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))));
   return 0x00u;
}
# 4487 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRequestUpload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   vuint8 lengthFormat, addrFormat;
   vuint8 requestedUploadBlock;
   tFblResult result;




   (void)diagReqDataLen;





   if (pbDiagBuffer[((tCwDataLengthType) 0x02u)] != ((vuint8)(((vuint8) 0x04u) << 4) | ((vuint8) 0x04u)))
   {
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }

   lengthFormat = ((vuint8) 0x04u);
   addrFormat = ((vuint8) 0x04u);
# 4529 "../../../../external/BSW/Fbl/fbl_diag.c"
   dataFormatId = pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))];


   if (dataFormatId != ((vuint8) ((((vuint8) 0x00u) << 4u) | ((vuint8) 0x00u))))
   {
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }


   transferAddress = (tFblAddress)FblMemGetInteger(addrFormat, &pbDiagBuffer[((tCwDataLengthType) 0x03u)]);
   transferRemainder = (tFblLength)FblMemGetInteger(lengthFormat, &pbDiagBuffer[((tCwDataLengthType) 0x03u) + addrFormat]);


   if (transferRemainder == 0u)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }


   result = FblLbtGetBlockNrByAddressLength(transferAddress, transferRemainder, &requestedUploadBlock);


   if (result != 0x00u)
   {

      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }


   if (FblDiagSegmentNext(transferAddress, transferRemainder, requestedUploadBlock) == ((vuint8) 0xFFu))
   {
      (errStatErrorCode = (((vuint8) 0x22u)));
      (diagErrorCode = (((vuint8) 0x31u)));
      return 0x01u;
   }


   if (!(((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      (diagErrorCode = (((vuint8) 0x22u)));
      return 0x01u;
   }


   expectedSequenceCnt = ((vuint8) 0x01u);

   currentSequenceCnt = ((vuint8) 0x01u);


   maxNumberOfBlockLength = (vuint16)2050u;


   pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] = ((vuint8) 0x02u) << 4u;


   pbDiagBuffer[((vuint8) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))] = (vuint8)((maxNumberOfBlockLength >> 8) & 0xFFu);
   pbDiagBuffer[((vuint8) (((vuint8) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))+0x01u))] = (vuint8)(maxNumberOfBlockLength & 0xFFu);

   DiagResponseProcessor(((tCwDataLengthType) 0x01u) + ((vuint8) 0x02u));

   return 0x00u;
}
# 4607 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerTransferDataUpload( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{

   static tCwDataLengthType transferDataUpLength;


   static vuint8 tmpUploadBuffer[((vuint8) 0x05u)];



   (void)diagReqDataLen;



   if (DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] != expectedSequenceCnt )
   {

      if (DiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))] == currentSequenceCnt)
      {
         vuint32 i;





         for (i = 0u; i < ((vuint8) 0x05u); i++)
         {
            pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u)) + i] = tmpUploadBuffer[i];
         }


         DiagResponseProcessor(transferDataUpLength + 1u);
         return 0x00u;
      }
      else
      {

         (diagErrorCode = (((vuint8) 0x73u)));
         return 0x01u;
      }
   }
   else
   {

      if (transferRemainder == 0u)
      {

         (diagErrorCode = (((vuint8) 0x71u)));
         ((fblStates)[((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
         return 0x01u;
      }
   }


   currentSequenceCnt = expectedSequenceCnt;


   expectedSequenceCnt++;





   if (transferRemainder > ((tFblLength)maxNumberOfBlockLength - ((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))))
   {
      transferDataUpLength = ((tCwDataLengthType)maxNumberOfBlockLength - ((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u)));
   }
   else
   {
      transferDataUpLength = (tCwDataLengthType)transferRemainder;
   }

   transferRemainder -= transferDataUpLength;





   if (FblReadProm(transferAddress, &pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u))], transferDataUpLength) != transferDataUpLength)
   {

      (diagErrorCode = (((vuint8) 0x22u)));
      return 0x01u;
   }
   else
   {
      vuint32 i;

      transferAddress += transferDataUpLength;





      for (i = 0u; i < ((vuint8) 0x05u); i++)
      {
         tmpUploadBuffer[i] = pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))+0x01u)) + i];
      }
   }

   DiagResponseProcessor(transferDataUpLength + 1u);

   return 0x00u;
}
# 4724 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerRequestTransferExit( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;
   tFblMemVerifyStatus verifyResult;
   tFblMemBlockVerifyData verifyData;

   tExportFct exportFct;




   (void)diagReqDataLen;






   if (!(currentSegment != ((vuint8) 0xFFu))) ApplFblFatalError((0xA1u));
   if (!(currentBlock != 0xFFu)) ApplFblFatalError((0xA1u));


   if ((((fblStates)[(((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {

      if (transferRemainder != 0u)
      {
         (diagErrorCode = (((vuint8) 0x24u)));
         return 0x01u;
      }
   }



   DiagExRCRResponsePending(((vuint8) 0x01u));



   if ((((fblStates)[(((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      result = 0x00u;


      verifySegmentInfo[0].targetAddress = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifySegmentInfo[0].transferredAddress = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifySegmentInfo[0].length = diagSegmentList.segmentInfo[currentSegment].length;
      verifyParam.segmentList.nrOfSegments = 1u;


      verifyParam.blockStartAddress = diagSegmentList.segmentInfo[currentSegment].targetAddress;
      verifyParam.blockLength = diagSegmentList.segmentInfo[currentSegment].length;

      verifyParam.verificationData = verifyOutputBuf;
      verifyParam.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport;

      verifyParam.readMemory = (FL_ReadMemoryFctType)FblReadProm;

      if (SECM_VER_OK != FblDiagVerification(&verifyParam))
      {

         return 0x01u;
      }


      diagSegmentList.nrOfSegments--;
   }
   else

   {


      diagSegmentList.segmentInfo[currentSegment].length = totalProgramLength;


      verifyData.verifyDataInput.length = 0u;
      verifyData.verifyDataInput.data = 0;
# 4809 "../../../../external/BSW/Fbl/fbl_diag.c"
      result = FblLbtGetBlockVerifyOutputFuncByNr(currentBlock, &exportFct);
      if (result == 0x00u)
      {
         if (0 == exportFct)
         {
            verifyData.verifyDataOutput.length = 0u;
            verifyData.verifyDataOutput.data = 0;
            verifyData.verifyDataPipe.length = (SEC_VERIFY_CLASS_DDD_DIGEST_SIZE + SEC_SIZE_CHECKSUM_CRC);
            verifyData.verifyDataPipe.data = verifyOutputBuf;
         }
         else
         {

            verifyData.verifyDataOutput.length = (SEC_VERIFY_CLASS_DDD_DIGEST_SIZE + SEC_SIZE_CHECKSUM_CRC);
            verifyData.verifyDataOutput.data = verifyOutputBuf;
            verifyData.verifyDataPipe.length = 0u;
            verifyData.verifyDataPipe.data = 0;
         }
      }
      else
      {

         (diagErrorCode = (((vuint8) 0x31u)));
         return 0x01u;
      }



      result = FblMemRemapStatus(FblMemBlockVerify(&verifyData, &verifyResult));
      if (result == ((vuint8) 0x00u))
      {

         (void)FblOwnMemcpy( (void *)(diagSegmentList.segmentInfo[currentSegment].checksum), (const void *)(verifyOutputBuf), (unsigned int)(SEC_VERIFY_CLASS_DDD_DIGEST_SIZE));
      }
      else
      {
         (diagErrorCode = (result));
         return 0x01u;
      }
   }

   if ((diagErrorCode) == ((vuint8) 0x00u))
   {



      (void)FblOwnMemcpy( (void *)(&pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))]), (const void *)(&verifyOutputBuf[SEC_VERIFY_CLASS_DDD_CHECKSUM_OFFSET]), (unsigned int)(SEC_SIZE_CHECKSUM_CRC));
      DiagResponseProcessor(((tCwDataLengthType) (0x00u+((tCwDataLengthType) ((SEC_SIZE_CHECKSUM_CRC))))));
   }
   else
   {
      result = 0x01u;
   }

   return result;
}
# 4878 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagPrepareDidResponse ( vuint8 *pbDiagBuffer, vuint16 reqDid, tDidDataPtr didData, vuint16 didLen )
{
   vuint16 dataIdx;
   tFblResult result = 0x00u;


   if ((DiagDataLength + didLen) < 2050u)
   {

      pbDiagBuffer[0] = (vuint8)(reqDid >> 8u);
      pbDiagBuffer[1] = (vuint8)(reqDid & 0xFFu);

      if (didData != kDiagComplexDidData)
      {

         for (dataIdx = 0u; dataIdx < (didLen - ((vuint8) 0x02u)); dataIdx++)
         {
            pbDiagBuffer[((vuint8) 0x02u) + dataIdx] = didData[dataIdx];
         }
      }
      else
      {

         result = ApplFblReadDataByIdentifier(pbDiagBuffer, didLen - ((vuint8) 0x02u));
      }
   }
   else
   {

      (diagErrorCode = (((vuint8) 0x14u)));
      result = 0x01u;
   }

   return result;
}
# 4925 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerReadDataById( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   vuint16 reqDid[5];
   vuint16 didLen = 0u;
   vuint8 numberOfDids, didIdx, tableIdx;
   tFblResult result = 0x01u;
   vuint8 * localPbDiagBuffer;


   if ((diagReqDataLen % 2u) == 1u)
   {
      (diagErrorCode = (((vuint8) 0x13u)));
      return 0x01u;
   }


   localPbDiagBuffer = &pbDiagBuffer[1];
   DiagDataLength = 0u;


   numberOfDids = 0u;
   do
   {
      reqDid[numberOfDids] = (vuint16)FblMemGetInteger(2u, &localPbDiagBuffer[numberOfDids * 2u]);
      numberOfDids++;
   } while (numberOfDids < (diagReqDataLen / 2u));


   for (didIdx = 0u; (didIdx < numberOfDids) && ((diagErrorCode) == ((vuint8) 0x00u)); didIdx++)
   {

      (void)FblLookForWatchdog();

      result = 0x01u;
      switch (reqDid[didIdx])
      {

         case ((vuint16) 0xD100u):
         {

            vuint8 diagSessionType = (kDiagSessionParameters[currentDiagSessionIndex].sessionType);
            didLen = ((vuint8) 0x02u) + ((vuint8) 0x01u);
            result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], (tDidDataPtr)&diagSessionType, didLen);
            break;
         }

         case ((vuint16) 0xF162u):
         {

            vuint8 swdlVersion = ((vuint8) 0x07u);
            didLen = ((vuint8) 0x02u) + ((vuint8) 0x01u);
            result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], (tDidDataPtr)&swdlVersion, didLen);
            break;
         }
# 4998 "../../../../external/BSW/Fbl/fbl_diag.c"
         default:
         {

            for (tableIdx = 0; tableIdx < kNrOfDids; tableIdx++)
            {
               if (fblDidTable[tableIdx].did == reqDid[didIdx])
               {

                  didLen = ((vuint8) 0x02u) + fblDidTable[tableIdx].size;
                  result = FblDiagPrepareDidResponse(localPbDiagBuffer, reqDid[didIdx], fblDidTable[tableIdx].ptr, didLen);
                  break;
               }
            }
            break;
         }
      }

      if (result == 0x00u)
      {

         DiagDataLength += didLen;
         localPbDiagBuffer = &localPbDiagBuffer[didLen];
      }
   }

   if ((diagErrorCode) == ((vuint8) 0x00u))
   {

      if (DiagDataLength == 0u)
      {
         (diagErrorCode = (((vuint8) 0x31u)));
         result = 0x01u;
      }
      else
      {

         DiagResponseProcessor(DiagDataLength);
      }
   }
   else
   {
      result = 0x01u;
   }

   return result;
}
# 5056 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagMainHandlerWriteDataById( vuint8 * pbDiagBuffer, tCwDataLengthType diagReqDataLen )
{
   tFblResult result;



   result = ApplFblWriteDataByIdentifier(&(pbDiagBuffer[((vuint8) (((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))))]), diagReqDataLen);


   if (!(((result == 0x00u) && ((diagErrorCode) == ((vuint8) 0x00u))) || ((result == 0x01u) && ((diagErrorCode) != ((vuint8) 0x00u))))) ApplFblFatalError((0xE1u))

                                                 ;

   if ((diagErrorCode) == ((vuint8) 0x00u))
   {

      DiagResponseProcessor(((tCwDataLengthType) 0x02u));
   }
   else
   {
      result = 0x01u;
   }

   return result;
}
# 5095 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagEcuReset(vuint8 resetOptions, vuint8 responseFlag)
{





   (testerPresentTimeout = 0);


   FblMemDeinit();


   if ((((resetOptions) & ((vuint8) 0x01u)) == ((vuint8) 0x01u)) && (!(((fblStates)[(((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u))))))
   {

      { ((fblStates)[(((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))); (ecuResetTimeout = (vuint16)((5000u / 1u)/1u)); };


      if (0x00u == FblCwSaveResponseAddress())
      {

         switch (responseFlag)
         {
            case 0x01u:
            {
               DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x04u))));
               break;
            }
            case 0x02u:
            {
               DiagResponseProcessor(((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))));
               break;
            }
            default:
            {

               if (!(0u)) ApplFblFatalError((0xE0u));
               break;
            }
         }
      }
      else
      {
         (diagErrorCode = (((vuint8) 0x10u)));
      }
      ((fblStates)[(((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
   }
   else
   {

      (diagResponseFlag = 0);
      DiagResponseProcessor(0u);
      FblDiagDeinit();
   }
# 5170 "../../../../external/BSW/Fbl/fbl_diag.c"
}
# 5180 "../../../../external/BSW/Fbl/fbl_diag.c"
static void FblDiagSetProperties(ptServiceProp source, tServiceProp * destination)
{
   vuint8 idx;
   vuint8 stateIdx;

   destination->serviceId = source->serviceId;
   destination->minLength = source->minLength;
   destination->maxLength = source->maxLength;
   destination->mainHandlerIdx = source->mainHandlerIdx;
   destination->subServices = source->subServices;


   for (stateIdx = 0u; stateIdx < (2u + 3u); stateIdx++)
   {

      idx = 0;



      {
         destination->states[stateIdx][idx] = source->states[stateIdx][idx];
      }
   }
# 5217 "../../../../external/BSW/Fbl/fbl_diag.c"
}
# 5229 "../../../../external/BSW/Fbl/fbl_diag.c"
static void FblDiagMergeProperties(ptServiceProp source, tServiceProp * merge)
{
   vuint8 idx;

   vuint8 stateIdx;



   merge->serviceId = source->serviceId;
   if (source->minLength > merge->minLength)
   {
      merge->minLength = source->minLength;
   }
   if (source->maxLength < merge->maxLength)
   {
      merge->maxLength = source->maxLength;
   }
   if (source->mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
   {
      merge->mainHandlerIdx = source->mainHandlerIdx;
   }
   merge->subServices = source->subServices;



   for (stateIdx = 0u; stateIdx < (2u + 3u); stateIdx++)
   {

      idx = 0u;



      {
         merge->states[stateIdx][idx] |= source->states[stateIdx][idx];
      }
   }
# 5279 "../../../../external/BSW/Fbl/fbl_diag.c"
}







static void FblDiagDispatch ( void )
{

   ptServiceProp prevProp;
   ptServiceProp currProp;
   tServiceList const * localSubServices;
   tServiceCheckList const * checkList;
   tServiceCheck const * checkFct;

   vuint8 chkFctIdx;
   tCwDataLengthType bufferPos;

   tFblResult done;


   FblDiagSetProperties(&kDiagServiceProperties[0], &serviceProperties);


   currProp = (ptServiceProp)&kDiagServiceProperties[0];
   prevProp = currProp;

   localSubServices = currProp->subServices;

   checkList = kServiceCheckListTable[currProp->checkListIdx];



   bufferPos = localSubServices->bufPos;

   checkFct = ( tServiceCheck const *)0;

   done = 0x01u;


   while (done != 0x00u)
   {

      done = 0x00u;


      for (chkFctIdx = 0; chkFctIdx < checkList->count; chkFctIdx++)
      {

         checkFct = &(checkList->list)[chkFctIdx];

         if ((kServiceCheckHandlerFctTable[checkFct->checkHandlerIdx])(&serviceProperties, DiagBuffer, DiagDataLength, bufferPos, &currProp) == 0x00u)
         {

            if (currProp != prevProp)
            {

               FblDiagMergeProperties(currProp, &serviceProperties);
               prevProp = currProp;


               done = 0x01u;
            }
         }
         else
         {

            currProp = (ptServiceProp)0;
            break;
         }
      }


      if (done == 0x01u)
      {

         done = 0x00u;


         if (currProp != (ptServiceProp)0)
         {


            if (currProp->checkListIdx != (vuint8)kServiceCheckListNone)
            {
               checkList = kServiceCheckListTable[currProp->checkListIdx];






               checkFct = ( tServiceCheck const *)0;


               done = 0x01u;
            }


            localSubServices = currProp->subServices;
            if (localSubServices != (void *)0)
            {

               bufferPos = localSubServices->bufPos;
            }
         }
      }
   }


   serviceResult = 0x01u;


   if (currProp == (ptServiceProp)0)
   {

      if (checkFct != (void *)0)
      {

         if (checkFct->errorHandlerIdx != (vuint8)kServiceErrorHandlerNone)
         {

            serviceResult = (kServiceErrorHandlerFctTable[checkFct->errorHandlerIdx])(&serviceProperties, DiagBuffer, DiagDataLength);
         }


         if ((serviceResult != 0x00u) && ((diagErrorCode) == ((vuint8) 0x00u)))
         {

            if (checkFct->NRC == ((vuint8) 0xFFu))
            {

               (diagResponseFlag = 0);
               DiagResponseProcessor(0);
            }
            else
            {

               (diagErrorCode = (checkFct->NRC));
            }
         }
      }
      else
      {




         (diagErrorCode = (((vuint8) 0x10u)));
      }
   }
   else
   {

      if (serviceProperties.mainHandlerIdx != (vuint8)kServiceMainHandlerNone)
      {
         serviceResult = (kServiceMainHandlerFctTable[serviceProperties.mainHandlerIdx])(DiagBuffer, DiagDataLength);
      }
   }


   if (serviceResult == 0x00u)
   {
      FblDiagClrState(serviceProperties.states[3]);
      FblDiagSetState(serviceProperties.states[2]);
   }
   else
   {
      FblDiagClrState(serviceProperties.states[4]);
   }
}
# 5460 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagTimerTask( void )
{

   if (testerPresentTimeout != 0u)
   {
      (testerPresentTimeout--);
      if (testerPresentTimeout == 0u)
      {




         FblDiagEcuReset(((vuint8) 0x00u), 0x00u);
      }
   }


   if (ecuResetTimeout != 0u)
   {
      (ecuResetTimeout--);
      if (ecuResetTimeout == 0u)
      {


         FblDiagEcuReset(((vuint8) 0x00u), 0x00u);
      }
   }

}







void FblDiagStateTask( void )
{


   if ((((fblStates)[((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {

      ((fblStates)[(((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
      ((fblStates)[((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
      ((fblStates)[((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));
      (diagErrorCode = ((vuint8) 0x00u));


      ((fblStates)[(((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));


      FblDiagDispatch();


      if ((diagErrorCode) != ((vuint8) 0x00u))
      {
         DiagResponseProcessor(0);
      }


      if ((!(((fblStates)[(((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u))))) && (!(((fblStates)[(((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u))))))
      {
         (diagResponseFlag = 0);
         DiagResponseProcessor(0);
      }
   }






   if ((((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) && (((fblStates)[(((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) && (((fblStates)[((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      FblDiagDeinit();
   }


   FblMemResumeIndication();
}






static void FblDiagDeinit(void)
{

   (void)SecM_DeinitVerification(0);


   FblDeinitMemoryDriver();


   FblDiagRetainState(kDiagStateMaskReset);


   (diagErrorCode = ((vuint8) 0x00u));


   FblCwShutdownRequest(kFblCwResetEcuRegularCase);
}






static void FblDeinitMemoryDriver( void )
{
   if ((((fblStates)[(((((0u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((0u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((0u) + 1u))) % 32u)))))
   {
      if ((((fblStates)[(((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
      {

         ((fblStates)[((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << ((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


         FblCwSetOfflineMode();
         (void)MemDriver_DeinitSync(0);
         FblCwSetOnlineMode();
      }


      ApplFblResetVfp();
   }
}
# 5601 "../../../../external/BSW/Fbl/fbl_diag.c"
static SecM_StatusType FblDiagVerification( SecM_VerifyParamType * verifyPar)
{
   tBlockDescriptor blockDescriptor;
   tFblMemVerifyFctOutput verifyFct;


   verifyFct = SecM_VerificationClassDDD;





   if (FblLbtGetBlockDescriptorByAddressLength(verifyPar->blockStartAddress, verifyPar->blockLength, &blockDescriptor) == 0x00u)
   {
      if (0 != blockDescriptor.verifyOutput)
      {

         verifyFct = (tFblMemVerifyFctOutput)blockDescriptor.verifyOutput;
      }
   }


   return verifyFct(verifyPar);
}
# 5637 "../../../../external/BSW/Fbl/fbl_diag.c"
static SecM_StatusType FblDiagVerifySignature( SecM_SignatureParamType * pVerifyParam )
{
   SecM_StatusType result;
   SecM_LengthType byteCount;

   result = SECM_VER_ERROR;

   pipeVerifyParamCrc.sigState = pVerifyParam->sigState;
   pipeVerifyParamCrc.sigSourceBuffer = pVerifyParam->sigSourceBuffer;
   pipeVerifyParamCrc.sigByteCount = pVerifyParam->sigByteCount;
   pipeVerifyParamCrc.wdTriggerFct = pVerifyParam->wdTriggerFct;

   switch (pVerifyParam->sigState)
   {
      case SEC_HASH_INIT:
      case SEC_HASH_COMPUTE:
      case SEC_HASH_FINALIZE:
      {
         result = SecM_VerifyClassDDD(pVerifyParam);
         (void)SecM_VerifyChecksumCrc(&pipeVerifyParamCrc);

         break;
      }
      case SEC_SIG_VERIFY:
      {
         result = SecM_VerifyClassDDD(pVerifyParam);

         byteCount = pVerifyParam->sigByteCount;
         pipeVerifyParamCrc.sigSourceBuffer = &pVerifyParam->sigSourceBuffer[byteCount];
         pipeVerifyParamCrc.sigByteCount -= byteCount;

         (void)SecM_VerifyChecksumCrc(&pipeVerifyParamCrc);

         pVerifyParam->sigByteCount += pipeVerifyParamCrc.sigByteCount;

         break;
      }
      default:
      {

         break;
      }
   }

   return result;
}
# 5698 "../../../../external/BSW/Fbl/fbl_diag.c"
vuint8 FblDiagCheckStartMsg(const vuint8 *pData, vuint32 length)
{
   vuint8 result;


   result = 0x01u;


   if (length >= (((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) + 2u))
   {


      if ( ( pData[0] == (((tCwDataLengthType) (0x01u+((tCwDataLengthType) 0x00u))) + 1u))
          && ( pData[((tCwDataLengthType) 0x00u) + 1u] == ((vuint8) 0x10u))
          && ((pData[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u)) + 1u] & 0x7Fu) == ((vuint8) 0x02u)))
      {

         result = 0x00u;
      }
   }

   return result;
}
# 5731 "../../../../external/BSW/Fbl/fbl_diag.c"
vuint8 FblDiagGetSegmentList(vuint8 blockIdx, tDiagSegmentList * blockSegList)
{
   vuint8 listIdx;

   blockSegList->nrOfSegments = 0u;

   for (listIdx = 0u; listIdx < blockHeader[blockIdx].nrOfSegments; listIdx++)
   {
      blockSegList->segmentInfo[blockSegList->nrOfSegments] = diagSegmentList.segmentInfo[blockHeader[blockIdx].segmentIdx[listIdx]];
      blockSegList->nrOfSegments++;
   }

   return blockSegList->nrOfSegments;
}


# 1 "Include/MemMap.h" 1
# 5748 "../../../../external/BSW/Fbl/fbl_diag.c" 2



# 1 "Include/MemMap.h" 1
# 3484 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 5752 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 5762 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagTxErrorIndication( vuint8 cwMsgType )
{

   if (cwMsgType != kFblCwMsgTypeRcrRp)
   {
      DiagResetResponseHandling();
   }
}
# 5778 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagRxStartIndication( void )
{

   (testerPresentTimeout = 0);
}
# 5791 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagRxErrorIndication( void )
{
   DiagResetResponseHandling();
}
# 5806 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagRxIndication( vuint8 * pbDiagBuffer, tCwDataLengthType rxDataLength )
{

   if ((((vuint8) 0x3Eu) == pbDiagBuffer[((tCwDataLengthType) 0x00u)])
        && (((vuint8) 0x80u) == pbDiagBuffer[((tCwDataLengthType) (((tCwDataLengthType) 0x00u)+0x01u))])
        && (((tCwDataLengthType) 0x01u) == (rxDataLength - 1u))
        && (((fblStates)[((((((((0u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((0u) + 1u) + 1u) + 1u) + 1u))) % 32u))))
      )
   {

      DiagResetResponseHandling();
      FblCwResetRxBlock();
   }
   else
   {

      (diagErrorCode = ((vuint8) 0x00u));
      diagResponseFlag = ((vuint8) 0x01u);
      diagServiceCurrent = pbDiagBuffer[((tCwDataLengthType) 0x00u)];

      (P2Timer = ((25u / 1u)));
      (P2Timeout = ((((25u / 1u)) > 0x01u) ? (((25u / 1u)) / 0x02u) : 0x01u));
      DiagDataLength = rxDataLength - 1u;
      ((fblStates)[(((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));







   }


   (void)ApplFblSecuritySeedInit();





}
# 5857 "../../../../external/BSW/Fbl/fbl_diag.c"
void FblDiagTxConfirmation( vuint8 cwMsgType )
{

   if (cwMsgType != kFblCwMsgTypeRcrRp)
   {
      DiagResetResponseHandling();
   }


   if ((((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))))
   {
      ((fblStates)[((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
   }
}
# 5881 "../../../../external/BSW/Fbl/fbl_diag.c"
vuint8* FblDiagRxGetPhysBuffer( tCwDataLengthType rxDataLength )
{
   vuint8* result;


   if ((rxDataLength > 0u )
        && (2050u >= rxDataLength)
        && (!(((fblStates)[(((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) / 32u)] & ((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u)))) == ((tStateBitmap)(1uL << (((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u))) % 32u))))))
   {

      ((fblStates)[(((((((0u) + 1u) + 1u) + 1u) + 1u)) / 32u)] &= ((tStateBitmap)~((tStateBitmap)(((tStateBitmap)(1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u)) % 32u)))))));


      ((fblStates)[((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << ((((((((((((((((((((((((0u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u) + 1u)) % 32u))));


      result = DiagBuffer;
   }
   else
   {

      result = 0;
   }

   return result;
}
# 5917 "../../../../external/BSW/Fbl/fbl_diag.c"
vuint8* FblDiagRxGetFuncBuffer( tCwDataLengthType rxDataLength )
{

   vuint8* diagnosticBuffer = FblDiagRxGetPhysBuffer(rxDataLength);


   if (0 != diagnosticBuffer)
   {
      ((fblStates)[(((((((0u) + 1u) + 1u) + 1u) + 1u)) / 32u)] |= ((tStateBitmap)(1uL << (((((((0u) + 1u) + 1u) + 1u) + 1u)) % 32u))));
   }

   return diagnosticBuffer;
}

# 1 "Include/MemMap.h" 1
# 3491 "Include/MemMap.h"
#pragma section
# 5932 "../../../../external/BSW/Fbl/fbl_diag.c" 2


# 1 "Include/MemMap.h" 1
# 5935 "../../../../external/BSW/Fbl/fbl_diag.c" 2
# 5944 "../../../../external/BSW/Fbl/fbl_diag.c"
tFblResult FblDiagMemPreWrite( void )
{
   FblCwSetOfflineMode();

   return 0x00u;

}
# 5960 "../../../../external/BSW/Fbl/fbl_diag.c"
tFblResult FblDiagMemPostWrite( void )
{
   FblCwSetOnlineMode();

   return 0x00u;
}
# 5977 "../../../../external/BSW/Fbl/fbl_diag.c"
static tTokenHdlResult FblDiagValidateToken( const vuint8 * tokenBuf )
{
   tTokenHdlResult result;
   vuint32 idx;
   vuint8 const *fesnPtr = fblCommonData.FordElectronicSerialNumber;

   result = kTokenHdlrInternalFailed;


   if ((((tokenBuf)[0u] & 0x10u) == 0x10u))
   {
      if (FblDiagCheckServerMessageId(tokenBuf) == 0x00u)
      {
         result = kTokenHdlrOk;
      }
   }


   if ( (result == kTokenHdlrOk) &&
        ((((tokenBuf)[0u] & 0x04u) == 0x04u)) )
   {

      result = kTokenHdlrInternalFailed;
   }


   if ( (result == kTokenHdlrOk) &&
        ((((tokenBuf)[0u] & 0x03u) != 0u)) )
   {

      result = kTokenHdlrInternalFailed;
   }


   if ( (result == kTokenHdlrOk) &&
        (((tokenBuf)[0u] & 0x08u) == 0x08u) &&
        (((tokenBuf)[35u]) != 5u) )
   {

      for (idx = 0u; idx < 8u; idx++)
      {
         if ((&(tokenBuf)[11u])[idx] != fesnPtr[idx])
         {
            result = kTokenHdlrFesnFailed;
         }
      }
   }


   if ( (result == kTokenHdlrOk) &&
        (((tokenBuf)[35u]) == 5u) )
   {
      if ((((tokenBuf)[0u] & 0x08u) == 0x08u))
      {

         result = kTokenHdlrFesnFailed;
      }
      else
      {

         for (idx = 0u; idx < 3u; idx++)
         {
            if ((&(tokenBuf)[80u])[idx] != fesnPtr[idx])
            {
               result = kTokenHdlrFesnFailed;
            }
         }
      }
   }


   if ((result == kTokenHdlrOk)
        && (((tokenBuf)[1u]) != 0u))
   {
      result = kTokenHdlrInternalFailed;
   }


   if ((result == kTokenHdlrOk)
        && ((((vuint16)(tokenBuf)[2u] << 8u) | (vuint16)(tokenBuf)[2u + 1u] ) != 0x110u))
   {
      result = kTokenHdlrInternalFailed;
   }


   if ((result == kTokenHdlrOk)
        && (((tokenBuf)[6u]) != 0x0Fu))
   {
      result = kTokenHdlrInternalFailed;
   }


   if (result == kTokenHdlrOk)
   {
      if (((tokenBuf)[35u]) == 5u)
      {
         if ((((vuint32)(tokenBuf)[7u] << 24u) | ((vuint32)(tokenBuf)[7u + 1u] << 16u) | ((vuint32)(tokenBuf)[7u + 2u] << 8u) | (vuint32)(tokenBuf)[7u + 3u] ) != 1606u)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
      else
      {
         if ((((vuint32)(tokenBuf)[7u] << 24u) | ((vuint32)(tokenBuf)[7u + 1u] << 16u) | ((vuint32)(tokenBuf)[7u + 2u] << 8u) | (vuint32)(tokenBuf)[7u + 3u] ) != 43u)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }


   if (result == kTokenHdlrOk)
   {
      if (((tokenBuf)[35u]) == 5u)
      {
         if (((tokenBuf)[36u]) != 0u)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
      else
      {
         if (((tokenBuf)[36u]) != 1u)
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }


   if ( (result == kTokenHdlrOk) &&
        (!(((tokenBuf)[0u] & 0xE0u) == 0x20u)))
   {
      result = kTokenHdlrProtocolFailed;
   }


   if ( (result == kTokenHdlrOk) &&
        (((vuint8)(tokenBuf)[37u]) != 0x0Bu) )
   {
      result = kTokenHdlrInternalFailed;
   }


   if (result == kTokenHdlrOk)
   {
      vuint8 const tokenName[(0x0Bu + 1u)] = "APP_SIGN_SW";

      for (idx = 0u; idx < 0x0Bu; idx++)
      {
         if ((&(tokenBuf)[38u])[idx] != tokenName[idx])
         {
            result = kTokenHdlrInternalFailed;
         }
      }
   }

   return result;
}
# 6146 "../../../../external/BSW/Fbl/fbl_diag.c"
static tFblResult FblDiagCheckServerMessageId( const vuint8 * tokenBuf )
{
   tFblResult result = 0x00u;
   tFblResult srvMsgIdCompareFinished = 0x01u;
   vuint8 lastServerMessageId[8] = {0};
   const vuint8 *currentServerMessageId = 0;
   vuint8 srvMsgIdFlag;
   vuint32 idx;


   if (ApplFblReadSrvMsgIDFlag(&srvMsgIdFlag) == 0x00u)
   {
      if (srvMsgIdFlag == (vuint8)FBL_DIAG_SRVMSGID_STORED)
      {

         result = ApplFblReadLastServerMsgId(lastServerMessageId);
      }
      else
      {

         result = ApplFblWriteLastServerMsgId(lastServerMessageId);

         if (result == 0x00u)
         {

            srvMsgIdFlag = (vuint8)FBL_DIAG_SRVMSGID_STORED;
            result = ApplFblWriteSrvMsgIDFlag(&srvMsgIdFlag);
         }
      }
   }
   else
   {
      result = 0x01u;
   }

   if (result == 0x00u)
   {
      result = 0x01u;


      currentServerMessageId = (&(tokenBuf)[27u]);


      for (idx = 0u; idx < 8u; idx++)
      {
         if (currentServerMessageId[idx] > lastServerMessageId[idx])
         {

            result = 0x00u;
            srvMsgIdCompareFinished = 0x00u;
         }
         else if (currentServerMessageId[idx] < lastServerMessageId[idx])
         {



            srvMsgIdCompareFinished = 0x00u;
         }
         else
         {

         }

         if (srvMsgIdCompareFinished == 0x00u)
         {
            break;
         }
      }
   }

   if (result == 0x00u)
   {
      result = ApplFblWriteLastServerMsgId(currentServerMessageId);
   }

   return result;
}
# 6232 "../../../../external/BSW/Fbl/fbl_diag.c"
static tTokenHdlResult FblDiagTokenCallout( vuint8 cmdType, const vuint8 * tokenBuf, vuint16 tokenLength )
{
   tTokenHdlResult result;

   result = kTokenHdlrOk;

   switch (cmdType)
   {
      case 0u:
      {
         ApplFblTokenRevertKey(tokenBuf, tokenLength);
         break;
      }
      case 1u:
      {
         ApplFblTokenUseDevPermKey(tokenBuf, tokenLength);
         break;
      }
      case 2u:
      {
         ApplFblTokenUseDevTempKey(tokenBuf, tokenLength);
         break;
      }
      case 3u:
      {
         result = ApplFblTokenUseDevDateKey(tokenBuf, tokenLength);
         break;
      }
      case 4u:
      {
         result = ApplFblTokenUseDevIgniKey(tokenBuf, tokenLength);
         break;
      }
      case 5u:
      {
         ApplFblTokenProgKey(tokenBuf, tokenLength);
         break;
      }
      default:
      {
         result = kTokenHdlrInternalFailed;
         break;
      }
   }

   return result;
}





# 1 "Include/MemMap.h" 1
# 6285 "../../../../external/BSW/Fbl/fbl_diag.c" 2
