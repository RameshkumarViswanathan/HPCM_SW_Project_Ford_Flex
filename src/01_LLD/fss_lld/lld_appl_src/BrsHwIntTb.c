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
/** \file  File:  BrsHwIntTb.c
 *      Project:  Vector Basic Runtime System
 *       Module:  BrsHw for platform Infineon Aurix/AurixPlus
 *     Template:  This file is reviewed according to Brs_Template@Implementation[1.02.00]
 *
 *  \brief Description:  This file consists of the core exception table for FBL projects, without usage of an OS.
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

/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/
#include "BrsHw.h"

#include "BrsMain.h"

/**********************************************************************************************************************
 *  CONFIGURATION CHECK
 *********************************************************************************************************************/
#if defined (BRS_COMP_GCCHIGHTEC)  

#else
  #error "Unknown compiler specified!"
#endif

#define BRS_START_SEC_RAM_CODE
#include "Brs_MemMap.h"
void BrsHw_core_exception_handler(uint32 CLASS_TIN)
{
  /* the parameter CLASS_TIN holds the trap class in the upper 16 bit and the TIN in the lower 16 bit */
  BrsMainExceptionHandler(kBrsInterruptHandlerNotInstalled, BRSERROR_MODULE_BRSHW, (uint16)0);
}
#define BRS_STOP_SEC_RAM_CODE
#include "Brs_MemMap.h"

/**********************************************************************************************************************
 *  Compiler abstraction
 *********************************************************************************************************************/
//#if defined (BRS_COMP_GCCHIGHTEC)                      /* TODO: TechM: Commented out for RTOS */
# define Brs_Fbl_ExceptionTableBegin() \
  __asm (".section .INTVECT"); \                         
  __asm (".align 8"); \
  __asm (".section ._OS_INTVEC_CORE0_CODE_START"); \     
  __asm (".align 8");                                    
# define Brs_Fbl_ExceptionTableEnd()     

# define Brs_Fbl_ExceptionHandler(core, class) \
  __asm (".align 5"); \
  __asm (".globl brsTrap_" #class "_Core" #core); \
  __asm ("brsTrap_" #class "_Core" #core ": svlcx");                 /* save lower context */\
  __asm ("movh %d4, " #class);                                      /* prepare parameters for C-Function; D4 = Exception class */\
  __asm ("or %d4, %d15");                                           /* prepare parameters for C-Function; D4 |= TIN (D15) */\
  __asm ("movh.a %a14, hi:BrsHw_core_exception_handler");           /* load address of BrsHw_core_exception_handler */ \
  __asm ("lea %a14,[%a14]lo:BrsHw_core_exception_handler");         /* load address of BrsHw_core_exception_handler */ \
  __asm ("ji %a14 ");                                               /* jump to the handler */
//#endif  /* TODO: TechM: Commented out for RTOS */




/********************************************************************************************
 *                                                                                          *
 *                           Core Exceptions Table                                          *
 *                                                                                          *
 ********************************************************************************************/
Brs_Fbl_ExceptionTableBegin()
Brs_Fbl_ExceptionHandler(0, 0)
Brs_Fbl_ExceptionHandler(0, 1)
Brs_Fbl_ExceptionHandler(0, 2)
Brs_Fbl_ExceptionHandler(0, 3)
Brs_Fbl_ExceptionHandler(0, 4)
Brs_Fbl_ExceptionHandler(0, 5)
Brs_Fbl_ExceptionHandler(0, 6)
Brs_Fbl_ExceptionHandler(0, 7)
Brs_Fbl_ExceptionTableEnd()
