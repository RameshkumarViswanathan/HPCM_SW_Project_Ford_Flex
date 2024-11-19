/******************************************************************************/
/* !Layer           : MCAL                                                    */
/* !Component       : Framework                                               */
/* !Description     :                                                         */
/*                                                                            */
/* !File            : IFXSCUWDT.c                                             */
/* !Description     : Framework component managing WDT                        */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT VALEO all rights reserved                                        */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID: P2017_BSW:0A111732.A-SRC;2 %
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "IfxScuWdt.h"
#include "Os.h"
/**
/*brief Reset password of watchdog module. */
/******************************************************************************/
/*                           Function prototypes                              */
/******************************************************************************/
#define IFXSCU_START_SEC_CODE
void IfxScuWdt_clearCpuEndinit (uint16 password)
{
    IfxScuWdt_clearCpuEndinitInline (&MODULE_SCU.WDTCPU[GetCoreID()], password);
}

void IfxScuWdt_setCpuEndinit (uint16 password)
{
    IfxScuWdt_setCpuEndinitInline (&MODULE_SCU.WDTCPU[GetCoreID()], password);
}

void IfxScuWdt_disableCpuWatchdog (uint16 password)
{
    /* Select CPU Watchdog based on Core Id */
    Ifx_SCU_WDTCPU *wdt = &MODULE_SCU.WDTCPU[GetCoreID()];

    IfxScuWdt_clearCpuEndinit (password);
    wdt->CON1.B.DR = 1;         //Set DR bit in Config_1 register
    IfxScuWdt_setCpuEndinit (password);
}

void IfxScuWdt_disableSafetyWatchdog (uint16 password)
{
    IfxScuWdt_clearSafetyEndinit (password);
    SCU_WDTS_CON1.B.DR = 1;     //Set DR bit in Config_1 register
    IfxScuWdt_setSafetyEndinit (password);
}

void IfxScuWdt_clearSafetyEndinit (uint16 password)
{
    IfxScuWdt_clearSafetyEndinitInline (password);
}

void IfxScuWdt_setSafetyEndinit (uint16 password)
{
    IfxScuWdt_setSafetyEndinitInline (password);
}

uint16 IfxScuWdt_getSafetyWatchdogPassword (void)
{
    return IfxScuWdt_getSafetyWatchdogPasswordInline ();
}

#define IFXSCU_STOP_SEC_CODE

/*-------------------------------- end of file -------------------------------*/
