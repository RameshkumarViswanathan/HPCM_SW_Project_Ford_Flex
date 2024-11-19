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
 *              File: Fbl_Lbt.h
 *   Generation Time: 2024-03-15 12:40:32
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


#if !defined(__FBL_LBT_H__)
#define __FBL_LBT_H__

/* Includes **********************************************************************************************************/
#include "Platform_Types.h"

/* Defines ***********************************************************************************************************/
#define FBL_LBT_DISABLE_REPROGRAMMABLE_LBT 
#define FBL_LBT_ENABLE_MANDATORY_TYPE 
#define FBL_LBT_ENABLE_BLOCK_INDEX 
#define FBL_LBT_ENABLE_BLOCK_TYPE 
#define FBL_LBT_ENABLE_HEADER_ADDRESS 
#define FBL_LBT_ENABLE_BM_HEADER_ADDRESS 
#define FBL_LBT_ENABLE_VERIFY_OUTPUT 
#define FBL_LBT_SBL_BLOCK_NUMBER           0u 
#define FBL_LBT_SBL_BLOCK_INDEX            0x00000001u 
#define FBL_LBT_APPL_BLOCK_NUMBER          1u 
#define FBL_LBT_APPL_BLOCK_INDEX           0x00000000u 
#define kBlockTypeApplication              0x0000009Au 
#define kBlockTypeSbl                      0x0000009Bu 
#define kBlockTypeApplicationBlockCount    0x00000001u 
#define kBlockTypeSblBlockCount            0x00000001u 
#define FBL_LBT_BLOCK_COUNT                2u 
#define kNrOfValidationBytes               1u 
#define FBL_LBT_MAGIC_FLAG                 0xA22CB5C4u 

/* Macro to determine if the block table is valid */
#define IsLogicalBlockTableValid()        (FblLogicalBlockTable.magicFlag == FBL_LBT_MAGIC_FLAG)

/* Compatibility defines */
#define FBL_MTAB_SBL_BLOCK_NUMBER       FBL_LBT_SBL_BLOCK_NUMBER 
#define FBL_MTAB_SBL_BLOCK_INDEX        FBL_LBT_SBL_BLOCK_INDEX 
#define FBL_MTAB_APPL_BLOCK_NUMBER      FBL_LBT_APPL_BLOCK_NUMBER 
#define FBL_MTAB_APPL_BLOCK_INDEX       FBL_LBT_APPL_BLOCK_INDEX 
#define kBlockTypeApplicationNoOfBlocks kBlockTypeApplicationBlockCount 
#define kBlockTypeSblNoOfBlocks         kBlockTypeSblBlockCount 
#define FBL_MTAB_NO_OF_BLOCKS           FBL_LBT_BLOCK_COUNT 
#define FBL_MTAB_MAGIC_FLAG             FBL_LBT_MAGIC_FLAG 


/* Typedefs **********************************************************************************************************/
typedef vuint8 tFblLbtBlockNr; 
typedef boolean tFblLbtMandatoryType; 
typedef vuint32 tFblLbtBlockIndex; 
typedef vuint32 tFblLbtBlockType; 
typedef vuint32 tFblLbtMagicFlag; 
typedef vuint8 tFblLbtAssignFlags; 
typedef vuint8 tFblLbtBlockCount; 


/* Entry type of logical block table */
typedef struct tBlockDescriptorTag {
  tFblLbtBlockNr blockNr; /*  Number of logical block  */ 
  tFblLbtMandatoryType mandatoryType; /*  Optional or mandatory block  */ 
  tFblLbtBlockIndex blockIndex;
  tFblLbtBlockType blockType;
  tFblAddress blockStartAddress; /*  Start address of current block  */ 
  tFblLength blockLength; /*  Block length in bytes  */ 
  tFblAddress headerAddress;
  tFblAddress bmHeaderAddress; /*  BM Header Address  */ 
  tExportFct verifyOutput; /*  Output Verification  */ 
} tBlockDescriptor;

/* The logical block table describes the memory layout of logical blocks */
typedef struct tLogicalBlockTableTag {
  tFblLbtMagicFlag magicFlag; /*  Value of FBL_LBT_MAGIC_FLAG - Indicates the existence of the table  */ 
  tFblLbtAssignFlags assignFlags[kNrOfValidationBytes]; /*  Disposability bit field (mandatory/optional)  */ 
  tFblLbtBlockCount noOfBlocks; /*  Number of configured logical blocks  */ 
  tBlockDescriptor logicalBlock[FBL_LBT_BLOCK_COUNT];
} tLogicalBlockTable;

/* Global data *******************************************************************************************************/
V_MEMROM0 extern V_MEMROM1 tLogicalBlockTable V_MEMROM2 FblLogicalBlockTable;

#endif /* __FBL_LBT_H__ */
