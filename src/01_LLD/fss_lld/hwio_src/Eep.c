/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Eep.c                                                            */
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
#include "Std_Types.h"
#include "Eep.h"
#include "Spi.h"
#include "Eep_Interface.h"

/*****************************************************************************/
/*                      Global Variables                                     */
/*****************************************************************************/
Spi_DataBufferType Eep_RDSR_Value[1];
Eep_GlobalType Eep_Global;

/*****************************************************************************/
/*                      Static Functions                                     */
/*****************************************************************************/

/******************************************************************************
** Name             : Eep_WREN(void)                                           
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : function to enable the write operation                                                        
*******************************************************************************/
Std_ReturnType Eep_WREN (void) 
{
    Std_ReturnType Eep_WREN_RetVal = E_NOT_OK;

    Eep_Global.EepCmd = (Spi_DataType)EEP_WREN;

	Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, &Eep_Global.EepCmd, \
	                         NULL_PTR, (Spi_NumberOfDataType)EEP_STS_REG_WREN_DATA_LEN);
	Eep_WREN_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);

    /* wait for process to complete */
	while(Spi_GetStatus() == SPI_BUSY)
	{;}

	return (Eep_WREN_RetVal);
}

/*******************************************************************************
** Name             : Eep_WRDI(void)                                           
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : None
** Description      : Function to disable write operation                                                        
*******************************************************************************/
 Std_ReturnType Eep_WRDI(void)
{
	Std_ReturnType Eep_WRDI_RetVal = E_NOT_OK;

    Eep_Global.EepCmd = (Spi_DataType)EEP_WRDI;
    
	Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, &Eep_Global.EepCmd, \
	                                  NULL_PTR, (Spi_NumberOfDataType)EEP_STS_REG_WRDI_DATA_LEN); 
    Eep_WRDI_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);

	/* wait for process to complete */
	while(Spi_GetStatus() == SPI_BUSY)
	{;}

	return (Eep_WRDI_RetVal);
}

/******************************************************************************/
/* Name             : U8 Eep_ReadStatusRegister ()                                     
** Parameter[in]    : None
** Parameter[out]   : None
** Return Value     : Eep_Global.Status_RegValue
** Description      : Function to read eeprom status register                 */
/******************************************************************************/
Spi_DataType Eep_ReadStatusRegister(void)
{
    uint16 Eep_RDSR_Command[1];
    
	Eep_RDSR_Value[0] = 0x00;
	Eep_RDSR_Command[0] = (uint16)(EEP_RDSR << EEP_SHIFT_DATA_8BIT);

    Spi_SetupEB( SpiConf_SpiChannel_EEPROM_16BIT, (Spi_DataBufferType *)Eep_RDSR_Command, \
                (Spi_DataBufferType *)Eep_RDSR_Value, (Spi_NumberOfDataType)EEP_STS_REG_READ_DATA_LEN );
    Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD2);

	/* wait for process to complete */
	while(Spi_GetStatus() == SPI_BUSY)
	{;}
	
	Eep_Global.Status_RegValue = Eep_RDSR_Value[0];

    if ((Eep_Global.Status_RegValue & (Spi_DataType)EEP_STS_REG_BP1_BP0_SET) == EEP_STS_REG_BP1_BP0_SET)
    {
        Eep_Global.Protected_Blk_Area = (Spi_DataType)EEP_PROTECTION_BLOCK_ID_3;
    }
    else if ((Eep_Global.Status_RegValue & (Spi_DataType)EEP_STS_REG_BP1_ONLY_SET) == EEP_STS_REG_BP1_ONLY_SET)
    {
        Eep_Global.Protected_Blk_Area = (Spi_DataType)EEP_PROTECTION_BLOCK_ID_2;
    }
    else if ((Eep_Global.Status_RegValue & (Spi_DataType)EEP_STS_REG_BP0_ONLY_SET) == EEP_STS_REG_BP0_ONLY_SET)
    {
        Eep_Global.Protected_Blk_Area = (Spi_DataType)EEP_PROTECTION_BLOCK_ID_1;
    }
    else /* if (Eep_Global.Status_RegValue & 0x00) */
    {
        Eep_Global.Protected_Blk_Area = (Spi_DataType)EEP_PROTECTION_BLOCK_ID_0;
    }


    if( Eep_Global.Status_RegValue & 0x01 )
    {
        Eep_Global.StatusReg_BitVal.READY_BUSY = 1;
    }
    else
    {
        Eep_Global.StatusReg_BitVal.READY_BUSY = 0;
    }

    if ( Eep_Global.Status_RegValue & 0x04 )
    {
        Eep_Global.StatusReg_BitVal.BP0 = 1;
    }
    else
    {
        Eep_Global.StatusReg_BitVal.BP0 = 0;
    }

    if ( Eep_Global.Status_RegValue & 0x08 )
    {
        Eep_Global.StatusReg_BitVal.BP1 = 1;
    }
    else
    {
        Eep_Global.StatusReg_BitVal.BP1 = 0;
    }

	if ( Eep_Global.Status_RegValue & 0x80 )
    {
        Eep_Global.StatusReg_BitVal.WPEN = 1;
    }
    else
    {
        Eep_Global.StatusReg_BitVal.WPEN = 0;
    }

	if ( Eep_Global.Status_RegValue & 0x02 )
    {
        Eep_Global.StatusReg_BitVal.WEN = 1;
    }
    else
    {
        Eep_Global.StatusReg_BitVal.WEN = 0;
    }
	
    return (Eep_Global.Status_RegValue);
}

/******************************************************************************
** Name             : Eep_WriteStatusRegister(void)                                 
** Parameter[in]    : regval
** Parameter[out]   : None
** Return Value     : Std_ReturnType
** Note             :
** Description      :                                                         
** @brief  Write new value in EEPROM Status Register.
** @param  regval : new value of register			
** @retval None										
** Only bit 7, bit 3 and bit 2 can be changed via the 	
** WRSR instruction. These modifiable bits are the 		
** Write Protect Enable (WPEN) and Block Protect(BP<1:0>) bits.											
** These three bits are nonvolatile bits that have the	
** same properties and functions as regular EEPROM cells.
** Their values are retained while power is				
** removed from the device.								
******************************************************************************/
Std_ReturnType Eep_WriteStatusRegister(uint8 Eep_WRSR_RegVal)
{
    uint16 Eep_WRSR_Command[1];
	Std_ReturnType Eep_WRSR_RetVal = E_NOT_OK;

	(void) Eep_WREN();

    Eep_WRSR_Command[0] = (uint16)((EEP_WRSR << EEP_SHIFT_DATA_8BIT) | Eep_WRSR_RegVal);

	Spi_SetupEB(SpiConf_SpiChannel_EEPROM_16BIT, (Spi_DataBufferType *)Eep_WRSR_Command, \
	                          NULL_PTR, (Spi_NumberOfDataType)EEP_STS_REG_WRITE_DATA_LEN);
	
	Eep_WRSR_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD2);

	/* wait for process to complete */
	while(Spi_GetStatus() == SPI_BUSY)
	{;}

	return (Eep_WRSR_RetVal);
}

/******************************************************************************
** Name             : Eep_Init()
** Parameter[in]    : void
** Return Value     : None
** Description      : Function to initialized EEPROM variable with default value                                                        
******************************************************************************/
void Eep_Init(void) 
{
    Std_ReturnType Eep_RetVal = E_NOT_OK;
	uint8 lp;

	for (lp = 0; lp < (uint8)EEP_MAX_DATA_WRITE_SIZE; lp++)
	{
		Eep_Global.Eep_Tx_Buffer[lp] = 0; 
	}

	for (lp = 0; lp < (uint8)EEP_MAX_DATA_READ_SIZE; lp++)
	{
		Eep_Global.Eep_Rx_Buffer[lp] = 0; 
	}

    Eep_Global.EepSize        = EEP_E_MAX_ADDRESS;
	Eep_Global.EepBaseAddress = EEP_E_BASE_ADDRESS;
	Eep_Global.EepPageSize    = EEP_E_PAGE_DATA_MAX_LENGTH,	/* 64 bytes for BR25H128-2AC */

    Eep_Global.JobResultType      = SPI_JOB_PENDING;
	Eep_Global.WriteJobResultType = SPI_JOB_OK;
	Eep_Global.Spi_Status         = SPI_IDLE;

	/* Set default value the Status register */
	Eep_Global.StatusReg_BitVal.BP0        = 0;
	Eep_Global.StatusReg_BitVal.BP1        = 0;
	Eep_Global.StatusReg_BitVal.WPEN       = 0;
	Eep_Global.StatusReg_BitVal.WEN        = 0;
	Eep_Global.StatusReg_BitVal.D4         = 0;
	Eep_Global.StatusReg_BitVal.D5         = 0;
	Eep_Global.StatusReg_BitVal.D6         = 0;
	Eep_Global.StatusReg_BitVal.READY_BUSY = MEMIF_IDLE;

	/* Set protection block to default */
    Eep_Global.Protected_Blk_Area = EEP_PROTECTION_BLOCK_ID_3;

    Eep_RetVal = Eep_WREN();

    if (Eep_RetVal == E_OK)
	{
          /*Call Read Status Register function to update the status */
          (void)Eep_ReadStatusRegister();
	}
}


/******************************************************************************/
/* Name             : Eep_Read()
** Parameter[in]    : Eep_AddressType EepromAddress,U8 * TargetAddressPtr,
**                    Eep_LengthType Length
** Return Value     : Eep_Read_Command_Return_Value
** Description      : Function to read EEPROM date for the defined addresss                                                        
*******************************************************************************/
Std_ReturnType Eep_Read ( Eep_AddressType EepromAddress, U8* TargetAddressPtr,\
                        Eep_LengthType Length )
{
    Std_ReturnType Eep_Read_Command_Return_Value = E_OK;
	Std_ReturnType Spi_SyncTransmit_RetVal = E_NOT_OK;
	uint8 InLp;

	Eep_Global.JobResultType = SPI_JOB_PENDING;
	
    /* Check whether the data buffer is NULL and Length is zero, if yes return error */
	if ( 
		(TargetAddressPtr == NULL_PTR) || 
	    (Length == 0) ||
		(Length > Eep_Global.EepPageSize)
	   )
	{
		Eep_Global.JobResultType = SPI_JOB_FAILED;
		Eep_Read_Command_Return_Value = E_NOT_OK;
	}
	else
	{
		/* Do Nothing */
	}

    /* Check if whole memory is blocked, if yes return error */
    if (Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_3)
	{
		Eep_Global.JobResultType = SPI_JOB_FAILED;
		Eep_Read_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}

     /* Check for protected block 2 and min, max range matches, if yes return error */
    if (
		(Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_2) &&
		(
          (EepromAddress >= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_2_MIN) &&
		  (EepromAddress <= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_2_MAX) 
		)
	   )
	{
		Eep_Global.JobResultType = SPI_JOB_FAILED;
		Eep_Read_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}

	/* Check for protected block 1 and min, max range matches, if yes return error */
    if (
		(Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_1) &&
		(
          (EepromAddress >= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_1_MIN) &&
		  (EepromAddress <= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_1_MAX) 
		)
	   )
	{
		Eep_Global.JobResultType = SPI_JOB_FAILED;
		Eep_Read_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}
	 
    /* Check whether the address is within the range, else return error */
    if ( 
		(EepromAddress > Eep_Global.EepSize)  ||
		(EepromAddress < Eep_Global.EepBaseAddress)
	   )
    {
		Eep_Global.JobResultType = SPI_JOB_FAILED;
		Eep_Read_Command_Return_Value = E_NOT_OK;
	}

	if (
		 (Eep_Read_Command_Return_Value == E_OK) &&
		 (Eep_Global.JobResultType == SPI_JOB_PENDING) &&
		 (Eep_Global.Spi_Status == SPI_IDLE)
	   )
	{
		Eep_Global.JobResultType = SPI_JOB_QUEUED;
		Eep_Global.Spi_Status    = SPI_BUSY;

        for (InLp = 0; InLp < Length; InLp++)
	    {
          Eep_Global.Eep_Tx_Buffer[InLp] = 0;
	    }

	    Eep_Global.EepCmd = (Spi_DataBufferType)EEP_READ;
    	Eep_Global.Eep_Tx_Buffer[0] = Eep_Global.EepCmd;
	    Eep_Global.Eep_Tx_Buffer[1] = (uint8)((EepromAddress & 0xFF00) >> 8);
	    Eep_Global.Eep_Tx_Buffer[2] = (uint8)(EepromAddress & 0x00FF);
	    
		Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
					             (Spi_DataBufferType *)TargetAddressPtr, (Spi_NumberOfDataType)(Length + EEP_DATA_MARGIN));

	    Spi_SyncTransmit_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);
	
	    /* wait for process to complete */
		while(Spi_GetStatus() == SPI_BUSY)
		{;}

		if (Spi_SyncTransmit_RetVal == E_OK)
		{
		  Eep_Global.JobResultType = SPI_JOB_OK;
		  Eep_Global.Spi_Status    = SPI_IDLE;
		}
		else
		{
		    Eep_Global.JobResultType = SPI_JOB_FAILED;
		    Eep_Read_Command_Return_Value = E_NOT_OK; 
		}
	}
	return (Eep_Read_Command_Return_Value);
}

/******************************************************************************
** Name            :  Std_ReturnType Eep_Write(Eep_AddressType EepromAddress, 
                             const U8* DataBufferPtr, Eep_LengthType Length)
** Parameter[in]    : Eep_AddressType EepromAddress,
**                    const U8* DataBufferPtr, Eep_LengthType Length
** Return Value     : Std_ReturnType
** Description      :  Function to perform EEPROM Write                                                                                                                                   
******************************************************************************/
Std_ReturnType Eep_Write(Eep_AddressType EepromAddress, const U8* DataBufferPtr, Eep_LengthType Length) 
{
	Std_ReturnType Eep_Write_Command_Return_Value = E_OK;
	Std_ReturnType Spi_SyncTransmit_RetVal = E_NOT_OK;
	uint8 InLp;

	Eep_Global.WriteJobResultType = SPI_JOB_PENDING;
	
    /* Check whether the data buffer is NULL and Length is zero, if yes return error */
	if ( 
		(DataBufferPtr == NULL_PTR) || 
	    (Length == 0) ||
		(Length > Eep_Global.EepPageSize) 
	   )
	{
		Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		Eep_Write_Command_Return_Value = E_NOT_OK;
	}
	else
	{
		/* Do Nothing */
	}

    /* Check if whole memory is blocked, if yes return error */
    if (Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_3)
	{
		Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		Eep_Write_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}

     /* Check for protected block 2 and min, max range matches, if yes return error */
    if (
		(Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_2) &&
		(
          (EepromAddress >= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_2_MIN) &&
		  (EepromAddress <= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_2_MAX) 
		)
	   )
	{
		Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		Eep_Write_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}

	/* Check for protected block 1 and min, max range matches, if yes return error */
    if (
		(Eep_Global.Protected_Blk_Area == (Spi_DataType)EEP_PROTECTION_BLOCK_ID_1) &&
		(
          (EepromAddress >= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_1_MIN) &&
		  (EepromAddress <= (Eep_AddressType)EEP_PROTECTION_BLOCK_ID_1_MAX) 
		)
	   )
	{
		Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		Eep_Write_Command_Return_Value = E_NOT_OK;
	}
	else
	{
        /* Do Nothing */
	}
	 
    /* Check whether the address is within the range, else return error */
    if (EepromAddress > Eep_Global.EepSize)
    {
		Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		Eep_Write_Command_Return_Value = E_NOT_OK;
	}

	if (
		(EepromAddress >= EEP_ID_PAGE_ADDRESS_MIN) &&
		(EepromAddress <= (EEP_E_PAGE_DATA_MAX_LENGTH - 1))
	   )
	{
		if (
			(EepromAddress >= EEP_ID_PAGE_ADDRESS_MIN) &&
		    (EepromAddress <= EEP_ID_PAGE_ADDRESS_MAX)
		   )
		   {
			    Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		        Eep_Write_Command_Return_Value = E_NOT_OK;
		   }
		   else if (Length > (EEP_E_PAGE_DATA_MAX_LENGTH - EepromAddress))
		   {
				Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		        Eep_Write_Command_Return_Value = E_NOT_OK;
	       }

	}

	if (
		 (Eep_Write_Command_Return_Value == E_OK) &&
		 (Eep_Global.WriteJobResultType == SPI_JOB_PENDING) &&
		 (Eep_Global.Spi_Status == SPI_IDLE)
	   )
	{
		Eep_Global.WriteJobResultType = SPI_JOB_QUEUED;
		Eep_Global.Spi_Status    = SPI_BUSY;

        for (InLp = 0; InLp < (Length + EEP_DATA_MARGIN); InLp++)
	    {
          Eep_Global.Eep_Tx_Buffer[InLp] = 0;
	    }

	    Eep_Global.EepCmd = (Spi_DataBufferType)EEP_WRITE;
    	Eep_Global.Eep_Tx_Buffer[0] = Eep_Global.EepCmd;
	    Eep_Global.Eep_Tx_Buffer[1] = (uint8)((EepromAddress & 0xFF00) >> 8);
	    Eep_Global.Eep_Tx_Buffer[2] = (uint8)(EepromAddress & 0x00FF);
                    
	    for (InLp = 3; InLp < (Length + EEP_DATA_MARGIN); InLp++)
	    {
		   Eep_Global.Eep_Tx_Buffer[InLp] = (uint8)(*DataBufferPtr);
		   (DataBufferPtr++);
	    }

		(void)Eep_WREN();
	    
		Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
					                           NULL_PTR, (Spi_NumberOfDataType)(Length + EEP_DATA_MARGIN));

	    Spi_SyncTransmit_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);

		 /* wait for process to complete */
		while(Spi_GetStatus() == SPI_BUSY)
		{;}

		if (Spi_SyncTransmit_RetVal == E_OK)
		{
		  Eep_Global.WriteJobResultType = SPI_JOB_OK;
		  Eep_Global.Spi_Status    = SPI_IDLE;
		}
		else
		{
		    Eep_Global.WriteJobResultType = SPI_JOB_FAILED;
		    Eep_Write_Command_Return_Value = E_NOT_OK; 
		}
	}
	return (Eep_Write_Command_Return_Value);
}

/******************************************************************************
** Name            : Spi_JobResultType Eep_Write_Status (void) 
** Parameter[in]   : void
**                    
** Return Value    : Spi_JobResultType
** Description     : Function to return write status                                                                                                                                   
******************************************************************************/
Spi_JobResultType Eep_Write_Status (void)
{
	return (Eep_Global.WriteJobResultType);
}

/******************************************************************************
** Name            : Std_ReturnType Eep_ReadID (Eep_AddressType EepromAddress, U8* TargetAddressPtr, Eep_LengthType Length) 
** Parameter[in]   : Eep_AddressType EepromAddress, U8* TargetAddressPtr, Eep_LengthType Length
**                    
** Return Value    : Std_ReturnType
** Description     : Function to Read Id page                                                                                                                                  
******************************************************************************/
Std_ReturnType Eep_RDID (Eep_AddressType EepromAddress, U8* TargetAddressPtr, Eep_LengthType Length)
{
	uint8 InLp;
	Std_ReturnType Eep_RDID_RetVal = E_NOT_OK;

   /* Check whether the targetaddressPtr  is NULL and Length is zero, if yes return error */
	if ( 
		(TargetAddressPtr == NULL_PTR) || 
	    (Length == 0) ||
		(Length > Eep_Global.EepPageSize) 
	   )
	{
		Eep_RDID_RetVal = E_NOT_OK;
	}
	else
	{
		/* Check whether the address is within the range, else return error */
		if ((EepromAddress <= Eep_Global.EepSize) &&
			(EepromAddress >= EEP_ID_PAGE_ADDRESS_MIN) &&
			(EepromAddress <= (EEP_E_PAGE_DATA_MAX_LENGTH - 1))
		)
		{
			if (Length > (EEP_E_PAGE_DATA_MAX_LENGTH - EepromAddress))
			{
				Eep_RDID_RetVal = E_NOT_OK;
			}
			else
			{
				for (InLp = 0; InLp < Length; InLp++)
				{
					Eep_Global.Eep_Tx_Buffer[InLp] = 0;
				}

				Eep_Global.EepCmd = (Spi_DataBufferType)EEP_RDID;
				Eep_Global.Eep_Tx_Buffer[0] = Eep_Global.EepCmd;
				Eep_Global.Eep_Tx_Buffer[1] = EEP_ID_ADDRESS_H;
				Eep_Global.Eep_Tx_Buffer[2] = (uint8)(EepromAddress & EEP_ID_ADDRESS_OFFSET);

				Eep_RDID_RetVal = Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
										(Spi_DataBufferType *)TargetAddressPtr, (Spi_NumberOfDataType)(Length + EEP_DATA_MARGIN));

				if(Eep_RDID_RetVal == E_OK)
				{
					Eep_RDID_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);
					
					if(Eep_RDID_RetVal == E_OK)
					{
						/* wait for process to complete */
						while(Spi_GetStatus() == SPI_BUSY)
						{;}
					}
				}
				else
				{
					/*do nothing*/
				}
			}
		}
		else
		{
			Eep_RDID_RetVal = E_NOT_OK;
		}
	}
	return (Eep_RDID_RetVal);
}

/******************************************************************************
** Name            : Std_ReturnType Eep_WRID (Eep_AddressType EepromAddress,
**                    const U8* DataBufferPtr, Eep_LengthType Length) 
** Parameter[in]   : Eep_AddressType EepromAddress,
**                    const U8* DataBufferPtr, Eep_LengthType Length
** Return Value    : Std_ReturnType
** Description     : Function to Write to ID page                                                                                                                                   
******************************************************************************/
Std_ReturnType Eep_WRID (Eep_AddressType EepromAddress, const U8* DataBufferPtr, Eep_LengthType Length)
{
	uint8 InLp;
	uint8 in_data[EEP_E_PAGE_DATA_MAX_LENGTH];
	Std_ReturnType LockStatusReturnType = E_NOT_OK;
	Std_ReturnType Eep_WRID_RetVal = E_NOT_OK;

	if ( 
		(DataBufferPtr == NULL_PTR) || 
	    (Length == 0) ||
		(Length > Eep_Global.EepPageSize) 
	)
	{
		Eep_WRID_RetVal = E_NOT_OK;
	}
	else
	{
		/* Check whether the address is within the range, else return error */
		if ((EepromAddress <= Eep_Global.EepSize) &&
			(EepromAddress >= EEP_ID_PAGE_ADDRESS_MIN) &&
			(EepromAddress <= (EEP_E_PAGE_DATA_MAX_LENGTH - 1))
		)
		{
			if (Length > (EEP_E_PAGE_DATA_MAX_LENGTH - EepromAddress))
			{
				Eep_WRID_RetVal = E_NOT_OK;
			}
			else
			{
				for (InLp = 0; InLp < Length; InLp++)
				{
					Eep_Global.Eep_Tx_Buffer[InLp] = 0;
					in_data[InLp] = 0;
				}

				LockStatusReturnType = Eep_RDLS (in_data, Length);

				if (LockStatusReturnType == E_NOT_OK || in_data == EEP_LID_SET)
				{
					return (Eep_WRID_RetVal);
				}

				Eep_Global.EepCmd = (Spi_DataBufferType)EEP_WRID;
				Eep_Global.Eep_Tx_Buffer[0] = Eep_Global.EepCmd;
				Eep_Global.Eep_Tx_Buffer[1] = EEP_ID_ADDRESS_H;
				Eep_Global.Eep_Tx_Buffer[2] = (uint8)(EepromAddress & EEP_ID_ADDRESS_OFFSET);

				for (InLp = 3; InLp < (Length + EEP_DATA_MARGIN); InLp++)
				{
					Eep_Global.Eep_Tx_Buffer[InLp] = (uint8)(*DataBufferPtr);
					(DataBufferPtr++);
				}

				Eep_WRID_RetVal = Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
										NULL_PTR, (Spi_NumberOfDataType)(Length + EEP_DATA_MARGIN));

				if(Eep_WRID_RetVal == E_OK)
				{
					Eep_WRID_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);
					if(Eep_WRID_RetVal == E_OK)
					{
						/* wait for process to complete */
						while(Spi_GetStatus() == SPI_BUSY)
						{;}
					}
					else
					{
						/*do nothing*/
					}
				}
				else
				{
					/*do nothing*/
				}
			}
		}
		else
		{
			Eep_WRID_RetVal = E_NOT_OK;
		}
	}
	return (Eep_WRID_RetVal);
}

/******************************************************************************
** Name            : Std_ReturnType Eep_RDLS ( U8* TargetAddressPtr, Eep_LengthType Length) 
** Parameter[in]   : U8* TargetAddressPtr, Eep_LengthType Length
**                    
** Return Value    : Std_ReturnType
** Description     : Function to Read lock status                                                                                                                                  
******************************************************************************/
Std_ReturnType Eep_RDLS (  U8* TargetAddressPtr, Eep_LengthType Length)
{
	uint8 InLp;
	Std_ReturnType Eep_RDLS_RetVal = E_NOT_OK;

	if ( 
		(TargetAddressPtr == NULL_PTR) || 
	    (Length == 0) ||
		(Length > Eep_Global.EepPageSize) 
	)
	{
		Eep_RDLS_RetVal = E_NOT_OK;
	}
	else
	{
    	for (InLp = 0; InLp < Length; InLp++)
		{
        	Eep_Global.Eep_Tx_Buffer[InLp] = 0;
		}

		Eep_Global.EepCmd = (Spi_DataBufferType)EEP_RDLS;
    	Eep_Global.Eep_Tx_Buffer[0] = Eep_Global.EepCmd;
		Eep_Global.Eep_Tx_Buffer[1] = EEP_LID_ADDRESS_H;
		Eep_Global.Eep_Tx_Buffer[2] = EEP_LID_ADDRESS_L;
	    
		Eep_RDLS_RetVal = Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
						         (Spi_DataBufferType *)TargetAddressPtr, (Spi_NumberOfDataType)(Length + EEP_DATA_MARGIN));
		if(Eep_RDLS_RetVal == E_OK)
		{
			Eep_RDLS_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);
			if(Eep_RDLS_RetVal == E_OK)
			{
				/* wait for process to complete */
				while(Spi_GetStatus() == SPI_BUSY)
				{;}
			}
			else
			{
				/*do nothing*/
			}
		}
		else
		{
			/*do nothing*/
		}
	}
	return (Eep_RDLS_RetVal);
}

/******************************************************************************
** Name            : Std_ReturnType Eep_LID (U8 EEP_LID_Status) 
** Parameter[in]   : U8 EEP_LID_Status
**                    
** Return Value    : Std_ReturnType
** Description     : Function to set LOCK status                                                                                                                                  
******************************************************************************/
Std_ReturnType Eep_LID (U8 EEP_LID_Status)
{
	uint8 InLp;
	Std_ReturnType Eep_LID_RetVal = E_NOT_OK;

	if(
		(EEP_LID_Status == EEP_LID_SET)||
		(EEP_LID_Status == EEP_LID_RESET)
	)
	{
		for (InLp = 0; InLp <EEP_LID_LENGTH ; InLp++)
		{
			Eep_Global.Eep_Tx_Buffer[InLp] = 0;
		}
		
		Eep_Global.Eep_Tx_Buffer[0] = (Spi_DataBufferType)EEP_LID;
		Eep_Global.Eep_Tx_Buffer[1] = EEP_LID_ADDRESS_H;
		Eep_Global.Eep_Tx_Buffer[2] = EEP_LID_ADDRESS_L;
		Eep_Global.Eep_Tx_Buffer[3] = EEP_LID_Status;
			
		Eep_LID_RetVal = Spi_SetupEB(SpiConf_SpiChannel_EEPROM_8BIT, (Spi_DataBufferType *)Eep_Global.Eep_Tx_Buffer, \
								NULL_PTR, (Spi_NumberOfDataType)(EEP_LID_LENGTH));
		if(Eep_LID_RetVal == E_OK)
		{
			Eep_LID_RetVal = Spi_SyncTransmit(SpiConf_SpiSequence_EEPROM_CMD);
			if(Eep_LID_RetVal == E_OK)
			{
				/* wait for process to complete */
				while(Spi_GetStatus() == SPI_BUSY)
				{;}
			}
			else
			{
				/*do nothing*/
			}
		}
		else
		{
			/*do nothing*/
		}
	}
	else
	{
		Eep_LID_RetVal = E_NOT_OK;
	}
	return (Eep_LID_RetVal);
}