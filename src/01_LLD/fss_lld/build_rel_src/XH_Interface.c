/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/*  MODULE  XH_Interface.c                                                   */
/*****************************************************************************/
/*  BASE MODULE                                                              */
/*****************************************************************************/
/*  VERSION  1.0         | PROJECT  FORD                                     */
/*****************************************************************************/
/*  PURPOSE                                                                  */
/*         Trap and interrupt ERROR LOG HANDLING                             */
/*                                                                           */
/*****************************************************************************/
/*  FUNCTIONS                                                                */
/*                                                                           */
/*****************************************************************************/
/*  REMARKS                                                                  */
/*                                                                           */
/*****************************************************************************/
/*  CHANGES                                                                  */
/* ID     dd.mm.yyyy   name          description                             */
/* ---    ----------   -----------   --------------------------------------- */
/* [1]    06.06.2017   Samruddhi         Initial code                        */
/*****************************************************************************/

#include "XH_Interface.h"
#include "XH_ERcrd.h"
#include "IfxScu_regdef.h"
#include "XH_ELog.h"
#include "PUP_function.h"
#include "IfxCpu_reg.h"
LCntxt_t      *pLowerContext;
UCntxt_t  *UCntxt;
U16  XH_stlcx_buff[16];

#pragma section ".RamDlmuCPU1_Section"
ELog_t XH_ELog;
// ELogH_t NxtERcrd;
//ERcrd_t  ERcrd[XH_N_ERCRDS] ;
ERcrd_t  *pERcrd = &(XH_ELog.ERcrd[0]);

#pragma section

void processor_reset(void)
{
  U32 LeRst_g_RstAddr = 0x0000;
  biosInternalRestart( LeRst_g_RstAddr, CeHWIO_e_PwrUpRstRequest );     
}
//sw reset with no elog entry
 ELog_t * XH_GetXH_ELogPtr(void)
 {
   return (&XH_ELog)  ;
 }
 ERcrd_t * XH_GetLastERcrd(void)
 {
  pERcrd = &(XH_ELog.ERcrd[XH_ELog.Header.NxtERcrd]);
  return pERcrd;
 }
 U32 XH_GetErrCount(void)
 {
    return XH_ELog.Header.ErrCount;
 }
 void XH_ClearXH_ELog(void)
 {
   
 }
/**** Application Reset Interface Macros ****/
void XH_NormalReset(void)
{

}

void XH_EnterProgSession(void)
{

}

void XH_ErrorReset(U32 main_type, U32 sub_type, U32 spr2, U32 spr3)
{
XH_ELog.Header.N_Ercrds = XH_N_ERCRDS;
DisableAllInterrupts();
pERcrd = &(XH_ELog.ERcrd[XH_ELog.Header.NxtERcrd]);
pERcrd->A11_BkTrc[0] = VeHWIO_Run_ResetSourceAddress;
pERcrd->XH_Type = (( (main_type & 15) << 4 ) | (sub_type & 15));
pERcrd->CoreID = bios_GetOS_e_CPU_ID(); //Core id need to be loaded 
pERcrd->ASWID = XH_ELog.Header.ASWID ; //6.0 Initialization Requirements

/*6-byte TimeTag  with no timer "rollovers"
pERcrd->TimeTagHi
pERcrd->TimeTagLo
(STM_TIM0 and STM_CAP)  converted to the nearest approximation of microsecond units.*/
U32 current_count;
current_count = Os_Cbk_GetStopwatch();//returns U32
pERcrd->TimeTagHi = (U16)((current_count >> 16) & 0xFFFF);
pERcrd->TimeTagLo = (U16)((current_count ) & 0xFFFF);

/****************************lOWER CONTEXT SAVE****************************/
 U32 PCXICopy    = MFCR(CPU_PCXI);
 LCntxt_t *pCSA_LC    =(LCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
 LCntxt_t *Le_pLowerContext = &(pERcrd->LCntxt);
U8 i;
for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
{
  *Le_pLowerContext = *pCSA_LC;
  pCSA_LC++;
}
/****************************UPPER CONTEXT SAVE****************************/
// U32 PCXICopy    = MFCR(CPU_PCXI);
//  UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
//                                                ((PCXICopy & 0x0000FFFFU) <<  6U));
//   UCntxt_t *Le_pUpperContext = &(pERcrd->UCntxt);
// U8 i;
// for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
// {
//   *Le_pUpperContext = *pCSA_UC;
//   pCSA_UC++;
// }

/***********************************************************************/

// PCXI_UC = pERcrd->UCntxt->PCXI;
// pCSA_BkTrc0 = ((PCXI_UC & 0xF0000) << 12) | ((PCXI_UC & 0xFFFF) << 6));
// pERcrd->PCXI_BkTrc[0] = pCSA_BkTrc0->PCXI;

// PCXI_xC = pERcrd->PCXI_BkTrc[0];
// pCSA_BkTrc1 = ((PCXI_xC & 0xF0000) << 12) | ((PCXI_xC & 0xFFFF) << 6));

// pERcrd->PCXI_BkTrc[1] =pCSA_BkTrc1->PCXI;

// // PCXI_xC.UL?
// pERcrd->A11_BkTrc[1] = A11;


//Current record pointer 
U8 *pLElog_ERcrd = (U8 *)(pERcrd);

for(i = 0x00 ; i < (ERCRD_SIZE - 4);i++)
{
pERcrd->ChkSum32 += *pLElog_ERcrd;
pLElog_ERcrd++;
}

pERcrd->ChkSum32 = ((~ pERcrd->ChkSum32 ) + 1);

XH_ELog.Header.ErrCount +=1;
XH_ELog.Header.NxtERcrd +=1;
if (XH_ELog.Header.NxtERcrd == XH_ELog.Header.N_Ercrds)
{
  XH_ELog.Header.NxtERcrd = 0;
  pERcrd = &(XH_ELog.ERcrd[XH_ELog.Header.NxtERcrd]);
}
else
{
  //nothing  
}
EnableAllInterrupts();
SetHWIO_RunningReset();
}