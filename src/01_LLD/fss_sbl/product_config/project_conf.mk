#--- List of sources' files to be excluded
S_BLACKLIST = $(S_BLACKLIST_SDC)

#=====================================================
# To avoid to compile specified file in - Gendata/src    
#=====================================================

#=====================================================
# To avoid to compile specified file in - Gendata     
#=====================================================
# S_BLACKLIST   += FblBmHdr_Lcfg.c
# S_BLACKLIST   += FblBm_Lcfg.c
# S_BLACKLIST   += Fbl_Lbt.c
# S_BLACKLIST   += Fbl_Fbt.c
  S_BLACKLIST   += FblCw_Lcfg.c
  S_BLACKLIST   += FblCw_PBcfg.c
  S_BLACKLIST   += SecMPar.c
# S_BLACKLIST   += vBrs_Lcfg.c
# S_BLACKLIST   += vLinkGen_Lcfg.c
  
  


#--- Mains objects files to be linked without archiving.

OBJS = $(OBJS_sdc) 
# OBJS = $(OBJS_sdc)


LAYERS =  gendata $(LAYERS_sdc) 


#--- Sources/headers root directory; no more than one for each layer.
SRC_gendata  = gendata





#--------------------------------------------------



include product_config/project_hdr.mk  


#--- Visible directories








