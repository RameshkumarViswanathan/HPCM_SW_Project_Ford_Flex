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
 *            Module: FblBmHdr
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: FblBmHdr_Cfg.h
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

#if !defined (FBLBMHDR_CFG_H)
# define FBLBMHDR_CFG_H

/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/

# include "Std_Types.h"

/**********************************************************************************************************************
 *  GLOBAL CONSTANT MACROS
 *********************************************************************************************************************/

/* Configuration major version identification */ 
# define FBLBMHDR_CFG_MAJOR_VERSION 2u 
/* Configuration minor version identification */ 
# define FBLBMHDR_CFG_MINOR_VERSION 2u 
/* Defines the configuration magic flag */ 
# define FBLBMHDR_MAGIC_FLAG 0xECE9654Au 
/* Defines the number of verification entries */ 
# define FBLBMHDR_NUM_OF_VERIFICATION_ENTRIES 1u 
/* Defines the number of targets */ 
# define FBLBMHDR_NUM_OF_TARGETS 4u 
/* Defines invalid entry address */ 
# define FBLBMHDR_ENTRY_ADDRESS_INVALID 0xFFFFFFFFu 
/* Defines if a verification list in the FblBmHdrHeader structure is required */ 
# define FBLBMHDR_DISABLE_HEADER_VERIFICATION_LIST 

/* General define block */
# ifndef FBLBMHDR_USE_DUMMY_STATEMENT
#  define FBLBMHDR_USE_DUMMY_STATEMENT STD_OFF /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
# endif
# ifndef FBLBMHDR_DUMMY_STATEMENT
#  define FBLBMHDR_DUMMY_STATEMENT(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
# endif
# ifndef FBLBMHDR_DUMMY_STATEMENT_CONST
#  define FBLBMHDR_DUMMY_STATEMENT_CONST(v)  /* PRQA S 3453 */ /* MD_MSR_FctLikeMacro */  /* /MICROSAR/vSet/vSetGeneral/vSetDummyStatementKind */
# endif
# ifndef FBLBMHDR_ATOMIC_BIT_ACCESS_IN_BITFIELD
#  define FBLBMHDR_ATOMIC_BIT_ACCESS_IN_BITFIELD STD_OFF /* /MICROSAR/EcuC/EcucGeneral/AtomicBitAccessInBitfield */
# endif
# ifndef FBLBMHDR_ATOMIC_VARIABLE_ACCESS
#  define FBLBMHDR_ATOMIC_VARIABLE_ACCESS 32u /* /MICROSAR/EcuC/EcucGeneral/AtomicVariableAccess */
# endif
# ifndef FBLBMHDR_PROCESSOR_TC377T
#  define FBLBMHDR_PROCESSOR_TC377T
# endif
# ifndef FBLBMHDR_COMP_GCCHIGHTEC
#  define FBLBMHDR_COMP_GCCHIGHTEC
# endif
# ifndef FBLBMHDR_GEN_GENERATOR_MSR
#  define FBLBMHDR_GEN_GENERATOR_MSR
# endif
# ifndef FBLBMHDR_CPUTYPE_BITORDER_LSB2MSB
#  define FBLBMHDR_CPUTYPE_BITORDER_LSB2MSB /* /MICROSAR/vSet/vSetPlatform/vSetBitOrder */
# endif
# ifndef FBLBMHDR_CONFIGURATION_VARIANT_PRECOMPILE
#  define FBLBMHDR_CONFIGURATION_VARIANT_PRECOMPILE 1
# endif
# ifndef FBLBMHDR_CONFIGURATION_VARIANT_LINKTIME
#  define FBLBMHDR_CONFIGURATION_VARIANT_LINKTIME 2
# endif
# ifndef FBLBMHDR_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE
#  define FBLBMHDR_CONFIGURATION_VARIANT_POSTBUILD_LOADABLE 3
# endif
# ifndef FBLBMHDR_CONFIGURATION_VARIANT
#  define FBLBMHDR_CONFIGURATION_VARIANT FBLBMHDR_CONFIGURATION_VARIANT_PRECOMPILE
# endif
# ifndef FBLBMHDR_POSTBUILD_VARIANT_SUPPORT
#  define FBLBMHDR_POSTBUILD_VARIANT_SUPPORT STD_OFF
# endif


/**********************************************************************************************************************
 *  GLOBAL FUNCTION MACROS
 *********************************************************************************************************************/

/* Get MAC job ids */
# define FblBmHdr_GetFblSbMacId(targetId)        FblBmHdrTargets[targetId]

/**********************************************************************************************************************
 *  GLOBAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/

/* All predefined targets */
typedef enum
{
  FBLBMHDR_TARGET_FBL = 0, 
  FBLBMHDR_TARGET_FBLUPDATER = 1, 
  FBLBMHDR_TARGET_APPL = 2, 
  FBLBMHDR_TARGET_DATA = 3
} tFblBmHdrTargetHandle;

/* Structure of the verification list */
typedef struct
{
   uint32 address;
   uint32 length;
} tFblBmHdrVerificationList;

/* Structure of the BootManager header */
typedef struct
{
   uint32                     bmMagicFlag;
   uint32                     bmEntryAddress;
   tFblBmHdrTargetHandle      bmTargetHandle;
   uint32                     bmBlockStartAddress;
   uint32                     bmBlockLength;
   uint32                     bmAuthenticationHeaderAddress;
} tFblBmHdrHeader;

/**********************************************************************************************************************
 *  GLOBAL DATA PROTOTYPES
 *********************************************************************************************************************/

#define FBLBMHDR_BMHEADER_START_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

extern CONST(tFblBmHdrHeader, FBLBMHDR_CONST) FblBmHdrHeader;

#define FBLBMHDR_BMHEADER_STOP_SEC_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

# define FBLBMHDR_START_SEC_CONST
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

extern CONST(uint32, FBLBMHDR_CONST) FblBmHdrTargets[FBLBMHDR_NUM_OF_TARGETS];

# define FBLBMHDR_STOP_SEC_CONST
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

/**********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 *********************************************************************************************************************/

# define FBLBMHDR_START_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */


# define FBLBMHDR_STOP_SEC_CODE
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */

/**********************************************************************************************************************
 *  USER CONFIG FILE
 *********************************************************************************************************************/



#endif /* FBLBMHDR_CFG_H */

/**********************************************************************************************************************
 *  END OF FILE: FblBmHdr_Cfg.h
 *********************************************************************************************************************/