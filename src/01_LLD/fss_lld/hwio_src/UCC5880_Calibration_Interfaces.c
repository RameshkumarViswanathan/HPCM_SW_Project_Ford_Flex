#include "UCC5880.h"

//#pragma section ".rodata.Calib_32"
volatile uint8 GD_Calib_ReInit 	   = GD_CALIB_GD_DEFAULT; 
volatile uint8 GD_Calib_GdPinLevel = GD_CALIB_GD_DEFAULT; 
volatile uint8 GD_Calib_GdPin      = GD_CALIB_GD_DEFAULT; 

volatile GD_Vars GD_DEFAULT_CALIB_ROM_COPY [ GD_NUM_OF_CHIPS ] =
{
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS
};
//#pragma section

GD_Vars GD_Dev [ GD_NUM_OF_CHIPS ] =
{
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS ,
	GD_DEFAULTS
};
uint8 CFG_REG_NUM = 6U;

/*after editing the register value during runtime. confedit should be updated*/
void GD_StartGateDrv ( uint16 chipAddress )
{
	Prv_GD_WriteReg ( chipAddress);
}

/*set Function*/
/*cfg1*/
void GD_Set_RESET_MUTE_EN (uint16 chipAddress , GD_RESET_MUTE_EN_type value)
{
	Prv_GD_SetReg(chipAddress, GD_RESET_MUTE_EN, (uint16)value);
}

void
GD_Set_IO_DG ( uint16 chipAddress , GD_IO_DG_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_IO_DG,  (uint16)value);
}

void
GD_Set_TDEAD ( uint16 chipAddress , GD_TDEAD_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_TDEAD,  (uint16)value);
}

void
GD_Set_NFLT2_MUX ( uint16 chipAddress , GD_NFLT2_MUX_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_NFLT2_MUX,  (uint16)value);
}

void
GD_Set_OVLO1_TH ( uint16 chipAddress , GD_OVLO1_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OVLO1_TH,  (uint16)value);
}

void
GD_Set_UVLO1_TH ( uint16 chipAddress , GD_UVLO1_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_UVLO1_TH,  (uint16)value);
}

/*cfg2*/
void
GD_Set_MCLP_EN ( uint16 chipAddress , GD_MCLP_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_MCLP_EN,  (uint16)value);
}

void
GD_Set_DESAT_SC_SEL ( uint16 chipAddress , GD_DESAT_SC_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DESAT_SC_SEL,  (uint16)value);
}

void
GD_Set_OC_EN ( uint16 chipAddress , GD_OC_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OC_EN,  (uint16)value);
}

void
GD_Set_GM_BLK ( uint16 chipAddress , GD_GM_BLK_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_GM_BLK, (uint16)value);
}

void
GD_Set_OVLO3_TH ( uint16 chipAddress , GD_OVLO3_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OVLO3_TH,  (uint16)value);
}

void
GD_Set_UVLO3_TH ( uint16 chipAddress , GD_UVLO3_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_UVLO3_TH,  (uint16)value);
}

void
GD_Set_OVLO2_TH ( uint16 chipAddress , GD_OVLO2_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OVLO2_TH,  (uint16)value);
}

void
GD_Set_UVLO2_TH ( uint16 chipAddress , GD_UVLO2_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_UVLO2_TH,  (uint16)value);
}

void
GD_Set_MCLP_TH ( uint16 chipAddress , GD_MCLP_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_MCLP_TH,  (uint16)value);
}

/*cfg3*/
void
GD_Set_VGTH_MEAS_EN ( uint16 chipAddress , GD_VGTH_MEAS_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_VGTH_MEAS_EN,  (uint16)value);
}

void
GD_Set_STO_2STO_CURR ( uint16 chipAddress , GD_STO_2STO_CURR_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_STO_2STO_CURR,  (uint16)value);
}

void
GD_Set_DESAT_ICHG ( uint16 chipAddress , GD_DESAT_ICHG_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DESAT_ICHG,  (uint16)value);
}

void
GD_Set_DESAT_SC_TH ( uint16 chipAddress , GD_DESAT_SC_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DESAT_SC_TH, (uint16)value);
}

void
GD_Set_DESAT_SCP_DG_EN ( uint16 chipAddress , GD_DESAT_SCP_DG_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DESAT_SCP_DG_EN,  (uint16)value);
}

void
GD_Set_OC_TH ( uint16 chipAddress , GD_OC_TH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OC_TH,  (uint16)value);
}

void
GD_Set_SC_BLK ( uint16 chipAddress , GD_SC_BLK_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_SC_BLK,  (uint16)value);
}

/*cfg4*/
void
GD_Set_DOUT_CH_SEL ( uint16 chipAddress , GD_DOUT_CH_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DOUT_CH_SEL, (uint16)value);
}

void
GD_Set_DOUT_FREQ ( uint16 chipAddress , GD_DOUT_FREQ_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DOUT_FREQ,  (uint16)value);
}

void
GD_Set_IZTC_EN ( uint16 chipAddress , GD_IZTC_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_IZTC_EN, (uint16)value);
}

void
GD_Set_VCECLP_EN ( uint16 chipAddress , GD_VCECLP_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_VCECLP_EN,  (uint16)value);
}

void GD_Set_2STO_STO_SEL(uint16 chipAddress, GD_STO_STO_SEL2_type value)
{
	Prv_GD_SetReg( chipAddress,  GD_STO_STO_SEL2, (uint16)value);
}

void
GD_Set_VCE_CLMP_HLD_TIME ( uint16 chipAddress ,
		GD_VCE_CLMP_HLD_TIME_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_VCE_CLMP_HLD_TIME,  (uint16)value);
}

void
GD_Set_MCLP_EXT_EN ( uint16 chipAddress , GD_MCLP_EXT_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_MCLP_EXT_EN, (uint16)value);
}

void GD_Set_2STO_TIME(uint16 chipAddress, GD_STO_TIME2_type value)
{
	Prv_GD_SetReg( chipAddress,  GD_STO_TIME2,  (uint16)value);
}

/*cfg5*/
void
GD_Set_IZTC_SEL ( uint16 chipAddress , GD_IZTC_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_IZTC_SEL,  (uint16)value);
}

void
GD_Set_ADC_OFF_CH1_SEL ( uint16 chipAddress , GD_ADC_OFF_CH1_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_OFF_CH1_SEL,  (uint16)value);
}

void
GD_Set_ADC_OFF_CH2_SEL ( uint16 chipAddress , GD_ADC_OFF_CH2_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_OFF_CH2_SEL,  (uint16)value);
}

void
GD_Set_ADC_OFF_TEMP_SEL ( uint16 chipAddress ,
		GD_ADC_OFF_TEMP_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_OFF_TEMP_SEL,  (uint16)value);
}

void
GD_Set_ADC_OFF_VCC2_SEL ( uint16 chipAddress ,
		GD_ADC_OFF_VCC2_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_OFF_VCC2_SEL,  (uint16)value);
}

void
GD_Set_ADC_ON_CH1_SEL ( uint16 chipAddress , GD_ADC_ON_CH1_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ON_CH1_SEL,  (uint16)value);
}

void
GD_Set_ADC_ON_CH2_SEL ( uint16 chipAddress , GD_ADC_ON_CH2_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ON_CH2_SEL,  (uint16)value);
}

void
GD_Set_ADC_ON_TEMP_SEL ( uint16 chipAddress , GD_ADC_ON_TEMP_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ON_TEMP_SEL,  (uint16)value);
}

void
GD_Set_ADC_ON_VCC2_SEL ( uint16 chipAddress , GD_ADC_ON_VCC2_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ON_VCC2_SEL,  (uint16)value);
}

void
GD_Set_ADC_ON_DESAT_SEL ( uint16 chipAddress ,
		GD_ADC_ON_DESAT_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ON_DESAT_SEL,  (uint16)value);
}

void
GD_Set_ADC_SAMP_DLY ( uint16 chipAddress , GD_ADC_SAMP_DLY_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_SAMP_DLY,  (uint16)value);
}

void
GD_Set_ADC_SAMP_MODE ( uint16 chipAddress , GD_ADC_SAMP_MODE_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_SAMP_MODE,  (uint16)value);
}

/*cfg6*/
void
GD_Set_OC_BLK ( uint16 chipAddress , GD_OC_BLK_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OC_BLK,  (uint16)value);
}

/*act1*/
void
GD_Set_CFG_CRC_ACT ( uint16 chipAddress , GD_CFG_CRC_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CFG_CRC_ACT,  (uint16)value);
}

void
GD_Set_SPI_ACT ( uint16 chipAddress , GD_SPI_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_SPI_ACT,  (uint16)value);
}

void
GD_Set_ADC_ACT ( uint16 chipAddress , GD_ADC_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ADC_ACT,  (uint16)value);
}

void
GD_Set_OVUV3_ACT ( uint16 chipAddress , GD_OVUV3_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OVUV3_ACT,  (uint16)value);
}

void
GD_Set_UVLO2_ACT ( uint16 chipAddress , GD_UVLO2_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_UVLO2_ACT,  (uint16)value);
}

void
GD_Set_UVLO1_ACT ( uint16 chipAddress , GD_UVLO1_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_UVLO1_ACT,  (uint16)value);
}

void
GD_Set_OVLO1_ACT ( uint16 chipAddress , GD_OVLO1_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OVLO1_ACT,  (uint16)value);
}

/*act2*/
void
GD_Set_SC_DESAT_ACT ( uint16 chipAddress , GD_SC_DESAT_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_SC_DESAT_ACT,  (uint16)value);
}

void
GD_Set_INT_COMM_ACT ( uint16 chipAddress , GD_INT_COMM_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_INT_COMM_ACT,  (uint16)value);
}

void
GD_Set_PWM_LANE_ACT ( uint16 chipAddress , GD_PWM_LANE_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_PWM_LANE_ACT,  (uint16)value);
}

void
GD_Set_STP_ACT ( uint16 chipAddress , GD_STP_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_STP_ACT,  (uint16)value);
}

void
GD_Set_OC_ACT ( uint16 chipAddress , GD_OC_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OC_ACT,  (uint16)value);
}

void
GD_Set_CLK_MON_ACT ( uint16 chipAddress , GD_CLK_MON_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CLK_MON_ACT,  (uint16)value);
}

void
GD_Set_GD_TWN_ACT ( uint16 chipAddress , GD_TWN_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_TWN_ACT,  (uint16)value);
}

void
GD_Set_TRIM_CRC_ACT ( uint16 chipAddress , GD_TRIM_CRC_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_TRIM_CRC_ACT,  (uint16)value);
}

void
GD_Set_INT_REG_ACT ( uint16 chipAddress , GD_INT_REG_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_INT_REG_ACT,  (uint16)value);
}

/*act3*/
void
GD_Set_GM_ACT ( uint16 chipAddress , GD_GM_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_GM_ACT,  (uint16)value);
}

/*DIGCOMP1*/
void
GD_Set_DCOMP1_DEGLITCH ( uint16 chipAddress , GD_DCOMP1_DEGLITCH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP1_DEGLITCH,  (uint16)value);
}

void
GD_Set_DCOMP1_ACT ( uint16 chipAddress , GD_DCOMP1_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP1_ACT,  (uint16)value);
}

void
GD_Set_DCOMP1_DIR ( uint16 chipAddress , GD_DCOMP1_DIR_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP1_DIR,  (uint16)value);
}

void
GD_Set_DCOMP1_EN ( uint16 chipAddress , GD_DCOMP1_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP1_EN,  (uint16)value);
}

void
GD_Set_THRESH_AI1 ( uint16 chipAddress , GD_THRESH_AI1_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_THRESH_AI1,  (uint16)value);
}

/*DIGCOMP2*/
void
GD_Set_DCOMP2_DEGLITCH ( uint16 chipAddress , GD_DCOMP2_DEGLITCH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP2_DEGLITCH,  (uint16)value);
}

void
GD_Set_DCOMP2_ACT ( uint16 chipAddress , GD_DCOMP2_ACT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP2_ACT,  (uint16)value);
}

void
GD_Set_DCOMP2_DIR ( uint16 chipAddress , GD_DCOMP2_DIR_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP2_DIR,  (uint16)value);
}

void
GD_Set_DCOMP2_EN ( uint16 chipAddress , GD_DCOMP2_EN_type value )
{
	Prv_GD_SetReg( chipAddress, GD_DCOMP2_EN,  (uint16)value);
}

void
GD_Set_THRESH_AI2 ( uint16 chipAddress , GD_THRESH_AI2_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_THRESH_AI2,  (uint16)value);
}

/*crc*/
void
GD_Set_CRC_TX ( uint16 chipAddress , GD_CRC_TX_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CRC_TX,  (uint16)value);
}

/*control1*/
void
GD_Set_CLR_FAULT ( uint16 chipAddress , GD_CLR_FAULT_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CLR_FAULT,  (uint16)value);
}

void
GD_Set_GATE_OFF_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_GATE_OFF_CHK,  (uint16)value);
}

void
GD_Set_GATE_ON_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_GATE_ON_CHK,  (uint16)value);
}

void
GD_Set_OC_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OC_CHK,  (uint16)value);
}

void
GD_Set_DESAT_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DESAT_CHK,  (uint16)value);
}

void
GD_Set_SCP_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_SCP_CHK,  (uint16)value);
}

void
GD_Set_CLK_MON_SEC_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CLK_MON_SEC_CHK,  (uint16)value);
}

void
GD_Set_CLK_MON_PRI_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CLK_MON_PRI_CHK,  (uint16)value);
}

void
GD_Set_GATE_CFG_CRC_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CFG_CRC_CHK,  (uint16)value);
}

void
GD_Set_DCOMP1_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP1_CHK,  (uint16)value);
}

void
GD_Set_DCOMP2_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_DCOMP2_CHK,  (uint16)value);
}

void
GD_Set_CLR_SPI_CRC ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CLR_SPI_CRC,  (uint16)value);
}

void
GD_Set_PWM_LANE_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_PWM_LANE_CHK,  (uint16)value);
}

void
GD_Set_STP_CHK ( uint16 chipAddress , GD_STATUS_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_STP_CHK,  (uint16)value);
}

/*control2*/
void
GD_Set_PARITY1 ( uint16 chipAddress , GD_PARITY_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_PARITY1,  (uint16)value);
}

void
GD_Set_ASC_EN_HIZ_EN ( uint16 chipAddress , GD_ASC_EN_HIZ_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ASC_EN_HIZ_EN,  (uint16)value);
}

void
GD_Set_ASC_DELAY_SEL ( uint16 chipAddress , GD_ASC_DELAY_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ASC_DELAY_SEL,  (uint16)value);
}

void
GD_Set_ASC_LEV_SEL ( uint16 chipAddress , GD_ASC_LEV_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ASC_LEV_SEL,  (uint16)value);
}

void
GD_Set_AI2_PUPD ( uint16 chipAddress , GD_AI2_PUPD_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_AI2_PUPD,  (uint16)value);
}

void
GD_Set_PARITY2 ( uint16 chipAddress , GD_PARITY_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_PARITY2,  (uint16)value);
}

void
GD_Set_CURPROT_ASC_EN ( uint16 chipAddress , GD_CURPROT_ASC_EN_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_CURPROT_ASC_EN,  (uint16)value);
}

void
GD_Set_ASC_STRENGTH ( uint16 chipAddress , GD_ASC_STRENGTH_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_ASC_STRENGTH,  (uint16)value);
}

void
GD_Set_OUTL_SEL ( uint16 chipAddress , GD_OUTL_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OUTL_SEL,  (uint16)value);
}

void
GD_Set_OUTH_SEL ( uint16 chipAddress , GD_OUTH_SEL_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_OUTH_SEL,  (uint16)value);
}

/*control3*/
void
GD_Set_SPITEST ( uint16 chipAddress , GD_SPITEST_type value )
{
	Prv_GD_SetReg( chipAddress,  GD_SPITEST,  (uint16)value);
}

/* Private set function to set the RAM register*/
void Prv_GD_SetReg(uint16 chipAddress, CONG_REG_type Regadd, uint16 value)
{
	if(chipAddress >= GD_NUM_OF_CHIPS || chipAddress < None)
	{
		Prv_GD_Det_ReportError(Invalid_ChipID);
		return;
	}
	CFG_Update[chipAddress] = TRUE;
	switch(Regadd)
	{
		/*cfg1*/
		case GD_RESET_MUTE_EN:
			GD_Dev[chipAddress].cfg1.bit.GD_RESET_MUTE_EN = (GD_RESET_MUTE_EN_type)value;
			break;
		case GD_IO_DG:
			GD_Dev[chipAddress].cfg1.bit.GD_IO_DG = (GD_IO_DG_type)value;
			break;
		case GD_TDEAD:
			GD_Dev[chipAddress].cfg1.bit.GD_TDEAD = GD_Tdead( value );
			break;
		case GD_NFLT2_MUX:
			GD_Dev[chipAddress].cfg1.bit.GD_NFLT2_MUX = (GD_NFLT2_MUX_type) value;
			break;
		case GD_OVLO1_TH:
			GD_Dev[chipAddress].cfg1.bit.GD_OVLO1_TH = (GD_OVLO1_TH_type)value;
			break;
		case GD_UVLO1_TH: 
			GD_Dev[chipAddress].cfg1.bit.GD_UVLO1_TH = (GD_UVLO1_TH_type) value;
			break;

		/*cfg2*/
		case GD_MCLP_EN:
			GD_Dev[chipAddress].cfg2.bit.GD_MCLP_EN = (GD_MCLP_EN_type)value;
			break;
		case GD_DESAT_SC_SEL:
			GD_Dev[chipAddress].cfg2.bit.GD_DESAT_SC_SEL = (GD_DESAT_SC_SEL_type)value;
			break;
		case GD_OC_EN:
			GD_Dev[chipAddress].cfg2.bit.GD_OC_EN = (GD_OC_EN_type)value;
			break;
		case GD_GM_BLK:
			GD_Dev[chipAddress].cfg2.bit.GD_GM_BLK = (GD_GM_BLK_type)value;
			break;
		case GD_OVLO3_TH:
			GD_Dev[chipAddress].cfg2.bit.GD_OVLO3_TH = (GD_OVLO3_TH_type)value;
			break;
		case GD_UVLO3_TH:
			GD_Dev[chipAddress].cfg2.bit.GD_UVLO3_TH = (GD_UVLO3_TH_type)value;
			break;
		case GD_OVLO2_TH:
			GD_Dev[chipAddress].cfg2.bit.GD_OVLO2_TH = (GD_OVLO2_TH_type)value;
			break;
		case GD_UVLO2_TH:
			GD_Dev[chipAddress].cfg2.bit.GD_UVLO2_TH = (GD_UVLO2_TH_type)value;
			break;
		case GD_MCLP_TH:
			GD_Dev[chipAddress].cfg2.bit.GD_MCLP_TH = (GD_MCLP_TH_type)value;
			break;

		/*cfg3*/
		case GD_VGTH_MEAS_EN:
			GD_Dev[chipAddress].cfg3.bit.GD_VGTH_MEAS_EN = (GD_VGTH_MEAS_EN_type)value;
			break;
		case GD_STO_2STO_CURR:	
			GD_Dev[chipAddress].cfg3.bit.GD_STO_2STO_CURR = (GD_STO_2STO_CURR_type)value;
			break;
		case GD_DESAT_ICHG:
			GD_Dev[chipAddress].cfg3.bit.GD_DESAT_ICHG = (GD_DESAT_ICHG_type)value;
			break;
		case GD_DESAT_SC_TH:
			GD_Dev[chipAddress].cfg3.bit.GD_DESAT_SC_TH = (GD_DESAT_SC_TH_type)value;
			break;
		case GD_DESAT_SCP_DG_EN:
			GD_Dev[chipAddress].cfg3.bit.GD_DESAT_SCP_DG_EN = (GD_DESAT_SCP_DG_EN_type)value;
			break;
		case GD_OC_TH:
			GD_Dev[chipAddress].cfg3.bit.GD_OC_TH = (GD_OC_TH_type)value;
			break;
		case GD_SC_BLK:
			GD_Dev[chipAddress].cfg3.bit.GD_SC_BLK = (GD_SC_BLK_type)value;
			break;

		/*cfg4*/
		case GD_DOUT_CH_SEL:
			GD_Dev[chipAddress].cfg4.bit.GD_DOUT_CH_SEL = (GD_DOUT_CH_SEL_type)value;
			break;
		case GD_DOUT_FREQ:	
			GD_Dev[chipAddress].cfg4.bit.GD_DOUT_FREQ = (GD_DOUT_FREQ_type)value;
			break;
		case GD_IZTC_EN:
			GD_Dev[chipAddress].cfg4.bit.GD_IZTC_EN = (GD_IZTC_EN_type)value;
			break;
		case GD_VCECLP_EN:
			GD_Dev[chipAddress].cfg4.bit.GD_VCECLP_EN = (GD_VCECLP_EN_type)value;
			break;
		case GD_STO_STO_SEL2:
			GD_Dev[chipAddress].cfg4.bit.GD_STO_STO_SEL2 = (GD_STO_STO_SEL2_type)value;
			break;
		case GD_VCE_CLMP_HLD_TIME:
			GD_Dev[chipAddress].cfg4.bit.GD_VCE_CLMP_HLD_TIME = (GD_VCE_CLMP_HLD_TIME_type)value;
			break;
		case GD_MCLP_EXT_EN:
			GD_Dev[chipAddress].cfg4.bit.GD_MCLP_EXT_EN = (GD_MCLP_EXT_EN_type)value;
			break;
		case GD_STO_TIME2:
			GD_Dev[chipAddress].cfg4.bit.GD_STO_TIME2 = (GD_STO_TIME2_type)value;
			break;

		/*cfg5*/
		case GD_IZTC_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_IZTC_SEL = (GD_IZTC_SEL_type)value;
			break;
		case GD_ADC_OFF_CH1_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_OFF_CH1_SEL = (GD_ADC_OFF_CH1_SEL_type)value;
			break;
		case GD_ADC_OFF_CH2_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_OFF_CH2_SEL = (GD_ADC_OFF_CH2_SEL_type)value;
			break;
		case GD_ADC_OFF_TEMP_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_OFF_TEMP_SEL = (GD_ADC_OFF_TEMP_SEL_type)value;
			break;
		case GD_ADC_OFF_VCC2_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_OFF_VCC2_SEL = (GD_ADC_OFF_VCC2_SEL_type)value;
			break;
		case GD_ADC_ON_CH1_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_ON_CH1_SEL = (GD_ADC_ON_CH1_SEL_type)value;
			break;
		case GD_ADC_ON_CH2_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_ON_CH2_SEL = (GD_ADC_ON_CH2_SEL_type)value;
			break;
		case GD_ADC_ON_TEMP_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_ON_TEMP_SEL = (GD_ADC_ON_TEMP_SEL_type)value;
			break;
		case GD_ADC_ON_VCC2_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_ON_VCC2_SEL = (GD_ADC_ON_VCC2_SEL_type)value;
			break;
		case GD_ADC_ON_DESAT_SEL:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_ON_DESAT_SEL = (GD_ADC_ON_DESAT_SEL_type)value;
			break;
		case GD_ADC_SAMP_DLY:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_SAMP_DLY = (GD_ADC_SAMP_DLY_type)value;
			break;
		case GD_ADC_SAMP_MODE:
			GD_Dev[chipAddress].cfg5.bit.GD_ADC_SAMP_MODE = (GD_ADC_SAMP_MODE_type)value;
			break;

		/*cfg6*/
		case GD_OC_BLK:
			GD_Dev[chipAddress].cfg6.bit.GD_OC_BLK = (GD_OC_BLK_type)value;
			break;

		/*act1*/
		case GD_CFG_CRC_ACT:
			GD_Dev[chipAddress].act1.bit.GD_CFG_CRC_ACT = (GD_CFG_CRC_ACT_type)value;
			break;
		case GD_SPI_ACT:
			GD_Dev[chipAddress].act1.bit.GD_SPI_ACT = (GD_SPI_ACT_type)value;
			break;
		case GD_ADC_ACT:
			GD_Dev[chipAddress].act1.bit.GD_ADC_ACT = (GD_ADC_ACT_type)value;
			break;
		case GD_OVUV3_ACT:
			GD_Dev[chipAddress].act1.bit.GD_OVUV3_ACT = (GD_OVUV3_ACT_type)value;
			break;
		case GD_UVLO2_ACT:
			GD_Dev[chipAddress].act1.bit.GD_UVLO2_ACT = (GD_UVLO2_ACT_type)value;
			break;
		case GD_OVLO2_ACT:
			GD_Dev[chipAddress].act1.bit.GD_OVLO2_ACT = (GD_OVLO2_ACT_type)value;
			break;
		case GD_UVLO1_ACT:
			GD_Dev[chipAddress].act1.bit.GD_UVLO1_ACT = (GD_UVLO1_ACT_type)value;
			break;
		case GD_OVLO1_ACT:
			GD_Dev[chipAddress].act1.bit.GD_OVLO1_ACT = (GD_OVLO1_ACT_type)value;
			break;

		/*act2*/
		case GD_SC_DESAT_ACT:
			GD_Dev[chipAddress].act2.bit.GD_SC_DESAT_ACT = (GD_SC_DESAT_ACT_type)value;
			break;
		case GD_INT_COMM_ACT:
			GD_Dev[chipAddress].act2.bit.GD_INT_COMM_ACT = (GD_INT_COMM_ACT_type)value;
			break;
		case GD_PWM_LANE_ACT:
			GD_Dev[chipAddress].act2.bit.GD_PWM_LANE_ACT = (GD_PWM_LANE_ACT_type)value;
			break;
		case GD_STP_ACT:
			GD_Dev[chipAddress].act2.bit.GD_STP_ACT = (GD_STP_ACT_type)value;
			break;
		case GD_OC_ACT:
			GD_Dev[chipAddress].act2.bit.GD_OC_ACT = (GD_OC_ACT_type)value;
			break;
		case GD_CLK_MON_ACT:
			GD_Dev[chipAddress].act2.bit.GD_CLK_MON_ACT = (GD_CLK_MON_ACT_type)value;
			break;
		case GD_TWN_ACT:
			GD_Dev[chipAddress].act2.bit.GD_TWN_ACT = (GD_TWN_ACT_type)value;
			break;
		case GD_TRIM_CRC_ACT:
			GD_Dev[chipAddress].act2.bit.GD_TRIM_CRC_ACT = (GD_TRIM_CRC_ACT_type)value;
			break;
		case GD_INT_REG_ACT:
			GD_Dev[chipAddress].act2.bit.GD_INT_REG_ACT = (GD_INT_REG_ACT_type)value;
			break;

		/*act3*/
		case GD_GM_ACT:
			GD_Dev[chipAddress].act3.bit.GD_GM_ACT = (GD_GM_ACT_type)value;
			break;

		/*DIGCOMP1*/
		case GD_DCOMP1_DEGLITCH:
			GD_Dev[chipAddress].digcomp1.bit.GD_DCOMP1_DEGLITCH = (GD_DCOMP1_DEGLITCH_type)value;
			break;
		case GD_DCOMP1_ACT:
			GD_Dev[chipAddress].digcomp1.bit.GD_DCOMP1_ACT = (GD_DCOMP1_ACT_type)value;
			break;
		case GD_DCOMP1_DIR:
			GD_Dev[chipAddress].digcomp1.bit.GD_DCOMP1_DIR = (GD_DCOMP1_DIR_type)value;
			break;
		case GD_DCOMP1_EN:
			GD_Dev[chipAddress].digcomp1.bit.GD_DCOMP1_EN = (GD_DCOMP1_EN_type)value;
			break;
		case GD_THRESH_AI1:
			GD_Dev[chipAddress].digcomp1.bit.GD_THRESH_AI1 = (GD_THRESH_AI1_type)value;
			break;

		/*DIGCOMP2*/
		case GD_DCOMP2_DEGLITCH:
			GD_Dev[chipAddress].digcomp2.bit.GD_DCOMP2_DEGLITCH = (GD_DCOMP2_DEGLITCH_type)value;
			break;
		case GD_DCOMP2_ACT:
			GD_Dev[chipAddress].digcomp2.bit.GD_DCOMP2_ACT = (GD_DCOMP2_ACT_type)value;
			break;
		case GD_DCOMP2_DIR:
			GD_Dev[chipAddress].digcomp2.bit.GD_DCOMP2_DIR = (GD_DCOMP2_DIR_type)value;
			break;
		case GD_DCOMP2_EN:
			GD_Dev[chipAddress].digcomp2.bit.GD_DCOMP2_EN = (GD_DCOMP2_EN_type)value;
			break;
		case GD_THRESH_AI2:
			GD_Dev[chipAddress].digcomp2.bit.GD_THRESH_AI2 = (GD_STATUS_type)value;
			break;

		/*crc*/
		case GD_CRC_TX:
			GD_Dev[chipAddress].crc.bit.GD_CRC_TX = (GD_STATUS_type)value;
			break;

		/*control1*/
		case GD_STP_CHK:
			GD_Dev[chipAddress].control1.bit.GD_STP_CHK = (GD_STATUS_type)value;
			break;
		case GD_PWM_LANE_CHK:
			GD_Dev[chipAddress].control1.bit.GD_PWM_LANE_CHK = (GD_STATUS_type)value;
			break;
		case GD_CLR_SPI_CRC:
			GD_Dev[chipAddress].control1.bit.GD_CLR_SPI_CRC = (GD_STATUS_type)value;
			break;
		case GD_DCOMP2_CHK:
			GD_Dev[chipAddress].control1.bit.GD_DCOMP2_CHK = (GD_STATUS_type)value;
			break;
		case GD_DCOMP1_CHK:
			GD_Dev[chipAddress].control1.bit.GD_DCOMP1_CHK = (GD_STATUS_type)value;
			break;
		case GD_CFG_CRC_CHK:
			GD_Dev[chipAddress].control1.bit.GD_CFG_CRC_CHK = (GD_STATUS_type)value;
			break;
		case GD_CLK_MON_PRI_CHK:
			GD_Dev[chipAddress].control1.bit.GD_CLK_MON_PRI_CHK = (GD_STATUS_type)value;
			break;
		case GD_CLK_MON_SEC_CHK:
			GD_Dev[chipAddress].control1.bit.GD_CLK_MON_SEC_CHK = (GD_STATUS_type)value;
			break;
		case GD_SCP_CHK:
			GD_Dev[chipAddress].control1.bit.GD_SCP_CHK = (GD_STATUS_type)value;
			break;
		case GD_DESAT_CHK:
			GD_Dev[chipAddress].control1.bit.GD_DESAT_CHK = (GD_STATUS_type)value;
			break;
		case GD_OC_CHK:
			GD_Dev[chipAddress].control1.bit.GD_OC_CHK = (GD_STATUS_type)value;
			break;
		case GD_GATE_ON_CHK:
			GD_Dev[chipAddress].control1.bit.GD_GATE_ON_CHK = (GD_STATUS_type)value;
			break;
		case GD_GATE_OFF_CHK:
			GD_Dev[chipAddress].control1.bit.GD_GATE_OFF_CHK = (GD_STATUS_type)value;
			break;
		case GD_CLR_FAULT:
			GD_Dev[chipAddress].control1.bit.GD_CLR_FAULT = (GD_CLR_FAULT_type)value;
			break;

		/*control2*/
		case GD_PARITY1:
			GD_Dev[chipAddress].control2.bit.GD_PARITY1 = (GD_PARITY_type)value;
			break;
		case GD_ASC_EN_HIZ_EN:
			GD_Dev[chipAddress].control2.bit.GD_ASC_EN_HIZ_EN = (GD_ASC_EN_HIZ_EN_type)value;
			break;
		case GD_ASC_DELAY_SEL:
			GD_Dev[chipAddress].control2.bit.GD_ASC_DELAY_SEL = (GD_ASC_DELAY_SEL_type)value;
			break;
		case GD_ASC_LEV_SEL:
			GD_Dev[chipAddress].control2.bit.GD_ASC_LEV_SEL = (GD_ASC_LEV_SEL_type)value;
			break;
		case GD_AI2_PUPD:
			GD_Dev[chipAddress].control2.bit.GD_AI2_PUPD = (GD_AI2_PUPD_type)value;
			break;
		case GD_PARITY2:
			GD_Dev[chipAddress].control2.bit.GD_PARITY1 = (GD_PARITY_type)value;
			break;
		case GD_CURPROT_ASC_EN:
			GD_Dev[chipAddress].control2.bit.GD_CURPROT_ASC_EN = (GD_CURPROT_ASC_EN_type)value;
			break;
		case GD_ASC_STRENGTH:
			GD_Dev[chipAddress].control2.bit.GD_ASC_STRENGTH = (GD_ASC_STRENGTH_type)value;
			break;
		case GD_OUTL_SEL:
			GD_Dev[chipAddress].control2.bit.GD_OUTL_SEL = (GD_OUTL_SEL_type)value;
			break;
		case GD_OUTH_SEL:
			GD_Dev[chipAddress].control2.bit.GD_OUTH_SEL = (GD_OUTH_SEL_type)value;
			break;

		/*control3*/
		case GD_SPITEST:
			GD_Dev[chipAddress].control3.bit.GD_SPITEST = (GD_STATUS_type)value;
			break;
		default: 
			break;
		}
	}
