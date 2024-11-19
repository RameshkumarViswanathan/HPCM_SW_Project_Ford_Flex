#include "Std_Types.h"
#include "UCC5880.h"
#include "Testapp_Gatedriver.h"
#include "HwDo.h"

#define Test_Pass 1u
#define Test_Fail 0u
uint8 Test_Result = Test_Fail;
uint16 testcount = 0u;
uint16 result =0u;
uint16 Conf_Res[6];
uint16 status_Res[3];
uint16 *Conf_Reg;
uint16 *reg_status;
uint16 act_stat[6] = {0,0,0,0,0,0};
FLAG Testapp_gd(void)
{
	uint16 ret = 0u;
	uint8 idx = 0u;

	do_gd0u(STD_HIGH);
	do_gd1u(STD_HIGH);
	do_gd2u(STD_HIGH);

	if(GD_Init() == E_OK)
	{
		testcount++;
		for(idx =0; idx< GD_NUM_OF_CHIPS; idx++)
		{
			if(Prv_GD_EnableConf(idx) == E_OK)
			{
				testcount++;
				if(Prv_GD_SWRESET (idx) == E_OK)	
				{
					testcount++;
					if(Prv_GD_WrReg16(idx, GD_ADDR_CONTROL1, 0x8000u) == E_OK)
					{
						testcount++;
						if(0x0000u == Prv_GD_ReadReg (idx, GD_ADDR_FAULT1))
						{
							testcount++;
							if(0x0000u == Prv_GD_ReadReg (idx, GD_ADDR_FAULT2))
							{
								testcount++;
								if(Prv_GD_WrReg16(idx, GD_ADDR_CONTROL3, 0x5A5Au) == E_OK)
								{
									testcount++;
									if(0x5A5Au == Prv_GD_ReadReg (idx, GD_ADDR_CONTROL3))
									{
										testcount++;
										if(0x010Cu == Prv_GD_ReadReg (idx, GD_ADDR_STATUS))
										{
											testcount++;
											if(Prv_GD_LockConf (idx) == E_OK)
											{
												testcount++;
												GD_10ms_MainFunction();
												if(GD_StateMachine == RunTimeMode)
												{
													Test_Result = Test_Pass;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	for(int i=0; i<GD_NUM_OF_CHIPS; i++)
	{	
		Ford_read_write(i);
	}

	for(int i=0; i<GD_NUM_OF_CHIPS; i++)
	{
		Prv_GD_InitRegs(i);
		Prv_GD_WriteReg(i);
		Conf_Reg = (Prv_GD_ReadConfRegs(i));
		for(int i=0; i<GD_NUM_OF_SEQREADCONF;i++)
		{
			Conf_Res[i] = Conf_Reg[i];
		}
		reg_status = (Prv_GetRegisterStatus(i));
		for(int i=0; i<GD_NUM_OF_STATUS_REG;i++)
		{
			status_Res[i] = reg_status[i];
		}
		act_stat[i] = Prv_GD_IsAct(i);
	}

	if(Prv_ReadChipReadyStatus() == E_OK)
	{
		testcount++;
	}

}
void Ford_read_write(uint16 address)
{
	gate_drv_config1_write(address, 0x4001 );
	if(gate_drv_config1_read(address) == 0x4001 )
	{
		gate_drv_config2_write(address, 0x6871);
		if(gate_drv_config2_read(address) == 0x6871 )
		{
			gate_drv_config3_write( address, 0x0000);
			if(gate_drv_config3_read(address) == 0x0000 )
			{
				gate_drv_config4_write( address, 0x0020);
				if(gate_drv_config4_read(address) == 0x0020 )
				{
					gate_drv_config5_write( address, 0x0000);
					if(gate_drv_config5_read(address) == 0x0000 )
					{
						gate_drv_config6_write( address, 0x0000);
						if(gate_drv_config6_read(address) == 0x0000 )
						{
							gate_drv_act1_write(address, 0xF32A);
							if(gate_drv_act1_read(address) == 0xF32A )
							{
								gate_drv_act2_write(address, 0xEAFF);
								if(gate_drv_act2_read(address) == 0xEAFF )
								{
									gate_drv_act3_write(address, 0x8000);
									if(gate_drv_act3_read(address) == 0x8000 )
									{
										gate_drv_comp1_write(address,0x0004);
										if(gate_drv_comp1_read(address) == 0x0004 )
										{
											gate_drv_comp2_write(address, 0x0004);
											if(gate_drv_comp2_read(address) == 0x0004 )
											{
												if(gate_drv_adc1_read(address) == 0 )
												{
													if(gate_drv_adc2_read(address) == 0 )
													{
														if(gate_drv_adc3_read(address) == 0 )
														{
															if(gate_drv_adc4_read(address) == 0 )
															{
																if(gate_drv_adc5_read(address) == 0 )
																{
																	if(gate_drv_adc6_read(address) == 0 )
																	{
																		gate_drv_ctl3_write(address, 0xAA00);
																		if(gate_drv_ctl3_read(address) == 0xAA00 )
																		{
																			gate_drv_ctl1_write(address, 0x0000);
																			if(gate_drv_ctl1_read(address) == 0x0000 )
																			{
																				gate_drv_ctl2_write(address, 0xAAA0);
																				if(gate_drv_ctl2_read(address) == 0xAAA0 )
																				{
																					gate_drv_crc_write(address, 0);
																					if(gate_drv_crc_read(address) == 0)
																					{
																						Test_Result = Test_Pass;
																						if(gate_drv_status_read(address) == 0 )
																						{
																							if(gate_drv_flt1_read(address) == 0 )
																							{
																								if(gate_drv_flt2_read(address) == 0 )
																								{
																									Test_Result = Test_Pass;
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}												
														}													
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}	
			}
		}
	}

}



