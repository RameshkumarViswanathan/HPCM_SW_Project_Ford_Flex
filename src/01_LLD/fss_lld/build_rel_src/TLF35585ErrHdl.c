#include "TLF35585ErrHdl.h"
#include "TLF35585ErrHdl_Cfg.h"
#include "TLF35585.h"
#include "Smu.h"
//#include "IfxScu_reg.h"

/*====================================================================================================================*/
/*                                                 Macro Definitions                                                  */
/*====================================================================================================================*/

#define TLF35585ERRHDL_FAULT_IF_INTMISS_ID   1u

#define TLF35585ERRHDL_READ_REG_NUMBER        12u
/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Private Variable Definitions                                            */
/*====================================================================================================================*/


static boolean TLF35585ErrHdl_StartupCheckFlag = FALSE;	

static boolean TLF35585ErrHdl_InitFinishFlag = FALSE;	

static TLF35585ErrHdl_FaultSrcType TLF35585ErrHdl_HandlerFlag = TLF35585ErrHdl_Fault_S_None;	

static uint8 TLF35585ErrHdl_Reg[TLF35585ERRHDL_MAX_ADDRESS];	

/*====================================================================================================================*/
/*                                            Global Variable Definitions                                             */
/*====================================================================================================================*/

TLF35585ErrHdl_FaultStsType TLF35585ErrHdl_Status;	
const TLF35585ErrHdl_GroupType TLF35585ErrHdl_Group =
{
	TLF35585ERRHDL_FAULT_COUNT,
	TLF35585ErrHdl_FaultList
};

/*====================================================================================================================*/
/*                                            Private Function Declarations                                           */
/*====================================================================================================================*/

static boolean TLF35585ErrHdl_GetStartupCheckFlag(void);
static void TLF35585ErrHdl_SetStartupCheckFlag(boolean flag);
static void TLF35585ErrHdl_ClrStartupCheckFlag(void);
static void TLF35585ErrHdl_SetInitFinishFlag(void);
static boolean TLF35585ErrHdl_GetInitFinishFlag(void);
static void TLF35585ErrHdl_ClrInitFinishFlag(void);
static Std_ReturnType TLF35585ErrHdl_FaultClr(uint8 FaultID);
static Std_ReturnType TLF35585ErrHdl_FaultRead(void);
static Std_ReturnType TLF35585ErrHdl_FaultParse(uint8 FaultID);
static Std_ReturnType TLF35585ErrHdl_FaultCheck(uint8 FaultID);
static TLF35585ErrHdl_FaultSrcType TLF35585ErrHdl_GetHandlerFlag(void);
static void TLF35585ErrHdl_ClrHandlerFlag(void);
static uint8 TLF35585ErrHdl_GetErrRegValue(uint8 RegisterID);
static void TLF35585ErrHdl_SetErrRegValue(uint8 RegisterID, uint8 Value);
static void TLF35585ErrHdl_ClrErrRegValue(uint8 RegisterID);
static void TLF35585ErrHdl_ClrInfo(void);

/*====================================================================================================================*/
/*                                            Private Function Implementation                                         */
/*====================================================================================================================*/
/**********************************************************************************************************************/
/*
 * FunctionName        : static boolean TLF35585ErrHdl_GetStartupCheckFlag(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static boolean TLF35585ErrHdl_GetStartupCheckFlag(void)
{
	return TLF35585ErrHdl_StartupCheckFlag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_SetStartupCheckFlag(boolean flag)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : flag
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_SetStartupCheckFlag(boolean flag)
{
	TLF35585ErrHdl_StartupCheckFlag = flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_ClrStartupCheckFlag(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         :
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_ClrStartupCheckFlag(void)
{
	TLF35585ErrHdl_StartupCheckFlag = FALSE;
}


/**********************************************************************************************************************/
/*
 * FunctionName        : static TLF35585ErrHdl_FaultSrcType TLF35585ErrHdl_GetHandlerFlag()
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static TLF35585ErrHdl_FaultSrcType TLF35585ErrHdl_GetHandlerFlag(void)
{
	return TLF35585ErrHdl_HandlerFlag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static TLF35585ErrHdl_FaultSrcType TLF35585ErrHdl_ClrHandlerFlag()
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_ClrHandlerFlag(void)
{
  TLF35585ErrHdl_HandlerFlag = TLF35585ErrHdl_Fault_S_None;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static uint8 TLF35585ErrHdl_GetErrRegValue(uint8 RegisterID)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static uint8 TLF35585ErrHdl_GetErrRegValue(uint8 RegisterID)
{
	uint8 L_Value;
	if(RegisterID < TLF35585ERRHDL_MAX_ADDRESS)
	{
		L_Value =  TLF35585ErrHdl_Reg[RegisterID];
	}
	else
	{
		L_Value =  0u;
	}
	
	return L_Value;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_SetErrRegValue(uint8 RegisterID, uint8 Value)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_SetErrRegValue(uint8 RegisterID, uint8 Value)
{
	if(RegisterID < TLF35585ERRHDL_MAX_ADDRESS)
	{
		TLF35585ErrHdl_Reg[RegisterID] = Value;
	}
	else
	{
		
	}
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_ClrErrRegValue(uint8 RegisterID)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_ClrErrRegValue(uint8 RegisterID)
{
	if(RegisterID < TLF35585ERRHDL_MAX_ADDRESS)
	{
		TLF35585ErrHdl_Reg[RegisterID] = 0u;
	}
	else
	{
		
	}
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_SetInitFinishFlag(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_SetInitFinishFlag(void)
{
	TLF35585ErrHdl_InitFinishFlag = TRUE;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static boolean TLF35585ErrHdl_GetInitFinishFlag(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static boolean TLF35585ErrHdl_GetInitFinishFlag(void)
{
	return TLF35585ErrHdl_InitFinishFlag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_ClrInitFinishFlag(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_ClrInitFinishFlag(void)
{
	TLF35585ErrHdl_InitFinishFlag = FALSE;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585ErrHdl_FaultClr(uint8 FaultID)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         :
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585ErrHdl_FaultClr(uint8 FaultID)
{
	Std_ReturnType Ret;
	uint8 L_RegValue;
	TLF35585_CmdType TempReg;

	L_RegValue = (1u << TLF35585ErrHdl_Group.Fault_List[FaultID]->Shift_Count);

	TempReg.ReqCmd = TLF35585ErrHdl_Group.Fault_List[FaultID]->Register_ID;
	TempReg.UserData = L_RegValue;

	Ret = TLF35585_Write(&TempReg, 1U);

	return Ret;

}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585ErrHdl_FaultRead(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585ErrHdl_FaultRead(void)
{
	uint8 u8_Index;
	Std_ReturnType Ret;
	TLF35585_CmdType TempReg[TLF35585ERRHDL_READ_REG_NUMBER] =
		{
			{TLF35585_REG_IF, 0x00},
			{TLF35585_REG_OTFAIL, 0x00},
			{TLF35585_REG_OTWRNSF, 0x00},
			{TLF35585_REG_MONSF0, 0x00},
			{TLF35585_REG_MONSF1, 0x00},
			{TLF35585_REG_MONSF2, 0x00},
			{TLF35585_REG_MONSF3, 0x00},
			{TLF35585_REG_SPISF, 0x00},
			{TLF35585_REG_SYSFAIL, 0x00},
			{TLF35585_REG_SYSSF, 0x00},
			{TLF35585_REG_INITERR, 0x00},
			{TLF35585_REG_WKSF, 0x00},
		};

	Ret = TLF35585_Read(&TempReg[0], TLF35585ERRHDL_READ_REG_NUMBER);
	if(Ret == E_OK)
	{
		for(u8_Index = 0u;u8_Index < TLF35585ERRHDL_READ_REG_NUMBER;u8_Index++)
		{
			TLF35585ErrHdl_SetErrRegValue(TempReg[u8_Index].ReqCmd, TempReg[u8_Index].UserData);
		}
	}
	else
	{
		/* Do nothing */
	}

	
	return Ret;
	
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585ErrHdl_FaultParse(uint8 FaultID)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : FaultID
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585ErrHdl_FaultParse(uint8 FaultID)
{
	uint8 L_RegValue;
	uint8 L_ShiftCount;
	uint8 L_RightValue;
	uint8 L_Mask;
	Std_ReturnType Ret;

	/* Call API Get TLF35585 Reg Vaule. */
	L_RegValue = TLF35585ErrHdl_GetErrRegValue(TLF35585ErrHdl_Group.Fault_List[FaultID]->Register_ID);

	L_ShiftCount = TLF35585ErrHdl_Group.Fault_List[FaultID]->Shift_Count;
	L_Mask = TLF35585ErrHdl_Group.Fault_List[FaultID]->Bit_Count;
	L_RightValue = TLF35585ErrHdl_Group.Fault_List[FaultID]->RightValue;
	
	Ret = (((L_RegValue >> L_ShiftCount) & L_Mask) == L_RightValue) ? (E_OK) : (E_NOT_OK);

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585ErrHdl_FaultCheck(uint8 FaultID)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585ErrHdl_FaultCheck(uint8 FaultID)
{
	Std_ReturnType Ret;
	uint8 L_ShiftCount;
	uint8 L_RightValue;
	uint8 L_Mask;
	TLF35585_CmdType TempReg[1U];

	TempReg[0u].ReqCmd = TLF35585ErrHdl_Group.Fault_List[FaultID]->Register_ID;	
	TempReg[0u].UserData = (uint8)0U;
	/* Call TLF35585 Read Fault API. */
	Ret = TLF35585_Read(TempReg, 1u);

	if(Ret == E_OK)
	{
		L_ShiftCount = TLF35585ErrHdl_Group.Fault_List[FaultID]->Shift_Count;
		L_Mask = TLF35585ErrHdl_Group.Fault_List[FaultID]->Bit_Count;
		L_RightValue = TLF35585ErrHdl_Group.Fault_List[FaultID]->RightValue;
		
		Ret = (((TempReg[0u].UserData >> L_ShiftCount) & L_Mask) == L_RightValue) ? (E_OK) : (E_NOT_OK);
	}
	else
	{

	}

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_ClrInfo(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
static void TLF35585ErrHdl_ClrInfo(void)
{
	uint8 u8_Index;

	TLF35585ErrHdl_Status.Sys_Status = TRUE;
	TLF35585ErrHdl_Status.Error_Count = 0u;

	for(u8_Index = 0u; u8_Index < TLF35585ErrHdl_Group.Fault_Count; u8_Index++)
	{
		TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_ID = TLF35585ErrHdl_Group.Fault_List[u8_Index]->Fault_ID;
		TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Status = TLF35585ErrHdl_Fault_None;
		TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Source = TLF35585ErrHdl_Fault_S_None;

		TLF35585ErrHdl_ClrErrRegValue(u8_Index);
	}
}

/*====================================================================================================================*/
/*                                            Global Function Implementation                                          */
/*====================================================================================================================*/
/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585ErrHdl_Init(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585ErrHdl_Init(void)
{	
	TLF35585ErrHdl_ClrInfo();

	/* Startup Error Check. */
	TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_Fault_S_Reset);
	TLF35585ErrHdl_SetStartupCheckFlag(TRUE);
	(void)TLF35585ErrHdl_MainFunction();
	TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_Fault_S_None);
	TLF35585ErrHdl_ClrStartupCheckFlag();

	TLF35585ErrHdl_SetInitFinishFlag();
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585ErrHdl_DeInit(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585ErrHdl_DeInit(void)
{
	TLF35585ErrHdl_ClrInfo();
	/* Unregister NMI Trap Function. */
	TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_Fault_S_None);
	
	TLF35585ErrHdl_ClrInitFinishFlag();
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585ErrHdl_NMIHandler(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585ErrHdl_IRQHandler(void)
{
	if(TLF35585ErrHdl_GetInitFinishFlag() == TRUE)
	{
		
		/* Set NMI Flag. */
		TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_Fault_S_IRQ);

		/*SBC Fault INIT reaction*/
		if((VAR_TLF35585_InitFinish_Flag_b == TRUE)&&(VAR_TLF35585_SelfTestFinish_Flag_b == TRUE))
		{
			(void) TLF35585ErrHdl_FaultRead();

			if( ((TLF35585ErrHdl_Reg[TLF35585_REG_MONSF1]&(0xF0))!=(0x00))||((TLF35585ErrHdl_Reg[TLF35585_REG_MONSF2]&(0xF0))!=(0x00))||((TLF35585ErrHdl_Reg[TLF35585_REG_MONSF3]&(0x30))!=(0x00)))
			{
				
				(void) Smu_ActivateFSP();
			}
			else
			{

			}

		}
		else
		{

		}

	}
	else
	{
		/* Not TLF35585 NMI Request or Not Init.Skip this loop. */
	}
	
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_FaultSrcType Source)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         :
 */
/**********************************************************************************************************************/
void TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_FaultSrcType Source)
{
	TLF35585ErrHdl_HandlerFlag = Source;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585ErrHdl_MainFunction(void)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585ErrHdl_MainFunction(void)
{
	uint8 u8_Index;
	boolean b_Check = FALSE;
	Std_ReturnType Ret = E_OK;
/*Test Code*/



	if(TLF35585ErrHdl_GetHandlerFlag() != TLF35585ErrHdl_Fault_S_None)
	{
		/* Init Check. */
		if(((TLF35585ErrHdl_GetInitFinishFlag() == TRUE) && (TLF35585_GetInitFinishFlag() == TRUE)) || (TLF35585ErrHdl_GetStartupCheckFlag() == TRUE))/*PRQA S 3398,3390,3415,4115*//* QAC Annotation��no effect*/
		{
			/*Clear Fault Status and Error Reg[] Value*/
			TLF35585ErrHdl_ClrInfo();
			
			
			/* Call TLF35585 Read Fault API. Read Reg and store the value in the Err Reg[] */
			if(TLF35585ErrHdl_FaultRead() == E_OK)
			{
				for(u8_Index = 0u; u8_Index < TLF35585ErrHdl_Group.Fault_Count; u8_Index++)
				{
					if(TLF35585ErrHdl_Config[u8_Index].Enable == TRUE)
					{
						/*Check if the fault is set, if set feedback NOK*/
						if(TLF35585ErrHdl_FaultParse(u8_Index) != E_OK)
						{	
							Ret |= E_NOT_OK;
							/* Capture the Fault */
							TLF35585ErrHdl_Status.Sys_Status = FALSE;
							TLF35585ErrHdl_Status.Error_Count += 1u;
							TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Source = TLF35585ErrHdl_GetHandlerFlag();
							TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Status = TLF35585ErrHdl_Fault_Error;
							
							if(TLF35585ErrHdl_Group.Fault_List[u8_Index]->Fault_ID == TLF35585ERRHDL_FAULT_IF_INTMISS_ID)
							{
								/* Jump this loop. */
								b_Check = TRUE;
							}
							else
							{
								
								/* Fault Clear */
								/*Write 1 to clear 35584 error register*/
								if(TLF35585ErrHdl_FaultClr(u8_Index) != E_OK)
								{
									TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Status = TLF35585ErrHdl_Fault_Clear;
								}
								else
								{
									/* Fault Check */
									if(TLF35585ErrHdl_FaultCheck(u8_Index) != E_OK)
									{
										TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Status = TLF35585ErrHdl_Fault_Clear;
									}
									else
									{
										
									}
								}
								
								/* Callback Function */
								if(TLF35585ErrHdl_Config[u8_Index].Callback_Ptr != NULL_PTR)
								{
									TLF35585ErrHdl_Config[u8_Index].Callback_Ptr();
								}
								else
								{
									
								}
							}					
						}
						else
						{
							TLF35585ErrHdl_Status.Fault_List[u8_Index].Fault_Status = TLF35585ErrHdl_Fault_Success;
						}
					}
					else
					{
						
					}
				}
				/* Check INTMISS Int Flag. */
				if(b_Check == TRUE)
				{
					/* Call TLF35585 Read Fault API. */
				    if(TLF35585ErrHdl_FaultRead() == E_OK)
				    {
					    if(TLF35585ErrHdl_FaultParse(TLF35585ERRHDL_FAULT_IF_INTMISS_ID - 1) != E_OK)
					    {
					    	TLF35585ErrHdl_Status.Fault_List[TLF35585ERRHDL_FAULT_IF_INTMISS_ID - 1].Fault_Status = TLF35585ErrHdl_Fault_Clear;
					    }
					    else
					    {
							/* Callback Function */
							if(TLF35585ErrHdl_Config[TLF35585ERRHDL_FAULT_IF_INTMISS_ID - 1].Callback_Ptr != NULL_PTR)
							{
								TLF35585ErrHdl_Config[TLF35585ERRHDL_FAULT_IF_INTMISS_ID - 1].Callback_Ptr();
							}
							else
							{

							}
					    }
				    }
				    else
					{

					}
				}
				else
				{
					
				}
			}
			else
			{
				Ret = E_NOT_OK;
			}
		}
		else
		{
			Ret = E_NOT_OK;
		}
		TLF35585ErrHdl_ClrHandlerFlag();
	}
	else
	{

	}

	return Ret;
}

