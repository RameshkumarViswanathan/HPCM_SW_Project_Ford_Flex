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
 *            Module: FblHal
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: FblHal_Cfg.h
 *   Generation Time: 2023-11-02 09:26:14
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


#if !defined(__FBL_HAL_H__)
#define __FBL_HAL_H__

/* FblHal__base ******************************************************************************************************/
#define FBL_FLASH_ENABLE_ECC_SAFE_READ 
#define FLASH_SIZE                     3072 
#define FBL_TIMER_RELOAD_VALUE         12499 
#define FBL_TIMER_PRESCALER_VALUE      1 

/* Derivative Specific Defines */
#define FBL_SFR_BASE_ADRESSES_PRECONFIGURED
#define FBL_PORT_BASE      0xF003A000u       /**< Port handling base address */
#define FBL_PFI_BASE       0xA8080000u       /**< PFI base address */
#define FBL_SCU_BASE       0xF0036000u       /**< System control unit base address */
#define FBL_DMU_BASE       0xF8040000u       /**< Data memory unit base address */
#define FBL_GPT12_BASE     0xF0001800u       /**< GPT12 base address */
#define FBL_CPUSFR_BASE    0xF8800000u       /**< CPU SFR base address */
#define FBL_STM_BASE       0xF0001000u       /**< System timer module base address */
#define C_COMP_GNU_TRICORE_MULTICAN
#define V_COMP_GNU_TRICORE
#define V_CPU_TRICORE
#define C_CPUTYPE_32BIT
#define VGEN_ENABLE_CANFBL
#define V_SUPPRESS_EXTENDED_VERSION_CHECK
#define V_ENABLE_VSTDLIB_ASR_ABSTRACTION
#define C_CPUTYPE_BITORDER_LSB2MSB

/* FblHal_Tricore ****************************************************************************************************/
#define FBL_PF0_SIZE 3072 
#define FBL_PF1_SIZE 3072 
#define FBL_PF2_SIZE 0 
#define FBL_PF3_SIZE 0 
#define FBL_PF4_SIZE 0 
#define FBL_PF5_SIZE 0 


#endif /* __FBL_HAL_H__ */

