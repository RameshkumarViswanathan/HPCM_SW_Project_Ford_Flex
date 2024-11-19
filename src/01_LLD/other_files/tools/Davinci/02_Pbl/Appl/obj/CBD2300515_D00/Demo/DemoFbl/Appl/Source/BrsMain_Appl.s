	.file	"BrsMain_Appl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BrsMain_Appl_Init,"ax",@progbits
	.align 1
	.global	BrsMain_Appl_Init
	.type	BrsMain_Appl_Init, @function
BrsMain_Appl_Init:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain_Appl.c"
	.loc 1 120 0
	ret
.LFE14:
	.size	BrsMain_Appl_Init, .-BrsMain_Appl_Init
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0
	.type	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0, @function
SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0:
.LFB15:
	.loc 1 142 0
	ret
.LFE15:
	.size	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0, .-SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0
	.align 1
	.global	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0
	.type	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0, @function
SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0:
.LFB16:
	.loc 1 152 0
	ret
.LFE16:
	.size	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0, .-SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0
	.align 1
	.global	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6
	.type	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6, @function
SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6:
.LFB17:
	.loc 1 162 0
	ret
.LFE17:
	.size	SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6, .-SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6
	.align 1
	.global	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6
	.type	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6, @function
SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6:
.LFB18:
	.loc 1 172 0
	ret
.LFE18:
	.size	SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6, .-SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6
	.align 1
	.global	SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0
	.type	SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0, @function
SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0:
.LFB19:
	.loc 1 189 0
	ret
.LFE19:
	.size	SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0, .-SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0
	.align 1
	.global	SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0
	.type	SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0, @function
SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0:
.LFB20:
	.loc 1 199 0
	ret
.LFE20:
	.size	SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0, .-SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0
	.global	FblPresencePatternArray
.section .rodata,"a",@progbits
	.type	FblPresencePatternArray, @object
	.size	FblPresencePatternArray, 4
FblPresencePatternArray:
	.byte	115
	.byte	106
	.byte	41
	.byte	62
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3ad
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain_Appl.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x15b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x17b
	.uaword	0x226
	.uleb128 0x5
	.uaword	0x20a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"BrsMain_Appl_Init"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Enter_Can_CAN_EXCLUSIVE_AREA_0"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Exit_Can_CAN_EXCLUSIVE_AREA_0"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Enter_Can_CAN_EXCLUSIVE_AREA_6"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Exit_Can_CAN_EXCLUSIVE_AREA_6"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Enter_CanIf_CANIF_EXCLUSIVE_AREA_0"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"SchM_Exit_CanIf_CANIF_EXCLUSIVE_AREA_0"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x7
	.string	"FblPresencePatternArray"
	.byte	0x1
	.byte	0x56
	.uaword	0x3ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FblPresencePatternArray
	.uleb128 0x8
	.uaword	0x216
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
