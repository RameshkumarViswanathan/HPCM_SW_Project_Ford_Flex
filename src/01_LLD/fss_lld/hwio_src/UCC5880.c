/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   UCC5880.c                                                        */
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
/* [1.0.0]         06.12.2022    Shalini          Created                    */
/*****************************************************************************/

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "UCC5880.h"
#include "UCC5880_Private.h"
/*****************************************************************************/
/*                      Global Variable                                      */
/*****************************************************************************/
uint16 GD_faults[GD_NUM_OF_STATUS_REG];
uint16 GD_fault1_val[GD_NUM_OF_CHIPS];
uint16 GD_fault2_val[GD_NUM_OF_CHIPS];
uint16 GD_ReadReg_Buff;
boolean GD_CFG_Update[GD_NUM_OF_CHIPS];

/* variable to read calibration data after write (TestCode purpose)*/
uint16 GD_Calib_CFG1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CFG2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CFG3_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CFG4_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CFG5_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CFG6_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ACT1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ACT2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ACT3_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_DIGCOMP1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_DIGCOMP2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC3_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC4_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC5_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC6_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ADC6_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CONTROL1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CONTROL2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CONTROL3_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_FAULT1_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_FAULT2_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_STATUS_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_CRC_Reg_Val[GD_NUM_OF_CHIPS];
uint16 GD_Calib_ID_Reg_Val[GD_NUM_OF_CHIPS];

/*****************************************************************************/
/*                      Static  Variable                                     */
/******************************************** *********************************/
static boolean s_GD_DiagStatus[GD_NUM_OF_CHIPS];  
static boolean s_GD_PriReadyFault[GD_NUM_OF_CHIPS];
static boolean s_GD_SecReadyFault[GD_NUM_OF_CHIPS];
static boolean s_GD_Fault1[GD_NUM_OF_CHIPS];
static boolean s_GD_Fault2[GD_NUM_OF_CHIPS];
static boolean s_GD_Device_Error[GD_NUM_OF_CHIPS];
static boolean s_GD_InitFault[GD_NUM_OF_CHIPS];
static boolean s_GD_PowerFail[GD_NUM_OF_CHIPS];
static boolean s_GD_InitStatus[GD_NUM_OF_CHIPS];
static uint16 s_GD_StatusReg[GD_NUM_OF_STATUS_REG];
static uint16 s_GD_FaultType[GD_NUM_OF_CHIPS];
static uint8 s_GD_DiagCnt;

/*Dio pin for flt1 and flt2*/
static uint8  GD_Level_nFLTb_uh;
static uint8  GD_Level_nFLTb_ul;
static uint8  GD_Level_nFLTb_vh;
static uint8  GD_Level_nFLTb_vl;
static uint8  GD_Level_nFLTb_wh;
static uint8  GD_Level_nFLTb_wl;
static uint8  GD_InitErrorAutoRstCnt;

/*****************************************************************************/
/*                      Array Definition                                     */
/*****************************************************************************/

uint16 GD_StatusRegAdrs[GD_NUM_OF_STATUS_REG] =
{
    GD_ADDR_FAULT1, GD_ADDR_FAULT2, GD_ADDR_STATUS
};

uint16 GD_CfgRegAdrs[GD_NUM_OF_SEQREADCONF] =
{
    GD_ADDR_CFG1, GD_ADDR_CFG2, GD_ADDR_CFG3, GD_ADDR_CFG4, GD_ADDR_CFG5, GD_ADDR_CFG6
};

uint16 GD_FaultMask[GD_NUM_OF_STATUS_REG] =
{
    GD_FAULT1_MASK, GD_FAULT2_MASK, GD_STATUS_FAULT_MASK
};

/*****************************************************************************/
/*                      Global Variable Declarations                         */
/*****************************************************************************/
GD_DiagSnapshot_type GD_localcopy_DiagSnapshot[GD_NUM_OF_CHIPS];
GD_ErrType GD_Det_ReportError_u8;
GD_StateMachine_ModeType GD_StateMachine = None;
/*****************************************************************************/
/*                      Private Function Definitions                         */
/*****************************************************************************/

Spi_ChannelType Prv_GD_SeqChannelSet[GD_NUM_OF_CHIPS][GD_NUM_OF_CHANNELS] =
{
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_ADD_EN,
	},
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_ADD_EN,
	},
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_ADD_EN,
	},
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_ADD_EN,
	},
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_ADD_EN,
	},
	{
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_RD_DATA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WR_RA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WRL,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WRH,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_CFG_LCK,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_EN_CFG,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_SW_RST,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_NOP,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WR_CA,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_ADD_DIS,
		SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_ADD_EN,
	}
};

Spi_SequenceType Prv_GD_SeqSet[GD_NUM_OF_CHIPS][GD_NUM_OF_SEQ] =
{
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_ADD_EN,
	},
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_ADD_EN,
	},
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_ADD_EN,
	},
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_ADD_EN,
	},
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_ADD_EN,
	},
	{
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_RD_DATA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WR_RA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WRL,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WRH,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_CFG_LCK,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_EN_CFG,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_SW_RST,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_NOP,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WR_CA,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_ADD_DIS,
		SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_ADD_EN,
	}
};

uint16 Prv_GD_SpiTxBuff_Read_Reg[DATA_LENGTH];
uint16 Prv_GD_SpiRxBuff_Read_Reg[DATA_LENGTH];
uint16 Prv_GD_SpiTxBuff_Write_Reg_WR_RA[DATA_LENGTH];
uint16 Prv_GD_SpiTxBuff_Write_Reg_WRL[DATA_LENGTH];
uint16 Prv_GD_SpiTxBuff_Write_Reg_WRH[DATA_LENGTH];
uint16 Prv_GD_SpiRxBuff_Write_Reg_WR_RA[DATA_LENGTH];
uint16 Prv_GD_SpiRxBuff_Write_Reg_WRL[DATA_LENGTH];
uint16 Prv_GD_SpiRxBuff_Write_Reg_WRH[DATA_LENGTH];
uint16 Prv_GD_SpiTxBuffData[DATA_LENGTH];
uint16 Prv_GD_SpiRxBuffData[DATA_LENGTH];

/*Function to perform operations*/
/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_SWRESET(uint16 chipId)            */
/* Descriptions    : Function to write configuration reset                   */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId)                                          */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_SWRESET(uint16 chipId)
{
	Std_ReturnType RetVal = (uint8)E_NOT_OK;
	//uint8 Crc;

	Prv_GD_SpiTxBuffData[0] = CMD_SWRST(chipId);
	Prv_GD_SpiRxBuffData[0] = 0u;
	//Crc = Prv_cal_crc_table(Prv_GD_SpiTxBuff_SwRst, 2);
	//Prv_GD_CalculateCrc(chipId, Crc);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_SW_RST], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					               (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);

	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_SW_RST]);

	return RetVal;
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_NOP(uint16 chipId)                */
/* Descriptions    : Function to write NOP                                   */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId)                                          */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_NOP(uint16 chipId)
{
	Std_ReturnType RetVal = E_OK;
	//uint8 Crc;

	Prv_GD_SpiTxBuffData[0] = CMD_NOP(chipId);
	Prv_GD_SpiRxBuffData[0] = 0u;
	//Crc = Prv_cal_crc_table(Prv_GD_SpiTxBuff_NOP, 2);
	//Prv_GD_CalculateCrc(chipId, Crc);
	
	RetVal |= Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_NOP], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					                        (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);

	RetVal |= Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_NOP]);

	return RetVal;
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_EnableConf(uint16 chipId)         */
/* Descriptions    : Function to write enable config                         */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId)                                          */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_EnableConf(uint16 chipId)
{
	Std_ReturnType RetVal = (uint8)E_NOT_OK;

	// uint8 Crc;
	Prv_GD_SpiTxBuffData[0] = CMD_CFG_ENABLE; //CMD_EN_CFG(chipId);
	Prv_GD_SpiRxBuffData[0] = 0u;
	// Crc= Prv_cal_crc_table( Prv_GD_SpiTxBuff_EnCfg );
	// Prv_GD_CalculateCrc(chipId, Crc);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_EN_CFG], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					                                              (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);    
	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_EN_CFG]);

	return (RetVal);
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_WrReg16(uint16 chipId,            */
/*                           uint16 addr, uint16 data)                       */
/* Descriptions    : Function to write config register                       */
/* Called by       :                                                         */
/* Parameters (in) : (uint16 chipId, uint16 addr, uint16 data)               */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_WrReg16(uint16 chipId, uint16 addr, uint16 data)
{
	Std_ReturnType RetVal = E_NOT_OK;

	Prv_GD_SpiTxBuff_Write_Reg_WR_RA[0] = CMD_WRITE_REQUEST(chipId, addr);
	Prv_GD_SpiTxBuff_Write_Reg_WRL[0]   = CMD_WRITEL_REQUEST(chipId, data);
	Prv_GD_SpiTxBuff_Write_Reg_WRH[0]   = CMD_WRITEH_REQUEST(chipId, data);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_WR_RA], (Spi_DataType *)Prv_GD_SpiTxBuff_Write_Reg_WR_RA,
					  (Spi_DataType *)Prv_GD_SpiRxBuff_Write_Reg_WR_RA, DATA_LENGTH);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_WRH], (Spi_DataType *)Prv_GD_SpiTxBuff_Write_Reg_WRH,
					  (Spi_DataType *)Prv_GD_SpiRxBuff_Write_Reg_WRH, DATA_LENGTH);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_WRL], (Spi_DataType *)Prv_GD_SpiTxBuff_Write_Reg_WRL,
					  (Spi_DataType *)Prv_GD_SpiRxBuff_Write_Reg_WRL, DATA_LENGTH);

	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_WR_RA]);

	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_WRH]);

	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_WRL]);

	return (RetVal);
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_LockConf(uint16 chipId)           */
/* Descriptions    : Function to Lock Config Register                        */
/* Called by       :                                                         */
/* Parameters (in) : (uint16 chipId)                                         */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_LockConf(uint16 chipId)
{
	Std_ReturnType RetVal = (uint8)E_NOT_OK;

	// uint8 Crc;
	Prv_GD_SpiTxBuffData[0] = CMD_CFG_LOCK; 
	Prv_GD_SpiRxBuffData[0] = 0u;
	// Crc= Prv_cal_crc_table( Prv_GD_SpiTxBuff_LkCfg);
	// Prv_GD_CalculateCrc(chipId , Crc);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_CFG_LCK], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					                                              (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);   
	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_CFG_LCK]);

	return (RetVal);
}

/*****************************************************************************/
/* Function Name   : uint16 Prv_GD_ReadReg(uint16 chipId, uint16 addr)       */
/* Descriptions    : Function to read register                               */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId, uint16 addr                              */
/* Parameters (out): uint16                                                  */
/* Requirement ID  :                                                         */
/*****************************************************************************/
uint16 Prv_GD_ReadReg(uint16 chipId, uint16 addr)
{
	Std_ReturnType RetVal = (uint8)E_NOT_OK;

	Prv_GD_SpiTxBuff_Read_Reg[0]   = CMD_READ_REQUEST(chipId, addr);
	Prv_GD_SpiTxBuffData[0]     = CMD_NOP(chipId);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_RD_DATA], (uint8*)&(Prv_GD_SpiTxBuff_Read_Reg[0]),
					  (uint8 *)&(Prv_GD_SpiRxBuff_Read_Reg[0]), DATA_LENGTH);
	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_CHANNEL_NOP], (uint8*)&(Prv_GD_SpiTxBuffData[0]),
					  (uint8 *)&(Prv_GD_SpiRxBuff_Read_Reg[0]), DATA_LENGTH);

	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_RD_DATA]);
	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_NOP]);

	if(RetVal == E_OK)
	{
		GD_ReadReg_Buff = Prv_GD_SpiRxBuff_Read_Reg[0];
	}
	return (GD_ReadReg_Buff);
}

/*****************************************************************************/
/* Function Name   : GD_Status_e GD_ReadFault(uint16 chipId)                 */
/* Descriptions    : Function to read fault status                           */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId                                           */
/* Parameters (out):  uint16                                                 */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint16 GD_ReadFault(uint16 chipId)
{
	uint16 Fault_Result = 0u;

	if (s_GD_InitFault[chipId])
	{
		Fault_Result |= GD_INIT_FAULT;
	}

	if (s_GD_PowerFail[chipId])
	{
		Fault_Result |= GD_PWR_FAIL;
	}

	if (s_GD_Device_Error[chipId])
	{
		Fault_Result |= GD_DEVICE_ERROR;
	}

	if (s_GD_Fault1[chipId])
	{
		Fault_Result |= GD_FAULT1;
	}

	if (s_GD_Fault2[chipId])
	{
		Fault_Result |= GD_FAULT2;
	}

	if (s_GD_PriReadyFault[chipId])
	{
		Fault_Result |= GD_PRI_RDY_FAULT;
	}

	if (s_GD_SecReadyFault[chipId])
	{
		Fault_Result |= GD_SEC_RDY_FAULT;
	}

	return Fault_Result;
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_ClrError(void)                    */
/* Descriptions    : Function to read fault status                           */
/* Called by       :                                                         */
/* Parameters (in) : void                                                    */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_ClrError(void)
{
	Std_ReturnType GD_ClrError_RetVal = E_NOT_OK;
	uint16 Chip_idx                   = 0u;

	for(Chip_idx = 0u; Chip_idx < GD_NUM_OF_CHIPS; Chip_idx++)
	{
		GD_fault1_val[Chip_idx] = 0xFFFF;
		GD_fault2_val[Chip_idx] = 0xFFFF;
	}

	for(Chip_idx = 0u; Chip_idx < GD_NUM_OF_CHIPS; Chip_idx++)
	{
		/* Send command to enter to config state */
		GD_ClrError_RetVal = Prv_GD_EnableConf(Chip_idx);

		if (GD_ClrError_RetVal == E_OK)
		{
			/* Send command to reset all config reg value */
            GD_ClrError_RetVal = Prv_GD_SWRESET(Chip_idx);
		}

		if (GD_ClrError_RetVal == E_OK)
		{
			/* Send command to switch from config to Active state */
            GD_ClrError_RetVal = Prv_GD_LockConf(Chip_idx);
		}

		if (GD_ClrError_RetVal == E_OK)
		{
			/* Send command to clear error */
			GD_ClrError_RetVal = Prv_GD_WrReg16(Chip_idx, GD_ADDR_CONTROL1, GD_CLR_FAULT_MASK);
		}

        /* Read Fault1 and Fault2 register */
		if (GD_ClrError_RetVal == E_OK)
		{
          	GD_fault1_val[Chip_idx] = Prv_GD_ReadReg(Chip_idx, GD_ADDR_FAULT1);
			GD_fault2_val[Chip_idx] = Prv_GD_ReadReg(Chip_idx, GD_ADDR_FAULT2);
		}

    	if((GD_fault1_val[Chip_idx] == N0_FAULT) && (GD_fault2_val[Chip_idx] == N0_FAULT))
    	{
    		GD_ClrError_RetVal = E_OK;
    	}
		else
		{
		   GD_ClrError_RetVal = E_NOT_OK;
		   s_GD_Fault1[Chip_idx]++;
		}
	}
	return (GD_ClrError_RetVal);
}

/*****************************************************************************/
/* Function Name: GD_Status_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_ChipReset(void)
{
	do_gd0u(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1u(STD_HIGH);
	do_gd2u(STD_HIGH);

	do_gd0v(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1v(STD_HIGH);
	do_gd2v(STD_HIGH);

	do_gd0w(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1w(STD_HIGH);
	do_gd2w(STD_HIGH);
}
/*****************************************************************************/
/* Function Name: GD_Status_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_ChipNormal(void)
{
	do_gd0u(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1u(STD_HIGH);
	do_gd2u(STD_LOW);

	do_gd0v(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1v(STD_HIGH);
	do_gd2v(STD_LOW);

	do_gd0w(STD_HIGH); /* High_side NRST/RDY pin for 1edi2002as */
	do_gd1w(STD_HIGH);
	do_gd2w(STD_LOW);
}
/*****************************************************************************/
/* Function Name: GD_Status_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint16 * Prv_GD_ReadConfRegs(uint16 chipId)
{
	uint8 regAddress;
	static uint16 ReadConfRegs[GD_NUM_OF_SEQREADCONF];

	/* Setup Only used channels */
	for (regAddress = 0u; regAddress < GD_NUM_OF_SEQREADCONF; regAddress++)
	{
		ReadConfRegs[regAddress] = Prv_GD_ReadReg(chipId, regAddress);
	}
    return ReadConfRegs;
}

/*****************************************************************************/
/* Function Name: uint16 Prv_GD_WriteReg(uint16 chipAddress)                 */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint16 Prv_GD_WriteReg(uint16 chipAddress)
{
	uint16 FailCnt_RetVal = 0u;
	uint16 * const GD_reg = (uint16 *)&GD_Dev[chipAddress];  

	Prv_GD_EnableConf(chipAddress);

	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG1,     GD_reg[GD_ADDR_CFG1]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG2,     GD_reg[GD_ADDR_CFG2]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG3,     GD_reg[GD_ADDR_CFG3]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG4,     GD_reg[GD_ADDR_CFG4]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG5,     GD_reg[GD_ADDR_CFG5]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CFG6,     GD_reg[GD_ADDR_CFG6]);
  
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_ACT1,     GD_reg[GD_ADDR_ACT1]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_ACT2,     GD_reg[GD_ADDR_ACT2]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_ACT3,     GD_reg[GD_ADDR_ACT3]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_DIGCOMP1, GD_reg[GD_ADDR_DIGCOMP1]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_DIGCOMP2, GD_reg[GD_ADDR_DIGCOMP2]);

	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CONTROL1, GD_reg[GD_ADDR_CONTROL1]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CONTROL2, GD_reg[GD_ADDR_CONTROL2]);
	FailCnt_RetVal += Prv_GD_WriteVerifyReg(chipAddress, GD_ADDR_CONTROL3, GD_reg[GD_ADDR_CONTROL3]);
	
    Prv_GD_LockConf(chipAddress);

	return ((FailCnt_RetVal == 0) ? GD_PASS : GD_FAIL);
}
/*****************************************************************************/
/* Function Name: GD_Status_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
Std_ReturnType Prv_GD_WriteVerifyReg(uint16 chipAddress,
							 uint16 regAddress, uint16 data)
{
	Std_ReturnType RetVal = E_NOT_OK;
	uint16 GD_RXData = 0u;

	RetVal = Prv_GD_WrReg16(chipAddress, regAddress, data);
	if(RetVal == E_OK)
	{
		GD_RXData = Prv_GD_ReadReg(chipAddress, regAddress);
		if(GD_RXData == data)
		{
			RetVal = E_OK;
		}
		else
		{
			RetVal = E_NOT_OK;
		}
	}
	else
	{
		/*do nothing*/
	}
	return (RetVal);
}

/*****************************************************************************/
/* Function Name: void Prv_GD_InitRegs(uint16 chipId)                        */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_InitRegs(uint16 chipId)
{
/*cfg1*/
	GD_Dev[chipId].cfg1.bit.GD_RESET_MUTE_EN       = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_RESET_MUTE_EN;
	GD_Dev[chipId].cfg1.bit.GD_IO_DG               = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_IO_DG;
	GD_Dev[chipId].cfg1.bit.GD_TDEAD               = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_TDEAD;
	GD_Dev[chipId].cfg1.bit.GD_NFLT2_MUX           = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_NFLT2_MUX;
	GD_Dev[chipId].cfg1.bit.GD_OVLO1_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_OVLO1_TH;
	GD_Dev[chipId].cfg1.bit.GD_UVLO1_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg1.bit.GD_UVLO1_TH;
      
	/*cfg2*/      
	GD_Dev[chipId].cfg2.bit.GD_MCLP_EN             = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_MCLP_EN;
	GD_Dev[chipId].cfg2.bit.GD_DESAT_SC_SEL        = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_DESAT_SC_SEL;
	GD_Dev[chipId].cfg2.bit.GD_OC_EN               = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_OC_EN;
	GD_Dev[chipId].cfg2.bit.GD_GM_BLK              = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_GM_BLK;
	GD_Dev[chipId].cfg2.bit.GD_OVLO3_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_OVLO3_TH;
	GD_Dev[chipId].cfg2.bit.GD_UVLO3_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_UVLO3_TH;
	GD_Dev[chipId].cfg2.bit.GD_OVLO2_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_OVLO2_TH;
	GD_Dev[chipId].cfg2.bit.GD_UVLO2_TH            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_UVLO2_TH;
	GD_Dev[chipId].cfg2.bit.GD_MCLP_TH             = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg2.bit.GD_MCLP_EN;
  
	/*cfg3*/  
	GD_Dev[chipId].cfg3.bit.GD_VGTH_MEAS_EN        = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_VGTH_MEAS_EN;
	GD_Dev[chipId].cfg3.bit.GD_STO_2STO_CURR       = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_STO_2STO_CURR;
	GD_Dev[chipId].cfg3.bit.GD_DESAT_ICHG          = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_DESAT_ICHG;
	GD_Dev[chipId].cfg3.bit.GD_DESAT_SC_TH         = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_DESAT_SC_TH;
	GD_Dev[chipId].cfg3.bit.GD_DESAT_SCP_DG_EN     = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_DESAT_SCP_DG_EN;
	GD_Dev[chipId].cfg3.bit.GD_OC_TH               = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_OC_TH;
	GD_Dev[chipId].cfg3.bit.GD_SC_BLK              = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg3.bit.GD_SC_BLK;
  
	/*cfg4*/  
	GD_Dev[chipId].cfg4.bit.GD_DOUT_CH_SEL         = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_DOUT_CH_SEL;
	GD_Dev[chipId].cfg4.bit.GD_DOUT_FREQ           = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_DOUT_FREQ;
	GD_Dev[chipId].cfg4.bit.GD_IZTC_EN             = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_IZTC_EN;
	GD_Dev[chipId].cfg4.bit.GD_VCECLP_EN           = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_VCECLP_EN;
	GD_Dev[chipId].cfg4.bit.GD_STO_STO_SEL2        = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_STO_STO_SEL2;
	GD_Dev[chipId].cfg4.bit.GD_VCE_CLMP_HLD_TIME   = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_VCE_CLMP_HLD_TIME;
	GD_Dev[chipId].cfg4.bit.GD_MCLP_EXT_EN         = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_MCLP_EXT_EN;
	GD_Dev[chipId].cfg4.bit.GD_STO_TIME2           = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg4.bit.GD_STO_TIME2;
  
	/*cfg5*/  
	GD_Dev[chipId].cfg5.bit.GD_IZTC_SEL            = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_IZTC_SEL;       
	GD_Dev[chipId].cfg5.bit.GD_ADC_OFF_CH1_SEL     = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_OFF_CH1_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_OFF_CH2_SEL     = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_OFF_CH2_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_OFF_TEMP_SEL    = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_OFF_TEMP_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_OFF_VCC2_SEL    = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_OFF_VCC2_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_ON_CH1_SEL      = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_ON_CH1_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_ON_CH2_SEL      = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_ON_CH2_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_ON_TEMP_SEL     = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_ON_TEMP_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_ON_VCC2_SEL     = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_ON_VCC2_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_ON_DESAT_SEL    = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_ON_DESAT_SEL;
	GD_Dev[chipId].cfg5.bit.GD_ADC_SAMP_DLY        = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_SAMP_DLY;
	GD_Dev[chipId].cfg5.bit.GD_ADC_SAMP_MODE       = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg5.bit.GD_ADC_SAMP_MODE;
  
	/*cfg6*/  
	GD_Dev[chipId].cfg6.bit.GD_OC_BLK              = GD_DEFAULT_CALIB_ROM_COPY[chipId].cfg6.bit.GD_OC_BLK;
  
	/*act1*/  
	GD_Dev[chipId].act1.bit.GD_CFG_CRC_ACT         = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_CFG_CRC_ACT;
	GD_Dev[chipId].act1.bit.GD_SPI_ACT             = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_SPI_ACT;
	GD_Dev[chipId].act1.bit.GD_ADC_ACT             = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_ADC_ACT;
	GD_Dev[chipId].act1.bit.GD_OVUV3_ACT           = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_OVUV3_ACT;
	GD_Dev[chipId].act1.bit.GD_UVLO2_ACT           = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_UVLO2_ACT;
	GD_Dev[chipId].act1.bit.GD_OVLO2_ACT           = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_OVLO2_ACT;
	GD_Dev[chipId].act1.bit.GD_UVLO1_ACT           = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_UVLO1_ACT;
	GD_Dev[chipId].act1.bit.GD_OVLO1_ACT           = GD_DEFAULT_CALIB_ROM_COPY[chipId].act1.bit.GD_OVLO1_ACT;

	/*act2*/
	GD_Dev[chipId].act2.bit.GD_SC_DESAT_ACT        = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_SC_DESAT_ACT;
	GD_Dev[chipId].act2.bit.GD_INT_COMM_ACT        = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_INT_COMM_ACT;
	GD_Dev[chipId].act2.bit.GD_PWM_LANE_ACT        = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_PWM_LANE_ACT;
	GD_Dev[chipId].act2.bit.GD_STP_ACT             = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_STP_ACT;
	GD_Dev[chipId].act2.bit.GD_OC_ACT              = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_OC_ACT;
	GD_Dev[chipId].act2.bit.GD_CLK_MON_ACT         = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_CLK_MON_ACT;
	GD_Dev[chipId].act2.bit.GD_TWN_ACT             = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_TWN_ACT;
	GD_Dev[chipId].act2.bit.GD_TRIM_CRC_ACT        = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_TRIM_CRC_ACT;
	GD_Dev[chipId].act2.bit.GD_INT_REG_ACT         = GD_DEFAULT_CALIB_ROM_COPY[chipId].act2.bit.GD_INT_REG_ACT;

	/*act3*/   
	GD_Dev[chipId].act3.bit.GD_GM_ACT              = GD_DEFAULT_CALIB_ROM_COPY[chipId].act3.bit.GD_GM_ACT;

	/*DIGCOMP1*/
	GD_Dev[chipId].digcomp1.bit.GD_DCOMP1_DEGLITCH = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp1.bit.GD_DCOMP1_DEGLITCH;
	GD_Dev[chipId].digcomp1.bit.GD_DCOMP1_ACT      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp1.bit.GD_DCOMP1_ACT;
	GD_Dev[chipId].digcomp1.bit.GD_DCOMP1_DIR      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp1.bit.GD_DCOMP1_DIR;
	GD_Dev[chipId].digcomp1.bit.GD_DCOMP1_EN       = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp1.bit.GD_DCOMP1_EN;
	GD_Dev[chipId].digcomp1.bit.GD_THRESH_AI1      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp1.bit.GD_THRESH_AI1;

	/*DIGCOMP2*/
	GD_Dev[chipId].digcomp2.bit.GD_DCOMP2_DEGLITCH = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp2.bit.GD_DCOMP2_DEGLITCH;
	GD_Dev[chipId].digcomp2.bit.GD_DCOMP2_ACT      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp2.bit.GD_DCOMP2_ACT;
	GD_Dev[chipId].digcomp2.bit.GD_DCOMP2_DIR      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp2.bit.GD_DCOMP2_DIR;
	GD_Dev[chipId].digcomp2.bit.GD_DCOMP2_EN       = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp2.bit.GD_DCOMP2_EN;
	GD_Dev[chipId].digcomp2.bit.GD_THRESH_AI2      = GD_DEFAULT_CALIB_ROM_COPY[chipId].digcomp2.bit.GD_THRESH_AI2;

	/*crc*/
	GD_Dev[chipId].crc.bit.GD_CRC_TX               = GD_DEFAULT_CALIB_ROM_COPY[chipId].crc.bit.GD_CRC_TX;

	/*control1*/
	GD_Dev[chipId].control1.bit.GD_STP_CHK         = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_STP_CHK;
	GD_Dev[chipId].control1.bit.GD_PWM_LANE_CHK    = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_PWM_LANE_CHK;
	GD_Dev[chipId].control1.bit.GD_CLR_SPI_CRC     = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_CLR_SPI_CRC;
	GD_Dev[chipId].control1.bit.GD_DCOMP2_CHK      = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_DCOMP2_CHK;
	GD_Dev[chipId].control1.bit.GD_DCOMP1_CHK      = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_DCOMP1_CHK;
	GD_Dev[chipId].control1.bit.GD_CFG_CRC_CHK     = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_CFG_CRC_CHK;
	GD_Dev[chipId].control1.bit.GD_CLK_MON_PRI_CHK = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_CLK_MON_PRI_CHK;
	GD_Dev[chipId].control1.bit.GD_CLK_MON_SEC_CHK = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_CLK_MON_SEC_CHK;
	GD_Dev[chipId].control1.bit.GD_SCP_CHK         = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_SCP_CHK;
	GD_Dev[chipId].control1.bit.GD_DESAT_CHK       = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_DESAT_CHK;
	GD_Dev[chipId].control1.bit.GD_OC_CHK          = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_OC_CHK;
	GD_Dev[chipId].control1.bit.GD_GATE_ON_CHK     = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_GATE_ON_CHK;
	GD_Dev[chipId].control1.bit.GD_GATE_OFF_CHK    = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_GATE_OFF_CHK;
	GD_Dev[chipId].control1.bit.GD_CLR_FAULT       = GD_DEFAULT_CALIB_ROM_COPY[chipId].control1.bit.GD_CLR_FAULT;

	/*control2*/
	GD_Dev[chipId].control2.bit.GD_PARITY1         = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_PARITY1;
	GD_Dev[chipId].control2.bit.GD_ASC_EN_HIZ_EN   = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_ASC_EN_HIZ_EN;
	GD_Dev[chipId].control2.bit.GD_ASC_DELAY_SEL   = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_ASC_DELAY_SEL;
	GD_Dev[chipId].control2.bit.GD_ASC_LEV_SEL     = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_ASC_LEV_SEL;
	GD_Dev[chipId].control2.bit.GD_AI2_PUPD        = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_AI2_PUPD;
	GD_Dev[chipId].control2.bit.GD_PARITY2         = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_PARITY2;
	GD_Dev[chipId].control2.bit.GD_CURPROT_ASC_EN  = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_CURPROT_ASC_EN;
	GD_Dev[chipId].control2.bit.GD_ASC_STRENGTH    = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_ASC_STRENGTH;
	GD_Dev[chipId].control2.bit.GD_OUTL_SEL        = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_OUTL_SEL;
	GD_Dev[chipId].control2.bit.GD_OUTH_SEL        = GD_DEFAULT_CALIB_ROM_COPY[chipId].control2.bit.GD_OUTH_SEL;

	/*control3*/
	GD_Dev[chipId].control3.bit.GD_SPITEST         = GD_DEFAULT_CALIB_ROM_COPY[chipId].control3.bit.GD_SPITEST;
}

/*****************************************************************************/
/* Function Name   : void Prv_GD_GetPinStatus(void)                          */
/* Descriptions    : Function read port pin STATUS                           */
/* Called by       :                                                         */
/* Parameters (in) : void                                                    */
/* Parameters (out): void                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void Prv_GD_GetPinStatus(void)
{
	GD_Level_nFLTb_uh = Dio_ReadChannel(PIN_nFLTb_uh_READ);

	GD_Level_nFLTb_ul = Dio_ReadChannel(PIN_nFLTb_ul_READ);

	GD_Level_nFLTb_vh = Dio_ReadChannel(PIN_nFLTb_vh_READ);

	GD_Level_nFLTb_vl = Dio_ReadChannel(PIN_nFLTb_vl_READ);

	GD_Level_nFLTb_wh = Dio_ReadChannel(PIN_nFLTb_wh_READ);

	GD_Level_nFLTb_wl = Dio_ReadChannel(PIN_nFLTb_wl_READ);
}

/*****************************************************************************/
/* Function Name: GD_Status_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_InverterDiagnostics(void)
{
	s_GD_DiagStatus[UH] = Prv_GD_Diagnose(UH);
	s_GD_Device_Error[UH] = (s_GD_DiagStatus[UH] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[UH] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[UH] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[UH] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[UH] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;

	s_GD_DiagStatus[VH] = Prv_GD_Diagnose(VH);
	s_GD_Device_Error[VH] = (s_GD_DiagStatus[VH] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[VH] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[VH] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[VH] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[VH] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;

	s_GD_DiagStatus[WH] = Prv_GD_Diagnose(WH);
	s_GD_Device_Error[WH] = (s_GD_DiagStatus[WH] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[WH] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[WH] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[WH] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[WH] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;

	s_GD_DiagStatus[UL] = Prv_GD_Diagnose(UL);
	s_GD_Device_Error[UL] = (s_GD_DiagStatus[UL] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[UL] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[UL] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[UL] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[UL] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;

	s_GD_DiagStatus[VL] = Prv_GD_Diagnose(VL);
	s_GD_Device_Error[VL] = (s_GD_DiagStatus[VL] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[VL] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[VL] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[VL] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[VL] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;

	s_GD_DiagStatus[WL] = Prv_GD_Diagnose(WL);
	s_GD_Device_Error[WL] = (s_GD_DiagStatus[WL] == GD_FAIL ) ? TRUE : FALSE;
	s_GD_Fault1[WL] = (GD_faults[0] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_Fault2[WL] = (GD_faults[1] == GD_NO_FAULT) ? FALSE : TRUE;
	s_GD_PriReadyFault[WL] = ((s_GD_StatusReg[2] & GD_PRI_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
	s_GD_SecReadyFault[WL] = ((s_GD_StatusReg[2] & GD_SEC_RDY_MASK) == NOT_READY) ? TRUE : FALSE;
}

/*****************************************************************************/
/* Function Name: GD_Status_GD_e GD_ReadFault(uint16 chipId)                    */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint16 Prv_GD_Diagnose(uint16 chipAddress)
{
	uint8 j;
	uint8 faultAcc = 0u;
	uint16 GD_Diagnose_RetVal = GD_FAIL;

	for (j = 0; j < GD_NUM_OF_STATUS_REG; j++)
	{
		s_GD_StatusReg[j] = 0u;
		s_GD_StatusReg[j] = Prv_GD_ReadReg(chipAddress, GD_StatusRegAdrs[j]);
		GD_faults[j] = (s_GD_StatusReg[j] & GD_FaultMask[j]);
		faultAcc += GD_faults[j];
	}
	if (faultAcc == 0)
	{
		GD_Diagnose_RetVal =  GD_PASS;
	} /* faultAcc = 0 if all ok*/
	return (GD_Diagnose_RetVal);
}

/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_ReadChipReadyStatus(void)            */
/* Descriptions    : Function to make GD pin High and low for reset          */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_ReadChipReadyStatus(void)
{
    Std_ReturnType GD_ChipRdySts = E_NOT_OK;
    uint8 Chipidx                = 0;
    uint16 GD_ReadRegVal         = 0;
    for (Chipidx = 0; Chipidx < GD_NUM_OF_CHIPS; Chipidx++)
    {
        /*Read if device is ready and powered up*/
        GD_ReadRegVal = Prv_GD_ReadReg(Chipidx, GD_ADDR_STATUS);
        if (
            (GD_ReadRegVal & GD_SEC_RDY_MASK) &&
            (GD_ReadRegVal & GD_PRI_RDY_MASK)
           )
        {
            GD_ChipRdySts = E_OK;
        }
        else
        {
            GD_ChipRdySts = E_NOT_OK;
        }
    }
    return (GD_ChipRdySts);
}

/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_Det_ReportError(GD_ErrType ErrorId)
{
	GD_Det_ReportError_u8 = ErrorId;
}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_Diag_Init(void)
{
	s_GD_DiagCnt = 0u;
}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_Diag_Handle(GD_ErrType ErrorID)
{
	s_GD_DiagCnt++;

	if (s_GD_DiagCnt > GD_DIAG_THRSEHOLD)
	{
		s_GD_DiagCnt = 0u;
		Prv_GD_Det_ReportError(ErrorID);
	}
}

/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
boolean Prv_GD_IsAct(uint16 chipAddress)
{
	uint8 mode;
	boolean RetStatus = FALSE;
	uint16 Rxdata;

	Rxdata = Prv_GD_ReadReg(chipAddress, GD_ADDR_STATUS);
	mode = ((((uint16)(Rxdata)) >> GD_CFG_STATE_OFFSET) & 1);
	if (mode == 0u)
	{
		RetStatus = (boolean)TRUE;
	}

	return RetStatus;
}

/*****************************************************************************/
/* Function Name   : void Prv_GD_Reset(void)                                 */
/* Descriptions    : Function to make GD pin High and low for reset          */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void Prv_GD_Reset(void)
{
    GD_Det_ReportError_u8 = None_Err;
    Prv_GD_ChipReset();
    GD_Delay(1000, 10);
    Prv_GD_ChipNormal();
    GD_Delay(1000, 10);
}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
Std_ReturnType Prv_GD_RunTimeOperation(void)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	Prv_GD_GetPinStatus();
	/**************************************Fault1/2 Monitor***************************************************/
	if (GD_Level_nFLTb_uh == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	if (GD_Level_nFLTb_ul == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	if (GD_Level_nFLTb_vh == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	if (GD_Level_nFLTb_vl == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	if (GD_Level_nFLTb_wh == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	if (GD_Level_nFLTb_wl == STD_HIGH)
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}
	else
	{
		RetVal = (uint8)E_OK;
	}
	return RetVal;
}

/*****************************************************************************/
/* Function Name   : void Prv_HandlingInitErrors(void)                       */
/* Descriptions    : Function to handle error                                */
/* Called by       :                                                         */
/* Parameters (in) : void                                                    */
/* Parameters (out): void                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void Prv_HandlingInitErrors(void)
{
    Std_ReturnType GD_ClrError_RetVal       = E_NOT_OK;
    Std_ReturnType GD_ReadChipRdySts_RetVal = E_NOT_OK;
    uint8 Ilp;
    for (Ilp = 0; Ilp < 10; Ilp++)
    {
       Prv_GD_Reset();
       GD_ClrError_RetVal       = Prv_GD_ClrError();
       GD_ReadChipRdySts_RetVal = Prv_ReadChipReadyStatus();
       if (
           (GD_ClrError_RetVal == E_OK) &&
           (GD_ReadChipRdySts_RetVal == E_OK)
          )
       {
           GD_StateMachine = InitSeqMode;
           GD_InitErrorAutoRstCnt = 0;
       }
       else
       {
           GD_InitErrorAutoRstCnt++;
           GD_StateMachine = InitFail;
       }
       if (GD_StateMachine == InitSeqMode)
       {
           break;
       }
    }
}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_GD_HandlingRuntimeError(void)
{
	uint8 idx = 0u;
	uint8 Dev_count = 0u;
	/*if ((GD_Level_nFLTb_uh == STD_HIGH) || (GD_Level_nFLTb_ul == STD_LOW) || (GD_Level_nFLTb_vh == 0u) ||
		(GD_Level_nFLTb_vl == STD_LOW) || (GD_Level_nFLTb_wh == 0u) || (GD_Level_nFLTb_wl == 0u))
	{*/
		Prv_GD_InverterDiagnostics();
		for (idx = 0; idx < GD_NUM_OF_CHIPS; idx++)
		{
			s_GD_FaultType[idx] = GD_ReadFault(idx);
			if(s_GD_FaultType[idx] == 0)
			{
				Dev_count++;
			}
		}
		if(Dev_count == GD_NUM_OF_CHIPS)
		{
			GD_StateMachine = RunTimeMode;
		}
		else
		{
			Prv_GD_Diag_Handle(RuntimeErrorDetectedMode_Err);
		}
	/*}
	else
	{
		(void)Dem_SetEventStatus(DemConf_DemEventParameter_GD_Fault, DEM_EVENT_STATUS_FAILED);
	}*/

}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint8 Prv_cal_crc_table(uint16 const *ptr)
{
	uint16 const *pointer;
	uint8 crc = 0x00, index;
	pointer = ptr;
	uint8 const LSB =(uint8)(0xFF & (*(pointer)));
	uint8 const MSB =(uint8)((uint16)(0xFF00 & (*(pointer))) >> 8);

	index = crc ^ (LSB);
	crc = crc_table[index];
	index = crc ^ (MSB);
	crc = crc_table[index];

	return (crc);
}
/*****************************************************************************/
/* Function Name: void Prv_GD_Det_ReportError(GD_ErrType ErrorId)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
uint16 * Prv_GetRegisterStatus(uint16 chipId)
{
	uint8 idx;
	for(idx =0; idx < GD_NUM_OF_STATUS_REG; idx++ )
	{
		s_GD_StatusReg[idx] = 0u;
		s_GD_StatusReg[idx] = Prv_GD_ReadReg(chipId, GD_StatusRegAdrs[idx]);
	}
	return s_GD_StatusReg;
}

/*****************************************************************************/
/* Function Name: void Prv_VarInit(void)            */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID:                                                           */
/*****************************************************************************/
void Prv_VarInit(void)
{
	uint8 Chip_idx;
	for(Chip_idx =0; Chip_idx < GD_NUM_OF_CHIPS; Chip_idx++ )
	{
		s_GD_InitStatus[Chip_idx]    = 0u;
		s_GD_InitFault[Chip_idx]     = 0u;
		s_GD_PowerFail[Chip_idx]     = 0u;
		s_GD_PriReadyFault[Chip_idx] = 0u;
		s_GD_SecReadyFault[Chip_idx] = 0u;
		s_GD_Fault1[Chip_idx]        = 0u;
		s_GD_Fault2[Chip_idx]        = 0u;
		s_GD_Device_Error[Chip_idx]  = 0u;
		s_GD_FaultType[Chip_idx]     = 0u;
		s_GD_DiagStatus[Chip_idx]    = 0u;
		GD_CFG_Update[Chip_idx]      = 0u;
	}
}

/*****************************************************************************/
/* Function Name: Std_ReturnType GD_Init(void)                               */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
Std_ReturnType GD_Init(void)
{
	uint8 Init_RetVal = (uint8)E_NOT_OK;
	uint8 Chip_idx;
	uint8 InitFaultStatus = 0u;
	uint8 PowerFailStatus = 0u;
	uint8 Dev_count       = 0u;
	uint16 status_val     = 0u;

	Std_ReturnType Prv_GD_ClrError_RetVal = E_NOT_OK;

	/*state machine set to INITSEQMODE*/
    GD_StateMachine = InitSeqMode;

    do_drvascl((boolean)STD_HIGH);
    do_drvascenl((boolean)STD_HIGH);
	do_drv_asc_latch_mcu((boolean)STD_HIGH);
	GD_Delay(1000,100);
	do_drv_asc_latch_mcu((boolean)STD_LOW);
	GD_Delay(1000,100);
	do_drv_asc_latch_mcu((boolean)STD_HIGH);
	GD_Delay(1000,100);
	do_drv_asc_latch_mcu((boolean)STD_LOW);

	/*initializing static/global variables to zero */
	Prv_VarInit();

	Prv_GD_Reset();

    Prv_GD_ClrError_RetVal = Prv_GD_ClrError();

	if (Prv_GD_ClrError_RetVal == E_NOT_OK)
	{
        Prv_GD_Det_ReportError(GD_init_Err); 

		/*State machine set to InitErrorHandlingMode*/
		GD_StateMachine = InitErrorHandlingMode;
		/*handle any error if occured*/
		Prv_HandlingInitErrors();
	
	}

	if(GD_StateMachine == InitSeqMode)
	{
		GD_StateMachine = InitCheckSeqMode;
		
		Prv_GD_InverterDiagnostics();

		for (Chip_idx = 0; Chip_idx < GD_NUM_OF_CHIPS; Chip_idx++)
	    {
			/*Read if device is ready and powered up*/
			status_val = Prv_GD_ReadReg(Chip_idx, GD_ADDR_STATUS);

			if((GD_SEC_RDY_MASK & status_val) && (GD_PRI_RDY_MASK & status_val))
			{
				/*local default configuration update*/
				Prv_GD_InitRegs(Chip_idx);

				/*initialize registers*/
				s_GD_InitStatus[Chip_idx] = Prv_GD_WriteReg(Chip_idx);

				if (s_GD_InitStatus[Chip_idx] == GD_FAIL)
				{
					InitFaultStatus++;
					s_GD_InitFault[Chip_idx]++;
				}
			}
			else
			{
				PowerFailStatus++;
				s_GD_PowerFail[Chip_idx]++;
			}

			s_GD_FaultType[Chip_idx] = GD_ReadFault(Chip_idx);

			if (s_GD_FaultType[Chip_idx] != 0u)
			{
				Prv_GD_Det_ReportError(GD_init_Err); 
				GD_StateMachine = InitErrorHandlingMode;
				Prv_HandlingInitErrors();
			}
			else
			{
				Dev_count++;
			}
		}
	}

	if(Dev_count == GD_NUM_OF_CHIPS)
	{
		GD_StateMachine = InitSuccMode;
		Init_RetVal = (uint8)E_OK;
	}
	return (Init_RetVal);
}
/*****************************************************************************/
/* Function Name: Std_ReturnType GD_Init(void)                               */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
void GD_10ms_MainFunction(void)
{
	uint8 write_retval = 0u; 
	if (GD_StateMachine == InitSuccMode)
	{
		if(E_OK == Prv_GD_RunTimeOperation())
		{
			Prv_GD_InverterDiagnostics();
			for (uint16 idx = 0; idx < GD_NUM_OF_CHIPS; idx++)
			{
				s_GD_FaultType[idx] = GD_ReadFault(idx);
				if(s_GD_FaultType[idx] == 0)
				{
					GD_StateMachine = RunTimeMode;
					if(GD_CFG_Update[idx] == TRUE)
					{
						GD_StateMachine = RunTimeInitMode;
						write_retval = Prv_GD_WriteReg(idx);
						if(write_retval== GD_PASS)
						{
							GD_StateMachine = RunTimeInitSuccMode;
						}
						else
						{
							GD_StateMachine = RunTimeErrorHandlingMode;
							Prv_GD_HandlingRuntimeError();
						}
					}
				}
				else
				{
					GD_StateMachine = RunTimeErrorHandlingMode;
					Prv_GD_HandlingRuntimeError();
				}
			}
		}
	}
}

/*****************************************************************************/
/* Function Name   : void Prv_GD_CalculateCrc(uint16 chipId, uint8 Crc)      */
/* Descriptions    : Function calculate CRC                                  */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId, uint8 Crc                                */
/* Parameters (out): void                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void Prv_GD_CalculateCrc(uint16 chipId, uint8 Crc)
{
	Prv_GD_WrReg16(chipId, GD_ADDR_CRC,(uint16)Crc);	
}

/*Might not be required as per TI inputs*/
/*****************************************************************************/
/* Function Name: Std_ReturnType GD_Init(void)                               */
/*                                                                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in):                                                          */
/*                                                                           */
/* Parameters (out):                                                         */
/*                                                                           */
/* Return Value:                                                             */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
Std_ReturnType Prv_GD_ADDEN(uint16 chipId)
{
	uint8 RetVal = (uint8)E_OK;
	static uint16 Prv_GD_SpiTxBuff_AddEn[1];
	static uint16 Prv_GD_SpiRxBuff_AddEn[1];
	// uint8 Crc;

	Prv_GD_SpiTxBuff_AddEn[0] = CMD_ADD_EN;
	Prv_GD_SpiRxBuff_AddEn[0] = 0u;
	// Crc= Prv_cal_crc_table( Prv_GD_SpiTxBuff_LkCfg, 2 );
	// Prv_GD_CalculateCrc(chipId , Crc);

	RetVal |= Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_SEQUENCE_ADD_EN], (Spi_DataType *)Prv_GD_SpiTxBuff_AddEn,
					  (Spi_DataType *)Prv_GD_SpiRxBuff_AddEn, DATA_LENGTH);   
	RetVal |= Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_ADD_EN]);

	return RetVal;

}
/*Might not be required as per TI inputs*/
/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_ADDDIS(uint16 chipId)             */
/* Descriptions    : Function enable ADDDIS                                  */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId                                           */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_ADDDIS(uint16 chipId)
{
	Std_ReturnType RetVal = E_NOT_OK;
	// uint8 Crc;

	Prv_GD_SpiTxBuffData[0] = CMD_ADD_EN;
	Prv_GD_SpiRxBuffData[0] = 0u;
	// Crc= Prv_cal_crc_table( Prv_GD_SpiTxBuff_LkCfg, 2 );
	// Prv_GD_CalculateCrc(chipId , Crc);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_SEQUENCE_ADD_DIS], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					  (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);   
	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_ADD_DIS]);

	return RetVal;
}

/*Might not be required as per TI inputs*/
/*****************************************************************************/
/* Function Name   : Std_ReturnType Prv_GD_WR_CA(uint16 chipId)              */
/* Descriptions    : Function enable gd port pins                            */
/* Called by       :                                                         */
/* Parameters (in) : uint16 chipId                                           */
/* Parameters (out): Std_ReturnType                                          */
/* Requirement ID  :                                                         */
/*****************************************************************************/
Std_ReturnType Prv_GD_WR_CA(uint16 chipId)
{
	Std_ReturnType RetVal = E_NOT_OK;
	// uint8 Crc;

	Prv_GD_SpiTxBuffData[0] = CMD_ADD_EN;
	Prv_GD_SpiRxBuffData[0] = 0u;
	// Crc= Prv_cal_crc_table( Prv_GD_SpiTxBuff_LkCfg, 2 );
	// Prv_GD_CalculateCrc(chipId , Crc);

	RetVal = Spi_SetupEB(Prv_GD_SeqChannelSet[chipId][GD_SEQUENCE_WR_CA], (Spi_DataType *)Prv_GD_SpiTxBuffData,
					  (Spi_DataType *)Prv_GD_SpiRxBuffData, DATA_LENGTH);   
	RetVal = Spi_SyncTransmit(Prv_GD_SeqSet[chipId][GD_SEQUENCE_WR_CA]);

	return RetVal;
}

/*****************************************************************************/
/* Function Name   : void GD_Calib_Update_ROM_Data (void)                    */
/* Descriptions    : Function update calib data to ROM copy                  */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void GD_Calib_Update_ROM_Data (void)
{
	uint16 Chip_Id;

	for (Chip_Id = 0; Chip_Id < GD_NUM_OF_CHIPS; Chip_Id++)
	{
      GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg1.all = GD_Calib_CFG1_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg2.all = GD_Calib_CFG2_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg3.all = GD_Calib_CFG3_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg4.all = GD_Calib_CFG4_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg5.all = GD_Calib_CFG5_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].cfg6.all = GD_Calib_CFG6_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].act1.all = GD_Calib_ACT1_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].act2.all = GD_Calib_ACT2_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].act3.all = GD_Calib_ACT3_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc1.all = GD_Calib_ADC1_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc2.all = GD_Calib_ADC2_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc3.all = GD_Calib_ADC3_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc4.all = GD_Calib_ADC4_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc5.all = GD_Calib_ADC5_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].adc6.all = GD_Calib_ADC6_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].digcomp1.all = GD_Calib_DIGCOMP1_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].digcomp2.all = GD_Calib_DIGCOMP2_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].control1.all = GD_Calib_CONTROL1_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].control2.all = GD_Calib_CONTROL2_Reg_Val[Chip_Id];
	  GD_DEFAULT_CALIB_ROM_COPY[Chip_Id].control3.all = GD_Calib_CONTROL3_Reg_Val[Chip_Id];
	}   
}


/*****************************************************************************/
/* Function Name   : void GD_Calib_Config_Read (void)                        */
/* Descriptions    : Function to read reg value after calibration            */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void GD_Calib_Config_Read (void)
{
	uint16 Chip_Id;

	for (Chip_Id = 0; Chip_Id < GD_NUM_OF_CHIPS; Chip_Id++)
	{
		GD_Calib_CFG1_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CFG2_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CFG3_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CFG4_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CFG5_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CFG6_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ACT1_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ACT2_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ACT3_Reg_Val[Chip_Id]         = 0;
        GD_Calib_DIGCOMP1_Reg_Val[Chip_Id]     = 0;
        GD_Calib_DIGCOMP2_Reg_Val[Chip_Id]     = 0;
        GD_Calib_ADC1_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ADC2_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ADC3_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ADC4_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ADC5_Reg_Val[Chip_Id]         = 0;
        GD_Calib_ADC6_Reg_Val[Chip_Id]         = 0;
        GD_Calib_CONTROL1_Reg_Val[Chip_Id]     = 0;
        GD_Calib_CONTROL2_Reg_Val[Chip_Id]     = 0;
        GD_Calib_CONTROL3_Reg_Val[Chip_Id]     = 0;
        GD_Calib_CRC_Reg_Val[Chip_Id]          = 0;
		GD_Calib_FAULT1_Reg_Val[Chip_Id]       = 0;
        GD_Calib_FAULT2_Reg_Val[Chip_Id]       = 0;
        GD_Calib_STATUS_Reg_Val[Chip_Id]       = 0;
		GD_Calib_ID_Reg_Val[Chip_Id]		   = 0;
	}
	
     for (Chip_Id = 0; Chip_Id < GD_NUM_OF_CHIPS; Chip_Id++)
	{
        GD_Calib_CFG1_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG1);
        GD_Calib_CFG2_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG2);
        GD_Calib_CFG3_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG3);
        GD_Calib_CFG4_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG4);
        GD_Calib_CFG5_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG5);
        GD_Calib_CFG6_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CFG6);
        GD_Calib_ACT1_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ACT1);
        GD_Calib_ACT2_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ACT2);
        GD_Calib_ACT3_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ACT3);
        GD_Calib_DIGCOMP1_Reg_Val[Chip_Id]     = Prv_GD_ReadReg(Chip_Id, GD_ADDR_DIGCOMP1);
        GD_Calib_DIGCOMP2_Reg_Val[Chip_Id]     = Prv_GD_ReadReg(Chip_Id, GD_ADDR_DIGCOMP2);
        GD_Calib_ADC1_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC1);
        GD_Calib_ADC2_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC2);
        GD_Calib_ADC3_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC3);
        GD_Calib_ADC4_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC4);
        GD_Calib_ADC5_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC5);
        GD_Calib_ADC6_Reg_Val[Chip_Id]         = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ADC6);
        GD_Calib_CONTROL1_Reg_Val[Chip_Id]     = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CONTROL1);
        GD_Calib_CONTROL2_Reg_Val[Chip_Id]     = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CONTROL2);
        GD_Calib_CONTROL3_Reg_Val[Chip_Id]     = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CONTROL3);
        GD_Calib_CRC_Reg_Val[Chip_Id]          = Prv_GD_ReadReg(Chip_Id, GD_ADDR_CRC);
		GD_Calib_FAULT1_Reg_Val[Chip_Id]       = Prv_GD_ReadReg(Chip_Id, GD_ADDR_FAULT1);
        GD_Calib_FAULT2_Reg_Val[Chip_Id]       = Prv_GD_ReadReg(Chip_Id, GD_ADDR_FAULT2);
        GD_Calib_STATUS_Reg_Val[Chip_Id]       = Prv_GD_ReadReg(Chip_Id, GD_ADDR_STATUS);	
        GD_Calib_ID_Reg_Val[Chip_Id]           = Prv_GD_ReadReg(Chip_Id, GD_ADDR_ID);
	}
}

/*****************************************************************************/
/* Function Name   : void GD_Calib_Config (void                              */
/* Descriptions    : Function to reinit GD after config change               */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void GD_Calib_Config (void)
{
	if (GD_Calib_ReInit == GD_CALIB_GD_READCNG)
	{
		GD_Calib_Config_Read();
	}
	else if(GD_Calib_ReInit == GD_CALIB_GD_REINIT)
	{
	  	GD_Calib_Update_ROM_Data();
		GD_Init();
	}
	else if (GD_Calib_ReInit == GD_CALIB_GD_SET_GDUPL)
	{
      if (GD_Calib_GdPin == GD_CALIB_GDPIN_0)
	  {
        do_gd0u((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_1)
	  {
        do_gd1u((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_2)
	  {
        do_gd2u((boolean)GD_Calib_GdPinLevel);
	  } 
	  else
	  {
        /*do Nothing*/
	  }
	}
	else if (GD_Calib_ReInit == GD_CALIB_GD_SET_GDVPL)
	{
	  if (GD_Calib_GdPin == GD_CALIB_GDPIN_0)
	  {
        do_gd0v((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_1)
	  {
        do_gd1v((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_2)
	  {
        do_gd2v((boolean)GD_Calib_GdPinLevel);
	  } 
	  else
	  {
        /*do Nothing*/
	  }
	}
	else if (GD_Calib_ReInit == GD_CALIB_GD_SET_GDWPL)
	{
	   if (GD_Calib_GdPin == GD_CALIB_GDPIN_0)
	  {
        do_gd0w((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_1)
	  {
        do_gd1w((boolean)GD_Calib_GdPinLevel);
	  }
	  else if (GD_Calib_GdPin == GD_CALIB_GDPIN_2)
	  {
        do_gd2w((boolean)GD_Calib_GdPinLevel);
	  } 
	  else
	  {
        /*do Nothing*/
	  }
	}
	GD_Calib_ReInit = GD_CALIB_GD_DEFAULT;
}

/*****************************************************************************/
/* Function Name   : void GD_Delay (uint16 Ilp, uint16 Olp)                  */
/* Descriptions    : Function to create delay                                */
/* Called by       :                                                         */
/* Parameters (in) : None                                                    */
/* Parameters (out): None                                                    */
/* Requirement ID  :                                                         */
/*****************************************************************************/
void GD_Delay (uint16 a_Ilp, uint16 a_Olp)
{
    uint16 Olp;
    uint16 Ilp;
    for (Olp = 0; Olp < a_Olp; Olp++)
    {
        for (Ilp = 0; Ilp < a_Ilp; Ilp++)
        {
            ;
        }
    }
}
