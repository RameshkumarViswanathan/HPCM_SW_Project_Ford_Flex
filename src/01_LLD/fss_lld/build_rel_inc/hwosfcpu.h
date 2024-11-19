#ifndef _HWOSFCPU_H_
#define _HWOSFCPU_H_
/******************************************************************************/
/*  Copyrights (C) 20xx - 20xx FORD Motors                                    */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE  hwosfcpu.h                                                        */
/******************************************************************************/
/*  BASE MODULE  None                                                         */
/******************************************************************************/
/*  VERSION  N/A              | PROJECT (FORD) Traction Inverter              */
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

#include "hwiotype.h"
#include "Platform_Types.h"

#define SCU_WDTCPUxCON1_DR_MSK  (0xFFFFFFF7U)
#define SCU_WDTCPUxCON1_DR_SET  (0x00000008U)

/******************************************************************************/
/*  Extern definition                                                         */
/******************************************************************************/


/******************************************************************************/
/*  HWIO Interfaces                                                           */
/******************************************************************************/

/* 9.80.4.1 Power-Up Procedure */
typedef enum TeHWIO_e_RstSrc
{
  CeHWIO_e_PwrUpReset = 0,
  CeHWIO_e_PwrUpRstTimerWakeUp = 1, /* Not applicable */
  CeHWIO_e_PwrUpRstSerData = 2,
  CeHWIO_e_PwrUpRstIgn = 3,
  CeHWIO_e_PwrUpRstWakeUpSig = 3,   /* not being used - */
  CeHWIO_e_PwrUpRstRequest = 4,     /* not  supported  for 0.4.0*/
  CeHWIO_e_RunRstExtWDT = 10,
  CeHWIO_e_RunRstIntWDT = 11,
  CeHWIO_e_RunRstRequest = 12,		/* not  supported  for 0.4.0 */
  CeHWIO_e_RunRstUnhndldExcptn = 13, /* not supported for 0.4.0 */
  CeHWIO_e_RunRstIllegalInst = 14,   /* not supported for 0.4.0*/
  CeHWIO_e_RunRstFlashECC = 15,
  CeHWIO_e_RunRstRAM_ECC = 16,
  CeHWIO_e_RunRstCacheParity = 17,
  CeHWIO_e_RunRstSignature = 18,      /* not supported  for 0.4.0*/
  CeHWIO_e_RunRstOverTemp = 19,       /* not supported  for 0.4.0*/
  CeHWIO_e_RunRstLossOfLock = 20,  
  CeHWIO_e_RunRstLossOfClock = 21,
  CeHWIO_e_RunRstClockFail = 22,
  CeHWIO_e_RunRstBISTFunctCmplt = 23,
  CeHWIO_e_RunRstStackErr = 24,
  CeHWIO_e_RunRstAccessErr = 25
} TeHWIO_e_RstSrc;

TeHWIO_e_RstSrc GetHWIO_e_RstSrc( void );
U8 GetHWIO_e_RstSrcCPU( void );
U8 *GetHWIO_Ptr_RstSrcAddr( void );
void SetHWIO_PwrUpReset( void );
void SetHWIO_RunningReset( void );
void CntrlBRSR_BootMode(void);

/* 9.80.4.3 Real-Time Operating System */
//typedef enum TeHWIO_e_OS_Task{
// OSK_1msTask = 9,
// OSK_2msTask = 8,
// OSK_8msTask = 7,
// OSK_IPCTask = 6,
// OSK_16msTask =5,
// OSK_30msTask =4,
// OSK_50msTask =3,
// OSK_100msTask =2,
// OSK_idleTask = 1   				
//} TeHWIO_e_OS_Task;

/* 9.80.4.3 Real-Time Operating System */
typedef enum TeHWIO_e_OS_Task{
 OSK_1msTask = 8,
 OSK_2msTask = 7,
 OSK_8msTask = 6,
 OSK_IPCTask = 5,
 OSK_16msTask =4,
 OSK_30msTask =3,
 OSK_50msTask =2,
 OSK_100msTask =1,
 OSK_idleTask = 0   				
} TeHWIO_e_OS_Task;

TeHWIO_e_OS_Task GetHWIO_e_TaskID( void );  
U8 GetHWIO_e_CPU( void );
void EnableHWIO_AllTasks( void );
void DisableHWIO_AllTasks( void );
void LockHWIO_Scheduler( void );
void ReleaseHWIO_Scheduler( void );
U8 PerfmHWIO_e_LockSemaphore( U8 );
U8 GetHWIO_e_SemaphoreSt( U8 );
U8 PerfmHWIO_e_UnlockSemaphore( U8 );
U16 GetHWIO_Cnt_OS_TaskOverrun( TeHWIO_e_OS_Task );
U16 GetHWIO_t_OS_TaskExecution( TeHWIO_e_OS_Task );
U16 GetHWIO_Pct_CPU_Utilization( void );
void DsblHWIO_GM_TaskInits ( void );				/* [6] */
void EnblHWIO_GM_TaskInits ( void );				/* [6] */
void DsblHWIO_CPU(void);
U8 GetHWIO_b_CPU_St(U8);
void CntrlRBSR_CntrlrReset(void);
void CntrlRBSR_Background(void);
void CntrlRBSR_BackgroundCPU2(void);
void MngTSKR_2msOS_Task(void);
void MngTSKR_6p25msOS_Task(void);
void MngTSKR_12p5msOS_Task(void);
void MngTSKR_20msOS_Task(void);
void MngTSKR_25msOS_Task(void);
void MngTSKR_50msOS_Task(void);
void MngTSKR_100msOS_Task(void);
void MngTSKR_250msOS_Task(void);
void MngTSKR_500msOS_Task(void);
void MngTSKR_1000msOS_Task(void);
void MngTSKR_LINSlaveCmpltOS_Task(void); 
void MngTSKR_2msOS_TaskCPU2(void);
void MngTSKR_6p25msOS_TaskCPU2(void);
void MngTSKR_12p5msOS_TaskCPU2(void);
void MngTSKR_20msOS_TaskCPU2(void);
void MngTSKR_25msOS_TaskCPU2(void);
void MngTSKR_50msOS_TaskCPU2(void);
void MngTSKR_100msOS_TaskCPU2(void);
void MngTSKR_250msOS_TaskCPU2(void);
void MngTSKR_500msOS_TaskCPU2(void);
void MngTSKR_1000msOS_TaskCPU2(void);
void MngTSKR_e_PreTask(void);
void MngTSKR_e_PostTask(void);
void MngTSKR_e_OS_Error(U16);
U8 GetVIOS_e_CAN_DD(void);
void SetHWIO_e_TaskActive(TeHWIO_e_OS_Task);

/* 9.80.4.10 Security Peripheral Device Support */
typedef struct TsHWIO_CSM_SymKeyType {
  U32 Length;
  U32 Data;
} TsHWIO_CSM_SymKeyType;


U8 GetHWIO_e_SecPeriphErrs( void );
void MngHWIO_CSM_Init( void );
U8 SetHWIO_h_CSM_MacGenStart( U16, const TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_MacGenUpdate( U16, const U8 *, U32 );
U8 SetHWIO_h_CSM_MacGenFinish( U16, U8 *, U32 *, U8 );
U8 SetHWIO_h_CSM_MacVerifyStart( U16, const TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_MacVerifyUpdate( U16, const U8 *, U32 );
U8 SetHWIO_h_CSM_MacVerifyFinish( U16, const U8 *, U32, U8 * );
U8 SetHWIO_h_CSM_SymBlkEncryptStart( U16, const TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_SymBlkEncryptUpdate( U16, const U8 *, U32, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymBlkEncryptFinish( U16 );
U8 SetHWIO_h_CSM_SymBlkDecryptStart( U16, const TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_SymBlkDecryptUpdate( U16, const U8 *, U32, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymBlkDecryptFinish( U16 );
U8 SetHWIO_h_CSM_SymEncryptStart( U16, const TsHWIO_CSM_SymKeyType *, const U8 *, U32 );
U8 SetHWIO_h_CSM_SymEncryptUpdate( U16, const U8 *, U32, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymEncryptFinish( U16, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymDecryptStart( U16, const TsHWIO_CSM_SymKeyType *, const U8 *, U32 );
U8 SetHWIO_h_CSM_SymDecryptUpdate( U16, const U8 *, U32, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymDecryptFinish( U16, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymKeyExtractStart( U16 );
U8 SetHWIO_h_CSM_SymKeyExtractUpdate( U16, const U8 *, U32 );
U8 SetHWIO_h_CSM_SymKeyExtractFinish( U16, TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_SymKeyWrapSymStart( U16, const TsHWIO_CSM_SymKeyType *, const TsHWIO_CSM_SymKeyType * );
U8 SetHWIO_h_CSM_SymKeyWrapSymUpdate( U16, U8 *, U32 * );
U8 SetHWIO_h_CSM_SymKeyWrapSymFinish( U16 );
U8 SetHWIO_h_CSM_RandomSeedStart( U16 );
U8 SetHWIO_h_CSM_RandomSeedUpdate( U16, const U8 *, U32 );
U8 SetHWIO_h_CSM_RandomSeedFinish( U16 );
U8 SetHWIO_h_CSM_RandomGenerate( U16, U8 *, U32 );


/* 9.80.6.2 Non-Volatile Code/Calibration Memory */
U8 GetHWIO_e_ROM_Flt( void );
U8 *GetHWIO_y_ROM_AddressFailed( void );
U8 *GetHWIO_y_ROM_InstAddressFailed( void );
void GetHWIO_y_ROM_FailedCPU_Specific( U8 [12] );
void ClrHWIO_ROM_Flt( void );
U8 WriteHWIO_StorageBuf( U32 *, U32, U16 );
void EraseHWIO_StorageBuf( void );

/* 9.80.6.5 RAM Memory */
U8 GetHWIO_e_RAM_Flt( void );
U8 *GetHWIO_y_RAM_AddressFailed( void );
U8 *GetHWIO_y_RAM_InstAddressFailed( void );
void GetHWIO_y_RAM_FailedCPU_Specific( U8 [12] );
void ClrHWIO_RAM_Flt( void );
void SetHWIO_h_RAM_ECC_Init( U32 *, U32, U32 );
U8 GetHWIO_e_CacheRAM_Flt( void );
U8 *GetHWIO_y_CacheRAM_AddressFailed( void );
void ClrHWIO_CacheRAM_Flt( void );
U8 GetHWIO_e_eTPU_Microcode_Flt( void );
void ClrHWIO_eTPU_Microcode_Flt( void );
void SetHWIO_b_WrtProtRAM_LckUnlck( U8 );
void SetHWIO_y_WrtProtRAM_Update( U8 *, U8 *, U8 );
U8 GetHWIO_b_WrtProtRAM_Flt( void );
U8 *GetHWIO_ptr_WrtProtRAM_FltAddr( void );
U8 *GetHWIO_ptr_WrtProtRAM_FltInstAddr( void );
void ClrHWIO_WrtProtRAM_Flt( void );
U8 SetHWIO_s_DMAC_Xfer( U32 *, U32 *, U8 );
U16 GetHWIO_Cnt_StackPeak( void );
U16 GetHWIO_Cnt_StackSize( void );

#endif  /*_HWOSFCPU_H_*/
