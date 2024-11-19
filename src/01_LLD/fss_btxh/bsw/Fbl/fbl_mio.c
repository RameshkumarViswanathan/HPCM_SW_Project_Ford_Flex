/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        Memory Driver wrapper functions
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2021 by Vector Informatik GmbH.                                                  All rights reserved.
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
 *  03.00.00   2018-09-11  visrie  ESCAN00100690    General rework
 *  03.01.00   2019-03-07  visrie  ESCAN00102398    Added support to get the memory device
 *                                 ESCAN00102414    Initialize memDriverReady for single memory device configuration
 *  03.01.01   2019-06-03  vistbe  ESCAN00102476    Address range not correctly evaluated
 *  04.00.00   2019-12-04  visrie  FBL-456          Added support for flash synchronization
 *                                                  Removed single memory driver handling
 *  04.00.01   2020-11-25  visjre  ESCAN00108003    Added missing hooks to MemDriver_DeinitSync
 *  04.00.02   2021-03-31  visrie  ESCAN00108287    Wrong VerifySync will be called
 **********************************************************************************************************************/
#define FBL_MIO_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLMIO_VERSION != 0x0400u ) || \
    ( FBLMIO_RELEASE_VERSION != 0x02u )
# error "Error in FBL_MIO.C: Source and header file are inconsistent!"
#endif

#if ( FBLMIO_VERSION != _FBLMIO_VERSION ) || \
    ( FBLMIO_RELEASE_VERSION != _FBLMIO_RELEASE_VERSION )
# error "Error in FBL_MIO.C: Source and V_VER.H are inconsistent!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if !defined( FBL_MIO_ENABLE_SEGMENT_CACHING ) || \
    !defined( FBL_MIO_DISABLE_SEGMENT_CACHING )
# define FBL_MIO_ENABLE_SEGMENT_CACHING
#endif

/***********************************************************************************************************************
 *  GLOBALS
 **********************************************************************************************************************/

#define FBLMIO_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */


/** Device active status, if currently an erase or programming is active. It contains either the state "Idle" or the
  * device driver number that is active
  */
V_MEMRAM0 V_MEMRAM1      vuint8              V_MEMRAM2      memDrvDeviceActive;
V_MEMRAM0 V_MEMRAM1      vuint8              V_MEMRAM2      memDrvFunctionActive;

/** Memory segment handle */
V_MEMRAM0 V_MEMRAM1      vsint16             V_MEMRAM2      memSegment;

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

/* FblMemSegmentNrGet caching */
#if defined( FBL_MIO_ENABLE_SEGMENT_CACHING )
V_MEMRAM0 static V_MEMRAM1 vsint16              V_MEMRAM2      cachedSegment;
V_MEMRAM0 static V_MEMRAM1 tFlashBlock          V_MEMRAM2      cachedBlock;
#endif
V_MEMRAM0 static V_MEMRAM1 vsint16              V_MEMRAM2      nextValidSegment;

#define FBLMIO_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBLMIO_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  MemDriver_InitPowerOn
 **********************************************************************************************************************/
/*! \brief       Initializes the MIO module
 **********************************************************************************************************************/
void MemDriver_InitPowerOn( void )
{

   memDrvDeviceActive   = kMioDeviceIdle;
   memDrvFunctionActive = kMioFunctionNone;

   memSegment = -1;
   nextValidSegment = -1;

#if defined( FBL_MIO_ENABLE_SEGMENT_CACHING )
   /* FblMemSegmentNrGet caching - initialize cache with a valid entry */
   cachedSegment = 0;
   cachedBlock.begin = FlashBlock[0].begin;
   cachedBlock.end = FlashBlock[0].end;
#endif
}

/***********************************************************************************************************************
 *  FblMemSegmentNrGet
 **********************************************************************************************************************/
/*! \brief       Get the number of the corresponding flash block for the given address
 *  \return      Index of flash block; -1, if not found
 *  \param[in]   address
 **********************************************************************************************************************/
vsint16 FblMemSegmentNrGet( tFblAddress address )
{
   vsint16 segment;
   tFblAddress localAddress;

   /* Initialize variables */
   localAddress = address;

#if defined( FBL_MIO_ENABLE_SEGMENT_CACHING )
   /* Check address against cached range */
   if (   ( localAddress >= cachedBlock.begin )
       && ( localAddress <= cachedBlock.end )
      )
   {
      /* Range matches, finish processing and return cached segment */
      segment = cachedSegment;
   }
   else
   {
      /* Search matching flash block */
      nextValidSegment = 0;
      while (nextValidSegment < (vsint16)kNrOfFlashBlock)
      {
         /* Reduced number of watchdog trigger calls */
         if (((vuint8)nextValidSegment & (vuint8)0x0Fu) == (vuint8)0x00u)
         {
            (void)FblRealTimeSupport();
         }

         /* Found first potential match */
         if (FlashBlock[nextValidSegment].end >= localAddress)
         {
            break;
         }
         /* Prepare next cycle */
         nextValidSegment++;
      }

      /* Valid match found */
      if (nextValidSegment < (vsint16)kNrOfFlashBlock)
      {
         if (localAddress >= FlashBlock[nextValidSegment].begin)
         {
            /* Address lies within block => valid segment */
            segment = nextValidSegment;

            /* Cache current match */
            cachedBlock.begin = FlashBlock[segment].begin;
            cachedBlock.end = FlashBlock[segment].end;
         }
         else
         {
            /* Address lies in front of block => gap detected */
            segment = -1;

            /* Cache current gap */
            if (nextValidSegment <= 0)
            {
               /* First block, gap starts at beginning of address space */
               cachedBlock.begin = 0x00u;
            }
            else
            {
               /* Gap starts after end of previous block */
               cachedBlock.begin = FlashBlock[nextValidSegment - 1].end + 1u;
            }
            /* Gap ends in front of current segment */
            cachedBlock.end = FlashBlock[nextValidSegment].begin - 1u;
         }
      }
      else
      {
         /* Address lies behind last block => gap detected */
         segment = -1;

         /* Cache current gap
          * Gap starts after end of previous block */
         cachedBlock.begin = FlashBlock[kNrOfFlashBlock - 1u].end + 1u; /* PRQA S 2843, 2853 */ /* MD_FblMio_2843, MD_FblMio_2853 */
         /* Gap ends at end of address space */
         cachedBlock.end = (tFblAddress)(-1); /* PRQA S 2895 */ /* MD_FblMio_2895 */
      }

      /* Cache current segment for next request */
      cachedSegment = segment;
   }
#else
   /* Loop downward through the blocks */
   segment = (vsint16)(kNrOfFlashBlock - 1u);

   while (segment >= 0)
   {
      /* Check if address matches the current block */
      if (  (localAddress >= FlashBlock[segment].begin)
         && (localAddress <= FlashBlock[segment].end) )
      {
         nextValidSegment = segment;
         /* Yes, matches. End loop */
         break;
      }

      /* Reduced number of watchdog trigger calls */
      if (((vuint8)segment & (vuint8)0x0Fu) == (vuint8)0x00u)
      {
         (void)FblRealTimeSupport();
      }

      segment--;
   }
#endif

   return segment;
}

/***********************************************************************************************************************
 *  FblMemGetDeviceByAddr
 **********************************************************************************************************************/
/*! \brief       Retrieves the memory device of a given address.
 *  \param[in]   address Address.
 *  \param[out]  device Memory device driver index.
 *  \return      Possible return values:
 *               - kFblOk if device is valid
 *               - kFblFailed otherwise
 **********************************************************************************************************************/
tFblResult FblMemGetDeviceByAddr(tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * device)
{
   tFblResult result;
   vsint16 localMemSegment;

   result = kFblFailed;

   localMemSegment = FblMemSegmentNrGet(address);
   if (localMemSegment >= 0)
   {
      *device = FlashBlock[localMemSegment].device;
      result = kFblOk;
   }

   return result;
}

/***********************************************************************************************************************
 *  FblMemGetDeviceByRange
 **********************************************************************************************************************/
/*! \brief       Retrieves the memory device of a given range.
 *  \details     Checks if all memory devices inside the given range correspond to the same memory device.
 *  \param[in]   address Start address of the range.
 *  \param[in]   length Length of the range.
 *  \param[out]  device Memory device driver index.
 *  \return      Possible return values:
 *               - kFblOk if device is valid and all memory devices are the same
 *               - kFblFailed otherwise
 **********************************************************************************************************************/
tFblResult FblMemGetDeviceByRange(tFblAddress address, tFblLength length, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * device)
{
   tFblResult result;
   vuint8 localDevice;
   vsint16 localMemSegmentStart;
   vsint16 localMemSegmentEnd;
   vsint16 localMemSegment;

   result = kFblFailed;

   if (length == 0u)
   {
      /* For a given length of 0 only the start address is checked */
      result = FblMemGetDeviceByAddr(address, device);
   }
   else
   {
      localMemSegmentStart = FblMemSegmentNrGet(address);
      localMemSegmentEnd = FblMemSegmentNrGet(address + (length - 1u));

      if (   (localMemSegmentStart >= 0)
          && (localMemSegmentEnd >= 0)
         )
      {
         result = kFblOk;
         /* Get first memory device */
         localDevice = FlashBlock[localMemSegmentStart].device;

         /* Iterate now over all remaining flash blocks included in the range and check if the memory device changes */
         for (localMemSegment = localMemSegmentStart + 1; localMemSegment <= localMemSegmentEnd; localMemSegment++)
         {
            if (localDevice != FlashBlock[localMemSegment].device)
            {
               /* Failure, memory device is different */
               result = kFblFailed;
               break;
            }
         }
      }

      if (result == kFblOk)
      {
         *device = localDevice;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  FblReadProm
 **********************************************************************************************************************/
/*! \brief       Read from ROM memory.
 *  \details     Reads data from ROM memory using the read function supplied with the flash driver.
 *  \param[in]   address Memory address to read out (logical address).
 *  \param[out]  buffer Target buffer.
 *  \param[in]   length Number of bytes to be read.
 *  \return      Number of actually copied bytes.
 **********************************************************************************************************************/
tFblLength FblReadProm(tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * buffer, tFblLength length)
{
   tFblLength actualReadCount;    /* Actual read bytes */

   (void)FblReadPromExt(address, buffer, length , &actualReadCount);

   return actualReadCount;
}

/***********************************************************************************************************************
 *  FblReadPromExt
 **********************************************************************************************************************/
/*! \brief       Read from ROM memory.
 *  \details     Reads data from ROM memory using the read function supplied with the flash driver.
 *  \param[in]   address Memory address to read out (logical address).
 *  \param[out]  buffer Target buffer.
 *  \param[in]   length Number of bytes to be read.
 *  \param[out]  actualReadCount Number of actually copied bytes
 *  \return      Erro code of the read function
 *                IO_E_OK: All bytes could be read
 *                IO_E_ERASED: Read data is erased
 *                IO_E_NOT_OK: Could not read all data
 **********************************************************************************************************************/
IO_ErrorType FblReadPromExt(tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * buffer, tFblLength length,
   V_MEMRAM1 tFblLength V_MEMRAM2 V_MEMRAM3 * actualReadCount)
{
   IO_ErrorType result;
   tFblAddress localAddress;
   V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * localBuffer;
   tFblLength localLength;
   tFblLength localActualReadCount;    /* Actual read bytes */
   tFblLength currentReadCount;
   vsint16    nextMemSegment;

   /* Initialize variables */
   localAddress = address;
   localLength = length;
   localBuffer = buffer;
   localActualReadCount = 0u;
   result = IO_E_OK;

   (void)FblRealTimeSupport();

   /* Find start segment */
   memSegment = FblMemSegmentNrGet(localAddress);

   if (memSegment < 0)
   {
      /* Start address does not lie within a valid memory segment
       * Search first segment which overlaps with requested range
       * This allows segmented reading of memory areas which include gaps
       * (e.g. CRC calculation or signature verification) */

      /* nextValidSegment contains first segment behind gap */
      if (nextValidSegment < (vsint16)kNrOfFlashBlock)
      {
         /* Gap detection */
         if (
               (localAddress < FlashBlock[nextValidSegment].begin) &&
               (localLength > (FlashBlock[nextValidSegment].begin - localAddress))
            )
         {
            /* Found first segment which overlaps requested range */
            memSegment = nextValidSegment;

            /* Remove gap from read length */
            localLength -= (FlashBlock[memSegment].begin - localAddress);
            /* Adapt start address to segment start */
            localAddress = FlashBlock[memSegment].begin;
         }
      }
   }

   /* Initialize next memory segment index */
   nextMemSegment = memSegment;

   /* Start segment found, read segment */
   if (memSegment >= 0)
   {
      while (localLength > 0u)
      {
         /* Check if read range crosses Flash block boundary */
         if ((localAddress + (localLength - 1u)) > FlashBlock[memSegment].end)
         {
            currentReadCount = (FlashBlock[memSegment].end - localAddress) + 1u;

            nextMemSegment++;

            if (nextMemSegment < (vsint16)kNrOfFlashBlock)
            {
               localLength = ((FlashBlock[nextMemSegment].begin - localAddress) < localLength)
                  ? (localLength - (FlashBlock[nextMemSegment].begin - localAddress)) : 0u;
            }
            else
            /* Flash block index overflow, exit loop */
            {
               localLength = 0u;
            }
         }
         else
         {
            currentReadCount = localLength;
            localLength = 0u;
         }

         switch (MemDriver_RReadSync(localBuffer, currentReadCount, localAddress))
         {
            case IO_E_ERASED:
            {
               /* Overwrite global result to IO_E_ERASED */
               result = IO_E_ERASED;
            }
            case IO_E_OK: /* PRQA S 2003 */ /* MD_FblMio_2003 */
            {
               memSegment = nextMemSegment;
               localBuffer = (vuint8 *)&localBuffer[currentReadCount];
               localAddress = FlashBlock[memSegment].begin;
               localActualReadCount += currentReadCount;
               break;
            }
            default:
            {
               /* In case of error quit loop */
               localLength = 0u;
               result = IO_E_NOT_OK;
               break;
            }
         }

         (void)FblRealTimeSupport();
      }
   }
   else
   {
      localActualReadCount = 0u;
   }

   *actualReadCount = localActualReadCount;

   return result;
}

/***********************************************************************************************************************
 *  MemDriver_Begin
 **********************************************************************************************************************/
/*! \brief      Performs operations before the memory driver is called.
 *  \param[in]  device        Memory device, which is going to be used.
 *  \param[in]  function      Function of the memory device, which is going to be called.
 *  \param[in]  hookEnabled   Specifies if the hook function ApplFblPreMemDriver should be called.
 **********************************************************************************************************************/
void V_API_NEAR MemDriver_Begin(vuint8 device, vuint8 function, boolean hookEnabled)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
# if defined( FBL_MIO_ENABLE_HOOKS )
# else
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)hookEnabled;
# endif /* FBL_MIO_ENABLE_HOOKS */
#endif

   memDrvDeviceActive = device;
   memDrvFunctionActive = function;

#if defined( FBL_MIO_ENABLE_HOOKS )
   /* Check if the hook function should be called */
   if (hookEnabled == TRUE)
   {
      ApplFblPreMemDriver(memDrvDeviceActive, memDrvFunctionActive);
   }
#endif /* FBL_MIO_ENABLE_HOOKS */
}

/***********************************************************************************************************************
 *  MemDriver_End
 **********************************************************************************************************************/
/*! \brief      Performs operation after the memory driver has been returned.
 *  \param[in]  hookEnabled   Specifies if the hook function ApplFblPostMemDriver should be called.
 **********************************************************************************************************************/
void V_API_NEAR MemDriver_End(boolean hookEnabled)
{
#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
# if defined( FBL_MIO_ENABLE_HOOKS )
# else
   /* Parameters not used: avoid compiler warning */ /* PRQA S 3112 1 */ /* MD_MSR_DummyStmt */
   (void)hookEnabled;
# endif /* FBL_MIO_ENABLE_HOOKS */
#endif

#if defined( FBL_MIO_ENABLE_HOOKS )
   /* Check if the hook function should be called */
   if (hookEnabled == TRUE)
   {
      ApplFblPostMemDriver(memDrvDeviceActive, memDrvFunctionActive);
   }
#endif /* FBL_MIO_ENABLE_HOOKS */

   memDrvDeviceActive = kMioDeviceIdle;
   memDrvFunctionActive = kMioFunctionNone;
}

/***********************************************************************************************************************
 *  MemDriver_InitSync
 **********************************************************************************************************************/
/*! \brief      Initialize all memory drivers.
 *  \pre        Memory drivers have to be present (e.g. copied to RAM).
 *  \param[in]  address Parameter to be passed to HIS interface flash driver.
 *  \return     Reports if all memory drivers have been initialized successfully.
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR MemDriver_InitSync( void * address )
{
   vuint8 i;
   IO_ErrorType result = IO_E_OK;
   IO_ErrorType rc;

   {
      for (i = 0u; i < kNrOfMemDrv; i++)
      {
         MemDriver_InitBegin(i);
         rc = (*memDrvLst[i].init)(address);
         MemDriver_InitEnd(i);

         if (rc != IO_E_OK)
         {
            result = rc;
            break;
         }
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  MemDriver_DeinitSync
 **********************************************************************************************************************/
/*! \brief      Deinitialize all memory drivers.
 *  \pre        Memory drivers have to be present (e.g. copied to RAM).
 *  \param[in]  address Parameter to be passed to HIS interface flash driver.
 *  \return     The return code shows the success of the deinitialization.
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR MemDriver_DeinitSync( void * address )
{
   vuint8 i;
   IO_ErrorType result = IO_E_OK;

   for (i = 0u; i < kNrOfMemDrv; i++)
   {
      MemDriver_DeinitBegin(i);
      result = (*memDrvLst[i].deinit)(address);
      MemDriver_DeinitEnd(i);
      if (result != IO_E_OK)
      {
         break;
      }
   }
   return result;
}

/***********************************************************************************************************************
 *  MemDriver_RReadSync
 **********************************************************************************************************************/
/*! \brief      Read data from memory
 *  \details    This function calls the write function of the internal flash memory.
 *  \pre        Internal flash driver is initialized, memory to be written is erased.
 *  \param[in]  buf Pointer to read target buffer. The buffer size must be at least readLength Bytes
 *  \param[in]  len Size of data to be read
 *  \param[in]  addr address of data to be read
 *  \return     Reports write success or error code.
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR MemDriver_RReadSync(IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr)
{
   IO_ErrorType result;

   result = IO_E_NOT_OK;

   if ((memSegment >= 0) && (memSegment < (vsint16)kNrOfFlashBlock))
   {
      MemDriver_RReadBegin(FlashBlock[memSegment].device);
      result = (*memDrvLst[FlashBlock[memSegment].device].read)((buf), (len), (addr));  /* PRQA S 2843 */ /* MD_FblMio_2843 */
      MemDriver_RReadEnd(FlashBlock[memSegment].device);
   }

   return result;
}

/***********************************************************************************************************************
 *  MemDriver_RWriteSync
 **********************************************************************************************************************/
/*! \brief      Write data into memory
 *  \details    This function selects the memory driver used to program a memory device and
 *              calls the write function of this driver.
 *  \pre        All drivers are initialized, memory to be written is erased (flash memory).
 *  \param[in]  buf Pointer to input data buffer.
 *  \param[in]  len Data length. Has to be aligned to a multiple of the smallest writable data segment.
 *  \param[in]  addr Write target address. Has to be aligned to a write segment start address.
 *  \return     Reports write success or error code.
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR MemDriver_RWriteSync(IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr)
{
   IO_ErrorType result;

   result = IO_E_NOT_OK;

   if ((memSegment >= 0) && (memSegment < (vsint16)kNrOfFlashBlock))
   {
      MemDriver_RWriteBegin(FlashBlock[memSegment].device);
      result = (*memDrvLst[FlashBlock[memSegment].device].write)((buf), (len), (addr));
      MemDriver_RWriteEnd(FlashBlock[memSegment].device);
   }

   return result;
}

/***********************************************************************************************************************
 *  MemDriver_REraseSync
 **********************************************************************************************************************/
/*! \brief      Erase area in memory
 *  \details    This function erases an area in memory.
 *  \pre        All drivers are initialized.
 *  \param[in]  len Length of memory to be erased. The length has to be aligned to the length of one or
 *              more erasable sectors of the used memories.
 *  \param[in]  addr Start address of erase area. The start address has to be aligned to the start address
 *              of an erasable area.
 *  \return     Reports erase success or error code.
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR MemDriver_REraseSync(IO_SizeType len, IO_PositionType addr)
{
   IO_ErrorType result;

   result = IO_E_NOT_OK;

   if ((memSegment >= 0) && (memSegment < (vsint16)kNrOfFlashBlock))
   {
      MemDriver_REraseBegin(FlashBlock[memSegment].device);
      result = (*memDrvLst[FlashBlock[memSegment].device].erase) ((len), (addr));
      MemDriver_REraseEnd(FlashBlock[memSegment].device);
   }

   return result;
}


#define FBLMIO_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblMio_2003:
      Reason:     Preceding case does not end with an break statement.
      Risk:       No risk.
      Prevention: No prevention required.

    MD_FblMio_2843:
       Reason:     Array can be accessed out of bounds.
       Risk:       No risk, as it is assured that the index is never out of bounds.
       Prevention: No prevention required.

    MD_FblMio_2853:
       Reason:     Value of this expression could sometimes be too large to be represented in this type.
       Risk:       No risk, as it is assured that the value is never too big.
       Prevention: No prevention required.

   MD_FblMio_2895:
      Reason:     A negative value is casted to an unsigned type.
      Risk:       No risk, as the correct conversion is guaranteed by the C standard.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_MIO.C
 **********************************************************************************************************************/

