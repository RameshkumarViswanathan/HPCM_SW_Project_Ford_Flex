# 1 "../../../../external/BSW/Fbl/fbl_mem.c"
# 1 "D:\\usr\\usage\\Delivery\\CBD23x\\CBD2300515\\D00\\external\\Demo\\DemoUpdater\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../external/BSW/Fbl/fbl_mem.c"
# 176 "../../../../external/BSW/Fbl/fbl_mem.c"
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
# 177 "../../../../external/BSW/Fbl/fbl_mem.c" 2
# 1 "../../../../external/BSW/Fbl/fbl_mem.h" 1
# 187 "../../../../external/BSW/Fbl/fbl_mem.h"
# 1 "../../../../external/BSW/Fbl/fbl_mem_oem.h" 1
# 188 "../../../../external/BSW/Fbl/fbl_mem.h" 2
# 594 "../../../../external/BSW/Fbl/fbl_mem.h"
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


   kFblMemStatus_Ok = kDiagErrorNone
   ,kFblMemStatus_Failed = kDiagNrcConditionsNotCorrect

   ,kFblMemStatus_BlockEraseSequence = kDiagNrcRequestSequenceError

   ,kFblMemStatus_BlockStartSequence = kDiagNrcConditionsNotCorrect
   ,kFblMemStatus_BlockStartParam = kDiagNrcConditionsNotCorrect

   ,kFblMemStatus_BlockEndSequence = kDiagNrcRequestSequenceError
   ,kFblMemStatus_BlockEndVerifyFinalize = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_BlockVerifySequence = kDiagNrcRequestSequenceError
   ,kFblMemStatus_BlockVerifyInputVerify = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_BlockVerifyProcessedVerify = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_BlockVerifyPipeVerify = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_BlockVerifyOutputVerify = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_SegmentStartSequence = kDiagNrcRequestSequenceError
   ,kFblMemStatus_SegmentStartDataProcInit = kDiagNrcRequestOutOfRange
   ,kFblMemStatus_SegmentStartStreamOutInit = kDiagNrcRequestOutOfRange
   ,kFblMemStatus_SegmentStartVerifyInit = kDiagNrcConditionsNotCorrect
   ,kFblMemStatus_SegmentStartVerifyCompute = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_SegmentStartSegmentCount = kDiagNrcRequestOutOfRange

   ,kFblMemStatus_SegmentEndSequence = kDiagNrcRequestSequenceError
   ,kFblMemStatus_SegmentEndInsufficientData = kDiagNrcRequestSequenceError
   ,kFblMemStatus_SegmentEndPost = kDiagNrcConditionsNotCorrect

   ,kFblMemStatus_DataIndSequence = kDiagNrcRequestSequenceError
   ,kFblMemStatus_DataIndParam = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DataIndOverflow = kDiagNrcTransferDataSuspended

   ,kFblMemStatus_DataProc = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DataProcConsume = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DataProcDeinit = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_StreamOutput = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_StreamOutputConsume = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_StreamOutputOverflow = kDiagNrcTransferDataSuspended
   ,kFblMemStatus_StreamOutputDeinit = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_DriverResumeWrite = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DriverWrite = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DriverErase = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DriverRemainder = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_DriverSuspendWrite = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_ProgramOverflow = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_ProgramOutsideFbt = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_ProgramUnalignedAddress = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_ProgramDriverNotReady = kDiagNrcRequestSequenceError
   ,kFblMemStatus_ProgramPreWrite = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_ProgramPostWrite = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_EraseOutsideFbt = kDiagNrcRequestOutOfRange
   ,kFblMemStatus_EraseDriverNotReady = kDiagNrcConditionsNotCorrect
   ,kFblMemStatus_ErasePreErase = kDiagNrcConditionsNotCorrect
   ,kFblMemStatus_ErasePostErase = kDiagNrcConditionsNotCorrect

   ,kFblMemStatus_VerifyCompute = kDiagNrcGeneralProgrammingFailure
   ,kFblMemStatus_VerifyFinalize = kDiagNrcGeneralProgrammingFailure

   ,kFblMemStatus_PassThroughLocal = kDiagNrcConditionsNotCorrect
   ,kFblMemStatus_PassThroughRemote = kDiagNrcConditionsNotCorrect
# 760 "../../../../external/BSW/Fbl/fbl_mem.h"
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
# 904 "../../../../external/BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 905 "../../../../external/BSW/Fbl/fbl_mem.h" 2
# 914 "../../../../external/BSW/Fbl/fbl_mem.h"
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
# 948 "../../../../external/BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 949 "../../../../external/BSW/Fbl/fbl_mem.h" 2


# 1 "Include/MemMap.h" 1
# 3765 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 952 "../../../../external/BSW/Fbl/fbl_mem.h" 2

void FblMemResumeIndication( void );

void FblMemRxNotification( void );



# 1 "Include/MemMap.h" 1
# 3774 "Include/MemMap.h"
#pragma section
# 960 "../../../../external/BSW/Fbl/fbl_mem.h" 2
# 970 "../../../../external/BSW/Fbl/fbl_mem.h"
# 1 "Include/MemMap.h" 1
# 971 "../../../../external/BSW/Fbl/fbl_mem.h" 2

 extern tFblMemProgState fblMemProgState;


# 1 "Include/MemMap.h" 1
# 976 "../../../../external/BSW/Fbl/fbl_mem.h" 2
# 178 "../../../../external/BSW/Fbl/fbl_mem.c" 2
# 778 "../../../../external/BSW/Fbl/fbl_mem.c"
typedef vuint32 tFblMemAllowedInd;



typedef enum
{
   kFblMemJobType_InputWrite = 0u

   , kFblMemJobType_WriteFinalize


   , kFblMemJobType_ProcInput
   , kFblMemJobType_ProcWrite
   , kFblMemJobType_ProcFinalize





   , kFblMemJobType_VerifyPipeRead
   , kFblMemJobType_VerifyPipeUpdate
   , kFblMemJobType_VerifyPipeFinalize
# 809 "../../../../external/BSW/Fbl/fbl_mem.c"
   , kFblMemJobType_Max
} tFblMemJobType;



typedef enum
{
   tFblMemJobClass_Default

   , tFblMemJobClass_PipeProg


   , tFblMemJobClass_VerifyPipe

} tFblMemJobClass;



typedef enum
{
   kFblMemOperationMode_Normal = 0u,
   kFblMemOperationMode_Finalize,
   kFblMemOperationMode_Unconditional
} tFblMemOperationMode;


typedef struct { vuint32 canaryFront; vuint8 data[(2050u + (4u - 1u) + ((32u - 1u) + (32u - 1u)))]; vuint32 canaryBack; } tFblMemInputBuffer;


typedef struct { vuint32 canaryFront; vuint8 data[(256u + ((32u - 1u) + (32u - 1u)))]; vuint32 canaryBack; } tFblMemProcBuffer;







typedef struct { vuint32 canaryFront; vuint8 data[32u]; vuint32 canaryBack; } tFblMemRemainderBuffer;



typedef struct
{
   tFblMemRamData buffer;
   tFblLength totalSize;
   tFblLength netSize;
   tFblLength offset;
   tFblLength position;
   tFblLength used;


   tFblAddress baseAddress;

   tFblMemJobType type;
   tFblMemOperationMode completion;
   vuint32 segmentIndex;



   tFblMemJobClass jobClass;

} tFblMemJob;


typedef struct
{
   tFblMemSegmentInfo input;

   tFblAddress writeAddress;
   tFblLength writeRemainder;
   tFblLength writeLength;

   tFblLength writtenLength;


   tFblLength inputAddress;


   tFblLength inputLength;




   tFblMemJobType jobType;

   vuint32 ownIndex;
   vuint32 nextIndex;
} tFblMemSegmentInternal;



typedef vuint8 tFblMemQueuePrio;



typedef enum
{

   kFblMemJobPrio_Lowest = 0x00u,

   kFblMemJobPrio_VerifyPipeFinalize,
   kFblMemJobPrio_VerifyPipeInput,





   kFblMemJobPrio_VerifyPipeRead = kFblMemJobPrio_VerifyPipeInput,
   kFblMemJobPrio_VerifyPipeUpdate,

   kFblMemJobPrio_Write,





   kFblMemJobPrio_WriteFinalize,


   kFblMemJobPrio_ProcFinalize,




   kFblMemJobPrio_Input,


   kFblMemJobPrio_InputWrite = kFblMemJobPrio_Input,
# 945 "../../../../external/BSW/Fbl/fbl_mem.c"
   kFblMemJobPrio_ProcInput = kFblMemJobPrio_Input,

   kFblMemJobPrio_ProcWriteLow = kFblMemJobPrio_Input,


   kFblMemJobPrio_ProcWriteHigh,







   kFblMemJobPrio_Highest = 0xFFu
} tFblMemJobPrio;




typedef vuint32 tFblMemQueueHandle;


typedef struct
{
   tFblMemJob * job;
   tFblMemQueuePrio prio;
   tFblMemQueueHandle prev;
   tFblMemQueueHandle next;
} tFblMemQueueEntry;





typedef struct
{
   tFblLength limit;
   tFblMemOperationMode unlimitedMode;
} tFblMemLengthLimit;
# 993 "../../../../external/BSW/Fbl/fbl_mem.c"
typedef enum
{
   kFblMemContext_Service = 0u,
   kFblMemContext_Background
} tFblMemContext;
# 1027 "../../../../external/BSW/Fbl/fbl_mem.c"
# 1 "Include/MemMap.h" 1
# 1028 "../../../../external/BSW/Fbl/fbl_mem.c" 2


 tFblMemProgState fblMemProgState;
# 1039 "../../../../external/BSW/Fbl/fbl_mem.c"
 static tFblMemAllowedInd gAllowedInd;

 static tFblMemStatus gErrorStatus;



 static tFblMemContext gProgContext;




 static tFblMemBlockInfo gBlockInfo;



 static tFblMemSegmentInternal gSegInfo;
# 1068 "../../../../external/BSW/Fbl/fbl_mem.c"
 static vuint8 gPreambleBuffer[2u];




 static tFblMemRemainderBuffer gRemainderBuffer;
# 1082 "../../../../external/BSW/Fbl/fbl_mem.c"
 static tFblMemInputBuffer gBasicInputBuffer[((2u + 1u) - 1u)];

 static tFblMemJob gInputJobs[1u][2u];



 static tFblMemJob gWriteFinalizeJob;







 static tFblMemJob gVerifyPipeReadJob[(1u)];
 static tFblMemJob gVerifyPipeUpdateJob;
 static tFblMemJob gVerifyPipeFinalizeJob;
 static vuint8 gVerifyPipeReadBuffer[256u];
# 1108 "../../../../external/BSW/Fbl/fbl_mem.c"
 static tProcParam gProcParam;

 static tFblMemJob gProcWriteJob;
 static tFblMemJob gProcFinalizeJob;

 static tFblMemProcBuffer gProcBuffer;
# 1157 "../../../../external/BSW/Fbl/fbl_mem.c"
 static tFblMemQueueEntry gProcessingQueue[(2u + (( 0u + 0u + 2u + 0u + 2u + ((1u) + 2u) + 0u + 0u ) + 1u))];


 static tFblMemQueueEntry gPipeProgQueue[1u][(2u + 2u)];


 static tFblMemQueueEntry gVerifyPipeQueue[(2u + (1u))];




# 1 "Include/MemMap.h" 1
# 1169 "../../../../external/BSW/Fbl/fbl_mem.c" 2


# 1 "Include/MemMap.h" 1
# 1172 "../../../../external/BSW/Fbl/fbl_mem.c" 2




 static tFblMemQueuePrio const gJobPrio[] =
{
     (vuint8)kFblMemJobPrio_InputWrite

   , (vuint8)kFblMemJobPrio_WriteFinalize


   , (vuint8)kFblMemJobPrio_ProcInput





   , (vuint8)kFblMemJobPrio_ProcWriteHigh


   , (vuint8)kFblMemJobPrio_ProcFinalize





   , (vuint8)kFblMemJobPrio_VerifyPipeRead
   , (vuint8)kFblMemJobPrio_VerifyPipeUpdate
   , (vuint8)kFblMemJobPrio_VerifyPipeFinalize
# 1217 "../../../../external/BSW/Fbl/fbl_mem.c"
   , (vuint8)kFblMemJobPrio_Lowest
};






 static tFblMemLengthLimit const gLengthLimits[] =
{
   { 256u, kFblMemOperationMode_Finalize }

   , { 0u, kFblMemOperationMode_Normal }


   , { 0xFFFFu, kFblMemOperationMode_Unconditional }
   , { 256u, kFblMemOperationMode_Finalize }
   , { 0u, kFblMemOperationMode_Normal }





   , { 256u, kFblMemOperationMode_Unconditional }
   , { 256u, kFblMemOperationMode_Unconditional }
   , { 0u, kFblMemOperationMode_Normal }
# 1252 "../../../../external/BSW/Fbl/fbl_mem.c"
   , { 0u, kFblMemOperationMode_Normal }
};







# 1 "Include/MemMap.h" 1
# 1262 "../../../../external/BSW/Fbl/fbl_mem.c" 2


# 1 "Include/MemMap.h" 1
# 1265 "../../../../external/BSW/Fbl/fbl_mem.c" 2






static tFblMemTriggerStatus FblMemTriggerWatchdogExt( void );
static void FblMemTriggerWatchdog( void );

static void FblMemResponsePending( void );


static void FblMemInitInputQueue( void );
static void FblMemInitStates( void );
static tFblMemRamData FblMemInitInternal( void );
static tFblMemStatus FblMemQueueBuffer( tFblMemConstRamData buffer, tFblLength offset, tFblLength length );
static void FblMemProcessQueue( tFblMemOperationMode mode );
static void FblMemFlushQueueByPrio( tFblMemQueuePrio prio );

static void FblMemUnblockQueue( const tFblMemQueueEntry * queue );


static tFblMemStatus FblMemVerifyInput( tFblMemVerifyRoutineInput * routine,
   const tFblMemVerifyData * data, vuint8 state,
   tFblMemVerifyStatus * result );
static tFblMemStatus FblMemInitVerifyInput( void );


static tFblMemJob * FblMemPrepareVerifyPipeJob( vuint32 segmentIndex, tFblAddress address );
static tFblMemJob * FblMemUpdateVerifyPipeJob( vuint32 segmentIndex, tFblAddress address, tFblLength length );

static tFblMemStatus FblMemProcessJob( tFblMemJob * activeJob, tFblMemOperationMode mode );
static tFblMemStatus FblMemProgramStream( const tFblMemJob * programJob,
   tFblLength * programLength, tFblMemOperationMode mode );
static tFblLength FblMemPadLength( tFblAddress address, tFblLength length );
static tFblLength FblMemPadBuffer( tFblAddress address, tFblLength length, tFblMemRamData data );



static tFblMemStatus FblMemCopyBuffer( tFblAddress programAddress,
   const tFblLength * programLength, tFblMemConstRamData programData );
static tFblMemStatus FblMemEraseRegionInternal( tFblAddress eraseAddress, tFblLength eraseLength );
static tFblMemStatus FblMemProgramBufferInternal( tFblAddress programAddress,
   tFblLength * programLength, tFblMemRamData programData,
   tFblMemProgState checkPointState );


static tFblLength FblMemGetSpecificRemainder( tFblAddress address, tFblLength length );
# 1325 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblLength FblMemLimitLength( tFblLength inputLen, tFblMemJobType type, tFblMemOperationMode mode );



static void FblMemStorePreamble( void );
static void FblMemRestorePreamble( void );


static tFblResult FblMemCheckAllowed( tFblMemAllowedInd check, tFblMemAllowedInd clear );
static tFblMemRamData FblMemGetBuffer( const tFblMemJob * job );

static void FblMemInitBufferIntegrity( void );
static tFblMemStatus FblMemVerifyBufferIntegrity( void );



static void FblMemQueueInit( tFblMemQueueEntry * queue, tFblMemQueueHandle length );

static tFblMemQueueHandle FblMemQueueMove( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle, tFblMemQueueHandle prevNew );


static tFblMemQueueHandle FblMemQueueMoveFirstFreeEntry( tFblMemQueueEntry * queue,
   tFblMemQueueHandle prevNew );
static tFblMemQueueHandle FblMemQueueAppend( tFblMemQueueEntry * queue );

static tFblMemQueueHandle FblMemQueueRemove( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle );
static tFblMemQueueHandle FblMemQueuePrioUpdate( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle, tFblMemQueuePrio prio );
static tFblMemQueueHandle FblMemQueuePrioInsert( tFblMemQueueEntry * queue,
   tFblMemQueuePrio prio, tFblMemJob * job );
static tFblMemQueueHandle FblMemQueueDefaultPrioInsert( tFblMemQueueEntry * queue,
   tFblMemJob * job, vuint32 segmentIndex );



static tFblMemJob * FblMemGetPendingInputJob( void );


static void FblMemInitJob( tFblMemJob * job, tFblMemRamData buffer,
   tFblLength size, tFblMemJobType type );
# 1410 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemTriggerStatus FblMemTriggerWatchdogExt( void )
{
   tFblMemTriggerStatus result;




   if (kFblMemContext_Background == gProgContext)
   {

      result = FblLookForWatchdog();
   }
   else

   {


      result = FblRealTimeSupport();




   }

   return result;
}







static void FblMemTriggerWatchdog( void )
{
   (void)FblMemTriggerWatchdogExt();
}
# 1456 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemResponsePending( void )
{



   if (kFblMemContext_Service == gProgContext)

   {


      if (0x00u != ((tFblResult)(((vuint8)0x00u) ? 0x00u : 0x01u)))

      {

         DiagExRCRResponsePending(kForceSendResponsePending);
      }
   }

}
# 1485 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemRamData FblMemGetBuffer( const tFblMemJob * job )
{
   tFblMemRamData jobBuffer;


   jobBuffer = job->buffer;


   if (((tFblMemRamData)0) != jobBuffer)
   {

      if (!((job->offset <= (job->totalSize - job->netSize)))) ApplFblFatalError((0x01u));
      if (!((job->used <= (job->totalSize - job->offset)))) ApplFblFatalError((0x01u));



      jobBuffer = &jobBuffer[job->position];
   }


   return jobBuffer;
}
# 1517 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemInitBufferIntegrity( void )
{
   vuint32 idx;


   for (idx = 0u; idx < ((2u + 1u) - 1u); idx++)
   {
      gBasicInputBuffer[idx].canaryFront = 0x42697264uL;
      gBasicInputBuffer[idx].canaryBack = 0x42697264uL;
   }



   gProcBuffer.canaryFront = 0x42697264uL;
   gProcBuffer.canaryBack = 0x42697264uL;




   gRemainderBuffer.canaryFront = 0x42697264uL;
   gRemainderBuffer.canaryBack = 0x42697264uL;







}
# 1557 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemVerifyBufferIntegrity( void )
{
   tFblMemStatus retVal;
   vuint32 aggregated;
   vuint32 idx;

   retVal = kFblMemStatus_Ok;
   aggregated = 0x00uL;


   for (idx = 0u; idx < ((2u + 1u) - 1u); idx++)
   {
      aggregated |= (0x42697264uL ^ gBasicInputBuffer[idx].canaryFront);
      aggregated |= (0x42697264uL ^ gBasicInputBuffer[idx].canaryBack);
   }



   aggregated |= (0x42697264uL ^ gProcBuffer.canaryFront);
   aggregated |= (0x42697264uL ^ gProcBuffer.canaryBack);




   aggregated |= (0x42697264uL ^ gRemainderBuffer.canaryFront);
   aggregated |= (0x42697264uL ^ gRemainderBuffer.canaryBack);
# 1591 "../../../../external/BSW/Fbl/fbl_mem.c"
   if (0x00uL != aggregated)
   {
      retVal = kFblMemStatus_Failed;
   }

   return retVal;
}
# 1611 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemQueueInit( tFblMemQueueEntry * queue, tFblMemQueueHandle length )
{
   tFblMemQueueHandle handle;
   tFblMemQueueHandle prevHandle;
   tFblMemQueueHandle nextHandle;


   queue[0u].next = 0u;
   queue[0u].prev = 0u;

   queue[0u].job = (( tFblMemJob *)0);
   queue[0u].prio = 0xFFu;



   prevHandle = length - 1u;
   nextHandle = 1u;


   for (handle = 1u; handle < length; handle++)
   {
      nextHandle++;


      queue[handle].prev = prevHandle;
      queue[handle].next = nextHandle;

      queue[handle].job = (( tFblMemJob *)0);
      queue[handle].prio = 0x00u;

      prevHandle = handle;
   }


   queue[length - 1u].next = 1u;
}
# 1659 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueueMove( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle, tFblMemQueueHandle prevNew )
{
   tFblMemQueueHandle prevOld;
   tFblMemQueueHandle nextOld;
   tFblMemQueueHandle nextNew;


   if (handle == prevNew)
   {


   }
   else
   {

      prevOld = queue[handle].prev;
      nextOld = queue[handle].next;


      if (!((queue[prevOld].next != prevOld))) ApplFblFatalError((0x01u));


      queue[prevOld].next = nextOld;
      queue[nextOld].prev = prevOld;


      nextNew = queue[prevNew].next;


      queue[handle].prev = prevNew;
      queue[prevNew].next = handle;
      queue[handle].next = nextNew;
      queue[nextNew].prev = handle;
   }

   return handle;
}
# 1708 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueueMoveFirstFreeEntry( tFblMemQueueEntry * queue,
   tFblMemQueueHandle prevNew )
{

   if (!((!(1u == (queue)[1u].next)))) ApplFblFatalError((0x01u));


   return FblMemQueueMove(queue, queue[1u].next, prevNew);
}
# 1727 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueueAppend( tFblMemQueueEntry * queue )
{


   return FblMemQueueMoveFirstFreeEntry(queue, queue[0u].prev);
}
# 1746 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueueRemove( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle )
{


   return FblMemQueueMove(queue, handle, queue[1u].prev);
}
# 1765 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueuePrioUpdate( tFblMemQueueEntry * queue,
   tFblMemQueueHandle handle, tFblMemQueuePrio prio )
{
   tFblMemQueueHandle prevHandle;


   prevHandle = queue[0u].prev;



   while (queue[prevHandle].prio < prio)
   {
      prevHandle = queue[prevHandle].prev;
   }


   (void)FblMemQueueMove(queue, handle, prevHandle);

   queue[handle].prio = prio;

   return handle;
}
# 1800 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueuePrioInsert( tFblMemQueueEntry * queue,
   tFblMemQueuePrio prio, tFblMemJob * job )
{
   tFblMemQueueHandle handle;


   if (!((!(1u == (queue)[1u].next)))) ApplFblFatalError((0x01u));


   handle = FblMemQueuePrioUpdate(queue, queue[1u].next, prio);

   queue[handle].job = job;

   return handle;
}
# 1828 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemQueueHandle FblMemQueueDefaultPrioInsert( tFblMemQueueEntry * queue,
   tFblMemJob * job, vuint32 segmentIndex )
{

   if (!((job->type < kFblMemJobType_Max))) ApplFblFatalError((0x01u));


   job->segmentIndex = segmentIndex;

   return FblMemQueuePrioInsert(queue, gJobPrio[job->type], job);
}
# 1850 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemJob * FblMemGetPendingInputJob( void )
{

   if (!((!(1u == (gPipeProgQueue[0u])[1u].next)))) ApplFblFatalError((0x01u));


   return ((((gPipeProgQueue[0u]))[((gPipeProgQueue[0u])[1u].next)])).job;
}
# 1870 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemInitJob( tFblMemJob * job, tFblMemRamData buffer, tFblLength size,
   tFblMemJobType type )
{

   job->buffer = buffer;
   job->totalSize = size;
   job->netSize = size;

   job->offset = 0u;
   job->position = 0u;
   job->used = 0u;




   job->jobClass = tFblMemJobClass_Default;


   job->type = type;

   job->completion = kFblMemOperationMode_Normal;
}
# 1900 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemInitInputQueue( void )
{
   vuint32 idx;
   vuint32 actualBasicIdx;

   vuint32 basicIdx;
   tFblMemQueueHandle queueHandle;



   actualBasicIdx = 0u;



   FblMemQueueInit(gPipeProgQueue[0u], (sizeof(gPipeProgQueue[0u]) / sizeof((gPipeProgQueue[0u])[0])));

   queueHandle = (tFblMemQueueHandle)2u;
   basicIdx = 1u;

   for (idx = 0u; idx < 2u; idx++)
   {
      if (0u != idx)
      {
         actualBasicIdx = basicIdx;
         basicIdx++;
      }







      FblMemInitJob( &gInputJobs[0u][idx], gBasicInputBuffer[actualBasicIdx].data,
                     (sizeof(gBasicInputBuffer[actualBasicIdx].data) / sizeof((gBasicInputBuffer[actualBasicIdx].data)[0])), kFblMemJobType_InputWrite );

      gInputJobs[0u][idx].netSize = 2050u;

      gInputJobs[0u][idx].offset = (((((((2u)) - 1u) / (4u)) + 1u) * (4u)) - (2u));



      gInputJobs[0u][idx].jobClass = tFblMemJobClass_PipeProg;

      ((gPipeProgQueue[0u])[queueHandle]).job = &gInputJobs[0u][idx];
      queueHandle++;

   }
}







static void FblMemInitStates( void )
{

   fblMemProgState = kFblMemProgState_Idle;
   gErrorStatus = kFblMemStatus_Ok;

   gProgContext = kFblMemContext_Service;



   (gAllowedInd = (tFblMemAllowedInd)(0x00u));
}
# 1976 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemRamData FblMemInitInternal( void )
{

   vuint32 idx;
   tFblMemQueueHandle queueHandle;



   FblMemInitStates();



   FblMemQueueInit(gProcessingQueue, (sizeof(gProcessingQueue) / sizeof((gProcessingQueue)[0])));

   FblMemInitInputQueue();


   FblMemInitJob(&gWriteFinalizeJob, gRemainderBuffer.data, 32u, kFblMemJobType_WriteFinalize);




   gProcWriteJob.used = 0u;
# 2009 "../../../../external/BSW/Fbl/fbl_mem.c"
   FblMemQueueInit(gVerifyPipeQueue, (sizeof(gVerifyPipeQueue) / sizeof((gVerifyPipeQueue)[0])));

   queueHandle = (tFblMemQueueHandle)2u;


   idx = 0u;



   {





      FblMemInitJob(&gVerifyPipeReadJob[idx], ((tFblMemRamData)0), 0, kFblMemJobType_VerifyPipeRead);


      gVerifyPipeReadJob[idx].jobClass = tFblMemJobClass_VerifyPipe;


      ((gVerifyPipeQueue)[queueHandle]).job = &gVerifyPipeReadJob[idx];



   }


   FblMemInitJob(&gVerifyPipeUpdateJob, gVerifyPipeReadBuffer, 256u, kFblMemJobType_VerifyPipeUpdate);
   FblMemInitJob(&gVerifyPipeFinalizeJob, ((tFblMemRamData)0), 0, kFblMemJobType_VerifyPipeFinalize);



   FblMemInitBufferIntegrity();







   (gAllowedInd = (tFblMemAllowedInd)(0x01u | 0x40u));

   return FblMemGetActiveBuffer();
}
# 2064 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemStorePreamble( void )
{






   (void)FblOwnMemcpy( (void *)(gPreambleBuffer), (const void *)(FblMemGetActiveBuffer()), (unsigned int)(2u));
}
# 2084 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemRestorePreamble( void )
{

   (void)FblOwnMemcpy( (void *)(FblMemGetActiveBuffer()), (const void *)(gPreambleBuffer), (unsigned int)(2u));
}
# 2103 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblLength FblMemLimitLength( tFblLength inputLen, tFblMemJobType type, tFblMemOperationMode mode )
{
   tFblLength lengthLimit;
   tFblLength localInputLen;

   localInputLen = inputLen;
# 2119 "../../../../external/BSW/Fbl/fbl_mem.c"
   if (!((type < kFblMemJobType_Max))) ApplFblFatalError((0x01u));

   lengthLimit = gLengthLimits[type].limit;

   if (lengthLimit > 0u)
   {



      if ((gLengthLimits[type].unlimitedMode != mode) && (localInputLen > lengthLimit))




      {
         localInputLen = lengthLimit;
      }
   }

   return localInputLen;
}
# 2150 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblLength FblMemPadLength( tFblAddress address, tFblLength length )
{
   tFblLength localAddress;
   tFblLength localLength;
   tFblLength padLen;
   tFblAddress alignMask;
   vsint16 oldSegment;


   localLength = length;


   if (length > 0u)
   {
      localLength--;
   }


   localAddress = address + localLength;


   padLen = 0u;


   oldSegment = memSegment;


   memSegment = FblMemSegmentNrGet(localAddress);


   if (memSegment >= 0)
   {

      alignMask = (tFblAddress)((memDrvLst[FlashBlock[memSegment].device].segmentSize) - 1uL);



      padLen = localAddress ^ alignMask;


      if (0u == length)
      {
         padLen++;
      }


      padLen &= alignMask;
   }


   memSegment = oldSegment;

   return padLen;
}
# 2215 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblLength FblMemPadBuffer( tFblAddress address, tFblLength length, tFblMemRamData data )
{
   tFblMemRamData padBuffer;
   tFblLength padLen;
   tFblLength idx;


   padLen = FblMemPadLength(address, length);



   if (padLen > 0u)
   {

      padBuffer = &data[1];


      for (idx = 0u; idx < padLen; idx++)
      {





         padBuffer[idx] = 0xFFu;
      }
   }

   return padLen;
}
# 2277 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemCopyBuffer( tFblAddress programAddress,
   const tFblLength * programLength, tFblMemConstRamData programData )
{

   (void)FblOwnMemcpy( (void *)((programAddress)), (const void *)((programData)), (unsigned int)((*programLength)));

   return kFblMemStatus_Ok;
}
# 2298 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemEraseRegionInternal( tFblAddress eraseAddress, tFblLength eraseLength )
{
   tFblMemStatus retVal;
   IO_ErrorType flashErrorCode;
   tFblLength eraseRemainder;
   tFblLength currentLength;
   tFblLength distance;
   vsint16 nextMemSegment;
   tFblAddress localEraseAddress;




   retVal = kFblMemStatus_Ok;

   localEraseAddress = eraseAddress;
   eraseRemainder = eraseLength;
   memSegment = FblMemSegmentNrGet(localEraseAddress);


   if (memSegment < 0)
   {
      FblErrStatSetAddress(localEraseAddress);
      { FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND); (retVal) = kFblMemStatus_EraseOutsideFbt; };
   }
   else
   {
      nextMemSegment = memSegment;

      while (eraseRemainder > 0u)
      {

         FblMemTriggerWatchdog();

         FblMemResponsePending();


         FblErrStatSetAddress(localEraseAddress);
# 2348 "../../../../external/BSW/Fbl/fbl_mem.c"
         currentLength = (FlashBlock[memSegment].end - localEraseAddress) + 1u;
         if (eraseRemainder > currentLength)
         {
            nextMemSegment = memSegment + 1;

            if (nextMemSegment >= (vsint16)kNrOfFlashBlock)
            {

               { FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND); (retVal) = kFblMemStatus_EraseOutsideFbt; };
               return retVal;
            }


            distance = FlashBlock[nextMemSegment].begin - localEraseAddress;
            if (distance <= eraseRemainder)
            {
               eraseRemainder -= distance;
            }
            else
            {

               { FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND); (retVal) = kFblMemStatus_EraseOutsideFbt; };
               return retVal;
            }
         }
         else
         {
            currentLength = eraseRemainder;
            eraseRemainder = 0u;
         }
# 2391 "../../../../external/BSW/Fbl/fbl_mem.c"
         if (0x00u != FblDiagMemPreWrite())
         {
            { ; (retVal) = kFblMemStatus_ErasePreErase; };
            return retVal;
         }


         flashErrorCode = MemDriver_REraseSync(currentLength, localEraseAddress);



         if (0x00u != FblDiagMemPostWrite())
         {
            { ; (retVal) = kFblMemStatus_ErasePostErase; };
            return retVal;
         }
# 2419 "../../../../external/BSW/Fbl/fbl_mem.c"
         if (0x00u != flashErrorCode)
         {

            { { FblErrStatSetFlashDrvError(flashErrorCode); FblErrStatSetError(FBL_ERR_FLASH_ERASE_ERROR); }; (retVal) = kFblMemStatus_DriverErase; };
            return retVal;
         }
# 2435 "../../../../external/BSW/Fbl/fbl_mem.c"
         memSegment = nextMemSegment;
         localEraseAddress = FlashBlock[memSegment].begin;
      }
   }

   return retVal;
}
# 2465 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemProgramBufferInternal( tFblAddress programAddress,
   tFblLength * programLength, tFblMemRamData programData, tFblMemProgState checkPointState )
{
   tFblMemStatus retVal;
   tFblLength currentLength;
   tFblLength localLength;
   tFblLength segLength;
   tFblLength padLength;
   tFblLength bufferIndex;
   tFblLength padOffset;
   IO_ErrorType flashErrorCode;
   tFblAddress localProgramAddress;






   (void)checkPointState;


   retVal = kFblMemStatus_Ok;
   padLength = 0u;
   padOffset = 0u;
   localProgramAddress = programAddress;


   localLength = *programLength;

   bufferIndex = 0u;


   while ((localLength > 0u) && (kFblMemProgState_Pending == fblMemProgState))
   {

      FblMemTriggerWatchdog();




      FblMemResponsePending();



      FblErrStatSetAddress(localProgramAddress);


      currentLength = localLength;

      memSegment = FblMemSegmentNrGet(localProgramAddress);


      if (memSegment < 0)
      {
         { FblErrStatSetError(FBL_ERR_NO_MEMORY_REGION_FOUND); (retVal) = kFblMemStatus_ProgramOutsideFbt; };
         return retVal;
      }
# 2534 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (0u != (localProgramAddress & ((tFblAddress)(memDrvLst[FlashBlock[memSegment].device].segmentSize) - 1u)))
      {
         { FblErrStatSetError(FBL_ERR_FLASH_PROG_ERROR); (retVal) = kFblMemStatus_ProgramUnalignedAddress; };
         return retVal;
      }


      segLength = (FlashBlock[memSegment].end - localProgramAddress) + 1u;


      if (segLength < currentLength)
      {

         currentLength = segLength;
      }
      else
      {

         padOffset = bufferIndex + (currentLength - 1u);


         padLength = FblMemPadBuffer(localProgramAddress, currentLength, &programData[padOffset]);
         currentLength += padLength;
      }
# 2571 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (0x00u != FblDiagMemPreWrite())
      {
         { ; (retVal) = kFblMemStatus_ProgramPreWrite; };
         return retVal;
      }



      flashErrorCode = MemDriver_RWriteSync(&programData[bufferIndex], currentLength, localProgramAddress);
# 2588 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (0x00u != FblDiagMemPostWrite())
      {
         { ; (retVal) = kFblMemStatus_ProgramPostWrite; };
         return retVal;
      }
# 2606 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (0x00u != flashErrorCode)
      {
         { { FblErrStatSetFlashDrvError(flashErrorCode); FblErrStatSetError(FBL_ERR_FLASH_PROG_ERROR); }; (retVal) = kFblMemStatus_DriverWrite; };
         return retVal;
      }



      localProgramAddress += (tFblAddress)currentLength;

      if (localLength > currentLength)
      {

         bufferIndex += currentLength;
         localLength -= currentLength;
      }
      else
      {

         if (!(((currentLength - padLength) == localLength))) ApplFblFatalError((0x01u));


         localLength = 0u;
      }

   }


   *programLength -= localLength;

   return retVal;
}
# 2649 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblLength FblMemGetSpecificRemainder( tFblAddress address, tFblLength length )
{
   tFblLength localRemainder;
   vsint16 tempSegment;


   localRemainder = 0u;


   tempSegment = memSegment;
   memSegment = FblMemSegmentNrGet(address + (length - 1u));

   if (memSegment >= 0)
   {

      localRemainder = ((tFblLength)(((address) + (tFblAddress)(length)) & ((tFblAddress)((memDrvLst[FlashBlock[memSegment].device].segmentSize)) - 1u)));
   }


   memSegment = tempSegment;

   return localRemainder;
}
# 2786 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemProgramStream( const tFblMemJob * programJob,
   tFblLength * programLength, tFblMemOperationMode mode )
{
   tFblMemStatus retVal;
   tFblMemRamData programData;
   tFblLength localLength;

   tFblLength requestLength;
   tFblLength localRemainder;
# 2805 "../../../../external/BSW/Fbl/fbl_mem.c"
   FblMemTriggerWatchdog();


   localLength = *programLength;

   programData = FblMemGetBuffer(programJob);


   localRemainder = 0u;


   if (kFblMemType_RAM != gSegInfo.input.type)
   {
# 2826 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (!(gSegInfo.writeRemainder <= programJob->position)) ApplFblFatalError((0x01u));


      programData = &programJob->buffer[programJob->position - gSegInfo.writeRemainder];


      (void)FblOwnMemcpy( (void *)(programData), (const void *)(gRemainderBuffer.data), (unsigned int)(gSegInfo.writeRemainder));

      localLength += gSegInfo.writeRemainder;


      if ( (kFblMemOperationMode_Finalize == mode)





         )
      {

      }
      else
      {

         localRemainder = FblMemGetSpecificRemainder((gSegInfo.writeAddress), (localLength));




         if (localRemainder > localLength)
         {
            localRemainder = 0u;
         }


         localLength -= localRemainder;

      }
   }


   requestLength = localLength;




   if ((localLength + localRemainder) > gSegInfo.writeLength)



   {
      { FblErrStatSetState(FBL_ERR_DATA_OVERFLOW); (retVal) = kFblMemStatus_ProgramOverflow; };
   }
   else
   {




      if (kFblMemType_RAM == gSegInfo.input.type)
      {

         retVal = FblMemCopyBuffer(gSegInfo.writeAddress, &localLength, programData);
      }
      else
      {

         retVal = FblMemProgramBufferInternal(gSegInfo.writeAddress, &localLength, programData, kFblMemProgState_Checkpoint);
      }
   }


   if (kFblMemStatus_Ok == retVal)
   {

      if (!(localLength <= gSegInfo.writeLength)) ApplFblFatalError((0x01u));


      gSegInfo.writeAddress += (tFblAddress)localLength;

      gSegInfo.writeLength -= localLength;


      gSegInfo.writtenLength += localLength;




      if (requestLength == localLength)
      {

         gSegInfo.writeRemainder = localRemainder;

         (void)FblOwnMemcpy( (void *)(gRemainderBuffer.data), (const void *)(&programData[localLength]), (unsigned int)(localRemainder));
      }

      else if (localLength > 0u)
      {

         *programLength = localLength - gSegInfo.writeRemainder;

         gSegInfo.writeRemainder = 0u;
      }
      else
      {

         *programLength = 0u;

      }




   }

   return retVal;
}
# 2963 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemVerifyInput( tFblMemVerifyRoutineInput * routine,
   const tFblMemVerifyData * data, vuint8 state,
   tFblMemVerifyStatus * result )
{
   tFblMemStatus retVal;
   tFblMemVerifyStatus localResult;

   retVal = kFblMemStatus_Ok;
   localResult = (tFblMemVerifyStatus)(SECM_OK);


   if (((tFblMemVerifyFctInput)0) != routine->function)
   {
      routine->param->sigState = state;
      routine->param->sigSourceBuffer = data->data;
      routine->param->sigByteCount = (tFblMemVerifyLength)data->length;



      routine->param->wdTriggerFct = (tFblMemVerifyWdFct)FblMemTriggerWatchdog;



      localResult = routine->function(routine->param);
      if ((tFblMemVerifyStatus)(SECM_OK) != localResult)
      {
         retVal = kFblMemStatus_Failed;
      }
   }

   if ((( tFblMemVerifyStatus *)0) != result)
   {

      *result |= localResult;
   }

   return retVal;
}
# 3009 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemInitVerifyInput( void )
{
   tFblMemStatus retVal;
   tFblMemVerifyData verifyData;

   retVal = kFblMemStatus_Ok;


   verifyData.data = ((tFblMemRamData)0);
   verifyData.length = 0u;





   if (kFblMemStatus_Ok != FblMemVerifyInput( &gBlockInfo.verifyRoutinePipe, &verifyData,
                                                kHashInit, (( tFblMemVerifyStatus *)0) ))
   {

      retVal = kFblMemStatus_Failed;
   }




   return retVal;
}
# 3051 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemJob * FblMemPrepareVerifyPipeJob( vuint32 segmentIndex, tFblAddress address )
{
   tFblMemJob * verifyJob;

   verifyJob = (( tFblMemJob *)0);


   if (((tFblMemVerifyFctInput)0) != gBlockInfo.verifyRoutinePipe.function)
   {

      if (kFblMemStatus_Ok == gErrorStatus)
      {

         if ( ((0u == (gVerifyPipeQueue)[0u].next))
            || (((((gVerifyPipeQueue))[((gVerifyPipeQueue)[0u].prev)])).job->segmentIndex != segmentIndex) )
         {

            if (!((!(1u == (gVerifyPipeQueue)[1u].next)))) ApplFblFatalError((0x01u));


            verifyJob = ((((gVerifyPipeQueue))[((gVerifyPipeQueue)[1u].next)])).job;


            verifyJob->baseAddress = address;
            verifyJob->position = 0u;
            verifyJob->netSize = 0u;
            verifyJob->totalSize = 0u;


            (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, verifyJob, segmentIndex);

            (void)FblMemQueueAppend(gVerifyPipeQueue);
         }


         verifyJob = ((((gVerifyPipeQueue))[((gVerifyPipeQueue)[0u].prev)])).job;
      }
   }

   return verifyJob;
}
# 3106 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemJob * FblMemUpdateVerifyPipeJob( vuint32 segmentIndex, tFblAddress address, tFblLength length )
{
   tFblMemJob * verifyJob;

   verifyJob = (( tFblMemJob *)0);

   if (length > 0u)
   {
      verifyJob = FblMemPrepareVerifyPipeJob(segmentIndex, address);


      if ((( tFblMemJob *)0) != verifyJob)
      {

         verifyJob->used += length;
         verifyJob->netSize += length;
         verifyJob->totalSize += length;
      }
   }

   return verifyJob;
}
# 3151 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemProcessJob( tFblMemJob * activeJob, tFblMemOperationMode mode )
{
   tFblLength actualLength;



   tFblMemRamData activeBuffer;


   tFblMemJob * procOutJob;


   tFblMemVerifyData verifyData;


   tFblAddress prevAddress;
   tFblLength prevRemainder;
   tFblLength pipeVerificationLength;
# 3178 "../../../../external/BSW/Fbl/fbl_mem.c"
   tFblMemOperationMode finalizeStream;
# 3189 "../../../../external/BSW/Fbl/fbl_mem.c"
   FblMemTriggerWatchdog();





   activeBuffer = FblMemGetBuffer(activeJob);


   actualLength = FblMemLimitLength(activeJob->used, activeJob->type, mode);


   switch (activeJob->type)
   {
# 3229 "../../../../external/BSW/Fbl/fbl_mem.c"
      case kFblMemJobType_VerifyPipeRead:
      {






         if (0u != actualLength)
         {






            if (gBlockInfo.readFct(activeJob->baseAddress + activeJob->position, gVerifyPipeUpdateJob.buffer, actualLength) != actualLength)

            {

               { ; (gErrorStatus) = kFblMemStatus_VerifyCompute; };
            }
            else
            {

               gVerifyPipeUpdateJob.position = 0u;
               gVerifyPipeUpdateJob.used = actualLength;


               (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, &gVerifyPipeUpdateJob, activeJob->segmentIndex);
            }
         }

         break;
      }
      case kFblMemJobType_VerifyPipeUpdate:
      {

         verifyData.data = activeBuffer;
         verifyData.length = actualLength;


         if (kFblMemStatus_Ok != FblMemVerifyInput( &gBlockInfo.verifyRoutinePipe, &verifyData,
                                                    kHashCompute, (( tFblMemVerifyStatus *)0) ))
         {

            { ; (gErrorStatus) = kFblMemStatus_VerifyCompute; };
         }

         break;
      }
      case kFblMemJobType_VerifyPipeFinalize:
      {

         verifyData.data = activeBuffer;
         verifyData.length = actualLength;


         if (kFblMemStatus_Ok != FblMemVerifyInput( &gBlockInfo.verifyRoutinePipe, &verifyData,
                                                    kHashFinalize, (( tFblMemVerifyStatus *)0) ))
         {

            { ; (gErrorStatus) = kFblMemStatus_VerifyFinalize; };
         }

         break;
      }



      case kFblMemJobType_ProcInput:
      case kFblMemJobType_ProcFinalize:
      {







         {
            procOutJob = &gProcWriteJob;
         }


         procOutJob->position = gSegInfo.writeRemainder;


         if (actualLength > 0xFFFFu)
         {
           actualLength = 0xFFFFu;
         }





         gProcParam.dataBuffer = activeBuffer;
         gProcParam.dataLength = (vuint16)actualLength;

         gProcParam.dataOutBuffer = &((FblMemGetBuffer(procOutJob))[procOutJob->used]);
         gProcParam.dataOutLength = 0u;


         if (0x00u != ApplFblDataProcessing(&gProcParam))
         {
            { ; (gErrorStatus) = kFblMemStatus_DataProc; };
         }
         else
         {
            if ((gProcParam.dataOutLength | gProcParam.dataLength) == 0u)
            {
               if (kFblMemJobType_ProcFinalize == activeJob->type)
               {


                  if (0x00u != ApplFblDeinitDataProcessing(&gProcParam))
                  {
                     { ; (gErrorStatus) = kFblMemStatus_DataProcDeinit; };
                  }


                  activeJob->completion = kFblMemOperationMode_Unconditional;
               }
               else
               {

                  { ; (gErrorStatus) = kFblMemStatus_DataProcConsume; };
               }
            }
         }

         if (kFblMemStatus_Ok == gErrorStatus)
         {

            actualLength = gProcParam.dataLength;


            if (gProcParam.dataOutLength > 0u)
            {

               if (!((gProcParam.dataOutBuffer == &((FblMemGetBuffer(procOutJob))[procOutJob->used])))) ApplFblFatalError((0x02u));

               if (!((gProcParam.dataOutLength <= 256u))) ApplFblFatalError((0x02u));


               procOutJob->used += gProcParam.dataOutLength;


               if (!((procOutJob->used <= (procOutJob->totalSize - procOutJob->offset)))) ApplFblFatalError((0x01u));
# 3400 "../../../../external/BSW/Fbl/fbl_mem.c"
               (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, procOutJob, activeJob->segmentIndex);

            }

         }

         break;
      }
      case kFblMemJobType_ProcWrite:


      case kFblMemJobType_WriteFinalize:

      case kFblMemJobType_InputWrite:
      {


         prevAddress = gSegInfo.writeAddress;
         prevRemainder = gSegInfo.writeRemainder;



         if (kFblMemJobType_WriteFinalize == activeJob->type)
         {
            finalizeStream = kFblMemOperationMode_Finalize;

            activeJob->position = gSegInfo.writeRemainder;
         }
# 3436 "../../../../external/BSW/Fbl/fbl_mem.c"
         else

         {
            finalizeStream = kFblMemOperationMode_Normal;
         }


         gErrorStatus = FblMemProgramStream(activeJob, &actualLength, finalizeStream);
# 3461 "../../../../external/BSW/Fbl/fbl_mem.c"
         pipeVerificationLength = ((actualLength + prevRemainder) - gSegInfo.writeRemainder);
# 3483 "../../../../external/BSW/Fbl/fbl_mem.c"
         (void)FblMemUpdateVerifyPipeJob(gSegInfo.ownIndex, prevAddress, pipeVerificationLength);


         break;
      }
# 3676 "../../../../external/BSW/Fbl/fbl_mem.c"
      case kFblMemJobType_Max:
      default:
      {

         { ; (gErrorStatus) = kFblMemStatus_Failed; };

         break;
      }
   }


   activeJob->position += actualLength;
   activeJob->used -= actualLength;


   if (kFblMemStatus_Ok == gErrorStatus)
   {
      if (kFblMemStatus_Ok != FblMemVerifyBufferIntegrity())
      {

         { ; (gErrorStatus) = kFblMemStatus_Failed; };
      }
   }



   return gErrorStatus;
}
# 3715 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemProcessQueue( tFblMemOperationMode mode )
{

   tFblMemQueueHandle activeHandle;


   tFblMemQueueEntry * removeQueue;

   tFblMemJob * activeJob;

   FblMemTriggerWatchdog();





   ;





   if (fblMemProgState < kFblMemProgState_Suspended)
   {

   }


   else if ( (kFblMemContext_Background == gProgContext)
          && (kFblMemProgState_Pending != fblMemProgState) )
   {

   }

   else
   {

      fblMemProgState = kFblMemProgState_Pending;
   }





   ;

   if (kFblMemProgState_Pending == fblMemProgState)
   {

      removeQueue = (( tFblMemQueueEntry *)0);



      activeHandle = ((gProcessingQueue)[0u].next);
      activeJob = gProcessingQueue[activeHandle].job;






      if (kFblMemStatus_Ok == FblMemProcessJob(activeJob, mode))
      {

         if ( (kFblMemOperationMode_Unconditional == activeJob->completion)
            || ((kFblMemOperationMode_Normal == activeJob->completion) && (0u == activeJob->used)) )
         {


            (void)FblMemQueueRemove(gProcessingQueue, activeHandle);

            if ((0u == (gProcessingQueue)[0u].next))

            {

               fblMemProgState = kFblMemProgState_Idle;
            }



            switch (activeJob->jobClass)
            {


               case tFblMemJobClass_PipeProg:
               {
                  {

                     removeQueue = gPipeProgQueue[0u];
                  }

                  break;
               }


               case tFblMemJobClass_VerifyPipe:
               {

                  removeQueue = gVerifyPipeQueue;

                  break;
               }


               case tFblMemJobClass_Default:

               default:
               {

                  break;
               }
            }

         }
      }
      else
      {

         fblMemProgState = kFblMemProgState_Error;



         removeQueue = gPipeProgQueue[0u];

      }






      if ( ((( tFblMemQueueEntry *)0) != removeQueue)
        && (!(0u == (removeQueue)[0u].next)) )
      {
         (void)FblMemQueueRemove(removeQueue, ((removeQueue)[0u].next));
      }

   }
}
# 3863 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemFlushQueueByPrio( tFblMemQueuePrio prio )
{
# 3874 "../../../../external/BSW/Fbl/fbl_mem.c"
   while ( ((fblMemProgState >= kFblMemProgState_Suspended))


        && (((((gProcessingQueue))[((gProcessingQueue)[0u].next)])).prio >= prio)

         )
   {

      FblMemProcessQueue(kFblMemOperationMode_Finalize);
   }
}
# 3895 "../../../../external/BSW/Fbl/fbl_mem.c"
static void FblMemUnblockQueue( const tFblMemQueueEntry * queue )
{

   while ( ((1u == (queue)[1u].next)) && ((fblMemProgState >= kFblMemProgState_Suspended)) )
   {

      FblMemProcessQueue(kFblMemOperationMode_Normal);
   }
}
# 3922 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblMemStatus FblMemQueueBuffer( tFblMemConstRamData buffer, tFblLength offset, tFblLength length )
{
   tFblMemStatus retVal;
   tFblMemJob * activeJob;
# 3940 "../../../../external/BSW/Fbl/fbl_mem.c"
   activeJob = FblMemGetPendingInputJob();
# 3953 "../../../../external/BSW/Fbl/fbl_mem.c"
   if ( (buffer != FblMemGetBuffer(activeJob))
     || (offset >= activeJob->netSize)
     || (length > (activeJob->netSize - offset)) )

   {
      { ; (retVal) = kFblMemStatus_DataIndParam; };
   }
   else





   {





      if (kFblMemProgState_Error != fblMemProgState)
      {

         activeJob->position = activeJob->offset + offset;
         activeJob->used = length;







         activeJob->type = gSegInfo.jobType;


         {


            if ((1u == (gVerifyPipeQueue)[1u].next))
            {





               if (((((gVerifyPipeQueue))[((gVerifyPipeQueue)[0u].prev)])).job->segmentIndex != gSegInfo.ownIndex)

               {

                  FblMemUnblockQueue(gVerifyPipeQueue);
               }
            }

         }




         if (kFblMemProgState_Error != fblMemProgState)

         {

            (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, activeJob, gSegInfo.ownIndex);



            (void)FblMemQueueAppend(gPipeProgQueue[0u]);



            FblMemUnblockQueue(gPipeProgQueue[0u]);

         }




         if (kFblMemProgState_Error != fblMemProgState)

         {

            fblMemProgState = kFblMemProgState_Pending;
         }
      }


      retVal = gErrorStatus;
   }

   return retVal;
}
# 4054 "../../../../external/BSW/Fbl/fbl_mem.c"
static tFblResult FblMemCheckAllowed( tFblMemAllowedInd check, tFblMemAllowedInd clear )
{
   tFblResult retVal;





   FblMemTriggerWatchdog();



   if (((gAllowedInd & (tFblMemAllowedInd)(check)) == (tFblMemAllowedInd)(check)))
   {

      (gAllowedInd &= ((tFblMemAllowedInd)~((tFblMemAllowedInd)(clear))));
      retVal = 0x00u;
   }
   else
   {

      (gAllowedInd = (tFblMemAllowedInd)(0x00u));
      retVal = 0x01u;
   }

   return retVal;
}
# 4332 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemRamData FblMemInitPowerOnExt( tFblLength preambleLen, tFblMemInputSource sourceHandle )
{
# 4342 "../../../../external/BSW/Fbl/fbl_mem.c"
   (void)preambleLen;



   (void)sourceHandle;
# 4357 "../../../../external/BSW/Fbl/fbl_mem.c"
   if (!((vuint32)kFblMemJobType_Max == ((sizeof(gJobPrio) / sizeof((gJobPrio)[0])) - 1u))) ApplFblFatalError((0x01u));




   if (!((vuint32)kFblMemJobType_Max == ((sizeof(gLengthLimits) / sizeof((gLengthLimits)[0])) - 1u))) ApplFblFatalError((0x01u));





   FblMemInitJob(&gProcWriteJob, gProcBuffer.data, (sizeof(gProcBuffer.data) / sizeof((gProcBuffer.data)[0])), kFblMemJobType_ProcWrite);

   gProcWriteJob.netSize = 256u;

   FblMemInitJob(&gProcFinalizeJob, ((tFblMemRamData)0), 0, kFblMemJobType_ProcFinalize);





   gProcParam.dataOutMaxLength = (vuint16)256u;

   gProcParam.wdTriggerFct = FblMemTriggerWatchdogExt;
# 4422 "../../../../external/BSW/Fbl/fbl_mem.c"
   return FblMemInitInternal();
}







tFblMemRamData FblMemInitPowerOn( void )
{

   return FblMemInitPowerOnExt(2u, 0u);
}
# 4445 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemRamData FblMemInit( void )
{
   tFblMemRamData activeBuffer;






   FblMemStorePreamble();



   activeBuffer = FblMemInitInternal();







   FblMemRestorePreamble();


   return activeBuffer;
}







void FblMemDeinit( void )
{

   FblMemInitStates();
}
# 4508 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemRamData FblMemGetActiveBuffer( void )
{
   tFblMemJob * inputJob;


   inputJob = FblMemGetPendingInputJob();

   inputJob->position = inputJob->offset;


   return FblMemGetBuffer(inputJob);
}
# 4530 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemBlockEraseIndication( const tFblMemBlockInfo * block )
{
   tFblMemStatus retVal;


   if (0x00u != FblMemCheckAllowed(0x40u, 0x00u))
   {
      { ; (retVal) = kFblMemStatus_BlockEraseSequence; };
   }
   else
   {
# 4553 "../../../../external/BSW/Fbl/fbl_mem.c"
      retVal = FblMemEraseRegionInternal(block->targetAddress, block->targetLength);





   }

   if (kFblMemStatus_Ok == retVal)
   {

      (gAllowedInd = (tFblMemAllowedInd)(0x01u | 0x40u));
   }

   return retVal;
}
# 4582 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemBlockStartIndication( tFblMemBlockInfo * block )
{
   tFblMemStatus retVal;
# 4594 "../../../../external/BSW/Fbl/fbl_mem.c"
   retVal = kFblMemStatus_Ok;


   if (0x00u != FblMemCheckAllowed(0x01u, 0x01u))
   {
      { ; (retVal) = kFblMemStatus_BlockStartSequence; };
   }
   else
   {




      if (((tFblMemVerifyFctInput)0) != block->verifyRoutinePipe.function)
      {
      }
      else


      if (((tFblMemVerifyFctOutput)0) != block->verifyRoutineOutput.function)
      {
      }
      else

      {
         { ; (retVal) = kFblMemStatus_BlockStartParam; };
      }

   }

   if (kFblMemStatus_Ok == retVal)
   {


      gBlockInfo = *block;



      gBlockInfo.segmentList->nrOfSegments = 0u;



      gSegInfo.nextIndex = 0u;


      (gAllowedInd = (tFblMemAllowedInd)(0x02u));
   }

   return retVal;
}
# 4654 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemBlockEndIndication( void )
{
   tFblMemStatus retVal;





   retVal = kFblMemStatus_Ok;


   if (0x00u != FblMemCheckAllowed(0x10u, 0x10u))
   {
      { ; (retVal) = kFblMemStatus_BlockEndSequence; };
   }
   else
   {
# 4725 "../../../../external/BSW/Fbl/fbl_mem.c"
      if (((tFblMemVerifyFctInput)0) != gBlockInfo.verifyRoutinePipe.function)
      {


         (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, &gVerifyPipeFinalizeJob, gSegInfo.ownIndex);


         fblMemProgState = kFblMemProgState_Pending;
      }
      else

      {

      }
   }

   if (kFblMemStatus_Ok == retVal)
   {

      (gAllowedInd = (tFblMemAllowedInd)(0x20u));
   }

   return retVal;
}
# 4763 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemBlockVerify( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult )
{
   return FblMemBlockVerifyExtended(verifyData, verifyResult, 0u);
}
# 4785 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemBlockVerifyExtended( const tFblMemBlockVerifyData * verifyData,
   tFblMemVerifyStatus * verifyResult, const tFblMemVerifyOption option )
{
   tFblMemStatus retVal;
   tFblMemVerifyStatus localResult;

   tFblMemVerifyStatus verifyOutputResult;


   const tFblMemSegmentListEntry * lastSegment;
# 4806 "../../../../external/BSW/Fbl/fbl_mem.c"
   retVal = kFblMemStatus_Ok;
   localResult = (tFblMemVerifyStatus)(SECM_OK);


   if (0x00u != FblMemCheckAllowed(0x20u, 0x00u))
   {
      { ; (retVal) = kFblMemStatus_BlockVerifySequence; };
   }
   else
   {


      FblMemFlushQueueByPrio((tFblMemQueuePrio)kFblMemJobPrio_Lowest);


      if (kFblMemProgState_Error == fblMemProgState)
      {

         retVal = gErrorStatus;
      }
      else

      {

         if ((retVal == kFblMemStatus_Ok) || (( option & (1u << 2u) ) != 0u))
         {


            if (kFblMemStatus_Ok != FblMemVerifyInput( &gBlockInfo.verifyRoutinePipe, &verifyData->verifyDataPipe,
                                                      kSigVerify, &localResult ))
            {
               { ; (retVal) = kFblMemStatus_BlockVerifyPipeVerify; };
            }
         }


         if ((retVal == kFblMemStatus_Ok) || (( option & (1u << 3u) ) != 0u))
         {

            if (((tFblMemVerifyFctOutput)0) != gBlockInfo.verifyRoutineOutput.function)
            {




               gBlockInfo.verifyRoutineOutput.param->wdTriggerFct = (tFblMemVerifyWdFct)FblMemTriggerWatchdog;
# 4864 "../../../../external/BSW/Fbl/fbl_mem.c"
               gBlockInfo.verifyRoutineOutput.param->readMemory = gBlockInfo.readFct;

               gBlockInfo.verifyRoutineOutput.param->verificationData = verifyData->verifyDataOutput.data;

               gBlockInfo.verifyRoutineOutput.param->blockStartAddress = gBlockInfo.targetAddress;




               lastSegment = &(gBlockInfo.segmentList->segmentInfo[gBlockInfo.segmentList->nrOfSegments - 1u]);


               gBlockInfo.verifyRoutineOutput.param->blockLength = (lastSegment->targetAddress - gBlockInfo.targetAddress)
                                                                   + lastSegment->length;



               verifyOutputResult = gBlockInfo.verifyRoutineOutput.function(gBlockInfo.verifyRoutineOutput.param);
               localResult |= verifyOutputResult;
               if ((tFblMemVerifyStatus)(SECM_OK) != verifyOutputResult)
               {
                  { ; (retVal) = kFblMemStatus_BlockVerifyOutputVerify; };
               }
            }
         }
# 4899 "../../../../external/BSW/Fbl/fbl_mem.c"
      }
   }

   if (kFblMemStatus_Ok == retVal)
   {

      (gAllowedInd |= (tFblMemAllowedInd)(0x01u | 0x40u));
   }

   if ((( tFblMemVerifyStatus *)0) != verifyResult)
   {

      *verifyResult = localResult;
   }

   return retVal;
}
# 4937 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemSegmentStartIndication( const tFblMemSegmentInfo * segment )
{
   tFblMemStatus retVal;
# 4953 "../../../../external/BSW/Fbl/fbl_mem.c"
   retVal = kFblMemStatus_Ok;





   gSegInfo.jobType = kFblMemJobType_InputWrite;



   if (0x00u != FblMemCheckAllowed(0x02u, 0x02u))
   {
      { ; (retVal) = kFblMemStatus_SegmentStartSequence; };
   }

   else if (gBlockInfo.segmentList->nrOfSegments >= gBlockInfo.maxSegments)
   {

      { FblErrStatSetError(FBL_ERR_TOO_MANY_SEGMENTS_IN_MODULE); (retVal) = kFblMemStatus_SegmentStartSegmentCount; };
   }

   else
   {


      if (0u == gSegInfo.nextIndex)
      {

         if (kFblMemStatus_Ok != FblMemInitVerifyInput())
         {

            { ; (retVal) = kFblMemStatus_SegmentStartVerifyInit; };
         }
      }

      if (kFblMemStatus_Ok == retVal)
# 5026 "../../../../external/BSW/Fbl/fbl_mem.c"
      {

         if (0x00u == ((tFblResult)((kDiagSubNoDataProcessing == (segment->dataFormat)) ? 0x01u : 0x00u)))
         {


            gSegInfo.jobType = kFblMemJobType_ProcInput;


            gProcParam.mode = segment->dataFormat;


            if (0x00u != ApplFblInitDataProcessing(&gProcParam))
            {
               { ; (retVal) = kFblMemStatus_SegmentStartDataProcInit; };
            }




         }
      }
# 5159 "../../../../external/BSW/Fbl/fbl_mem.c"
   }

   if (kFblMemStatus_Ok == retVal)
   {

      gSegInfo.input = *segment;


      gSegInfo.writeAddress = segment->targetAddress;
      gSegInfo.writeRemainder = 0u;


      gSegInfo.writeLength = gBlockInfo.targetLength - (segment->targetAddress - gBlockInfo.targetAddress);
      gSegInfo.writtenLength = 0u;





      gSegInfo.inputAddress = segment->targetAddress;



      gSegInfo.inputLength = segment->targetLength;


      gSegInfo.ownIndex = gSegInfo.nextIndex;
      gSegInfo.nextIndex++;


      (gAllowedInd = (tFblMemAllowedInd)(0x04u));
   }

   return retVal;
}
# 5207 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemSegmentEndIndication( tFblLength * writeLength )
{
   tFblMemStatus retVal;



   tFblMemJob * activeJob;


   tFblMemSegmentListEntry * activeSegment;


   retVal = kFblMemStatus_Ok;


   if (0x00u != FblMemCheckAllowed(0x08u, 0x04u | 0x08u))
   {
      { ; (retVal) = kFblMemStatus_SegmentEndSequence; };
   }
   else
   {



      FblMemStorePreamble();







      {



         if (kFblMemProgState_Error != fblMemProgState)
         {


            if (0x00u == ((tFblResult)((kDiagSubNoDataProcessing == (gSegInfo.input.dataFormat)) ? 0x01u : 0x00u)))
            {

               gProcFinalizeJob.completion = kFblMemOperationMode_Finalize;



               (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, &gProcFinalizeJob, gSegInfo.ownIndex);
            }
# 5272 "../../../../external/BSW/Fbl/fbl_mem.c"
            {



               (void)FblMemQueueDefaultPrioInsert(gProcessingQueue, &gWriteFinalizeJob, gSegInfo.ownIndex);
# 5285 "../../../../external/BSW/Fbl/fbl_mem.c"
            }


            if (!(0u == (gProcessingQueue)[0u].next))

            {

               fblMemProgState = kFblMemProgState_Pending;
            }
         }

      }




      FblMemFlushQueueByPrio((tFblMemQueuePrio)kFblMemJobPrio_Write);


      if (kFblMemProgState_Error == fblMemProgState)
      {

         retVal = gErrorStatus;
      }
      else

      {







         if (0u != gSegInfo.inputLength)




         {
            { ; (retVal) = kFblMemStatus_SegmentEndInsufficientData; };
         }
# 5340 "../../../../external/BSW/Fbl/fbl_mem.c"
         *writeLength = gSegInfo.writtenLength;







      }



      if (kFblMemStatus_Ok == retVal)
      {
         activeSegment = &(gBlockInfo.segmentList->segmentInfo[gBlockInfo.segmentList->nrOfSegments]);
         activeSegment->targetAddress = gSegInfo.input.targetAddress;
         activeSegment->transferredAddress = gSegInfo.input.logicalAddress;
         activeSegment->length = *writeLength;
         gBlockInfo.segmentList->nrOfSegments++;
      }





      activeJob = FblMemGetPendingInputJob();
      activeJob->offset = (((((((2u)) - 1u) / (4u)) + 1u) * (4u)) - (2u));







      FblMemRestorePreamble();

   }


   if (kFblMemStatus_Ok == retVal)
   {

      (gAllowedInd = (tFblMemAllowedInd)(0x02u | 0x10u));
   }

   return retVal;
}
# 5405 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemDataIndication( tFblMemConstRamData buffer, tFblLength offset, tFblLength length )
{
   tFblMemStatus retVal;


   tFblMemJob * activeJob;


   tFblLength inputLength;


   inputLength = 0u;


   retVal = kFblMemStatus_Ok;


   if (0x00u != FblMemCheckAllowed(0x04u, 0x04u | 0x08u))
   {
      { ; (retVal) = kFblMemStatus_DataIndSequence; };
   }
   else
   {




      {
# 5457 "../../../../external/BSW/Fbl/fbl_mem.c"
         {






            inputLength = length;

            if (gSegInfo.inputLength < length)



            {
               { FblErrStatSetState(FBL_ERR_DATA_OVERFLOW); (retVal) = kFblMemStatus_DataIndOverflow; };
            }
         }
      }

   }

   if (kFblMemStatus_Ok == retVal)
   {





      FblMemStorePreamble();



      retVal = FblMemQueueBuffer(buffer, offset, length);
      if (kFblMemStatus_Ok == retVal)
      {


         gSegInfo.inputLength -= inputLength;
# 5513 "../../../../external/BSW/Fbl/fbl_mem.c"
         {



            activeJob = FblMemGetPendingInputJob();
            activeJob->offset = (((((((2u)) - 1u) / (4u)) + 1u) * (4u)) - (2u));



            if (kFblMemType_RAM == gSegInfo.input.type)
            {
            }
            else

            if (0x00u == ((tFblResult)((kDiagSubNoDataProcessing == (gSegInfo.input.dataFormat)) ? 0x01u : 0x00u)))
            {
            }
            else







            {

               activeJob->offset += FblMemGetSpecificRemainder((gSegInfo.inputAddress), (length));


               gSegInfo.inputAddress += length;
            }


         }
      }






      FblMemRestorePreamble();

   }

   if (kFblMemStatus_Ok == retVal)
   {


      if (gSegInfo.inputLength == 0u)
      {
         (gAllowedInd = (tFblMemAllowedInd)(0x08u));
      }
      else

      {

         (gAllowedInd = (tFblMemAllowedInd)(0x04u | 0x08u));
      }
   }

   return retVal;
}
# 5586 "../../../../external/BSW/Fbl/fbl_mem.c"
void FblMemTask( void )
{

   switch (fblMemProgState)
   {

      case kFblMemProgState_Pending:
      {


         gProgContext = kFblMemContext_Background;





         while (kFblMemProgState_Pending == fblMemProgState)
         {

            FblMemProcessQueue(kFblMemOperationMode_Normal);
         }


         if (kFblMemProgState_SuspendPending == fblMemProgState)
         {
            fblMemProgState = kFblMemProgState_Suspended;
         }



         gProgContext = kFblMemContext_Service;

         break;
      }

      case kFblMemProgState_Idle:
      case kFblMemProgState_Error:

      case kFblMemProgState_Suspended:
      case kFblMemProgState_SuspendPending:

      case kFblMemProgState_Checkpoint:

      default:
      {

         break;
      }
   }

}
# 5646 "../../../../external/BSW/Fbl/fbl_mem.c"
void FblMemFlushInputData( void )
{

   FblMemFlushQueueByPrio((tFblMemQueuePrio)kFblMemJobPrio_Write);
}


# 1 "Include/MemMap.h" 1
# 5654 "../../../../external/BSW/Fbl/fbl_mem.c" 2


# 1 "Include/MemMap.h" 1
# 3765 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 5657 "../../../../external/BSW/Fbl/fbl_mem.c" 2
# 5666 "../../../../external/BSW/Fbl/fbl_mem.c"
void FblMemResumeIndication( void )
{


   if ((fblMemProgState >= kFblMemProgState_Suspended))
   {


      fblMemProgState = kFblMemProgState_Pending;
   }

}
# 5687 "../../../../external/BSW/Fbl/fbl_mem.c"
void FblMemRxNotification( void )
{




   ;





   if (fblMemProgState >= kFblMemProgState_Checkpoint)
   {

      fblMemProgState = kFblMemProgState_SuspendPending;

   }


   ;
}



# 1 "Include/MemMap.h" 1
# 3774 "Include/MemMap.h"
#pragma section
# 5713 "../../../../external/BSW/Fbl/fbl_mem.c" 2


# 1 "Include/MemMap.h" 1
# 5716 "../../../../external/BSW/Fbl/fbl_mem.c" 2
# 5730 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemEraseRegion( tFblAddress eraseAddress, tFblLength eraseLength )
{
   tFblMemStatus retVal;






   retVal = FblMemEraseRegionInternal(eraseAddress, eraseLength);

   return retVal;
}
# 5759 "../../../../external/BSW/Fbl/fbl_mem.c"
tFblMemStatus FblMemProgramBuffer( tFblAddress programAddress,
   tFblLength * programLength, tFblMemRamData programData )
{
   tFblMemProgState activeProgState;
   tFblMemStatus retVal;

   {

      activeProgState = fblMemProgState;


      fblMemProgState = kFblMemProgState_Pending;


      retVal = FblMemProgramBufferInternal(programAddress, programLength, programData, kFblMemProgState_Pending);


      fblMemProgState = activeProgState;
   }

   return retVal;
}
# 5790 "../../../../external/BSW/Fbl/fbl_mem.c"
void FblMemSetInteger( vuint32 count, vuint32 input, tFblMemRamData buffer )
{
   vuint32 localInput;
   vuint32 localCount;

   localInput = input;
   localCount = count;


   while (localCount > 0u)
   {
      localCount--;

      buffer[localCount] = (vuint8)(localInput & 0xFFu);

      localInput >>= 8u;
   }
}
# 5817 "../../../../external/BSW/Fbl/fbl_mem.c"
vuint32 FblMemGetInteger( vuint32 count, tFblMemConstRamData buffer )
{
   vuint32 output;
   vuint32 idx;
   vuint32 localCount;

   localCount = count;
   output = 0u;
   idx = 0u;


   while (localCount > 0u)
   {

      output <<= 8u;

      output |= (vuint32)buffer[idx];

      idx++;
      localCount--;
   }

   return output;
}


# 1 "Include/MemMap.h" 1
# 5844 "../../../../external/BSW/Fbl/fbl_mem.c" 2
