/******************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                     */
/* All right reserved                                                         */
/******************************************************************************/
/*  MODULE  mwram_mem_appl.h                                                  */
/******************************************************************************/
/*  BASE MODULE (FORD)                                                        */
/******************************************************************************/
/*  VERSION  0.0.1        | PROJECT (FORD) Traction Inverter                  */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*      Middleware RAM MEMORY                                                 */
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
#ifndef MWRAM_MEM_APPL_H_
#define MWRAM_MEM_APPL_H_

extern U32 CpHWIO_g_StackStrtCPU0[];
extern U32 CpHWIO_g_StackEndCPU0[];
// U32 CpHWIO_g_StackStrtCPU1[];
// U32 CpHWIO_g_StackEndCPU1[];
//U32 CpHWIO_g_StackStrtCPU2[];
extern U32 CpHWIO_g_StackEndCPU2[];

#define RAM_ECC_FAULT_DETECTED	(1U)
#define RAM_ECC_FAULT_NONE		(0U)

#define NO_FAULT 				(0U)
#define FAULT 	 				(1U)

#define CLEAR 				    (0U)
#define SET 	 				(1U)

#define DMAC_ID_0				(0U)
#define DMAC_ID_1				(1U)

#define DMA_XFER_NOERROR 		(0U)
#define DMA_XFER_ERROR 			(1U)

#define ALARM_STATUS_FAULT		(1U)
#define ALARM_STATUS_NO_FAULT	(0U)
#define RAM_INVALID_SECTION		(0xFF)

#define RAM_ECC_ALRM_DSBL		(0U)
#define RAM_ECC_ALRM_ENBL		(1U)

#define RAM_ADDR_SEL			(0U)
#define CACHE_ADDR_SEL			(1U)
#define CACHE_ADDR_MASK			(0xFFFFF000)

#define BIOS_RAM_CPU_SPECIFIC	(12U)

#define BLKM_1MOVE_VAL			(0x00000000U)
#define BLKM_2MOVES_VAL			(0x00010000U)
#define BLKM_3MOVES_VAL			(0x00050000U)
#define BLKM_4MOVES_VAL			(0x00020000U)
#define BLKM_5MOVES_VAL			(0x00060000U)
#define BLKM_8MOVES_VAL			(0x00030000U)

#define MTU_CLC_DISR_MASK       (0xFFFFFFFEU)
#define DMA_CHCFGR_BLKM_MASK    (0xFFF8FFFFU)
#define DMA_CLRE_MASK           (0xF8CCFFFFU)
#define DMA_CLRE_ALL_CLR        (0x07330000U)
#define MC_ECCS_TRE_SET         (0x00000010U)
#define MC_ECCS_TRE_MASK        (0xFFFFFFEFU)
#define MTU_MEMTEST0_CPU0PSEN_MASK  (0xFFFEFFFFU)
#define MTU_MEMTEST0_CPU0PSEN_SFT   (16U)

#define LOCK 					(1U)
#define UNLOCK					(0U)

#define ENABLE_ALL_MASTERS      (0xFFFFFFFF)


#define STACK_NOERRORS_DETECTED		(0U)
#define STACK_OVERFLOW_DETECTED		(1U)
#define STACK_UNDERFLOW_DETECTED	(2U)
// #define CPU0_STACK_START_ADDR     ( (U32) CpHWIO_g_StackEndCPU1 )
// #define CPU0_STACK_END_ADDR       ( (U32) CpHWIO_g_StackStrtCPU1 )
// #define CPU1_STACK_START_ADDR     ( (U32) CpHWIO_g_StackEndCPU0 )
// #define CPU1_STACK_END_ADDR       ( (U32) CpHWIO_g_StackStrtCPU0 )

// #define CPU2_STACK_START_ADDR     ( (U32) CpHWIO_g_StackEndCPU2 )
// #define CPU2_STACK_END_ADDR       ( (U32) CpHWIO_g_StackStrtCPU2 )
#define CPU0_STACK_START_ADDR         (0x7003C000u)
#define CPU0_STACK_END_ADDR           (0x7001E780)
#define CPU1_STACK_START_ADDR         (0x6003c000u)
#define CPU1_STACK_END_ADDR           (0x60000000u)
#define CPU2_STACK_START_ADDR         (0x7003C000u)
#define CPU2_STACK_END_ADDR           (0x7001E780u)

#define CPU_STACK_INIT_PATTERN    ( BIOS_CORE_STACK_INIT_PATTERN ) // Used in PUP file.

#define CPU_STACK_SEARCH_LENGTH   ( 32 )
#define CPU_STACK_NULL            ( 0x00000000 )
#define CPU_STACK_PEAK_MIN        ( 4 )			// As per CTRS requirement for STACK usage peak range from 4 to 65535 bytes
#define CPU_STACK_SIZE_MIN		  ( 8 )

#ifdef _DIABDATA_C_TRICORE_
#if (_DIABDATA_C_TRICORE_ == 1U)
/*******************************************************************************
** Macro Syntax : get_return_addr(void)                                       **
**                                                                            **
** Parameters (in) :  None                                                    **
** Parameters (out):  None                                                    **
** return value    : uint32 (address value)                                   **
** Description    : gets the exception return address                         **
**                                                                            **
*******************************************************************************/
asm volatile U32 GET_RETURN_ADDR()
{
//!"%d2"
  mov  %d2, %a11
}

#endif /* #if (_DIABDATA_C_TRICORE_ == 1U) */
#endif /* _DIABDATA_C_TRICORE_ */


#define CHECK_DMA_ERR_FLAGS(str)  ((str.DmaMovEngInvalidErr != 0)	\
								  || (str.DmaMovEngSrcErr != 0)		\
								  || (str.DmaMovEngDestErr != 0)	\
								  || (str.DmaMovEngSpbErr != 0)  	\
								  || (str.DmaMovEngSriErr !=0)		\
								  || (str.DmaMovEngRamErr !=0)		\
								  || (str.DmaMovEngSafeLinkListErr !=0)	\
								  || (str.DmaMovEngLinkListErr !=0))

#define CLEAR_DMA_ERR_FLAGS(str) 	str.DmaMovEngInvalidErr = 0; \
									str.DmaMovEngSrcErr = 0;	\
									str.DmaMovEngDestErr = 0; \
									str.DmaMovEngSpbErr = 0;	\
									str.DmaMovEngSriErr = 0; \
									str.DmaMovEngRamErr = 0;	\
									str.DmaMovEngSafeLinkListErr = 0; \
									str.DmaMovEngLinkListErr = 0;

#define CLEAR_DMA_ENG_ERR_FLAGS(mod)	if(mod == DMAC_ID_0){					\
											OS_ModifyPeripheral32(0U,  (volatile uint32*)(volatile void*)(&(MODULE_DMA.BLK0.CLRE.U)), DMA_CLRE_MASK, DMA_CLRE_ALL_CLR);\
										}\
										else{ \
											OS_ModifyPeripheral32(0U,  (volatile uint32*)(volatile void*)(&(MODULE_DMA.BLK1.CLRE.U)), DMA_CLRE_MASK, DMA_CLRE_ALL_CLR);\
										}\
/* RAM Memory Sections */
/* CPU0 PSPR and DCACHE Section */
#define IFX_CPU0_DSPR_START_ADDR    (0x70000000UL)
#define IFX_CPU0_DSPR_END_ADDR      (0x7001DFFFUL)

#define IFX_CPU0_DCACHE_START_ADDR  (0x7001E000UL)
#define IFX_CPU0_DCACHE_END_ADDR    (0x7001FFFFUL)

/* CPU0 PSPR and PCACHE Section */
#define IFX_CPU0_PSPR_START_ADDR  	(0x70100000UL)
#define IFX_CPU0_PSPR_END_ADDR    	(0x70107FFFUL)

#define IFX_CPU0_PCACHE_START_ADDR  (0x70108000UL)
#define IFX_CPU0_PCACHE_END_ADDR    (0x70109FFFUL)

/* CPU1 DSPR and DCACHE Section */
#define IFX_CPU1_DSPR_START_ADDR  	(0x60000000UL)
#define IFX_CPU1_DSPR_END_ADDR  	(0x6003BFFFUL)

#define IFX_CPU1_DCACHE_START_ADDR  (0x6003C000UL)
#define IFX_CPU1_DCACHE_END_ADDR  	(0x6003DFFFUL)

/* CPU1 PSPR and PCACHE Section */
#define IFX_CPU1_PSPR_START_ADDR  	(0x60100000UL)
#define IFX_CPU1_PSPR_END_ADDR  	(0x60107FFFUL)

#define IFX_CPU1_PCACHE_START_ADDR  (0x60108000UL)
#define IFX_CPU1_PCACHE_END_ADDR  	(0x6010FFFFUL)

/* CPU2 DSPR and DCACHE Section */
#define IFX_CPU2_DSPR_START_ADDR  	(0x50000000UL)
#define IFX_CPU2_DSPR_END_ADDR  	(0x5003BFFFUL)

#define IFX_CPU2_DCACHE_START_ADDR  (0x5003C000UL)
#define IFX_CPU2_DCACHE_END_ADDR  	(0x5003DFFFUL)

/* CPU2 PSPR and PCACHE Section */
#define IFX_CPU2_PSPR_START_ADDR  	(0x50100000UL)
#define IFX_CPU2_PSPR_END_ADDR  	(0x50107FFFUL)

#define IFX_CPU2_PCACHE_START_ADDR  (0x50108000UL)
#define IFX_CPU2_PCACHE_END_ADDR  	(0x5010FFFFUL)

/* LMU SRAM Section */
#define IFX_CPUx_LMU_START_ADDR     (0xB0000000UL)
#define IFX_CPUx_LMU_END_ADDR       (0xBFFFFFFFUL)

#define IFX_CPUx_EMEM_START_ADDR    (0xBF000000UL)
#define IFX_CPUx_DMA_START_ADDR     (0xF0012000UL)

#define EMEM_LOWER_ADDR_OFF  		(0xBF000000UL)
#define EMEM_UPPER_ADDR_OFF  		(0xBF100000UL)



#define IFX_MTU_MC_BASE_ADDR       	(0xF0061000U)
#define IFX_SMU_AG_REG_BASE_ADDR	(0xF00369C0U)

#define CPU_0 (0U)
#define CPU_1 (1U)
#define CPU_2 (2U)

#define CPU0_NONSAFE_DMI   (0x00000001)  /* Master Tag ID CPU0_NONSAFE_DMI = 0 */
#define CPU0_SAFE_DMI      (0x00000002)  /* Master Tag ID CPU0_SAFE_DMI = 1 */
#define CPU0_PMI           (0x00010000)  /* Master Tag ID CPU0_PMI = 16 */

#define CPU1_NONSAFE_DMI   (0x00000004)  /* Master Tag ID CPU1_NONSAFE_DMI = 2 */
#define CPU1_SAFE_DMI      (0x00000008)  /* Master Tag ID CPU1_SAFE_DMI = 3 */
#define CPU1_PMI           (0x00020000)  /* Master Tag ID CPU1_PMI = 17 */

#define CPU2_NONSAFE_DMI   (0x00000010)  /* Master Tag ID CPU2_NONSAFE_DMI = 4 */
#define CPU2_SAFE_DMI      (0x00000020)  /* Master Tag ID CPU2_SAFE_DMI = 5 */
#define CPU2_PMI           (0x00040000)  /* Master Tag ID CPU2_PMI = 18 */

#define LMU_RGNLA_ADDR	   (0x00000000)
#define LMU_RGNUA_ADDR	   (0x00001000)
#define LMU_RGNACCENA_SET  (0xFFFFFFFF)

#define RAM_WRITE_DATA_ADDR (0xB0000040)
#define RAM_WRITE_DATA      (0x12345678)

#define TIN_1				(1U)
#define TIN_2				(2U)
#define TIN_3				(3U)
#define TIN_4				(4U)
#define TIN_5				(5U)
#define TIN_6				(6U)
#define TIN_7				(7U)

#define ECC_SMU_ALARM_TIMEOUT	(5000U)
#define ECC_SMU_ALARM_MAX_CNT	(8U)

#define GET_EMEM_ECCD_REG(x)		(((Ifx_MC *)(IFX_MTU_MC_BASE_ADDR + 0x100 * x))->ECCD.U)

#define EMEM_LOWER_INSTANCE_OFF		(46U)
#define EMEM_UPPER_INSTANCE_OFF		(62U)
#define EMEM_LOWER_INSTANCE_END		(61U)
#define EMEM_UPPER_INSTANCE_END		(77U)

/* Memory Controller */
typedef enum Mtu_Mc{
    mc_none        = -1,
    mc_cpu2Dspr0   = 0,
    mc_cpu2Dtag    = 2,
    mc_cpu2Pspr    = 3,
    mc_cpu2Ptag    = 5,
    mc_cpu1Dspr0   = 6,
    mc_cpu1Dtag    = 8,
    mc_cpu1Pspr    = 9,
    mc_cpu1Ptag    = 11,
    mc_miniMcds    = 13,
    mc_cpu0Dspr    = 14,
    mc_cpu0Pspr    = 16,
    mc_cpu0Ptag    = 17,
    mc_cpu0Dtag    = 19,
    mc_cpu1Dspr1   = 20,
    mc_cpu2Dspr1   = 21,
    mc_ethermac    = 22,
    mc_mod1        = 23,
    mc_mod2        = 24,
    mc_mod3        = 25,
    mc_mod4        = 26,
    mc_gtmFifo     = 28,
    mc_gtmMcs0     = 29,
    mc_gtmMcs1     = 30,
    mc_gtmDpll1a   = 31,
    mc_gtmDpll1b   = 32,
    mc_gtmDpll2    = 33,
    mc_psi5        = 34,
    mc_mcan        = 36,
    mc_mcan1       = 37,
    mc_erayObf     = 38,
    mc_erayIbfTbf  = 39,
    mc_erayMbf     = 40,
    mc_eray1Obf    = 41,
    mc_eray1IbfTbf = 42,
    mc_eray1Mbf    = 43,
    mc_mcds        = 45,
    mc_emem0       = 46,
    mc_emem1       = 47,
    mc_emem2       = 48,
    mc_emem3       = 49,
    mc_emem4       = 50,
    mc_emem5       = 51,
    mc_emem6       = 52,
    mc_emem7       = 53,
    mc_emem8       = 54,
    mc_emem9       = 55,
    mc_emem10      = 56,
    mc_emem11      = 57,
    mc_emem12      = 58,
    mc_emem13      = 59,
    mc_emem14      = 60,
    mc_emem15      = 61,
    mc_ememUpper0  = 62,
    mc_ememUpper1  = 63,
    mc_ememUpper2  = 64,
    mc_ememUpper3  = 65,
    mc_ememUpper4  = 66,
    mc_ememUpper5  = 67,
    mc_ememUpper6  = 68,
    mc_ememUpper7  = 69,
    mc_ememUpper8  = 70,
    mc_ememUpper9  = 71,
    mc_ememUpper10 = 72,
    mc_ememUpper11 = 73,
    mc_ememUpper12 = 74,
    mc_ememUpper13 = 75,
    mc_ememUpper14 = 76,
    mc_ememUpper15 = 77,
    mc_cifJpeg1_4  = 78,
    mc_lmu         = 79,
    mc_cifJpeg3    = 80,
    mc_cifCif      = 81,
    mc_dma         = 83,
    mc_ememXtm0    = 84,
    mc_ememXtm1    = 85,
    mc_fft0        = 86,
    mc_fft1        = 87
} Mtu_McType;

typedef struct VsMWRAM_h_ECC_FaultReg
{
	U8 SmuAlarm_Grp;
	U8 SmuAlarm_Num;
	Mtu_McType ECC_MemCtrl_Num;

}VsMWRAM_h_ECC_FaultReg_Type;

typedef enum MemId
{
	CPU0_PSPR = 0,
	CPU0_DSPR,
	CPU1_PSPR,
	CPU1_DSPR0,
	CPU2_PSPR,
	CPU2_DSPR0,
	LMU,
	EMEM0	
}MemIdType;

extern uint32 __CPU0_SP_TOP[];
extern uint32 __CPU0_SP_BOTTOM[];

extern uint32 __CPU1_SP_TOP[];
extern uint32 __CPU1_SP_BOTTOM[];

extern uint32 __CPU2_SP_TOP[];
extern uint32 __CPU2_SP_BOTTOM[];


extern const VsMWRAM_h_ECC_FaultReg_Type CeMWRAM_ECC_Fault_Info[];


#define OS_INT_VECT_START_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */
extern const uint32 const Os_InterruptVectorTable[];
#define OS_INT_VECT_STOP_CONST
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_19.1 */


#endif /* MWRAM_MEM_APPL_H_ */
