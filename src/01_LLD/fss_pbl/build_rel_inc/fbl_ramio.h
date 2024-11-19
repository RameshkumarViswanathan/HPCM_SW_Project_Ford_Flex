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
 *  01.01.00   2015-11-27  visase  ESCAN00086297    No changes
 *  01.02.00   2016-06-17  visci   ESCAN00090364    No changes
 *  01.02.01   2018-03-22  visdkl  ESCAN00098872    No changes
 *  01.02.02   2021-03-08  vishor  ESCAN00108134    Added/adapted MemMap sections
 *  01.03.00   2022-03-17  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#ifndef FBL_RAMIO_H
#define FBL_RAMIO_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblWrapperFlash_XRamHis CQComponent : Implementation */
#define FBLWRAPPERFLASH_XRAMHIS_VERSION           0x0103u
#define FBLWRAPPERFLASH_XRAMHIS_RELEASE_VERSION   0x00u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define IO_DRIVERMODUS    SYNCRON
#define IO_DEVICETYPE     RANDOM

#ifndef V_API_NEAR
# define V_API_NEAR
#endif

#define RAM_DRIVER_VERSION_MAJOR       ((FBLWRAPPERFLASH_XRAMHIS_VERSION >> 8u) & 0xFFu)
#define RAM_DRIVER_VERSION_MINOR       ((FBLWRAPPERFLASH_XRAMHIS_VERSION >> 0u) & 0xFFu)
#define RAM_DRIVER_VERSION_PATCH       FBLWRAPPERFLASH_XRAMHIS_RELEASE_VERSION

/* RAM driver properties */
#if defined( RAM_DRV_SEGMENT_SIZE )
# define RAM_SEGMENT_SIZE              RAM_DRV_SEGMENT_SIZE    /**< Smallest writeable segment */
#endif
#if defined( RAM_DRV_DELETED )
# define FBL_RAM_DELETED               RAM_DRV_DELETED         /**< Erase value of RAM memory  */
#endif

#define RamDriver_GetVersionOfDriver() ((IO_U32)(RAM_DRIVER_VERSION_MAJOR << 16u) | \
                                        (IO_U32)(RAM_DRIVER_VERSION_MINOR <<  8u) | \
                                                 RAM_DRIVER_VERSION_PATCH)

/***********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FBLRAMIO_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

IO_ErrorType V_API_NEAR RamDriver_InitSync( void * address);
IO_ErrorType V_API_NEAR RamDriver_DeinitSync( void * address );
IO_ErrorType V_API_NEAR RamDriver_RReadSync( IO_MemPtrType readBuffer, IO_SizeType readLength, IO_PositionType readAddress );
IO_ErrorType V_API_NEAR RamDriver_RWriteSync( IO_MemPtrType writeBuffer, IO_SizeType writeLength, IO_PositionType writeAddress );
IO_ErrorType V_API_NEAR RamDriver_REraseSync( IO_SizeType eraseLength, IO_PositionType eraseAddress );

#define FBLRAMIO_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* FBL_RAMIO_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_RAMIO.H
 **********************************************************************************************************************/
