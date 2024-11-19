#include "Std_Types.h"
#include "TLF35585.h"
#include "Testapp_TLF35585.h"
#include "HwDo.h"
uint8 test=0;
uint8 test1=0;
uint8 data_buf[50];
uint8 TestResult = TestFail;

FLAG Test_TLF35585(void)
{
  TLF35585_CmdType TempReg[10];
  if(!TLF35585_lSetMode(2))
  {
    if(!TLF35585_lSetMode(3))
    {
      if(!TLF35585_lSetMode(5))
      {
        if(!TLF35585_lSetMode(2))
        {
            TestResult= TestPass;
        }
      }
    }
  }
  if( 0u == TLF35585_DeviceInfo())
  {
    if( 0u == TLF35585_DisableWWD())
    {
      if(0u == TLF35585_DisableFWD())
      {
        TestResult= TestPass;
      }
    }
  }
    while(test==1){
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_DEVCFG0;
    TLF35585_Read(&TempReg, 1U);
    data_buf[0] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000);
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_DEVCFG1;
    TLF35585_Read(&TempReg, 1U);
    data_buf[1] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000); 
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG0;
    TLF35585_Read(&TempReg, 1U);
    data_buf[2] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000);
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG1;
    TLF35585_Read(&TempReg, 1U);
    data_buf[3] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000); 
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_FWDCFG;
    TLF35585_Read(&TempReg, 1U);
    data_buf[4] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000);
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_RWDCFG0;
    TLF35585_Read(&TempReg, 1U);
    data_buf[5] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000); 
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_RWDCFG1;
    TLF35585_Read(&TempReg, 1U);
    data_buf[6] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000);
    TempReg[0U].UserData = 0;
	  TempReg[0U].ReqCmd   = TLF35585_REG_RFWDCFG;
    TLF35585_Read(&TempReg, 1U);
    data_buf[7] =TempReg[0U].UserData; 
    Delay_Loop(9000000,500000);
  }
	  TLF35585_DeviceInfo();
    TLF35585_GetSPIStatus(1);
    do_pmic_scs( 0);
    Delay_Loop(9000000,500000);
    do_pmic_scs( 1);
}

 void Delay_Loop(uint32 Flp, uint32 Slp)
{ 
  int i,j;
  for(i = 0; i < Flp; i++)
  {
    for(j = 0; j < Slp; j++);
  } 
}
