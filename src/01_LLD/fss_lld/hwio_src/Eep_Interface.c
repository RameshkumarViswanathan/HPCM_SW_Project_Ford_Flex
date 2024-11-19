/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Eep_Interface.c                                          */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD)                                      */
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
/* [1]         24.07.2023    Sagar H              Created                    */
/*****************************************************************************/
/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Eep.h"
#include "Eep_Interface.h"
#include "Spi.h"

/*****************************************************************************/
/*                      Private Object Like Macro Definitions                */
/*****************************************************************************/
/*****************************************************************************/
/*                      Global Function Declarations                         */
/*****************************************************************************/
/*****************************************************************************/
/*                      Private Function Declarations                        */
/*****************************************************************************/
/*****************************************************************************/
/*                      Global Function Definitions                          */
/*****************************************************************************/
/*****************************************************************************/
/*                      extern declarations                        			 */
/*****************************************************************************/
// extern Eep_GlobalType Eep_Global;

/******************************************************************************
** Name             : HWIO_EEPROM_Read()                                 
** Parameter[in]    : U32 in_addr, U8 * out_addr,U32 length
** Return Value     : U32
** Description      : Function to read data to eeprom                              
** Requirement ID   : [Req-Tag: HPCM_ISC_MEM_0017_00]                                                        
******************************************************************************/
U32 HWIO_EEPROM_Read (U16 in_addr , U8 *out_addr , U32 length)
{
	U32 ReadReturnValue = E_OK;
	
	ReadReturnValue = Eep_Read (in_addr, out_addr, (Eep_LengthType)length);
	
	if (ReadReturnValue == E_OK)
	{
        ReadReturnValue = EEPROM_READ_COMMAND_COMPLETED_SUCCESSFUL;
	}
    else
	{
        ReadReturnValue = EEPROM_READ_FAILURE_DEVICE_ERROR;
	}
	return (ReadReturnValue);
}

/******************************************************************************
** Name             : U32 HWIO_EEPROM_Write ( U16 in_addr , U8* in_data , U32 length)                                 
** Parameter[in]    : U32 in_addr, U8 * in_data, U32 length
** Return Value     : U32
** Description      : Function to write data to eeprom                              
** Requirement ID   : [Req-Tag: HPCM_ISC_MEM_0018_00]                                                          
******************************************************************************/
U32 HWIO_EEPROM_Write (U16 in_addr , U8* in_data , U32 length)
{
	Std_ReturnType WriteReturnType = E_NOT_OK;
	U32 Eep_Write_Status = EEPROM_WRITE_COMMAND_DEFAULT;

	WriteReturnType = Eep_Write (in_addr, in_data, length);

    if (WriteReturnType == E_OK)
	{
        Eep_Write_Status = EEPROM_WRITE_COMMAND_INITIATED;
	}
    else
	{
        Eep_Write_Status = EEPROM_WRITE_COMMAND_FAILURE_DEVICE_ERROR;
	}
	return (Eep_Write_Status);
}

/******************************************************************************
** Name             : U32 HWIO_EEPROM_Write_Status(void)                                
** Parameter[in]    : U8 Hwio_Eep_WRSR_RegVal
** Parameter[out]   : None
** Return Value     : U32
** Description      : Function to change the status register value                             
** Requirement ID   : [Req-Tag: HPCM_ISC_MEM_0019_00]                                                          
******************************************************************************/
U32 HWIO_EEPROM_Write_Status(void)
{
    Spi_JobResultType Eep_WRSR_Status = SPI_JOB_FAILED;
	U32 WRSRReturnType = (U32)EEPROM_WRITE_IN_PROGRESS;

	Eep_WRSR_Status = Eep_Write_Status();

    if (Eep_WRSR_Status == SPI_JOB_FAILED)
	{
       WRSRReturnType = (U32)EEPROM_WRITE_FAILURE;
	}
    else if (Eep_WRSR_Status == SPI_JOB_PENDING)
	{
       WRSRReturnType = (U32)EEPROM_WRITE_IN_PROGRESS;
	}
	else if (Eep_WRSR_Status == SPI_JOB_OK)
	{
		WRSRReturnType = (U32)EEPROM_WRITE_SUCCESSFUL;
	}
	else
	{
       /* Do Nothing */
	}
	return (WRSRReturnType);
}


/******************************************************************************
** Name             : HWIO_EEPROM_Write_Protect()                                 
** Parameter[in]    : U32 BlockId , FLAG ProtectionEnabled
** Parameter[out]   : None
** Return Value     : U32
** Note             :
** Description      :                               
** Requirement ID   : [Req-Tag: HPCM_ISC_MEM_0020_00]                                                          
******************************************************************************/
U32 HWIO_EEPROM_Write_Protect(uint8 BlockId , FLAG ProtectionEnabled)
{
	U32 Write_Protect_RetVal            = 0;
	Spi_DataType Protection_Bit_BP1_BP0 = 0;
	Spi_DataType Eep_RDSR_Value         = 0;
	Std_ReturnType Eep_WRSR_Status      =  E_NOT_OK;

	Eep_RDSR_Value = Eep_ReadStatusRegister();

	if ((Eep_RDSR_Value & E2_SR_WIP) != 0)
	{
		Write_Protect_RetVal = EEPROM_PROTECTION_BUSY;
	}
	else
	{
		switch (BlockId)
		{
			case EEP_PROTECTION_BLOCK_ID_0:/*Protected Block - None,Protected Addresses - None */
			{
				if (ProtectionEnabled == (FLAG)EEPROM_ENABLE_PROTECTION)
				{
					 Eep_RDSR_Value = (Eep_RDSR_Value & EEP_STS_REG_BP1_BP0_UNSET);
				}
				else
				{
				     Eep_RDSR_Value = (Eep_RDSR_Value | EEP_STS_REG_BP1_BP0_SET);	
				}
			}
			break;

			case EEP_PROTECTION_BLOCK_ID_1 :/*Protected Block - Upper 1/4,Protected Addresses - 3000h to 3FFFh */
			{
				if (ProtectionEnabled == (FLAG)EEPROM_ENABLE_PROTECTION)
				{
					 Eep_RDSR_Value = (Eep_RDSR_Value | EEP_STS_REG_BP0_ONLY_SET);
				}
				else
				{
				     Eep_RDSR_Value = (Eep_RDSR_Value & EEP_STS_REG_BP0_UNSET);	
				}				
			}
			break;

			case EEP_PROTECTION_BLOCK_ID_2: /*Protected Block - Upper 1/2 ,Protected Addresses - 2000h to 3FFFh */
			{
				if (ProtectionEnabled == (FLAG)EEPROM_ENABLE_PROTECTION)
				{
					 Eep_RDSR_Value = (Eep_RDSR_Value | EEP_STS_REG_BP1_ONLY_SET);
				}
				else
				{
				     Eep_RDSR_Value = (Eep_RDSR_Value & EEP_STS_REG_BP1_UNSET);	
				}	
			}
			break;

			case EEP_PROTECTION_BLOCK_ID_3 :/*Protected Block - Whole Memory,Protected Addresses - 0000h to 3FFFh also ID Page */
			{
				if (ProtectionEnabled == (FLAG)EEPROM_ENABLE_PROTECTION)
				{
					 Eep_RDSR_Value = (Eep_RDSR_Value | EEP_STS_REG_BP1_BP0_SET);
				}
				else
				{
				     Eep_RDSR_Value = (Eep_RDSR_Value & EEP_STS_REG_BP1_BP0_UNSET);	
				}
			}	
			break;

			default :
			{
				Write_Protect_RetVal = EEPROM_FUNCTION_FAILURE;
			}
			break;
		}

		Eep_WRSR_Status = Eep_WriteStatusRegister (Eep_RDSR_Value);

        /* if write is successfull,call read function to update the reg value */
        if (Eep_WRSR_Status == E_OK)
		{
           Eep_WRSR_Status = Eep_ReadStatusRegister();
		}
		else
		{
			/* do nothing */
		}
		if (Eep_WRSR_Status == E_OK)
		{
		    Write_Protect_RetVal = EEPROM_PROTECTION_STATUS_UPDATE_SUCCESSFUL;	
		}
		else
		{
           Write_Protect_RetVal = EEPROM_FUNCTION_FAILURE;
		}

	}
     return (Write_Protect_RetVal);

}

/******************************************************************************
** Name             : HWIO_EEPROM_Init()                                 
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : Function to Initialized EEPROM Variables                              
** Requirement ID   : [Req-Tag: HPCM_ISC_MEM_0022_00]                                                           
******************************************************************************/
void HWIO_EEPROM_Init(void)
{
	Eep_Init();
}