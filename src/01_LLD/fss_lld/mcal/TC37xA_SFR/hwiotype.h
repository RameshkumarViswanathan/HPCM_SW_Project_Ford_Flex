#ifndef _HWIOTYPE_H_
#define _HWIOTYPE_H_
/******************************************************************************/
/*  Copyrights (C) 20xx - 20xx FORD Motors                                    */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE  hwiotype.h                                                        */
/******************************************************************************/
/*  BASE MODULE  None                                                         */
/******************************************************************************/
/*  VERSION  1.0.0.0             | PROJECT (FORD) Traction Inverter           */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*                                                                            */
/******************************************************************************/
/*  FUNCTIONS                                                                 */
/*    Header file for GMPT interface                                          */
/******************************************************************************/
/*  REMARKS                                                                   */
/*                                                                            */
/******************************************************************************/
/*  CHANGES                                                                   */
/* ID     dd.mm.yyyy   name          description                              */
/* ---    ----------   -----------   ---------------------------------------- */
/******************************************************************************/

#include "Platform_Types.h"

#ifndef NULL
    #define NULL    ((void *)0)
#endif  /*NULL*/

#ifndef TRUE
 #define TRUE      1U
#endif

#ifndef FALSE
 #define FALSE     0U
#endif

#ifndef BIOS_STATIC_IF_RAM
#ifdef BIOS_EXE_RAM
#define BIOS_STATIC_IF_RAM static
#else   /* BIOS_EXE_RAM */
#define BIOS_STATIC_IF_RAM
#endif  /* BIOS_EXE_RAM */
#endif  /* BIOS_STATIC_IF_RAM */

#endif  /* _HWIOTYPE_H_ */
/* EOF */
