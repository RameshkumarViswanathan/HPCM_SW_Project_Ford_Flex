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
 *              File: Fbl_Lbt.c
 *   Generation Time: 2024-02-08 18:57:54
 *           Project: DemoBm - Version 1
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
V_MEMROM0 V_MEMROM1 tLogicalBlockTable V_MEMROM2 FblLogicalBlockTable =
{
  FBL_LBT_MAGIC_FLAG, 
  {
    0x02u
  } /*  Disposability bit field (mandatory/optional)  */ , 
  2u, 
  {
    {
      0u, 
      FALSE /*  Optional  */ , 
      0x00000001u /*  Block Index  */ , 
      kBlockTypeSbl /*  Block Type  */ , 
      0x7003B400u /*  Block Start Address  */ , 
      0x00000C01u /*  Block Length (End Address = 0x7003C000u)  */ , 
      0x7003B5FFu /*  Header Address  */ , 
      0x7003B400u /*  BM Header Address  */ , 
      (tExportFct)SecM_Default /*  Output Verification  */ 
    } /*  Name 'SBL'  */ , 
    {
      1u, 
      TRUE /*  Mandatory  */ , 
      0x00000000u /*  Block Index  */ , 
      kBlockTypeApplication /*  Block Type  */ , 
      0x802A4000u /*  Block Start Address  */ , 
      0x0005C000u /*  Block Length (End Address = 0x802FFFFFu)  */ , 
      0x802FFFD0u /*  Header Address  */ , 
      0x802E4B00u /*  BM Header Address  */ , 
      (tExportFct)SecM_Default /*  Output Verification  */ 
    } /*  Name 'Appl'  */ 
  }
};

