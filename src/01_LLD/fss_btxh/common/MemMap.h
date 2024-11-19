/**********************************************************************************************************************
 *  FILE DESCRIPTION
 *  -----------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        MemMap section definition to locate (link) data or code in memory
 *  \details      This file contains compiler specific section definition for every segment that can be mapped
 *                within the Flash Bootloader to a specific location.
 *
 *  \note
 *                Please note, that this file contains a collection of definitions to be used with the Flash Bootloader.
 *                This code may influence the behavior of the Bootloader in principle. Therefore, great care
 *                must be taken to verify the correctness of the implementation.
 *
 *                The contents of the originally delivered files are only examples resp. implementation proposals.
 *                With regard to the fact that these definitions are meant for demonstration purposes only,
 *                Vector Informatik's liability shall be expressly excluded in cases of ordinary negligence, to the
 *                extent admissible by law or statute.
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 *  THIS IS A GENERATED FILE
 *  Generator version : 01.10.01
 *********************************************************************************************************************/

/* PRQA S 0841 EOF */ /* MD_MSR_Undef */
/* PRQA S 0883 EOF */ /* MD_MemMap_0883 */
/* PRQA S 3116 EOF */ /* MD_MSR_Pragma */

#define FBL_MEMMAP_ERROR

#if defined( ADC_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ADC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ADC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ADC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( BFX_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef BFX_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( BFX_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef BFX_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANIF_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CANIF_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANIF_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANIF_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANIF_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANIF_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANIF_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANIF_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANIF_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANIF_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANIF_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANIF_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANIF_START_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANIF_START_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANIF_STOP_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANIF_STOP_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CANTP_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANTP_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANTP_START_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANTP_STOP_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANTP_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANTP_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANTP_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANTP_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CANTP_START_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CANTP_STOP_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_INIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_INIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_INIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_INIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTP_START_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_START_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTP_STOP_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTP_STOP_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_CONFIG_DATA_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_CONFIG_DATA_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_CONFIG_DATA_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_CONFIG_DATA_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_START_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_V9251_STOP_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_CONFIG_DATA_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_START_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CANTRCV_17_W9255_STOP_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CAN_17_MCMCAN_START_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_17_MCMCAN_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_17_MCMCAN_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_START_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_17_MCMCAN_STOP_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CAN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CODE_APPL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CAN_START_SEC_CODE_APPL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CODE_APPL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CODE_APPL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_PBCFG_ROOT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef CAN_START_SEC_PBCFG_ROOT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_PBCFG_ROOT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_PBCFG_ROOT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_STATIC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef CAN_START_SEC_STATIC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_STATIC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef CAN_STOP_SEC_STATIC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_NOINIT_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_NOINIT_32BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_NOINIT_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_NOINIT_32BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CAN_START_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_START_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CAN_STOP_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef CAN_STOP_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( COMM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef COMM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( COMM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef COMM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_64 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_64
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_64 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_64
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRC_START_SEC_VAR_INIT_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_START_SEC_VAR_INIT_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRC_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef CRC_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYIF_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYIF_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYIF_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYIF_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYIF_START_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_START_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYIF_STOP_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYIF_STOP_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CRYPTO_30_LIBCV_START_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_START_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CRYPTO_30_LIBCV_STOP_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CRYPTO_30_LIBCV_STOP_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_APPL_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_APPL_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_APPL_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_APPL_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( CSM_START_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_START_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( CSM_STOP_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef CSM_STOP_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DET_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef DET_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DET_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef DET_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DET_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef DET_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DET_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef DET_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DET_START_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_START_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DET_STOP_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_STOP_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DET_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DET_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DET_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DET_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DET_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DIO_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DIO_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DIO_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DIO_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DIO_START_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_START_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DIO_STOP_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_STOP_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DIO_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DIO_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DIO_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE1_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE1_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE2_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE2_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE3_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE3_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE4_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE4_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE5_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE5_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE1_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE1_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE2_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE2_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE3_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE3_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE4_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE4_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE5_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_CORE5_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DMA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DMA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DMA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DSADC_START_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_START_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DSADC_STOP_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_STOP_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DSADC_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DSADC_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DSADC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DSADC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( DSADC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( DSADC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef DSADC_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_INIT_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_RXBUFFER_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_RXBUFFER_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_START_SEC_VAR_TXBUFFER_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ETH_17_GETHMAC_STOP_SEC_VAR_TXBUFFER_CLEARED_QM_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( EEPDUMMY_FULL_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef EEPDUMMY_FULL_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( EEPDUMMY_FULL_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef EEPDUMMY_FULL_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( EEPDUMMY_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef EEPDUMMY_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( EEPDUMMY_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef EEPDUMMY_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLAP_OTP_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLAP_OTP_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLAP_OTP_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLAP_OTP_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLAP_RAMCODE_START_SEC_CODE ) || \
    defined( FBLAP_RAMCODE_START_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLAP_RAMCODE_START_SEC_CODE
# undef FBLAP_RAMCODE_START_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLAP_RAMCODE_STOP_SEC_CODE ) || \
    defined( FBLAP_RAMCODE_STOP_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLAP_RAMCODE_STOP_SEC_CODE
# undef FBLAP_RAMCODE_STOP_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLASRSTUBS_DEM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLASRSTUBS_DEM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLASRSTUBS_DEM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLASRSTUBS_DEM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLASRSTUBS_MCAL_WDGLIB_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLASRSTUBS_MCAL_WDGLIB_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLASRSTUBS_MCAL_WDGLIB_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLASRSTUBS_MCAL_WDGLIB_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBMAP_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMAP_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBMAP_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMAP_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBMAP_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMAP_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBMAP_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMAP_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBMHDR_BMHEADER_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".BmHdrHeaderSection" a
# undef FBLBMHDR_BMHEADER_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBMHDR_BMHEADER_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLBMHDR_BMHEADER_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBMHDR_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMHDR_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBMHDR_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMHDR_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBMHDR_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMHDR_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBMHDR_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBMHDR_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_APPLSTART_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_APPLSTART_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_APPLSTART_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_APPLSTART_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_FBLSTART_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_FBLSTART_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_FBLSTART_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_FBLSTART_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_HEADER_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".BmHeaderSection" a
# undef FBLBM_HEADER_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_HEADER_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLBM_HEADER_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_MAIN_APPLSTART_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_MAIN_APPLSTART_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_MAIN_APPLSTART_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_MAIN_APPLSTART_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_MAIN_FBLSTART_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_MAIN_FBLSTART_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_MAIN_FBLSTART_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_MAIN_FBLSTART_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_MAIN_MAGICFLAG_START_SEC_VAR_NOINIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".MagicFlagSection" awB
# undef FBLBM_MAIN_MAGICFLAG_START_SEC_VAR_NOINIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_MAIN_MAGICFLAG_STOP_SEC_VAR_NOINIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLBM_MAIN_MAGICFLAG_STOP_SEC_VAR_NOINIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLBM_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLBM_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLBM_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_CAN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLCW_CAN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_CAN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_CAN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_FR_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLCW_FR_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_FR_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_FR_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_LIN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLCW_LIN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_LIN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_LIN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_APPL_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLCW_START_SEC_APPL_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_APPL_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_APPL_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLCW_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CONST_16BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CONST_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CONST_64BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_CONST_64BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CONST_64BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CONST_64BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef FBLCW_START_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLCW_STOP_SEC_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_32BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_32BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_64BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_64BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_64BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_64BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_BOOLEAN )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_BOOLEAN
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_BOOLEAN )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_BOOLEAN
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_PBCFG )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_PBCFG
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_ZERO_INIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_ZERO_INIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLCW_START_SEC_VAR_ZERO_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_START_SEC_VAR_ZERO_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLCW_STOP_SEC_VAR_ZERO_INIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLCW_STOP_SEC_VAR_ZERO_INIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLDIAG_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLDIAG_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLDIAG_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLDIAG_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLDIAG_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLDIAG_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLDIAG_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLDIAG_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLDIAG_START_SEC_CONST )
#pragma section ".RamConstSection" a
# undef FBLDIAG_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLDIAG_STOP_SEC_CONST )
#pragma section
# undef FBLDIAG_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLDIAG_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLDIAG_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLDIAG_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLDIAG_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_FLASHCODE_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".FblFlashDrvSection" awB
# undef FBLFLIO_FLASHCODE_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_FLASHCODE_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLFLIO_FLASHCODE_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_FLASHCODE_XD2_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".FblFlashDrvSection_Xd" awBs
# undef FBLFLIO_FLASHCODE_XD2_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_FLASHCODE_XD2_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLFLIO_FLASHCODE_XD2_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLFLIO_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLFLIO_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" x
# undef FBLFLIO_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLFLIO_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_XD2_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_XD2_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_XD2_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_XD2_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLFLIO_XD2_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_XD2_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLFLIO_XD2_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLFLIO_XD2_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLHEADER_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".FblHeaderSection" a
# undef FBLHEADER_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLHEADER_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLHEADER_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLHW_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLHW_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLHW_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLHW_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLHW_START_SEC_CODE )
   #pragma section ".RamCodeCoreSection" x
# undef FBLHW_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLHW_STOP_SEC_CODE )
#pragma section
# undef FBLHW_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLHW_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLHW_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLHW_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLHW_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLHW_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLHW_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLHW_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLHW_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLBT_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLBT_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLBT_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLBT_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLBT_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLBT_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLBT_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLBT_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLIB_MEM_RAMCODE_START_SEC_CODE ) || \
    defined( FBLLIB_MEM_RAMCODE_START_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLLIB_MEM_RAMCODE_START_SEC_CODE
# undef FBLLIB_MEM_RAMCODE_START_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLIB_MEM_RAMCODE_STOP_SEC_CODE ) || \
    defined( FBLLIB_MEM_RAMCODE_STOP_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLLIB_MEM_RAMCODE_STOP_SEC_CODE
# undef FBLLIB_MEM_RAMCODE_STOP_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLIB_MEM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLIB_MEM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLIB_MEM_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLIB_MEM_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLLIB_MEM_START_SEC_VAR ) || \
    defined( FBLLIB_MEM_START_SEC_VAR_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_START_SEC_VAR
# undef FBLLIB_MEM_START_SEC_VAR_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLLIB_MEM_STOP_SEC_VAR ) || \
    defined( FBLLIB_MEM_STOP_SEC_VAR_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLLIB_MEM_STOP_SEC_VAR
# undef FBLLIB_MEM_STOP_SEC_VAR_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLMAIN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMAIN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLMAIN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMAIN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLMAIN_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMAIN_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLMAIN_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMAIN_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLMIO_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLMIO_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLMIO_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLMIO_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLMIO_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMIO_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLMIO_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLMIO_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLNVPATTERN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLNVPATTERN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLNVPATTERN_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLNVPATTERN_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLNVPATTERN_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLNVPATTERN_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLNVPATTERN_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLRAMIO_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLRAMIO_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLRAMIO_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLRAMIO_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLRAMIO_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLRAMIO_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLRAMIO_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLRAMIO_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLUPDATE_START_SEC_CONST ) || \
    defined( FBLUPDATE_START_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDATE_START_SEC_CONST
# undef FBLUPDATE_START_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLUPDATE_STOP_SEC_CONST ) || \
    defined( FBLUPDATE_STOP_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDATE_STOP_SEC_CONST
# undef FBLUPDATE_STOP_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLUPDBMHDFIELD_TOFBL_START_SEC_CONST ) || \
    defined( FBLUPDBMHDFIELD_TOFBL_START_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDBMHDFIELD_TOFBL_START_SEC_CONST
# undef FBLUPDBMHDFIELD_TOFBL_START_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLUPDBMHDFIELD_TOFBL_STOP_SEC_CONST ) || \
    defined( FBLUPDBMHDFIELD_TOFBL_STOP_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDBMHDFIELD_TOFBL_STOP_SEC_CONST
# undef FBLUPDBMHDFIELD_TOFBL_STOP_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLUPDBMHDFIELD_TOUPDATER_START_SEC_CONST ) || \
    defined( FBLUPDBMHDFIELD_TOUPDATER_START_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDBMHDFIELD_TOUPDATER_START_SEC_CONST
# undef FBLUPDBMHDFIELD_TOUPDATER_START_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLUPDBMHDFIELD_TOUPDATER_STOP_SEC_CONST ) || \
    defined( FBLUPDBMHDFIELD_TOUPDATER_STOP_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLUPDBMHDFIELD_TOUPDATER_STOP_SEC_CONST
# undef FBLUPDBMHDFIELD_TOUPDATER_STOP_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLWD_INIT_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLWD_INIT_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLWD_INIT_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLWD_INIT_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLWD_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBLWD_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLWD_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBLWD_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBLWD_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLWD_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBLWD_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBLWD_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_APPLVECT_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".ApplVectSection" a
# undef FBL_APPLVECT_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_APPLVECT_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBL_APPLVECT_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_CANCEL_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CANCEL_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_CANCEL_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CANCEL_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_CONFIG_PARAM_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CONFIG_PARAM_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_CONFIG_PARAM_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_CONFIG_PARAM_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_DEINIT_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_DEINIT_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_DEINIT_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_DEINIT_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_INIT_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_INIT_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_INIT_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_INIT_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_RXTASK_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_RXTASK_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_RXTASK_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_RXTASK_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_START_SEC_CONST ) || \
    defined( FBL_SPI_INFINEON_QSPI_START_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_START_SEC_CONST
# undef FBL_SPI_INFINEON_QSPI_START_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST ) || \
    defined( FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST
# undef FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_TASK_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TASK_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_TASK_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TASK_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_SPI_INFINEON_QSPI_TXTASK_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TXTASK_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_SPI_INFINEON_QSPI_TXTASK_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_SPI_INFINEON_QSPI_TXTASK_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_AP_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBL_UPD_AP_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_AP_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBL_UPD_AP_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_MAIN_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_MAIN_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_MAIN_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_MAIN_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_MAIN_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_MAIN_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_MAIN_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_OEM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_OEM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_OEM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_OEM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef FBL_UPD_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef FBL_UPD_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_UPD_START_SEC_BUFFER_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_START_SEC_BUFFER_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_UPD_STOP_SEC_BUFFER_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_UPD_STOP_SEC_BUFFER_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_VALSTRUCT_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_VALSTRUCT_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_VALSTRUCT_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_VALSTRUCT_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_VALSTRUCT_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_VALSTRUCT_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FBL_VALSTRUCT_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FBL_VALSTRUCT_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE_ASIL_B_ILLEGALNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE_ASIL_B_ILLEGALNOTIF
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE_ASIL_B_ILLEGALNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE_ASIL_B_ILLEGALNOTIF
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE_ASIL_B_JOBENDNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE_ASIL_B_JOBENDNOTIF
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE_ASIL_B_JOBENDNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE_ASIL_B_JOBENDNOTIF
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE_ASIL_B_JOBERRNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE_ASIL_B_JOBERRNOTIF
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE_ASIL_B_JOBERRNOTIF )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE_ASIL_B_JOBERRNOTIF
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CONST_ASIL_B_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CONST_ASIL_B_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CONST_ASIL_B_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CONST_ASIL_B_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CONST_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CONST_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CONST_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CONST_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_CONST_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_CONST_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_CONST_ASIL_B_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_CONST_ASIL_B_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_ERASEERRORNOTI_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_ERASEERRORNOTI_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_ERASEERRORNOTI_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_ERASEERRORNOTI_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_ILLEGALNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_ILLEGALNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_ILLEGALNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_ILLEGALNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_JOBENDNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_JOBENDNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_JOBENDNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_JOBENDNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_JOBERRNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_JOBERRNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_JOBERRNOTIF_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_JOBERRNOTIF_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_PROGERRORNOTI_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_PROGERRORNOTI_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_PROGERRORNOTI_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_PROGERRORNOTI_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FEE_START_SEC_VAR_INIT_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_START_SEC_VAR_INIT_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FEE_STOP_SEC_VAR_INIT_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FEE_STOP_SEC_VAR_INIT_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_FLASHHEADER_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".FlashDrvHeaderSection" a

# undef FLASHDRV_FLASHHEADER_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_FLASHHEADER_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
#pragma section

# undef FLASHDRV_FLASHHEADER_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_XD2_FLASHHEADER_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_FLASHHEADER_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_XD2_FLASHHEADER_STOP_SEC_COST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_FLASHHEADER_STOP_SEC_COST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_XD2_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_XD2_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_XD2_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_XD2_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLASHDRV_XD2_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLASHDRV_XD2_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef FLASHDRV_XD2_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_BUSYLOOP_CALLOUT_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_BUSYLOOP_CALLOUT_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_BUSYLOOP_CALLOUT_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_BUSYLOOP_CALLOUT_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_CONST_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_CONST_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_CONST_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_CONST_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_CONST_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_CONST_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_CONST_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_CONST_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLSLOADER_START_SEC_WRITEERASE_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_START_SEC_WRITEERASE_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLSLOADER_STOP_SEC_WRITEERASE_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLSLOADER_STOP_SEC_WRITEERASE_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLS_17_DMU_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLS_17_DMU_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLS_17_DMU_START_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_START_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLS_17_DMU_STOP_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_STOP_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLS_17_DMU_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLS_17_DMU_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLS_17_DMU_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLS_17_DMU_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FLS_17_DMU_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( FLS_17_DMU_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef FLS_17_DMU_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE1_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE1_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE1_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE1_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE2_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE2_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE2_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE2_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE3_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE3_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE3_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE3_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE4_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE4_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE4_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE4_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_CORE5_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_CORE5_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_CORE5_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_CORE5_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( GPT_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( GPT_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef GPT_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef ICU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( IRQ_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef IRQ_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( IRQ_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef IRQ_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( IRQ_START_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef IRQ_START_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( IRQ_STOP_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef IRQ_STOP_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef LIN_17_ASCLIN_START_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef LIN_17_ASCLIN_START_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CODE_QM_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CODE_QM_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONFIG_DATA_QM_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_CONFIG_DATA_QM_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONFIG_DATA_QM_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_CONFIG_DATA_QM_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_CONST_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef LIN_17_ASCLIN_START_SEC_CONST_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_CONST_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef LIN_17_ASCLIN_STOP_SEC_CONST_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_CLEARED_QM_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( LIN_17_ASCLIN_START_SEC_VAR_INIT_QM_GLOBAL_U8 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_START_SEC_VAR_INIT_QM_GLOBAL_U8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( LIN_17_ASCLIN_STOP_SEC_VAR_INIT_QM_GLOBAL_U8 )
   /* #pragma <enter your compiler specific pragma> */
# undef LIN_17_ASCLIN_STOP_SEC_VAR_INIT_QM_GLOBAL_U8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCALLIB_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCALLIB_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCALLIB_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCALLIB_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCALLIB_START_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_START_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCALLIB_STOP_SEC_CONST_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCALLIB_STOP_SEC_CONST_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCALLIB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
	//#error "For Integrator: This section must be aligned to a 4-byte boundary!"
	   /* Pragma must be placed here. */
	   /* Example for Tasking compiler:  
		#pragma align 4
	   */
# undef MCALLIB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCALLIB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
	//#error "For Integrator: Alignment must be restored!"
	   /* Pragma must be restored here. */
	   /* Example for Tasking compiler:  
		#pragma align restore
	   */
# undef MCALLIB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_17_TIMERIP_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef MCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( MEMCPY_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef MEMCPY_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( MEMCPY_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef MEMCPY_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_CONST_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_CONST_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( OCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( OCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef OCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PDUR_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef PDUR_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PDUR_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef PDUR_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PORT_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PORT_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PORT_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PORT_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PORT_START_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_START_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PORT_STOP_SEC_CONST_ASIL_B_GLOBAL_16 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_STOP_SEC_CONST_ASIL_B_GLOBAL_16
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PORT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PORT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PORT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PORT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef PORT_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( PWM_17_GTMCCU6_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( PWM_17_GTMCCU6_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef PWM_17_GTMCCU6_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SECMPAR_START_SEC_DATA )
   /* #pragma <enter your compiler specific pragma> */
# undef SECMPAR_START_SEC_DATA
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SECMPAR_STOP_SEC_DATA )
   /* #pragma <enter your compiler specific pragma> */
# undef SECMPAR_STOP_SEC_DATA
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SECM_RAMCODE_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef SECM_RAMCODE_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SECM_RAMCODE_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef SECM_RAMCODE_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SECM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SECM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SECM_START_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_START_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SECM_STOP_SEC_CONST )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_STOP_SEC_CONST
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SECM_START_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_START_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SECM_STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef SECM_STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SEC_SEED_KEY_VENDOR_FULL_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SEC_SEED_KEY_VENDOR_FULL_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SEC_SEED_KEY_VENDOR_FULL_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SEC_SEED_KEY_VENDOR_FULL_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SENT_START_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_START_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SENT_STOP_SEC_CODE_QM_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_STOP_SEC_CODE_QM_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SENT_START_SEC_VAR_CLEARED_QM_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_START_SEC_VAR_CLEARED_QM_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SENT_STOP_SEC_VAR_CLEARED_QM_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_STOP_SEC_VAR_CLEARED_QM_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SENT_START_SEC_VAR_CLEARED_QM_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_START_SEC_VAR_CLEARED_QM_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SENT_STOP_SEC_VAR_CLEARED_QM_GLOBAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef SENT_STOP_SEC_VAR_CLEARED_QM_GLOBAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SMU_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SMU_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SMU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SMU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SMU_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_START_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SMU_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SMU_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPIFBL_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPIFBL_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPIFBL_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPIFBL_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPIFBL_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPIFBL_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPIFBL_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE0_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE0_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE1_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE1_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE2_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE2_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE3_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE3_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE4_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE4_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE5_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE5_256
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_256 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_256
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( SPI_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( SPI_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef SPI_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( START_SEC_VAR_NOINIT_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef START_SEC_VAR_NOINIT_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( START_SEC_VAR_ZERO_INIT_16BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef START_SEC_VAR_ZERO_INIT_16BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( STOP_SEC_VAR )
   /* #pragma <enter your compiler specific pragma> */
# undef STOP_SEC_VAR
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_CODE_ASIL_B_LOCAL )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_CODE_ASIL_B_LOCAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_CONFIG_DATA_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_CONST_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_CONST_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_CONST_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_CONST_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_CONST_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_CONST_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_CONST_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_CONST_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_8 )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_8
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_START_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef UART_STOP_SEC_VAR_CLEARED_ASIL_B_LOCAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSECPRIM_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSECPRIM_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSECPRIM_START_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_START_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSECPRIM_STOP_SEC_CONST_32BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_STOP_SEC_CONST_32BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSECPRIM_START_SEC_CONST_64BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_START_SEC_CONST_64BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSECPRIM_STOP_SEC_CONST_64BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_STOP_SEC_CONST_64BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSECPRIM_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSECPRIM_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSECPRIM_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSECPRIM_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef VSECPRIM_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSTDLIB_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef VSTDLIB_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSTDLIB_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef VSTDLIB_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( VSTDLIB_START_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamConstSection" a
# undef VSTDLIB_START_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( VSTDLIB_STOP_SEC_CONST_8BIT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef VSTDLIB_STOP_SEC_CONST_8BIT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CODE_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CODE_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CODE_FAST_ASIL_B_GLOBAL
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_CONST_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE0_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE1_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE2_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE3_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE4_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_CORE5_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32 )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDG_17_SCU_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_START_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDG_17_SCU_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WDG_17_SCU_STOP_SEC_VAR_INIT_ASIL_B_GLOBAL_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WDTRIGGER_START_SEC_CODE ) || \
    defined( WDTRIGGER_START_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section ".RamCodeCoreSection" ax
# undef WDTRIGGER_START_SEC_CODE
# undef WDTRIGGER_START_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WDTRIGGER_STOP_SEC_CODE ) || \
    defined( WDTRIGGER_STOP_SEC_CODE_EXPORT )
   /* #pragma <enter your compiler specific pragma> */
#pragma section
# undef WDTRIGGER_STOP_SEC_CODE
# undef WDTRIGGER_STOP_SEC_CODE_EXPORT
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WRAPNV_START_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_START_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WRAPNV_STOP_SEC_CODE )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_STOP_SEC_CODE
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WRAPNV_START_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_START_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WRAPNV_STOP_SEC_CONST_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_STOP_SEC_CONST_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( WRAPNV_START_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_START_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

#if defined( WRAPNV_STOP_SEC_VAR_NOINIT_UNSPECIFIED )
   /* #pragma <enter your compiler specific pragma> */
# undef WRAPNV_STOP_SEC_VAR_NOINIT_UNSPECIFIED
# undef FBL_MEMMAP_ERROR
#endif

/* ----------------------------------------------------------------------------------------------------------------- */

#if defined( FBL_MEMMAP_ERROR )
# error "Error in MemMap.h: MemMap section is not included!"
#endif

/* Module specific MISRA deviations:

   MD_MemMap_0883:
      Reason:     This file has to be included multiple times explicitly, due to the memory mapping mechanism.
      Risk:       No risk due to the undef pragmas and error pragma.
      Prevention: No prevention.

*/

/**********************************************************************************************************************
 *  END OF FILE: MEMMAP.H
 *********************************************************************************************************************/
