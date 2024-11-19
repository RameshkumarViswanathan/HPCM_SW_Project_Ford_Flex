# 1 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoBm\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
# 38 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
# 1 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 1
# 56 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
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
# 57 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2

# 1 "Include/VStdLib_Cfg.h" 1
# 59 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2
# 129 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
typedef uint32_least VStdLib_CntType;
# 1053 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
# 1 "Include/MemMap.h" 1
# 7778 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 1054 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2
# 1073 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
void VStdLib_MemSet(void * pDst,
                                        uint8 nPattern,
                                        VStdLib_CntType nCnt);
# 1093 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy(void * pDst,
                                        const void * pSrc,
                                        VStdLib_CntType nCnt);
# 1113 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy16(uint16 * pDst,
                                          const uint16 * pSrc,
                                          VStdLib_CntType nCnt);
# 1133 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy32(uint32 * pDst,
                                          const uint32 * pSrc,
                                          VStdLib_CntType nCnt);
# 1157 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
void VStdLib_MemCpy_s(void * pDst,
                                          VStdLib_CntType nDstSize,
                                          const void * pSrc,
                                          VStdLib_CntType nCnt);
# 1184 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
sint8 VStdLib_MemCmp(const void * pBuf1,
                                         const void * pBuf2,
                                         VStdLib_CntType nCnt);
# 1225 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne8(uint8 value);
# 1241 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero8(uint8 value);
# 1257 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne8(uint8 value);
# 1273 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero8(uint8 value);
# 1289 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes8(uint8 value);
# 1305 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros8(uint8 value);
# 1321 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes8(uint8 value);
# 1337 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros8(uint8 value);
# 1357 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne16(uint16 value);
# 1373 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero16(uint16 value);
# 1389 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne16(uint16 value);
# 1405 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero16(uint16 value);
# 1421 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes16(uint16 value);
# 1437 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros16(uint16 value);
# 1453 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes16(uint16 value);
# 1469 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros16(uint16 value);
# 1489 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne32(uint32 value);
# 1505 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero32(uint32 value);
# 1521 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne32(uint32 value);
# 1537 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero32(uint32 value);
# 1553 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes32(uint32 value);
# 1569 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros32(uint32 value);
# 1585 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes32(uint32 value);
# 1601 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros32(uint32 value);
# 1622 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosOne64(uint64 value);
# 1639 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetHighestBitPosZero64(uint64 value);
# 1656 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosOne64(uint64 value);
# 1673 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetLowestBitPosZero64(uint64 value);
# 1690 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingOnes64(uint64 value);
# 1707 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountLeadingZeros64(uint64 value);
# 1724 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingOnes64(uint64 value);
# 1741 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
uint8 VStdLib_GetCountTrailingZeros64(uint64 value);
# 1760 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayBigEndian(uint16 src,
                                                                                         uint8 * dst);
# 1776 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayLittleEndian(uint16 src,
                                                                                            uint8 * dst);
# 1793 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16BigEndian(const uint8 * src,
                                                                                         uint16 * dst);
# 1810 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16LittleEndian(const uint8 * src,
                                                                                            uint16 * dst);
# 1830 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayBigEndian(uint32 src,
                                                                                         uint8 * dst);
# 1846 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayLittleEndian(uint32 src,
                                                                                            uint8 * dst);
# 1863 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32BigEndian(const uint8 * src,
                                                                                         uint32 * dst);
# 1880 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32LittleEndian(const uint8 * src,
                                                                                            uint32 * dst);
# 1901 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayBigEndian(uint64 src,
                                                                                         uint8 * dst);
# 1918 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayLittleEndian(uint64 src,
                                                                                            uint8 * dst);
# 1936 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64BigEndian(const uint8 * src,
                                                                                         uint64 * dst);
# 1954 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64LittleEndian(const uint8 * src,
                                                                                            uint64 * dst);
# 1974 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint16 VStdLib_SwapEndianUint16(uint16 value);
# 1993 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint32 VStdLib_SwapEndianUint32(uint32 value);
# 2013 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint64 VStdLib_SwapEndianUint64(uint64 value);




# 1 "Include/MemMap.h" 1
# 7785 "Include/MemMap.h"
#pragma section
# 2019 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2





# 1 "Include/MemMap.h" 1
# 7778 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 2025 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2
# 2037 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayBigEndian(
  uint16 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2053 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF00u) >> 8u);
    dst[1u] = (uint8)( src & 0x00FFu);

  }
# 2072 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2085 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint16ToUint8ArrayLittleEndian(
  uint16 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2101 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 2u);




  }
# 2120 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2133 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16BigEndian(
  const uint8 * src,
  uint16 * dst)
{

  uint8 errorId = (0x00u);
# 2149 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint16)src[0u]) << 8u) |
               ((uint16)src[1u])
             );

  }
# 2169 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2182 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint16LittleEndian(
  const uint8 * src,
  uint16 * dst)
{

  uint8 errorId = (0x00u);
# 2198 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 2u);





  }
# 2218 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2235 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayBigEndian(
  uint32 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2251 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF000000u) >> 24u);
    dst[1u] = (uint8)((src & 0x00FF0000u) >> 16u);
    dst[2u] = (uint8)((src & 0x0000FF00u) >> 8u);
    dst[3u] = (uint8)( src & 0x000000FFu);

  }
# 2272 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2285 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint32ToUint8ArrayLittleEndian(
  uint32 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2301 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 4u);






  }
# 2322 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2335 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32BigEndian(
  const uint8 * src,
  uint32 * dst)
{

  uint8 errorId = (0x00u);
# 2351 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint32)src[0u]) << 24u) |
              (((uint32)src[1u]) << 16u) |
              (((uint32)src[2u]) << 8u) |
               ((uint32)src[3u])
             );

  }
# 2373 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2386 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint32LittleEndian(
  const uint8 * src,
  uint32 * dst)
{

  uint8 errorId = (0x00u);
# 2402 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 4u);







  }
# 2424 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2441 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayBigEndian(
  uint64 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2457 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    dst[0u] = (uint8)((src & 0xFF00000000000000u) >> 56u);
    dst[1u] = (uint8)((src & 0x00FF000000000000u) >> 48u);
    dst[2u] = (uint8)((src & 0x0000FF0000000000u) >> 40u);
    dst[3u] = (uint8)((src & 0x000000FF00000000u) >> 32u);
    dst[4u] = (uint8)((src & 0x00000000FF000000u) >> 24u);
    dst[5u] = (uint8)((src & 0x0000000000FF0000u) >> 16u);
    dst[6u] = (uint8)((src & 0x000000000000FF00u) >> 8u);
    dst[7u] = (uint8)( src & 0x00000000000000FFu);

  }
# 2482 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2495 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint64ToUint8ArrayLittleEndian(
  uint64 src,
  uint8 * dst)
{

  uint8 errorId = (0x00u);
# 2511 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, &src, 8u);
# 2527 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  }
# 2536 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2549 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64BigEndian(
  const uint8 * src,
  uint64 * dst)
{

  uint8 errorId = (0x00u);
# 2565 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {






    (*dst) = ((((uint64)src[0u]) << 56u) |
              (((uint64)src[1u]) << 48u) |
              (((uint64)src[2u]) << 40u) |
              (((uint64)src[3u]) << 32u) |
              (((uint64)src[4u]) << 24u) |
              (((uint64)src[5u]) << 16u) |
              (((uint64)src[6u]) << 8u) |
               ((uint64)src[7u])
             );

  }
# 2591 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2604 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ void VStdLib_ConvertUint8ArrayToUint64LittleEndian(
  const uint8 * src,
  uint64 * dst)
{

  uint8 errorId = (0x00u);
# 2620 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  {




    VStdLib_MemCpy(dst, src, 8u);
# 2637 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  }
# 2646 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
  (void)(errorId);

}
# 2662 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint16 VStdLib_SwapEndianUint16(uint16 value)
{



  return (((value & 0xFF00u) >> 8u) | ((value & 0x00FFu) << 8u));
}
# 2682 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint32 VStdLib_SwapEndianUint32(uint32 value)
{



  return (((value & 0xFF000000u) >> 24u) |
          ((value & 0x00FF0000u) >> 8u) |
          ((value & 0x0000FF00u) << 8u) |
          ((value & 0x000000FFu) << 24u)
         );
}
# 2706 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h"
static __inline__ uint64 VStdLib_SwapEndianUint64(uint64 value)
{



  return (((value & 0xFF00000000000000u) >> 56u) |
          ((value & 0x00FF000000000000u) >> 40u) |
          ((value & 0x0000FF0000000000u) >> 24u) |
          ((value & 0x000000FF00000000u) >> 8u) |
          ((value & 0x00000000FF000000u) << 8u) |
          ((value & 0x0000000000FF0000u) << 24u) |
          ((value & 0x000000000000FF00u) << 40u) |
          ((value & 0x00000000000000FFu) << 56u)
         );
}




# 1 "Include/MemMap.h" 1
# 7785 "Include/MemMap.h"
#pragma section
# 2726 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.h" 2
# 39 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c" 2
# 319 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
# 1 "Include/MemMap.h" 1
# 7794 "Include/MemMap.h"
#pragma section ".RamConstSection" a
# 320 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c" 2


static const uint8 VStdLib_HighestBitPosOneInNibble[16u] =
{

  (0x80u),
  0u,
  1u,
  1u,
  2u,
  2u,
  2u,
  2u,
  3u,
  3u,
  3u,
  3u,
  3u,
  3u,
  3u,
  3u
};


static const uint8 VStdLib_LowestBitPosOneInNibble[16u] =
{

  (0x80u),
  0u,
  1u,
  0u,
  2u,
  0u,
  1u,
  0u,
  3u,
  0u,
  1u,
  0u,
  2u,
  0u,
  1u,
  0u
};


# 1 "Include/MemMap.h" 1
# 7801 "Include/MemMap.h"
#pragma section
# 367 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c" 2
# 376 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
# 1 "Include/MemMap.h" 1
# 7778 "Include/MemMap.h"
#pragma section ".RamCodeCoreSection" ax
# 377 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c" 2
# 395 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_GetMemCmpNeqResult(uint32 buf1Value, uint32 buf2Value);
# 416 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_8(
  const uint8 * pBuf1_8,
  const uint8 * pBuf2_8,
  uint32_least nCnt);
# 437 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_8_3(
  uint8 * pDst8,
  uint8 nPattern,
  uint8_least nCnt);
# 456 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_8_31(
  uint8 * pDst8,
  uint8 nPattern,
  uint8_least nCnt);
# 475 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_32_Aligned(
  uint32 * pDst32,
  uint8 nPattern,
  uint32_least nCnt);
# 494 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_3(
  uint8 * pDst8,
  const uint8 * pSrc8,
  uint8_least nCnt);
# 513 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_31(
  uint8 * pDst8,
  const uint8 * pSrc8,
  uint8_least nCnt);
# 532 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_32_Aligned(
  uint32 * pDst32,
  const uint32 * pSrc32,
  uint32_least nCnt);
# 552 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_PartialWord(
  uint8 * pDst8,
  uint8_least nCnt,
  uint32 * pPrev,
  uint32_least * pDPos);
# 574 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_32_Unaligned(
  uint8 * pDst8,
  const uint32 * pSrc32,
  uint32_least nCnt,
  uint8_least nDstOffset);
# 600 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_32_Aligned(
  const uint32 * pBuf1_32,
  const uint32 * pBuf2_32,
  uint32_least nCnt);
# 627 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_32_Unaligned(
  const uint32 * pBuf1_32,
  const uint8 * pBuf2_8,
  uint32_least nCnt,
  uint8_least nBuf2Offset);
# 655 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInByte(uint8 value);
# 673 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInByte(uint8 value);
# 696 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInTwoBytes(uint16 value);
# 713 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInTwoBytes(uint16 value);
# 734 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInFourBytes(uint32 value);
# 750 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInFourBytes(uint32 value);
# 769 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInEightBytes(uint64 value);
# 784 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInEightBytes(uint64 value);
# 802 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_GetMemCmpNeqResult(uint32 buf1Value, uint32 buf2Value)
{

  sint8 result;



  if(buf1Value > buf2Value)
  {
    result = (1);
  }
  else
  {
    result = (-1);
  }

  return result;
}
# 831 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_8(
  const uint8 * pBuf1_8,
  const uint8 * pBuf2_8,
  uint32_least nCnt)
{

  uint32_least pos;
  sint8 result = (0);



  for(pos = 0u; pos < nCnt; pos++)
  {

    if(pBuf1_8[pos] != pBuf2_8[pos])
    {

      result = VStdLib_Loc_GetMemCmpNeqResult((uint32)pBuf1_8[pos], (uint32)pBuf2_8[pos]);
      break;
    }
  }

  return result;
}
# 869 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_8_3(
  uint8 * pDst8,
  uint8 nPattern,
  uint8_least nCnt)
{





  switch (nCnt)
  {
    case 3:
      pDst8[2] = nPattern;

    case 2:
      pDst8[1] = nPattern;

    case 1:
      pDst8[0] = nPattern;

    default:

      break;
  }
# 907 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 920 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_8_31(
  uint8 * pDst8,
  uint8 nPattern,
  uint8_least nCnt)
{





  switch (nCnt)
  {
    case 31:
      pDst8[30] = nPattern;

    case 30:
      pDst8[29] = nPattern;

    case 29:
      pDst8[28] = nPattern;

    case 28:
      pDst8[27] = nPattern;

    case 27:
      pDst8[26] = nPattern;

    case 26:
      pDst8[25] = nPattern;

    case 25:
      pDst8[24] = nPattern;

    case 24:
      pDst8[23] = nPattern;

    case 23:
      pDst8[22] = nPattern;

    case 22:
      pDst8[21] = nPattern;

    case 21:
      pDst8[20] = nPattern;

    case 20:
      pDst8[19] = nPattern;

    case 19:
      pDst8[18] = nPattern;

    case 18:
      pDst8[17] = nPattern;

    case 17:
      pDst8[16] = nPattern;

    case 16:
      pDst8[15] = nPattern;

    case 15:
      pDst8[14] = nPattern;

    case 14:
      pDst8[13] = nPattern;

    case 13:
      pDst8[12] = nPattern;

    case 12:
      pDst8[11] = nPattern;

    case 11:
      pDst8[10] = nPattern;

    case 10:
      pDst8[9] = nPattern;

    case 9:
      pDst8[8] = nPattern;

    case 8:
      pDst8[7] = nPattern;

    case 7:
      pDst8[6] = nPattern;

    case 6:
      pDst8[5] = nPattern;

    case 5:
      pDst8[4] = nPattern;

    case 4:
      pDst8[3] = nPattern;

    case 3:
      pDst8[2] = nPattern;

    case 2:
      pDst8[1] = nPattern;

    case 1:
      pDst8[0] = nPattern;

    default:

      break;
  }
# 1042 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1056 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemSet_32_Aligned(
  uint32 * pDst32,
  uint8 nPattern,
  uint32_least nCnt)
{

  uint32_least dPos = 0u;
  uint32_least remaining;
  uint32 nPattern32 =
    (uint32)(((uint32)nPattern << 24u) | ((uint32)nPattern << 16u) | ((uint32)nPattern << 8u) | nPattern);



  for (remaining = nCnt; remaining >= 16u; remaining -= 16u)
  {
    pDst32[dPos] = nPattern32;
    pDst32[dPos + 1u] = nPattern32;
    pDst32[dPos + 2u] = nPattern32;
    pDst32[dPos + 3u] = nPattern32;
    dPos += 4u;
  }





  switch (remaining)
  {
    case 15:
    case 14:
    case 13:
    case 12:
      pDst32[dPos] = nPattern32;
      dPos++;

    case 11:
    case 10:
    case 9:
    case 8:
      pDst32[dPos] = nPattern32;
      dPos++;

    case 7:
    case 6:
    case 5:
    case 4:
      pDst32[dPos] = nPattern32;
      dPos++;

    case 3:
    case 2:
    case 1:
      VStdLib_Loc_MemSet_8_3(
        (uint8 * ) &pDst32[dPos],
        nPattern,
        (uint8_least) (remaining & (0x03u)));

    default:

      break;
  }
# 1128 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1141 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_3(
  uint8 * pDst8,
  const uint8 * pSrc8,
  uint8_least nCnt)
{





  switch (nCnt)
  {
    case 3:
      pDst8[2] = pSrc8[2];

    case 2:
      pDst8[1] = pSrc8[1];

    case 1:
      pDst8[0] = pSrc8[0];

    default:

      break;
  }
# 1179 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1192 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_31(
  uint8 * pDst8,
  const uint8 * pSrc8,
  uint8_least nCnt)
{





  switch (nCnt)
  {
    case 31:
      pDst8[30] = pSrc8[30];

    case 30:
      pDst8[29] = pSrc8[29];

    case 29:
      pDst8[28] = pSrc8[28];

    case 28:
      pDst8[27] = pSrc8[27];

    case 27:
      pDst8[26] = pSrc8[26];

    case 26:
      pDst8[25] = pSrc8[25];

    case 25:
      pDst8[24] = pSrc8[24];

    case 24:
      pDst8[23] = pSrc8[23];

    case 23:
      pDst8[22] = pSrc8[22];

    case 22:
      pDst8[21] = pSrc8[21];

    case 21:
      pDst8[20] = pSrc8[20];

    case 20:
      pDst8[19] = pSrc8[19];

    case 19:
      pDst8[18] = pSrc8[18];

    case 18:
      pDst8[17] = pSrc8[17];

    case 17:
      pDst8[16] = pSrc8[16];

    case 16:
      pDst8[15] = pSrc8[15];

    case 15:
      pDst8[14] = pSrc8[14];

    case 14:
      pDst8[13] = pSrc8[13];

    case 13:
      pDst8[12] = pSrc8[12];

    case 12:
      pDst8[11] = pSrc8[11];

    case 11:
      pDst8[10] = pSrc8[10];

    case 10:
      pDst8[9] = pSrc8[9];

    case 9:
      pDst8[8] = pSrc8[8];

    case 8:
      pDst8[7] = pSrc8[7];

    case 7:
      pDst8[6] = pSrc8[6];

    case 6:
      pDst8[5] = pSrc8[5];

    case 5:
      pDst8[4] = pSrc8[4];

    case 4:
      pDst8[3] = pSrc8[3];

    case 3:
      pDst8[2] = pSrc8[2];

    case 2:
      pDst8[1] = pSrc8[1];

    case 1:
      pDst8[0] = pSrc8[0];

    default:

      break;
  }
# 1314 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1328 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_32_Aligned(
  uint32 * pDst32,
  const uint32 * pSrc32,
  uint32_least nCnt)
{

  uint32_least dPos = 0u;
  uint32_least remaining;
  uint32 x0, x1, x2, x3;



  for (remaining = nCnt; remaining >= 16u; remaining -= 16u)
  {
    x0 = pSrc32[dPos];
    x1 = pSrc32[dPos + 1u];
    x2 = pSrc32[dPos + 2u];
    x3 = pSrc32[dPos + 3u];
    pDst32[dPos] = x0;
    pDst32[dPos + 1u] = x1;
    pDst32[dPos + 2u] = x2;
    pDst32[dPos + 3u] = x3;
    dPos += 4u;
  }





  switch (remaining)
  {
    case 15:
    case 14:
    case 13:
    case 12:
      pDst32[dPos] = pSrc32[dPos];
      dPos++;

    case 11:
    case 10:
    case 9:
    case 8:
      pDst32[dPos] = pSrc32[dPos];
      dPos++;

    case 7:
    case 6:
    case 5:
    case 4:
      pDst32[dPos] = pSrc32[dPos];
      dPos++;

    case 3:
    case 2:
    case 1:
      VStdLib_Loc_MemCpy_8_3(
        (uint8 * ) &pDst32[dPos],
        (const uint8 * ) &pSrc32[dPos],
        (uint8_least) (remaining & (0x03u)));

    default:

      break;
  }
# 1403 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1422 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_8_PartialWord(
  uint8 * pDst8,
  uint8_least nCnt,
  uint32 * pPrev,
  uint32_least * pDPos)
{






  switch (nCnt)
  {
    case 3:
      pDst8[*pDPos] = (uint8) *pPrev;
      (*pDPos)++;
      (*pPrev) >>= 8u;

    case 2:
      pDst8[*pDPos] = (uint8) *pPrev;
      (*pDPos)++;
      (*pPrev) >>= 8u;

    default:
      pDst8[*pDPos] = (uint8) *pPrev;
      (*pDPos)++;
      (*pPrev) >>= 8u;
      break;
  }
# 1506 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
}
# 1521 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ void VStdLib_Loc_MemCpy_32_Unaligned(
  uint8 * pDst8,
  const uint32 * pSrc32,
  uint32_least nCnt,
  uint8_least nDstOffset)
{

  uint32_least dPos = 0u;
  uint32_least sPos = 0u;
  uint32_least remaining = nCnt;



  if (remaining >= 32u)
  {
    uint32 * pDst32;
    uint32 prev;


    prev = pSrc32[sPos];
    remaining -= 4u;
    VStdLib_Loc_MemCpy_8_PartialWord(
      pDst8,
      nDstOffset,
      &prev,
      &dPos);


    pDst32 = (uint32 * ) &pDst8[dPos];
    dPos = 0u;
    sPos++;


    if (nDstOffset == 3u)
    {
      for (; remaining >= 16u; remaining -= 16u)
      {
        uint32 x0, x1, x2, x3, x4;
        x1 = pSrc32[sPos];
        x2 = pSrc32[sPos + 1u];
        x3 = pSrc32[sPos + 2u];
        x4 = pSrc32[sPos + 3u];

        x0 = prev | (x1 << 8u);
        x1 = (x1 >> 24u) | (x2 << 8u);
        x2 = (x2 >> 24u) | (x3 << 8u);
        x3 = (x3 >> 24u) | (x4 << 8u);
        prev = x4 >> 24u;







        pDst32[dPos] = x0;
        pDst32[dPos + 1u] = x1;
        pDst32[dPos + 2u] = x2;
        pDst32[dPos + 3u] = x3;
        dPos += 4u;
        sPos += 4u;
      }
    }
    else if (nDstOffset == 2u)
    {
      for (; remaining >= 16u; remaining -= 16u)
      {
        uint32 x0, x1, x2, x3, x4;
        x1 = pSrc32[sPos];
        x2 = pSrc32[sPos + 1u];
        x3 = pSrc32[sPos + 2u];
        x4 = pSrc32[sPos + 3u];

        x0 = prev | (x1 << 16u);
        x1 = (x1 >> 16u) | (x2 << 16u);
        x2 = (x2 >> 16u) | (x3 << 16u);
        x3 = (x3 >> 16u) | (x4 << 16u);
        prev = x4 >> 16u;







        pDst32[dPos] = x0;
        pDst32[dPos + 1u] = x1;
        pDst32[dPos + 2u] = x2;
        pDst32[dPos + 3u] = x3;
        dPos += 4u;
        sPos += 4u;
      }

    }
    else
    {
      for (; remaining >= 16u; remaining -= 16u)
      {
        uint32 x0, x1, x2, x3, x4;
        x1 = pSrc32[sPos];
        x2 = pSrc32[sPos + 1u];
        x3 = pSrc32[sPos + 2u];
        x4 = pSrc32[sPos + 3u];

        x0 = prev | (x1 << 24u);
        x1 = (x1 >> 8u) | (x2 << 24u);
        x2 = (x2 >> 8u) | (x3 << 24u);
        x3 = (x3 >> 8u) | (x4 << 24u);
        prev = x4 >> 8u;







        pDst32[dPos] = x0;
        pDst32[dPos + 1u] = x1;
        pDst32[dPos + 2u] = x2;
        pDst32[dPos + 3u] = x3;
        dPos += 4u;
        sPos += 4u;
      }
    }


    {
      uint8_least prevShift = (nDstOffset << 3u) & (0x1Fu);
      uint8_least xShift = 32u - prevShift;

      for (; remaining >= 4u; remaining -= 4u)
      {
        uint32 x0, x1;
        x1 = pSrc32[sPos];

        x0 = prev | (x1 << xShift);
        prev = x1 >> prevShift;




        pDst32[dPos] = x0;
        dPos++;
        sPos++;
      }
    }


    pDst8 = (uint8 * ) &pDst32[dPos];
    dPos = 0u;
    VStdLib_Loc_MemCpy_8_PartialWord(
      pDst8,
      (4u - nDstOffset),
      &prev,
      &dPos);
  }


  VStdLib_Loc_MemCpy_8_31(
    &pDst8[dPos],
    (const uint8 * ) &pSrc32[sPos],
    (uint8_least) remaining);
}
# 1697 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_32_Aligned(
  const uint32 * pBuf1_32,
  const uint32 * pBuf2_32,
  uint32_least nCnt)
{

  uint32_least pos = 0u;
  uint32_least remaining = nCnt;
  sint8 result = (0);



  for(; remaining >= 4u; remaining -= 4u)
  {

    if(pBuf1_32[pos] != pBuf2_32[pos])
    {

      result = VStdLib_Loc_GetMemCmpNeqResult(pBuf1_32[pos], pBuf2_32[pos]);
      break;
    }
    pos++;
  }


  if(result == (0))
  {

    result = VStdLib_Loc_MemCmp_8(
               (const uint8 * ) &pBuf1_32[pos],
               (const uint8 * ) &pBuf2_32[pos],
               remaining);
  }

  return result;
}
# 1753 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ sint8 VStdLib_Loc_MemCmp_32_Unaligned(
  const uint32 * pBuf1_32,
  const uint8 * pBuf2_8,
  uint32_least nCnt,
  uint8_least nBuf2Offset)
{

  sint8 result;




  result = VStdLib_Loc_MemCmp_8((const uint8 * )&pBuf1_32[0u],
                                pBuf2_8, nBuf2Offset);


  if(result == (0))
  {

    const uint32 * pBuf2_32 =
      (const uint32 * )&pBuf2_8[nBuf2Offset];
    uint32_least buf1Pos = 1u;
    uint32_least buf2Pos = 0u;
    uint32_least remaining = nCnt - 4u;




    uint8_least prevShift = (nBuf2Offset << 3u) & (0x1Fu);
    uint8_least xShift = 32u - prevShift;



    uint32 prev = pBuf1_32[0u] >> prevShift;





    for(; remaining >= 4u; remaining -= 4u)
    {
      uint32 x0, x1;
      x1 = pBuf1_32[buf1Pos];



      x0 = prev | (x1 << xShift);





      if(x0 != pBuf2_32[buf2Pos])
      {

        result = VStdLib_Loc_GetMemCmpNeqResult(x0, pBuf2_32[buf2Pos]);
        break;
      }
      else
      {
        buf1Pos++;
        buf2Pos++;



        prev = x1 >> prevShift;



      }
    }


    if(result == (0))
    {


      pBuf2_8 = (const uint8 * )&pBuf2_32[buf2Pos];
      result = VStdLib_Loc_MemCmp_8((const uint8 * )&prev,
                                    pBuf2_8, (4u - (uint32_least)nBuf2Offset));
    }



    if(result == (0))
    {

      result = VStdLib_Loc_MemCmp_8(
                 (const uint8 * ) &pBuf1_32[buf1Pos],
                 &pBuf2_8[(4u - nBuf2Offset)],
                 remaining);
    }
  }

  return result;
}
# 1866 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInByte(uint8 value)
{

  uint8 pos = 0u;



  if ((value & (0xF0u)) != 0u)
  {

    value >>= 4u;
    pos = 4u;
  }


  pos += VStdLib_HighestBitPosOneInNibble[(value)];

  return pos;
}
# 1897 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInByte(uint8 value)
{

  uint8 pos = 0u;



  if ((value & (0x0Fu)) != 0u)
  {

    value &= (0x0Fu);
  }
  else
  {

    value >>= 4u;
    pos = 4u;
  }


  pos += VStdLib_LowestBitPosOneInNibble[(value)];

  return pos;
}
# 1938 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInTwoBytes(uint16 value)
{

  uint8 pos = 0u;



  if ((value & (0xFF00u)) != 0u)
  {

    value >>= 8u;
    pos = 8u;
  }


  pos += VStdLib_Loc_GetHighestBitPosOneInByte((uint8)(value));

  return pos;
}
# 1969 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInTwoBytes(uint16 value)
{

  uint8 pos = 0u;



  if ((value & (0x00FFu)) != 0u)
  {

    value &= (0x00FFu);
  }
  else
  {

    value >>= 8u;
    pos = 8u;
  }


  pos += VStdLib_Loc_GetLowestBitPosOneInByte((uint8)(value));

  return pos;
}
# 2010 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInFourBytes(uint32 value)
{

  uint8 pos = 0u;



  if ((value & (0xFFFF0000u)) != 0u)
  {

    value >>= 16u;
    pos = 16u;
  }


  pos += VStdLib_Loc_GetHighestBitPosOneInTwoBytes((uint16)(value));

  return pos;
}
# 2041 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInFourBytes(uint32 value)
{

  uint8 pos = 0u;



  if ((value & (0x0000FFFFu)) != 0u)
  {

    value &= (0x0000FFFFu);
  }
  else
  {

    value >>= 16u;
    pos = 16u;
  }


  pos += VStdLib_Loc_GetLowestBitPosOneInTwoBytes((uint16)(value));

  return pos;
}
# 2080 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetHighestBitPosOneInEightBytes(uint64 value)
{

  uint8 pos = 0u;



  if ((value & (0xFFFFFFFF00000000u)) != 0u)
  {

    value >>= 32u;
    pos = 32u;
  }


  pos += VStdLib_Loc_GetHighestBitPosOneInFourBytes((uint32)(value));

  return pos;
}
# 2111 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
static __inline__ uint8 VStdLib_Loc_GetLowestBitPosOneInEightBytes(uint64 value)
{

  uint8 pos = 0u;



  if ((value & (0x00000000FFFFFFFFu)) != 0u)
  {

    value &= (0x00000000FFFFFFFFu);
  }
  else
  {

    value >>= 32u;
    pos = 32u;
  }


  pos += VStdLib_Loc_GetLowestBitPosOneInFourBytes((uint32)(value));

  return pos;
}
# 2162 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
void VStdLib_MemSet(void * pDst,
                                        uint8 nPattern,
                                        VStdLib_CntType nCnt)
{

  uint8 * pDst8 =
    (uint8 * ) pDst;
  uint8 errorId = (0x00u);
# 2180 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  {




    if (nCnt < 32u)
    {

      VStdLib_Loc_MemSet_8_31(
        pDst8,
        nPattern,
        (uint8_least) nCnt);
    }

    else
    {

      uint8_least nDstOffset = (uint8_least)((4u - ((uint32_least)(pDst8) & (0x07u))) & (0x03u));


      if (nDstOffset != 0u)
      {

        VStdLib_Loc_MemSet_8_3(
          pDst8,
          nPattern,
          nDstOffset);

        pDst8 = &pDst8[nDstOffset];
        nCnt -= nDstOffset;
      }


      VStdLib_Loc_MemSet_32_Aligned(
        (uint32 * ) pDst8,
        nPattern,
        nCnt);
    }
# 2230 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  }
# 2239 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);

}
# 2265 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
void VStdLib_MemCpy(void * pDst,
                                        const void * pSrc,
                                        VStdLib_CntType nCnt)
{

  uint8 * pDst8 =
    (uint8 * ) pDst;
  const uint8 * pSrc8 =
    (const uint8 * ) pSrc;
  uint8 errorId = (0x00u);
# 2285 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  {




    if (nCnt < 32u)
    {

      VStdLib_Loc_MemCpy_8_31(
        pDst8,
        pSrc8,
        (uint8_least) nCnt);
    }

    else
    {

      uint8_least nSrcOffset = (uint8_least)((4u - ((uint32_least)(pSrc8) & (0x07u))) & (0x03u));
      uint8_least nDstOffset;


      if (nSrcOffset != 0u)
      {

        VStdLib_Loc_MemCpy_8_3(
          pDst8,
          pSrc8,
          nSrcOffset);

        pSrc8 = &pSrc8[nSrcOffset];
        pDst8 = &pDst8[nSrcOffset];
        nCnt -= nSrcOffset;
      }


      nDstOffset = (uint8_least)((4u - ((uint32_least)(pDst8) & (0x07u))) & (0x03u));


      if (nDstOffset == 0u)
      {

        VStdLib_Loc_MemCpy_32_Aligned(
          (uint32 * ) pDst8,
          (const uint32 * ) pSrc8,
          nCnt);
      }

      else
      {

        VStdLib_Loc_MemCpy_32_Unaligned(
          pDst8,
          (const uint32 * ) pSrc8,
          nCnt,
          nDstOffset);
      }
    }
# 2354 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  }
# 2363 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);

}
# 2376 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
void VStdLib_MemCpy16(uint16 * pDst,
                                          const uint16 * pSrc,
                                          VStdLib_CntType nCnt)
{

  VStdLib_CntType idx;
  uint8 errorId = (0x00u);
# 2393 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  {


    for (idx = 0u; idx < nCnt; idx++)
    {
      pDst[idx] = pSrc[idx];
    }
  }
# 2409 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);

}
# 2422 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
void VStdLib_MemCpy32(uint32 * pDst,
                                          const uint32 * pSrc,
                                          VStdLib_CntType nCnt)
{

  VStdLib_CntType idx;
  uint8 errorId = (0x00u);
# 2439 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  {


    for (idx = 0u; idx < nCnt; idx++)
    {
      pDst[idx] = pSrc[idx];
    }
  }
# 2455 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);

}
# 2470 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
void VStdLib_MemCpy_s(void * pDst,
                                          VStdLib_CntType nDstSize,
                                          const void * pSrc,
                                          VStdLib_CntType nCnt)
{

  uint8 errorId = (0x00u);



  if (nCnt > nDstSize)
  {
    errorId = (0x02u);
  }
  else
  {

    VStdLib_MemCpy(pDst, pSrc, nCnt);
  }
# 2497 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);

}
# 2529 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
sint8 VStdLib_MemCmp(
  const void * pBuf1,
  const void * pBuf2,
  VStdLib_CntType nCnt)
{

  const uint8 * pBuf1_8 =
    (const uint8 * )pBuf1;
  const uint8 * pBuf2_8 =
    (const uint8 * )pBuf2;
  uint8 errorId = (0x00u);
  sint8 result = (0);
# 2558 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  {


    if(pBuf1 != pBuf2)
    {


      if (nCnt < 32u)
      {

        result = VStdLib_Loc_MemCmp_8(pBuf1_8, pBuf2_8, nCnt);
      }

      else
      {

        uint8_least nBuf1Offset = (uint8_least)((4u - ((uint32_least)(pBuf1_8) & (0x07u))) & (0x03u));


        if (nBuf1Offset != 0u)
        {

          result = VStdLib_Loc_MemCmp_8(pBuf1_8, pBuf2_8, nBuf1Offset);
        }


        if(result == (0))
        {
          uint8_least nBuf2Offset;


          pBuf1_8 = &pBuf1_8[nBuf1Offset];
          pBuf2_8 = &pBuf2_8[nBuf1Offset];
          nCnt -= nBuf1Offset;


          nBuf2Offset = (uint8_least)((4u - ((uint32_least)(pBuf2_8) & (0x07u))) & (0x03u));


          if(nBuf2Offset == 0u)
          {

            result = VStdLib_Loc_MemCmp_32_Aligned(
                        (const uint32 * ) pBuf1_8,
                        (const uint32 * ) pBuf2_8,
                        nCnt);
          }

          else
          {

            result = VStdLib_Loc_MemCmp_32_Unaligned(
                        (const uint32 * ) pBuf1_8,
                        pBuf2_8,
                        nCnt,
                        nBuf2Offset);
          }
        }
      }






    }
  }
# 2633 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
  (void)(errorId);


  return result;
}
# 2700 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosOne8(uint8 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInByte(value);
  }

  return pos;
}
# 2725 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosZero8(uint8 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFu))
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInByte((uint8)(~value));
  }

  return pos;
}
# 2750 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosOne8(uint8 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInByte(value);
  }

  return pos;
}
# 2775 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosZero8(uint8 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFu))
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInByte((uint8)(~value));
  }

  return pos;
}
# 2800 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingOnes8(uint8 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFu))
  {

    cnt = 7u - VStdLib_Loc_GetHighestBitPosOneInByte((uint8)(~value));
  }

  return cnt;
}
# 2825 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingZeros8(uint8 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = 7u - VStdLib_Loc_GetHighestBitPosOneInByte(value);
  }

  return cnt;
}
# 2850 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingOnes8(uint8 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFu))
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInByte((uint8)(~value));
  }

  return cnt;
}
# 2875 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingZeros8(uint8 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInByte(value);
  }

  return cnt;
}
# 2904 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosOne16(uint16 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInTwoBytes(value);
  }

  return pos;
}
# 2929 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosZero16(uint16 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFu))
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInTwoBytes((uint16)(~value));
  }

  return pos;
}
# 2954 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosOne16(uint16 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInTwoBytes(value);
  }

  return pos;
}
# 2979 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosZero16(uint16 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFu))
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInTwoBytes((uint16)(~value));
  }

  return pos;
}
# 3004 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingOnes16(uint16 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFu))
  {

    cnt = 15u - VStdLib_Loc_GetHighestBitPosOneInTwoBytes((uint16)(~value));
  }

  return cnt;
}
# 3029 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingZeros16(uint16 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = 15u - VStdLib_Loc_GetHighestBitPosOneInTwoBytes(value);
  }

  return cnt;
}
# 3054 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingOnes16(uint16 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFu))
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInTwoBytes((uint16)(~value));
  }

  return cnt;
}
# 3079 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingZeros16(uint16 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInTwoBytes(value);
  }

  return cnt;
}
# 3108 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosOne32(uint32 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInFourBytes(value);
  }

  return pos;
}
# 3133 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosZero32(uint32 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFFFFFu))
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInFourBytes((uint32)(~value));
  }

  return pos;
}
# 3158 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosOne32(uint32 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInFourBytes(value);
  }

  return pos;
}
# 3183 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosZero32(uint32 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFFFFFu))
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInFourBytes((uint32)(~value));
  }

  return pos;
}
# 3208 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingOnes32(uint32 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFFFFFu))
  {

    cnt = 31u - VStdLib_Loc_GetHighestBitPosOneInFourBytes((uint32)(~value));
  }

  return cnt;
}
# 3233 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingZeros32(uint32 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = 31u - VStdLib_Loc_GetHighestBitPosOneInFourBytes(value);
  }

  return cnt;
}
# 3258 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingOnes32(uint32 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFFFFFu))
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInFourBytes((uint32)(~value));
  }

  return cnt;
}
# 3283 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingZeros32(uint32 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInFourBytes(value);
  }

  return cnt;
}
# 3312 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosOne64(uint64 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInEightBytes(value);
  }

  return pos;
}
# 3337 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetHighestBitPosZero64(uint64 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFFFFFFFFFFFFFu))
  {

    pos = VStdLib_Loc_GetHighestBitPosOneInEightBytes((uint64)(~value));
  }

  return pos;
}
# 3362 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosOne64(uint64 value)
{

  uint8 pos = (0x80u);



  if(value != 0u)
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInEightBytes(value);
  }

  return pos;
}
# 3387 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetLowestBitPosZero64(uint64 value)
{

  uint8 pos = (0x80u);



  if(value != (0xFFFFFFFFFFFFFFFFu))
  {

    pos = VStdLib_Loc_GetLowestBitPosOneInEightBytes((uint64)(~value));
  }

  return pos;
}
# 3412 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingOnes64(uint64 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFFFFFFFFFFFFFu))
  {

    cnt = 63u - VStdLib_Loc_GetHighestBitPosOneInEightBytes((uint64)(~value));
  }

  return cnt;
}
# 3437 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountLeadingZeros64(uint64 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = 63u - VStdLib_Loc_GetHighestBitPosOneInEightBytes(value);
  }

  return cnt;
}
# 3462 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingOnes64(uint64 value)
{

  uint8 cnt = (0x80u);



  if(value != (0xFFFFFFFFFFFFFFFFu))
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInEightBytes((uint64)(~value));
  }

  return cnt;
}
# 3487 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c"
uint8 VStdLib_GetCountTrailingZeros64(uint64 value)
{

  uint8 cnt = (0x80u);



  if(value != 0u)
  {

    cnt = VStdLib_Loc_GetLowestBitPosOneInEightBytes(value);
  }

  return cnt;
}




# 1 "Include/MemMap.h" 1
# 7785 "Include/MemMap.h"
#pragma section
# 3507 "../../../../CBD2300515_D00/BSW/VStdLib/vstdlib.c" 2
