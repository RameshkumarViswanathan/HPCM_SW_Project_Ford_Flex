# 1 "../../../../external/Demo/DemoFlashDrv/FlashRom.c"
# 1 "D:\\usr\\usage\\Delivery\\CBD23x\\CBD2300515\\D00\\external\\Demo\\DemoUpdater\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../external/Demo/DemoFlashDrv/FlashRom.c"
# 10 "../../../../external/Demo/DemoFlashDrv/FlashRom.c"
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

 extern tFblUpdateBlkInfo const FblUpdateBlkInfo[1];


# 1 "Include/MemMap.h" 1
# 30 "Include/DemoFbl.h" 2





 extern vuint8 const FblUpdateBlk0[0x5FFA0];


# 1 "Include/MemMap.h" 1
# 39 "Include/DemoFbl.h" 2
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
# 11 "../../../../external/Demo/DemoFlashDrv/FlashRom.c" 2






 vuint8 const flashDrvBlk0[0x800] = {
 0xC8, 0xCC, 0xCD, 0x6F, 0x46, 0xCD, 0xCC, 0xBC, 0x6E, 0xCD, 0xCC, 0xBC, 0x3C, 0xCD, 0xCC, 0xBC,
 0xEC, 0xCF, 0xCC, 0xBC, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0xC1, 0xCC, 0x4C, 0xC8, 0x16, 0x36, 0x5D, 0xCC, 0x3C, 0x36, 0x15, 0x33, 0x98, 0x99, 0xA4, 0xC3,
 0xC1, 0xCC, 0x4C, 0xC8, 0xCC, 0x5C, 0xC1, 0xCC, 0x4C, 0xC8, 0x16, 0x3C, 0x5D, 0xCC, 0x3C, 0x36,
 0x15, 0x33, 0x98, 0x99, 0xA4, 0xC3, 0xC1, 0xCC, 0x4C, 0xC8, 0xA1, 0x33, 0x27, 0x33, 0xCC, 0x5C,
 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0xD4, 0xCC, 0x5D, 0x8C, 0x4C, 0xE3, 0x15, 0xEE, 0xF8, 0xCC,
 0x80, 0x3C, 0x62, 0xCA, 0x80, 0x3C, 0x62, 0xD8, 0x80, 0xEC, 0xDA, 0xD3, 0xA2, 0x36, 0x5D, 0x8C,
 0x4C, 0x33, 0x15, 0x33, 0xF8, 0xCC, 0x84, 0xCE, 0x16, 0xC6, 0xA3, 0xDE, 0xE9, 0x4C, 0x84, 0xCE,
 0x4E, 0xB3, 0xA3, 0xEE, 0xED, 0x4C, 0x84, 0xCE, 0x4E, 0xE3, 0xA3, 0x8E, 0xD1, 0x4C, 0x8C, 0x81,
 0x4E, 0xC3, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0xDC, 0xCC, 0x5D, 0x8C, 0x4C, 0x03, 0x15, 0x00,
 0xF8, 0xCC, 0xF0, 0xC4, 0xE1, 0xC1, 0xCC, 0xCC, 0x98, 0x0E, 0x43, 0x3E, 0xCD, 0xED, 0x67, 0xD3,
 0x6C, 0x3E, 0x84, 0xCF, 0x43, 0x3F, 0xC3, 0xFD, 0x47, 0xCF, 0xEC, 0xEE, 0x47, 0xC3, 0xCC, 0xE8,
 0x13, 0xCE, 0x3E, 0x33, 0xCE, 0x3E, 0xCC, 0x5C, 0xBA, 0x88, 0x13, 0xD8, 0xC1, 0xCC, 0xF0, 0xD0,
 0xB7, 0xFC, 0xCC, 0x33, 0xD7, 0x43, 0xE6, 0x3A, 0xA0, 0x8C, 0xD7, 0x43, 0xCC, 0x3C, 0xA0, 0x8D,
 0x4E, 0xCE, 0xCC, 0x5C, 0x81, 0x0C, 0x2D, 0x33, 0xDA, 0xCB, 0x4E, 0xDE, 0x33, 0xA3, 0xC2, 0x4C,
 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0x94, 0x5C, 0x1C, 0x33, 0x80, 0x3C, 0xA0, 0x8C, 0x80, 0x3D,
 0xA0, 0x8D, 0x4E, 0xCE, 0xCC, 0x5C, 0x4E, 0xDE, 0xCC, 0x5C, 0x00, 0x8C, 0x84, 0xCE, 0x55, 0x8E,
 0xC8, 0xCC, 0x98, 0xEF, 0x77, 0x0C, 0x33, 0x33, 0xEA, 0xE3, 0x43, 0x03, 0x43, 0x3D, 0xA3, 0xBF,
 0xDF, 0xCC, 0x43, 0xD3, 0xCC, 0x8C, 0x77, 0x0C, 0x33, 0x93, 0xEA, 0x98, 0x43, 0x83, 0xD3, 0xAC,
 0x43, 0xF3, 0xD3, 0x9C, 0x0A, 0xA9, 0x43, 0x93, 0xD3, 0xAC, 0x0A, 0xA9, 0xCA, 0x33, 0x0A, 0x93,
 0xDA, 0xC8, 0x6A, 0x83, 0x7B, 0xCE, 0xDC, 0xEC, 0x6A, 0xE3, 0x43, 0xD3, 0x8C, 0xED, 0xCE, 0xE8,
 0xA3, 0x4F, 0xC6, 0xCC, 0x98, 0xEF, 0x8A, 0xCF, 0x7B, 0xDF, 0xDC, 0xFC, 0x7B, 0xC3, 0xDC, 0x34,
 0xC3, 0x3F, 0x6C, 0x8C, 0xA4, 0xC8, 0xCC, 0x5C, 0xEC, 0xC4, 0x8C, 0x68, 0xA1, 0x33, 0x62, 0x33,
 0x3A, 0xE0, 0x8C, 0x68, 0xA1, 0x33, 0x07, 0x33, 0x7B, 0xEE, 0xCE, 0xEC, 0x14, 0xCC, 0xA4, 0xCE,
 0x14, 0xCC, 0x80, 0x3C, 0xA3, 0xC3, 0x33, 0x33, 0xCC, 0x5C, 0x8C, 0x83, 0x4E, 0xE3, 0xE0, 0x8E,
 0x16, 0xC5, 0xE0, 0x8D, 0x4E, 0xD3, 0xE0, 0x8C, 0xA1, 0x33, 0x83, 0x33, 0x4E, 0xC3, 0x64, 0xE3,
 0xCC, 0x5C, 0x4E, 0xC3, 0x60, 0x8E, 0xCC, 0x5C, 0xEC, 0xC4, 0x8C, 0x68, 0xA1, 0x33, 0x42, 0x33,
 0x3A, 0xE0, 0x8C, 0x68, 0xA1, 0x33, 0x67, 0x33, 0x43, 0xFE, 0x8C, 0xED, 0x14, 0xCC, 0xA4, 0xCE,
 0x14, 0xCC, 0x80, 0x3C, 0xA3, 0xC3, 0x33, 0xB3, 0xCC, 0x5C, 0x8C, 0x83, 0x4E, 0xD8, 0xA1, 0x33,
 0x01, 0x33, 0x55, 0x33, 0xCC, 0xDC, 0x81, 0x8C, 0x2E, 0x33, 0xA4, 0xC3, 0xB7, 0xCC, 0xCC, 0x3B,
 0xD7, 0xC3, 0xBC, 0x3C, 0x01, 0x83, 0x2E, 0xC3, 0x4E, 0xD8, 0xA1, 0x33, 0x13, 0x33, 0xCC, 0x5C,
 0x8C, 0x83, 0xA1, 0x33, 0x20, 0x33, 0x84, 0xB4, 0xA4, 0x34, 0x04, 0x00, 0x80, 0x36, 0xA1, 0x33,
 0xDD, 0x33, 0x4E, 0xC8, 0xA1, 0x33, 0x7E, 0x33, 0xC1, 0xCC, 0x4C, 0xC8, 0x5D, 0xDC, 0x3C, 0xE6,
 0x15, 0xEE, 0x5C, 0x56, 0xB8, 0xE4, 0xC1, 0xCC, 0x4C, 0xC8, 0xDA, 0x33, 0x5D, 0xDC, 0x3C, 0xE6,
 0x15, 0xEE, 0x54, 0x56, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE,
 0x64, 0x66, 0x16, 0x4C, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8, 0x16, 0x9C, 0xA0, 0xEC, 0xC1, 0xCC,
 0x4C, 0xC8, 0x4E, 0xC8, 0xA1, 0x33, 0x7E, 0x33, 0x8C, 0x08, 0xA1, 0x33, 0xCF, 0x33, 0x64, 0xEE,
 0x13, 0xCE, 0xE4, 0x4C, 0x04, 0x00, 0x84, 0xB4, 0x80, 0x36, 0xA1, 0x33, 0x2F, 0x32, 0xC1, 0xCC,
 0x4C, 0xC8, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x5C, 0x56, 0xB8, 0xE4, 0xC1, 0xCC, 0x4C, 0xC8,
 0xDA, 0x33, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x54, 0x56, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8,
 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x64, 0x66, 0x16, 0x4C, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8,
 0x16, 0x93, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8, 0x8C, 0x08, 0xA1, 0x33, 0x17, 0x32, 0x64, 0xEE,
 0xA1, 0x33, 0x0C, 0x32, 0x75, 0x33, 0xC8, 0xCC, 0xA2, 0xCF, 0x5A, 0x8C, 0x64, 0xE3, 0x4E, 0xD8,
 0xA1, 0x33, 0x90, 0x33, 0x55, 0x33, 0xCC, 0xDC, 0x80, 0x3C, 0x01, 0x83, 0x2E, 0xC3, 0x4E, 0xD8,
 0xA1, 0x33, 0xB8, 0x33, 0xCC, 0x5C, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0xD4, 0xCC, 0x80, 0x3C,
 0x62, 0xCF, 0x80, 0x3C, 0xE2, 0xD4, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0xDC, 0xCC, 0x80, 0x3C,
 0xDA, 0x33, 0x22, 0x32, 0xA1, 0x33, 0x65, 0x32, 0x4E, 0xC8, 0xA1, 0x33, 0xF3, 0x33, 0x4E, 0xD8,
 0xA1, 0x33, 0xF0, 0x33, 0x5D, 0xFC, 0xCC, 0x33, 0x15, 0x33, 0xD4, 0xDA, 0x80, 0x3C, 0x43, 0xC3,
 0x9C, 0x3D, 0xA4, 0xC3, 0x5D, 0xFC, 0xCC, 0x33, 0x15, 0x33, 0xEC, 0xDA, 0x80, 0x3C, 0x5A, 0xCE,
 0xA4, 0xC3, 0x4E, 0xC8, 0xA1, 0x33, 0x86, 0x33, 0x4E, 0xD8, 0xA1, 0x33, 0x8B, 0x33, 0xF0, 0xCC,
 0xEC, 0xD4, 0x8C, 0x81, 0x80, 0x87, 0xB4, 0xCF, 0xD5, 0x86, 0xE8, 0xCC, 0xD5, 0x8E, 0xD0, 0xCC,
 0x95, 0x8E, 0xF0, 0xCC, 0x4E, 0xC3, 0x60, 0x8E, 0xA1, 0x33, 0x85, 0x33, 0xA1, 0x33, 0xBE, 0x32,
 0x75, 0x1F, 0xCA, 0xCC, 0x16, 0x64, 0xB4, 0xCD, 0xF7, 0xCC, 0xC9, 0x4C, 0xF7, 0xCC, 0xCE, 0x0C,
 0x4E, 0xC7, 0xCE, 0x02, 0x13, 0xDF, 0xD0, 0xCC, 0xD5, 0x1E, 0xD0, 0xCC, 0xB7, 0xCC, 0x3C, 0x36,
 0xEA, 0x3E, 0x4E, 0xCF, 0x95, 0x6F, 0xC8, 0xCC, 0xC7, 0x3E, 0xCC, 0x4D, 0xF7, 0x1C, 0xC9, 0xFC,
 0x67, 0xCF, 0x49, 0x44, 0x4E, 0xC0, 0xC7, 0x3E, 0xCC, 0x7D, 0xF7, 0xCC, 0xDC, 0xFC, 0x67, 0xCF,
 0x6E, 0x77, 0xF6, 0x3E, 0xF7, 0x4C, 0xCC, 0xFC, 0x67, 0xCF, 0x4E, 0x23, 0x00, 0x10, 0xE1, 0xC3,
 0xCC, 0xCC, 0x4E, 0xC3, 0xB4, 0xCE, 0x5D, 0xCC, 0x3C, 0x26, 0x15, 0x22, 0x98, 0x99, 0x5D, 0x8C,
 0x4C, 0x03, 0x15, 0x00, 0xDC, 0xCC, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0xF8, 0xCC, 0xB7, 0xCC,
 0x3C, 0x56, 0xD1, 0xCC, 0x47, 0xCC, 0x4E, 0xC8, 0xA1, 0x33, 0x14, 0x32, 0xC1, 0xCC, 0x4C, 0xC8,
 0xB8, 0x24, 0xC1, 0xCC, 0x4C, 0xC8, 0x4E, 0xC8, 0xA1, 0x33, 0x3C, 0x32, 0xF0, 0xCB, 0x80, 0x3C,
 0xA3, 0xC3, 0x2C, 0x4C, 0x80, 0x3C, 0xA3, 0xD3, 0x11, 0x4C, 0x80, 0x0C, 0x23, 0x93, 0x1E, 0x4C,
 0x80, 0x0C, 0x23, 0x83, 0x3A, 0xB3, 0xD1, 0xCC, 0x01, 0xCC, 0xCE, 0x20, 0x16, 0x66, 0xB4, 0xCD,
 0xF3, 0x76, 0xC0, 0x4C, 0x56, 0x37, 0xD5, 0x1E, 0xF0, 0xCC, 0xEA, 0x3E, 0x16, 0x66, 0xE7, 0x72,
 0x8C, 0x0E, 0x67, 0xA3, 0x46, 0x3E, 0xB4, 0xCD, 0x55, 0x1E, 0xFC, 0xCC, 0x79, 0x6E, 0xDC, 0xCC,
 0x80, 0x13, 0xB4, 0xC9, 0x94, 0xCE, 0xCA, 0xE3, 0x4E, 0xC8, 0xA1, 0x33, 0x6B, 0x32, 0x43, 0x20,
 0xD3, 0x1C, 0x13, 0xC1, 0xDB, 0xCC, 0x55, 0x6E, 0xC0, 0xCC, 0xDC, 0xEF, 0x4E, 0xC3, 0xAC, 0x1E,
 0x7C, 0x3E, 0xC1, 0xCC, 0x4C, 0xC8, 0x43, 0xD3, 0xCC, 0xED, 0xD7, 0x0E, 0x9B, 0xED, 0xCA, 0xEE,
 0x6A, 0x5E, 0x88, 0xFF, 0xAC, 0xE8, 0xB8, 0x8F, 0xC1, 0xCC, 0x4C, 0xC8, 0x0E, 0xD3, 0x30, 0xEE,
 0x80, 0x3C, 0xE2, 0xDB, 0x4E, 0xC8, 0xA1, 0x33, 0x65, 0x32, 0xF7, 0xAC, 0xCA, 0xEC, 0xF0, 0xE5,
 0xC1, 0xCC, 0x4C, 0xC8, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x5C, 0x56, 0x94, 0xC9, 0xA0, 0xEC,
 0xC1, 0xCC, 0x4C, 0xC8, 0x4E, 0xC3, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x54, 0x56, 0xA0, 0xEC,
 0xC1, 0xCC, 0x4C, 0xC8, 0x5D, 0xDC, 0x3C, 0xE6, 0x15, 0xEE, 0x64, 0x66, 0x16, 0x6C, 0xA0, 0xEC,
 0xC1, 0xCC, 0x4C, 0xC8, 0x94, 0xCD, 0xA0, 0xEC, 0xC1, 0xCC, 0x4C, 0xC8, 0x4E, 0xC8, 0xA1, 0x33,
 0x49, 0x32, 0x55, 0x68, 0xDC, 0xCC, 0xA1, 0x33, 0x19, 0x31, 0x35, 0x1E, 0xC8, 0xCC, 0xBA, 0xEA,
 0x43, 0xCE, 0x8A, 0xED, 0x35, 0x1E, 0xC8, 0xCC, 0xF0, 0xC4, 0x6E, 0x06, 0x80, 0x13, 0x8E, 0x03,
 0xA0, 0x13, 0x94, 0xCE, 0x8E, 0x13, 0xB4, 0xCE, 0xBA, 0x69, 0x75, 0x1F, 0xC8, 0xCC, 0x13, 0xCF,
 0xB8, 0xB3, 0xA1, 0x33, 0x7E, 0x31, 0x00, 0x18, 0x80, 0x19, 0xD5, 0x14, 0xD4, 0xCC, 0x4E, 0xD8,
 0xA1, 0x33, 0x88, 0x32, 0x84, 0xCE, 0xC3, 0x3E, 0x2C, 0xEC, 0xEA, 0x43, 0x6A, 0xE3, 0xA4, 0xC3,
 0x4E, 0xD8, 0xA1, 0x33, 0x97, 0x32, 0x75, 0x13, 0xC8, 0xCC, 0x22, 0xFB, 0xD5, 0x14, 0xE8, 0xCC,
 0xCA, 0x24, 0xD5, 0x16, 0xEC, 0xCC, 0xD5, 0x1E, 0xE0, 0xCC, 0xD5, 0x1F, 0xD0, 0xCC, 0x95, 0x1F,
 0xF0, 0xCC, 0x55, 0x10, 0xC4, 0xCC, 0xD5, 0x15, 0xC0, 0xCC, 0x13, 0xC4, 0xEB, 0xCC, 0xAC, 0xE3,
 0x6E, 0xE6, 0x43, 0x33, 0xCF, 0xED, 0x3A, 0xE9, 0x55, 0x1E, 0xFC, 0xCC, 0xE1, 0xCE, 0xCC, 0xCC,
 0xCD, 0x36, 0xCC, 0xEA, 0x98, 0xEF, 0x8C, 0x3E, 0x84, 0xCE, 0x93, 0xEF, 0xC3, 0x4C, 0x98, 0x0E,
 0xEA, 0x5E, 0x3A, 0xE7, 0x0E, 0xD3, 0xD5, 0x1E, 0xF0, 0xCC, 0x0E, 0x8E, 0x95, 0x1E, 0xF0, 0xCC,
 0x7C, 0x83, 0x93, 0x43, 0x24, 0x33, 0xF0, 0xC5, 0x95, 0x1F, 0xF4, 0xCC, 0x80, 0xEC, 0xA0, 0x11,
 0x16, 0xAE, 0x60, 0x1E, 0xA1, 0x33, 0x92, 0x31, 0x4E, 0xD8, 0xA1, 0x33, 0x33, 0x31, 0x55, 0x13,
 0xCC, 0xDC, 0x80, 0x3C, 0x01, 0x83, 0x2E, 0xC3, 0x4E, 0xD8, 0xA1, 0x33, 0xDB, 0x32, 0xCC, 0x5C,
 0x4E, 0xC3, 0x60, 0x1E, 0x75, 0x13, 0xCA, 0xCC, 0x13, 0xD3, 0xFD, 0x33, 0xD1, 0x33, 0xF2, 0x33,
 0x16, 0xA4, 0x60, 0x1E, 0xF0, 0x53, 0xEC, 0xC4, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84,
 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xD1, 0x33, 0x42, 0x32, 0xEC, 0xC4,
 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84, 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC,
 0xCC, 0xCC, 0xD1, 0x33, 0x4E, 0x32, 0xEC, 0xC4, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84,
 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xD1, 0x33, 0xBA, 0x32, 0xEC, 0xC4,
 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84, 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC,
 0xCC, 0xCC, 0xD1, 0x33, 0xA6, 0x32, 0xEC, 0xC4, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84,
 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xD1, 0x33, 0x92, 0x32, 0xEC, 0xC4,
 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84, 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC,
 0xCC, 0xCC, 0xD1, 0x33, 0x9E, 0x32, 0xEC, 0xC4, 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84,
 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xD1, 0x33, 0x8A, 0x32, 0xEC, 0xC4,
 0x5D, 0x8C, 0x4C, 0x33, 0x15, 0x33, 0x84, 0x84, 0x80, 0x3C, 0xB4, 0xCD, 0xCC, 0xCC, 0xCC, 0xCC,
 0xCC, 0xCC, 0xD1, 0x33, 0xF6, 0x32, 0x33, 0x33, 0x80, 0xAE, 0xCF, 0x3C, 0x98, 0xAE, 0xCF, 0x3C,
 0x94, 0xAE, 0xCF, 0x3C, 0xAC, 0xAE, 0xCF, 0x3C, 0xA8, 0xAE, 0xCF, 0x3C, 0xA0, 0xAE, 0xCF, 0x3C,
 0xBC, 0xAE, 0xCF, 0x3C, 0xB4, 0xAE, 0xCF, 0x3C, 0xB0, 0xAE, 0xCF, 0x3C, 0x48, 0xAE, 0xCF, 0x3C,
 0x44, 0xAE, 0xCF, 0x3C, 0x5C, 0xAE, 0xCF, 0x3C, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0x9A, 0xAC, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0xA2, 0xAC, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0x8A, 0xBC, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0x92, 0xBC, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0xBA, 0xBC, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0x82, 0x4C, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0xAA, 0x4C, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC,
 0xC1, 0xCC, 0xCC, 0xCE, 0x5D, 0xCC, 0xCC, 0x3B, 0x15, 0x33, 0xB2, 0x4C, 0xCE, 0x38, 0xE1, 0xC3,
 0xCC, 0xCC, 0xC1, 0xCC, 0x8C, 0xCE, 0xCC, 0x4C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC
};
