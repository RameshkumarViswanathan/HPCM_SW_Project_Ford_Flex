/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                 Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                 All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  LICENSE
 *  -------------------------------------------------------------------------------------------------------------------
 *            Module: Fbl
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: Fbl_Fbt.c
 *   Generation Time: 2023-11-02 09:28:24
 *           Project: DemoFbl - Version 1
 *          Delivery: CBD2300515_D00
 *      Tool Version: DaVinci Configurator Classic (beta) 5.25.55 SP6
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 ! BETA VERSION                                                                                                       !
 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 ! This version of DaVinci Configurator Classic and/or the related Basic Software Package is BETA software.               !
 ! BETA Software is basically operable, but not sufficiently tested, verified and/or qualified for use in series      !
 ! production and/or in vehicles operating on public or non-public roads.                                             !
 ! In particular, without limitation, BETA Software may cause unpredictable ECU behavior, may not provide all         !
 ! functions necessary for use in series production and/or may not comply with quality requirements which are         !
 ! necessary according to the state of the art. BETA Software must not be used in series production.                  !
 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
**********************************************************************************************************************/


/* Includes **********************************************************************************************************/
#include "fbl_inc.h"

/* Global data *******************************************************************************************************/
V_MEMROM0 V_MEMROM1_FAR tFlashBlock V_MEMROM2_FAR FlashBlock[] =
{
  {
    0x70000000u /*  3KB RAMBlock0 - sbl  */ , 
    0x70000BFFu, 
    kMioDeviceRam
  }, 
  {
    0x80290000u /*  PF0 PS0: 16KB Block1 - TechM_LLD/VITESCO_BSW  */ , 
    0x802A7FFFu, 
    kMioDeviceFlash
  }, 
  {
    0x802A8000u /*  PF0 PS0: 32KB Block2 -TechM_LLD/VITESCO_BSW  */ , 
    0x802AFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x802B0000u /*  PF0 PS0: 64KB Block3 - TechM_LLD/VITESCO_BSW  */ , 
    0x802BFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x802C0000u /*  PF0 PS0: 256KB Block4- TechM_LLD/VITESCO_BSW  */ , 
    0x802FFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x80500000u /*  PF1 PS0 512KB Block5-unused due to PBL Start address  */ , 
    0x8051FFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x80520000u /*  PF1 PS0: 512KB Block6-unused due to PBL Start address  */ , 
    0x8053FFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x80540000u /*  PF1 PS0: 512KB Block7-unused due to PBL Start address  */ , 
    0x8055FFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x80560000u /*  PF1 PS0: 512KB Block8-unused due to PBL Start address  */ , 
    0x8057FFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x80580000u /*  PF1 PS0: 512KB Block9-unused due to PBL Start address  */ , 
    0x8059FFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x805A0000u /*  PF1 PS2: 128KB Block10-PBL/FBL  */ , 
    0x805BFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x805C0000u /*  PF1 PS2: 128KB Block11-PBL/FBL  */ , 
    0x805DFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x805E0000u /*  PF1 PS2: 64KB Block12-PBL/FBL  */ , 
    0x805EFFFFu, 
    kMioDeviceFlash
  }, 
  {
    0x805F0000u /*  PF1 PS2: 32KB Block13-unused due to BM start address gap  */ , 
    0x805F7FFFu, 
    kMioDeviceFlash
  }, 
  {
    0x805F8000u /*  PF1 PS2: 32KB Block14-BM/BTXH  */ , 
    0x805FFFFFu, 
    kMioDeviceFlash
  }
};
V_MEMROM0 V_MEMROM1_FAR vuint8 V_MEMROM2_FAR kNrOfFlashBlock = sizeof(FlashBlock) / sizeof(FlashBlock[0]);

V_MEMROM0 V_MEMROM1_FAR tMemDrv V_MEMROM2_FAR memDrvLst[] =
{
  {
    FlashDriver_InitSync, 
    FlashDriver_DeinitSync, 
    FlashDriver_REraseSync, 
    FlashDriver_RWriteSync, 
    FlashDriver_RReadSync, 
    0x0020u /*  Segment Size  */ , 
    0x00u /*  Erased Value  */ , 
    FALSE /*  Init Hook  */ , 
    FALSE /*  Deinit Hook  */ , 
    FALSE /*  Erase Hook  */ , 
    FALSE /*  Write Hook  */ , 
    FALSE /*  Read Hook  */ 
  }, 
  {
    RamDriver_InitSync, 
    RamDriver_DeinitSync, 
    RamDriver_REraseSync, 
    RamDriver_RWriteSync, 
    RamDriver_RReadSync, 
    0x0001u /*  Segment Size  */ , 
    0xFFu /*  Erased Value  */ , 
    FALSE /*  Init Hook  */ , 
    FALSE /*  Deinit Hook  */ , 
    FALSE /*  Erase Hook  */ , 
    FALSE /*  Write Hook  */ , 
    FALSE /*  Read Hook  */ 
  }
};
V_MEMROM0 V_MEMROM1_FAR vuint8 V_MEMROM2_FAR kNrOfMemDrv = sizeof(memDrvLst) / sizeof(memDrvLst[0]);

/* Try to check consistency between memory device driver
 * header files (e.g. flashdrv.h) and Cfg5 configuration */
#if defined( FLASH_SEGMENT_SIZE )
# if ( FLASH_SEGMENT_SIZE != 32u )
#  error "Consistency check failed! Adjust Cfg5 configuration!"
# endif
#endif

#if defined( FBL_FLASH_DELETED )
# if ( FBL_FLASH_DELETED != 0x00u )
#  error "Consistency check failed! Adjust Cfg5 configuration!"
# endif
#endif

#if defined( RAM_SEGMENT_SIZE )
# if ( RAM_SEGMENT_SIZE != 1u )
#  error "Consistency check failed! Adjust Cfg5 configuration!"
# endif
#endif

#if defined( FBL_RAM_DELETED )
# if ( FBL_RAM_DELETED != 0xFFu )
#  error "Consistency check failed! Adjust Cfg5 configuration!"
# endif
#endif



