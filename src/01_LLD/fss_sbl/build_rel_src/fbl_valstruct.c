/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Implementation of a download check by using an embedded validation structure
 *                 Declaration of functions, variables and constants
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2016-07-01  visci   -                Initial version
 *  01.01.00   2017-02-03  visci   ESCAN00093858    Added support for compatibility check
 *                         vacel                    Added blank check functionality
 *                                                  Added API for external public key
 *                                                  Reworked return value handling
 *  01.01.01   2017-11-09  visci   ESCAN00096836    Compiler warning: Function declared but not used
 *  01.01.02   2018-03-23  visdkl  ESCAN00097287    Bootloader does not properly use configuration of CLASS_DDD
 *  01.02.00   2018-06-15  visci   ESCAN00098963    Corrected return value for public key read failure
 *             2018-09-24  visrr   ESCAN00100838    Added user callout for different erase values in OTA use case
 *  01.03.00   2019-01-25  visci   ESCAN00098904    Improved verification sequence
 *                                 ESCAN00101065    Alignment for Blank Check is not applied correctly
 *                                 ESCAN00101321    Added option to skip download segment check
 *  01.03.01   2019-02-06  visci   ESCAN00102005    Signature is not taken into account when comparing segments
 *  01.04.00   2019-06-14  visci   ESCAN00102956    Internal checksum option fails if validation structure is not the
 *                                                  last segment
 *                                 ESCAN00102957    Potential buffer overflow during internal checksum calculation
 *  01.05.00   2019-06-25  visdlm  ESCAN00103492    Added gap fill mechanism
 *  01.05.01   2021-01-18  visjdn  ESCAN00107640    Memory read error leads always to invalid format error
 *  01.05.02   2021-06-01  vishor  ESCAN00109198    The verification key will not be cleared from memory (RAM) after usage
 *  01.06.00   2022-04-28  visstn  FBL-4366         Perform MISRA 2012 migration
 *  01.07.00   2022-10-12  visjdn  FBL-5694         Support of Xiaomi validation structure
 *  01.08.00   2022-11-25  vistbe  FBL-6055         Extend configurability of checksum and signature
 *  01.08.01   2023-02-02  vistbe  ESCAN00113401    No changes
 **********************************************************************************************************************/

#define FBL_VALSTRUCT_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
#include "fbl_valstruct.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLVALSTRUCT_VERSION != 0x0108u ) || \
    ( FBLVALSTRUCT_RELEASE_VERSION != 0x01u )
# error "Error in fbl_valstruct.c: Source and header file are inconsistent!"
#endif

#if ( FBLVALSTRUCT_VERSION != _FBLVALSTRUCT_VERSION ) || \
    ( FBLVALSTRUCT_RELEASE_VERSION != _FBLVALSTRUCT_RELEASE_VERSION )
# error "Error in fbl_valstruct.c: Source and v_ver.h are inconsistent!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
/*** Validation structure defines ***/
# define FBL_VALSTRUCT_PROLOG_SIZE                       (FBL_VALSTRUCT_TAG_SIZE + FBL_VALSTRUCT_VERSION_SIZE + FBL_VALSTRUCT_BLOCKCOUNT_SIZE + FBL_VALSTRUCT_ALFI_SIZE)
# define FBL_VALSTRUCT_BLOCKINFO_SIZE                    (FBL_VALSTRUCT_BLOCKADDRESS_SIZE + FBL_VALSTRUCT_BLOCKLENGTH_SIZE + FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE)
# define FBL_VALSTRUCT_EPILOG_SIZE                       (FBL_VALSTRUCT_TAG_SIZE + FBL_VALSTRUCT_VALIDATESUM_SIZE)
# define FBL_VALSTRUCT_MAX_SIZE                          (FBL_VALSTRUCT_PROLOG_SIZE + (FBL_VALSTRUCT_BLOCKCOUNT_MAX * FBL_VALSTRUCT_BLOCKINFO_SIZE) + FBL_VALSTRUCT_EPILOG_SIZE)

/* Offset values for validation struct members */
# define FBL_VALSTRUCT_TAGBEGIN_OFFSET                   (0x00u)
# define FBL_VALSTRUCT_VERSION_OFFSET                    (FBL_VALSTRUCT_TAGBEGIN_OFFSET + FBL_VALSTRUCT_TAG_SIZE)
# define FBL_VALSTRUCT_BLOCKCOUNT_OFFSET                 (FBL_VALSTRUCT_VERSION_OFFSET + FBL_VALSTRUCT_VERSION_SIZE)
# define FBL_VALSTRUCT_ALFI_OFFSET                       (FBL_VALSTRUCT_BLOCKCOUNT_OFFSET + FBL_VALSTRUCT_BLOCKCOUNT_SIZE)
# define FBL_VALSTRUCT_BLOCKADDRESS_OFFSET(index)        (FBL_VALSTRUCT_ALFI_OFFSET + FBL_VALSTRUCT_ALFI_SIZE + ((index) * FBL_VALSTRUCT_BLOCKINFO_SIZE))
# define FBL_VALSTRUCT_BLOCKLENGTH_OFFSET(index)         (FBL_VALSTRUCT_BLOCKADDRESS_OFFSET(index) + FBL_VALSTRUCT_BLOCKADDRESS_SIZE)
# define FBL_VALSTRUCT_BLOCKCHECKSUM_OFFSET(index)       (FBL_VALSTRUCT_BLOCKLENGTH_OFFSET(index) + FBL_VALSTRUCT_BLOCKLENGTH_SIZE)
# define FBL_VALSTRUCT_TAGEND_OFFSET(blockcount)         (FBL_VALSTRUCT_BLOCKADDRESS_OFFSET(0u) + ((blockcount) * FBL_VALSTRUCT_BLOCKINFO_SIZE))
# define FBL_VALSTRUCT_VALIDATESUM_OFFSET(blockcount)    (FBL_VALSTRUCT_TAGEND_OFFSET(blockcount) + FBL_VALSTRUCT_TAG_SIZE)

/* Access macros to extract validation struct information from a RAM buffer */
/* Note: this macro requires that the validation structure is built in big-endian mode! */
# define FblValStructGetUint32(buffer)                   FblMemGetInteger(sizeof(vuint32), (buffer))
# define FblValStructGetUint16(buffer)                   ((vuint16)(FblMemGetInteger(sizeof(vuint16), (buffer)) & 0xFFFFu))
# define FblValStructGetUint8(buffer)                    ((vuint8)(FblMemGetInteger(sizeof(vuint8), (buffer)) & 0xFFu))
# define FblValStructGetTagBegin(buffer)                 FblValStructGetUint32(&(buffer)[FBL_VALSTRUCT_TAGBEGIN_OFFSET])
# define FblValStructGetVersion(buffer)                  FblValStructGetUint16(&(buffer)[FBL_VALSTRUCT_VERSION_OFFSET])
# if (FBL_VALSTRUCT_BLOCKCOUNT_SIZE == 1u)
#  define FblValStructGetBlockCount(buffer)              FblValStructGetUint8(&(buffer)[FBL_VALSTRUCT_BLOCKCOUNT_OFFSET])
# elif (FBL_VALSTRUCT_BLOCKCOUNT_SIZE == 2u)
#  define FblValStructGetBlockCount(buffer)              FblValStructGetUint16(&(buffer)[FBL_VALSTRUCT_BLOCKCOUNT_OFFSET])
# endif
# if (FBL_VALSTRUCT_ALFI_SIZE == 1u)
#  define FblValStructGetAlfi(buffer)                     FblValStructGetUint8(&(buffer)[FBL_VALSTRUCT_ALFI_OFFSET])
# endif
# define FblValStructGetBlockAddress(buffer, index)      FblValStructGetUint32(&(buffer)[FBL_VALSTRUCT_BLOCKADDRESS_OFFSET(index)])
# define FblValStructGetBlockLength(buffer, index)       FblValStructGetUint32(&(buffer)[FBL_VALSTRUCT_BLOCKLENGTH_OFFSET(index)])
# define FblValStructGetBlockChecksum(buffer, index, cs) (void)MEMCPY(cs, &(buffer)[FBL_VALSTRUCT_BLOCKCHECKSUM_OFFSET(index)], FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE)
# define FblValStructGetTagEnd(buffer, blockcount)       FblValStructGetUint32(&(buffer)[FBL_VALSTRUCT_TAGEND_OFFSET(blockcount)])
# define FblValStructGetValidateSum(buffer, blockcount)  FblValStructGetUint16(&(buffer)[FBL_VALSTRUCT_VALIDATESUM_OFFSET(blockcount)])

/* Calculate the actual size of the validation structure based on the given block count */
# define FblValStructGetTotalSize(blockcount)            (FBL_VALSTRUCT_PROLOG_SIZE + ((blockcount) * FBL_VALSTRUCT_BLOCKINFO_SIZE) + FBL_VALSTRUCT_EPILOG_SIZE)

/* Macros used to retrieve the requested ValStruct processing options */
# define FblValStructOptionChecksumInternal(opt)         (((opt) & FBL_VALSTRUCT_OPTION_CHECKSUM_INTERNAL) == FBL_VALSTRUCT_OPTION_CHECKSUM_INTERNAL)
# define FblValStructOptionBlankCheck(opt)               (((opt) & FBL_VALSTRUCT_OPTION_BLANKCHECK) == FBL_VALSTRUCT_OPTION_BLANKCHECK)
# define FblValStructOptionGapFill(opt)                  (((opt) & FBL_VALSTRUCT_OPTION_GAP_FILL) == FBL_VALSTRUCT_OPTION_GAP_FILL)

/* Configuration specific definition of output buffer size for verification */
# if defined( SEC_ENABLE_SECURITY_CLASS_DDD )
#  if defined( SEC_ENABLE_CRC_WRITTEN_CLASS_DDD )
#   define FBL_VALSTRUCT_VERIFY_SIZE                     (FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE + SEC_SIZE_CHECKSUM_CRC)
#  else
#   define FBL_VALSTRUCT_VERIFY_SIZE                     (FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE)
#  endif
# endif

# if !defined( FBL_VALSTRUCT_GAP_FILL_SEGMENTATION )
#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
#   define FBL_VALSTRUCT_GAP_FILL_SEGMENTATION           FBL_MAX_SEGMENT_SIZE
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */
# endif

/* If signature support is not explictily enabled or disabled set it based on the security class */
# if !defined( FBL_VALSTRUCT_ENABLE_SIGNATURE ) && !defined( FBL_VALSTRUCT_DISABLE_SIGNATURE )
#  if (SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC)
#   define FBL_VALSTRUCT_ENABLE_SIGNATURE
#  endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */
# endif /* !FBL_VALSTRUCT_ENABLE_SIGNATURE */

# if defined( FBL_VALSTRUCT_ENABLE_SIGNATURE ) && defined( FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY )
#  if !defined( FblValStructClrPublicKey )
#   define FblValStructClrPublicKey(x)
#  endif /* FblValStructClrPublicKey */
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */
#endif /* FBL_ENABLE_VALSTRUCT */

/* Evaluate size of common buffer which is used for memory read/write operations. */
#if !defined( FBL_VALSTRUCT_READ_BUFFER_SIZE )
# if defined( FBL_ENABLE_VALSTRUCT )
#  if ((defined(FBL_VALSTRUCT_ENABLE_SIGNATURE)) && (FBL_VALSTRUCT_SIGNATURE_SIZE > FBL_VALSTRUCT_MAX_SIZE))
 /* Set buffer size to signature size */
#   define FBL_VALSTRUCT_READ_BUFFER_SIZE    FBL_VALSTRUCT_SIGNATURE_SIZE
#  else
 /* Set buffer size to maximum possible size of validation structure */
 #  define FBL_VALSTRUCT_READ_BUFFER_SIZE    FBL_VALSTRUCT_MAX_SIZE
#  endif
# endif /* FBL_ENABLE_VALSTRUCT */
#endif

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
typedef struct
{
   vuintx alignDummy;
   vuint8 data[FBL_VALSTRUCT_READ_BUFFER_SIZE];
} tAlignedReadBuffer;

/** Structure which keeps segment information */
typedef tDiagSegmentList tVsSegInfo;

/** Structure which keeps information about/from the validation structure */
typedef struct
{
   tFblAddress address; /**< Start address of validation structure */
   tFblLength  length;  /**< Total length of validation structure */
   tVsSegInfo  segInfo; /**< Segment information contained in validation structure */
   vuint8      vsSeg;   /**< Index of segment which keeps the validation structure */
} tVsInfo;
#endif /* FBL_ENABLE_VALSTRUCT */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
# define FBL_VALSTRUCT_START_SEC_VAR
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
V_MEMRAM0 static V_MEMRAM1 tAlignedReadBuffer V_MEMRAM2 readBuffer; /* PRQA S 3218 */ /* MD_FblValStruct_3218 */
# if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 gapFillBuffer[FBL_VALSTRUCT_GAP_FILL_SEGMENTATION];
# endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */
# define FBL_VALSTRUCT_STOP_SEC_VAR
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* FBL_ENABLE_VALSTRUCT */

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
# define FBL_VALSTRUCT_START_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
# if ( FBL_VALSTRUCT_VALIDATESUM_SIZE > 0u )
static vuint16 FblValStructCalculateByteChecksum( const vuint8* address, tFblLength size );
# endif
static tFblValStructResult FblValStructGetSegmentInfo( tVsInfo * vsInfo );
static void FblValStructRemoveStructSegment( const tVsInfo * vsInfo, tDiagSegmentList * blockSegInfo );
# if defined ( FBL_VALSTRUCT_ENABLE_SIGNATURE )
static tFblValStructResult FblValStructVerification( const tVsInfo * vsInfo,
                                                     SecM_ByteType * verifyData );
# endif /* FBL_VALSTRUCT_ENABLE_SIGNATURE */
# if defined( FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL )
static void FblValStructLocateStructSegment( tVsInfo * vsInfo );
static tFblValStructResult FblValStructChecksumInternal( tVsInfo * vsInfo,
                                                         tDiagSegmentList * blockSegInfo );
# endif
static tFblValStructResult FblValStructChecksumExternal( const tBlockDescriptor * blockDescriptor,
                                                         tVsInfo * vsInfo,
                                                         tDiagSegmentList * blockSegInfo);
static tFblValStructResult FblValStructCompareSegmentLocation( tVsInfo * vsInfo,
                                                               const tDiagSegmentList * blockSegInfo);
static tFblValStructResult FblValStructCompareSegmentChecksum( const tVsSegInfo * vsSegInfo,
                                                               const tDiagSegmentList * blockSegInfo );
# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK )
static tFblValStructResult FblValStructBlankCheck( tFblAddress memAddress, tFblLength memLength );
# endif /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK */

# if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
static tFblValStructResult FblValStructGapFill( tFblAddress memAddress, tFblLength memLength );
# endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */

# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK ) || \
     defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
static tFblAddress FblValStructSkipFilledArea( tFblAddress address, vsint16 memSeg );
static tFblValStructResult FblValStructGapProcessing( const tBlockDescriptor * blockDescriptor,
                                                      const tDiagSegmentList * blockSegInfo );
# endif
# define FBL_VALSTRUCT_STOP_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* FBL_ENABLE_VALSTRUCT */

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_VALSTRUCT )
# define FBL_VALSTRUCT_START_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
# if ( FBL_VALSTRUCT_VALIDATESUM_SIZE > 0u )
/***********************************************************************************************************************
 *  FblValStructCalculateByteChecksum
 **********************************************************************************************************************/
/*! \brief       Calculate a 16-bit sized byte checksum over the buffer content.
 *  \param[in]   address Pointer to data buffer in RAM
 *  \param[in]   size Size of data in buffer
 *  \return      Calculated checksum value
 **********************************************************************************************************************/
static vuint16 FblValStructCalculateByteChecksum( const vuint8 * address, tFblLength size )
{
   const vuint8 * bytePtr = address;
   vuint16 byteChecksum = 0u;

   while (bytePtr < (&address[size]))
   {
      byteChecksum += *bytePtr;
      bytePtr = &bytePtr[1u];

      /* Keep up bootloader timing and watchdog service */
      if (((tFblAddress)bytePtr & 0xFu) == 0u) /* PRQA S 0306 */ /* MD_FblValStruct_0306 */
      {
         /* Call service function every 16th loop cycle */
         (void)FblLookForWatchdog();
      }
   }

   return byteChecksum;
}
# endif /* FBL_VALSTRUCT_VALIDATESUM_SIZE > 0u */

/***********************************************************************************************************************
 *  FblValStructGetSegmentInfo
 **********************************************************************************************************************/
/*! \brief           Check presence and integrity of the validation structure and extract the segment information.
 *  \param[in,out]   vsInfo Start address (in) and length (out) of validation structure, segment information (out)
 *  \return          kFblValStructOk = validation structure has been read successfully
 *                   other value = reading of validation structure failed
 **********************************************************************************************************************/
/* PRQA S 6010, 6030 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC */
static tFblValStructResult FblValStructGetSegmentInfo( tVsInfo * vsInfo )
{
   tFblValStructResult result;
   tFblLength vsTotalSize;
   vuint16 segIndex, vsSegCount;
# if ( FBL_VALSTRUCT_VALIDATESUM_SIZE > 0u )
   vuint16 validateSum;
# endif

   /* Initialize return value */
   result = kFblValStructOk;

   /* Initialize total size */
   vsTotalSize = 0u;

   /* Read begin tag, version and block count of validation structure */
   if (FblReadProm(vsInfo->address, readBuffer.data, FBL_VALSTRUCT_PROLOG_SIZE) != FBL_VALSTRUCT_PROLOG_SIZE)
   {
      /* Memory read error (e.g. invalid memory region) */
      result = kFblValStructMemoryReadError;
   }

# if ( FBL_VALSTRUCT_TAG_SIZE > 0u )
   if (kFblValStructOk == result)
   {
      /* Check begin tag */
      if (FblValStructGetTagBegin(readBuffer.data) != FBL_VALSTRUCT_TAGBEGIN_PATTERN)
      {
         /* Begin tag invalid */
         result = kFblValStructInvalidFormat;
      }
   }
# endif

# if ( FBL_VALSTRUCT_VERSION_SIZE > 0u )
   if (kFblValStructOk == result)
   {
      /* Check if structure version is supported */
      if (FblValStructIsVersionSupported(FblValStructGetVersion(readBuffer.data)) != kFblValStructOk)
      {
         /* Begin tag invalid */
         result = kFblValStructInvalidFormat;
      }
   }
# endif

   if (kFblValStructOk == result)
   {
      /* Check block count */
      vsSegCount = FblValStructGetBlockCount(readBuffer.data);
      if (vsSegCount <= FBL_VALSTRUCT_BLOCKCOUNT_MAX)
      {
         vsInfo->segInfo.nrOfSegments = (vuint8)vsSegCount;
      }
      else
      {
         /* Maximum block count exceeded */
         result = kFblValStructInvalidFormat;
      }
   }

# if (FBL_VALSTRUCT_ALFI_SIZE == 1u)
   if (kFblValStructOk == result)
   {
      /* Check ALFI */
      if (FblValStructGetAlfi(readBuffer.data) != (FBL_VALSTRUCT_BLOCKADDRESS_SIZE + (FBL_VALSTRUCT_BLOCKLENGTH_SIZE << 4u)))
      {
         /* ALFI is invalid */
         result = kFblValStructInvalidFormat;
      }
   }
# endif

   if (kFblValStructOk == result)
   {
      /* Calculate total validation struct size */
      vsTotalSize = FblValStructGetTotalSize((vuint32) vsInfo->segInfo.nrOfSegments); /* PRQA S 2985 */  /* MD_FblValStruct_2985 */

      /* Block count value OK, read the rest of the validation structure */
      if (FblReadProm((vsInfo->address + FBL_VALSTRUCT_PROLOG_SIZE),
                     &(readBuffer.data[FBL_VALSTRUCT_PROLOG_SIZE]),
                      (vsTotalSize - FBL_VALSTRUCT_PROLOG_SIZE)) != (vsTotalSize - FBL_VALSTRUCT_PROLOG_SIZE))
      {
         /* Memory read error (e.g. invalid memory region) */
         result = kFblValStructMemoryReadError;
      }
   }

# if ( FBL_VALSTRUCT_TAG_SIZE > 0u )
   if (kFblValStructOk == result)
   {
      /* Check end tag */
      if (FblValStructGetTagEnd(readBuffer.data, vsInfo->segInfo.nrOfSegments) != FBL_VALSTRUCT_TAGEND_PATTERN)
      {
         /* End tag invalid */
         result = kFblValStructInvalidFormat;
      }
   }
# endif

# if ( FBL_VALSTRUCT_VALIDATESUM_SIZE > 0u )
   if (kFblValStructOk == result)
   {
      /* Check integrity of validation structure (verify byte checksum) */
      validateSum  = FblValStructCalculateByteChecksum(readBuffer.data, (vsTotalSize - FBL_VALSTRUCT_VALIDATESUM_SIZE));
      if (validateSum != FblValStructGetValidateSum(readBuffer.data, vsInfo->segInfo.nrOfSegments))
      {
         /* Validation information corrupt */
         result = kFblValStructInvalidFormat;
      }
   }
# endif

   if (kFblValStructOk == result)
   {
      /* Extract block information. This separate step ensures correct data */
      /* interpretation regardless of endianess and structure alignment.    */
      for (segIndex = 0; segIndex < vsInfo->segInfo.nrOfSegments; segIndex++)
      {
         vsInfo->segInfo.segmentInfo[segIndex].targetAddress  = FblValStructGetBlockAddress(readBuffer.data, segIndex);
         vsInfo->segInfo.segmentInfo[segIndex].length = FblValStructGetBlockLength(readBuffer.data, segIndex);
         /* PRQA S 0314 1 */ /* MD_FblValStruct_0314 */
         FblValStructGetBlockChecksum(readBuffer.data, segIndex, vsInfo->segInfo.segmentInfo[segIndex].checksum);
      }
   }

   /* Return total length of structure */
   vsInfo->length = vsTotalSize;

   return result;
}

/***********************************************************************************************************************
 *  FblValStructRemoveStructSegment
 **********************************************************************************************************************/
/*! \brief           Determine download segment which keeps the validation structure and remove it from the list
 *  \pre             vsInfo->vsSeg has to be set before (validation structure segment)
 *  \param[in]       vsInfo Structure which keeps information about validation structure (out: vsSeg)
 *  \param[in,out]   blockSegInfo Output segment list which contains the newly calculated checksum values
 *  \return          kFblValStructOk = validation structure identified and removed
 *                   other value = validation structure not found
 **********************************************************************************************************************/
static void FblValStructRemoveStructSegment( const tVsInfo * vsInfo, tDiagSegmentList * blockSegInfo )
{
   vuint8 segIdx;

   /* Remove ValStruct segment from list */
   for (segIdx = vsInfo->vsSeg + 1u; segIdx < blockSegInfo->nrOfSegments; segIdx++)
   {
      blockSegInfo->segmentInfo[segIdx - 1u] = blockSegInfo->segmentInfo[segIdx];
   }

   /* Fix number of segments */
   blockSegInfo->nrOfSegments--;
}

# if defined( FBL_VALSTRUCT_ENABLE_SIGNATURE )
/***********************************************************************************************************************
 *  FblValStructVerification
 **********************************************************************************************************************/
/*! \brief       The flash memory content is verified according to the configured CCC algorithm
 *  \param[in]   vsInfo Structure which keeps information about validation structure
 *  \param[in]   verifyData Input buffer which keeps the signature data for comparison with the calculated value
 *  \return      kFblValStructOk = Authentication succeeded
 *               other value = Authentication failed (or memory access error)
 **********************************************************************************************************************/
static tFblValStructResult FblValStructVerification( const tVsInfo * vsInfo, SecM_ByteType * verifyData )
{
#  if defined( FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY )
   SecM_AsymKeyType     publicKey;
#  endif
   SecM_VerifyParamType verifyParam;
   FL_SegmentInfoType   verifySegmentInfo[1u];
   SecM_StatusType      secStatus;
   tFblValStructResult  result;

   result = kFblValStructOk;

   /* Configure segment which shall be verified */
   verifySegmentInfo[0u].targetAddress      = vsInfo->address;
   verifySegmentInfo[0u].transferredAddress = verifySegmentInfo[0u].targetAddress;
   verifySegmentInfo[0u].length             = vsInfo->length;
   verifyParam.segmentList.segmentInfo     = verifySegmentInfo;
   verifyParam.segmentList.nrOfSegments    = 1u;
   verifyParam.blockStartAddress           = verifySegmentInfo[0u].targetAddress;
   verifyParam.blockLength                 = verifySegmentInfo[0u].length;
   verifyParam.verificationData            = verifyData;
   verifyParam.wdTriggerFct                = (FL_WDTriggerFctType)FblRealTimeSupport; /* PRQA S 0313 */ /* MD_FblValStruct_0313_WDTriggerFctType */
   verifyParam.readMemory                  = (FL_ReadMemoryFctType)FblReadProm;
#  if defined( FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY )
   publicKey.shared.size = sizeof(SecM_RsaMod);
   publicKey.individual.size = sizeof(SecM_RsaExp);

   if (kFblOk == FblValStructGetPublicKey(&publicKey))
   {
      verifyParam.key = &publicKey; /* PRQA S 0315 */ /* MD_FblValStruct_0315 */
   }
   else
   {
      /* An error occured and the key was not able to be retrieved */
      result = kFblValStructKeyError;
   }
#  else
   /* Use the internal key */
   verifyParam.key = SEC_VERIFY_KEY_NULL;
#  endif /* FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY */

   if (kFblValStructOk == result) /* PRQA S 2991, 2995 */ /* MD_FblValStruct_2991_2995 */
   {
      /* Perform hash calculation and compare with decrypted signature */
      secStatus = FblValStructSignatureVerification(&verifyParam);
      if (SECM_VER_OK != secStatus)
      {
         /* An error occurred during signature verification or the signature check failed */
         result = kFblValStructNotAuthentic;
      }
   }
#  if defined( FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY )
   FblValStructClrPublicKey(&publicKey);
#  endif /* FBL_VALSTRUCT_ENABLE_EXTERNAL_KEY */

   return result;
}
# endif /* FBL_VALSTRUCT_ENABLE_SIGNATURE */

# if defined( FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL )
/***********************************************************************************************************************
 *  FblValStructLocateStructSegment
 **********************************************************************************************************************/
/*! \brief           Locate the position of the validation structure in the segment list of the validation structure
 *  \param[in,out]   vsInfo Structure which keeps information about validation structure (out: vsSeg)
 **********************************************************************************************************************/
static void FblValStructLocateStructSegment( tVsInfo * vsInfo )
{
   vuint8 segIdx;
   vuint8 vsFound;

   /* Locate validation structure segment in segment list */
   segIdx = vsInfo->segInfo.nrOfSegments;
   vsFound = 0u;
   while (segIdx > 0u)
   {
      segIdx--;
      if (vsInfo->address > vsInfo->segInfo.segmentInfo[segIdx].targetAddress)
      {
         /* Validation structure located above the current segment */
         vsInfo->vsSeg = segIdx + 1u;
         vsFound = 1u;
         break;
      }
   }

   if (vsFound == 0u)
   {
      /* Validation structure must be located in front of the first entry */
      vsInfo->vsSeg = 0u;
   }
}

/***********************************************************************************************************************
 *  FblValStructChecksumInternal
 **********************************************************************************************************************/
/*! \brief           Calculate the checksum (or CRC/hash) values for all segments in the validation structure
 *  \param[in,out]   vsInfo Structure which keeps information about validation structure (out: vsSeg)
 *  \param[in,out]   blockSegInfo Output segment list which contains the newly calculated checksum values
 *  \return          kFblValStructOk = Checksum calculation successfully finished, information in blockSegInfo is valid
 *                   other value = Error during checksum calculation, information in blockSegInfo is not valid
 **********************************************************************************************************************/
static tFblValStructResult FblValStructChecksumInternal( tVsInfo * vsInfo, tDiagSegmentList * blockSegInfo )
{
   static SecM_ByteType verifyOutputBuf[FBL_VALSTRUCT_VERIFY_SIZE];
   tFblValStructResult result;
   SecM_VerifyParamType localVerifyParam;
   FL_SegmentInfoType verifySegmentInfo[1];
   vuint8 segIdx;
   vuint8 vsInserted;

   result = kFblValStructOk;

   /* Locate validation structure segment (required for blank check!) */
   FblValStructLocateStructSegment(vsInfo);

   /* Add one segment for validation structure */
   blockSegInfo->nrOfSegments = vsInfo->segInfo.nrOfSegments + 1u;

   /* Iterate over all segments which are defined in the validation structure */
   vsInserted = 0u;
   for (segIdx = 0u; segIdx < blockSegInfo->nrOfSegments; segIdx++)
   {
      if (segIdx == vsInfo->vsSeg)
      {
         /* Insert validation structure */
         blockSegInfo->segmentInfo[segIdx].targetAddress = vsInfo->address;
         blockSegInfo->segmentInfo[segIdx].length = vsInfo->length;
         vsInserted = 1u;
      }
      else
      {
         /* Copy address/length information */
         blockSegInfo->segmentInfo[segIdx].targetAddress = vsInfo->segInfo.segmentInfo[segIdx - vsInserted].targetAddress;
         blockSegInfo->segmentInfo[segIdx].length = vsInfo->segInfo.segmentInfo[segIdx - vsInserted].length;
      }

      /* Prepare input data for checksum calculation */
      verifySegmentInfo[0].length = blockSegInfo->segmentInfo[segIdx].length;
      verifySegmentInfo[0].targetAddress = blockSegInfo->segmentInfo[segIdx].targetAddress;
      verifySegmentInfo[0].transferredAddress = blockSegInfo->segmentInfo[segIdx].targetAddress;
      localVerifyParam.segmentList.nrOfSegments = 1u;
      localVerifyParam.segmentList.segmentInfo = verifySegmentInfo;
      localVerifyParam.verificationData = verifyOutputBuf;
      localVerifyParam.crcTotal = 0u;
      localVerifyParam.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport; /* PRQA S 0313 */ /* MD_FblValStruct_0313_WDTriggerFctType */
      localVerifyParam.readMemory = (FL_ReadMemoryFctType)FblReadProm;

      /* Do checksum verification */
      if (FblValStructChecksumVerification(&localVerifyParam) == SECM_VER_OK)
      {
         /* Copy checksum into segment list */
         (void)MEMCPY(blockSegInfo->segmentInfo[segIdx].checksum, /* PRQA S 0314 */ /* MD_FblValStruct_0314 */
                      &verifyOutputBuf[FBL_VALSTRUCT_BLOCKCHECKSUM_VERIFY_OFFSET],
                      FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE);
      }
      else
      {
         result = kFblValStructMemoryReadError;
         break;
      }
   }

   return result;
}
# endif /* FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL */

/***********************************************************************************************************************
 *  FblValStructChecksumExternal
 **********************************************************************************************************************/
/*! \brief           Request segment information from external instance and check against validation structure
 *  \param[in]       blockDescriptor Block descriptor structure
 *  \param[in,out]   vsInfo Structure which keeps information about validation structure
 *  \param[in,out]   blockSegInfo Download segment list
 *  \return          kFblValStructOk = Passed segment information matches the information in the validation structure
 *                   other value = Invalid number of segments passed or segment locations don't match
 **********************************************************************************************************************/
/* PRQA S 3673 3 */ /* MD_MSR_Rule8.13 */
static tFblValStructResult FblValStructChecksumExternal( const tBlockDescriptor * blockDescriptor,
                                                         tVsInfo * vsInfo,
                                                         tDiagSegmentList * blockSegInfo )
{
   tFblValStructResult result;

# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameter not used (configuration dependent): avoid compiler warning */
   (void)blockDescriptor; /* PRQA S 3112 */ /* MD_MSR_DummyStmt */
# endif /* V_ENABLE_USE_DUMMY_STATEMENT */

   /* Get download segments which are associated with this logical block */
   (void)FblValStructGetSegmentList(blockDescriptor->blockNr, blockSegInfo);

   /* Check the amount of segments which have been downloaded */
   if (blockSegInfo->nrOfSegments == (vsInfo->segInfo.nrOfSegments + 1u))
   {
      /* Number of downloaded segments (excluding the ValStruct segment) matches the number in the ValStruct */
      result = FblValStructCompareSegmentLocation(vsInfo, blockSegInfo);
   }
   else
   {
      /* Mismatch between number of downloaded segments and blocks in validation structure; abort verification */
      result = kFblValStructBlockNumberMismatch;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblValStructCompareSegmentLocation
 **********************************************************************************************************************/
/*! \brief           Compare the segment information from download and validation structure, remove ValStruct from list
 *  \param[in,out]   vsInfo Structure which keeps information about validation structure (out: vsSeg)
 *  \param[in]       blockSegInfo Download segment list
 *  \return          kFblValStructOk = all segments are identical
 *                   other value = address or length differences detected
 **********************************************************************************************************************/
static tFblValStructResult FblValStructCompareSegmentLocation( tVsInfo * vsInfo,
                                                               const tDiagSegmentList * blockSegInfo)
{
   tFblValStructResult result;
   vuint8 segIdx, vsFound;

   result = kFblValStructOk;
   vsInfo->vsSeg = 0u;
   vsFound = 0u;

   for (segIdx = 0u; segIdx < blockSegInfo->nrOfSegments; segIdx++)
   {
      /* Check address and length against block info in validation structure */
      if ((blockSegInfo->segmentInfo[segIdx].targetAddress != vsInfo->segInfo.segmentInfo[segIdx - vsFound].targetAddress) ||
          (blockSegInfo->segmentInfo[segIdx].length != vsInfo->segInfo.segmentInfo[segIdx - vsFound].length))
      {
         /* Check if the mismatch is caused by the segment which keeps the validation structure */
         if ((vsFound == 0u) && (blockSegInfo->segmentInfo[segIdx].targetAddress == vsInfo->address))
         {
            if (blockSegInfo->segmentInfo[segIdx].length == vsInfo->length)
            {
               /* Validation structure segment found */
               vsInfo->vsSeg = segIdx;
               vsFound = 1u;
            }
            else
            {
               /* Invalid length of validation structure */
               result = kFblValStructInvalidFormat;
            }
         }
         else
         {
            /* Address/or length mismatch between download and validation structure */
            result = kFblValStructBlockMismatch;
         }
      }

      if (result != kFblValStructOk)
      {
         break;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  FblValStructCompareSegmentChecksum
 **********************************************************************************************************************/
/*! \brief       Compare the segment information from download and validation structure
 *  \param[in]   vsSegInfo Segment list from validation structure
 *  \param[in]   blockSegInfo Download segment list
 *  \return      kFblValStructOk = all segments are identical
 *               other value = checksum differences detected
 **********************************************************************************************************************/
static tFblValStructResult FblValStructCompareSegmentChecksum( const tVsSegInfo * vsSegInfo, const tDiagSegmentList * blockSegInfo )
{
   tFblValStructResult result;
   vuint8 segIdx, csIdx;

   result = kFblValStructOk;

   for (segIdx = 0; segIdx < vsSegInfo->nrOfSegments; segIdx++)
   {
      /* Compare calculated checksum/hash with value from validation structure */
      for (csIdx = 0; csIdx < FBL_VALSTRUCT_BLOCKCHECKSUM_SIZE; csIdx++)
      {
         if (vsSegInfo->segmentInfo[segIdx].checksum[csIdx] != blockSegInfo->segmentInfo[segIdx].checksum[csIdx])
         {
            /* Checksum values differ, abort verification */
            result = kFblValStructChecksumValueMismatch;
            break;
         }
      }
   }

   return result;
}

# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK )
/***********************************************************************************************************************
 *  FblValStructBlankCheck
 **********************************************************************************************************************/
/*! \brief       Check whether the given memory area is erased (contains the respective erased value)
 *  \param[in]   memAddress Start address of the memory area
 *  \param[in]   memLength Length of the memory area
 *  \return      kFblValStructOk = inter-segment memory areas are in state 'erased'
 *               kFblValStructBlankCheckFailed = non-erased memory area detected
 **********************************************************************************************************************/
/* PRQA S 6080 1 */ /* MD_MSR_STMIF */
static tFblValStructResult FblValStructBlankCheck( tFblAddress memAddress, tFblLength memLength )
{
   tFblValStructResult result;
   tFblLength readLength;
   IO_ErrorType memDrvResult;
   vuint16 bufIdx;
   vuint8 erasedVal;
   tFblAddress localMemAddress = memAddress;
   tFblLength localMemLength = memLength;

   /* Note: By definition, a logical block must be homogeneous (single memory device) and contiguous (no gaps) */
   memSegment = FblMemSegmentNrGet(localMemAddress);

   if (memSegment >= 0)
   {
      result = kFblValStructOk;
      erasedVal = memDrvLst[FlashBlock[memSegment].device].erasedValue;

      while ((localMemLength > 0u) && (kFblValStructOk == result))
      {
         readLength = (localMemLength >= FBL_VALSTRUCT_READ_BUFFER_SIZE) ? FBL_VALSTRUCT_READ_BUFFER_SIZE : localMemLength;
         memDrvResult = MemDriver_RReadSync(readBuffer.data, readLength, localMemAddress);

         if ((IO_E_OK == memDrvResult) || (IO_E_ERASED == memDrvResult))
         {
            for (bufIdx = 0u; bufIdx < readLength; bufIdx++)
            {
               /* Check if the pattern is in its initial state (i. e. the memory at the
                  pattern address is erased) */
               if (readBuffer.data[bufIdx] != (vuint8)erasedVal)
               {
                  /* Memory content has been modified - return with negative result */
                  result = kFblValStructBlankCheckFailed;
                  break;
               }
            }

            localMemAddress += readLength;
            localMemLength -= readLength;
         }
         else
         {
            /* Failure reported by read function */
            result = kFblValStructBlankCheckFailed;
         }
      }
   }
   else
   {
      /* Invalid memory segment */
      result = kFblValStructBlankCheckFailed;
   }

   return result;
}
# endif /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK */

# if defined ( FBL_VALSTRUCT_ENABLE_GAP_FILL )
/***********************************************************************************************************************
 *  FblValStructGapFill
 **********************************************************************************************************************/
/*! \brief       Fill gaps between programmed segments with kFillChar
 *  \param[in]   memAddress Start address of the memory area
 *  \param[in]   memLength Length of the memory area
 *  \return      kFblValStructOk = inter-segment memory areas are filled successfully
 *               kFblValStructGapFillFailed = gap filling failed
 **********************************************************************************************************************/
static tFblValStructResult FblValStructGapFill(tFblAddress memAddress, tFblLength memLength)
{
   tFblValStructResult result;
   tFblLength writeLength;
   tFblAddress localMemAddress = memAddress;
   tFblLength localMemLength = memLength;

   result = kFblValStructOk;

   while (localMemLength > 0u)
   {
      writeLength = (localMemLength >= FBL_VALSTRUCT_GAP_FILL_SEGMENTATION) ? FBL_VALSTRUCT_GAP_FILL_SEGMENTATION : localMemLength;

      if (kFblMemStatus_Ok == FblMemProgramBuffer(localMemAddress, &writeLength, gapFillBuffer))
      {
         localMemAddress += writeLength;
         localMemLength -= writeLength;
      }
      else
      {
         result = kFblValStructGapFillFailed;
         break;
      }
   }

   return result;
}
# endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */

# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK ) || \
     defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
/***********************************************************************************************************************
 *  FblValStructSkipFilledArea
 **********************************************************************************************************************/
/*! \brief       Skip memory area at segment end which has been filled with kFillChar
 *  \param[in]   address Start address of the memory area
 *  \param[in]   memSeg Index of memory segment in flash block table which relates to the specified address
 *  \return      Aligned address
 **********************************************************************************************************************/
static tFblAddress FblValStructSkipFilledArea( tFblAddress address, vsint16 memSeg )
{
   vuint16 segSize;
   tFblLength unalignedLength;
   tFblAddress alignedAddress = address;

   /* Retrieve write segment size of the respective memory device */
   segSize = memDrvLst[FlashBlock[memSeg].device].segmentSize;

   /* ESCAN00101065: Check alignment of read address */
   if ((address & (segSize - 1uL)) != 0uL)
   {
      /* Skip data which has been filled with kFillChar */
      unalignedLength = segSize - (address & (segSize - 1uL));
      alignedAddress += unalignedLength;
   }

   return alignedAddress;
}

/***********************************************************************************************************************
 *  FblValStructGapProcessing
 **********************************************************************************************************************/
/*! \brief       Depending on the configuration either blank check or gap filling will be executed
 *  \param[in]   blockDescriptor Block descriptor structure
 *  \param[in]   blockSegInfo Download segment list
 *  \return      kFblValStructOk = processing successfully performed
 *               other value = either blank check or gap filling failed
 **********************************************************************************************************************/
static tFblValStructResult FblValStructGapProcessing( const tBlockDescriptor * blockDescriptor,
                                                      const tDiagSegmentList * blockSegInfo )
{
   tFblValStructResult result;
   tFblAddress procAddress;
   tFblLength remainingLength;
   vuint8 segIdx;
   tBlockDescriptor localBlockDescriptor;
#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
   tFblLength idx;
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */

   localBlockDescriptor = *blockDescriptor;

#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
   /* Fill gap fill buffer with fill character */
   for (idx = 0u; idx < FBL_VALSTRUCT_GAP_FILL_SEGMENTATION; idx++)
   {
      gapFillBuffer[idx] = kFillChar;
   }
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */

   /* Adjust the size of the logical block according to presence pattern size */
   (void)ApplFblAdjustLbtBlockData(&localBlockDescriptor);

   procAddress = localBlockDescriptor.blockStartAddress;
   /* Note: By definition, a logical block must be homogeneous (single memory device) and contiguous (no gaps) */
   memSegment = FblMemSegmentNrGet(procAddress);

   if (memSegment >= 0)
   {
      result = kFblValStructOk;

      for (segIdx = 0; segIdx < blockSegInfo->nrOfSegments; segIdx++)
      {
         /* Skip memory area at segment end which has been filled with kFillChar */
         procAddress = FblValStructSkipFilledArea(procAddress, memSegment);

         if (procAddress < blockSegInfo->segmentInfo[segIdx].targetAddress)
         {
            remainingLength = blockSegInfo->segmentInfo[segIdx].targetAddress - procAddress;

#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
            result = FblValStructGapFill(procAddress, remainingLength);
#  else /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK */
            result = FblValStructBlankCheck(procAddress, remainingLength);
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */

            if (kFblValStructOk != result)
            {
               break;
            }
         }

         procAddress = blockSegInfo->segmentInfo[segIdx].targetAddress +
            blockSegInfo->segmentInfo[segIdx].length;
      }

      if (kFblValStructOk == result)
      {
         /* Skip memory area at segment end which has been filled with kFillChar */
         procAddress = FblValStructSkipFilledArea(procAddress, memSegment);

         /* Check remaining part of logical block */
         if (procAddress < (localBlockDescriptor.blockStartAddress + localBlockDescriptor.blockLength))
         {
            remainingLength = (localBlockDescriptor.blockStartAddress + localBlockDescriptor.blockLength) - procAddress;

#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
            result = FblValStructGapFill(procAddress, remainingLength);
#  else /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK */
            result = FblValStructBlankCheck(procAddress, remainingLength);
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */
         }
      }
   }
   else
   {
      /* Invalid memory segment */
#  if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
      result = kFblValStructGapFillFailed;
#  else /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK */
      result = kFblValStructBlankCheckFailed;
#  endif /* FBL_VALSTRUCT_ENABLE_GAP_FILL */
   }

   return result;
}
# endif /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK || FBL_VALSTRUCT_ENABLE_GAP_FILL */

/***********************************************************************************************************************
 *   GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  FblValStructValidateBlockExtended
 **********************************************************************************************************************/
/*! \brief       The flash memory content is verified according to the information in the validation structure
 *  \pre         Complete file must be successfully downloaded
 *  \param[in]   blockDescriptor Block descriptor structure
 *  \param[in]   option Parameter to influence the execution sequence
 *  \return      kFblValStructOk = verification successfully performed
 *               other value = verification failed
 **********************************************************************************************************************/
/* PRQA S 6050 1 */ /* MD_MSR_STCAL */
tFblValStructResult FblValStructValidateBlockExtended( const tBlockDescriptor * blockDescriptor,
                                                       const tFblValStructOption option )
{
   static tVsInfo          vsInfo;
   static tDiagSegmentList blockSegInfo;
   tFblValStructResult     result;

# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   /* Parameters not used: avoid compiler warning */
   (void)option;
# endif
   /* Check if requested options can be handled with current pre-compile config */
# if defined( FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL )
# else
   assertFblUser(! FblValStructOptionChecksumInternal(option), kFblSysAssertParameterOutOfRange);
# endif
# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK )
# else
   assertFblUser(! FblValStructOptionBlankCheck(option), kFblSysAssertParameterOutOfRange);
# endif
# if defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
# else
   assertFblUser(! FblValStructOptionGapFill(option), kFblSysAssertParameterOutOfRange);
# endif

   vsInfo.address = FblValStructGetVsAddress(blockDescriptor);

   /* Extract the block information from the validation structure */
   result = FblValStructGetSegmentInfo(&vsInfo);

# if defined( FBL_VALSTRUCT_ENABLE_SIGNATURE )
   if (kFblValStructOk == result)
   {
      /* Read verification data from downloaded logical block */
      result = FblValStructGetSignature(blockDescriptor, readBuffer.data); /* PRQA S 0306 */ /* MD_FblValStruct_0306 */
      if (kFblValStructOk == result)
      {
         /* Check integrity and authenticity of validation structure */
         result = FblValStructVerification(&vsInfo, readBuffer.data);
      }
   }
# endif /* FBL_VALSTRUCT_ENABLE_SIGNATURE */

   if (kFblValStructOk == result)
   {
      /* ESCAN00102005: Adapt validation structure dimension to match the respective data segment
       * (required if signature is attached to validation structure segment) */
      vsInfo.address = FblValStructGetVsSegAddress(blockDescriptor);
      vsInfo.length = FblValStructGetVsSegLength(vsInfo.length);

# if defined( FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL )
      /* Decide whether the segment checksums shall be calculated internally or requested externally */
      if (FblValStructOptionChecksumInternal(option))
      {
         /* Calculate the checksum of all segments and fill blockSegInfo structure */
         result = FblValStructChecksumInternal(&vsInfo, &blockSegInfo);
      }
      else
# endif /* FBL_VALSTRUCT_ENABLE_CHECKSUM_INTERNAL */
      {
         /* Request segment information from external instance and check against validation structure */
         result = FblValStructChecksumExternal(blockDescriptor, &vsInfo, &blockSegInfo);
      }
   }

# if defined( FBL_VALSTRUCT_ENABLE_BLANK_CHECK ) || \
     defined( FBL_VALSTRUCT_ENABLE_GAP_FILL )
   if (kFblValStructOk == result)
   {
      if ((FblValStructOptionBlankCheck(option)) || (FblValStructOptionGapFill(option)))
      {
         /* Perform gap processing (blank check or gap fill) */
         result = FblValStructGapProcessing(blockDescriptor, &blockSegInfo);
      }
   }
# endif /* FBL_VALSTRUCT_ENABLE_BLANK_CHECK || FBL_VALSTRUCT_ENABLE_GAP_FILL */

   if (kFblValStructOk == result)
   {
      /* Remove validation structure segment */
      FblValStructRemoveStructSegment(&vsInfo, &blockSegInfo);

      /* Proceed with checking the checksum/hash of all blocks in the structure */
      result = FblValStructCompareSegmentChecksum(&vsInfo.segInfo, &blockSegInfo);
   }

   return result;
}

/***********************************************************************************************************************
 *  FblValStructValidateBlock
 **********************************************************************************************************************/
/*! \brief       The flash memory content is verified according to the information in the validation structure
 *  \pre         Complete file must be successfully downloaded
 *  \param[in]   blockDescriptor Block descriptor structure
 *  \return      kFblValStructOk = verification successfully performed
 *               other value = verification failed
 **********************************************************************************************************************/
tFblValStructResult FblValStructValidateBlock( const tBlockDescriptor * blockDescriptor )
{
   return FblValStructValidateBlockExtended(blockDescriptor, FBL_VALSTRUCT_OPTION_DEFAULT);
}
# define FBL_VALSTRUCT_STOP_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* FBL_ENABLE_VALSTRUCT */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblValStruct_0306:
     Reason: Address conversion between integer values and pointers is required to allow for hardware independent
             configuration and address range checks.
     Risk: The size of integer required to hold the result of a pointer cast is implementation-defined.
     Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                 specific basis.

   MD_FblValStruct_0314:
      Reason: The copy function have a void pointer as a function parameter and an integer is casted to pointer void.
      Risk: No risk, because the underlying pointer type is known and the cast is safe.
      Prevention: No prevention necessary.

   MD_FblValStruct_0315:
     Reason: The underling type of verifyParam.key is pointer to void. As the type is defined outside the package, the
             implicit conversion is necessary.
     Risk: No identifiable risk.
     Prevention: No prevention required.

   MD_FblValStruct_0313_WDTriggerFctType:
     Reason: Security module expects a watchdog handler with return type 'void'. The usage of a wrapper function is
             avoided due to higher voted requirements for minimized stack and runtime usage applied on the code.
     Risk: Potentially undefined behavior of the used compiler which usually leads to a warning or error during
           compilation.
     Prevention: The respective functionality is part of integration testing and will hence be verified before delivery.

   MD_FblValStruct_2985:
     Reason: Based on the configuration, some constants are zero, which leads to constant control expression.
     Risk: No identifiable risk.
     Prevention: No prevention required.

   MD_FblValStruct_2991_2995:
      Reason: The value of the if-controlling expression depends on the configuration.
      Risk: No risk.
      Prevention: No prevention necessary.

   MD_FblValStruct_3218:
     Reason: Variable is accessed from multiple functions (configuration dependent).
     Risk: Scope is larger than required (whole file instead of one function). Some other function could access
      the variable.
     Prevention: Restrict the functionality in this module to the intended purpose. Don't add functions which shall not
      be able to access the local data buffers.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_VALSTRUCT.C
 **********************************************************************************************************************/
