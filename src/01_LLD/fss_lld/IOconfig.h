#ifndef IOCONFIG_H
#define IOCONFIG_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE  IOCONFIG_H.h                                                      */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION          PROJECT (FORD)                                           */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   creating IOCONFIG_H.h                                                   */
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
/* [1]         02.01.2023    Santhosh          Created                       */
/*****************************************************************************/


/*****************************************************************************/
/*                        Inclustions                                        */
/*****************************************************************************/
#include "Diag_Pid.h"
#include "Distab42.h"
#include "DPT_Drv.h"
#include "DPT_Time.h"
#include "Eep.h"
#include "Eep_Interface.h"
#include "Hw_Gpt.h"
#include "HwAdc.h"
#include "HwCan.h"
#include "HwDi.h"
#include "HwDo.h"
#include "HwEdsAdc.h"
#include "Hwio_Fcpu.h"
#include "HwPwm.h"
#include "IoHwAb_Adc.h"
#include "L2Sample_FS.h"
#include "LvPower_Drv.h"
#include "Mcal.h"
#include "Mcal_DmaLib.h"
#include "Mcal_Options.h"
#include "Mcal_TcLib.h"
#include "Mcal_WdgLib.h"
#include "PhC_Drv.h"
#include "PhC_DrvCfg.h"
#include "Pwm3ph.h"
#include "Pwm3ph_Cfg.h"
#include "Rdc_Drv.h"
#include "Rte_IoHwAbW.h"
#include "TLF35585.h"
#include "TLF35585_Cfg.h"
#include "TLF35585ErrHdl.h"
#include "TLF35585ErrHdl_Cfg.h"
#include "UCC5880.h"
#include "UCC5880_Calibration_Interfaces.h"
#include "UCC5880_Integration_Dependency.h"
#include "UCC5880_Private.h"
#include "UCC5880_Regs.h"


/* This can be removed later since this is for Testing */
#include "Testapp_ADC.h"
#include "Testapp_Can.h"
#include "Testapp_EEPROM.h"
#include "Testapp_Gatedriver.h"
#include "Testapp_HwDi.h"
#include "Testapp_HwDo.h"
#include "Testapp_PWM.h"
#include "Testapp_TLF35585.h"


/*****************************************************************************/
/*                        Global Function Prototype                          */
/*****************************************************************************/
extern void AppInit_0(void); /* for Core 0 */
extern void AppInit_1(void); /* for Core 1 */
extern void AppInit_2(void); /* for Core 2 */


// extern U32 HWIO_EEPROM_Read(U16 in_addr, U8 * out_addr, U32 length);
// extern U32 HWIO_EEPROM_Write(U16 in_addr, U8 * in_data, U32 length);
// extern U32 HWIO_EEPROM_Write_Status(void);
// extern U32 HWIO_EEPROM_Write_Protect(uint8 BlockId, FLAG ProtectionEnabled);
// extern void HWIO_EEPROM_Init(void);

#endif /* IOCONFIG_H */