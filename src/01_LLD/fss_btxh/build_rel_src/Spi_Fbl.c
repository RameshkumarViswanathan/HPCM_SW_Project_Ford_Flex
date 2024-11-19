/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        MSR-SPI API wrapper for FBL-SPI API
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2022 by Vector Informatik GmbH.                                                  All rights reserved.
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
 *  Refer to the module's header file.
 **********************************************************************************************************************/

#define SPI_FBL_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "Spi_Fbl_Inc.h"
#include "fbl_inc.h"

#include "Std_Types.h"
#include "Spi.h"
#include "EcuM.h"
#include "EcuM_Cbk.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( DRVSPI_FBLSPI01ASR4_VERSION != 0x0106u ) || \
    ( DRVSPI_FBLSPI01ASR4_RELEASE_VERSION != 0x00u )
# error "Error in Spi_Fbl.c: Source and header file are inconsistent!"
#endif

/* Interface version compatibility check */
# if ( FBLDRVSPI_VECTORIF_API_VERSION_MAJOR != 0x03u ) || \
     ( FBLDRVSPI_VECTORIF_API_VERSION_MINOR < 0x00u )
#  error "Error in Spi_Fbl.c: Interface version compatibility check failed!"
# endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if !defined( SPI_FBL_ENABLE_BYTE_SWAP ) && !defined( SPI_FBL_DISABLE_BYTE_SWAP )
/* Make assumptions on required byte order based on CPU_BYTE_ORDER per default, when not overwritten from external */
# if ( CPU_BYTE_ORDER == LOW_BYTE_FIRST )
#  define SPI_FBL_ENABLE_BYTE_SWAP
# else
#  define SPI_FBL_DISABLE_BYTE_SWAP
# endif /* CPU_BYTE_ORDER == LOW_BYTE_FIRST */
#endif /* !SPI_FBL_ENABLE_BYTE_SWAP && !SPI_FBL_DISABLE_BYTE_SWAP */

#if !defined( STATIC )
# define STATIC                  static
#endif

#if !defined( SPI_FBL_WATCHDOG_CYCLE_COUNT )
# define SPI_FBL_WATCHDOG_CYCLE_COUNT     0x3Fu
#endif

# define SPI_FBL_TRANSFER_PARAM_TYPE      tFblSpiTransferParam
# define SPI_FBL_MAX_NUMBER_OF_HANDLES    FBL_SPI_MAX_NUMBER_OF_HANDLES
# define SPI_FBL_HANDLE_PARAM_ONLY        FBL_SPI_HANDLE_PARAM_ONLY
# define SPI_FBL_HANDLE_PARAM_FIRST       FBL_SPI_HANDLE_PARAM_FIRST
# define SPI_FBL_HANDLE                   FBL_SPI_HANDLE

# define SPI_FBL_CHIP_SELECT_MODE_SET     FBL_SPI_CHIP_SELECT_MODE_SET
# define SPI_FBL_CHIP_SELECT_MODE_CLR     FBL_SPI_CHIP_SELECT_MODE_CLR
# define SPI_FBL_CHIP_SELECT_MODE_BOTH    FBL_SPI_CHIP_SELECT_MODE_BOTH
# define SPI_FBL_CHIP_SELECT_MODE_NONE    FBL_SPI_CHIP_SELECT_MODE_NONE

# define SPI_FBL_RESULT_OK                kFblOk
# define SPI_FBL_RESULT_FAILED            kFblFailed

/***********************************************************************************************************************
 *  LOCAL DATA TYPES AND STRUCTURES
 **********************************************************************************************************************/

/** MSR SPI channel configuration */
typedef struct
{
   Spi_DataConstPtrType pSrcBuffer;    /**< Source buffer (contains data to be transmitted) */
   Spi_DataPtrType      pDestBuffer;   /**< Destination buffer (contains received data) */
   Spi_NumberOfDataType length;        /**< Length of bytes*DataWidth to be transmitted */
} tSpiFblChannelCfg;

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define SPIFBL_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if defined( SPI_FBL_ENABLE_BYTE_SWAP )
STATIC FUNC(void, SPI_CODE) SpiFblSwapBytes(tSpiFblDataWidth dataWidth, P2VAR(uint8, AUTOMATIC, SPI_APPL_DATA) buffer,
   Spi_NumberOfDataType length);
#endif /* SPI_FBL_ENABLE_BYTE_SWAP */

#define SPIFBL_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#define SPIFBL_START_SEC_VAR_NOINIT_UNSPECIFIED
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

STATIC VAR(tSpiFblChannelCfg, SPI_VAR_NOINIT) g_SpiFblChannelCfg[SPI_FBL_MAX_CHANNEL_COUNT];
/* PRQA S 3218 1 */ /* MD_SpiFbl_3218 */
STATIC VAR(uint8            , SPI_VAR_NOINIT) g_SendBuffer[SPI_FBL_MAX_CHANNEL_COUNT][SPI_FBL_MAX_BUFFER_SIZE];

#define SPIFBL_STOP_SEC_VAR_NOINIT_UNSPECIFIED
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

#define SPIFBL_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if defined( SPI_FBL_ENABLE_BYTE_SWAP )
/***********************************************************************************************************************
 *  SpiFblSwapBytes
 **********************************************************************************************************************/
/*! \brief           Swaps the bytes for little endian to big endian of the source and destination buffer
 *  \param[in]       dataWidth   Data width of the transmit buffer
 *  \param[in,out]   buffer      Buffer where the bytes should be swapped
 *  \param[in]       length      Length of bytes which should be swapped
 **********************************************************************************************************************/
STATIC FUNC(void, SPI_CODE) SpiFblSwapBytes(tSpiFblDataWidth dataWidth, P2VAR(uint8, AUTOMATIC, SPI_APPL_DATA) buffer,
   Spi_NumberOfDataType length)
{
   vuintx index;
   vuintx indexByte;
   vuintx offset;
   uint8  temp;
   P2VAR(uint8, AUTOMATIC, SPI_APPL_DATA) currentBuffer;

   if (   (dataWidth == SPI_FBL_DATA_WIDTH_16BIT)
       || (dataWidth == SPI_FBL_DATA_WIDTH_32BIT))
   {
      if (buffer != NULL_PTR)
      {
         for (index = 0u; index < length; index += (vuintx)dataWidth)
         {
            currentBuffer = &buffer[index];
            /* Swap bytes according to the data width */
            for (indexByte = 0u; indexByte < ((vuintx)dataWidth >> 1u); indexByte++)
            {
               offset = (vuintx)dataWidth - 1u - indexByte;
               temp = currentBuffer[indexByte];
               currentBuffer[indexByte] = currentBuffer[offset];
               currentBuffer[offset] = temp;
            }
         }
      }
   }
   else /* (dataWidth == SPI_FBL_DATA_WIDTH_8BIT) */
   {
      /* For 8Bit no swapping is necessary */
   }
}
#endif /* SPI_FBL_ENABLE_BYTE_SWAP */

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  Spi_SetupEB
 **********************************************************************************************************************/
/*! \brief           This function substitutes the "real" MSR Spi_SetupEB() function in order to allow to use the
 *                   FBL SPI driver instead of the MSR SPI / DIO driver(s)
 *  \param[in]       Channel           Channel which shall be used
 *  \param[in]       SrcDataBufferPtr  Pointer to input transfer buffer
 *  \param[in]       DesDataBufferPtr  Pointer to output transfer buffer
 *  \param[in]       Length            Number of words that shall be transferred
 **********************************************************************************************************************/
FUNC(Std_ReturnType, SPI_CODE) Spi_SetupEB( Spi_ChannelType Channel, Spi_DataConstPtrType SrcDataBufferPtr,
   Spi_DataPtrType DesDataBufferPtr, Spi_NumberOfDataType Length )
{
   Std_ReturnType result;

   result = E_NOT_OK;

   /* Channel in valid range? */
   if (Channel < SPI_FBL_MAX_CHANNEL_COUNT)
   {
      g_SpiFblChannelCfg[Channel].pSrcBuffer  = SrcDataBufferPtr;
      g_SpiFblChannelCfg[Channel].pDestBuffer = DesDataBufferPtr;
      g_SpiFblChannelCfg[Channel].length      = Length;

      result = E_OK;
   }

   return result;
}

/***********************************************************************************************************************
 *  Spi_SyncTransmit
 **********************************************************************************************************************/
/*! \brief           This function substitutes the "real" MSR Spi_SyncTransmit() function in order to allow to use the
 *                   FBL SPI driver instead of the MSR SPI / DIO driver(s)
 *  \param[in]       Sequence Specifies which sequence should be transmitted
 **********************************************************************************************************************/
/* PRQA S 6010, 6030, 6080 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */
FUNC(Std_ReturnType, SPI_CODE) Spi_SyncTransmit( Spi_SequenceType Sequence )
{
   Std_ReturnType result;
   SPI_FBL_TRANSFER_PARAM_TYPE transferParam;

   vuintx index;

   tSpiFblJobCount      currentJob;
   tSpiFblChannelCount  currentChannel;
   Spi_ChannelType      currentChannelNumber;
   Spi_NumberOfDataType lengthInBytes;

   P2CONST(tSpiFblChannelCfg     , AUTOMATIC, SPI_APPL_DATA) currentCfgChannelPtr;
   P2CONST(tSpiFblChannel        , AUTOMATIC, SPI_APPL_DATA) currentChannelPtr;
   P2CONST(tSpiFblJob            , AUTOMATIC, SPI_APPL_DATA) currentJobPtr;
   P2CONST(tSpiFblSequence       , AUTOMATIC, SPI_APPL_DATA) currentSequencePtr;
   P2CONST(SPI_FBL_INTERFACE_TYPE, AUTOMATIC, SPI_APPL_DATA) localFunctionPtr;

# if ( SPI_FBL_MAX_NUMBER_OF_HANDLES > 1u)
   SPI_FBL_HARDWARE_CHANNEL_TYPE SPI_FBL_HANDLE;
# endif /* SPI_FBL_MAX_NUMBER_OF_HANDLES > 1u */


   /* Initialize variables */
   result = E_NOT_OK;

   /* Check if sequence is valid and initialize SPI driver */
   if (Sequence < SPI_FBL_SEQUENCE_COUNT)
   {
      currentSequencePtr = &g_SpiFblSequenceCfg[Sequence];
      localFunctionPtr = currentSequencePtr->functionList->functionPtr;
# if ( SPI_FBL_MAX_NUMBER_OF_HANDLES > 1u)
      SPI_FBL_HANDLE = currentSequencePtr->functionList->hardwareChannel;
# endif /* SPI_FBL_MAX_NUMBER_OF_HANDLES > 1u */
      if (localFunctionPtr->initFct(SPI_FBL_HANDLE_PARAM_ONLY) == SPI_FBL_RESULT_OK)
      {
         result = E_OK;

         transferParam.pollingFct = currentSequencePtr->pollingFct;

         /* Iterate over all jobs */
         for (currentJob = 0u; currentJob < currentSequencePtr->jobCount; currentJob++)
         {
            assertFblUser(currentJob < SPI_FBL_JOB_COUNT, kFblSysAssertParameterOutOfRange);

            currentJobPtr = &currentSequencePtr->jobs[currentJob];

            /* Iterate over all channels of the jobs */
            transferParam.chipSelectMode = SPI_FBL_CHIP_SELECT_MODE_SET;
            for (currentChannel = 0u; currentChannel < currentJobPtr->channelCount; currentChannel++)
            {
               assertFblUser(currentChannel < SPI_FBL_CHANNEL_COUNT, kFblSysAssertParameterOutOfRange);

               /* Last job in sequence? Deactivate chip select */
               if (currentChannel == (currentJobPtr->channelCount - 1u))
               {
                  if (currentChannel == 0u)
                  {
                     transferParam.chipSelectMode = SPI_FBL_CHIP_SELECT_MODE_BOTH;
                  }
                  else
                  {
                     transferParam.chipSelectMode = SPI_FBL_CHIP_SELECT_MODE_CLR;
                  }
               }
               currentChannelPtr = &currentJobPtr->channels[currentChannel];

               /* Check if channel is correct */
               assertFblUser(currentChannelPtr->channelNumber < SPI_FBL_MAX_CHANNEL_COUNT, kFblSysAssertParameterOutOfRange);

               currentChannelNumber = currentChannelPtr->channelNumber;
               currentCfgChannelPtr = &g_SpiFblChannelCfg[currentChannelNumber];

               /* Bootloader SPI driver wants the length in bytes (not words) */
               lengthInBytes = currentCfgChannelPtr->length * (Spi_NumberOfDataType)currentChannelPtr->dataWidth;

               /* Check for sufficient buffer */
               assertFblUser(lengthInBytes < SPI_FBL_MAX_BUFFER_SIZE, kFblSysAssertParameterOutOfRange);

               /* Copy source buffer to local buffer in order to do byte swapping if necessary */
               for (index = 0u; index < lengthInBytes; index++)
               {
                  g_SendBuffer[currentChannelNumber][index] = ((const uint8 *)currentCfgChannelPtr->pSrcBuffer)[index];
                  if (   ((index & SPI_FBL_WATCHDOG_CYCLE_COUNT) == 0u)
                      && (currentSequencePtr->pollingFct != (SPI_FBL_POLLING_FUNCTION_TYPE)0u))
                  {
                     currentSequencePtr->pollingFct();
                  }
               }

#if defined( SPI_FBL_ENABLE_BYTE_SWAP )
               SpiFblSwapBytes(currentChannelPtr->dataWidth, g_SendBuffer[currentChannelNumber], lengthInBytes);
#endif /* SPI_FBL_ENABLE_BYTE_SWAP */

               transferParam.pTransmitBuffer = g_SendBuffer[currentChannelNumber];
               transferParam.pReceiveBuffer = currentCfgChannelPtr->pDestBuffer;
               transferParam.transferLength = lengthInBytes;

               if (localFunctionPtr->transferSyncFct(SPI_FBL_HANDLE_PARAM_FIRST &transferParam) != SPI_FBL_RESULT_OK)
               {
                  result = E_NOT_OK;
                  break;
               }

#if defined( SPI_FBL_ENABLE_BYTE_SWAP )
               SpiFblSwapBytes(currentChannelPtr->dataWidth, currentCfgChannelPtr->pDestBuffer, lengthInBytes);
#endif /* SPI_FBL_ENABLE_BYTE_SWAP */

               /* Do not modify chip select for next job */
               transferParam.chipSelectMode = SPI_FBL_CHIP_SELECT_MODE_NONE;
            }

            if (result != E_OK)
            {
               break;
            }

            /* Transmit completed, notify driver if necessary */
            if (currentJobPtr->jobEndNotification != NULL_PTR)
            {
               currentJobPtr->jobEndNotification();
            }
         }
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Spi_AsyncTransmit
 **********************************************************************************************************************/
/*! \brief           This function substitutes the "real" MSR Spi_AsyncTransmit() function in order to allow to use the
 *                   FBL SPI driver instead of the MSR SPI / DIO driver(s)
 *  \param[in]       Sequence Specifies which sequence should be transmitted
 **********************************************************************************************************************/
FUNC(Std_ReturnType, SPI_CODE) Spi_AsyncTransmit( Spi_SequenceType Sequence )
{
   Std_ReturnType result;

   result = Spi_SyncTransmit(Sequence);

   if (result == E_OK)
   {
      /* Transmit completed, notify driver if necessary */
      if (g_SpiFblSequenceCfg[Sequence].sequenceEndNotification != NULL_PTR)
      {
         g_SpiFblSequenceCfg[Sequence].sequenceEndNotification();
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  Spi_MainFunction_Handling
 **********************************************************************************************************************/
/*! \brief           This function substitutes the "real" MSR Spi_MainFunction_Handling() function in order to allow to use the
 *                   FBL SPI driver instead of the MSR SPI / DIO driver(s)
 **********************************************************************************************************************/
FUNC(void, SPI_CODE) Spi_MainFunction_Handling( void )
{
   /* No MainFunction needed, as all data is synchronously transmitted in Spi_AsyncTransmit */
}

/***********************************************************************************************************************
 *  Spi_GetSequenceResult
 **********************************************************************************************************************/
/*! \brief           This function substitutes the "real" MSR Spi_GetSequenceResult() function in order to allow to use the
 *                   FBL SPI driver instead of the MSR SPI / DIO driver(s)
 *  \param[in]       Sequence Specifies which sequence should be transmitted
 **********************************************************************************************************************/
FUNC(Spi_SeqResultType, SPI_CODE) Spi_GetSequenceResult( Spi_SequenceType Sequence )
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)Sequence;
#endif

   /* Spi_GetSequenceResult always return OK, as all data is synchronously transmitted in Spi_AsyncTransmit */
   return SPI_SEQ_OK;
}

#define SPIFBL_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

#if ( SPI_FBL_NUMBER_OF_CHANNELS < 1u )
# error "SPI_FBL.H: Invalid configuration of SPI_FBL_NUMBER_OF_CHANNELS (must be >= 1)"
#endif /* ( SPI_FBL_NUMBER_OF_CHANNELS < 1u ) */

/**********************************************************************************************************************
 *  MISRA
 *********************************************************************************************************************/

/* Module specific MISRA deviations:

   MD_SpiFbl_0314_MemCpy:
      Reason:     The copy function have a void pointer as a function parameter.
      Risk:       No risk, because the underlying vuint8 pointer type is known.
      Prevention: No prevention necessary.

   MD_SpiFbl_0686:
      Reason:     Array has fewer initializers than its declared size.
      Risk:       Code could access uninitialized fields, which may contain random data (depending on how the compiler
                  fills these fields).
      Prevention: Array accesses have to be verified by code inspection.

   MD_SpiFbl_2895:
      Reason: Calculation is required to determine the highest value of the currently used datatype.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_SpiFbl_3218:
      Reason:     Configuration constants/tables/buffers are kept at a central location for a better overview and
                  maintenance.
      Risk:       Scope is larger than required (whole file instead of one function). Some other function could access
                  the variable.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: SPI_FBL.C
 **********************************************************************************************************************/
