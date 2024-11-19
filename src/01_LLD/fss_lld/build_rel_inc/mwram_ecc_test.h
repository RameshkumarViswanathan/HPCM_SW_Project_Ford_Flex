#ifndef _MWRAM_ECC_TEST_H_
#define _MWRAM_ECC_TEST_H_
/******************************************************************************/
/*  Copyrights (C) 20xx - 20xx FORD Motors                                    */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE  mwram_ecc_test.h                                                  */
/******************************************************************************/
/*  BASE MODULE (FORD)                                                        */
/******************************************************************************/
/*  VERSION  1.0.0           | PROJECT (FORD) Traction Inverter               */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    mwram_ecc_test.h                                                        */
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

// #include "hwiotype.h"

#define	SET   								(1U)
#define CLEAR 								(0U)

#define	RAM_ECC_TEST_SUCCESS				(1U)
#define RAM_ECC_TEST_FAILED 				(0U)


/*address of all SRAMs to make dummy read access before enabling MBIST*/
#define SRAM_DSPR0_ADDRESS                  (0x70000000U)
#define SRAM_PSPR0_ADDRESS                  (0x70100000U)
#define SRAM_DSPR1_ADDRESS                  (0x60000000U)
#define SRAM_PSPR1_ADDRESS                  (0x60100000U)
#define SRAM_DSPR2_ADDRESS                  (0x50000000U)
#define SRAM_PSPR2_ADDRESS                  (0x50100000U)
#define SRAM_LMU_ADDRESS                    (0xB0000000U)


#define RAM_ECC_TEST_ADDRESS	            (0x700007F0)

#define MTU_MC_ADDRESS_BASE					(0xF0061000)
#define MTU_MCONTROL_MASK					(0x4000)
#define MTU_RDBFL_REG_WIDTH					(16U)
/**< \brief IfxMtu_MbistSel_cpu0Dspr */
#define MC14_SRAM_NUM_BLOCKS				(8U)	/* #memory blocks * #Multiplexers */
#define MC14_SRAM_DATA_SIZE					(16U)	/* Number of data bits            */
#define MC14_SRAM_ECC_SIZE					(6U)	/* Number of ECC bits             */
#define MC14_SRAM_ECC_INV_POS0				(0U)	/* First ECC bit to invert        */
#define MC14_SRAM_ECC_INV_POS1				(1U)	/* Second ECC bit to invert       */

#define MC14_SRAM_RANGE_ADDR				(0x007F)

#define BIOS_SYS_CLK                     	(100)
#define RAM_ECC_TEST_FILL_TIMEOUT     		( 1000 * BIOS_SYS_CLK )    /* 1ms */
#define RAM_ECC_TEST_INIT_TIMEOUT     		( 500 * BIOS_SYS_CLK )    /* 500us */
#define RAM_ECC_TEST_WRITE_TIMEOUT     		( 250 * BIOS_SYS_CLK )    /* 250us */
#define RAM_ECC_TEST_READ_TIMEOUT     		( 250 * BIOS_SYS_CLK )    /* 250us */
#define BIOS_UC_WDT_TIMEOUT					( 35000 * BIOS_SYS_CLK )   /* 35ms */


typedef enum
{
    MbistSel_none        = -1,
    MbistSel_cpu2Dspr0   = 0,
    MbistSel_cpu1Dspr0   = 6,
    MbistSel_cpu0Dspr    = 14,
	 IfxMtu_MbistSel_dma = 41
} Mtu_MbistSel;

typedef enum
{
	CeMWRAMECC_e_Failed = 0,
	CeMWRAMECC_e_Passed = 1,
	CeMWRAMECC_e_RWTimeout = 2,
	CeMWRAMECC_e_RWFailure = 3,
	CeMWRAMECC_e_RWInit = 4,
} TeMWRAMECC_e_TestResult;

extern U8 VeRAMECC_y_RAM_ECC_Test_RESULT;

void PrfrmMWRAM_ECC_Test(void);
TeMWRAMECC_e_TestResult PrfrmMWRAM_EccTst_Init(Mtu_MbistSel mc);
TeMWRAMECC_e_TestResult PrfrmMWRAM_EccTst_UCETesting(Mtu_MbistSel mc );
void SetMWRAM_EccTst_Rslt(U32* LeRAMECC_g_Tst_Addr);


#endif /* _MWRAM_ECC_TEST_H_ */
