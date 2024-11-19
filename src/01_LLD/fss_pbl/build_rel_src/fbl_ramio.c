/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         RAM driver functions
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
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2013-10-23  visjhg  -                Initial release
 *  01.01.00   2015-11-27  visase  ESCAN00086297    Allow to override the RAM buffer base address via configuration
 *  01.02.00   2016-06-17  visci   ESCAN00090364    Added support for flashCode use case
 *  01.02.01   2018-03-22  visdkl  ESCAN00098872    No changes
 *  01.02.02   2021-03-08  vishor  ESCAN00108134    Added/adapted MemMap sections
 *  01.03.00   2022-03-17  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#define FBL_RAMIO_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_ramio_inc.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLWRAPPERFLASH_XRAMHIS_VERSION != 0x0103u ) || \
    ( FBLWRAPPERFLASH_XRAMHIS_RELEASE_VERSION != 0x00u )
# error "Error in FBL_RAMIO.C: Source and header file are inconsistent!"
#endif

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

/* Check if buffer size is correctly defined */
#if defined( RAM_DRV_BUFFER_SIZE ) && ( RAM_DRV_BUFFER_SIZE > 0u )
#else
# error "Error in FBL_RAMIO.C: Missing or wrong configuration of RAM_DRV_BUFFER_SIZE."
#endif

/* Check if segment size and buffer size match each other */
#if defined( RAM_DRV_SEGMENT_SIZE )
# if ( RAM_DRV_SEGMENT_SIZE > 1u )
#  if ( 0u != (RAM_DRV_BUFFER_SIZE & (RAM_DRV_SEGMENT_SIZE - 1u)) )
#   error "Error in FBL_RAMIO.C: Inconsistent configuration of RAM_DRV_SEGMENT_SIZE and RAM_DRV_BUFFER_SIZE."
#  endif
# endif
#endif

/* Check if segment size has reasonable / supported value */
#if defined( RAM_DRV_SEGMENT_SIZE )
# if ( RAM_DRV_SEGMENT_SIZE == 1u ) || ( RAM_DRV_SEGMENT_SIZE == 2u ) || ( RAM_DRV_SEGMENT_SIZE == 4u )
# else
#  error "Error in FBL_RAMIO.C: Wrong configuration of RAM_DRV_SEGMENT_SIZE."
# endif
#endif

#if defined( RAM_DRV_SEGMENT_SIZE ) && \
    defined( RAM_DRV_BASE_ADDRESS_OVERRIDE )
/* Check alignment of base address */
# if ( 0u != (RAM_DRV_BASE_ADDRESS_OVERRIDE & (RAM_DRV_SEGMENT_SIZE - 1u)) )
#  error "Error in FBL_RAMIO.C: Inconsistent configuration of RAM_DRV_SEGMENT_SIZE and RAM_DRV_BASE_ADDRESS_OVERRIDE."
# endif
#endif

#if defined( RAM_DRV_POLLING_INTERVAL )
# if ( 0u == RAM_DRV_POLLING_INTERVAL ) || \
     ( 0u != (RAM_DRV_POLLING_INTERVAL & (RAM_DRV_POLLING_INTERVAL - 1u)) )
#  error "Error in FBL_RAMIO.C: Wrong configuration of RAM_DRV_POLLING_INTERVAL (shall be 2^n)."
# endif
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if defined( RAM_DRV_EXT_BUFFER )
# define RAM_DRV_BUFFER          RAM_DRV_EXT_BUFFER
#else
# define RAM_DRV_BUFFER          g_RamData
#endif

#if defined( RAM_DRV_BASE_ADDRESS_OVERRIDE )
/** Allow to override the base address via fbl_ramio_cfg.h, e.g. if RAM_DRV_BUFFER shall be located at an arbitrary address */
# define RAM_DRV_BASE_ADDRESS    RAM_DRV_BASE_ADDRESS_OVERRIDE
#else
/** Base address of accessible RAM area */
# define RAM_DRV_BASE_ADDRESS    ((IO_PositionType)RAM_DRV_BUFFER)
#endif

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#if defined( RAM_DRV_EXT_BUFFER )
#else
# define FBLRAMIO_START_SEC_VAR
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/** Global data buffer that can be accessed via RamDriver interface */
V_MEMRAM0 static V_MEMRAM1 IO_U8 V_MEMRAM2 g_RamData[RAM_DRV_BUFFER_SIZE];

# define FBLRAMIO_STOP_SEC_VAR
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* RAM_DRV_EXT_BUFFER */

#define FBLRAMIO_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/
static IO_ErrorType V_API_NEAR RamDriver_GetOffset( IO_SizeType length, IO_PositionType address,
   V_MEMRAM1 IO_SizeType V_MEMRAM2 V_MEMRAM3 * pOffset );

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  RamDriver_GetOffset
 **********************************************************************************************************************/
/*! \brief       Get the local buffer offset
 *  \param[in]   length The number of bytes to be modified
 *  \param[in]   address The start address
 *  \param[out]  offset The returned offset
 *  \return      IO_E_OK if succeeded, IO_E_NOT_OK otherwise
 **********************************************************************************************************************/
static IO_ErrorType V_API_NEAR RamDriver_GetOffset( IO_SizeType length, IO_PositionType address,
   V_MEMRAM1 IO_SizeType V_MEMRAM2 V_MEMRAM3 * pOffset )
{
   IO_ErrorType result;
   IO_SizeType offset;

   result = IO_E_NOT_OK;

   /* Avoid compiler warning (comparison against 0 always true) */
#if defined( RAM_DRV_BASE_ADDRESS_OVERRIDE )
# if ( 0u != RAM_DRV_BASE_ADDRESS )
   if (address >= RAM_DRV_BASE_ADDRESS)                                         /* PRQA S 0306 */ /* MD_FblRamio_0306 */
# endif
#endif
   {
      offset = address - RAM_DRV_BASE_ADDRESS;                                  /* PRQA S 0306 */ /* MD_FblRamio_0306 */

      if ( (length <= RAM_DRV_BUFFER_SIZE)
        && (offset <= (RAM_DRV_BUFFER_SIZE - length)) )
      {
         *pOffset = offset;
         result = IO_E_OK;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  RamDriver_InitSync
 **********************************************************************************************************************/
/*! \brief       Initialize the RAM algorithm
 *  \param[in]   address Unused parameter for HIS interface compliance
 *  \return      The return code shows the success of the initialization
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
IO_ErrorType V_API_NEAR RamDriver_InitSync( void * address )
{
   IO_ErrorType result;
#if defined( RAM_DRV_ENABLE_MEM_INIT )
   IO_U32 i;
#endif

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)address;
#endif

   result = IO_E_OK;

#if defined( RAM_DRV_BASE_ADDRESS_OVERRIDE )
   /* Alignment check executed by preprocessor (see configuration checks section) */
#else
   /* PRQA S 2992, 2996, 0306 1 */ /* MD_FblRamio_2992_2996, MD_FblRamio_2992_2996, MD_FblRamio_0306 */
   if (0u != (RAM_DRV_BASE_ADDRESS & (RAM_DRV_SEGMENT_SIZE - 1u)))
   {
      /* RAM buffer is not aligned with configured segment size */
      result = IO_E_NOT_OK;
   }
#endif /* RAM_DRV_BASE_ADDRESS_OVERRIDE */

#if defined( RAM_DRV_ENABLE_MEM_INIT )
   if (IO_E_OK == result) /* PRQA S 2991, 2995 */ /* MD_FblRamio_2991_2995 */
   {
      for (i = 0u; i < (RAM_DRV_BUFFER_SIZE / RAM_DRV_SEGMENT_SIZE); i++)
      {
# if ( RAM_DRV_SEGMENT_SIZE == 1u )
         ((IO_U8 *)RAM_DRV_BUFFER)[i] = 0u;
# elif ( RAM_DRV_SEGMENT_SIZE == 2u )
         ((IO_U16 *)RAM_DRV_BUFFER)[i] = 0u; /* PRQA S 0310, 3305 */ /* MD_FblRamio_0310_3305 */
# elif ( RAM_DRV_SEGMENT_SIZE == 4u )
         ((IO_U32 *)RAM_DRV_BUFFER)[i] = 0u; /* PRQA S 0310, 3305 */ /* MD_FblRamio_0310_3305 */
# endif

# if defined( RAM_DRV_POLLING_INTERVAL )
         /* PRQA S 2985, 2991, 2995 1 */ /* MD_FblRamio_2985, MD_FblRamio_2991_2995, MD_FblRamio_2991_2995 */
         if (0u == (i & (RAM_DRV_POLLING_INTERVAL - 1u)))
         {
            RAM_DRV_POLLING_FUNCTION();
         }
# endif /* RAM_DRV_POLLING_INTERVAL */
      }
   }
#endif /* RAM_DRV_ENABLE_MEM_INIT */

   return result;
}

/***********************************************************************************************************************
 *  RamDriver_DeinitSync
 **********************************************************************************************************************/
/*! \brief       Deinitialize the RAM algorithm
 *  \param[in]   address Unused parameter for HIS interface compliance
 *  \return      The return code shows the success of the deinitialization
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR RamDriver_DeinitSync( void * address )
{
   IO_ErrorType result;

   /* Clean-up memory */
   result = RamDriver_InitSync(address);

   return result;
}

/***********************************************************************************************************************
 *  RamDriver_RWriteSync
 **********************************************************************************************************************/
/*! \brief       Program RAM memory
 *  \param[in]   writeBuffer Write data buffer
 *  \param[in]   writeLength Number of bytes to be written
 *  \param[in]   writeAddress The write address
 *  \return      Status of RAM programming
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_MSR_Rule8.13 */
IO_ErrorType V_API_NEAR RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress ) 
{
   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(writeLength, writeAddress, &offset);

   if (IO_E_OK == result)
   {
      for (i = 0u; i < writeLength; i++)
      {
#if defined( RAM_DRV_POLLING_INTERVAL )
         /* PRQA S 2985, 2991, 2995 1 */ /* MD_FblRamio_2985, MD_FblRamio_2991_2995, MD_FblRamio_2991_2995 */
         if (0u == (i & (RAM_DRV_POLLING_INTERVAL - 1u)))
         {
            RAM_DRV_POLLING_FUNCTION();
         }
#endif /* RAM_DRV_POLLING_INTERVAL */

         RAM_DRV_BUFFER[offset] = writeBuffer[i];
         offset++;
      }
   }

   return result;
}

/***********************************************************************************************************************
 *  RamDriver_REraseSync
 **********************************************************************************************************************/
/*! \brief       Erase RAM memory
 *  \pre         RAM driver has to be initialized
 *  \param[in]   eraseLength Number of bytes to be erased
 *  \param[in]   eraseAddress The erase address
 *  \return      Status of RAM erase
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress )
{
#if defined( RAM_DRV_DELETED )
   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(eraseLength, eraseAddress, &offset);

   if (IO_E_OK == result)
   {
      for (i = 0u; i < eraseLength; i++)
      {
# if defined( RAM_DRV_POLLING_INTERVAL )
         /* PRQA S 2985, 2991, 2995 1 */ /* MD_FblRamio_2985, MD_FblRamio_2991_2995, MD_FblRamio_2991_2995 */
         if (0u == (i & (RAM_DRV_POLLING_INTERVAL - 1u)))
         {
            RAM_DRV_POLLING_FUNCTION();
         }
# endif /* RAM_DRV_POLLING_INTERVAL */

         RAM_DRV_BUFFER[offset] = RAM_DRV_DELETED;
         offset++;
      }
   }

   return result;
#else /* ! RAM_DRV_DELETED */
# if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)eraseLength;
   (void)eraseAddress;
# endif /* V_ENABLE_USE_DUMMY_STATEMENT */

   return IO_E_OK;
#endif /* ! RAM_DRV_DELETED */
}

/***********************************************************************************************************************
 *  RamDriver_RReadSync
 **********************************************************************************************************************/
/*! \brief          Read RAM memory
 *  \pre            RAM driver has to be initialized
 *  \param[out]     readBuffer Read data buffer
 *  \param[in]      readLength Number of bytes to be read
 *  \param[in]      readAddress The read address
 *  \return         Status of RAM read
 **********************************************************************************************************************/
IO_ErrorType V_API_NEAR RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress )
{
   IO_ErrorType result;
   IO_SizeType offset;
   IO_SizeType i;

   result = RamDriver_GetOffset(readLength, readAddress, &offset);

   if (IO_E_OK == result)
   {
      for (i = 0u; i < readLength; i++)
      {
#if defined( RAM_DRV_POLLING_INTERVAL )
         /* PRQA S 2985, 2991, 2995 1 */ /* MD_FblRamio_2985, MD_FblRamio_2991_2995, MD_FblRamio_2991_2995 */
         if (0u == (i & (RAM_DRV_POLLING_INTERVAL - 1u)))
         {
            RAM_DRV_POLLING_FUNCTION();
         }
#endif /* RAM_DRV_POLLING_INTERVAL */

         readBuffer[i] = RAM_DRV_BUFFER[offset];
         offset++;
      }
   }

   return result;
}


#define FBLRAMIO_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/* Module specific MISRA deviations:

   MD_FblRamio_0306:
      Reason: Address conversion between integer values and pointers is required to allow for hardware independent
              configuration and address range checks.
      Risk: The size of integer required to hold the result of a pointer cast is implementation defined.
      Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                  specific basis.

   MD_FblRamio_0310_3305:
      Reason: Pointer is casted as different memory access sizes are utilized due to performance reasons.
      Risk: Wrong pointer access is performed.
      Prevention: Code inspection and test of the different variants in the component test.

   MD_FblRamio_2985:
      Reason: Depending on configuration, RAM_DRV_POLLING_INTERVAL might be zero and thus 
              i & (RAM_DRV_POLLING_INTERVAL - 1u) might be redundant.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblRamio_2991_2995:
      Reason: Depending on configuration, the controlling expression might always be true. This code structure maintains
              readbillity.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblRamio_2992_2996:
      Reason: Depending on configuration, the controlling expression might always be false. This code structure
              maintains readbillity.
      Risk: No identifiable risk.
      Prevention: No prevention required.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_RAMIO.C
 **********************************************************************************************************************/
