# %name: common_make.mk %
# Developed by TechM
# (c) Copyright 2023 TechM
#
.DELETE_ON_ERROR:
.POSIX:
.SECONDEXPANSION:
.ONESHELL:
.DEFAULT_GOAL = made
ifeq (, $(filter second-expansion, $(.FEATURES)))
$(error # second-expansion special features NOT supported)
endif
ifeq (, $(filter order-only, $(.FEATURES)))
$(error # order-only special features NOT supported)
endif
ifeq (, $(filter target-specific, $(.FEATURES)))
$(error # target-specific special features NOT supported)
endif
ifneq (, $(filter all clean help products_co,$(MAKECMDGOALS)))
ifneq (1,$(words $(MAKECMDGOALS)))
$(error # 'all', 'clean', 'help' and 'products_co' targets have to be requested alone)
endif
endif
SHELL = /usr/bin/ksh
MAKEFILE := $(firstword $(MAKEFILE_LIST))
ifeq (,$(IS_CUSTOMER))
# FORD
DELIMITER := $(shell ccm delimiter)
DCM_DELIMITER := $(shell ccm dcm -show -delimiter)
# tail command filter possible 'waiting for busy' messages.
ECU_HW = $(shell ccm attribute -show ecu_hw -project $(PROJECT) | tail -n 1)
NOTE = $(shell ccm attribute -show prj_title -project $(PROJECT) | tail -n 1)
#--- ccm specialized part of targets
products_co:
	-ccm query "is_member_of('$(PROJECT)') and is_product=TRUE and \
					has_priv('static')" && ccm checkout @
clean::
# Remove obsolete attributes
	ccm attribute -delete make_macros -project ${PROJECT} >&- 2>&- || :
	product_config/dep_attr $(PROJECT)
# First update db with controlled file from wa, then align wa to db
# Then remove file that could be masked in the syncronization
# Finally reconcyle the entire main project (recurse into its subdirectories)
	ccm reconcile -update_db -recurse . && \
	ccm reconcile -consider_uncontrolled -missing_wa_file -update_wa \
		-recurse . || { echo 'Do sync the root project!' >&2; exit 1; }
endif
DELIMITER ?= \#
DCM_DELIMITER ?= ~
VERBOSE = $(addprefix -, $(filter v, $(subst --debug=,,$(MAKEFLAGS))))
PROJ_NAME := $(shell perl -e "print substr('$(PROJECT)',0,index('$(PROJECT)','$(DELIMITER)'))")
# output files Destination default path
DEST := outputs/Output
include product_config/sdc_conf.mk
include product_config/project_conf.mk
include product_config/project_option.mk
# DESTS value have to envelop default DEST (outputs) and not '.'
DESTS ?= outputs prod
ifeq (, $(filter outputs, $(DESTS)))
DESTS += outputs
DESTS:= $(strip $(DESTS))
$(info 'outputs' added to DESTS: DESTS='$(DESTS)')
endif
ifneq (, $(filter ., $(DESTS)))
DESTS := $(filter-out ., $(DESTS))
DESTS := $(strip $(DESTS))
$(info '.' removed from DESTS: DESTS='$(DESTS)')
endif
# Initial informative messages
$(info # > PROJECT = $(PROJECT))
$(info # > DEST = $(DEST))
$(info # > target(s) = $(MAKECMDGOALS))
$(info # > make option(s) = $(MAKEFLAGS))
#--- Global targets
.PHONY: all clean dist made made_fl made_so reports reports_dest
.PHONY: optional_init help c_preprocessed c_eca c_vectors products_co FORCE
all: clean | optional_init
	$(MAKE) -f $(MAKEFILE) --no-print-directory \
						$(addprefix made., $(DESTS))
	$(MAKE) -f $(MAKEFILE) --no-print-directory reports
$(DEST) $(DEST)/outputs:
	perl -e "use File::Path;File::Path::make_path q($@)"
S_LISTS = $(LAYERS:=.s_list)
MK_FILES = $(foreach d,$(DESTS),$(LAYERS:=.$d_mk))
#Clean all inclusion files
INCLS = $(LAYERS:=_incl) _incl
$(info =========== Clean All ==========)
CLEAN_FILES = $(wildcard dep make_macros $(S_LISTS) $(MK_FILES) $(INCLS) \
							$(CLEAN_PATTERN))
clean::
	$(if $(CLEAN_FILES),$(RM) $(CLEAN_FILES))
$(DEST)/$(MAKEFILE).out: | $$(@D)
# Join logical consecutive lines ('\' terminated)
# Remove unnecessary lines that could be too long for some tools
	$(MAKE) -f $(MAKEFILE) --no-print-directory DEST=$(DEST) MAKEFLAGS=nB \
		| perl -pe 's?\\$$/??;s?ddfilter.*$$/??;exit if m?^\s*ld?' \
		>| $(@)
$(DEST)/$(PROJ_NAME).so: CPPFLAGS:=
$(DEST)/$(PROJ_NAME).so: CFLAGS:=-fPIC -g -Wall -Wextra
$(DEST)/$(PROJ_NAME).so: ASFLAGS:=
$(DEST)/$(PROJ_NAME).so: LDFLAGS:=
$(DEST)/$(PROJ_NAME).so: LDLIBS:=
made_so:
	$(MAKE) -f $(MAKEFILE) --no-print-directory CC:=cc $(PROJ_NAME).so
made_fl: FL=-fl
made_fl: made
help::
	@echo " *** LIST OF MAINS ALIAS TARGETS ***"
	@echo "all: clean followed by made.<dests> and reports"
	@echo "clean: cleans-up the root project"
ifeq (,$(IS_CUSTOMER))
# FORD
	@echo "products_co: check-out all products that are in stable state"
	@echo "dist: distribution files"
endif
	@echo "made: default target, standard product files"
	@echo "made.<dest>: made with DEST=<dest>"
	@echo "made_fl: made with CDM function list"
	@echo "made_so: cc's compile $(PROJ_NAME).so"
	@echo "reports: all reports files"
	@echo "reports.<dest>: <dest> specific reports"
	@echo "cscope.out: cscope symbols cross-reference"
	@echo "c_preprocessed: preprocessed of all C sources"
	@echo "c_eca: all Extended Code Analysis"
	@echo "c_vectors: all MC/DC test vectors."
	@echo " *** IMPORTANT ARGUMENTS ***"
	@echo "DEST=$(DEST) (default)"
ifeq (,$(IS_CUSTOMER))
# FORD
	@echo "IS_CUSTOMER=1 (to check as a customer without synergy)
endif
ifeq ($(MAKECMDGOALS), $(filter-out all clean help products_co, $(MAKECMDGOALS)))
include make_macros
include dep
endif
# Check after dep has been computed
ifeq (make_macros,$(filter make_macros,$(MAKEFILE_LIST)))
ifeq (,$(filter $(DEST),$(COMPUTED_DESTS)))
$(error # DEST='$(DEST)' wasn't computed)
endif
ifneq (,$(filter-out $(CC),$(COMPUTED_CC)))
$(info # 'CC' is $(CC) but should be '$(COMPUTED_CC)')
endif
endif
ifeq (,$(IS_CUSTOMER))
# FORD
dist:: $(addprefix $(DEST)/outputs/, $(notdir $(DIST_TARGETS)))
$(DEST)/outputs/%: % | $$(@D)
	cp $(^) $(@)
endif
$(addprefix made.,$(DESTS))::
made: | optional_init
made.%::
	$(MAKE) -f $(MAKEFILE) --no-print-directory DEST=$(*) made
ifneq (,$(IS_CUSTOMER))
# Customer, add actual distribution files
override OBJS += $(wildcard $(DEST)/outputs/*.$(O_EXT))
override LIBS += $(wildcard $(DEST)/outputs/*.$(LIB_EXT))
endif
CC_ := $(subst -,_,$(CC))
ifneq (,$(I_EXT))
$(info variable I_EXT (from $(origin I_EXT)) is reserved. Deleted.)
I_EXT =
endif
XSM_EXT ?= xsm
include product_config/$(CC_).mk
# File standard extensions:
PP_EXT ?= i
O_EXT ?= o
LIB_EXT ?= a
# Disable archives if the feature is not supported
ifeq (,$(filter archives,$(.FEATURES)))
ifneq (,$(DEP_OPT))
$(info # > archive member as target unsupported)
DEP_OPT :=
endif
endif
GPATH := $(DEST)
VPATH := $(VDEP) $(GPATH)
#--- Dependencies computing
# Avoid indirectly rebuild included files (-B)
ifneq (,$(and $(findstring B,$(MAKEFLAGS)),$(wildcard make_macros),$(wildcard dep)))
$(info > dependencies aren't re-computed with 'B' flag. Use target clean in case.)
else
C_AS_EXT ?= S
AS_EXT ?= s
INC_OPT ?= -I
define DESTS_mk =
%.$(1)_mk: %.s_list %_incl | optional_init
	+$(MAKE) -f product_config/dep_cmd.mk --no-print-directory  \
						DEST=$(1) I_EXT=$(I_EXT) $$(@)
endef
$(foreach dest,$(DESTS),$(eval $(call DESTS_mk,$(dest))))
.INTERMEDIATE: $(MK_FILES) $(S_LISTS)
dep: $(MK_FILES) $(S_LISTS) make_macros | optional_init
	product_config/deps -o $(@) -e x=$(XSM_EXT) p=$(PP_EXT) S=$(C_AS_EXT) \
		s=$(AS_EXT) o=$(O_EXT) a=$(LIB_EXT) $(addprefix i=,$(I_EXT)) \
		$(VERBOSE) $(or $(strip $(MK_FILES)),/outputs/null)
# gmake don't support parallelism on archives
ifneq (,$(DEP_OPT))
	echo .NOTPARALLEL: >> $(@)
else
	echo 'ifeq (,$$(filter jobserver, $$(.FEATURES)))' >> $(@)
	echo '$$(info > jobserver special features NOT supported)' >> $(@)
	echo 'endif' >> $(@)
endif
AR_LISTING ?= $(AR) -t
#$(info ========== LINUX_ENV =========)
make_macros: $(S_LISTS) $(INCLS) product_config/CODE_EXTENSION | optional_init
	product_config/do_make_macros -c '$(DCM_DELIMITER)' -d '$(DELIMITER)' \
		-e x=$(XSM_EXT) S=$(C_AS_EXT) s=$(AS_EXT) o=$(O_EXT) \
		a=$(LIB_EXT) $(addprefix i=,$(I_EXT)) -D $(DESTS) \
		$(addprefix -b ,$(S_BLACKLIST)) -I $(INC_OPT) -n '$(NOTE)' \
		-L '$(AR_LISTING)' $(addprefix -O ,$(OBJS)) -o $(@) \
		-p '$(PROJECT)' -w '$(ECU_HW)' $(VERBOSE) $(LAYERS)

	echo COMPUTED_DESTS = $(DESTS)/Output >> $(@)
	echo COMPUTED_CC = $(CC) >> $(@)
# Layers' source list: assembly, C/assembly, C, objects, dd, a2l and xsm files
%.s_list: | optional_init
	product_config/s_list -o $(@) $(addprefix -b ,$(S_BLACKLIST)) \
	-s x=$(XSM_EXT) C=$(NAME_$(*)).c S=.$(C_AS_EXT) s=.$(AS_EXT) \
	o=.$(O_EXT) a=.$(LIB_EXT) -r '$(SRC_$(*))' $(VERBOSE)
ifdef SRC_erika

# $(SRC_erika) can be in the include paths of any source
erika.s_list $(MK_FILES): $(SRC_erika)
$(SRC_erika): product_config/system.oil $(ERIKA_FILES) | $$(@D) optional_init
	product_config/erika -o $(@) -e tools/Lauterbach/system.orti -c $(<) $(ERIKA_FILES) \
						$(ERIKAFLAGS) $(VERBOSE)
endif
%_incl: $(SRC_erika) | optional_init
# Prepare the incl file without using very long command (winzoz compatibility)
	@$(shell $(RM) $(@))
	@$(foreach d,$(HDR_$(*)),$(shell echo $(d) >> $(@)))
	product_config/incl $(addprefix -b, $(DESTS)) -I '$(INC_OPT)' $(VERBOSE) $(@)
_incl:
	echo '' > $(@)
endif
#--- Commons targets
cscope.out::
	$(shell $(RM) cscope.files)
	$(foreach f, \
		$(filter-out $(addprefix %/, $(S_BLACKLIST)), \
			$(filter %.c %.h, $(wildcard $(VDEP:=/*)))), \
		$(shell echo $f >> cscope.files))
	cscope -bkqu
	$(RM) cscope.files
	echo Interactively examine the C code with 'cscope -d'
	echo CTRL-D quit cscope
PP_FILES := $(patsubst %,$(DEST)/%.$(PP_EXT), $(ALL_C_SRC))
.INTERMEDIATE: $(PP_FILES)
c_preprocessed: $(PP_FILES)
c_eca: $(ALL_C_SRC:=.eca)
c_vectors: $(ALL_C_SRC:=.vectors)
$(DEST)/%.eca $(DEST)/%.vectors: PPFLAGS=
$(DEST)/%.eca: %.$(PP_EXT)
	t32cast eca -m32 $(T32CASTFLAGS) -o $(@) $(<)
$(DEST)/%.vectors: %.$(PP_EXT)
	t32cast vectors -m32 $(T32CASTFLAGS) -o $(@) $(<)
$(DEST)/%.c: %.$(XSM_EXT) | $$(@D)
	product_config/xsm_trans -o $(@) -i $(<) $(VERBOSE) $(XSMTRANSFLAGS)
$(DEST)/$(PROJ_NAME).cks:
$(DEST)/%.cks: %.$(XSM_EXT) | $$(@D)
	product_config/xsm_trans -o $(@) -i $(<) $(VERBOSE) $(CKSFLAGS)
$(DEST)/$(PROJ_NAME).bin:
$(DEST)/%.bin: %.$(XSM_EXT) | $$(@D)
	product_config/xsm_trans -o $(@) -i $(<) $(VERBOSE) $(BINFLAGS)
$(DEST)/$(PROJ_NAME).drs:
$(DEST)/%.drs: %.a2l | $$(@D)
	asap2drsMM $(<)
$(DEST)/$(PROJ_NAME).json:
$(DEST)/%.json: %.a2l | $$(@D)
	product_config/asam2json -o $(@) $(VERBOSE) $(ASAM2JSONFLAGS) $(<)
$(DEST)/$(PROJ_NAME).xml:
$(DEST)/%.xml: %.a2l %.elf | $$(@D)
	product_config/ehook -o $(@) -e $(*).elf $(VERBOSE) $(EHOOKFLAG) $(<)
ifdef CDM
CDM_PRE ?= elf
$(DEST)/$(PROJ_NAME).fst:
$(DEST)/$(PROJ_NAME).a2l: $(PROJ_NAME).a2i
$(DEST)/%.a2l $(DEST)/%.fst: %.$(CDM_PRE) %.dd | $$(@D)
	cd $(@D)
	$(CDM) $(CDMFLAGS) $(FL) $(*)
LAYERS_A2I := $(addprefix $(DEST)/,$(LAYERS:=.a2i))
$(DEST)/$(PROJ_NAME).a2i: $(LAYERS_A2I)
$(DEST)/%.a2i: | $$(@D)
ifeq (3,$(basename $(MAKE_VERSION)))
# make version 3.*
	cat $(or $^, /outputs/null) >| $(@)
else
# make version 4.*. The second line is an empty command
#			to let make recognize this as a recipe!
	$(file >$@,$(and $^,$(file <$^)))
	$(eval )
endif
LAYERS_DDS := $(addprefix $(DEST)/,$(LAYERS:=.dd))
$(DEST)/$(PROJ_NAME).dd: $(LAYERS_DDS)
ifeq (3,$(basename $(MAKE_VERSION)))
# make version 3.*
	cat $(or $^, /outputs/null) >| $(@)
else
# make version 4.*. The second line is an empty command
#			to let make recognize this as a recipe!
	$(file >$@,$(and $^,$(file <$^)))
	$(eval )
endif
$(DEST)/%.dd: $$(DEFS_FILES_$$*) $(TAB_BYPASS) $$(TAB_NAME_$$*) | $$(@D)
	typeset -x LOG=$(DD_LOG) && \
	typeset -x PRINT_COMMENT=$(DD_COMMENT) && \
	typeset -x DEFS_LINE='$(DD_DEFINES)' && \
	typeset -x TAB_BYPASS='$(TAB_BYPASS)' && \
	typeset -x DEFS_FILES='$(DEFS_FILES_$(*))' && \
	typeset -x TAB_NAME='$(TAB_NAME_$(*))' && \
	awk -f product_config/ddfilter.awk \
		$(or $(filter-out $(DEFS_FILES_$*) $(TAB_BYPASS) $(TAB_NAME_$*),$^),/outputs/null) \
									>| $(@)
.INTERMEDIATE: $(LAYERS_A2I) $(LAYERS_DDS)
endif
$(DEST)/PRODUCT_CONFIG.txt:
%/PRODUCT_CONFIG.txt: $(PROJ_NAME).map | $$(@D)
	product_config/PRODUCT_CONFIG -c $(CC) -m $(<) $(VERBOSE) \
						$(PRODUCT_CONFIG_FLAGS) $(@)
reports: doc_table.txt reldoc.txt $(addprefix reports.,$(DESTS))
reports.%::
	$(MAKE) -f $(MAKEFILE) --no-print-directory DEST=$(*) reports_dest
$(addprefix reports.,$(DESTS))::
reports_dest: lin.log memocc.txt
$(DEST)/lin.log: $(MAKEFILE).out FORCE | $$(@D)
	lin -p . -m $(<) -c $(CC_) -n -o $(@D) -O $(@) -z $(LINFLAGS)
$(DEST)/Output/%_lin.txt: %.c $(MAKEFILE).out | $$(@D)
	lin -p . -m $(filter $(MAKEFILE).out, $^) -c $(CC_) -n -O $(@) \
							-z $(LINFLAGS) $(<)
$(DEST)/memocc.txt $(DEST)/group.cmm: | $$(@D)
$(DEST)/memocc.txt: $(PROJ_NAME).map FORCE
	product_config/memocc_$(CC_) -o ${@} $(VERBOSE) $(MEMOCCFLAGS) $(<)
$(DEST)/group.cmm: $(PROJ_NAME).map FORCE
	product_config/group -o $(@) $(VERBOSE) $(<)
doc_table.txt::
	product_config/doc_table -o $(@) $(VERBOSE)
reldoc.txt::
	product_config/reldoc -c $(CC) -d '$(CDM)' -e '$(ECU_HW)' -s '$(ECU_SW)' \
							-o $(@) $(VERBOSE)
