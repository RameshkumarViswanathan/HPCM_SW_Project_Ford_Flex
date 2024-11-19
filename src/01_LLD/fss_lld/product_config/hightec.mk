#--- flags and commands for HighTec compilers
AS := $(subst -gcc,-as,$(CC))
AR := $(subst -gcc,-ar,$(CC))
OBJCOPY :=  $(subst -gcc,-objcopy,$(CC))
#----------S19 File Generation Flag -------------
STRIPFLAGS := --strip-all --srec-forceS3 --srec-len 16 --set-start 0x80000000 \
				--remove-section .FlashDrvSection --remove-section .MagicFlagSection \
				--remove-section .CSA_CORE* --remove-section .bss* --remove-section .STACK_C* \
				--remove-section .debug_* --remove-section .comment --remove-section .version_info
#----------Final Output Compiled Files Path -------------
FOCFPATH := ../../01_LLD/outputs/

CPPFLAGS += -I$(SYS_CC_INCL) -pass-exit-codes
ASFLAGS += @$($(*F)_LAYER)_incl 

#--- Dependency command and options
INC_OPT = -I
DEP_CMD = $(CC) $(CPPFLAGS) @$(*F)_incl $(DEP_CMD_FLAGS) -MM
DEP_OPT = -A

ifneq (,$(filter -imacros,$(CPPFLAGS) $(CFLAGS)))
$(info # '-imacros <file>' in CPPFLAGS or CFLAGS. Dependencies can be wrong)
endif

#--- Rules
$(DEST)/$(PROJ_NAME).$(XSM_EXT) $(DEST)/$(PROJ_NAME).hex:
$(DEST)/%.hex: %.elf | $$(@D)
	$(OBJCOPY) -O ihex $(<) $(@)
	dos2unix $(@)
$(DEST)/%.$(XSM_EXT): %.elf | $$(@D)
ifndef XSMFLAGS_2
	$(OBJCOPY) -O srec $(XSMFLAGS) $(<) $(@)
	#--- Create .hex .s19 File
	$(OBJCOPY) -O ihex $(XSMFLAGS) $(<) $(DEST)/$(PROJ_NAME).hex
#	$(OBJCOPY) -O srec $(XSMFLAGS) $(@) $(DEST)/$(PROJ_NAME).s19
	$(OBJCOPY) $(STRIPFLAGS) -O srec $(XSMFLAGS) $(<) $(DEST)/$(PROJ_NAME).s19
	    #----------Move files to Final Output Compiled Files Path -------------
	@cp outputs/Output/*.elf $(FOCFPATH)
	@cp outputs/Output/*.hex $(FOCFPATH)
	@cp outputs/Output/*.s19 $(FOCFPATH)
	@cp outputs/Output/*.xsm $(FOCFPATH)
	@cp outputs/Output/*.map $(FOCFPATH)
#   @cp outputs/Output/*.a $(FOCFPATH)
	dos2unix $(@)
else
	mkfifo $(@).pipe
	product_config/xsm_trans $(XSMFLAGS_2) -i $(@).pipe -o $(@) &
	$(OBJCOPY) -O srec $(XSMFLAGS) $(<) $(@).pipe
	$(RM) $(@).pipe
endif
ifeq (,$(IS_CUSTOMER))
# elf and distribution compiled files
STRIPFLAGS2 ?= --error-numbers --strip-all --strip-unneeded -x -X
$(DEST)/outputs/%.elf: $$(@F) | $$(@D)
	tricore-strip $(STRIPFLAGS2) -o $(@) $(<)
STRIPFLAGS ?= --error-numbers --strip-debug --strip-unneeded -x -X
$(DEST)/outputs/%.a $(DEST)/outputs/%.o: $$(@F) | $$(@D)
	tricore-strip $(STRIPFLAGS) -o $(@) $(<)
endif
$(DEST)/$(PROJ_NAME).o $(DEST)/$(PROJ_NAME).elf $(DEST)/$(PROJ_NAME).map: \
						$(OBJS) $(LIBS) $(EXTRA_LIB)
$(DEST)/$(PROJ_NAME).o: LDFLAGS += -r --core=CPU$(CORE_N)
ifeq ($(LD),ld)
LD := $(subst -gcc,-ld,$(CC))
define LOADER_O =
	$(LD) $(LDFLAGS) $(filter %.o, $^) \
	--start-group $(filter %.a, $^) $(LDLIBS) --end-group \
	-Map=$(basename $@).map -o $(basename S@).o
endef
define LOADER =
	$(LD) $(LDFLAGS) $(filter %.o, $^) \
	--start-group $(filter %.a, $^) $(LDLIBS) --end-group \
	-Map=$(basename $@).map -o $(basename $@).elf
endef
else
ifneq ($(LD),$(CC))
$(error LD defined as '$(LD)')
endif
ifndef CC_TARGET
$(error CC_TARGET isn't defined)
endif
ifneq ($(filter-out -%,$(LDFLAGS)),)
$(info suspicious LDFLAGS option(s) "$(filter-out -%,$(LDFLAGS))")
endif
LDPREFIX := -Wl,
# Add LDPREFIX to any option but supervisor's ones
LDFLAGS_CC = $(shell echo $(LDFLAGS) | perl -pe 's/-(?!T|nocrt0|nostartfiles|mcpu|-script)\S*/$(LDPREFIX)$$&/g')
define LOADER_O =
	$(CC) -mcpu=$(CC_TARGET) $(LDFLAGS_CC) $(filter %.o, $^) \
	$(LDPREFIX)--start-group $(filter %.a, $^) \
	$(addprefix $(LDPREFIX),$(LDLIBS) --end-group -Map=$(basename $@).map) \
	-o $(basename $@).o
endef
define LOADER =
	$(CC) -mcpu=$(CC_TARGET) $(LDFLAGS_CC) $(filter %.o, $^) \
	$(LDPREFIX)--start-group $(filter %.a, $^) \
	$(addprefix $(LDPREFIX),$(LDLIBS) --end-group -Map=$(basename $@).map) \
	-o $(basename $@).elf
endef
endif
$(DEST)/$(PROJ_NAME).o: | $$(@D)
	$(LOADER_O)
$(DEST)/%.elf $(DEST)/%.map: | $$(@D)
	$(LOADER)
$(DEST)/%.a: | $$(@D)
	$(eval )
($(DEST)/%.o): %.c | $$(@D)
	$(CC) $(<) $(CPPFLAGS) $(CFLAGS) @$($(*F)_LAYER)_incl -S \
							-o $(basename $%).s
	$(AS) $(ASFLAGS) -o $(%) $(basename $%).s
	$(AR) -rc $(@) $(%)
	$(RM) $(basename $%).s $(%)
($(DEST)/%.o): %.S | $$(@D)
	$(CC) $(<) $(CPPFLAGS) @$($(*F)_LAYER)_incl -E |$(AS) $(ASFLAGS) -o $(%)
	$(AR) -rc $(@) $(%)
	$(RM) $(%)
($(DEST)/%.o): %.s | $$(@D)
	$(AS) $(ASFLAGS) -o $(%) $(<)
	$(AR) -rc $(@) $(%)
	$(RM) $(%)
($(DEST)/%.o): %.o | $$(@D)
	$(AR) -rc $(@) $(<)
$(DEST)/%.o: %.c | $$(@D)
	$(CC) $(<) $(CPPFLAGS) $(CFLAGS) @$($(*F)_LAYER)_incl -S \
							-o $(basename $@).s
	$(AS) $(ASFLAGS) -o $(@) $(basename $@).s
	$(RM) $(basename $@).s
$(DEST)/%.o: %.S | $$(@D)
	$(CC) $(<) $(CPPFLAGS) @$($(*F)_LAYER)_incl -E |$(AS) $(ASFLAGS) -o $(@)
$(DEST)/%.o: %.s | $$(@D)
	$(AS) $(ASFLAGS) -o $(@) $(<)
$(DEST)/%.s: %.c | $$(@D)
	$(CC) $(<) $(CPPFLAGS) $(CFLAGS) @$($(*F)_LAYER)_incl -fverbose-asm -S \
								-o $(@)
PPFLAGS = -dD
$(DEST)/%.i: %.c | $$(@D)
	$(CC) $(<) $(CPPFLAGS) @$($(*F)_LAYER)_incl -C $(PPFLAGS) -E -o $(@)
$(DEST)/%.i: %.S | $$(@D)
	$(CC) $(<) $(CPPFLAGS) @$($(*F)_LAYER)_incl -C $(PPFLAGS) -E -o $(@)
