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
 *                                 ESCAN00102414    No changes
 *  03.01.01   2019-06-03  vistbe  ESCAN00102476    No changes
 *  04.00.00   2019-12-04  visrie  FBL-456          Added support for flash synchronization
 *                                                  Removed single memory driver handling
 *  04.00.01   2020-11-25  visjre  ESCAN00108003    No changes
 *  04.00.02   2021-03-31  visrie  ESCAN00108287    No changes
 **********************************************************************************************************************/

#ifndef FBL_MIO_H
#define FBL_MIO_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblMio CQComponent : Implementation */
#define FBLMIO_VERSION              0x0400u
#define FBLMIO_RELEASE_VERSION      0x02u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/
/* PRQA S 3453 EOF */ /* MD_MSR_FctLikeMacro */

/** Device active state */
#define kMioDeviceIdle              0xFFu

/* Compatibility defines */
#define MemDriver_InitBegin(a)               MemDriver_Begin((a), kMioFunctionInit, memDrvLst[(a)].initHook)
#define MemDriver_InitEnd(a)                 MemDriver_End(memDrvLst[(a)].initHook)
#define MemDriver_REraseBegin(a)             MemDriver_Begin((a), kMioFunctionErase, memDrvLst[(a)].eraseHook)
#define MemDriver_REraseEnd(a)               MemDriver_End(memDrvLst[(a)].eraseHook)
#define MemDriver_RReadBegin(a)              MemDriver_Begin((a), kMioFunctionRead, memDrvLst[(a)].readHook)
#define MemDriver_RReadEnd(a)                MemDriver_End(memDrvLst[(a)].readHook)
#define MemDriver_RWriteBegin(a)             MemDriver_Begin((a), kMioFunctionWrite, memDrvLst[(a)].writeHook)
#define MemDriver_RWriteEnd(a)               MemDriver_End(memDrvLst[(a)].writeHook)
#define MemDriver_VerifyBegin(a)             MemDriver_Begin((a), kMioFunctionVerify, memDrvLst[(a)].verifyHook)
#define MemDriver_VerifyEnd(a)               MemDriver_End(memDrvLst[(a)].verifyHook)
#define MemDriver_DeinitBegin(a)             MemDriver_Begin((a), kMioFunctionDeinit, memDrvLst[(a)].deinitHook)
#define MemDriver_DeinitEnd(a)               MemDriver_End(memDrvLst[(a)].deinitHook)

#define MemDriver_SegmentSize                (memDrvLst[FlashBlock[memSegment].device].segmentSize)
#if defined( FBL_MEMDRV_SEGMENT_SIZE )
# if ( FLASH_SEGMENT_SIZE > FBL_MEMDRV_SEGMENT_SIZE )
#  define FBL_MAX_SEGMENT_SIZE_MIO           FLASH_SEGMENT_SIZE
# else
#  define FBL_MAX_SEGMENT_SIZE_MIO           FBL_MEMDRV_SEGMENT_SIZE
# endif
#else
# define FBL_MAX_SEGMENT_SIZE_MIO            FLASH_SEGMENT_SIZE
#endif /* FBL_MEMDRV_SEGMENT_SIZE */

#if defined( FBL_MAX_SEGMENT_SIZE )
# if ( FBL_MAX_SEGMENT_SIZE_MIO > FBL_MAX_SEGMENT_SIZE )
#  error "Define FBL_MAX_SEGMENT_SIZE from external only with values larger than determined through FblMio."
# endif
#else
# define FBL_MAX_SEGMENT_SIZE FBL_MAX_SEGMENT_SIZE_MIO
#endif /* FBL_MAX_SEGMENT_SIZE */

/* Defines to indicate, which function is active */
#define kMioFunctionNone            0u
#define kMioFunctionInit            1u
#define kMioFunctionDeinit          2u
#define kMioFunctionWrite           3u
#define kMioFunctionErase           4u
#define kMioFunctionVerify          5u
#define kMioFunctionRead            6u


/***********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FBLMIO_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

void MemDriver_InitPowerOn( void );

vsint16 FblMemSegmentNrGet( tFblAddress address );
tFblResult FblMemGetDeviceByAddr( tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * device );
tFblResult FblMemGetDeviceByRange( tFblAddress address, tFblLength length, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * device );
tFblLength FblReadProm( tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * buffer, tFblLength length );
IO_ErrorType FblReadPromExt( tFblAddress address, V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * buffer, tFblLength length,
   V_MEMRAM1 tFblLength V_MEMRAM2 V_MEMRAM3 * actualReadCount );

/* MemDriver general interface */
IO_ErrorType V_API_NEAR MemDriver_InitSync( void * address );
IO_ErrorType V_API_NEAR MemDriver_DeinitSync( void * address );
IO_ErrorType V_API_NEAR MemDriver_RReadSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType V_API_NEAR MemDriver_RWriteSync( IO_MemPtrType buf, IO_SizeType len, IO_PositionType addr );
IO_ErrorType V_API_NEAR MemDriver_REraseSync( IO_SizeType len, IO_PositionType addr );

void V_API_NEAR MemDriver_Begin( vuint8 device, vuint8 function, boolean hookEnabled );
void V_API_NEAR MemDriver_End( boolean hookEnabled );

#define FBLMIO_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL DATA PROTOTYPES
 **********************************************************************************************************************/

#define FBLMIO_START_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

V_MEMRAM0 extern V_MEMRAM1      vuint8              V_MEMRAM2      memDrvDeviceActive;
V_MEMRAM0 extern V_MEMRAM1      vuint8              V_MEMRAM2      memDrvFunctionActive;


/** Memory segment handle */
V_MEMRAM0 extern V_MEMRAM1      vsint16             V_MEMRAM2      memSegment;

#define FBLMIO_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/


#if !defined( FBL_ENABLE_MULTIPLE_MEM_DEVICES )
# error "Feature needs to be always enabled."
#endif /* FBL_ENABLE_MULTIPLE_MEM_DEVICES */

#endif /* FBL_MIO_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_MIO.H
 **********************************************************************************************************************/
