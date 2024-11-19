/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   OSK_Tasks.h                                                      */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         06.02.2023    Chandra Prakash      Created                    */
/* [2]         17.11.2023    Samruddhi Gadave     added return address       */
/*****************************************************************************/

 #include "biosVD_HWIO_CommonInterface.h"
 #include "hwosfcpu.h"
 #include "RTOS_MW.h"
 #include "HwDo.h"

 #define HWIO_COMMON_NON_INIT_RAM_START



#ifdef _GNU_C_TRICORE_
#if (_GNU_C_TRICORE_ == 1U)

#define GET_RETURN_ADDR()  ({unsigned res;__asm__ volatile ("mov.d\t %d2 , %A11"); __asm__ volatile (" mov\t %0, %%d2" : "=d" (res));  res; })
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif /* _GNU_C_TRICORE_ */


U32  VeHWIO_Run_ResetSourceAddress;
TeHWIO_e_RstSrc  VeHWIO_Run_ResetSource;
TeHWIO_e_CoreID  VeHWIO_Run_ResetSourceCPU;
#ifdef _GNU_C_TRICORE_
#if (_GNU_C_TRICORE_ == 1U)
static INLINE uint32 Get_A11()
{
  U32 RetVal;
  __asm__ volatile ("mov.d %d2 , %a11");
  __asm__ volatile (" mov\t %0, %%d2":"=d"(RetVal)); 
  return RetVal; 
 

}
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif /* _GNU_C_TRICORE_ */
/** Store RESET_SOURCE information **/
void biosSet_e_RstSrc( TeHWIO_e_RstSrc source )
{
    VeHWIO_Run_ResetSource = source;
    return;
}

/** Store RESET_SOURCE_ADDRESS information **/
void biosSet_Ptr_RstSrcAddr( U32 address )
{
    VeHWIO_Run_ResetSourceAddress = address;
    return;
}

/** Store RESET_SOURCE_CPU information **/
void biosSet_e_RstSrcCPU(void)
{
    VeHWIO_Run_ResetSourceCPU = bios_GetOS_e_CPU_ID(); //TODO: bios_GetOS_e_CPU_ID();
}

/* 9.80.4.1 Power-Up Procedure */

/** Report RESET_SOURCE infomation **/
TeHWIO_e_RstSrc GetHWIO_e_RstSrc( void )
{
    return( VeHWIO_COMN_ResetSource );
}

/** Report RESET_SOURCE_ADDRESS information **/
U8 *GetHWIO_Ptr_RstSrcAddr( void )
{
    return( (U8 *)VeHWIO_COMN_ResetSourceAddress );
}

/** Report RESET_SOURCE_CPU information **/
U8 GetHWIO_e_RstSrcCPU( void )
{
    return( VeHWIO_COMN_ResetSourceCPU );
}


void SetHWIO_PwrUpReset( void )
{
    U32 LeRst_g_RstAddr;
	LeRst_g_RstAddr = Get_A11();
	biosInternalRestart( LeRst_g_RstAddr, CeHWIO_e_PwrUpRstRequest );     
}


void SetHWIO_RunningReset( void )
{
U32 LeRst_g_RstAddr;

	/* set reset instruction address */
	//LeRst_g_RstAddr = Get_A11();
		
	/* request FORCE RUNNING RESET */
	biosInternalRestart( LeRst_g_RstAddr, CeHWIO_e_RunRstRequest );
}


 /*------------------------------------------------------------------------------
 *  FUNCTION:           biosInternalRestart
 *  DESCRIPTION:        internal interrupt restart system, generate running reset
 *                      this function is called by SMU interrupts, Traps, etc 
 *                      to generate running reset after their own error statuses 
 *                      have logged
 *  PARAMETERS:         LeRstSrcAddr -- reset address (from CSA that PCX points, A[11] )
 *                      src - reset source
 *  RETURNS:            none
 *------------------------------------------------------------------------------
 */
void biosInternalRestart( U32 LeRstSrcAddr, TeHWIO_e_RstSrc src )   
{
    /* set running reset source code */
    biosSet_e_RstSrc( src );
    biosSet_e_RstSrcCPU();

    /* set running reset source address */
    biosSet_Ptr_RstSrcAddr( LeRstSrcAddr );
    
    /* WDT */
    biosVD_PUP_SetSysMode( CeHWIO_e_BOOT );                     /* mode set to BOOT */
    ServiceHWIO_MainWDT( );
#if 0 /* deleted External-WDT */
    ServiceHWIO_ExtWDT( );
#endif /* deleted External-WDT */
  /*set all ports to Tristate*/
    Set_Ports_Tristate();    
    Mcu_PerformReset();                                          /* Software System Reset */
    while(1);
    
}/* biosInternalRestart( ) */