#ifndef RTOS_MW_H_
#define RTOS_MW_H_
/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   RTOS_MW_Data.h                                                   */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS                                                                 */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/*****************************************************************************/

#include "RTOS_MW_Data.h"
#include "Mcal_Compiler.h"
#include "BrsHwStartup_TC2xx_TC3xx.h"



#define EIRF_REQUEST_PRESENT		(0x1u)



extern TeHWIO_e_OS_Task bios_GetOS_e_CurrentTask(void);

extern void bios_TrigOS_TaskActive(TeHWIO_e_OS_Task bios_LeOS_e_Task);

extern void bios_PrfrmOS_EnableAllTasks(void);

extern void bios_PrfrmOS_DisableAllTasks(void);

extern void bios_PrfrmOS_LockScheduler(void);

extern void bios_PrfrmOS_ReleaseScheduler(void);

extern void bios_PrfrmOS_Disable_CPU_Tasks(void);

extern void bios_PrfrmOS_Enable_CPU_Tasks(void);

extern void bios_PrfrmOS_DisableCPU(void);



extern void bios_TrigOS_ISR_Active(U32 bios_LeOS_g_Channel);


/*################################################################################
# FUNCITON NAME:   	bios_GetOS_e_CPU_ID                              	  
# DESCRIPTION  :    returns the CPU ID of the CPU which invokes this function
#					by reading the PEID system register
# SCOPE		   :	public										  
# PARAMETERS   :   	none                                                      		
# RETURNS      :    TeOS_e_CPU	
################################################################################*/
#define bios_GetOS_e_CPU_ID()  _mfcr(BRS_CORE_ID_REGISTER)

#endif /* BIOS_RTOS_MW_H_*/
