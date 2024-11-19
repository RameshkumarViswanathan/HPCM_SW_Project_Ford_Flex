#--- List of sources' files to be excluded
S_BLACKLIST = $(S_BLACKLIST_SDC)

#====================================================================
# To avoid to compile specified file in - Gendata/src from mcal-Tresos   
#====================================================================


  S_BLACKLIST   += Can_17_McmCan_PBcfg.c
  S_BLACKLIST   += Lin_17_AscLin_PBcfg.c
  S_BLACKLIST   += Ocu_PBcfg.c
  S_BLACKLIST   += Uart_PBcfg.c
  S_BLACKLIST   += Wdg_17_Scu_PBcfg.c
#  S_BLACKLIST   += Fee_PBcfg.c
   S_BLACKLIST   += FlsLoader_Cfg.c
#  S_BLACKLIST   += Fls_17_Dmu_PBcfg.c
# S_BLACKLIST   += Adc_PBcfg.c
# S_BLACKLIST   += Dio_Lcfg.c
# S_BLACKLIST   += Dma_PBcfg.c
# S_BLACKLIST   += Dsadc_PBcfg.c
# S_BLACKLIST   += Gpt_PBcfg.c
# S_BLACKLIST   += Icu_17_TimerIp_PBcfg.c
# S_BLACKLIST   += Mcu_17_TimerIp_Cfg.c
# S_BLACKLIST   += Mcu_PBcfg.c
# S_BLACKLIST   += Port_PBcfg.c
# S_BLACKLIST   += Pwm_17_GtmCcu6_PBcfg.c
# S_BLACKLIST   += Smu_PBcfg.c
# S_BLACKLIST   += Spi_PBcfg.c
#====================================================================
# To avoid to compile specified file in - Gendata- from Vector SIP DempAppl     
#====================================================================

# S_BLACKLIST   += CanIf_Lcfg.c
# S_BLACKLIST   += CanIf_PBcfg.c
# S_BLACKLIST   += CanTp_Lcfg.c
# S_BLACKLIST   += CanTp_PBcfg.c
# S_BLACKLIST   += Can_Lcfg.c
# S_BLACKLIST   += Can_PBcfgs.c
# S_BLACKLIST   += CryIf_Cfg.c
# S_BLACKLIST   += Crypto_30_LibCv_Cfg.c
# S_BLACKLIST   += Csm_Cfg.c
# S_BLACKLIST   += Det_Cfg.c
# S_BLACKLIST   += FblBmHdr_Lcfg.c
# S_BLACKLIST   += FblBm_Lcfg.c
# S_BLACKLIST   += FblCw_Lcfg.c
# S_BLACKLIST   += FblCw_PBcfg.c
# S_BLACKLIST   += Fbl_Fbt.c
# S_BLACKLIST   += Fbl_Lbt.c
# S_BLACKLIST   += SecMPar.c
# S_BLACKLIST   += WrapNv_Cfg.c
# S_BLACKLIST   += vBrs_Lcfg.c
# S_BLACKLIST   += vLinkGen_Lcfg.c
# S_BLACKLIST   += PduR_Lcfg.c
# S_BLACKLIST   += PduR_PBcfg.c


#--- Mains objects files to be linked without archiving.

OBJS = $(OBJS_sdc) 
# OBJS = $(OBJS_sdc)


LAYERS =  gendata $(LAYERS_sdc) 


#--- Sources/headers root directory; no more than one for each layer.
SRC_gendata  = gendata





#--------------------------------------------------



include product_config/project_hdr.mk  


#--- Visible directories








