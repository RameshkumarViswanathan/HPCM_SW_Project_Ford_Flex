	.file	"Det.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	Det_Init
	.type	Det_Init, @function
Det_Init:
.LFB1:
	.file 1 "../../../../CBD2300515_D00/BSW/Det/Det.c"
	.loc 1 456 0
.LVL0:
	.loc 1 519 0
	mov	%d15, 1
	movh.a	%a15, hi:detModuleInit
	st.b	[%a15] lo:detModuleInit, %d15
	ret
.LFE1:
	.size	Det_Init, .-Det_Init
	.align 1
	.global	Det_Start
	.type	Det_Start, @function
Det_Start:
.LFB2:
	.loc 1 531 0
	ret
.LFE2:
	.size	Det_Start, .-Det_Start
	.align 1
	.global	Det_InitMemory
	.type	Det_InitMemory, @function
Det_InitMemory:
.LFB3:
	.loc 1 543 0
	.loc 1 544 0
	mov	%d15, 0
	movh.a	%a15, hi:detModuleInit
	st.b	[%a15] lo:detModuleInit, %d15
	ret
.LFE3:
	.size	Det_InitMemory, .-Det_InitMemory
	.align 1
	.global	Det_ReportError
	.type	Det_ReportError, @function
Det_ReportError:
.LFB4:
	.loc 1 567 0
.LVL1:
	.loc 1 599 0
	movh.a	%a15, hi:detModuleInit
	ld.bu	%d15, [%a15] lo:detModuleInit
	jne	%d15, 1, .L8
	j	.L5
.LVL2:
.L7:
.L9:
	j	.L9
.LVL3:
.L5:
	.loc 1 617 0
	movh.a	%a15, hi:Det_ErrorHookTable
	ld.a	%a15, [%a15] lo:Det_ErrorHookTable
	calli	%a15
.LVL4:
	.loc 1 634 0
	jz	%d2, .L7
.LVL5:
.L8:
	.loc 1 681 0
	mov	%d2, 0
	ret
.LFE4:
	.size	Det_ReportError, .-Det_ReportError
	.align 1
	.global	Det_ReportRuntimeError
	.type	Det_ReportRuntimeError, @function
Det_ReportRuntimeError:
.LFB5:
	.loc 1 701 0
.LVL6:
	.loc 1 730 0
	movh.a	%a15, hi:detModuleInit
	ld.bu	%d15, [%a15] lo:detModuleInit
	jne	%d15, 1, .L13
.LVL7:
	.loc 1 748 0
	movh.a	%a15, hi:Det_RuntimeErrorCalloutTable
	ld.a	%a15, [%a15] lo:Det_RuntimeErrorCalloutTable
	calli	%a15
.LVL8:
.L13:
	.loc 1 784 0
	mov	%d2, 0
	ret
.LFE5:
	.size	Det_ReportRuntimeError, .-Det_ReportRuntimeError
	.align 1
	.global	Det_ReportTransientFault
	.type	Det_ReportTransientFault, @function
Det_ReportTransientFault:
.LFB6:
	.loc 1 804 0
.LVL9:
	.loc 1 833 0
	movh.a	%a15, hi:detModuleInit
	ld.bu	%d15, [%a15] lo:detModuleInit
	jeq	%d15, 1, .L15
	.loc 1 806 0
	mov	%d2, 0
	ret
.L15:
.LVL10:
	.loc 1 851 0
	movh.a	%a15, hi:Det_TransientFaultCalloutTable
	ld.a	%a15, [%a15] lo:Det_TransientFaultCalloutTable
	calli	%a15
.LVL11:
	.loc 1 886 0
	ret
.LFE6:
	.size	Det_ReportTransientFault, .-Det_ReportTransientFault
	.local	detModuleInit
.section .bss,"aw",@nobits
	.align 0
	.type		 detModuleInit,@object
	.size		 detModuleInit,1
detModuleInit:
	.space	1
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/Std_Types.h"
	.file 4 "GenData/Det_Cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5fe
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Det/Det.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x150
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x150
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x198
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"uint8_least"
	.byte	0x2
	.byte	0x6f
	.uaword	0x150
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x78
	.uaword	0x170
	.uleb128 0x4
	.string	"Det_CalloutTableType"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x253
	.uleb128 0x5
	.byte	0x4
	.uaword	0x259
	.uleb128 0x6
	.byte	0x1
	.uaword	0x220
	.uaword	0x278
	.uleb128 0x7
	.uaword	0x18a
	.uleb128 0x7
	.uaword	0x170
	.uleb128 0x7
	.uaword	0x170
	.uleb128 0x7
	.uaword	0x170
	.byte	0
	.uleb128 0x8
	.string	"sDet_PCConfigType"
	.byte	0x1
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x2b3
	.uleb128 0x9
	.string	"Det_PCConfigNeverUsed"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x170
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Det_PCConfigType"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x278
	.uleb128 0x4
	.string	"Det_ConfigType"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x2b3
	.uleb128 0xa
	.byte	0x1
	.string	"Det_Init"
	.byte	0x1
	.uahalf	0x1c7
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x316
	.uleb128 0xb
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x316
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xc
	.uaword	0x31b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x321
	.uleb128 0xc
	.uaword	0x2cc
	.uleb128 0xd
	.byte	0x1
	.string	"Det_Start"
	.byte	0x1
	.uahalf	0x212
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"Det_InitMemory"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xe
	.string	"Det_EndlessLoop"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x1
	.uahalf	0x236
	.byte	0x1
	.uaword	0x220
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x40d
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x236
	.uaword	0x18a
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x236
	.uaword	0x170
	.uaword	.LLST1
	.uleb128 0x11
	.string	"ApiId"
	.byte	0x1
	.uahalf	0x236
	.uaword	0x170
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x236
	.uaword	0x170
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x239
	.uaword	0x220
	.uaword	.LLST4
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x1cf
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	.LVL4
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Det_ReportRuntimeError"
	.byte	0x1
	.uahalf	0x2bc
	.byte	0x1
	.uaword	0x220
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4aa
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x18a
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x170
	.uaword	.LLST7
	.uleb128 0x11
	.string	"ApiId"
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x170
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x170
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2bf
	.uaword	0x220
	.uaword	.LLST10
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0x1cf
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	.LVL8
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Det_ReportTransientFault"
	.byte	0x1
	.uahalf	0x323
	.byte	0x1
	.uaword	0x220
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x549
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x323
	.uaword	0x18a
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x323
	.uaword	0x170
	.uaword	.LLST13
	.uleb128 0x11
	.string	"ApiId"
	.byte	0x1
	.uahalf	0x323
	.uaword	0x170
	.uaword	.LLST14
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x323
	.uaword	0x170
	.uaword	.LLST15
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x326
	.uaword	0x220
	.uaword	.LLST16
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.uahalf	0x327
	.uaword	0x1cf
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	.LVL11
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.string	"detModuleInit"
	.byte	0x1
	.byte	0x83
	.uaword	0x564
	.byte	0x5
	.byte	0x3
	.uaword	detModuleInit
	.uleb128 0x16
	.uaword	0x141
	.uleb128 0x17
	.uaword	0x236
	.uaword	0x579
	.uleb128 0x18
	.uaword	0x579
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x19
	.string	"Det_ErrorHookTable"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x5a2
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x569
	.uleb128 0x19
	.string	"Det_RuntimeErrorCalloutTable"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x5ce
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x569
	.uleb128 0x19
	.string	"Det_TransientFaultCalloutTable"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x5fc
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x569
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL4-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL4-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"ModuleId"
.LASF1:
	.string	"InstanceId"
.LASF2:
	.string	"ErrorId"
.LASF3:
	.string	"calloutReturn"
	.extern	Det_TransientFaultCalloutTable,STT_OBJECT,4
	.extern	Det_RuntimeErrorCalloutTable,STT_OBJECT,4
	.extern	Det_ErrorHookTable,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
