#exesearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,${PATH}))))
#ccmpath = $(call exesearch,ccm)
ifeq ($(OS),Windows_NT)
 $(info ========== Windows_ENV =========)
 #Add here external tool .exe
else
 $(info ========== LINUX_ENV =========)
 #Add here external tool .sh or else.
endif

IS_CUSTOMER =CUSTOMER #$(if $(ccmpath),,TRUE)
ifneq (,$(IS_CUSTOMER))
#--- Equivalent to synergy specific definitions
DELIMITER := -

SW_VERSION := L138
PROJECT = $(lastword $(subst /, ,$(CURDIR)))$(DELIMITER)$(SW_VERSION)#dz110$(DELIMITER)00_00
ECU_HW = PTP_C
NOTE = To be defined
products_co:
#	Eventual check-out command(s)
CLEAN_EXT = dd $(PP_EXT) $(AS_EXT) $(O_EXT) $(LIB_EXT) $(DEP_D_EXT) hex xsm ieee elf map s19
CLEAN_PATTERN = $(foreach d, . $(DESTS)/Output, $(addprefix $(d)/*.,$(CLEAN_EXT))) \
	$(foreach d, . $(FOCFPATH), $(addprefix $(d)/fss_btxh*.*,$(CLEAN_EXT)))
endif
include product_config/common_make.mk
