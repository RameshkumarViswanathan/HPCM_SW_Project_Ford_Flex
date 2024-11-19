/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief     External flash driver wrapper
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
 *  03.00.00   2015-03-05  visci   ESCAN00080708    Added support for dual-quad mode
 *                                 ESCAN00081454    Adapted implementation for SPI driver interface version 2
 *  03.01.00   2015-10-16  visci   ESCAN00085819    No changes
 *  05.00.00   2016-08-31  visci   ESCAN00091688    Adapted implementation for SPI driver interface version 3 and
 *                                                  extended dynamic device support
 *  05.01.00   2017-05-22  visrie  ESCAN00079839    Added support of downloadable driver
 *  05.02.00   2017-08-31  visrie  ESCAN00096466    No changes
 *  05.03.00   2017-11-15  visrie  ESCAN00097371    No changes
 *  05.03.01   2018-01-16  visrie  ESCAN00097824    No changes
 *  05.03.02   2019-10-07  vistmo  ESCAN00104517    No changes
 *  05.03.03   2021-03-13  vistbe  ESCAN00106172    ReadSync API function uses wrong Flash driver located in RAM
 *                                 FBL-3234         Added/adapted MemMap sections
 **********************************************************************************************************************/

#ifndef __FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_H__
#define __FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_H__

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblWrapperFlash_XStm25pxxEHis CQComponent : Implementation */
#define FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_VERSION            0x0503u
#define FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_RELEASE_VERSION    0x03u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* May be defined via GENy preconfiguration to override this standard value. */
# if !defined( FLASH_SIZE_XD2 )
#  define FLASH_SIZE_XD2    0x1000u
# endif

#define IO_DRIVERMODUS_XD2   SYNCRON
#define IO_DEVICETYPE_XD2    RANDOM

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

# define FBLFLIO_FLASHCODE_XD2_START_SEC_VAR
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
/* Location of flash algorithm in RAM */
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2 flashCode_XD2[FLASH_SIZE_XD2];
# define FBLFLIO_FLASHCODE_XD2_STOP_SEC_VAR
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

/**********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 *********************************************************************************************************************/
#define FBLFLIO_XD2_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */

IO_ErrorType V_API_NEAR Flash_XD2Driver_InitPowerOnSync( void );
IO_ErrorType V_API_NEAR Flash_XD2Driver_InitSync( void * );
IO_ErrorType V_API_NEAR Flash_XD2Driver_DeinitSync( void * );
IO_ErrorType V_API_NEAR Flash_XD2Driver_RReadSync( IO_MemPtrType, IO_SizeType, IO_PositionType );
IO_ErrorType V_API_NEAR Flash_XD2Driver_RWriteSync( IO_MemPtrType, IO_SizeType, IO_PositionType );
IO_ErrorType V_API_NEAR Flash_XD2Driver_REraseSync( IO_SizeType, IO_PositionType );
IO_U32 V_API_NEAR Flash_XD2Driver_GetVersionOfDriver( void );

#define FBLFLIO_XD2_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_19.1 */
#endif /* __FBLWRAPPERFLASH_XD2_XSTM25PXXEHIS_H__ */

/***********************************************************************************************************************
 *  END OF FILE: FBL_FLIO_XD2.H
 **********************************************************************************************************************/
