	.file	"EcuM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_Init,"ax",@progbits
	.align 1
	.global	EcuM_Init
	.type	EcuM_Init, @function
EcuM_Init:
.LFB0:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/EcuM.c"
	.loc 1 74 0
	.loc 1 77 0
	call	FblMain
.LVL0:
	ret
.LFE0:
	.size	EcuM_Init, .-EcuM_Init
.section .text.EcuM_StartupTwo,"ax",@progbits
	.align 1
	.global	EcuM_StartupTwo
	.type	EcuM_StartupTwo, @function
EcuM_StartupTwo:
.LFB1:
	.loc 1 81 0
	ret
.LFE1:
	.size	EcuM_StartupTwo, .-EcuM_StartupTwo
.section .text.EcuM_Shutdown,"ax",@progbits
	.align 1
	.global	EcuM_Shutdown
	.type	EcuM_Shutdown, @function
EcuM_Shutdown:
.LFB2:
	.loc 1 86 0
	ret
.LFE2:
	.size	EcuM_Shutdown, .-EcuM_Shutdown
.section .text.EcuM_BswErrorHook,"ax",@progbits
	.align 1
	.global	EcuM_BswErrorHook
	.type	EcuM_BswErrorHook, @function
EcuM_BswErrorHook:
.LFB3:
	.loc 1 90 0
.LVL1:
	ret
.LFE3:
	.size	EcuM_BswErrorHook, .-EcuM_BswErrorHook
.section .text.EcuM_CheckWakeup,"ax",@progbits
	.align 1
	.global	EcuM_CheckWakeup
	.type	EcuM_CheckWakeup, @function
EcuM_CheckWakeup:
.LFB4:
	.loc 1 97 0
.LVL2:
	ret
.LFE4:
	.size	EcuM_CheckWakeup, .-EcuM_CheckWakeup
.section .text.EcuM_GeneratorCompatibilityError,"ax",@progbits
	.align 1
	.global	EcuM_GeneratorCompatibilityError
	.type	EcuM_GeneratorCompatibilityError, @function
EcuM_GeneratorCompatibilityError:
.LFB5:
	.loc 1 104 0
.LVL3:
	ret
.LFE5:
	.size	EcuM_GeneratorCompatibilityError, .-EcuM_GeneratorCompatibilityError
.section .text.EcuM_SetWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_SetWakeupEvent
	.type	EcuM_SetWakeupEvent, @function
EcuM_SetWakeupEvent:
.LFB6:
	.loc 1 111 0
.LVL4:
	ret
.LFE6:
	.size	EcuM_SetWakeupEvent, .-EcuM_SetWakeupEvent
.section .text.EcuM_ValidationWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_ValidationWakeupEvent
	.type	EcuM_ValidationWakeupEvent, @function
EcuM_ValidationWakeupEvent:
.LFB7:
	.loc 1 118 0
.LVL5:
	ret
.LFE7:
	.size	EcuM_ValidationWakeupEvent, .-EcuM_ValidationWakeupEvent
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "Include/EcuM_Generated_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3ec
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/EcuM.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
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
	.uaword	0x151
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x199
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1c9
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
	.uleb128 0x3
	.string	"EcuM_WakeupSourceType"
	.byte	0x3
	.byte	0x45
	.uaword	0x1bb
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_Init"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x261
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x3e1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"EcuM_StartupTwo"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"EcuM_Shutdown"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_BswErrorHook"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e4
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x59
	.uaword	0x18b
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"errorId"
	.byte	0x1
	.byte	0x59
	.uaword	0x171
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_CheckWakeup"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x317
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x60
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_GeneratorCompatibilityError"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x36e
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x67
	.uaword	0x18b
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"instanceId"
	.byte	0x1
	.byte	0x67
	.uaword	0x171
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_SetWakeupEvent"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a4
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6e
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"EcuM_ValidationWakeupEvent"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3e1
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x75
	.uaword	0x21c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"FblMain"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"wakeupSource"
.LASF0:
	.string	"moduleId"
	.extern	FblMain,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
