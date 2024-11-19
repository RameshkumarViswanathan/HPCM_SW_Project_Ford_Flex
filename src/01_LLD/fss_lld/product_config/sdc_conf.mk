#/*==================================================================================================
#  Project	     : FORD_HPCM_ISC
#  Platform	     : TC377
#  Peripheral    : 
#  Dependencies  : 
#  File types    : 
#  Description   : 
#
#  (c) Copyright 2022
#  All Rights Reserved.
#==================================================================================================*/
#/*==================================================================================================
#Revision History:
#                             Modification     Tracking
#Author (core ID)              Date D/M/Y       Number     Description of Changes
#---------------------------   ----------    ------------  ------------------------------------------
#TechM     29/07/2023    126858        [CFG]: New architecture design
#---------------------------   ----------    ------------  ------------------------------------------                                        
#==================================================================================================*/

#==================================================================================================
#        To avoid to compile file in specified directories -  MCAL DRIVERS              
#==================================================================================================

    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Bfx/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/CanIf/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Can_17_McmCan/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Crc/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dsadc/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Eth_17_GEthMac/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/FlsLoader/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fr_17_Eray/src/*.c))
#    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Gpt/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Icu_17_TimerIp/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Lin_17_AscLin/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Ocu/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Pwm/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Smu/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Uart/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Wdg_17_Scu/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dio/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Can_17_McmCan/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Mcu/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Spi/src/*.c))
#   S_BLACKLIST_SDC  = $(notdir $(wildcard mcal/Adc/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dma/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fee/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fls_17_Dmu/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/McalLib/src/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Port/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/CanIf/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Irq/Can_17_McmCan_Irq.c))
#==================================================================================================
#  To avoid to compile file in specified directories - SIP                       
#==================================================================================================
   
    
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_main.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBm/bm_main.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblUpd/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Sbc_30_Tlf35584/Sbc_30_Tlf35584.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Wdg_30_Sbc/*.c))
    
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Mcal_Tc3xx/*.c))



    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Spi/Spi_Fbl.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash/flashdrv.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash_XD2/flashdrv_xd2.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblSpi_InfineonQspi/fbl_spi_infineon_qspi.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblUpd/upd_main.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_flio_xd2.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_SeedKeyVendor.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_applvect.c))   
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblAsrStubs/Mcal_WdgLib.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblAsrStubs/Dem.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash/FlashRom.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Cert.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Crc.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Decryption.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Job.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_SeedKey.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Verification.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Cmpr/cmpr.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_diag.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_ramio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_flio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblCw/fbl_cw.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_wd.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_mio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_valstruct.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_nvpattern.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard BBSW/Fbl/fbl_mem.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_fsm.c))
#    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_lbt_access.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_hw.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_nvpattern_oem.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBm/bm_shared.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBmHdr/bm_hdr.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Eep/EepIO.c))       
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Can/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Crypto_30_LibCv/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/PduR/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanIf/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CryIf/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Csm/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/vSecPrim/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Det/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/WrapNv/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanTp/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/VStdLib/*.c))

#==================================================================================================
#                To avoid to compile file in specified directories -  bsw_startup
#==================================================================================================
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/Spi_Fbl_Cfg.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/bm_ap.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/flashdrv_xd2_cfg.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/fbl_spi_infineon_qspi_cfg.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/upd_ap.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/upd_oem_ap.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BMHD_ToFbl.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BMHD_ToUpdater.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/upd_hw_ap.c))

#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsHw.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsHwIntTb.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsHwStartup.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsMain.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsMainStartup.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsMain_Appl.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/BrsMain_Callout_Stubs.c))

#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SecM_Callout_Stubs.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/WrapNv_Callout_Stubs.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/fbl_ap.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/fbl_apdi.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/fbl_apnv.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/fbl_apwd.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/appl_diag.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/appl_main.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/applvect.c))

#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SchM_Adc.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SchM_Dma.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SchM_Icu_17_TimerIp.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SchM_Pwm_17_GtmCcu6.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/SchM_Smu.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard lld_appl_src/LldHwStartup.c))


#==================================================================================================
#                To avoid to compile file in specified directories -  hwio
#==================================================================================================
#-------------------------------- Adc Start -----------------------------------------------# 
#   S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/hwadc.c))
#-------------------------------- Adc End -------------------------------------------------# 
#-------------------------------- DiDo Start ------------------------------------------------# 
#  S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/HwDi.c))
#  S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/HwDo.c))
#-------------------------------- DiDo End --------------------------------------------------# 

#-------------------------------- HWIO merge start ------------------------------------------------# 
#  S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/*.c))

#-------------------------------- HWIO merge End --------------------------------------------------# 

#-------------------------------- CAN_17_McmCan Start ------------------------------------------------# 
# S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/Testapp_Can.c))
# S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/Diag_Pid.c))
#-------------------------------- CAN_17_McmCan End --------------------------------------------------# 

#-------------------------------- EEPROM Start --------------------------------------------# 
#   S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/Eep_Lcfg.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/Eep.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard hwio_src/Eep_Interface.c))
#-------------------------------- EEPROM End ----------------------------------------------# 

#-------------------------------- CDD Start -----------------------------------------------#
#   S_BLACKLIST_SDC += $(notdir $(wildcard cdd_src/*.c))
#-------------------------------- CDD End -------------------------------------------------#

#-------------------------------- rtos Start ----------------------------------------------#
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/CPU_Trap_Recognition.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ErrorHook.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/Events.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_Innerloop.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_MotorControl.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_MpsVadc.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_Os.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_Outerloop_2.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/ISR_dummy.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/OSK_Tasks.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/RTOS_MW_Data.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/RTOS_TaskCounter.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/Target.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/XH_ELog.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/XH_ELogUpdate.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/XH_Interface.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/main.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/mwwdt.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard rtos/src/wdtc.c))
#-------------------------------- rtos End -------------------------------------------------#
#==================================================================================================
#                To avoid to compile file in specified directories -  bsw_startup
#==================================================================================================

#==================================================================================================
# 				Define intermediate extension as null to avoid it
#==================================================================================================
I_EXT = inf
#==================================================================================================
#                               Mains objects files to be linked without archiving.
#                   Add required files here to avoid optimization and to link to hex file.
#==================================================================================================
OBJS_sdc =  BrsMainStartup.o LldHwStartup.o FblBmHdr_Lcfg.o applvect.o Diag_Pid.o software_version.o
#==================================================================================================
#				Layers list
#==================================================================================================
# Use this if you want to use DEVELOP
# LAYERS_sdc = hal dd bsw_startup wrp mcal bsw math glue_kernel develop

# Use this if you don't want to use use DEVELOP 
LAYERS_sdc =   mcal sip hwio lldappl rtos app

#==================================================================================================
#			       Sources/headers root directory; no more than one for each layer.
#==================================================================================================
SRC_mcal        = mcal
SRC_sip         = bsw
SRC_hwio        = hwio_src
SRC_lldappl     = lld_appl_src
SRC_rtos        = rtos
SRC_app         = ../../app
#==================================================================================================
#				Visible directories
#==================================================================================================
include  product_config/sdc_hdr.mk
#==================================================================================================
#				Data dictionary bypass, definition and rename files 
#==================================================================================================
DEFS_FILES_ = 
TAB_NAME_ = 
