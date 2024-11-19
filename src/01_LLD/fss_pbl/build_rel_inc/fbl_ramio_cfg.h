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
 *  01.02.00   2016-06-17  visci   ESCAN00090364    Added support for flashCode use
 *  01.02.01   2018-03-22  visdkl  ESCAN00098872    Added missing include
 *  01.02.02   2021-03-08  vishor  ESCAN00108134    Compiler error: # error "Feature needs to be always enabled."
 *  01.03.00   2022-03-17  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#ifndef FBL_RAMIO_CFG_H
#define FBL_RAMIO_CFG_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_def.h"
#include "fbl_wd.h"
#include "Fbl_Fbt.h"
#include "fbl_mio.h"
#include "fbl_flio.h"

/***********************************************************************************************************************
 *  CONFIGURATION DEFINES
 **********************************************************************************************************************/

#if defined( IO_DRIVERMODUS )
# undef IO_DRIVERMODUS                   /* PRQA S 0841 */ /* MD_FblRamio_0841 */
#endif /* IO_DRIVERMODUS */
#if defined( IO_DEVICETYPE )
# undef IO_DEVICETYPE                    /* PRQA S 0841 */ /* MD_FblRamio_0841 */
#endif /* IO_DEVICETYPE */

/** Specify external buffer to keep RAM data
 * Comment out in case the internal buffer (g_RamData) shall be used */
#define RAM_DRV_EXT_BUFFER                flashCode

/** Optional: Base address of accessible RAM area (comment out if internal buffer is located via MemMap.h) */
/* #define RAM_DRV_BASE_ADDRESS_OVERRIDE     0 */

/** RAM buffer size (size of accessible RAM area; note: use FLASH_SIZE in case of flashCode buffer) */
#define RAM_DRV_BUFFER_SIZE               FLASH_SIZE

/** Segment size (especially relevant in case memory is ECC protected) */
#define RAM_DRV_SEGMENT_SIZE              1u

/** Deleted value of RAM memory
 *  Comment out if RamDriver_REraseSync() shall not initialize the memory with pattern) */
#define RAM_DRV_DELETED                   0xFFu

/** Polling interval for RAM access functions (comment out to remove polling function calls, shall be 2^n) */
#define RAM_DRV_POLLING_INTERVAL          0x40u

/** Specify polling function called during long lasting loops if required on target platform */
#define RAM_DRV_POLLING_FUNCTION()        (void)FblLookForWatchdog()

/** Define if RamDriver_InitSync() shall initialize memory with zeros (DISABLE for flashCode use case!) */
#define RAM_DRV_DISABLE_MEM_INIT

/* Module specific MISRA deviations:

   MD_FblRamio_0841:
      Reason: Depending on the configuration of this component and other included components, these definitions might
              already be used. The undefinition might be needed.
      Risk: Potential undefinition if file solely included or compile errors if #undef is not supported.
      Prevention: Only include the fbl_ramio_cfg.h file via fbl_ramio_inc.h to make sure the definitions are correct
                  via the subsequent inclusion of fbl_ramio.h. Remove #undef if not supported.
*/

#endif /* FBL_RAMIO_CFG_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_RAMIO_CFG.H
 **********************************************************************************************************************/
