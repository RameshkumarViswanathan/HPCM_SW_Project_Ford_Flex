#--- flags and commands for HighTec tricore-gcc
ifdef TRICORE_GCC
SYS_CC_INCL := ${TRICORE_GCC}/tricore/include
else
ifndef SYS_CC_INCL
$(error SYS_CC_INCL undefined, perhaps TRICORE_GCC is undefined)
endif
endif
include product_config/hightec.mk
