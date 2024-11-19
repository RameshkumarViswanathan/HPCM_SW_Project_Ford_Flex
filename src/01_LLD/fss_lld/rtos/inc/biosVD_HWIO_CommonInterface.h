#ifndef  __biosVD_HWIO_CommonInterface_H 
#define  __biosVD_HWIO_CommonInterface_H
/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/* All right reserved                                                         */
/******************************************************************************/
/*  MODULE  biosVD_HWIO_CommonInterface.h                                     */
/******************************************************************************/
/*  BASE MODULE (FORD)                                                        */
/******************************************************************************/
/*  VERSION  0.0.1     | PROJECT (FORD) Traction Inverter                     */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    HWIOBOOT and HWIOAPPL common variables / funcitons declaration          */
/*                                                                            */
/******************************************************************************/
/*  FUNCTIONS                                                                 */
/*                                                                            */
/******************************************************************************/
/*  REMARKS                                                                   */
/*                                                                            */
/******************************************************************************/
/*  CHANGES                                                                   */
/* ID     dd.mm.yyyy   name          description                              */
/* ---    ----------   -----------   ---------------------------------------- */
/******************************************************************************/
/* Header Include Files */
#include "Mcal_Compiler.h"
#include "hwosfcpu.h"
#include "Mcu.h"

/* Calibration Include Files */

/* 'C' Include Files */

/* Local Data Definitions */
#define BIOS_BOOT_MODE  0
#define BIOS_APPL_MODE	1
#define BIOS_MFTC_MODE	2

/* Local Function Definitions */
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* Define SYSTEM MODE Interfaces
------------------------------------------------------------------------------*/
typedef enum TeSYS_e_MODE
    {
		CeHWIO_e_INIT    	 = 0,
		CeHWIO_e_BOOT        = 1,
        CeHWIO_e_APPLICATION = 2,
        CeHWIO_e_RMTS        = 3
    } TeSYS_e_MODE;





typedef enum TeHWIO_e_CoreID{
    CeHWIO_e_Core1_CPU		= 0U,
    CeHWIO_e_Core0_CPU2		= 1U,
    CeHWIO_e_Core2_CPU3		= 2U
} TeHWIO_e_CoreID;

#define GetHWIO_CoreID()  \
	((__mfcr(0xfe1cU) == 0U) ? CeHWIO_e_Core0_CPU2 : ((__mfcr(0xfe1cU)  == 1U) ? CeHWIO_e_Core1_CPU : CeHWIO_e_Core2_CPU3)) 

#define HWIO_COMMON_RAM_START
extern  U32         VeHWIO_PUPB_ResetRegValue;
extern  U32         VeHWIO_COMN_ResetSourceAddress;
extern  Mcu_ResetType    VeHWIO_PUPB_Reset;
extern  TeHWIO_e_RstSrc  VeHWIO_COMN_ResetSource;
extern  TeHWIO_e_CoreID  VeHWIO_COMN_ResetSourceCPU;

volatile TeSYS_e_MODE     VeSysMode;

#ifdef BOOT_BUILD                                                               /* boot will use these interfaces */
void biosVD_PUPB_SetSysMode(TeSYS_e_MODE lUC_SysMode)
#else
void biosVD_PUP_SetSysMode(TeSYS_e_MODE lUC_SysMode)                            /* appl will use these interfaces */
#endif
{
  VeSysMode = lUC_SysMode;
}/*--- end of biosVD_PUPB_SetSysMode( ) ---*/

/************************************
 * Core 1 finished PUP step 12 Flag 
 ***********************************/
extern volatile U8 VeHWIO_Core1PUP_FiniFlag;
extern volatile U8 VeHWIO_Core1PUP_SSPInitFlag;
#define HWIO_COMMON_RAM_STOP

typedef enum TeBIST_e_TestResult
{
	CeBIST_TestPassed = 0,
	CeBIST_TestIncomplete = 1,
	CeBIST_TestFailed = 255

}TeBIST_e_TestResult;

typedef struct  VaCCPO_y_ShutOff_item {
    U8    State;
    U8    Cnt;
    U8    e_y_RtryCnt;
    U8    e_y_RtryCntOvrFlg;
} VaCCPO_y_ShutOff_item;

#define HWIO_COMMON_NON_INIT_RAM_START
extern U32         VeHWIO_Run_ResetSourceAddress;
extern TeHWIO_e_RstSrc  VeHWIO_Run_ResetSource;
extern TeHWIO_e_CoreID  VeHWIO_Run_ResetSourceCPU;

/* Global ROM ECC Fault flag in BSS Section of RAM Memory */
extern U8 VeNVCM_y_ROM_ECC_FAULT;
extern U32 *VpNVCM_g_ROM_Fault_Address;
extern U32 *VpNVCM_g_ROM_Inst_Fault_Address;
extern U8 VaNVCM_y_ROM_CPU_Specific_Fault_Address[12];
/* Global variable  Declarations */
extern volatile U8 VeRAM_y_RAM_ECC_FAULT;
extern volatile U8 VeRAM_y_RAM_ECC_FAULT_CPU0;
extern volatile U8 VeRAM_y_RAM_ECC_FAULT_CPU1;
extern volatile U8 VeRAM_y_RAM_ECC_FAULT_CPU2;
extern volatile U8 VeRAM_y_RAM_ECC_FAULT_LMU;
extern volatile U8 VeRAM_y_RAM_ECC_FAULT_EMEM;

extern volatile U8 VeRAM_y_CacheRAM_ECC_FAULT;
extern volatile U8 VeRAM_y_CacheRAM_ECC_FAULT_CPU0;
extern volatile U8 VeRAM_y_CacheRAM_ECC_FAULT_CPU1;
extern volatile U8 VeRAM_y_CacheRAM_ECC_FAULT_CPU2;

extern volatile U32 *VpRAM_g_RAM_Fault_Address;
extern volatile U32 *VpRAM_g_RAM_Inst_Fault_Address;
extern volatile U32 *VpRAM_g_CacheRAM_Fault_Address;
extern volatile U8 VaRAM_y_RamCpuSpecSt[12];
extern volatile U8 VeRAM_y_RAMWrp_Fault;
extern volatile U32 *VpRAM_g_RAMWrp_Fault_Address;
extern volatile U32 *VpRAM_g_RAMWrp_Fault_Inst_Address;
extern U8 VaStack_y_Underflow_Overflow_Status[2];
extern TeBIST_e_TestResult VeBIST_y_OnlineTstRslt;
extern U8 VeBIST_y_BistSchedule;
extern U8 VeMWEXTWDT_y_Ovride_Actv_Flag;


#define HWIO_COMMON_NON_INIT_RAM_STOP

#endif /** __biosVD_HWIO_CommonInterface_H **/
/* EOF */
