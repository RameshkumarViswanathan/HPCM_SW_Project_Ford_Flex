
#include "Platform_Types.h"
#include "Os.h"
#include "Os_Cfg.h"
#include "Compiler.h"
#include "DispTab42.h"
#include "IfxCpu_reg.h"
#include "Mcal_Compiler.h"

static uint8 checkSupervisorMode(void)
{
    uint8 ret;

    if((MFCR(CPU_PSW) & 0x00000C00U) == 0x00000800U)
    {
        ret = 1;
    }
    else
    {
        ret = 0;
    }
    
    return ret;
}

void TRUSTED_setObaseTBase_protected(void)
{
	if(checkSupervisorMode() == 0U)  /* If the current IO mode is not supervisormode.*/
    {
		U8 CoreID = Mcal_GetCoreId();

        if(CoreID == OS_CORE_ID_0)
        {
            CallTrustedFunction( UserProtetk_setObaseTBase_protected_Core0,
                                (TrustedFunctionParameterRefType)0U);
        }
        else if (CoreID == OS_CORE_ID_1) /* TODO: Need to update the configuration for core1 and core2*/
        {
           // CallTrustedFunction( UserProtetk_setObaseTBase_protected_Core1,
           //                     (TrustedFunctionParameterRefType)0U);
        }
		
	}
	else
	{
		etk_setObaseTBase_protected();
	}
}
void TRUSTED_DisableOverlayRegInit(void)
{
	if(checkSupervisorMode() == 0U) /* If the current IO mode is not supervisormode.*/
    {
		U8 CoreID = Mcal_GetCoreId();

        if(CoreID == OS_CORE_ID_0)
        {
            CallTrustedFunction( UserProtDisableOverlayRegInit_Core0,
                                (TrustedFunctionParameterRefType)0U);
        }
        else if (CoreID == OS_CORE_ID_1)  /* TODO: Need to update the configuration for core1 and core2*/
        {
            // CallTrustedFunction( UserProtDisableOverlayRegInit_Core1,
            //                     (TrustedFunctionParameterRefType)0U);
        }
		
	}
	else
	{
		DisableOverlayRegInit();
	}
}
void TRUSTED_SwitchPageToReferencePage(void)
{
	if(checkSupervisorMode() == 0U) /* If the current IO mode is not supervisormode.*/
    {
		U8 CoreID = Mcal_GetCoreId();

        if(CoreID == OS_CORE_ID_0)
        {
            CallTrustedFunction( UserProtSwitchPageToReferencePage_Core0,
                                (TrustedFunctionParameterRefType)0U);
        }
        else if (CoreID == OS_CORE_ID_1) /* TODO: Need to update the configuration for core1 and core2*/
        {
            // CallTrustedFunction( UserProtSwitchPageToReferencePage_Core1,
            //                     (TrustedFunctionParameterRefType)0U);
        }
	}
	else
	{
		SwitchPageToReferencePage();
	}
}

void TRUSTED_EnableOverlayRegInit(void)
{
	if(checkSupervisorMode() == 0U) /* If the current IO mode is not supervisormode.*/
    {
		U8 CoreID = Mcal_GetCoreId();

        if(CoreID == OS_CORE_ID_0)
        {
            CallTrustedFunction( UserProtEnableOverlayRegInit_Core0,
                                (TrustedFunctionParameterRefType)0U);
        }
        else if (CoreID == OS_CORE_ID_1)
        {
        //    CallTrustedFunction( UserProtEnableOverlayRegInit_Core1,
        //                       (TrustedFunctionParameterRefType)0U);
        }
		
	}
	else
	{
		EnableOverlayRegInit();
	}
}
void TRUSTED_SwitchPageToWorkingPage(void)
{
	if(checkSupervisorMode() == 0U) /* If the current IO mode is not supervisormode.*/
    {
		U8 CoreID = Mcal_GetCoreId();

        if(CoreID == OS_CORE_ID_0)
        {
            CallTrustedFunction( UserProtSwitchPageToWorkingPage_Core0,
                                (TrustedFunctionParameterRefType)0U);
        }
        else if (CoreID == OS_CORE_ID_1)
        {
        //    CallTrustedFunction( UserProtSwitchPageToWorkingPage_Core1,
        //                        (TrustedFunctionParameterRefType)0U);
        }
		
	}
	else
	{
		SwitchPageToWorkingPage();
	}
}