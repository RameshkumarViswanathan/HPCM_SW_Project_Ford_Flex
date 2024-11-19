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
 *            Module: WrapNv
 *           Program: FBL Ford SLP7  (FBL_Ford_SLP7)
 *          Customer: Tech Mahindra Limited
 *       Expiry Date: Not restricted
 *  Ordered Derivat.:  SAK-TC377T
 *    License Scope : The usage is restricted to CBD2300515_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: WrapNv_Cfg.h
 *   Generation Time: 2024-04-01 17:15:36
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

#if !defined (WRAPNV_CFG_H)
# define WRAPNV_CFG_H

/**********************************************************************************************************************
 *  INCLUDES
 *********************************************************************************************************************/

# include "Std_Types.h"
/**********************************************************************************************************************
 *  GLOBAL CONSTANT MACROS
 *********************************************************************************************************************/


/*******************************************************************************
 *                                 ADDRESS        HANDLE         DESCRIPTION
 *   
 *   Memory Layout
 *   |
 *   +-- LastServerMsgId          0x70001C00     1              Last Server Message ID
 *   |
 *   +-- ServerMsgIdFlag          0x70001C08     2              Server Message ID binary flag
 *******************************************************************************/

/** General defines *********************************************************** */
#define WRAPNV_USECASE_DRVEEP
#define WRAPNV_MAINFUNCTION_POLLING          STD_OFF
#define WRAPNV_DEV_ERROR_REPORT              STD_ON

/** Size defines ************************************************************** */
#define kEepSizeLastServerMsgId              0x08u
#define kEepSizeServerMsgIdFlag              0x01u

/** Address defines *********************************************************** */
#define kEepFblBaseAddress                   0x70001C00u
#define kEepStartAddress                     kEepFblBaseAddress
#define kEepAddressLastServerMsgId           (kEepStartAddress)
#define kEepAddressServerMsgIdFlag           (kEepAddressLastServerMsgId + kEepSizeLastServerMsgId)
#define kEepEndAddress                       (kEepAddressServerMsgIdFlag + kEepSizeServerMsgIdFlag - 1u)
#define kEepSizeOfEeprom                     (kEepEndAddress - kEepStartAddress + 1u)

/** Access macros ************************************************************* */

/* PRQA S 3453 FctLikeMacroLabel */ /* MD_MSR_FctLikeMacro */

#define ApplFblNvReadLastServerMsgId(buf)    ((EepromDriver_RReadSync((buf), kEepSizeLastServerMsgId, kEepAddressLastServerMsgId) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)
#define ApplFblNvReadPartialLastServerMsgId(buf, offset, length) ((EepromDriver_RReadSync((buf), (length), (kEepAddressLastServerMsgId + (offset))) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)
#define ApplFblNvWriteLastServerMsgId(buf)   ((EepromDriver_RWriteSync((IO_MemPtrType)(buf), kEepSizeLastServerMsgId, kEepAddressLastServerMsgId) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)

#define ApplFblNvReadServerMsgIdFlag(buf)    ((EepromDriver_RReadSync((buf), kEepSizeServerMsgIdFlag, kEepAddressServerMsgIdFlag) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)
#define ApplFblNvReadPartialServerMsgIdFlag(buf, offset, length) ((EepromDriver_RReadSync((buf), (length), (kEepAddressServerMsgIdFlag + (offset))) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)
#define ApplFblNvWriteServerMsgIdFlag(buf)   ((EepromDriver_RWriteSync((IO_MemPtrType)(buf), kEepSizeServerMsgIdFlag, kEepAddressServerMsgIdFlag) == IO_E_OK) ? WRAPNV_E_OK : WRAPNV_E_NOT_OK)

#define ApplFblIsValidEepAddress(i)          ((i) >= kEepStartAddress) && ((i) <= kEepEndAddress)
#define ApplFblIsValidEepMgrHandle(i)        ((i) >= kEepMgrFirstHandle) && ((i) <= kEepMgrLastHandle)

/* PRQA L:FctLikeMacroLabel */


/**********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 *********************************************************************************************************************/
# define WRAPNV_START_SEC_CODE
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

FUNC(void, WRAPNV_CODE) WrapNv_InitConfig( void );


# define WRAPNV_STOP_SEC_CODE
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/**********************************************************************************************************************
 *  USER CONFIG FILE
 *********************************************************************************************************************/



#endif  /* WRAPNV_CFG_H */

/**********************************************************************************************************************
 *  END OF FILE: WrapNv_Cfg.h
 *********************************************************************************************************************/

