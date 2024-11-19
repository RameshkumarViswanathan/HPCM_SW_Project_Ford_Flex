/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Data decompression according to Ford Software Requirement
 *                 Specification - Data Compression and Encryption Specification
 *                 (No. 31827960, Rev. 002, Vol. 01)
 *
 *                 This file implements the LZSS decompression used in ECU bootloaders.
 *                 LZSS is a dictionary compression method and uses a sliding window as
 *                 dictionary. Compression is achieved by replacing byte arrays found in
 *                 previously read data with position/length-pairs pointing in to the sliding
 *                 window. If the position/length-pair takes up more bits than the byte array
 *                 that it tries to compress, the data is left uncompressed. This is indicated
 *                 with a single bit flag, '1' indicates that data to follow is uncompressed and
 *                 '0' indicates that data to follow is a position/length-pair.
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2018 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  AUTHOR IDENTITY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Name                          Initials      Company
 *  --------------------------------------------------------------------------------------------------------------------
 *  Joern Herwig                  JHg           Vector Informatik GmbH
 *  Andre Caspari                 Ci            Vector Informatik GmbH
 *  Thomas Bezold                 TBe           Vector Informatik GmbH
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2010-04-12  JHg/Ci                   Initial release
 *  01.01.00   2012-06-22  Ci      ESCAN00057244    Compiler warning: inconsistent storage class specification
 *  01.01.01   2013-01-30  JHg     ESCAN00064518    Removed unnecessary assertion
 *  01.01.02   2016-02-08  JHg     ESCAN00088139    Compiler warning: ApplFblFatalError() undefined
 *  01.01.03   2018-09-14  TBe     ESCAN00100741    Harmonized include structure
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"
#include "cmpr.h"

/***********************************************************************************************************************
 *   VERSION
 **********************************************************************************************************************/

#if ( SYSSERVICE_CMPR1_FORD_VERSION != 0x0101u ) || \
    ( SYSSERVICE_CMPR1_FORD_RELEASE_VERSION != 0x03u )
# error "Error in cmpr.c: Source and header file are inconsistent!"
#endif

#if ( SYSSERVICE_CMPR1_FORD_VERSION != _SYSSERVICE_CMPR_VERSION ) || \
    ( SYSSERVICE_CMPR1_FORD_RELEASE_VERSION != _SYSSERVICE_CMPR_RELEASE_VERSION )
# error "Error in cmpr.c: Source and v_ver.h are inconsistent!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Number of bits allocated to indices into the text window */
#define LZSS_INDEX_BIT_COUNT        (vuint8)10

/* Number of bits allocated for the length of an encode phrase */
#define LZSS_LENGTH_BIT_COUNT       (vuint8)4

/* Max number of bits in a single processing step */
#define LZSS_MAX_UNPROCESSED_BIT_COUNT    (vuint8)10
#define LZSS_MAX_UNPROCESSED_BYTE_COUNT   (vuint8)(2 + ((LZSS_MAX_UNPROCESSED_BIT_COUNT - 2) / 8))
#define LZSS_MAX_ADDITIONAL_BYTE_COUNT    (vuint8)(1 + ((LZSS_MAX_UNPROCESSED_BIT_COUNT - 2) / 8))
#define LZSS_UNPROCESSED_BUFFER_SIZE      (vuint8)(LZSS_MAX_UNPROCESSED_BYTE_COUNT + LZSS_MAX_ADDITIONAL_BYTE_COUNT)

/* Size of the sliding window */
#define LZSS_WINDOW_SIZE            (vuint16)( 1 << LZSS_INDEX_BIT_COUNT )

/*
   Number of bytes to encode a byte array.
   Used to calculate if compression should be done or not
*/
#define LZSS_BREAK_EVEN             (vuint8)( ( 1 + LZSS_INDEX_BIT_COUNT + \
                                                LZSS_LENGTH_BIT_COUNT ) / 9 )

/* End of stream indicator */
#define LZSS_END_OF_STREAM          (vuint8)0

/* Arithmetic modulo to get the correct index in the sliding window */
#define LZSS_MOD_WINDOW( a )        (vuint16)( ( a ) & ( LZSS_WINDOW_SIZE - 1 ) )

/* Output byte to bit buffer type */
#define OutputByte(val, pBuf)       ((*((pBuf->buffer)++)) = val)
/* Read single bit from input stream */
#define InputBit(pInBuf)            (InputBits(pInBuf, 1))

/* State machine states */
#define LZSS_STATE_COMPRESS_FLAG       0
#define LZSS_STATE_UNCOMPRESSED_BYTE   1
#define LZSS_STATE_MATCH_POSITION      2
#define LZSS_STATE_MATCH_LENGTH        3
#define LZSS_STATE_MATCH_OUTPUT        4

/* End of stream flag values */
#define LZSS_EOS_NOT_REACHED           0
#define LZSS_EOS_REACHED               1

/* End of stream access macros */
#define clrEosReached()                { eosFlag = LZSS_EOS_NOT_REACHED; }
#define setEosReached()                { eosFlag = LZSS_EOS_REACHED; }
#define eosReached()                   (eosFlag == LZSS_EOS_REACHED)

/* Overflow indication values */
#define LZSS_OVERFLOW_NONE             0
#define LZSS_OVERFLOW_INPUT            1
#define LZSS_OVERFLOW_OUTPUT           2

/* Macro for watchdog handling */
#if !defined( CMPR_WATCHDOG_FCT )
# define CMPR_WATCHDOG_FCT             (void)FblLookForWatchdog
#endif

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

/* The sliding window used by the decompression algorithm */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 window[ LZSS_WINDOW_SIZE ];

/* Temporary buffer for unprocessed data in case of segmented input*/
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 unprocessed[ LZSS_UNPROCESSED_BUFFER_SIZE ];
/* Number of unprocessed bytes */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 unprocessedCount;

/* State machine state */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 state;
/* Length of the data match found */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 matchLen;
/* Position in the window of the data match */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 matchPos;
/* Current window position */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 winPos;
/* Indicator of End Of Stream reached */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 eosFlag;
/* Overflow indication */
V_MEMRAM0 static V_MEMRAM1 vuint8 V_MEMRAM2 overflow;
/* Maximum output length */
V_MEMRAM0 static V_MEMRAM1 vuint32 V_MEMRAM2 maxOutLen;

/* Lookup table to speed up bit stream reading */
V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 inputMask[] = { 0xFFu, 0x7Fu, 0x3Fu, 0x1Fu, 0x0Fu, 0x07u, 0x03u, 0x01u, 0x00u };

/***********************************************************************************************************************
 *  EXTERNAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

static vuint16 InputBits(LZSS_InputBuffer_T *pInBuf, vuint8 numBits);
static void LZSS_Decompress(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf);

/***********************************************************************************************************************
 *   GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  LZSS_Init
 **********************************************************************************************************************/
/*! \brief       Initialize LZSS decompression state variables
 **********************************************************************************************************************/
void LZSS_Init( void )
{
   state = LZSS_STATE_COMPRESS_FLAG;
   matchLen = 0;
   matchPos = 0;
   winPos = 1;
   clrEosReached();
   unprocessedCount = 0;
}

/***********************************************************************************************************************
 *  LZSS_ExpandData
 **********************************************************************************************************************/
/*! \brief       Perform LZSS decompression
 *  \details     Unconsumed bytes are saved and restored on the next iteration
 *  \pre         LZSS_Init was executed before
 *  \param[in]   inBuf Input bit buffer
 *  \param[out]  outBuf Output byte buffer
 **********************************************************************************************************************/
void LZSS_ExpandData(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf)
{
   /* Index var. for loop */
   vuint8 i;
   vuint8 addCount;
   LZSS_InputBuffer_T unprocessedBuf;

   /* Initialize overflow flag */
   overflow = LZSS_OVERFLOW_NONE;

   /* Remember output buffer size */
   maxOutLen = outBuf->length;
   outBuf->length = 0;

   /* Process remaining bytes from previous iteration */
   if (unprocessedCount > 0)
   {
      /* More unprocessed bytes than expected */
      assertFblInternal((unprocessedCount <= LZSS_MAX_UNPROCESSED_BYTE_COUNT), kFblOemAssertIllegalParameter);

      /* Number of additional bytes is limited by input length  */
      if (inBuf->length < LZSS_MAX_ADDITIONAL_BYTE_COUNT)
      {
         addCount = (vuint8)(inBuf->length & 0xFFu);
      }
      else
      {
         addCount = LZSS_MAX_ADDITIONAL_BYTE_COUNT;
      }

      /* Fill up unprocessed buffer with new input bytes */
      for (i = 0; i < addCount; i++)
      {
         unprocessed[i + unprocessedCount] = inBuf->buffer[i];
      }

      /* Prepare buffer object */
      unprocessedBuf.buffer = unprocessed;
      unprocessedBuf.bitPos = inBuf->bitPos;
      unprocessedBuf.length = (unprocessedCount + addCount);
      unprocessedBuf.bitLength = ((unprocessedBuf.length * 8) - inBuf->bitPos);

      /* Decompress unprocessed bytes */
      LZSS_Decompress(&unprocessedBuf, outBuf);

      /* Check if some of the data was consumed */
      if ((unprocessedBuf.length != (unprocessedCount + addCount)) || (unprocessedBuf.bitPos != inBuf->bitPos))
      {
         /* Update input buffer information, as parts may be already processed */
         inBuf->buffer += (addCount - unprocessedBuf.length);
         inBuf->length -= (addCount - unprocessedBuf.length);
         inBuf->bitPos = unprocessedBuf.bitPos;

         /* Reset state variables */
         unprocessedCount = 0;
         overflow = LZSS_OVERFLOW_NONE;
      }
   }

   /* Calculate bit length of input stream */
   inBuf->bitLength = (inBuf->length * 8) - inBuf->bitPos;
   /* Decompress input stream */
   LZSS_Decompress(inBuf, outBuf);

   /* Check for unprocessed bytes */
   if (overflow == LZSS_OVERFLOW_INPUT)
   {
      /* More unprocessed bytes than expected */
      assertFblInternal(((unprocessedCount + inBuf->length) <= LZSS_MAX_UNPROCESSED_BYTE_COUNT), kFblOemAssertIllegalParameter);

      /* Save bytes which aren't consumed completely */
      for (i = 0; i < inBuf->length; i++)
      {
         unprocessed[unprocessedCount + i] = inBuf->buffer[i];
      }
      unprocessedCount += (vuint8)inBuf->length;

      /* Buffer consumed completely */
      inBuf->length = 0;
   }
}

/***********************************************************************************************************************
 *  LZSS_Decompress
 **********************************************************************************************************************/
/*! \brief       This routine expands data from an in buffer with the LZSS algorithm.
 *  \details     The routine reads in flag bits to decide whether to read in an uncompressed character or an
 *               index/length pair and expands the data stream to an out buffer.
 *  \pre         bitLength of pInBuf is initialized with correct value
 *  \param[in]   inBuf Input bit buffer
 *  \param[out]  outBuf Output byte buffer
 **********************************************************************************************************************/
static void LZSS_Decompress(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf)
{
   /* Index var. for loop */
   vuint8 i;
   /* Byte to write to output buffer */
   vuint8 outByte;

   while ( (inBuf->length > 0) && (!eosReached()) && (overflow == LZSS_OVERFLOW_NONE) )
   {
      /* Call watchdog service function */
      CMPR_WATCHDOG_FCT();

      switch ( state )
      {
         /* Read flag indicating compressed/uncompressed data */
         case LZSS_STATE_COMPRESS_FLAG:
         {
            /* Enough bits left in input stream? */
            if (inBuf->bitLength < 1)
            {
               /* Indicate input overflow */
               overflow = LZSS_OVERFLOW_INPUT;
            }
            else
            {
               /* If next bit is 1, next byte is uncompressed */
               if (InputBit(inBuf) == 1)
               {
                  /* Read uncompressed byte next */
                  state = LZSS_STATE_UNCOMPRESSED_BYTE;
               }
               /* If next bit is 0, compressed data follows */
               else
               {
                  /* Read sliding window position next */
                  state = LZSS_STATE_MATCH_POSITION;
               }

               /* Verify consistency of byte length, bit length and bit position */
               assertFblInternal((inBuf->bitLength == (inBuf->length * 8) - inBuf->bitPos), kFblOemAssertParameterOutOfRange);
            }
            break;
         }

         /* Read single uncompressed byte */
         case LZSS_STATE_UNCOMPRESSED_BYTE:
         {
            /* Enough bits left in input stream? */
            if (inBuf->bitLength < 8)
            {
               /* Indicate input overflow */
               overflow = LZSS_OVERFLOW_INPUT;
            }
            else
            {
               /* Make sure uncompressed byte fits into output buffer */
               if ((outBuf->length + 1) > maxOutLen)
               {
                  /* Indicate output overflow */
                  overflow = LZSS_OVERFLOW_OUTPUT;
               }
               else
               {
                  /* Read byte */
                  outByte = (vuint8) InputBits( inBuf, (vuint8)8 );

                  /* Verify consistency of byte length, bit length and bit position */
                  assertFblInternal((inBuf->bitLength == (inBuf->length * 8) - inBuf->bitPos), kFblOemAssertParameterOutOfRange);

                  /* Output byte*/
                  OutputByte(outByte, outBuf);
                  (outBuf->length)++;
                  /* Add byte in window */
                  window[ winPos ] = outByte;
                  /* Increase window position */
                  winPos = LZSS_MOD_WINDOW( winPos + 1 );

                  /* Process next token */
                  state = LZSS_STATE_COMPRESS_FLAG;
               }
            }
            break;
         }

         /* Read sliding window position */
         case LZSS_STATE_MATCH_POSITION:
         {
            /* Enough bits left in input stream? */
            if (inBuf->bitLength < LZSS_INDEX_BIT_COUNT)
            {
               /* Indicate input overflow */
               overflow = LZSS_OVERFLOW_INPUT;
            }
            else
            {
               /* Get compressed data as window position of match*/
               matchPos = (vuint16) InputBits( inBuf, LZSS_INDEX_BIT_COUNT );

               /* Verify consistency of byte length, bit length and bit position */
               assertFblInternal((inBuf->bitLength == (inBuf->length * 8) - inBuf->bitPos), kFblOemAssertParameterOutOfRange);

               /* If end of stream, exit */
               if (matchPos == LZSS_END_OF_STREAM )
               {
                  /* End of stream should be located in last input byte */
                  assertFblInternal((inBuf->length <= 1), kFblOemAssertParameterOutOfRange);

                  setEosReached();
                  inBuf->length = 0;
               }
               else
               {
                  /* Read match length next */
                  state = LZSS_STATE_MATCH_LENGTH;
               }
            }
            break;
         }

         /* Read match length of compressed data */
         case LZSS_STATE_MATCH_LENGTH:
         {
            /* Enough bits left in input stream? */
            if (inBuf->bitLength < LZSS_LENGTH_BIT_COUNT)
            {
               /* Indicate input overflow */
               overflow = LZSS_OVERFLOW_INPUT;
            }
            else
            {
               /* Get length of string match */
               matchLen = (vuint8) InputBits( inBuf, LZSS_LENGTH_BIT_COUNT );

               /* Verify consistency of byte length, bit length and bit position */
               assertFblInternal((inBuf->bitLength == (inBuf->length * 8) - inBuf->bitPos), kFblOemAssertParameterOutOfRange);
               /* Check match length range */
               assertFblInternal((matchLen < (1 << LZSS_LENGTH_BIT_COUNT)), kFblOemAssertIllegalReturnValue);

               /* Add break even + 1 to get the correct length. Length zero and
                * the break even value are subtracted from the length during
                * compression to save space. */
               matchLen = matchLen + (LZSS_BREAK_EVEN + 1);

               /* Uncompress next turn */
               state = LZSS_STATE_MATCH_OUTPUT;
            }
            break;
         }

         case LZSS_STATE_MATCH_OUTPUT:
         {
            /* Make sure match fits into output buffer */
            if ((outBuf->length + matchLen) > maxOutLen)
            {
               /* Indicate output overflow */
               overflow = LZSS_OVERFLOW_OUTPUT;
            }
            else
            {
               /* For every byte in match */
               for ( i = 0 ; i < matchLen ; i++ )
               {
                  /* Get matching byte from window */
                  outByte = window[ LZSS_MOD_WINDOW( matchPos + i ) ];
                  /* Output byte */
                  OutputByte(outByte, outBuf);
                  (outBuf->length)++;
                  /* Add matched byte to current window position */
                  window[ winPos ] = outByte;
                  /* Increase window position */
                  winPos = LZSS_MOD_WINDOW( winPos + 1 );
               }

               /* Process next token */
               state = LZSS_STATE_COMPRESS_FLAG;
            }
            break;
         }

         default:
         {
            /* State should never be reached */
            assertFblInternal(0, kFblOemAssertIllegalExecutionPath);
            break;
         }
      }

      /* Check sliding window index */
      assertFblInternal((winPos < LZSS_WINDOW_SIZE), kFblOemAssertParameterOutOfRange);
   }
}

/***********************************************************************************************************************
 *  InputBits
 **********************************************************************************************************************/
/*! \brief       Read a given number of bits from a bit stream
 *  \pre         bitLength of pInBuf is initialized with correct value
 *  \param[in]   pInBuf Input bit buffer
 *  \param[in]   numBits Bits to be read
 *  \return      Read value
 **********************************************************************************************************************/
static vuint16 InputBits(LZSS_InputBuffer_T *pInBuf, vuint8 numBits)
{
   vuint32 rval;
   vuint8 byteCount;
   vuint8 tempBitPos;

   if ((pInBuf->length == 0) || (numBits == 0))
   {
      /* No data to be read */
      return (vuint16)0u;
   }

   /* Verify bit position range */
   assertFblInternal((pInBuf->bitPos < 8), kFblOemAssertIllegalParameter);
   /* No more than 32 bit can be read, less depending on bit position */
   assertFblInternal(((pInBuf->bitPos + numBits) <= 32), kFblOemAssertIllegalParameter);

   /* Read first byte, mask unnecessary bits */
   rval = (vuint32)(*(pInBuf->buffer) & inputMask[pInBuf->bitPos]);

   /* Temporary calculation result */
   tempBitPos = (pInBuf->bitPos + numBits) - 1;

   /* Total number of bytes to be consumed */
   byteCount = (tempBitPos & 0xF8u) >> 3;
   /* New bit position */
   pInBuf->bitPos = (tempBitPos & 0x07u) + 1;
   /* Update remaining bit length */
   pInBuf->bitLength -= numBits;

   /* No more than a total of 4 bytes can be read */
   assertFblInternal((byteCount < 4), kFblOemAssertIllegalParameter);

   /* Read remaining bytes */
   while (byteCount > 0)
   {
      /* Check for range wraparound */
      assertFblInternal((pInBuf->length > 0), kFblOemAssertIllegalParameter);
      /* Update pointer and length */
      (pInBuf->buffer)++;
      (pInBuf->length)--;

      /* Make room for next byte */
      rval <<= 8;
      /* Add byte value */
      rval |= (vuint32)(*(pInBuf->buffer));

      byteCount--;
   }

   /*
      Switch to next byte in case bitPos == 8
      The following code equals

      if (pInBuf->bitPos == 8)
      {
         (pInBuf->buffer)++;
         (pInBuf->length)--;
      }
   */
   byteCount = (pInBuf->bitPos >> 3);
   (pInBuf->buffer) += byteCount;
   (pInBuf->length) -= byteCount;

   /* Shift out odd bits */
   rval >>= 8 - pInBuf->bitPos;

   /* Align bit position */
   pInBuf->bitPos &= 0x07u;

   /* Limit return value to 16 bit */
   return ((vuint16)(rval & 0xFFFFu));
}

/***********************************************************************************************************************
 *  END OF FILE: CMPR.C
 **********************************************************************************************************************/

