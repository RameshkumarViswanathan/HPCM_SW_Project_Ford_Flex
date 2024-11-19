#ifndef UCC5880_INTEGRATION_DEPENDENCY_H
#define UCC5880_INTEGRATION_DEPENDENCY_H

#include "Std_Types.h"
#include "UCC5880.h"
#include "UCC5880_Regs.h"

/*DEM event ID*/
#define DemConf_DemEventParameter_GD_Fault    0u
#define DemConf_DemEventParameter_GD_COM_Err  1u
#define GD_NUM_OF_CHIPS             6u
/*Dio pin type definition*/
#define		PIN_nFLTb_uh_READ					DIO_CHANNEL_11_5
#define		PIN_nFLTb_ul_READ					DIO_CHANNEL_11_13
#define		PIN_nFLTb_vh_READ					DIO_CHANNEL_11_7
#define		PIN_nFLTb_vl_READ					DIO_CHANNEL_11_14
#define		PIN_nFLTb_wh_READ					DIO_CHANNEL_11_8
#define		PIN_nFLTb_wl_READ					DIO_CHANNEL_11_15

/*Inline read function definition */

__inline__ U16 gate_drv_config1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}

	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, (uint16)GD_ADDR_CFG1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_config2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CFG2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_config3_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CFG3);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_config4_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CFG4);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_config5_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CFG5);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_config6_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CFG6);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_act1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ACT1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_act2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ACT2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_act3_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ACT3);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_comp1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H= Prv_GD_ReadReg (address, GD_ADDR_DIGCOMP1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_comp2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_DIGCOMP2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc3_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC3);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc4_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC4);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc5_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC5);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_adc6_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_ADC6);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_crc_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CRC);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_status_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_STATUS);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_flt1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_FAULT1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_flt2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_FAULT2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_ctl1_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CONTROL1);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_ctl2_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;

	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}
	
	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CONTROL2);

	return SpiRxBuffReadOneReg_H;
}

__inline__ U16 gate_drv_ctl3_read( U16 address)
{
	U16 SpiRxBuffReadOneReg_H;
	
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return 0;
	}

	SpiRxBuffReadOneReg_H = Prv_GD_ReadReg (address, GD_ADDR_CONTROL3);

	return SpiRxBuffReadOneReg_H;
}

/*inline write functions*/

__inline__ FLAG gate_drv_config1_write(U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG1, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

inline FLAG gate_drv_config2_write(U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG2, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_config3_write( U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG3, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_config4_write( U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG4, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_config5_write( U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG5, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_config6_write( U16 address, U16 config)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CFG6, config)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_act1_write(U16 address, U16 action)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_ACT1, action)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_act2_write(U16 address, U16 action)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_ACT2, action)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_act3_write(U16 address, U16 action)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_ACT3, action)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_comp1_write( U16 address, U16 comp)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_DIGCOMP1, comp)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_comp2_write( U16 address, U16 comp)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_DIGCOMP2, comp)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_crc_write(U16 address, U16 crc)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CRC, crc)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_ctl1_write(U16 address, U16 ctl)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CONTROL1, ctl)){
		RetVal= E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_ctl2_write(U16 address, U16 ctl)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CONTROL2, ctl)){
		RetVal= E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

__inline__ FLAG gate_drv_ctl3_write(U16 address, U16 ctl)
{
	uint8 RetVal = (uint8)E_NOT_OK;
	if(address < 0 || address >= GD_NUM_OF_CHIPS)
	{
		return RetVal;
	}
	Prv_GD_EnableConf(address);
	if(Prv_GD_WrReg16(address, GD_ADDR_CONTROL3, ctl)){
		RetVal = E_OK;
	}
	Prv_GD_LockConf(address);
	return RetVal;
}

inline FLAG gate_drv_init()
{
//    if(GD_Init(void)==E_OK){
// 	return E_OK;
// 	}
// 	return E_NOT_OK;
}

#endif /*UCC5880_INTEGRATION_DEPENDENCY_H*/
