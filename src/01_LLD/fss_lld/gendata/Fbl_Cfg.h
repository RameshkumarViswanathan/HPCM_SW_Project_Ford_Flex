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
 *              File: Fbl_Cfg.h
 *   Generation Time: 2023-10-04 09:31:54
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


#if !defined(__FBL_CFG_H__)
#define __FBL_CFG_H__

/* Global Constant Macros ********************************************************************************************/
#ifndef FBL_USE_DUMMY_STATEMENT
#define FBL_USE_DUMMY_STATEMENT STD_OFF /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef FBL_DUMMY_STATEMENT
#define FBL_DUMMY_STATEMENT(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef FBL_DUMMY_STATEMENT_CONST
#define FBL_DUMMY_STATEMENT_CONST(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
#endif
#ifndef FBL_ATOMIC_BIT_ACCESS_IN_BITFIELD
#define FBL_ATOMIC_BIT_ACCESS_IN_BITFIELD STD_OFF /* /MICROSAR/EcuC/EcucGeneral/AtomicBitAccessInBitfield */
#endif
#ifndef FBL_ATOMIC_VARIABLE_ACCESS
#define FBL_ATOMIC_VARIABLE_ACCESS 32u /* /MICROSAR/EcuC/EcucGeneral/AtomicVariableAccess */
#endif
#ifndef FBL_PROCESSOR_TC377T
#define FBL_PROCESSOR_TC377T
#endif
#ifndef FBL_COMP_GCCHIGHTEC
#define FBL_COMP_GCCHIGHTEC
#endif
#ifndef FBL_GEN_GENERATOR_MSR
#define FBL_GEN_GENERATOR_MSR
#endif
#ifndef FBL_CPUTYPE_BITORDER_LSB2MSB
#define FBL_CPUTYPE_BITORDER_LSB2MSB /* /MICROSAR/vSet/vSetPlatform/vSetBitOrder */
#endif
#ifndef FBL_CONFIGURATION_VARIANT_PRECOMPILE
#define FBL_CONFIGURATION_VARIANT_PRECOMPILE 1
#endif
#ifndef FBL_CONFIGURATION_VARIANT_LINKTIME
#define FBL_CONFIGURATION_VARIANT_LINKTIME 2
#endif
#ifndef FBL_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE
#define FBL_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE 3
#endif
#ifndef FBL_CONFIGURATION_VARIANT
#define FBL_CONFIGURATION_VARIANT FBL_CONFIGURATION_VARIANT_LINKTIME
#endif
#ifndef FBL_POSTBUILD_VARIANT_SUPPORT
#define FBL_POSTBUILD_VARIANT_SUPPORT STD_OFF
#endif

/* FblOem__base ******************************************************************************************************/
#define FBL_ENABLE_STAY_IN_BOOT 
#define FBL_USE_OWN_MEMCPY 
#define FBL_WATCHDOG_ON 
#define FBL_WATCHDOG_TIME                        (1u / FBL_REPEAT_CALL_CYCLE) 
#define FBL_HEADER_ADDRESS                       0x805A0000u 
#define FBL_ENABLE_APPL_TIMER_TASK 
#define FBL_ENABLE_APPL_TASK 
#define FBL_DISABLE_APPL_STATE_TASK 
#define SWM_DATA_MAX_NOAR                        16u 
#define FBL_DIAG_BUFFER_LENGTH                   2050u 
#define FBL_DIAG_TIME_P2MAX                      (25u / FBL_REPEAT_CALL_CYCLE) 
#define FBL_DIAG_TIME_P3MAX                      (5000u / FBL_REPEAT_CALL_CYCLE) 
#define FBL_DISABLE_SLEEPMODE 
#define FBL_SLEEP_TIME                           0u 
#define FBL_DISABLE_GAP_FILL 
#define kFillChar                                0xFFu 
#define FBL_DISABLE_GATEWAY_SUPPORT 
#define FBL_ENABLE_PRESENCE_PATTERN 
#define FBL_ENABLE_FBL_START 
#define FBL_ENABLE_COMMON_DATA 
#define FBL_DISABLE_RESPONSE_AFTER_RESET 
#define FBL_DISABLE_USERSUBFUNCTION 
#define FBL_DISABLE_USERSERVICE 
#define FBL_DISABLE_USERROUTINE 
#define FBL_DIAG_TIME_S3EXT                      (0u / FBL_REPEAT_CALL_CYCLE) 
#define FBL_DIAG_TIME_S3PRG                      (5000u / FBL_REPEAT_CALL_CYCLE) 
#define FBL_DISABLE_HARDWARE_SWAP 
#define FBL_DISABLE_XCP 
#define FBL_DIAG_ENABLE_FLASHDRV_DOWNLOAD 
#define FBL_DIAG_DISABLE_FLASHDRV_ROM 
#define FBL_DISABLE_DATA_PROCESSING 
#define FBL_DISABLE_ENCRYPTION_MODE 
#define FBL_DISABLE_COMPRESSION_MODE 
#define FBL_INTEGRATION                          2u 
#define FBL_PRODUCTION                           1u 
#define FBL_PROJECT_STATE                        FBL_INTEGRATION 
#define FBL_ENABLE_SYSTEM_CHECK 
#define FBL_ENABLE_DEBUG_STATUS 
#define FBL_ENABLE_ASSERTION 
#define FBL_MEM_PROC_BUFFER_SIZE                 256u 
#define FBL_MEM_DISABLE_VERIFY_INPUT 
#define FBL_MEM_DISABLE_VERIFY_PROCESSED 
#define FBL_MEM_DISABLE_VERIFY_PIPELINED 
#define FBL_MEM_ENABLE_VERIFY_OUTPUT 
#define FBL_MEM_VERIFY_SEGMENTATION              256u 
#define FBL_DISABLE_ADAPTIVE_DATA_TRANSFER_RCRRP 
#define FBL_ENABLE_PIPELINED_PROGRAMMING 
#define FBL_DISABLE_SUSPEND_PROGRAMMING 
#define FBL_MEM_WRITE_SEGMENTATION               256u 
#define FBL_ENABLE_UNALIGNED_DATA_TRANSFER 
#define FBL_BLOCK_START_ADDRESS                  0x805A0000u 
#define FBL_BLOCK_LENGTH                         327680u 
#define FBL_DISABLE_OTA 
#define FBL_DISABLE_ONE_STEP_UPDATER 

/* FblHal ************************************************************************************************************/
#include "FblHal_Cfg.h"
/* FblOem_Ford *******************************************************************************************************/
#define FBL_MAX_DID_COUNT                        5 
#define FBL_DIAG_ENABLE_UPLOAD 
#define FBL_ENABLE_SEED_KEY_MODULE 
#define FBL_DIAG_DISABLE_UPDATE_SEC_BYTES 
#define SEC_ECU_KEY_BYTE_ARRAY                   {0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu} 
#define SEC_ECU_KEY_LENGTH                       0x0Cu 
#define FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER 
#define FBL_ENABLE_VALSTRUCT 
#define FBL_VALSTRUCT_TAGBEGIN_PATTERN           0x74EBE612u 
#define FBL_VALSTRUCT_TAGEND_PATTERN             0xF12A1E2Du 
#define FBL_DISABLE_FLASH_ERASED_DETECTION 
#define FBL_FLASH_ERASED_PATTERN_SIZE            0x0010u 
#define FBL_DISABLE_OTA 
#define FBL_DIAG_DISABLE_SAFE_SWAP 
#define FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING 
#define FBL_DIAG_SINGLE_KEY 
#define FBL_DIAG_KEY_MOD_LENGTH                  256u 
#define FBL_DIAG_KEY_EXP_LENGTH                  256u 

/* User Config File **************************************************************************************************/
/* User Config File Start */
/* Mandatory Compatibility  ******************************************************************************************/
/* Generation tool Compatibility */
#define VGEN_ENABLE_CANFBL
#define VGEN_DELIVERY_VERSION_BYTE_0         0x00u       /* Replace this value with major release version.For example, in case of Rel Tag 28.07.20 use value 28 here   */
#define VGEN_DELIVERY_VERSION_BYTE_1         0x00u       /* Replace this value with minor release version. For example, in case of Rel Tag 28.07.20 use value 07 here  */
#define VGEN_DELIVERY_VERSION_BYTE_2         0x00u       /* Replace this value with bugfix release version.For example,in case of Rel Tag 28.07.20 use value 20 here   */
#define VGEN_DELIVERY_VERSION_BYTE_3         0x00u       /* Replace this value with byte 3 of CBD number. For example, in case of CBD2200179 D01 use value 02 here     */
#define VGEN_DELIVERY_VERSION_BYTE_4         0x00u       /* Replace this value with byte 2 of CBD number. For example, in case of CBD2200179 D01 use value 20 here     */
#define VGEN_DELIVERY_VERSION_BYTE_5         0x00u       /* Replace this value with byte 1 of CBD number. For example, in case of CBD2200179 D01 use value 01 here     */
#define VGEN_DELIVERY_VERSION_BYTE_6         0x00u       /* Replace this value with byte 0 of CBD number. For example, in case of CBD2200179 D01 use value 79 here     */
#define VGEN_DELIVERY_VERSION_BYTE_7         0x00u       /* Replace this value with delivery number. For example, in case of CBD2200179 D01 use value 01 here          */
#define VGEN_DELIVERY_VERSION_BYTE_8         0x00u       /* Unused */
#define VGEN_DELIVERY_VERSION_BYTE_9         0x00u       /* Unused */

/* Define Dummy OsCounter */
#define OsCounter 0

/* Compatibility defines for FBL standard TP */
#define kDiagCallCycle                          1u
#define kFblTpBufferSize                     FBL_DIAG_BUFFER_LENGTH

/*  Mandatory Diagnostic  *********************************************************************************************/
/* Diagnostic options */
#define FBL_DIAG_ENABLE_SESSION_PARAMETERS
#define FBL_DIAG_ENABLE_FIXED_TRANSFER_ALFI
#define FBL_DIAG_DISABLE_ENUMS_IDX

/* Logical blocks are mandatory */
# define FBL_ENABLE_USE_LOGICAL_BLOCKS

#if defined( FBL_ENABLE_SEED_KEY_MODULE )
/* Enable Ford seed/key algorithm */
# define FBL_ENABLE_SECMOD_FORD
#endif

/* Define default value for output verification:
 * V_NULL means internal handling (SecM_VerificationClassDDD), any other value means user specific function */
#define SecM_Default       V_NULL

/* Data Processing */
#ifdef FBL_ENABLE_COMPRESSION_MODE
#define FBL_ENABLE_PROCESSED_DATA_LENGTH
#else
#define FBL_DISABLE_PROCESSED_DATA_LENGTH
#endif

/* Communication stack  **********************************************************************************************/
#if defined( FBL_ENABLE_PIPELINED_PROGRAMMING )
/* Task code in RAM is required for pipelined programming */
# define FBLCW_ENABLE_TASK_CODE_IN_RAM
#elif defined( FBL_MEM_ENABLE_VERIFY_PIPELINED )
/* Reception in state task is required for pipelined verification (if pipelined programming is not enabled) */
# define FBLCW_ENABLE_RECEPTION_IN_STATE_TASK
#endif

/* CAN confirmation required by CW */
#define FBL_ENABLE_CAN_CONFIRMATION

/* Configurable value(s) >>> */
/* Enable XCP */
#define FBL_ENABLE_XCP
/* <<< Configurable value(s) */

/* Internal settings *************************************************************************************************/
/* Configurable value(s) >>> */
/* Enable Vector test specific hardware configurations */
#define FBL_ENABLE_VECTOR_HW
/* <<< Configurable value(s) */


/* User Config File End */


/* User Section ******************************************************************************************************/

#endif /* __FBL_CFG_H__ */

