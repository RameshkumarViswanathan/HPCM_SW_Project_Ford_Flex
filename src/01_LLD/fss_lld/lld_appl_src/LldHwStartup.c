/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *  Copyright (c) 2021 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -----------------------------------------------------------------------------------------------------------------*/
/** \file  File:  LldHwStartup.c Reused from BrsHwStartup.c
 *      Project:  Vector Basic Runtime System
 *       Module:  BrsHw for platform Infineon Aurix/AurixPlus
 *     Template:  This file is reviewed according to Brs_Template@Implementation[1.02.00]
 *
 *  \brief Description:  This file contains the assembler part of the BRS StartUpCode.
 *
 *  \attention Please note:
 *    The demo and example programs only show special aspects of the software. With regard to the fact
 *    that these programs are meant for demonstration purposes only, Vector Informatik liability shall be
 *    expressly excluded in cases of ordinary negligence, to the extent admissible by law or statute.
 *********************************************************************************************************************/

/**********************************************************************************************************************
 *  REVISION HISTORY
 *  -------------------------------------------------------------------------------------------------------------------
 *  Refer to BrsHw.h.
 *********************************************************************************************************************/

/**********************************************************************************************************************
 *  EXAMPLE CODE ONLY
 *  -------------------------------------------------------------------------------------------------------------------
 *  This Example Code is only intended for illustrating an example of a possible BSW integration and BSW configuration.
 *  The Example Code has not passed any quality control measures and may be incomplete. The Example Code is neither
 *  intended nor qualified for use in series production. The Example Code as well as any of its modifications and/or
 *  implementations must be tested with diligent care and must comply with all quality requirements which are necessary
 *  according to the state of the art before their use.
 *********************************************************************************************************************/

#define _BRSHWSTARTUP_C_

/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/
#include "BrsHw.h"
#include "BrsMain.h"
#include "vLinkGen_Lcfg.h"
#include "vBrsCfg.h"
#include "startup.h"
#include "Os.h"
#include "IfxScu_reg.h"
#include "IfxCpu_reg.h"
#include "IfxScu_bf.h"
#include "IfxCpu_bf.h"
#include "Std_Types.h"
#define BRS_CPU_CORE_AMOUNT 3
#if defined BRS_DERIVATIVE_GROUP_TC2xx || defined BRS_DERIVATIVE_GROUP_TC3xx
# include "BrsHwStartup_TC2xx_TC3xx.h"
#else
# include "BrsHwStartup_TC4xx.h"
#endif

/**********************************************************************************************************************
 *  CONFIGURATION CHECK
 *********************************************************************************************************************/
#if defined (BRS_COMP_TASKING) || \
    defined (BRS_COMP_GCCHIGHTEC) || \
    defined (BRS_COMP_GHS)     || \
    defined (BRS_COMP_DIABDATA)

#else
  #error "Unknown compiler specified!"
#endif

#if (VLINKGEN_CFG_MAJOR_VERSION != 2u)
  #error "This StartUpCode is dependent to the vLinkGen version! vLinkGen major version does not fit!"
#else
# if (VLINKGEN_CFG_MINOR_VERSION < 0u)
  #error "This StartUpCode is dependent to the vLinkGen version! Your vLinkGen minor version is too old!"
# endif
#endif

/**********************************************************************************************************************
 * Compiler abstraction
 *********************************************************************************************************************/
#if defined (BRS_COMP_TASKING)
  /**********************************************************************************/
  /* external symbols of context saving areas */
  /**********************************************************************************/
  extern int __CSA_BEGIN_CPU0_[][16];  /* context save area core 0 begin */
  extern int __CSA_END_CPU0_[][16];  /* context save area core 0 end   */
  extern int __CSA_BEGIN_CPU1_[][16];  /* context save area core 1 begin */
  extern int __CSA_END_CPU1_[][16];  /* context save area core 1 end   */
  extern int __CSA_BEGIN_CPU2_[][16];  /* context save area core 2 begin */
  extern int __CSA_END_CPU2_[][16];  /* context save area core 2 end   */
  extern int __CSA_BEGIN_CPU3_[][16];  /* context save area core 3 begin */
  extern int __CSA_END_CPU3_[][16];  /* context save area core 3 end   */
  extern int __CSA_BEGIN_CPU4_[][16];  /* context save area core 4 begin */
  extern int __CSA_END_CPU4_[][16];  /* context save area core 4 end   */
  extern int __CSA_BEGIN_CPU5_[][16];  /* context save area core 5 begin */
  extern int __CSA_END_CPU5_[][16];  /* context save area core 5 end   */
  #define BRS_CSA_STARTADDRESS_CORE0  __CSA_BEGIN_CPU0_
  #define BRS_CSA_STARTADDRESS_CORE1  __CSA_BEGIN_CPU1_
  #define BRS_CSA_STARTADDRESS_CORE2  __CSA_BEGIN_CPU2_
  #define BRS_CSA_STARTADDRESS_CORE3  __CSA_BEGIN_CPU3_
  #define BRS_CSA_STARTADDRESS_CORE4  __CSA_BEGIN_CPU4_
  #define BRS_CSA_STARTADDRESS_CORE5  __CSA_BEGIN_CPU5_
  #define BRS_CSA_STARTADDRESS_CORECS  __CSA_BEGIN_CPUCS_
  #define BRS_CSA_ENDADDRESS_CORE0    __CSA_END_CPU0_
  #define BRS_CSA_ENDADDRESS_CORE1    __CSA_END_CPU1_
  #define BRS_CSA_ENDADDRESS_CORE2    __CSA_END_CPU2_
  #define BRS_CSA_ENDADDRESS_CORE3    __CSA_END_CPU3_
  #define BRS_CSA_ENDADDRESS_CORE4    __CSA_END_CPU4_
  #define BRS_CSA_ENDADDRESS_CORE5    __CSA_END_CPU5_

  /**********************************************************************************/
  /* compiler generated stack symbols used during startup */
  /* BRS_STARTUPSTACK_CORE<x> must be the end address */
  /**********************************************************************************/
  extern __far void _STACK_C0_START[];
  extern __far void __STARTUPSTACK_CORE1[];
  extern __far void __STARTUPSTACK_CORE2[];
  extern __far void __STARTUPSTACK_CORE3[];
  extern __far void __STARTUPSTACK_CORE4[];
  extern __far void __STARTUPSTACK_CORE5[];
  #define BRS_STARTUPSTACK_CORE0  _STACK_C0_START
  #define BRS_STARTUPSTACK_CORE1  __STARTUPSTACK_CORE1
  #define BRS_STARTUPSTACK_CORE2  __STARTUPSTACK_CORE2
  #define BRS_STARTUPSTACK_CORE3  __STARTUPSTACK_CORE3
  #define BRS_STARTUPSTACK_CORE4  __STARTUPSTACK_CORE4
  #define BRS_STARTUPSTACK_CORE5  __STARTUPSTACK_CORE5

  /**********************************************************************************/
  /* external symbols of trap vectors */
  /**********************************************************************************/
#if defined (BRS_ENABLE_FBL_SUPPORT)
  extern uint32 _brsExcVect_START[];
  #define BRS_TRAPTAB_CORE0  _brsExcVect_START
  #define BRS_TRAPTAB_CORE1  _brsExcVect_START
  #define BRS_TRAPTAB_CORE2  _brsExcVect_START

#else
  extern __far void _OS_EXCVEC_CORE0_CODE_START[];
  extern __far void _OS_EXCVEC_CORE1_CODE_START[];
  extern __far void _OS_EXCVEC_CORE2_CODE_START[];
  extern __far void _OS_EXCVEC_CORE3_CODE_START[];
  extern __far void _OS_EXCVEC_CORE4_CODE_START[];
  extern __far void _OS_EXCVEC_CORE5_CODE_START[];
  #define BRS_TRAPTAB_CORE0  _OS_EXCVEC_CORE0_CODE_START
  #define BRS_TRAPTAB_CORE1  _OS_EXCVEC_CORE1_CODE_START
  #define BRS_TRAPTAB_CORE2  _OS_EXCVEC_CORE2_CODE_START
  #define BRS_TRAPTAB_CORE3  _OS_EXCVEC_CORE3_CODE_START
  #define BRS_TRAPTAB_CORE4  _OS_EXCVEC_CORE4_CODE_START
  #define BRS_TRAPTAB_CORE5  _OS_EXCVEC_CORE5_CODE_START
#endif /*else BRS_ENABLE_FBL_SUPPORT*/

  /**********************************************************************************/
  /* external symbols of interrupt vectors */
  /**********************************************************************************/
  extern __far void _OS_INTVEC_CORE0_CODE_START[];
  extern __far void _OS_INTVEC_CORE1_CODE_START[];
  extern __far void _OS_INTVEC_CORE2_CODE_START[];
  extern __far void _OS_INTVEC_CORE3_CODE_START[];
  extern __far void _OS_INTVEC_CORE4_CODE_START[];
  extern __far void _OS_INTVEC_CORE5_CODE_START[];
  #define BRS_INTVECTTAB_CORE0  _OS_INTVEC_CORE0_CODE_START
  #define BRS_INTVECTTAB_CORE1  _OS_INTVEC_CORE1_CODE_START
  #define BRS_INTVECTTAB_CORE2  _OS_INTVEC_CORE2_CODE_START
  #define BRS_INTVECTTAB_CORE3  _OS_INTVEC_CORE3_CODE_START
  #define BRS_INTVECTTAB_CORE4  _OS_INTVEC_CORE4_CODE_START
  #define BRS_INTVECTTAB_CORE5  _OS_INTVEC_CORE5_CODE_START

#else
  /**********************************************************************************/
  /* external symbols of context saving areas */
  /**********************************************************************************/
  extern uint32 __CSA_BEGIN_CPU0_;
  extern uint32 __CSA_END_CPU0_;
  extern uint32 __CSA_BEGIN_CPU1_;
  extern uint32 __CSA_END_CPU1_;
  extern uint32 __CSA_BEGIN_CPU2_;
  extern uint32 __CSA_END_CPU2_;
  extern uint32 __CSA_BEGIN_CPU3_;
  extern uint32 __CSA_END_CPU3_;
  extern uint32 __CSA_BEGIN_CPU4_;
  extern uint32 __CSA_END_CPU4_;
  extern uint32 __CSA_BEGIN_CPU5_;
  extern uint32 __CSA_END_CPU5_;
  #define BRS_CSA_STARTADDRESS_CORE0  &__CSA_BEGIN_CPU0_
  #define BRS_CSA_STARTADDRESS_CORE1  &__CSA_BEGIN_CPU1_
  #define BRS_CSA_STARTADDRESS_CORE2  &__CSA_BEGIN_CPU2_
  #define BRS_CSA_STARTADDRESS_CORE3  &__CSA_BEGIN_CPU3_
  #define BRS_CSA_STARTADDRESS_CORE4  &__CSA_BEGIN_CPU4_
  #define BRS_CSA_STARTADDRESS_CORE5  &__CSA_BEGIN_CPU5_
  #define BRS_CSA_ENDADDRESS_CORE0    &__CSA_END_CPU0_
  #define BRS_CSA_ENDADDRESS_CORE1    &__CSA_END_CPU1_
  #define BRS_CSA_ENDADDRESS_CORE2    &__CSA_END_CPU2_
  #define BRS_CSA_ENDADDRESS_CORE3    &__CSA_END_CPU3_
  #define BRS_CSA_ENDADDRESS_CORE4    &__CSA_END_CPU4_
  #define BRS_CSA_ENDADDRESS_CORE5    &__CSA_END_CPU5_

  /**********************************************************************************/
  /* compiler generated stack symbols used during startup */
  /* BRS_STARTUPSTACK_CORE<x> must be the end address */
  /**********************************************************************************/
  extern uint32 _STACK_C0_START;
  extern uint32 __STARTUPSTACK_CORE1;
  extern uint32 __STARTUPSTACK_CORE2;
  extern uint32 __STARTUPSTACK_CORE3;
  extern uint32 __STARTUPSTACK_CORE4;
  extern uint32 __STARTUPSTACK_CORE5;
  #define BRS_STARTUPSTACK_CORE0  &_STACK_C0_START
  #define BRS_STARTUPSTACK_CORE1  &__STARTUPSTACK_CORE1
  #define BRS_STARTUPSTACK_CORE2  &__STARTUPSTACK_CORE2
  #define BRS_STARTUPSTACK_CORE3  &__STARTUPSTACK_CORE3
  #define BRS_STARTUPSTACK_CORE4  &__STARTUPSTACK_CORE4
  #define BRS_STARTUPSTACK_CORE5  &__STARTUPSTACK_CORE5

  /**********************************************************************************/
  /* external symbols of trap vectors */
  /* OS symbols are used */
  /**********************************************************************************/
#if defined (BRS_ENABLE_FBL_SUPPORT)
  // extern uint32 _INTVECT_START[];
  // #define BRS_TRAPTAB_CORE0  _INTVECT_START
  // #define BRS_TRAPTAB_CORE1  _INTVECT_START
  // #define BRS_TRAPTAB_CORE2  _INTVECT_START
#else
  extern uint32 _OS_EXCVEC_CORE0_CODE_START;
  extern uint32 _OS_EXCVEC_CORE1_CODE_START;
  extern uint32 _OS_EXCVEC_CORE2_CODE_START;
  extern uint32 _OS_EXCVEC_CORE3_CODE_START;
  extern uint32 _OS_EXCVEC_CORE4_CODE_START;
  extern uint32 _OS_EXCVEC_CORE5_CODE_START;
  #define BRS_TRAPTAB_CORE0  &_OS_EXCVEC_CORE0_CODE_START
  #define BRS_TRAPTAB_CORE1  &_OS_EXCVEC_CORE1_CODE_START
  #define BRS_TRAPTAB_CORE2  &_OS_EXCVEC_CORE2_CODE_START
  #define BRS_TRAPTAB_CORE3  &_OS_EXCVEC_CORE3_CODE_START
  #define BRS_TRAPTAB_CORE4  &_OS_EXCVEC_CORE4_CODE_START
  #define BRS_TRAPTAB_CORE5  &_OS_EXCVEC_CORE5_CODE_START
#endif
  /**********************************************************************************/
  /* external symbols of interrupt vectors */
  /* OS symbols are used */
  /**********************************************************************************/
  // extern uint32 _OS_INTVEC_CORE0_CODE_START;
  // extern uint32 _OS_INTVEC_CORE1_CODE_START;
  // extern uint32 _OS_INTVEC_CORE2_CODE_START;
  // extern uint32 _OS_INTVEC_CORE3_CODE_START;
  // extern uint32 _OS_INTVEC_CORE4_CODE_START;
  // extern uint32 _OS_INTVEC_CORE5_CODE_START;
  // #define BRS_INTVECTTAB_CORE0  &_OS_INTVEC_CORE0_CODE_START
  // #define BRS_INTVECTTAB_CORE1  &_OS_INTVEC_CORE1_CODE_START
  // #define BRS_INTVECTTAB_CORE2  &_OS_INTVEC_CORE2_CODE_START
  // #define BRS_INTVECTTAB_CORE3  &_OS_INTVEC_CORE3_CODE_START
  // #define BRS_INTVECTTAB_CORE4  &_OS_INTVEC_CORE4_CODE_START
  // #define BRS_INTVECTTAB_CORE5  &_OS_INTVEC_CORE5_CODE_START
#endif /*BRS_COMP_x*/

typedef uint32 BRS_CSA_Element[16]; /* one CSA element consists of 16 x 32 bit */


/**********************************************************************************************************************
 *  FUNCTION DEFINITIONS
 *********************************************************************************************************************/

/* =========================================================================== */
/*                                                                             */
/* Description: Entry point for all cores                                      */
/*                                                                             */
/* =========================================================================== */
#if defined (BRS_COMP_GCCHIGHTEC)
#pragma section ".brsStartup" ax 32
#elif defined (BRS_COMP_GHS)
#pragma ghs section text=".brsStartup"
#elif defined (BRS_COMP_TASKING)
#pragma optimize R                                       /* switch off code compaction optimization for this module */
#pragma section code "brsStartup"
#elif defined (BRS_COMP_DIABDATA)
#pragma section CODE ".brsStartup"
#endif
/* TechM: Renamed not to match with Vector SIP */
void BRS_FORCE_ACTIVE LldStartupEntry(void)
{
  uint32 CurrentCoreId = 5;
  CurrentCoreId = GetCoreID();
  //CurrentCoreId = BRS_READ_COREID(); //NEW SIP format
  
  uint32 memoryType = IN_ROM;
  
  uint32 AuxVariable = 0;
  uint32 SPAddressInit = 0;
  uint32 BTVAddressInit = 0;
#if !defined (BRS_ENABLE_FBL_SUPPORT)

#endif
  BRS_CSA_Element* CSAAddress = 0;
  uint32 CSA_Numbers = 0;

  switch(CurrentCoreId)
  {
#if !defined (BRS_ENABLE_HSM_SUPPORT) /* normal usecase */
    case (CORE_0):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE0;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE0 - (uint32)BRS_CSA_STARTADDRESS_CORE0) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE0 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE0;
      BRS_INIT_BIV(BRS_INTVECTTAB_CORE0);
    break;
    //# if defined (BRS_ENABLE_OS_MULTICORESUPPORT)
#  if (BRS_CPU_CORE_AMOUNT > 1)
    case (CORE_1):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE1;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE1 - (uint32)BRS_CSA_STARTADDRESS_CORE1) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE1 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE1;
      BIVAddressInit = (uint32)BRS_INTVECTTAB_CORE1;
    break;
#  endif
#  if (BRS_CPU_CORE_AMOUNT > 2)
    case (CORE_2):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE2;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE2 - (uint32)BRS_CSA_STARTADDRESS_CORE2) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE2 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE2;
      BIVAddressInit = (uint32)BRS_INTVECTTAB_CORE2;
    break;
#  endif
#  if (BRS_CPU_CORE_AMOUNT > 3)
    case (CORE_3):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE3;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE3 - (uint32)BRS_CSA_STARTADDRESS_CORE3) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE3 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE3;
      BIVAddressInit = (uint32)BRS_INTVECTTAB_CORE3;
    break;
#  endif
#  if (BRS_CPU_CORE_AMOUNT > 4)
    case (CORE_4):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE4;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE4 - (uint32)BRS_CSA_STARTADDRESS_CORE4) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE4 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE4;
      BIVAddressInit = (uint32)BRS_INTVECTTAB_CORE4;
    break;
#  endif
#  if (BRS_CPU_CORE_AMOUNT > 5)
    case (BRSHW_DERIVATIVE_CORE5_ID):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE5;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE5 - (uint32)BRS_CSA_STARTADDRESS_CORE5) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE5 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE5;
      BIVAddressInit = (uint32)BRS_INTVECTTAB_CORE5;
    break;
#  endif
 // # endif /* defined (BRS_ENABLE_OS_MULTICORESUPPORT) */
#else /* defined (BRS_ENABLE_HSM_SUPPORT) */ /* HSM usecase */
    case (CORE_0):
      BRS_DISABLE_VIRTUALIZATION();
      CSAAddress = (BRS_CSA_Element*)BRS_CSA_STARTADDRESS_CORE0;
      CSA_Numbers = ((uint32)BRS_CSA_ENDADDRESS_CORE0 - (uint32)BRS_CSA_STARTADDRESS_CORE0) / 64;
      SPAddressInit = (uint32)BRS_STARTUPSTACK_CORE0 & 0xfffffff8UL; /* align it on an 8 byte boundary */
      BTVAddressInit = (uint32)BRS_TRAPTAB_CORE0;
      BRS_INIT_BIV(BRS_INTVECTTAB_CORE0);
    break;
#  endif
    default:
    break;
  }

/* =========================================================================== */
/*                                                                             */
/* Description: Initialize memory blocks and areas with zero                   */
/*                                                                             */
/* =========================================================================== */
#if defined (VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_BLOCKS)
# if (VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_BLOCKS>1uL)
  /* Loop over all entries of vLinkGen_ZeroInit_Early_Blocks and zero the configured memory blocks. */
  volatile uint32 *memPtr;
  uint8 blockNum;
  for(blockNum = 0; blockNum < vLinkGen_ZeroInit_Early_BlocksSet.Num; blockNum++)
  {
    if(vLinkGen_ZeroInit_Early_BlocksSet.Areas[blockNum].Core == CurrentCoreId &&
      (vLinkGen_ZeroInit_Early_BlocksSet.Areas[blockNum].End - vLinkGen_ZeroInit_Early_BlocksSet.Areas[blockNum].Start) > 0)
    {
      memPtr = (volatile uint32 *)vLinkGen_ZeroInit_Early_BlocksSet.Areas[blockNum].Start;
      while((uint32)memPtr < vLinkGen_ZeroInit_Early_BlocksSet.Areas[blockNum].End)
      {
        *memPtr = 0x0;
        memPtr++;
      }
    }
  }
# endif /*VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_BLOCKS>1uL*/

#else
  #error "Mandatory define VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_BLOCKS missing within vLinkGen configuration!"
#endif /*VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_BLOCKS*/

#if defined (VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_GROUPS)
# if (VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_GROUPS>1uL)
  /* Loop over all entries of vLinkGen_ZeroInit_Early_Groups and zero the configured memory areas. */
  volatile uint32 *memPtr2;
  uint8 areaNum;
  for(areaNum = 0; areaNum < vLinkGen_ZeroInit_Early_GroupsSet.Num; areaNum++)
  {
    if(vLinkGen_ZeroInit_Early_GroupsSet.Areas[areaNum].Core == CurrentCoreId &&
      (vLinkGen_ZeroInit_Early_GroupsSet.Areas[areaNum].End - vLinkGen_ZeroInit_Early_GroupsSet.Areas[areaNum].Start) > 0)
    {
      memPtr2 = (volatile uint32 *)vLinkGen_ZeroInit_Early_GroupsSet.Areas[areaNum].Start;
      while((uint32)memPtr2 < vLinkGen_ZeroInit_Early_GroupsSet.Areas[areaNum].End)
      {
        *memPtr2 = 0x0;
        memPtr2++;
      }
    }
  }
# endif /*VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_GROUPS>1uL*/

#else
  #error "Mandatory define VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_GROUPS missing within vLinkGen configuration!"
#endif /*VLINKGEN_CFG_NUM_ZERO_INIT_EARLY_GROUPS*/

/* =========================================================================== */
/* Set stack pointer (compiler generated stack is used) */
/* =========================================================================== */
  BRS_SET_SP(SPAddressInit);

/* =========================================================================== */
/* Set the PSW to its reset value in case of a warm start */
/* =========================================================================== */
  BRS_MOVE_TO_CSFR(BRS_PSW_OFFSET, 0x00000B80UL);

/* =========================================================================== */
/* Set the PCXS and PCXO to its reset value in case of a warm start */
/* =========================================================================== */
  AuxVariable = BRS_MOVE_FROM_CSFR(BRS_PCXI_OFFSET);
  AuxVariable &= 0xfff00000UL;
  BRS_MOVE_TO_CSFR(BRS_PCXI_OFFSET, AuxVariable);

/* =========================================================================== */
/* initialize the CSAs (inlined function) */
/* aftwerwards function calls are possible */
/* =========================================================================== */
  BRS_CSA_Element* CSA;
  uint32 NumberOfCSA;
  uint32 pcxi_val = 0;    /* the last PCXI has to point to 0 */
  uint32 CSAReserve = 20; /* the LCX will be initalized to point to 20 CSAs before the very last CSA */
  uint32 seg_nr, seg_idx; /* auxiliary variables to assemble the PCXI value */

  if(CSAAddress != 0)
  {
    CSA = CSAAddress;
    for (NumberOfCSA=0; NumberOfCSA < CSA_Numbers; NumberOfCSA++) /* loop over all CSA elements */
    {
      *CSA[0] = pcxi_val; /* *CSA is equal to CSA[0] is equal to CSA.PCXI (it holds the PCXI value and has to point to the next PCXI) */

      /* now translate the current CSA address to a valid PCXI value which is used within the AURIX registers */
      seg_nr  = (((unsigned int)CSA >> 28) & 0xf) << 16;
      seg_idx = (((unsigned int)CSA >> 6) & 0xffff);
      pcxi_val = seg_nr | seg_idx;
      if (NumberOfCSA == CSAReserve) /* reserve CSAs for exception handling */
      {
        BRS_MOVE_TO_CSFR(BRS_LCX_OFFSET, pcxi_val);
      }
      CSA++; /* point to the next CSA */
    }
    BRS_MOVE_TO_CSFR(BRS_FCX_OFFSET, pcxi_val);
  }

/* =========================================================================== */
/* initialize BIV and BTV / endinit protected */
/* =========================================================================== */
  if((BTVAddressInit % 0x100) != 0)
  {
    /* the trap vector table must be aligned on a 256 byte boundary */
    for(;;);
  }
  if((BIVAddressInit % 0x100) != 0)   /* TODO: TechM: changed to 100 from 2000 for RTOS */
  {
    /* the interrupt vector table must be aligned on a 8192 byte boundary */
    for(;;);
  }


  //BRS_TRICORE_UNLOCKENDINIT(CurrentCoreId);
    BRS_TRICORE_UNLOCKENDINIT(CurrentCoreId, memoryType); // NEW SIP format with Two args

  BRS_MOVE_TO_CSFR(BRS_BTV_OFFSET, BTVAddressInit);
  BRS_MOVE_TO_CSFR(BRS_BIV_OFFSET, BIVAddressInit);
  
  BRS_MOVE_TO_CSFR(BRS_PCON0_OFFSET, 0x0UL); /* setting the PCON0 to zero disables the cache bypass (thus program caching is enabled) */  
 
  //BRS_TRICORE_LOCKENDINIT(CurrentCoreId);
   BRS_TRICORE_LOCKENDINIT(CurrentCoreId, memoryType); // NEW SIP format with Two args

/* =========================================================================== */
/*                                                                             */
/* Description: Jump to Brs_PreMainStartup() (BrsMainStartup.c)                */
/*                                                                             */
/* =========================================================================== */

  if(CurrentCoreId == 0)
    {
      /* Set program counter of core 1 */
      CPU1_PC.U = (unsigned int)cstart; /* start core 1 inside EcuM_Init - ogd1hc */
      #if ( MCAL_NO_OF_CORES == 3U )   
	   /* Set program counter of core 2 */
	   CPU2_PC.U = (unsigned int)cstart; /* start core 2 inside EcuM_Init - ogd1hc */
	   #endif
	   
  }
    CpuInitCompletedSem[CurrentCoreId] = 1;    
  //Brs_PreMainStartup(); /* TechM this code is already executed in BTXH as part of First Execution instance */
    main_0();
    /* Never return */
/* =========================================================================== */
/*                                                                             */
/* Description: Jump to BrsMainExceptionStartup() in case of an unexpected     */
/*              return from PreMain/main                                       */
/*                                                                             */
/* =========================================================================== */
  BrsMainExceptionStartup();
}
#if defined (BRS_COMP_GCCHIGHTEC)
#pragma section
#elif defined (BRS_COMP_GHS)
#pragma ghs section text=default
#elif defined (BRS_COMP_TASKING)
#pragma section code restore
#pragma endoptimize
#elif defined (BRS_COMP_DIABDATA)
#pragma section CODE
#endif