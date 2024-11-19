/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Distab42.c                                                       */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function defenitions                                       */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         15.05.2023    Chandra Prakash      Created                    */
/*****************************************************************************/

/*****************************************************************************/
/*                  File Inclusion                                           */
/*****************************************************************************/
#include "hwiotype.h"
#include"Ifx_reg.h"
#include"DispTab42.h"
#include "Os.h"
#include "IfxScuWdt.h"

/*****************************************************************************/
/*                   Macro Definitions                                       */
/*****************************************************************************/
#define IFXEMEM_START_ADDR_CPU    (0xB9000000UL)
#define IFXEMEM_SIZE              (0x200000)
#define TRIGS_REGISTER_SETBIT     (1)
#define CERBERUS_BASE_ADDRESS     (0xF0000400)
#define TRIGS_REGISTER            (CERBERUS_BASE_ADDRESS + 0xA0)
#define EMEM_CLOCK_ENABLE         (0x2)
#define EMEM_ECC_ERROR_DISABLE    (0x300)
#define EMEM_UNUSED_MEMORY        (0xFFFFFFFF)
#define EMEM_COMMON_MEMORY        (0)

/*****************************************************************************/
/*                   Global Variable                                         */
/*****************************************************************************/



/*****************************************************************************/
/*                   Structure Definitions                                   */
/*****************************************************************************/
typedef struct tDisplayTable42Info
{
    // constant pointer to number of valid addresses in address table
    // this number is volatile as it is written by the Tool
    uint16 volatile * const pValidAddressCount;
    // constant pointer to table of volatile pointers written by the Tool
    uint32 * volatile * const pAddrTable;
    uint32 * const pOutputTable;       // pointer to output data table
    const uint16 table_max;            // max number of items for this table
    const uint16 trig_bitnum;          // i.e. trigger BITNUM in TRIGS reg format for AURIX uC or bit
};

const struct tDisplayTable42Info DisplayTables[] =
{
    {   // Display Table 1 
        (uint16 volatile * const)0xB9100002,
        (uint32 * volatile * const)0xB9100FB4,
        (uint32 * const)0xB9101784,
        500,
        1
    },
    {   // Display Table 2
        (uint16 volatile * const)0xB9100004,
        (uint32 * volatile * const)0xB9101F54,
        (uint32 * const)0xB9102724,
        500,
        2
    },
    {   // Display Table 3
        (uint16 volatile * const)0xB9100006,
        (uint32 * volatile * const)0xB9102EF4,
        (uint32 * const)0xB91036C4,
        500,
        3
    },
    {   // Display Table 4
        (uint16 volatile * const)0xB9100008,
        (uint32 * volatile * const)0xB9103E94,
        (uint32 * const)0xB9104664,
        500,
        4
    },
    {   // Display Table 5
        (uint16 volatile * const)0xB910000A,
        (uint32 * volatile * const)0xB9104E34,
        (uint32 * const)0xB9105604,
        500,
        5
    },
    {   // Display Table 6
        (uint16 volatile * const)0xB910000C,
        (uint32 * volatile * const)0xB9105DD4,
        (uint32 * const)0xB91065A4,
        500,
        6
    },
    {   // Display Table 7
        (uint16 volatile * const)0xB910000E,
        (uint32 * volatile * const)0xB9106D74,
        (uint32 * const)0xB9107544,
        500,
        7
    },
    {   // Display Table 8
        (uint16 volatile * const)0xB9100010,
        (uint32 * volatile * const)0xB9107D14,
        (uint32 * const)0xB91084E4,
        500,
        8
    }
};

/**************************************************************************/
/* FUNCTION : WriteDisplayTable                                           */
/* PURPOSE : This function writes a Display Table                         */
/* INPUT NOTES : Display Table number to be acquired (0 indexed for       */
/* code purposes)                                                         */
/**************************************************************************/
void WriteDisplayTable(int TableNumber)
{
    struct tDisplayTable42Info *pTables = NULL;
    volatile unsigned long *pAddr       = NULL;
    uint16 volatile * test_add          = NULL;
    uint16 Loop_Count;

    pTables    = (struct tDisplayTable42Info *)(&DisplayTables);
    test_add   = pTables[TableNumber].pValidAddressCount;
    Loop_Count = *test_add;
    
    // Loop through the Address Table based on Valid Address Count
    for (int i = 0; i < Loop_Count; i++)
    {
        // =========================================================
        // CUSTOMER CHECKS: Begin
        // Various Customer checks should go here, a few simple
        // examples have been included
        // This example Prevents any Addresses less than 0x70000000
        // From being processed.
        if (*pTables[TableNumber].pAddrTable[i] < 0x70000000)
            continue;
        
        // Since Display Table 42 is a 32-bit access for all reads
        // This example Conditions the Address to be forced to the
        // Nearest Address that can be accessed 32-Bits at one time.
        // This example is for an INFINEON TRICORE AURIX. 32-Bit
        // Access is legal at the 16-Bit Boundary
        pAddr = (volatile unsigned long *)((unsigned long)(pTables[TableNumber].pAddrTable[i]) & 0xFFFFFFFE);
        // CUSTOMER CHECKS: End
        // =========================================================
        // Fetch the Data at the Designated pAddr and place it in the
        // Corresponding OutputTable.
        pTables[TableNumber].pOutputTable[i] = *pAddr;
    }
     WriteTriggerComplete(TableNumber);
}

//***************************************************************************************
/*Example implementation for setting trigger complete bits in the Infineon AURIX uC    */
/* Here the trigger's are set by setting specific bits in the Infineon TRIGx register  */
/* The trigger registers are located within the CERBERUS Register range                */
/* Description      : Function to initialize the Emem memory                           */
/* Name             : void WriteTriggerComplete(int TableNumber)                       */                                         
/* Parameter[in]    : None                                                             */
/* Parameter[out]   : None                                                             */
/* Return Value     : None                                                             */
//***************************************************************************************
void WriteTriggerComplete(int TableNumber)
{
    CBS_TRIGS.U = (TRIGS_REGISTER_SETBIT << TableNumber);

    struct tDisplayTable42Info *pTables = (struct tDisplayTable42Info *)(&DisplayTables);
    volatile unsigned long *pTRIGSReg = (volatile unsigned long *)(TRIGS_REGISTER);
    // Request bit is calculated in this way: TRGx_y is set with x = trig_bitnum / 24
    // and y = trig_bitnum % 24. i.e. trig_bitnum = 0 sets TRG0_0 bit, trig_bitnum = 1 sets TRG0_1 bit,
    //ect...
    *pTRIGSReg = pTables[TableNumber].trig_bitnum;
}

/******************************************************************************
** Name             : void Emem_RegInit(void)                                          
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : Function to initialize the Emem memory              
*******************************************************************************/
void Emem_RegInit(void)
{
    unsigned long *pmem;
    unsigned int emem_index;

    uint16 psw = IfxScuWdt_getSafetyWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(psw);

	if (SCU_CHIPID.B.EEA != 0U)
	{
        /* clock enable, if the clock was enabled this will not change anything */
		EMEM_CLC.U = 0; 

        while ((EMEM_CLC.U & EMEM_CLOCK_ENABLE) != 0)
		{
			/* wait untill clock is enable */
		}
         EMEMMPU0_MEMCON.U = EMEM_ECC_ERROR_DISABLE; /* set ERRDIS --> ECC Error Disable*/

        /* Check Vddsb voltage is enbled or not */
        if (EMEM_SBRCTR.B.STBPON == EMEM_SBRCRT_BIT_STANDBY_MODE) 
        {
            // /* if the EMEM is locked, then we unlock the emem */
		    if (EMEM_SBRCTR.B.STBLOCK == EMEM_SBRCRT_BIT_LOCK_MODE) 
		    {
               /* apply unlock sequence */ 
			   EMEM_SBRCTR.U = 0x2;    
			   EMEM_SBRCTR.U = 0x6;
			   EMEM_SBRCTR.U = 0xE;

               /* wait untill the unlock is happen */
			   while ((EMEM_SBRCTR.U & EMEM_SBRCRT_BIT_UNLOCK_MODE) == 0)
			   {
       			    /* wait untill the unlock is happen */
			   }	
            }
            EMEM_TILECONFIG.U = EMEM_UNUSED_MEMORY;         /*Unused Memory*/
            EMEM_TILECONFIG.U = EMEM_COMMON_MEMORY;         /*Common Memory*/

            EMEMMPU0_MEMCON.U = EMEM_ECC_ERROR_DISABLE; /* set ERRDIS --> ECC Error Disable*/
            EMEMMPU1_MEMCON.U = EMEM_ECC_ERROR_DISABLE; /* set ERRDIS --> ECC Error Disable*/
            EMEMMPU2_MEMCON.U = EMEM_ECC_ERROR_DISABLE; /* set ERRDIS --> ECC Error Disable*/
        } 
        IfxScuWdt_setCpuEndinit(psw);    
		//EMEM_TILECONFIGXM.U = 0x0U;	/*setting extended EMEM 1MB*/

        pmem = (unsigned long *)IFXEMEM_START_ADDR_CPU; //0xb9000000UL

        for (emem_index = 0; (unsigned long)emem_index < (IFXEMEM_SIZE / 4); emem_index += 1) //0x400000UL
        { 
            *(pmem++) = (unsigned long )0x00; 
        }
        pmem = (unsigned long *)IFXEMEM_START_ADDR_CPU; //0xb9000000UL
    }
}

/******************************************************************************
** Name             : void EmEm_TransitionTo_LockMode(void)                                          
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : Function to initialize the Emem memory              
*******************************************************************************/
void Emem_TransitionTo_LockMode(void)
{
     /* Check whether the EMEM in Un Lock Mode, if yes change to Lock mode*/
     if (EMEM_SBRCTR.B.STBLOCK == EMEM_SBRCRT_BIT_LOCK_MODE)
     {
         EMEM_SBRCTR.U = EMEM_SBRCRT_TRANSIT_T0_LOCKMODE;
     }
     
     while ((EMEM_SBRCTR.U & EMEM_SBRCRT_BIT_LOCK_MODE) == 0)
	 {
		/* wait untill Lock is enabled */
	 }
}

/******************************************************************************
** Name             : void Enable_OCDS_Triggers (void)                                          
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : Function to enable OCDS              
*******************************************************************************/
void Enable_OCDS_Triggers (void)
{
  if (CBS_OSTATE.B.OEN == FALSE) // If OCDS is currently disabled
  {
    CBS_OEC.U = 0xA1;
    CBS_OEC.U = 0x5E;
    CBS_OEC.U = 0xA1;
    CBS_OEC.U = 0x5E;            // OCDS enable sequence
  }
}