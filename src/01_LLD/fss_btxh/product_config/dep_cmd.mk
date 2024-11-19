.DELETE_ON_ERROR:
.POSIX:
.SECONDEXPANSION:
.ONESHELL:
include product_config/sdc_conf.mk
include product_config/project_conf.mk
include product_config/project_option.mk
CC_ := $(subst -,_,$(CC))
include product_config/$(CC_).mk
XSM_EXT ?= xsm
O_EXT ?= o
LIB_EXT ?= a
C_AS_EXT ?= S
AS_EXT ?= s
INC_OPT ?= -I
PP_EXT ?= i
%.$(DEST)_mk:
	product_config/do_dep -o $(@) -c '$(DEP_CMD)' -d $(DEST) -I '$(INC_OPT)' \
		-i $(*)_incl -e x=$(XSM_EXT) p=$(PP_EXT) S=$(C_AS_EXT) \
		s=$(AS_EXT) o=$(O_EXT) a=$(LIB_EXT) $(addprefix i=,$(I_EXT)) \
		-S $(SYS_CC_INCL) $(addprefix -O ,$(OBJS)) $(DEP_OPT) \
		$(VERBOSE) $(*).s_list $(*)_incl
#conf: $(S_BLACKLIST) $(SRC_$(*)) $(NAME_$(*)) $(HDR_$(*))
#option: $(XSM_EXT)
#cc.mk: $(C_AS_EXT) $(AS_EXT) $(O_EXT) $(LIB_EXT) $(I_EXT) $(INC_OPT) \
	$(SYS_CC_INCL) $(DEP_OPT)
