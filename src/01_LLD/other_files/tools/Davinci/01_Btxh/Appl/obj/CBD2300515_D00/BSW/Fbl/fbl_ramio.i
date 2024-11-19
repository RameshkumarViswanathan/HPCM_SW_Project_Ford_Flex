# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoBm\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
# 40 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio_inc.h" 1
# 41 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio_inc.h"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/iotypes.h" 1
# 43 "../../../../CBD2300515_D00/BSW/Fbl/iotypes.h"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 1
# 70 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
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
# 71 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 81 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
# 1 "GenData/FblBm_Cfg.h" 1
# 82 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2



# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 86 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 98 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
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
# 99 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2






# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h" 1
# 96 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert_oem.h" 1
# 97 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h" 2
# 106 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 304 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint32 tFblStateBitmap;
# 328 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint8 tFblErrorType;
typedef vuint16 tFblErrorCode;

typedef vuint8 tFblResult;
typedef vuint8 tFblProgStatus;
typedef vuint8 tApplStatus;
typedef vuint8 tMagicFlag;
typedef vuint8 tFlashStatus;
# 346 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint32 FBL_ADDR_TYPE;
typedef vuint32 FBL_MEMSIZE_TYPE;







typedef vuint8 FBL_MEMID_TYPE;

typedef FBL_ADDR_TYPE tFblAddress;
typedef FBL_MEMSIZE_TYPE tFblLength;

typedef FBL_ADDR_TYPE tMtabAddress;
typedef FBL_MEMSIZE_TYPE tMtabLength;
typedef FBL_MEMID_TYPE tMtabMemId;

typedef vuint16 tChecksum;
# 374 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
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
# 44 "../../../../CBD2300515_D00/BSW/Fbl/iotypes.h" 2
# 57 "../../../../CBD2300515_D00/BSW/Fbl/iotypes.h"
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
# 42 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "Include/fbl_ramio_cfg.h" 1
# 41 "Include/fbl_ramio_cfg.h"
# 1 "../../../BSW/Fbl/fbl_def.h" 1
# 42 "Include/fbl_ramio_cfg.h" 2
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
# 43 "Include/fbl_ramio_cfg.h" 2
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
# 44 "Include/fbl_ramio_cfg.h" 2
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
# 45 "Include/fbl_ramio_cfg.h" 2
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
# 46 "Include/fbl_ramio_cfg.h" 2
# 43 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio_inc.h" 2
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.h" 1
# 77 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.h"
# 1 "Include/MemMap.h" 1
# 78 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.h" 2

IO_ErrorType RamDriver_InitSync( void * address);
IO_ErrorType RamDriver_DeinitSync( void * address );
IO_ErrorType RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_ErrorType RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress );
IO_ErrorType RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress );


# 1 "Include/MemMap.h" 1
# 87 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.h" 2
# 44 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio_inc.h" 2
# 41 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c" 2
# 128 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
# 1 "Include/MemMap.h" 1
# 129 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c" 2



static IO_ErrorType RamDriver_GetOffset( IO_SizeType length, IO_PositionType address,
   IO_SizeType * pOffset );
# 148 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
static IO_ErrorType RamDriver_GetOffset( IO_SizeType length, IO_PositionType address,
   IO_SizeType * pOffset )
{
   IO_ErrorType result;
   IO_SizeType offset;

   result = 0x01u;







   {
      offset = address - ((IO_PositionType)flashCode);

      if ( (length <= 3072)
        && (offset <= (3072 - length)) )
      {
         *pOffset = offset;
         result = 0x00u;
      }
   }

   return result;
}
# 188 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
IO_ErrorType RamDriver_InitSync( void * address )
{
   IO_ErrorType result;





   (void)address;


   result = 0x00u;





   if (0u != (((IO_PositionType)flashCode) & (1u - 1u)))
   {

      result = 0x01u;
   }
# 236 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
   return result;
}
# 246 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
IO_ErrorType RamDriver_DeinitSync( void * address )
{
   IO_ErrorType result;


   result = RamDriver_InitSync(address);

   return result;
}
# 266 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
IO_ErrorType RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress )
{
   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(writeLength, writeAddress, &offset);

   if (0x00u == result)
   {
      for (i = 0u; i < writeLength; i++)
      {


         if (0u == (i & (0x40u - 1u)))
         {
            (void)FblLookForWatchdog();
         }


         flashCode[offset] = writeBuffer[i];
         offset++;
      }
   }

   return result;
}
# 303 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
IO_ErrorType RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress )
{

   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(eraseLength, eraseAddress, &offset);

   if (0x00u == result)
   {
      for (i = 0u; i < eraseLength; i++)
      {


         if (0u == (i & (0x40u - 1u)))
         {
            (void)FblLookForWatchdog();
         }


         flashCode[offset] = 0xFFu;
         offset++;
      }
   }

   return result;
# 338 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
}
# 350 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c"
IO_ErrorType RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress )
{
   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(readLength, readAddress, &offset);

   if (0x00u == result)
   {
      for (i = 0u; i < readLength; i++)
      {


         if (0u == (i & (0x40u - 1u)))
         {
            (void)FblLookForWatchdog();
         }


         readBuffer[i] = flashCode[offset];
         offset++;
      }
   }

   return result;
}



# 1 "Include/MemMap.h" 1
# 381 "../../../../CBD2300515_D00/BSW/Fbl/fbl_ramio.c" 2
