#/*==================================================================================================
#  Project	     : FORD_HPCM_ISC
#  Platform	     : TC377
#  Peripheral        : 
#  Dependencies      : 
#  File types        : 
#  Description       : 
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
#                               To avoid to compile file in specified directories -  MCAL DRIVERS              
#==================================================================================================
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Adc/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Bfx/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Can_17_McmCan/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/CanTrcv_17_V9251/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/CanTrcv_17_W9255/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Crc/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dio/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dma/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Dsadc/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Eth_17_GEthMac/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fee/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fls_17_Dmu/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/FlsLoader/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Fr_17_Eray/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Gpt/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Icu_17_TimerIp/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Lin_17_AscLin/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/mcal/Mcal_Safety/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/McalLib/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Mcu/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Ocu/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Port/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Pwm_17_GtmCcu6/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Smu/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Spi/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Uart/src/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard mcal/Wdg_17_Scu/src/*.c))

    
#==================================================================================================
#                               To avoid to compile file in specified directories - SIP                       
#==================================================================================================
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/BswM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Can/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanIf/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanNm/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanSM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CanTp/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Cmpr/cmpr.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Crc/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/CryIf/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Crypto_30_LibCv/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Csm/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Dcm/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Det/*.c)) 
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/E2E/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/EcuM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Eep/EepIO.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_applvect.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_diag.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_diag_oem.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_flio_xd2.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_flio_xd2.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_main.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_mem.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_nvpattern_oem.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_valstruct.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblAsrStubs/Mcal_WdgLib.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblAsrStubs/MemIf_Types.h))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblCw/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblCw/fbl_cw.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblSpi_InfineonQspi/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblSpi_InfineonQspi/fbl_spi_infineon_qspi.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblUpd/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblUpd/upd_main.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FiM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash/flashdrv.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash_XD2/flashdrv_xd2.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/IoHwAb/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/IpduM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Mcal_Tc3xx/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/MemIf/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Nm/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/NvM/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/PduR/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Sbc_30_Tlf35584/Sbc_30_Tlf35584.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Cert.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Crc.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Decryption.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Job.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_SeedKey.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/SecMod/Sec_Verification.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Spi/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Spi/Spi_Fbl.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/WdgIf/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Wdg_30_Sbc/*.c))
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/WrapNv/*.c)) 
    S_BLACKLIST_SDC += $(notdir $(wildcard bsw/vSecPrim/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Dem/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_flio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_fsm.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_hw.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_lbt_access.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_mio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_nvpattern.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_ramio.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Fbl/fbl_wd.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblAsrStubs/Dem.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBm/bm_main.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBm/bm_shared.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/FblBmHdr/bm_hdr.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash/FlashRom.c)) 
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/Flash_XD2/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/VStdLib/*.c))
#   S_BLACKLIST_SDC += $(notdir $(wildcard bsw/vLinkGen/*.c))

#==================================================================================================
#                To avoid to compile file in specified directories -  bsw_startup
#==================================================================================================
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BMHD_ToFbl.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BMHD_ToUpdater.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/fbl_ap.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/fbl_apdi.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/fbl_apnv.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/flashdrv_xd2_cfg.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/Spi_Fbl_Cfg.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/upd_ap.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/upd_ap.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/upd_hw_ap.c))
   S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/upd_oem_ap.c))
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/bm_ap.c))
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsHw.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsHwIntTb.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsHwStartup.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsMain.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsMainStartup.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsMain_Appl.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/BrsMain_Callout_Stubs.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/EcuM.c)
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/fbl_apwd.c))
#  S_BLACKLIST_SDC += $(notdir $(wildcard btxh_appl_src/fbl_spi_infineon_qspi_cfg.c))

#==================================================================================================
# 				Define intermediate extension as null to avoid it
#==================================================================================================
I_EXT = inf
#==================================================================================================
#                               Mains objects files to be linked without archiving.
#==================================================================================================
OBJS_sdc = BrsHwStartup.o software_version.o
#==================================================================================================
#				Layers list
#==================================================================================================
# Use this if you want to use DEVELOP
# LAYERS_sdc = hal dd bsw_startup wrp mcal sip math glue_kernel develop

# Use this if you don't want to use use DEVELOP 
LAYERS_sdc =  mcal sip btxhappl

#==================================================================================================
#			       Sources/headers root directory; no more than one for each layer.
#==================================================================================================
SRC_btxhappl    = btxh_appl_src
SRC_mcal        = mcal
SRC_sip         = bsw

#==================================================================================================
#				Visible directories
#==================================================================================================
include product_config/sdc_hdr.mk
#==================================================================================================
#				Data dictionary bypass, definition and rename files 
#==================================================================================================
DEFS_FILES_ = 
TAB_NAME_ = 
