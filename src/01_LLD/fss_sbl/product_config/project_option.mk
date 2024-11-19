##    project_option.mk
# Description: macro definition platform specific
DESTS = outputs
optional_init::
# test compiler version
	tricore-gcc --version | grep v4.9.4.1 > /dev/null

# Run only during Release ./build.sh made_release
made_release:
	@mkdir -p build_rel_inc
	@mkdir -p build_rel_src
	@find ./ -name '*.h' -exec cp -r '{}' 'build_rel_inc' ';'
	@find ./ -name '*.c' -exec cp -r '{}' 'build_rel_src' ';'

 

# Clean Release folders ./build.sh made_release_clean
made_release_clean:
	@rm -rf build_rel_inc
	@rm -rf build_rel_src


#--- Definition of CC and CC_TARGET: compiler name and target selection.
CC = tricore-gcc
CC_TARGET = tc37xx

ifneq ($(DEBUG_ENABLE),)
EXTRA_DEF = -D$(DEBUG_ENABLE)
endif

SOFTWARE_VERSION := "dz110B1CBU210_1"

#--- Definition of CPPFLAGS: preprocessor options.
# N.B.: Do not use symbol '
CPP_STD =	-DPROJ_NAME_STRING=\""$(PROJ_NAME)"\" \
		-DPROD_FAMILY_STRING=\""$(FAMILY)"\" \
		-DFAMILY_STRING=\""$(FAMILY_CHAR)"\" \
		-DHW_ECU_STRING=\""$(ECU_HW)"\" \
		-DSW_ECU_STRING=\""$(ECU_SW)\"" \
		-DNOTE_STRING=\""$(NOTE)"\" \
		-DVERSION_SW_STRING=\""$(VERSION_SW_$(DEST))"\" \
                #CPPFLAGS_dev = -DDEVELOP $(EXTRA_DEF)
CPPFLAGS_dev = -DNDEBUG
CPPFLAGS := $(CPP_STD) $(CPPFLAGS_$(DEST)) -mcpu=$(CC_TARGET)

CPPFLAGS += -DSOFTWARE_VERSION=\""$(SOFTWARE_VERSION)"\"


#CPPFLAGS := $(CPP_STD) -DSW_PROJ_VERSION_STRING=\""$(SW_PROJ_VERSION)"\" $(CPPFLAGS_$(DEST)) -mcpu=$(CC_TARGET)
# -pedantic -Wall -Wundef -std=c99
#CPPFLAGS+= -I/opt/case/hightec/toolchains/tricore/v4.9.4.0/tricore/include/machine

#-------  InternalServer  --------
CPPFLAGS += -I/ToolChain/gnutri_v4.9.4.1-11fcedf-lin64/tricore/include/machine
##-------  CloudServer  --------
#CPPFLAGS += -I/HighTecCompiler/tricore/include/machine


# Uncomment if you want to use DEVELOP
# CPPFLAGS_dev = -DDEVELOP -DDEVELOP_TEST_IS_PRESENT

CPPFLAGS += $(CPPFLAGS_dev) -DBRS_TIMEBASE_CLOCK=300 -DBRS_EVA_BOARD_CUSTOMER_HARDWARE -DBRS_COMP_GCCHIGHTEC -DAUTOSAR_IS_PRESENT -DNO_BOOT_IS_PRESENT -DDemoUpd \
                            -D__HIGHTEC__ -D_GNU_C_TRICORE_=1 -D_HIGHTEC_C_TRICORE_ -D_HIGHTEC_COMPILER
 
 
# Optimization Options of compiler (tricore-gcc):
# CFLAGS_FILE = product_config/CFLAGS_tricore_gcc_b.txt
# CFLAGS = @$(CFLAGS_FILE)
CFLAGS = \
 -mtc162 \
 -g3 \
 -ffunction-sections \
 -fno-common \
 --std=c99 \
 -O1 \
 -fomit-frame-pointer


# -- Optimization Options of assembler (tricore-as):
ASFLAGS = \
  -mtc162
# --gdwarf2
# -fomit-frame-pointer
# -c -nostartfiles -Wa,
# -g \
# -ffunction-sections \
# -fno-common \
# --std=c99 \
# -O1 \


# Changed as per FORD Inverter Req 
# -- Optimization Options of linker (tricore-ld):
LDFLAGS = \
  --mcpu=tc162 \
  --cref \
  --gc-sections \
  -n \
  --allow-multiple-definition \
  -L$(wildcard ${TRICORE_GCC}/lib/gcc/tricore/*/tc162) \
  -T product_config/hightec_main.ld \
  --extmap=a \
  --emit-relocs\
  --warn-orphan\
  --warn-once \
  --relax-24rel
# -lgcc
# -los

LDLIBS = -lgcc



#--- Definition of XSMFLAGS and XSMFLAGS_2: optional flags to produce xsm file
XSMFLAGS = 
XSMFLAGS_2 = 

#--- Definition of MEMOCCFLAGS: memocc options for .map.txt
MEMOCCFLAGS = -m -l product_config/hightec_main.ld

#--- Definition of XSMTRANSFLAGS: xsm_trans options for .xsm.c
XSMTRANSFLAGS = -t $(CC)

#--- Definition of CKSFLAGS: xsm_trans options for .xsm.cks
CKSFLAGS = -t S -c

#--- Definition of BINFLAGS: xsm_trans options for .xsm.bin
BINFLAGS = -t B -c -x

#--- Definition of LINFLAGS: lin options
LINFLAGS = -@product_config/lin.txt

#forces the update of the content of product_tags.h
product_tags_upd := $(shell perl addEpk.pl)


$(PROJ_NAME).elf: hightec_main.ld 

#--- made target
made: $(PROJ_NAME).xsm

#--- Lakator generation target
hightec_main.ld:  sbl_appl_src/vLinkGen_Template_DemoUpd.ld product_config/project_option.mk
	$(CC) -E -P -C -xc $(CPPFLAGS) sbl_appl_src/vLinkGen_Template_DemoUpd.ld -o product_config/hightec_main.ld -I ./gendata

#--- Eventual platform specialization
$(DEST)/software_version.o $(DEST)/software_version.s $(DEST)/software_version.i: FORCE
FORCE:         

#--- No optimization target. Only for single .c file. ONLY FOR DEBUG!!!!
NO_OPT_SRC=Can
NO_OPT_FLAGS=-O0
NO_OPT_LAYER=sip
no_opt: $(NO_OPT_SRC).c
	$(CC) $(<) $(CPPFLAGS) $(CFLAGS) $(NO_OPT_FLAGS) @$(NO_OPT_LAYER)_incl -S -o dev/$(NO_OPT_SRC).s
	$(AS) $(ASFLAGS) -o dev/$(NO_OPT_SRC).o dev/$(NO_OPT_SRC).s
	$(AR) -rc dev/$(NO_OPT_LAYER).a dev/$(NO_OPT_SRC).o
	$(RM) dev/$(NO_OPT_SRC).s dev/$(NO_OPT_SRC).o
	$(LD) $(LDFLAGS) $(addprefix dev/, $(OBJS)) \
	--start-group $(addprefix dev/, $(LIBS)) $(EXTRA_LIB) \
	$(LDLIBS) --end-group -Map=$(PROJ_NAME).map -o dev/$(PROJ_NAME).elf
	dos2unix dev/$(PROJ_NAME).map
