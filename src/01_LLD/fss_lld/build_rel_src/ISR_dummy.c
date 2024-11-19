
/***** include file reference *****/
#include "Os.h"
#include "PUP_function.h"
#include "IfxSmu_reg.h"
#include "IfxCpu_reg.h"
#include "mwram_mem_appl.h"
#include "XH_Interface.h"

/***** extern label definition *****/

/***** public label definition *****/
#define LABEL_X 8
#define LABEL_Y 8



U8 VeCPU_y_CoreID;
static uint32 TrapIdentification[LABEL_X][LABEL_Y];

/***** Private Type definition *****/
 typedef volatile struct
{
    U32    Pcxi;
    U32    A11;
    U32    A2;
    U32    A3;
    U32    D0;
    U32    D1;
    U32    D2;
    U32    D3;
    U32    A4;
    U32    A5;
    U32    A6;
    U32    A7;
    U32    D4;
    U32    D5;
    U32    D6;
    U32    D7;
} StlTrap_LowerContext;


 U32 main_type,sub_type ,spr2 ,spr3;


/***** Function body definition *****/
CAT1_TRAP(RTOS_TRAP_CL_0)
{
	/* need to return unhandled exception */
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }

	__GETTIN (LeTRAP_g_tin);   
	 main_type = 0;
	 sub_type = LeTRAP_g_tin; 
    

	LeRst_g_ResetAddress = GET_RETURN_ADDR();
    VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;

	ServiceHWIO_MainWDT();
    TrapIdentification[0][LeTRAP_g_tin] += 1;
	switch(LeTRAP_g_tin)
	{
		case 0: /* MMU Trap 1.*/
		case 1: /* MMU Trap 2.*/
		default:
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		break;
	}
}

CAT1_TRAP(RTOS_TRAP_CL_1)
{

	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	U32 LeRst_g_ResetSource;
	U32 LeTrap_g_MP_Address;

	U8 CoreId;
	__GETTIN (LeTRAP_g_tin); 
	  main_type = 1;
	 sub_type = LeTRAP_g_tin; 

    ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }
	
	
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;
	DSYNC();
	ServiceHWIO_MainWDT();
	//CoreId = GetCoreId();
    CoreId = 0;
	TrapIdentification[1][LeTRAP_g_tin] += 1;

    switch(LeTRAP_g_tin)
  	{
  		case 1: /* Privileged Instruction.*/
  		{
  			 XH_ErrorReset(main_type, sub_type, spr2, spr3);
  		}break;
  		case 2: /* Memory Protection Read. */
  		{

			 LeTrap_g_MP_Address = _mfcr(CPU_DEADD);
			 LeRst_g_ResetSource = CeHWIO_e_RunRstAccessErr;
			  if(CoreId == 1)
			  {
			// 	/* Check for the stack over flow and under flow   // same structure */
			
			
				 if(LeTrap_g_MP_Address >= CPU1_STACK_START_ADDR && LeTrap_g_MP_Address <= CPU1_STACK_END_ADDR)
				 {
					  VaStack_y_Underflow_Overflow_Status[CoreId] = STACK_UNDERFLOW_DETECTED;  // underflow
					  LeRst_g_ResetSource = CeHWIO_e_RunRstStackErr;
				 }
			 }
			 else if(CoreId == 0)
			 {
			// 	/* Check for the stack over flow and under flow   // same structure */
			
			 if(LeTrap_g_MP_Address >= CPU0_STACK_START_ADDR && LeTrap_g_MP_Address <= CPU0_STACK_END_ADDR)
				 {
					  VaStack_y_Underflow_Overflow_Status[CoreId] = STACK_UNDERFLOW_DETECTED;  // underflow
					  LeRst_g_ResetSource = CeHWIO_e_RunRstStackErr;
				 }
			  }
			 XH_ErrorReset(main_type, sub_type, spr2, spr3);
  		}break;

  		case 3:	/* Memory Protection Write. */
  		{

			 LeTrap_g_MP_Address = _mfcr(CPU_DEADD);
			 LeRst_g_ResetSource = CeHWIO_e_RunRstAccessErr;

			 if(CoreId == 1)
			 {
			// 	/* Check for the stack over flow and under flow   // same structure */
			
				 	if(LeTrap_g_MP_Address >= CPU1_STACK_START_ADDR && LeTrap_g_MP_Address <= CPU1_STACK_END_ADDR)
				 {
					  VaStack_y_Underflow_Overflow_Status[CoreId] = STACK_UNDERFLOW_DETECTED;  // underflow
					  LeRst_g_ResetSource = CeHWIO_e_RunRstStackErr;
				 }
			 }
			 else if(CoreId == 0)
			 {
			// 	/* Check for the stack over flow and under flow   // same structure */
	
			
			 if(LeTrap_g_MP_Address >= CPU0_STACK_START_ADDR && LeTrap_g_MP_Address <= CPU0_STACK_END_ADDR)
				 {
					  VaStack_y_Underflow_Overflow_Status[CoreId] = STACK_UNDERFLOW_DETECTED;  // underflow
					  LeRst_g_ResetSource = CeHWIO_e_RunRstStackErr;
				 }
			  }
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}break;

  		case 4: /* Memory Protection Execution. */
  		case 5: /* Memory Protection Peripheral Access. */
  		case 6: /*Memory Protection Null Address.*/
  		case 7: /* Global Register Write Protection.*/
  		default:
  			 XH_ErrorReset(main_type, sub_type, spr2, spr3);
  		break;
  	}
}

CAT1_TRAP(RTOS_TRAP_CL_2)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	__GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 

    ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }
	
	main_type = 2;
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;
	ServiceHWIO_MainWDT();
	DSYNC();
	TrapIdentification[2][LeTRAP_g_tin] += 1;
	switch(LeTRAP_g_tin)
	{
		case 1: /* Illegal Opcode.*/
		{
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}break;
		case 2: /* Unimplemented Opcode.*/
		{
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}break;
		case 3:	/* Invalid Operand specification. */
		case 4: /* Data Address Alignment. */
		case 5: /* Invalid Local Memory Address. */
		default:
			 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		break;
	}
}

CAT1_TRAP(RTOS_TRAP_CL_3)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	__GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 
     main_type = 3;

	ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }
	
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;
	ServiceHWIO_MainWDT();
	TrapIdentification[3][LeTRAP_g_tin] += 1;
	DSYNC();

	switch(LeTRAP_g_tin)
	{
	case 1: /* Free Context List Depletion (FCX = LCX).*/
	{
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	case 2: /* Call Depth Overflow.*/
	{
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	case 3:	/* Call Depth Underflow. */
	{
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	case 4: /* Free Context List Underflow (FCX = 0). */
	{
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	case 5: /* Call Stack Underflow (PCX = 0). */
	{
		 XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	case 6: /*Context Type (PCXI.UL wrong). */
	{
		XH_ErrorReset(main_type, sub_type, spr2, spr3);
		 break;
	}
	default:
		XH_ErrorReset(main_type, sub_type, spr2, spr3);
		break;
	}
}

CAT1_TRAP(RTOS_TRAP_CL_4)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	// U32 LeRAM_g_RAmAddress;
	// U32 LeTrap_g_DflashAddress;
	
	// U8	LeTRAP_y_eccTestRunning = FALSE;
    __GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 
      main_type = 4;
	  
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;
	
	ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
		U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }

	
	
	ServiceHWIO_MainWDT();
	TrapIdentification[4][LeTRAP_g_tin] += 1;
	
	DSYNC();
	switch(LeTRAP_g_tin)
	{
		case TIN_1: /* Program Fetch Synchronous Error */
		{

		}	break;

		case TIN_2:	/* Class 4 TIN 2: Data Access Synchronous Error Trap occurred */
		{
			U8 VeFlash_y_BankId;
			U32 VeFlash_g_ECC_Test_Address;
			U32 *VpFlash_g_ECC_FAULT_ADDRESS;

			/* Clear the DSTR register bit to clear trap */
			MTCR(CPU_DSTR, 0x0);

			/* Get the previous context information register:                                 */
			// PCXICopy = (U32)MFCR(CPU_PCXI);

			// /* Get the address of the saved context in the CSA:                               */
			// pLowerContext = (StlTrap_LowerContext*) (((PCXICopy & 0x000F0000U) << 12U) +
			// 									 ((PCXICopy & 0x0000FFFFU) <<  6U));

			// /* Check whether the instruction causing the trap was 16 or 32bit and patch       */
			// /* the return address to point to the instructions following:                     */
			// pReturnAddress = (uint16*)pLowerContext->A11;
			// LeRst_g_ResetAddress =(U32) pLowerContext->A11;

			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}break;

		case TIN_3: /* Data Access Asynchronous Error Trap */
		{
            XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}break;

		case TIN_4:
		{
			/* Running Reset when unhandled Exception */
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}
		break;

		case TIN_5:
		{
			/* Clear the PIETR register bit to clear trap */
			MTCR(CPU_PIETR, 0x0);
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}
		break;

		case TIN_6:
		{
			/* Clear the DIETR register bit to clear trap */
			MTCR(CPU_DIETR, 0x0);
		 } break;

		case TIN_7:
		{
			/* Running Reset when unhandled Exception */
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		}
		break;

		default:
			XH_ErrorReset(main_type, sub_type, spr2, spr3);
		break;
    }
	
	XH_ErrorReset(4,LeTRAP_g_tin,0,0);

}

CAT1_TRAP(RTOS_TRAP_CL_5)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	__GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 
	 main_type = 5;
   
      LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;

	 ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }	

	ServiceHWIO_MainWDT();
	TrapIdentification[5][LeTRAP_g_tin] += 1;
	DSYNC();
	XH_ErrorReset(main_type, sub_type, spr2, spr3);
	
}

CAT1_TRAP(RTOS_TRAP_CL_6)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	__GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 

	 main_type = 6;
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
    VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;
    
	ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }
	

	ServiceHWIO_MainWDT();
	TrapIdentification[6][0] = LeTRAP_g_tin;
	XH_ErrorReset(main_type, sub_type, spr2, spr3);
	 
}

CAT1_TRAP(RTOS_TRAP_CL_7)
{
	U32 LeTRAP_g_tin;
	U32 LeRst_g_ResetAddress;
	__GETTIN (LeTRAP_g_tin);   
	 sub_type = LeTRAP_g_tin; 

	 main_type = 7;
	LeRst_g_ResetAddress = GET_RETURN_ADDR();
	VeHWIO_Run_ResetSourceAddress = LeRst_g_ResetAddress;

	ERcrd_t *pERcrd_loc = XH_GetLastERcrd();
	U32 PCXICopy    = MFCR(CPU_PCXI);
	UCntxt_t *pCSA_UC    =(UCntxt_t*) (((PCXICopy & 0x000F0000U) << 12U) +
                                               ((PCXICopy & 0x0000FFFFU) <<  6U));
	U8 i;
	UCntxt_t *Le_pUpperContext = &(pERcrd_loc->UCntxt);
    for (i= 0;i < 2 ;i++)//16 words data(64 bytes) =(32 *2)
    {
      *Le_pUpperContext = *pCSA_UC;
       pCSA_UC++;
    }
	
	ServiceHWIO_MainWDT();
	DSYNC();
	TrapIdentification[7][LeTRAP_g_tin] += 1;
	XH_ErrorReset(main_type, sub_type, spr2, spr3);

	 
}




