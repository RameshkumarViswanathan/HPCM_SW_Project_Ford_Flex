########################################################################################################################
# File Name  : Makefile
# Description: Local main project Makefile
# Project    : Vector Basic Runtime System
# Module     : BrsHw for platform Infineon Aurix/AurixPlus
#              and Compiler HighTec,
#              using Vector PES MakeSupport 4.1
# Template   : This Makefile is reviewed according to Brs_Template@MakeSupport[1.01.04]
#
#-----------------------------------------------------------------------------------------------------------------------
# COPYRIGHT
#-----------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
#
#-----------------------------------------------------------------------------------------------------------------------
# REVISION HISTORY
#-----------------------------------------------------------------------------------------------------------------------
# Version   Date        Author  Description
# --------  ----------  ------  ----------------------------------------------------------------------------------------
# 01.00.00  2020-05-28  visto   Initial version based on Template for vBaseEnv 2.0
# 01.00.01  2020-06-16  vismaa  Added -eStartupEntry in LD flag
# 01.00.02  2020-06-16  visbwa  Changed to new compiler license server
# 01.00.03  2020-07-28  virrlu  Changed entry label to brsStartupEntry
# 01.00.04  2020-09-19  visrgm  Moved linker options from LDFLAGS_VECTOR_OPTIONS to LDFLAGS_VECTOR_MAKESUPPORT
# 01.01.00  2021-10-01  visjhr  HALBE-4583 Update all MakeSupport subpackages to Brs_Template 1.01.00
# 01.01.01  2021-10-21  visto   HALBE-5324 - apply Mcal default options
# 01.01.02  2021-12-14  visto   HALBE-5803 - detailed explanations to tool options added
# 01.02.00  2022-04-08  vismaa  Switch back to old compiler options (before Mcal default)
# 01.02.01  2022-11-22  visjhr  Update to Brs_Template@MakeSupport[1.01.01]
# 01.02.02  2023-01-11  visqli  Moved PROJECT_NAME to Makefile.static and included Makefile.static forwards,
#                               enabled generation of PROJECT_NAME and LINKER_COMMAND_FILE
########################################################################################################################

########################################################################################################################
# EXAMPLE CODE ONLY
#-----------------------------------------------------------------------------------------------------------------------
# This Example Code is only intended for illustrating an example of a possible BSW integration and BSW configuration.
# The Example Code has not passed any quality control measures and may be incomplete. The Example Code is neither
# intended nor qualified for use in series production. The Example Code as well as any of its modifications and/or
# implementations must be tested with diligent care and must comply with all quality requirements which are necessary
# according to the state of the art before their use.
########################################################################################################################

#------------------------------------------------------------------------------
# Static settings placed inside separate file
#------------------------------------------------------------------------------
include Makefile.static

#------------------------------------------------------------------------------
# Name of linker file
#
# If BRS_LINKER_COMMAND_FILE_POSTFIX (derived from referenced vLinGen variant
# vBRS/vBRSGeneral/vBRSVariantUsageOfvLinkGen) was generated into
# Makefile.config.generated (by vBRS Cfg5 generator), use that file.
#------------------------------------------------------------------------------
ifeq ($(BRS_LINKER_COMMAND_FILE_POSTFIX),)
LINKER_COMMAND_FILE = Source/vLinkGen_Template_$(PROJECT_NAME).ld
else
LINKER_COMMAND_FILE = Source/vLinkGen_Template_$(BRS_LINKER_COMMAND_FILE_POSTFIX).ld
endif

#------------------------------------------------------------------------------
# Define Compiler path, e.g.
#   COMPILER_BASE_WIN = D:\uti\%vendor%\%platform%\%version% (\ can be used)
#   COMPILER_BASE    := $(subst \,/,$(COMPILER_BASE_WIN)) (\ is converted to /)
#   COMPILER_BIN      = $(COMPILER_BASE)/bin
#   COMPILER_INC      = $(COMPILER_BASE)/inc
#   COMPILER_LIB      = $(COMPILER_BASE)/lib
#
# If BRS_COMPILER_PATH (vBRS/vBRSHwConfig/vBRSCompilerPath) was generated into
# Makefile.config.generated (by vBRS Cfg5 generator), use that path.
#------------------------------------------------------------------------------
ifeq ($(BRS_COMPILER_PATH),)
COMPILER_BASE_WIN = D:\uti\Hightec\TriCore\v4.9.4.1\toolchains\tricore\v4.9.4.1
else
COMPILER_BASE_WIN = $(BRS_COMPILER_PATH)
endif
COMPILER_BASE    := $(subst \,/,$(COMPILER_BASE_WIN))
COMPILER_BIN      = $(COMPILER_BASE)/bin
COMPILER_INC      = $(COMPILER_BASE)/tricore/include \
                    $(COMPILER_BASE)/tricore/include/machine

ifeq ($(DERIVATIVE_GROUP), TC2xx)
# Be aware to use the libraries of
#  lib/gcc/tricore/4.9.4/tc161/short-double and
#  tricore/lib/tc161/short-double
#  if the compiler option -fshort-double is used
COMPILER_LIB      = $(COMPILER_BASE)/lib/gcc/tricore/4.9.4/tc161 \
                    $(COMPILER_BASE)/tricore/lib/tc161
endif

ifeq ($(DERIVATIVE_GROUP), TC3xx)
# Be aware to use the libraries of
#  lib/gcc/tricore/4.9.4/tc162/short-double and
#  tricore/lib/tc162/short-double
#  if the compiler option -fshort-double is used
COMPILER_LIB      = $(COMPILER_BASE)/lib/gcc/tricore/4.9.4/tc162 \
                    $(COMPILER_BASE)/tricore/lib/tc162
endif

#------------------------------------------------------------------------------
# Build Options Selection: VECTOR / CUSTOMER
#------------------------------------------------------------------------------
ASFLAGS_SELECTOR  = VECTOR
CFLAGS_SELECTOR   = VECTOR
LDFLAGS_SELECTOR  = VECTOR

#------------------------------------------------------------------------------
# Default license server and port
#------------------------------------------------------------------------------
LICENSE_SERVER      = vistrlic7
LICENSE_SERVER_PORT = 7591

#------------------------------------------------------------------------------
# Define Emulator path
# E.g.: EMU_PATH = C:/UTI/HITOPWIN/P6811
#
# This parameter is not mandatory. It is used for some platforms, to provide
# e.g. debug connect scripts (e.g. multi within RH850).
#------------------------------------------------------------------------------
EMU_PATH =

#------------------------------------------------------------------------------
# Set $(NANT_USED) to '1', to enable the usage of NAnt support within
# Global Makefile. If this is enabled, the MakeSupport will include the
# NAnt support from an internal link and the NAnt build targets can be used.
#------------------------------------------------------------------------------
#NANT_USED = 1

#------------------------------------------------------------------------------
# Set MKVERBOSE to a various value, to enable enhanced debug output from
# MakeSupport. To disable this afterwards, set MKVERBOSE to nothing
# (comment out this line and type "set MKVERBOSE=" in command window)
#------------------------------------------------------------------------------
#MKVERBOSE = 1

#------------------------------------------------------------------------------
# Set $(BRSVINFO_USED) to 1 to enable the generation of BrsVInfo.h within the
# GenData folder by the MakeSupport.
# The BrsVInfo.h will contain e.g. kBrsCompilerVersion, to use this
# information within the embedded code.
#------------------------------------------------------------------------------
#BRSVINFO_USED = 1

#------------------------------------------------------------------------------
# Set $(USE_RESPONSE_FILE_FOR_LINKAGE) to '1' to pass object files in a response file
# to the linker instead of using the command line.
#
# Use it if you hit the limit of maximum length command line length under Windows.
#
# See e.g. the following link regarding some information on response files:
# https://gcc.gnu.org/wiki/Response_Files
#
# If you enable 'USE_RESPONSE_FILE_FOR_LINKAGE', you also need to define
# 'LDFLAGS_RESPONSE_FILE' in Makefile.static.
#------------------------------------------------------------------------------
#USE_RESPONSE_FILE_FOR_LINKAGE=1

#------------------------------------------------------------------------------
# Functions used within Assembler/Compiler/Linker options.
#
# Common functionality is encapsulated in the following functions:
# - obj2err
# - obj2lst
#
# Example:
# --list-file=$(call obj2lst,$@)
# --error-file=$(call obj2err,$@)
#
# Please have a look at Makefile_functions.mk for further detailed information.
#------------------------------------------------------------------------------
MCPU_SWITCH_TC21x = tc161
MCPU_SWITCH_TC22x = tc161
MCPU_SWITCH_TC23x = tc161
MCPU_SWITCH_TC24x = tc161
MCPU_SWITCH_TC26x = tc161
MCPU_SWITCH_TC27x = tc161
MCPU_SWITCH_TC29x = tc161

MCPU_SWITCH_TC32x = tc162
MCPU_SWITCH_TC33x = tc162
MCPU_SWITCH_TC35x = tc162
MCPU_SWITCH_TC36x = tc162
MCPU_SWITCH_TC37x = tc162
MCPU_SWITCH_TC38x = tc162
MCPU_SWITCH_TC39x = tc162

ifeq ($(MCPU_SWITCH_$(DERIVATIVE)),)
 $(error COMPILERFLAGERROR: The compiler option (-m<value>) is not defined!)
endif

#------------------------------------------------------------------------------
# Extra dependency defines
# The DEPEND tool which is normally a preprocessor
# is called with $(EXTRA_DEPENDFLAGS) and $(CPPFLAGS).
#
# The cross compiler adds its own defines which DEPEND
# doesn't know.
#
# Add cross options set by compiler and other options
# for the preprocessor here.
# e.g.: EXTRA_DEPENDFLAGS += -D__CTC__
#
# For normal build defines use $(CPPFLAGS_VECTOR_MAKESUPPORT).
#------------------------------------------------------------------------------
EXTRA_DEPENDFLAGS += -D__CTC__
FILTER_Sec_SeedKeyVendor += $(FORD_LIB_FILTER)

#------------------------------------------------------------------------------
# $(AS_ENV) is the environment necessary to run the assembler
# $(AS) defines the path to the assembler
# $(ASFLAGS_VECTOR_MAKESUPPORT) defines all assembler switches, mandatory for
#                               the Vector build environment (MakeSupport/BrsHw)
# $(ASFLAGS_VECTOR_OPTIONS) defines the Vector default assembler switches
# $(ASFLAGS_CUSTOMER_OPTIONS) defines the customer requested assembler switches
# Depending of ASFLAGS_SELECTOR, ASFLAGS_VECTOR_OPTIONS or ASFLAGS_CUSTOMER_OPTIONS
# are used together with $(ASFLAGS_VECTOR_MAKESUPPORT) for build.
#------------------------------------------------------------------------------
AS_ENV = $(CC_ENV)
AS     = $(CC)

#------------------------------------------------------------------------------
# Please add only absolutely mandatory options below
# since the -c options is used with compilation the following flags are currently not used
# assembler flags need to be specified with the compiler flags
#------------------------------------------------------------------------------
ASFLAGS_VECTOR_MAKESUPPORT = -c    \
                             -o $@ \
                             -x assembler

#------------------------------------------------------------------------------
# $(ASFLAGS_VECTOR_PREPROCESS) defines the options in preprocessing
# just before assembler starts. This flag is used only if
# AS_VECTOR_PREPROCESS (located in Makefile.static) is enabled.
#
# $(CPPFLAGS_CORE) can be added here.
#------------------------------------------------------------------------------
ASFLAGS_VECTOR_PREPROCESS =

#------------------------------------------------------------------------------
# Please add any other option below (Vector default options)
#
# Use $(ASFLAGS_VECTOR_OPTIONS) if assembler supports preprocessing by default.
# In case of assembler does not support preprocessing and preprocessing is
# enabled by $(ASFLAGS_VECTOR_PREPROCESS) in a prestep
# $(CPPFLAGS_CORE) must be set in $(ASFLAGS_VECTOR_PREPROCESS)
#------------------------------------------------------------------------------
ASFLAGS_VECTOR_OPTIONS = $(CFLAGS_VECTOR_OPTIONS) \
                        -c                        \
                        -nostartfiles             \
                        -Wa,--gdwarf2

#------------------------------------------------------------------------------
# Please enter all customer options below
#------------------------------------------------------------------------------
ASFLAGS_CUSTOMER_OPTIONS =

#------------------------------------------------------------------------------
# $(ASVERSION) defines the assembler switch for version report.
# E.g.: ASVERSION = -V
#------------------------------------------------------------------------------
ASVERSION = $(CVERSION)

#------------------------------------------------------------------------------
# $(AS_LC) defines the number of lines used for assembler version information.
# $(AS_OFF) defines the offset of lines used for assembler version information
# in BrsVinfo.h and Deliverydescription (default is 5).
#------------------------------------------------------------------------------
AS_OFF = $(CC_OFF)
AS_LC  = $(CC_LC)

#------------------------------------------------------------------------------
#------------------------- MUST be filled out ---------------------------------
# $(CC_ENV) is the environment necessary to run the compiler
# $(CC) defines the path to the C-Compiler
# $(CFLAGS_VECTOR_MAKESUPPORT) defines all compiler switches, mandatory for
#                              the Vector build environment (Makesupport/BrsHw)
# $(CFLAGS_VECTOR_OPTIONS) defines the Vector default compiler switches
# $(CFLAGS_CUSTOMER_OPTIONS) defines the customer requested compiler switches
# Depending $(CFLAGS_SELECTOR), $(CFLAGS_VECTOR_OPTIONS) or
# $(CFLAGS_CUSTOMER_OPTIONS) is used together with $(CFLAGS_VECTOR_MAKESUPPORT)
# for build.
#
#  Avoid $(OBJ_SUFFIX) to filter use $(basename $@) because
#  ECO has a preprocess using CFLAGS_xx and the target is of type source.
#------------------------------------------------------------------------------
CC_ENV  = TMPDIR="$(TEMP)" \
          RLM_LICENSE=$(LICENSE_SERVER)@$(LICENSE_SERVER_PORT)
CC      = $(COMPILER_BIN)/tricore-gcc

#------------------------------------------------------------------------------
# Please add only absolutely mandatory options below
#
#  BRS values:
#    -DBRS_COMP_$(COMPILER_MANUFACTURER)
#    -DBRS_PLATFORM_$(PLATFORM)
#
#  Avoid $(OBJ_SUFFIX) to filter. Use $(basename $@) because
#  ECO has a preprocess using CFLAGS_xx and the target is of type source.
#------------------------------------------------------------------------------
CPPFLAGS_VECTOR_MAKESUPPORT = -DBRS_PLATFORM_$(PLATFORM) \
                              -D$(PROJECT_NAME) \
                              -DBRS_COMP_$(COMPILER_MANUFACTURER)

CFLAGS_VECTOR_MAKESUPPORT = -c    \
                            -o $@ \
                            -error-file=$(ERR_PATH)/$*.$(ERR_SUFFIX) \
                            -save-temps=obj

#------------------------------------------------------------------------------
#  Add depend options here.
#  It is separated because of the option to overwrite
#  $(COMPILER_SUPPORTS_DEPEND) or have different compile without
#  path length problem in command line.
#
#  Pay attention below if $(MAKESUPPORT_POST_COMPILE_CMD) is
#  used in context of depend file creation.
#
#  Example:
#    CFLAGS_VECTOR_MAKESUPPORT    += -MMD -MF $(@:.o=.dt)
#    MAKESUPPORT_POST_COMPILE_CMD += $(SED) -Ef $(MAKESUPPORT_DIR_U)/util/fix_dos_dep_file.sed < $(@:.o=.dt) > $(@:.o=.d);
#    MAKESUPPORT_POST_COMPILE_CMD += $(RM) $(@:.o=.dt);
#------------------------------------------------------------------------------
ifeq ($(COMPILER_SUPPORTS_DEPEND),1)
  CFLAGS_VECTOR_MAKESUPPORT    += -MMD -MP -MT '$@' -MF $(basename $@).d
  MAKESUPPORT_POST_COMPILE_CMD +=

  #-----------------------------------------------------------------------------
  # If $(CC) shall create dependency file as well, fill the following variables.
  # Otherwise, 'clang' does the task without using a floating license.
  #-----------------------------------------------------------------------------
  #DEPEND = $(CC_ENV) $(CC)
  #DEPENDFLAGS =
endif

#------------------------------------------------------------------------------
#  $(REUSE_CPP_DEPEND) is set because compiler has a path length problem
#------------------------------------------------------------------------------
#REUSE_CPP_DEPEND = 1
ifeq ($(COMPILER_SUPPORTS_DEPEND)+$(REUSE_CPP_DEPEND),1+1)
  $(error Can not set both: COMPILER_SUPPORTS_DEPEND and REUSE_CPP_DEPEND
endif

#------------------------------------------------------------------------------
#  Post compile command to cleanup anything during compilation process
#
#  Calling convention:
#    $(MAKESUPPORT_POST_COMPILE_CMD,$@$<)
#------------------------------------------------------------------------------
MAKESUPPORT_POST_COMPILE_CMD +=

clean::
	@echo "CLEAN temporary compiler files"
	$(Q)$(RM) $(OBJS:.$(OBJ_SUFFIX)=.i) $(OBJS:.$(OBJ_SUFFIX)=.s)

#------------------------------------------------------------------------------
# Please add any other option below (Vector default options)
#  Avoid $(OBJ_SUFFIX) to filter use $(basename $@) because
#  ECO has a preprocess using CFLAGS_xx and the target is of type source.
#------------------------------------------------------------------------------
CFLAGS_VECTOR_OPTIONS = -m$(MCPU_SWITCH_$(DERIVATIVE)) \
                        -g                             \
                        -ffunction-sections            \
                        -fno-common                    \
                        -O1                            \
                        -fomit-frame-pointer
#--std=c99

#------------------------------------------------------------------------------
# Please enter all customer options below
#  Avoid $(OBJ_SUFFIX) to filter use $(basename $@) because
#  ECO has a preprocess using CFLAGS_xx and the target is of type source.
#------------------------------------------------------------------------------
CFLAGS_CUSTOMER_OPTIONS = -mcpu=tc37xx \
-msmall-data=8 \
-msmall-const=8 \
-fno-common \
-fno-builtin \
-fshort-double \
-DGNU \
-O2 \
-maligned-data-sections \
-Wall \
-W \
-pipe \
-gstrict-dwarf \
-gdwarf-2 \
-D__DIAGNOSTIC_ENDIAN_IS_LITTLE__ \
-alh \
-L \
-ggdb \
-std=c99 \
-ferror-numbers \
-ffreestanding \
-fno-asm \
-fgcse-sm \
-fno-merge-constants \
-fomit-frame-pointer \
-fsched-spec-load \
-fsched-spec-load-dangerous \
-fno-tree-vectorize \
-funroll-loops \
-msmall=8 \
-pedantic \
-Wextra \
-Wno-aggressive-loop-optimizations \
-Wconversion \
-Wdeprecated-declarations \
-Wformat-nonliteral \
-Wformat-security \
-Wimport \
-Wlarger-than-32767 \
-Wmaybe-uninitialized \
-Wmissing-format-attribute \
-Wmultichar \
-Wpacked \
-Wreadonly-in-writable \
-Wshadow \
-Wsign-compare \
-Wno-unused-function \
-Wwrite-strings 

#------------------------------------------------------------------------------
# $(CVERSION) defines the compiler switch for version report
# E.g.: CVERSION = -V
#------------------------------------------------------------------------------
CVERSION = -v

#------------------------------------------------------------------------------
# $(CC_LC) defines the number of lines used for compiler version information
# $(CC_OFF) defines the offset of lines used for compiler version information
# in BrsVinfo.h and Deliverydescription (default is 5)
#------------------------------------------------------------------------------
CC_OFF = 9
CC_LC  = 9

#------------------------------------------------------------------------------
#------------------------- MUST be filled out ---------------------------------
# $(CXX_ENV) is the environment necessary to run the compiler
# $(CXX) defines the path to the C-Compiler
# $(CFLAGS_VECTOR_MAKESUPPORT) defines all compiler switches, mandatory for
#                              the Vector build environment (MakeSupport/BrsHw)
# $(CXXFLAGS_VECTOR_OPTIONS) defines the Vector default compiler switches
# $(CXXFLAGS_CUSTOMER_OPTIONS) defines the customer requested compiler switches
# Depending of CXXFLAGS_SELECTOR, CXXFLAGS_VECTOR_OPTIONS or CXXFLAGS_CUSTOMER_OPTIONS
# are used together with CXXFLAGS_VECTOR_MAKESUPPORT for Build.
#------------------------------------------------------------------------------
CXX_ENV  = $(LD_ENV)
CXX      = $(COMPILER_BIN)/tricore-c++

ifeq ($(DERIVATIVE_GROUP), TC3xx)
CXX      = $(COMPILER_BIN)/g++
endif

#------------------------------------------------------------------------------
# Please add only absolutely mandatory options below
#------------------------------------------------------------------------------
CXXFLAGS_VECTOR_MAKESUPPORT = -c    \
                              -o $@ \
                              -Wa,-a=$(call obj2lst,$@)

#------------------------------------------------------------------------------
# Please add any other option below (Vector default options)
#------------------------------------------------------------------------------
CXXFLAGS_VECTOR_OPTIONS = -Wall \
                          -O0   \
                          -g3   \
                          -std=c++14

#------------------------------------------------------------------------------
# Please enter all customer options below
#------------------------------------------------------------------------------
CXXFLAGS_CUSTOMER_OPTIONS =

#------------------------------------------------------------------------------
# $(CXXVERSION) defines the compiler switch for version report
# E.g.: CXXVERSION = -V
#------------------------------------------------------------------------------
CXXVERSION = $(CVERSION)

#------------------------------------------------------------------------------
# $(CXX_LC) defines the number of lines used for compiler version information
# $(CXX_OFF) defines the offset of lines used for compiler version information
# in BrsVinfo.h and Deliverydescription (default is 5)
#------------------------------------------------------------------------------
CXX_OFF = $(CC_OFF)
CXX_LC  = $(CC_LC)

#------------------------------------------------------------------------------
#  Filter out section
#  Add flags which must be filtered out for specific files
#
#  Examples:
#    FILTER_Os=-g              # no debug option for file Os.c
#    FILTER_COMPONENT_Det=-g   # no debug option for component Det
#------------------------------------------------------------------------------
#FILTER_<file_without_extension> =
#FILTER_COMPONENT_<module_name>  =

#------------------------------------------------------------------------------
# Additional file specific compiler options
#------------------------------------------------------------------------------
#CFLAGS_<file_without_extension>   =
#CXXFLAGS_<file_without_extension> =
#CFLAGS_COMPONENT_<module_name>    =

#------------------------------------------------------------------------------
#------------------------- MUST be filled out ---------------------------------
# $(LD_ENV) is the environment necessary to run the linker
# $(LD) defines the path to the linker
# $(LDFLAGS_VECTOR_MAKESUPPORT) defines all linker switches, mandatory for the
#                               Vector build environment (MakeSupport/BrsHw)
# $(LDFLAGS_VECTOR_OPTIONS) defines the Vector default linker switches
# $(LDFLAGS_CUSTOMER_OPTIONS) defines the customer requested linker switches
# Depending on $(LDFLAGS_SELECTOR), $(LDFLAGS_VECTOR_OPTIONS) or
# $(LDFLAGS_CUSTOMER_OPTIONS)is used together with $(LDFLAGS_VECTOR_MAKESUPPORT)
# for build.
#------------------------------------------------------------------------------
LD_ENV = $(CC_ENV)
LD     = $(CC)

#------------------------------------------------------------------------------
# Please add only absolutely mandatory options below
#
#  Please use $(PROJECT_NAME).$(BINARY_SUFFIX) or $(TARGET) instead of $@ and
#  $(PROJECT_NAME) instead of $* because flags
#  are used in delivery description.
#
#  Linker script file name : $(LINKER_COMMAND_FILE)
#------------------------------------------------------------------------------
LDFLAGS_VECTOR_MAKESUPPORT = -o $(TARGET) -Wl,-Map,$(PROJECT_NAME).map,--extmap=a -T$(LINKER_COMMAND_FILE) -eStartupEntry -nostartfiles

#------------------------------------------------------------------------------
# Set $(PREPROCESS_LINKER_COMMAND_FILE) to 1 to preprocess
# linker command file. $(USER_LINKER_COMMAND_FILE) can be set manually
# but is $(PROJECT_NAME).$(LNK_SUFFIX) by default.
#------------------------------------------------------------------------------
#PREPROCESS_LINKER_COMMAND_FILE = 1

#------------------------------------------------------------------------------
#  Post link command to cleanup anything during linking process
#
#  Calling convention:
#    $(call MAKESUPPORT_POST_LINK_CMD,$@,$<)
#------------------------------------------------------------------------------
MAKESUPPORT_POST_LINK_CMD +=

#------------------------------------------------------------------------------
# Please add any other option below (Vector default options)
#
#  Please use $(PROJECT_NAME).$(BINARY_SUFFIX) or $(TARGET) instead of
#  $@ and $(PROJECT_NAME) instead of $* because flags
#  are used in delivery description.
#
#  Linker script file name : $(LINKER_COMMAND_FILE)
#------------------------------------------------------------------------------
LDFLAGS_VECTOR_OPTIONS = -Wl,--mcpu=$(MCPU_SWITCH_$(DERIVATIVE)) \
                         -Wl,--cref                              \
                         -Wl,--gc-sections                       \
                         -Wl,-n                                  \
                         -Wl,--allow-multiple-definition         \
                         -lgcc -los                              \
                         

#------------------------------------------------------------------------------
# Please enter all customer options below
#
#  Please use $(PROJECT_NAME).$(BINARY_SUFFIX) instead of $@ and
#  $(PROJECT_NAME) instead of $*, because flags
#  are used in delivery description.
#------------------------------------------------------------------------------
LDFLAGS_CUSTOMER_OPTIONS = -r \
                           --mcpu=aurix \
                           --cref \
                           --extmap=a \
                           --Map $*.map \
                           --emit-relocs\
                           --warn-orphan\
                           --warn-once \
                           --gc-sections \
                           -n \
                           --allow-multiple-definition   


#------------------------------------------------------------------------------
# Please add additional system libraries below
#
#  For some compilers, it is necessary to add additional system libraries.
#  E.g. the ARM GCC Gnu compiler may need libc for memcpy or libgcc for modulo
#
#  To add additional libraries use:
#  -lgcc  (libgcc: e.g. support for modulo operation)
#  -lc    (libc:   e.g. support for memcpy function)
#------------------------------------------------------------------------------
SYSLIBS +=

#------------------------------------------------------------------------------
# $(LDVERSION) defines the linker switch for version report
# E.g.: LDVERSION = -v
#------------------------------------------------------------------------------
LDVERSION = $(CVERSION)

#------------------------------------------------------------------------------
# $(LD_LC) defines the number of lines used for linker version information
# $(LD_OFF) defines the offset of lines used for linker version information
# in BrsVinfo.h and Delivery Description (default is 5)
#------------------------------------------------------------------------------
LD_OFF = $(CC_OFF)
LD_LC  = $(CC_LC)

#------------------------------------------------------------------------------
#------------------------- MUST be filled out if used -------------------------
# $(HEX_ENV) is the environment necessary to run the hexfile generator
# $(HEX) defines the path to the linker, e.g. $(COMPILER_BIN)/gsrec
# $(HEXFLAGS) contains options for HEX tool, e.g. -nos5 -skip .tdata $< -o $@
#------------------------------------------------------------------------------
#HEX_ENV  = $(CC_ENV)
HEX      = $(COMPILER_BIN)/tricore-objcopy.exe

HEXFLAGS = $(PROJECT_NAME).$(BINARY_SUFFIX) -O ihex $@

#------------------------------------------------------------------------------
#------------------------- MUST be filled out if used -------------------------
# $(AR_ENV) is the environment necessary to run the librarian
# $(AR) defines the path to the C-librarian
# $(ARFLAGS) defines all librarian switches
#
# Don't add $@. It is added in rule because AR rule is dynamically generated.
#------------------------------------------------------------------------------
AR_ENV = $(LD_ENV)
AR     = $(COMPILER_BIN)/tricore-ar

ARFLAGS = -rvsc

#------------------------------------------------------------------------------
# $(ARVERSION) defines the archiver switch for version report
# E.g.: ARVERSION = -v
#------------------------------------------------------------------------------
ARVERSION = -V

#------------------------------------------------------------------------------
# $(AR_LC) defines the number of lines used for librarian version information
# $(AR_OFF) defines the offset of lines used for archiver version information
# in BrsVinfo.h
#------------------------------------------------------------------------------
AR_OFF = 1
AR_LC  = 1

#------------------------------------------------------------------------------
# Additional includes essentially for compilation
#------------------------------------------------------------------------------
ADDITIONAL_INCLUDES +=

#------------------------------------------------------------------------------
# Additional objects essentially for linking
# E.g.: ADDITIONAL_OBJECTS = $(OBJ_PATH)/myobject.$(OBJ_SUFFIX)
#------------------------------------------------------------------------------
ADDITIONAL_OBJECTS +=

#------------------------------------------------------------------------------
# List of assembler source files
# E.g.: ASM_SOURCES = source/startup.$(ASM_SUFFIX)
#------------------------------------------------------------------------------
ASM_SOURCES +=

#------------------------------------------------------------------------------
# Add Startup code to application source list
# E.g.: APP_SOURCE_LST += source/startup.c
#------------------------------------------------------------------------------
APP_SOURCE_LST +=

#------------------------------------------------------------------------------
# Check if all necessary variables are set
# (Checks that are not possible to be performed within Makefile.static)
#------------------------------------------------------------------------------

###############################################################################
######### DO NOT remove these lines from the end of the Makefile!!! ###########
###############################################################################

#------------------------------------------------------------------------------
# Include the main makefile where all the targets are defined
#------------------------------------------------------------------------------
include $(MAKESUPPORT_DIR)/Global.Makefile.target.$(VERSION).mk

# End of Makefile
