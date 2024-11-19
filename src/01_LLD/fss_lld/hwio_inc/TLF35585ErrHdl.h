#ifndef  _TLF35585ERRHDL_H
#define  _TLF35585ERRHDL_H

/*====================================================================================================================*/
/*                                                     Includes                                                       */
/*====================================================================================================================*/
#include "Std_Types.h"

/*====================================================================================================================*/
/*                                                 Macro Definitions                                                  */
/*====================================================================================================================*/

#define TLF35585ERRHDL_FAULT_COUNT                     (65u)				  /* Define Fault Count in xlsx */
#define TLF35585ERRHDL_MAX_ADDRESS                     (0x3Fu)                /* Define Max Register Address */


/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/
/* define function pointer type TstM_FuncPtrType */
typedef void (*TLF35585ErrHdl_PtrType)(void);

/* Define Fault Code for Every Fault. */
typedef enum
{
	TLF35585ErrHdl_Fault_None = 0x00U,
	TLF35585ErrHdl_Fault_Success = 0x01U,
	TLF35585ErrHdl_Fault_Error = 0x02U,
	TLF35585ErrHdl_Fault_Clear = 0x03U
}TLF35585ErrHdl_FaultCodeType;


/* Define Fault Source for Every Fault. */
typedef enum
{
	TLF35585ErrHdl_Fault_S_None = 0x00U,
	TLF35585ErrHdl_Fault_S_IRQ = 0x01U,
	TLF35585ErrHdl_Fault_S_Reset = 0x02U,
	TLF35585ErrHdl_Fault_S_User = 0x03U,
}TLF35585ErrHdl_FaultSrcType;

/* Define Fault Info for Every Fault */
typedef struct
{
	uint8 Fault_ID;
	TLF35585ErrHdl_FaultCodeType Fault_Status;
	TLF35585ErrHdl_FaultSrcType Fault_Source;
}TLF35585ErrHdl_FaultInfoType;

typedef struct
{
	boolean Sys_Status;
	uint8 Error_Count ;
	TLF35585ErrHdl_FaultInfoType Fault_List[TLF35585ERRHDL_FAULT_COUNT];
}TLF35585ErrHdl_FaultStsType;

typedef struct
{
	uint8 Fault_ID;
	uint8 Register_ID;
	uint8 Shift_Count;
	uint8 Bit_Count;
	uint8 RightValue;
}TLF35585ErrHdl_FaultType;

typedef struct
{
	uint8 Fault_Count;
	TLF35585ErrHdl_FaultType** Fault_List;

}TLF35585ErrHdl_GroupType;

typedef struct
{
	boolean Enable;
	TLF35585ErrHdl_PtrType Callback_Ptr;
}TLF35585ErrHdl_ConfigType;

/*====================================================================================================================*/
/*                                           Global Variable Declarations                                             */
/*====================================================================================================================*/

extern TLF35585ErrHdl_FaultStsType TLF35585ErrHdl_Status;

extern const TLF35585ErrHdl_GroupType TLF35585ErrHdl_Group;

/*====================================================================================================================*/
/*                                           Global Function Declarations                                             */
/*====================================================================================================================*/
extern void TLF35585ErrHdl_Init(void);
extern void TLF35585ErrHdl_DeInit(void);
extern void TLF35585ErrHdl_SetHandlerFlag(TLF35585ErrHdl_FaultSrcType Source);
extern void TLF35585ErrHdl_IRQHandler(void);
extern Std_ReturnType TLF35585ErrHdl_MainFunction(void);

#endif
