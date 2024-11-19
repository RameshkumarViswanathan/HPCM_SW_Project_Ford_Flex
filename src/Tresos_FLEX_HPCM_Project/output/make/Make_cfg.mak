#
# \file
#
# \brief AUTOSAR Make
#
# This file contains the implementation of the AUTOSAR
# module Make.
#
# \version 4.0.26
#
# \author Elektrobit Automotive GmbH, 91058 Erlangen, Germany
#
# Copyright 2005 - 2021 Elektrobit Automotive GmbH
# All rights exclusively reserved for Elektrobit Automotive GmbH,
# unless expressly agreed to otherwise.

#################################################################
# This makefile exports parameters derived from the
# project configuration into variables for make

# Only include these variables once
ifndef TRESOS2_ECU_ID

# project name in workspace
TRESOS2_PROJECT_NAME := FLEX_HPCM_Project
TRESOS2_ECU_ID       := FLEX_HPCM_Project

# target and derivate
TARGET   := TRICORE
DERIVATE := TC37XT

ifeq (,$(ENABLED_PLUGINS))
# In case enabled modules are NOT specified explicitly
# use all enabled modules (including modules, that are NOT generated)
PROJECT_MODULES := Adc Atomics Base Can Compiler Dio Dma Dsadc FlsLoader Gpt Icu Lin Make McalExt McalLib Mcu Ocu Platforms Port Pwm ResourceM Spi
else
# otherwise only use generated modules
PROJECT_MODULES := Adc Atomics Base Can Compiler Dio Dma Dsadc FlsLoader Gpt Icu Lin Make McalExt McalLib Mcu Ocu Platforms Port Pwm ResourceM Spi
endif

# add tresos2 make plugin if not yet contained in SOFTWARE_MODULES
SOFTWARE_MODULES := $(strip $(filter-out tresos2,$(SOFTWARE_MODULES)) tresos2)

# There might already modules added to SOFTWARE_MODULES. So add only what's
# not yet contained SOFTWARE_MODULES.
# Duplicated entries are removed by the sort function.
SOFTWARE_MODULES += $(sort $(filter-out $(SOFTWARE_MODULES),$(PROJECT_MODULES)))

# variables defining module versions and locations of the plugins
Adc_VARIANT   := Aurix2GAS422
Atomics_VARIANT   := TS_TxDxM1I0R0
Atomics_CORE_PATH := $(TRESOS_BASE)/plugins/Atomics_TS_TxDxM1I0R0
Base_VARIANT   := TS_TxDxM5I0R0
Base_CORE_PATH := $(TRESOS_BASE)/plugins/Base_TS_TxDxM5I0R0
Can_VARIANT   := Aurix2GAS422
Compiler_VARIANT   := TS_TxDxM1I0R0
Compiler_CORE_PATH := $(TRESOS_BASE)/plugins/Compiler_TS_TxDxM1I0R0
Dio_VARIANT   := Aurix2GAS422
Dma_VARIANT   := Aurix2GAS422
Dsadc_VARIANT   := Aurix2GAS422
FlsLoader_VARIANT   := Aurix2GAS422
Gpt_VARIANT   := Aurix2GAS422
Icu_VARIANT   := Aurix2GAS422
Lin_VARIANT   := Aurix2GAS422
Make_VARIANT   := TS_TxDxM4I0R0
Make_CORE_PATH := $(TRESOS_BASE)/plugins/Make_TS_TxDxM4I0R0
McalExt_VARIANT   := TS_T16D27M1I0R0
McalExt_CORE_PATH := $(TRESOS_BASE)/plugins/McalExt_TS_T16D27M1I0R0
McalLib_VARIANT   := Aurix2GAS422
Mcu_VARIANT   := Aurix2GAS422
Ocu_VARIANT   := Aurix2GAS422
Platforms_VARIANT   := TS_T16DxM4I0R0
Platforms_CORE_PATH := $(TRESOS_BASE)/plugins/Platforms_TS_T16DxM4I0R0
Port_VARIANT   := Aurix2GAS422
Pwm_VARIANT   := Aurix2GAS422
ResourceM_VARIANT   := Aurix2GAS422
ResourceM_CORE_PATH := $(TRESOS_BASE)/plugins/ResourceM_Aurix2GAS422
Spi_VARIANT   := Aurix2GAS422

# variables defining module generation output paths
# default output path for generated files
override GEN_OUTPUT_PATH  := $(subst \,/,$(PROJECT_ROOT)/output)
# list of all output paths of generated files
override GEN_OUTPUT_PATHS := $(subst \,/,\
 $(GEN_OUTPUT_PATH)\
)

# output path for files created by the build environment
PROJECT_OUTPUT_PATH ?= $(abspath $(GEN_OUTPUT_PATH)/..)

# for compatibility reasons we need the AUTOSAR_BASE_OUTPUT_PATH
AUTOSAR_BASE_OUTPUT_PATH ?= $(GEN_OUTPUT_PATH)
override AUTOSAR_BASE_OUTPUT_PATH := $(subst \,/,$(AUTOSAR_BASE_OUTPUT_PATH))

endif

# No Os configuration found, declare Os Vendor empty
OS_VENDOR :=
