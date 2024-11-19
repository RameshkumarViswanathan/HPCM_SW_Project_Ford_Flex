/******************************************************************************/
/*  Copyright (C)                                                             */
/*  All rights reserved.                                                      */
/******************************************************************************/
/*  MODULE 	Testapp_HwDo.c                                                    */
/******************************************************************************/
/*  BASE MODULE                                                               */
/******************************************************************************/
/*  VERSION  1.0         | PROJECT                                            */
/******************************************************************************/
/*  PURPOSE                                                                   */
/*    Implementation of Discrete output Functions                             */
/******************************************************************************/
/*  FUNCTIONS  						                                          */
/*  bios_SetDO_Channels                                                       */
/******************************************************************************/
/*  REMARKS                                                                   */
/******************************************************************************/
/*  CHANGES                                                                   */
/* ID   dd.mm.yyyy   Name          Description                            	  */
/* ---  ----------   -----------   -----------------------------------------  */
/* [1]  10.02.2023    Sagar H  	                                              */
/******************************************************************************/
/******************************************************************************/
/*                      Include Section                                       */
/******************************************************************************/
#include "Testapp_EEPROM.h"
#include "Eep.h"
#include "Testapp_PWM.h"
#include "IfxPort_reg.h"
#include "IfxSrc_reg.h"
#include "Dio.h"

/******************************************************************************/
/*                      Macro definitions                                     */
/******************************************************************************/
#define EEP_TEST_TX_ONEBYTE_CNT         (64)
#define EEP_TEST_RX_ONEBYTE_CNT         (67)


/******************************************************************************/
/*                       Global Varibles                                      */
/******************************************************************************/
uint8 Eep_Test_Rst[EEP_TEST_COUNT];
uint8 Eep_Test_CompareRst[EEP_TEST_COUNT];
uint16 Eep_Test_Addr;
uint8 Eep_Test_Tx_OneByte[EEP_TEST_TX_ONEBYTE_CNT];
uint8 Eep_Test_Rx_OneByte[EEP_TEST_RX_ONEBYTE_CNT];
uint8 Eep_Test_Protection = 0;
uint8 Eep_Test_TimeMesFlag= 0;
uint8 Eep_Test_Pageone = 0;
uint8 Eep_Test_StatusReg_Check = 0;

/*******************************************************************************
** Function Name	: Eep_Test_Init
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to init eeprom test
*******************************************************************************/
void Eep_Test_Init (void)
{
	uint8 flp;
	for (flp = 0; flp < EEP_TEST_COUNT; flp++)
    {
		Eep_Test_Rst[flp] = 0xFF;
		Eep_Test_CompareRst[flp] = 0xFF;
	}
    
	Eep_Test_Addr = 0xFFFF;

    for (flp = 0; flp < EEP_TEST_TX_ONEBYTE_CNT; flp++)
    {
		Eep_Test_Tx_OneByte[flp] = 0x00;
	}

    for (flp = 0; flp < EEP_TEST_RX_ONEBYTE_CNT; flp++)
    {
		Eep_Test_Rx_OneByte[flp] = 0x00;
	}

	Eep_Test_DIO_Low();
	
}

/*******************************************************************************
** Function Name	: Eep_Test_Toggle_DIO
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to toggle gpio  to measure timing
*******************************************************************************/
void Eep_Test_DIO_High(void)
{
    Dio_WriteChannel((Dio_ChannelType)DIO_CHANNEL_2_0, STD_HIGH);
}

void Eep_Test_DIO_Low(void)
{
    Dio_WriteChannel((Dio_ChannelType)DIO_CHANNEL_2_0, STD_LOW);
}

/*******************************************************************************
** Function Name	: Eep_Test_WriteEnable_Reg
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test eeprom write enable/disable instruction
*******************************************************************************/
void Eep_Test_WriteEnable_Reg (void)
{
    uint8 Eep_Test_ReadStatusReg_RetVal = 0xFF;
	Std_ReturnType Eep_Test_Retval = E_NOT_OK;
	// while(1) 
	{
    /* Enable the write access to the EEPROM */
        Eep_Test_Retval = Eep_WREN();
	}
 
    if (Eep_Test_Retval == E_OK)
	{
    	/* Test Case 0: Read Status Register */
		Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    		if (Eep_Test_ReadStatusReg_RetVal == 0x0D)   //1110
    	{
			Eep_Test_Rst[0] = E_OK;
		}
	}
      /* Disable the write access to the EEPROM */
	 Eep_Test_Retval = Eep_WRDI();

	 if (Eep_Test_Retval == E_OK)
	{
    	/* Test Case 1: Read Status Register */
		Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    		if (Eep_Test_ReadStatusReg_RetVal == 0x0C)   //1100
    	{
			Eep_Test_Rst[1] = E_OK;
		}
	}

    /* Enable the write access to the EEPROM */
	Eep_Test_Retval = Eep_WREN();
	if (Eep_Test_Retval == E_OK)
	{
		/*do nothing*/
	}
}	

/*******************************************************************************
** Function Name	: Eep_Test_Status_Reg
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test eeprom status register
*******************************************************************************/
void Eep_Test_Status_Reg (void)
{
    uint8 Eep_Test_ReadStatusReg_RetVal = 0xFF;
	uint8 Eep_Test_Sts_byte1 = 0x08;
    uint8 Eep_Test_Sts_byte2 = 0x04;
    uint8 Eep_Test_Sts_byte3 = 0x0C;
	uint8 Eep_Test_Sts_byte4 = 0x8C; 
	uint8 Eep_Test_Sts_byte5 = 0x02;  

	/* Test Case 2: Read Status Register */
	Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    if (Eep_Test_ReadStatusReg_RetVal == 0x0C)   //1100
    {
		Eep_Test_Rst[2] = E_OK;
	}

    /* Test Case 3: write status register and Read back */
	Eep_WriteStatusRegister(Eep_Test_Sts_byte1);
	Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    if (Eep_Test_ReadStatusReg_RetVal == 0x08)   //1000
    {
		Eep_Test_Rst[3] = E_OK;
	}

    /* Test Case 4: write status register and Read back */
	Eep_WriteStatusRegister(Eep_Test_Sts_byte2);
	Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    if (Eep_Test_ReadStatusReg_RetVal == 0x04)   //1000
    {
		Eep_Test_Rst[4] = E_OK;
	}

     /* write status register back to default */
    Eep_WriteStatusRegister(Eep_Test_Sts_byte3);

	/* write status register back to default */
    Eep_WriteStatusRegister(Eep_Test_Sts_byte4);
	Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    if (Eep_Test_ReadStatusReg_RetVal == 0x8C)   //1000 1100
    {
		Eep_Test_Rst[5] = E_OK;
	}
	Eep_WriteStatusRegister(Eep_Test_Sts_byte5);
	Eep_Test_ReadStatusReg_RetVal = Eep_ReadStatusRegister();
    if (Eep_Test_ReadStatusReg_RetVal == 0x02)   //1000 1100
    {
		Eep_Test_Rst[6] = E_OK;
	}
}

/*******************************************************************************
** Function Name	: Std_ReturnType Eep_Test_Compare_Result (uint8 Eep_Test_Tx_buf[], 
**                                         uint8 Eep_Test_Rx_buf[], U32 length)
** Parameter[in] 	: uint8 Eep_Test_Tx_buf[], uint8 Eep_Test_Rx_buf[], U32 length
** Return Value	  	: Std_ReturnType
** Description	  	: Function to compare the result value
*******************************************************************************/
Std_ReturnType Eep_Test_Compare_Result (uint8 Eep_Test_Tx_buf[], uint8 Eep_Test_Rx_buf[], U32 length)
{
   Std_ReturnType Eep_Test_Cmp_Rst = E_OK;
   uint32 lp;

   uint8 Eep_Test_TempTx_buf[67];
   uint8 Eep_Test_TempRx_buf[67];

    for (lp = 0; lp < length; lp++)
	{
	    Eep_Test_TempTx_buf[lp] = Eep_Test_Tx_buf[lp];
		Eep_Test_TempRx_buf[lp] = Eep_Test_Rx_buf[lp];
	}

   for (lp = 0; lp < length; lp++)
   {
	  if (Eep_Test_TempTx_buf[lp] != Eep_Test_TempRx_buf[lp+3]);
	  {
		 Eep_Test_Cmp_Rst = E_NOT_OK;
	  }
   }
   return (Eep_Test_Cmp_Rst);
}

/*******************************************************************************
** Function Name	: void Eep_Test_Page_Memory_WriteByte(uint16 TestAddr, \
**                       uint8 TestLength, uint8 TestStartVal, uint8 TestValDif)
** Parameter[in] 	: uint16 TestAddr, uint8 TestLength, uint8 TestStartVal, uint8 TestValDif
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test eeprom page memory write
*******************************************************************************/
U32 Eep_Test_Page_Memory_WriteByte(uint16 TestAddr, uint8 TestLength, uint8 TestStartVal, uint8 TestValDif)
{
	U32 Eep_Test_Write_Res = 0xFFFFFFFF;
    Std_ReturnType Eep_Test_Cmp_Rst = E_NOT_OK;
	uint8 Flp;
	uint8 TestSum = 0;

	for (Flp = 0; Flp < TestLength; Flp++)
    {
		Eep_Test_Tx_OneByte[Flp] = 0x00;
	}
    
	TestSum = TestStartVal;
	for (Flp = 0; Flp < TestLength; Flp++)
	{
        Eep_Test_Tx_OneByte[Flp] = TestSum;
		TestSum = TestSum + TestValDif;
	}

	Eep_Test_Addr = TestAddr;
    Eep_Test_DIO_High();
	Eep_Test_Write_Res = HWIO_EEPROM_Write(Eep_Test_Addr, Eep_Test_Tx_OneByte, TestLength);
	Eep_Test_DIO_Low();
	return (Eep_Test_Write_Res);
}

/*******************************************************************************
** Function Name	: void Eep_Test_Page_Memory_ReadByte(uint16 TestAddr, uint8 TestLength)
** Parameter[in] 	: uint16 TestAddr, uint8 TestLength
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test eeprom page memory READ
*******************************************************************************/
U32 Eep_Test_Page_Memory_ReadByte(uint16 TestAddr, uint8 TestLength)
{
	U32 Eep_Test_Read_Res = 0xFFFFFFFF; 
	uint8 Flp;
	uint8 TestSum = 0;

    for (Flp = 0; Flp < TestLength; Flp++)
    {
		Eep_Test_Rx_OneByte[Flp] = 0x00;
	}

	Eep_Test_Addr = TestAddr;
    Eep_Test_DIO_High();
	Eep_Test_Read_Res = HWIO_EEPROM_Read (Eep_Test_Addr, Eep_Test_Rx_OneByte, TestLength);
    Eep_Test_DIO_Low();
	return (Eep_Test_Read_Res);
}

/*******************************************************************************
** Function Name	: Eep_Test_SwitchToGPIO
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to change the PWM pin to GPIO
*******************************************************************************/
void Eep_Test_SwitchToGPIO (void)
{
	MODULE_P02.IOCR0.U &= 0x00000000;   
	MODULE_P02.IOCR0.U |= 0x80808080;  /*Set P2.0,P2.1,P2.2 as output, pushpull, general I/O*/ 

	MODULE_P02.IOCR4.U &= 0xF8000000;
	MODULE_P02.IOCR4.U |= 0x00808080;  /*Set P2.3,P2.4,P2.5 as output, pushpull, general I/O*/
}


/*******************************************************************************
** Function Name	: Testapp_EEPROM
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note			  	: None
** Description	  	: Function to test all eeprom functionality
*******************************************************************************/
void Testapp_EEPROM (void)
{
	uint32  Eep_Test_WriteCmd_Response          = 0xFFFFFFF;
	uint32  Eep_Test_ReadCmd_Response           = 0xFFFFFFF;
	uint32  Eep_Test_WriteProtectCmd_Response   = 0xFFFFFFF;
	Std_ReturnType Eep_Test_Cmp_Rst = E_NOT_OK;

	Eep_Test_Init();
	Eep_Test_SwitchToGPIO ();

	// Eep_Test_WriteEnable_Reg();
	if (Eep_Test_StatusReg_Check == 1)
	{
	Eep_Test_Status_Reg();
	}
    /* Time measurement test */
	if (Eep_Test_TimeMesFlag == 1)   /* 1 byte write measure */
	{
	    while(1)
	    {
            Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 1, 1, 1);
	    }
	}
	else if (Eep_Test_TimeMesFlag == 2)   /* 64 byte write measure */
	{
	    while(1)
	    {
            Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 64, 1, 1);
	    }
	}
	else if (Eep_Test_TimeMesFlag == 3)   /* 64 byte read measure */
	{
	    while(1)
	    {
            Eep_Test_ReadCmd_Response = Eep_Test_Page_Memory_ReadByte(0x0040, 64);
	    }
	}
	else if (Eep_Test_TimeMesFlag == 4)   /* 1 byte read measure */
	{
	    while(1)
	    {
            Eep_Test_ReadCmd_Response = Eep_Test_Page_Memory_ReadByte(0x0040, 1);
	    }
	}
	else
	{
		/* do nothing */
	}

      /* Min Page Write */
	  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 64, 40, 1);
	  if (Eep_Test_WriteCmd_Response == 0)
	  {
		Eep_Test_Rst[10] = E_OK;
	  }
	  /* Mid Page Write */
	  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x1FC0, 64, 0, 5);
	  if (Eep_Test_WriteCmd_Response == 0)
	  {
		Eep_Test_Rst[11] = E_OK;
	  }
	  /* Max Page Write */
	  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3FC0, 64, 0, 10);
	  if (Eep_Test_WriteCmd_Response == 0)
	  {
		Eep_Test_Rst[12] = E_OK;
	  }

      /* Min Page ReaD */
	  Eep_Test_ReadCmd_Response = Eep_Test_Page_Memory_ReadByte(0x0040, 64);
	  if (Eep_Test_ReadCmd_Response == 0)
	  {
		Eep_Test_Rst[13] = E_OK;
	  }

	   /* MiD Page ReaD */
	  Eep_Test_ReadCmd_Response = Eep_Test_Page_Memory_ReadByte(0x1FC0, 64);
	  if (Eep_Test_ReadCmd_Response == 0)
	  {
		Eep_Test_Rst[14] = E_OK;
	  }

	   /* MAX Page ReaD */
	  Eep_Test_ReadCmd_Response = Eep_Test_Page_Memory_ReadByte(0x3FC0, 64);
	  if (Eep_Test_ReadCmd_Response == 0)
	  {
		Eep_Test_Rst[15] = E_OK;
	  }

     /*************************************************************************/
	 /*     Check Block 3                                                     */
	 /*************************************************************************/
	  if (Eep_Test_Protection == 7)
	  {
           /* Check Protection functionality Testing - whole memory disable*/  
           Eep_Test_WriteProtectCmd_Response = HWIO_EEPROM_Write_Protect(3, 1);
	  }

	  if (Eep_Test_Protection == 8)
	  {
		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 2, 1, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0040, 2);

		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3CF0, 2, 10, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3CF0, 2);

		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x2000, 2, 20, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x2000, 2);
		   
		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x1FFC, 2, 30, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x1FFC, 2);

		 Eep_Test_WriteProtectCmd_Response = HWIO_EEPROM_Write_Protect(3, 0);
      }

     /*************************************************************************/
	 /*     Check Block 2                                                     */
	 /*************************************************************************/
	   if (Eep_Test_Protection == 5)
	   {
           HWIO_EEPROM_Write_Protect(2, 1);
	   }
	   if (Eep_Test_Protection == 6)
	   {
		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 2, 1, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0040, 2);

		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3CF0, 2, 10, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3CF0, 2);

		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x2000, 2, 20, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x2000, 2);
		   
		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x1FFC, 2, 30, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x1FFC, 2);

	       HWIO_EEPROM_Write_Protect(2, 0);
	   }

     /*************************************************************************/
	 /*     Check Block 1                                                     */
	 /*************************************************************************/
	   	   if (Eep_Test_Protection == 3)
	   {
			HWIO_EEPROM_Write_Protect(1, 1);
	   }

	   	   if (Eep_Test_Protection == 4)
	   {
		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 2, 1, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0040, 2);

		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3CF0, 2, 10, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3CF0, 2);

		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3000, 2, 20, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3000, 2);
		   
		 Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x2FFC, 2, 30, 1);
		 Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x2FFC, 2);
	  	
		 HWIO_EEPROM_Write_Protect(1, 0);
	   }

     /*************************************************************************/
	 /*     Check Block 1                                                     */
	 /*************************************************************************/
       if (Eep_Test_Protection == 1)
	   {
	  		HWIO_EEPROM_Write_Protect(0, 1);
	   }

	   if (Eep_Test_Protection == 2)
	   {
		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0040, 2, 1, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0040, 2);

		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3CF0, 2, 10, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3CF0, 2);

		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x3000, 2, 20, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x3000, 2);
		   
		   Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x2FFC, 2, 30, 1);
		   Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x2FFC, 2);
	  	  
		   HWIO_EEPROM_Write_Protect(0, 0);
	   }

	   if (Eep_Test_Pageone == 1)
       {
		 /* check address 0000*/
          Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0000, 64, 0, 10);
		  if  (Eep_Test_WriteCmd_Response != 0)
		  {
			Eep_Test_Rst[30] = E_OK;
		  }
		 /* check address 0001*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0001, 64, 0, 10);
		  if  (Eep_Test_WriteCmd_Response != 0)
		  {
			Eep_Test_Rst[31] = E_OK;
		  }
		 /* check address 0002*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0002, 64, 0, 10);
		  if  (Eep_Test_WriteCmd_Response != 0)
		  {
			Eep_Test_Rst[32] = E_OK;
		  }

		   /* check address 0003*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0003, 5, 2, 10);
		  if  (Eep_Test_WriteCmd_Response == 0)
		  {
			Eep_Test_Rst[33] = E_OK;
		  }
           Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0003, 5);

		   /* check address 0003*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x003F, 1, 22, 20);
		  if  (Eep_Test_WriteCmd_Response == 0)
		  {
			Eep_Test_Rst[34] = E_OK;
		  }
           Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x003F, 1);

		  /* check address 0020*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0020, 32, 2, 4);
		  if  (Eep_Test_WriteCmd_Response == 0)
		  {
			Eep_Test_Rst[36] = E_OK;
		  }
          Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0020, 32);

		   /* check address 0020*/
		  Eep_Test_WriteCmd_Response = Eep_Test_Page_Memory_WriteByte(0x0020, 33, 2, 2);
		  if  (Eep_Test_WriteCmd_Response != 0)
		  {
			Eep_Test_Rst[37] = E_OK;
		  }
		  Eep_Test_ReadCmd_Response  = Eep_Test_Page_Memory_ReadByte(0x0020, 33);
       }
}
