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
 *            Module: vBRS
 *           Program: FBL FORD
 *          Customer: 
 *       Expiry Date: Not restricted
 *  Ordered Derivat.: TC387
 *    License Scope : The usage is restricted to CBD2100753_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: ..\Include\EcuM.h
 *   Generation Time: 2021-10-07 17:15:36
 *           Project: DemoBm - Version 1.0
 *          Delivery: CBD2100753_D00
 *      Tool Version: DaVinci Configurator  5.24.21
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 * Please note:
 *    The demo and example programs only show special aspects of the software. With regard to the fact
 *    that these programs are meant for demonstration purposes only, Vector Informatik liability shall be
 *    expressly excluded in cases of ordinary negligence, to the extent admissible by law or statute.
 *********************************************************************************************************************/

#ifndef _ECUM_H_
#define _ECUM_H_

/**********************************************************************************************************************
  INCLUDES
**********************************************************************************************************************/
#include "EcuM_Cbk.h"
#include "ComStack_Types.h"


/*TODO: Techm; Added as part of RTOS Integration */
/*---------------------------Det error ids--------------------------------------------*/
/*(Non-AR) Error for GetResource api*/
#define ECUM_E_OS_GET_RESOURCE_FAILED                                   (0x05U)

/*(Non-AR) Error for ReleaseResource api*/
#define ECUM_E_OS_RELEASE_RESOURCE_FAILED                               (0x06U)
#define ECUM_E_UNINIT                                                   (0x10U)
#define ECUM_E_SERVICE_DISABLED                                         (0x11U)
#define ECUM_E_NULL_POINTER                                             (0x12U)
#define ECUM_E_INVALID_PAR                                              (0x13U)
/*Error ID for indicating failed read operation of NvM*/
#define ECUM_E_NVM_READ_FAILED                                          (0x1AU)
#define ECUM_E_PARAM_POINTER                                            (0x1BU)



#define ECUM_E_STATE_PAR_OUT_OF_RANGE                                   (0x16U)
#define ECUM_E_UNKNOWN_WAKEUP_SOURCE                                    (0x17U)
/*Error code for RAM hash check fail, during wakeup from sleep mode*/
#define ECUM_E_RAM_CHECK_FAILED                                         (0x19U)
#define ECUM_E_COREREADY_TIMEOUT_EXPIRED                                (0x04U)
/*Error if Shutdown service API's called after GoDown,GoHalt or GoPoll is initiated*/
#define ECUM_E_SHUTDOWN_INFO_UPDATED                                   (0xFEU)
/*Error code for Post build selected pointer, if it is inconsistent*/
#define ECUM_E_CONFIGURATION_DATA_INCONSISTENT                          (0x18U)
/*Error code for post build selected pointer, if it is NULL*/
#define ECUM_E_NULL_PTR_RETURNED                                        (0x30U)
/*Error code for post build selected pointer, if it is invalid. ie.) the pointer which is not generated from EcuM configset*/
#define ECUM_E_INVALID_PTR_RETURNED                                     (0x31U)
/*Error code for any core failed to start during EcuM Startup*/
#define ECUM_E_START_CORE_FAILED                                        (0x32U)

#if(ECUM_CFG_MODE_HANDLING == STD_ON)
#define ECUM_E_MULTIPLE_RUN_REQUESTS                                    (0x14U)
#define ECUM_E_MISMATCHED_RUN_RELEASE                                   (0x15U)
#define ECUM_RB_E_ALL_RUN_REQUESTS_KILLED                               (0xffU)
#endif//ECUM_CFG_MODE_HANDLING

#if (ECUM_SLEEP_SUPPORT_ENABLE == TRUE)
/*To distinguish between the singlecore and multicore operation*/
#define ECUM_SINGLE_CORE 0x00
#define ECUM_SLAVE_CORE  0x01
#define ECUM_MASTER_CORE 0x02
#endif//ECUM_SLEEP_SUPPORT_ENABLE

/* Phases of EcuM4.0 flex*/
#define ECUM_PRV_PHASE_START_PREOS                                       (0x01U)
#define ECUM_PRV_PHASE_START_POSTOS                                      (0x02U)
#define ECUM_PRV_PHASE_UP                                                (0x03U)
#define ECUM_PRV_PHASE_OFF_PREOS                                         (0x04U)
#define ECUM_PRV_PHASE_OFF_POSTOS                                        (0x05U)
#define ECUM_PRV_PHASE_SLEEP                                             (0x06U)

#define ECUM_CFG_LENGTH_OF_HASH		(16)
uint8 EcuM_Prv_flgIsModuleInitialised_b ;
uint8 EcuM_Prv_dataPresentPhase_u8;
void EcuM_Shutdown(void);
void EcuM_AL_SwitchOff (void );
void All_ShutDown(void);
void Tlf35584SafeWdg_GoTOStandby(void);
/**********************************************************************************************************************
  GLOBAL FUNCTION PROTOTYPES
**********************************************************************************************************************/
void EcuM_Init(void);
void EcuM_StartupTwo(void);

void EcuM_Prv_StartSlaveCores( void );
void EcuM_ErrorHook(uint16 reason );
void EcuM_Init_Core1(void);
void EcuM_Init_Core2(void);

typedef uint8  AppModeType;  
typedef uint8 EcuM_ShutdownCauseType;
typedef uint16 EcuM_ShutdownModeType;
typedef uint8 EcuM_ShutdownTargetType;
typedef struct
{
    EcuM_ShutdownCauseType  ShutdownCause;
} EcuM_ShutdownInfoType;
typedef struct
{
    EcuM_ShutdownTargetType  ShutdownTarget;
    EcuM_ShutdownModeType   mode;
    EcuM_ShutdownInfoType ShutdownInfo;
} EcuM_ShutdownTargetInfoType;
EcuM_ShutdownTargetInfoType   EcuM_Prv_dataSelectedShutdownTarget_st;
typedef struct
{
    uint8 nbrOfComMPNCRef;                   /*uint8 variable to specify the number of PNC references*/                      
    const uint8 * ListOfPNCRefs;                   /*uint8 pointer to specify the array of PNC references*/
}EcuM_Cfg_dataWkupPNCRefStruct_tst; 
typedef struct
{
    AppModeType DefaultAppMode;
    EcuM_ShutdownTargetInfoType DefaultShutdownTarget; /*Structure to hold the Default Shutdown Target*/
    const EcuM_Cfg_dataWkupPNCRefStruct_tst *adrWkupPNCRefs; /* Pointer to the PNC references associated with Wakeups */
    uint8 PostBuildHash[ECUM_CFG_LENGTH_OF_HASH];
} EcuM_ConfigType;
EcuM_ConfigType* EcuM_Rb_adrConfigPtr_st; /*Pointer to EcuM config Type*/
#endif /*_ECUM_H_*/

