	.file	"BrsMain.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BrsMainInit,"ax",@progbits
	.align 1
	.global	BrsMainInit
	.type	BrsMainInit, @function
BrsMainInit:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain.c"
	.loc 1 232 0
	.loc 1 237 0
	call	BrsMain_Appl_Init
.LVL0:
	.loc 1 256 0
	call	BrsHwPortInitPowerOn
.LVL1:
	.loc 1 261 0
	call	BrsHwDisableEccErrorReporting
.LVL2:
	ret
.LFE14:
	.size	BrsMainInit, .-BrsMainInit
.section .text.RamCodeSection,"ax",@progbits
	.align 1
	.global	BrsMainExceptionHandler
	.type	BrsMainExceptionHandler, @function
BrsMainExceptionHandler:
.LFB15:
	.loc 1 684 0
.LVL3:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 704 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
.L3:
	.loc 1 710 0 discriminator 1
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L3
	.loc 1 718 0
	ret
.LFE15:
	.size	BrsMainExceptionHandler, .-BrsMainExceptionHandler
.section .text.BrsMainGetResetReason,"ax",@progbits
	.align 1
	.global	BrsMainGetResetReason
	.type	BrsMainGetResetReason, @function
BrsMainGetResetReason:
.LFB16:
	.loc 1 741 0
	.loc 1 743 0
	movh.a	%a15, hi:brsMain_ResetReason
	ld.bu	%d2, [%a15] lo:brsMain_ResetReason
	ret
.LFE16:
	.size	BrsMainGetResetReason, .-BrsMainGetResetReason
.section .text.main,"ax",@progbits
	.align 1
	.global	main
	.type	main, @function
main:
.LFB17:
	.loc 1 803 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 805 0
	call	BrsHw_GetCore
.LVL4:
	mov	%d10, %d2
.LVL5:
	.loc 1 816 0
	call	BrsHwDisableInterruptAtPowerOn
.LVL6:
	.loc 1 824 0
	movh.a	%a15, hi:BrsMain_CoreConfig_Size
	ld.w	%d8, [%a15] lo:BrsMain_CoreConfig_Size
	jz	%d8, .L7
	mov	%d15, 0
	.loc 1 826 0
	movh	%d9, hi:BrsMain_CoreConfig
	addi	%d9, %d9, lo:BrsMain_CoreConfig
	.loc 1 824 0
	lea	%a12, [%a15] lo:BrsMain_CoreConfig_Size
.LVL7:
.L9:
	.loc 1 826 0
	madd	%d2, %d9, %d15, 28
	mov.a	%a15, %d2
	ld.w	%d3, [%a15] 4
	jne	%d3, %d10, .L8
	.loc 1 828 0
	ld.a	%a4, [%a15] 20
	ld.a	%a5, [%a15] 24
	call	BrsHw_ExceptionTable_Init
.LVL8:
	.loc 1 829 0
	add	%d15, %d8, 1
.LVL9:
.L8:
	.loc 1 824 0 discriminator 2
	add	%d15, 1
.LVL10:
	ld.w	%d8, [%a12]0
	jlt.u	%d15, %d8, .L9
	.loc 1 834 0
	jne	%d8, %d15, .L10
.LVL11:
.L7:
.LBB6:
.LBB7:
	.loc 1 704 0
	mov	%d15, 0
	st.b	[%SP] 6, %d15
.L11:
	.loc 1 710 0
	ld.bu	%d15, [%SP] 6
	jz	%d15, .L11
.LVL12:
.L10:
.LBE7:
.LBE6:
	.loc 1 839 0
	jnz	%d10, .L12
	.loc 1 843 0
	call	BrsMainInit
.LVL13:
.L12:
	.loc 1 863 0
	call	EcuM_Init
.LVL14:
.LBB8:
.LBB9:
	.loc 1 704 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
.L13:
	.loc 1 710 0
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L13
.LBE9:
.LBE8:
	.loc 1 870 0
	mov	%d2, 0
	ret
.LFE17:
	.size	main, .-main
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
	.byte	0x4
	.uaword	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
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
	.byte	0x4
	.uaword	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "Include/BrsMain_Types.h"
	.file 4 "GenData/vBrs_Lcfg.h"
	.file 5 "Include/BrsMain_Appl.h"
	.file 6 "Include/BrsHw.h"
	.file 7 "Include/EcuM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6f5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain.c"
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
	.uaword	0x156
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19e
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
	.uaword	0x1ce
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x2e
	.uaword	0x23b
	.uleb128 0x5
	.string	"NON_ASR"
	.sleb128 0
	.uleb128 0x5
	.string	"ASR"
	.sleb128 4096
	.byte	0
	.uleb128 0x3
	.string	"brsCoreAsrType"
	.byte	0x3
	.byte	0x31
	.uaword	0x221
	.uleb128 0x3
	.string	"Brs_AddressOfConstType"
	.byte	0x3
	.byte	0x34
	.uaword	0x26f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x275
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1c
	.byte	0x3
	.byte	0x39
	.uaword	0x31c
	.uleb128 0x9
	.string	"LogicalCoreId"
	.byte	0x3
	.byte	0x3c
	.uaword	0x1c0
	.byte	0
	.uleb128 0x9
	.string	"PhysicalCoreId"
	.byte	0x3
	.byte	0x3f
	.uaword	0x1c0
	.byte	0x4
	.uleb128 0x9
	.string	"StartupStackEndLabel"
	.byte	0x3
	.byte	0x42
	.uaword	0x251
	.byte	0x8
	.uleb128 0x9
	.string	"StartupStackSize"
	.byte	0x3
	.byte	0x45
	.uaword	0x1c0
	.byte	0xc
	.uleb128 0x9
	.string	"CoreIsAsr"
	.byte	0x3
	.byte	0x48
	.uaword	0x23b
	.byte	0x10
	.uleb128 0x9
	.string	"ExcVecLabel"
	.byte	0x3
	.byte	0x4b
	.uaword	0x251
	.byte	0x14
	.uleb128 0x9
	.string	"IntVecLabel"
	.byte	0x3
	.byte	0x4e
	.uaword	0x251
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"brsMain_CoreType"
	.byte	0x3
	.byte	0x4f
	.uaword	0x276
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x55
	.uaword	0x366
	.uleb128 0x5
	.string	"BRSMAIN_RESET_SW"
	.sleb128 0
	.uleb128 0x5
	.string	"BRSMAIN_RESET_OTHER"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"brsMain_ResetReasonType"
	.byte	0x3
	.byte	0x58
	.uaword	0x334
	.uleb128 0xa
	.byte	0x1
	.string	"BrsMainInit"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0xb
	.uaword	.LVL0
	.uaword	0x620
	.uleb128 0xb
	.uaword	.LVL1
	.uaword	0x638
	.uleb128 0xb
	.uaword	.LVL2
	.uaword	0x654
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"BrsMainExceptionHandler"
	.byte	0x1
	.uahalf	0x2ab
	.byte	0x1
	.byte	0x1
	.uaword	0x436
	.uleb128 0xd
	.string	"ErrorCode"
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x176
	.uleb128 0xd
	.string	"ModuleCode"
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x176
	.uleb128 0xd
	.string	"LineNumber"
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x190
	.uleb128 0xe
	.string	"BrsMain_Continue"
	.byte	0x1
	.uahalf	0x2bf
	.uaword	0x436
	.byte	0
	.uleb128 0xf
	.uaword	0x176
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46d
	.uleb128 0x11
	.uaword	0x3e4
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	0x3f6
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.uaword	0x409
	.byte	0x1
	.byte	0x56
	.uleb128 0x12
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"BrsMainGetResetReason"
	.byte	0x1
	.uahalf	0x2e4
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"main"
	.byte	0x1
	.uahalf	0x322
	.byte	0x1
	.uaword	0x594
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x594
	.uleb128 0x15
	.string	"coreID"
	.byte	0x1
	.uahalf	0x325
	.uaword	0x1c0
	.uaword	.LLST0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x327
	.uaword	0x1c0
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	0x3c1
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x343
	.uaword	0x519
	.uleb128 0x17
	.uaword	0x409
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	0x3f6
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	0x3e4
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x12
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x3c1
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x363
	.uaword	0x553
	.uleb128 0x19
	.uaword	0x409
	.uahalf	0x363
	.uleb128 0x1a
	.uaword	0x3f6
	.byte	0x2
	.uleb128 0x1a
	.uaword	0x3e4
	.byte	0xc
	.uleb128 0x18
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x12
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL4
	.uaword	0x679
	.uleb128 0xb
	.uaword	.LVL6
	.uaword	0x692
	.uleb128 0x1b
	.uaword	.LVL8
	.uaword	0x6b8
	.uaword	0x581
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.uaword	.LVL13
	.uaword	0x385
	.uleb128 0xb
	.uaword	.LVL14
	.uaword	0x6e8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1d
	.uaword	0x31c
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	0x5ab
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1f
	.string	"BrsMain_CoreConfig"
	.byte	0x4
	.byte	0x42
	.uaword	0x5d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0x59b
	.uleb128 0x1f
	.string	"BrsMain_CoreConfig_Size"
	.byte	0x4
	.byte	0x43
	.uaword	0x5f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0x1c0
	.uleb128 0x1f
	.string	"brsMain_ResetReason"
	.byte	0x1
	.byte	0x81
	.uaword	0x61b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x366
	.uleb128 0x21
	.byte	0x1
	.string	"BrsMain_Appl_Init"
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"BrsHwPortInitPowerOn"
	.byte	0x6
	.uahalf	0x23b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"BrsHwDisableEccErrorReporting"
	.byte	0x6
	.uahalf	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BrsHw_GetCore"
	.byte	0x6
	.uahalf	0x2a5
	.byte	0x1
	.uaword	0x1c0
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"BrsHwDisableInterruptAtPowerOn"
	.byte	0x6
	.uahalf	0x246
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"BrsHw_ExceptionTable_Init"
	.byte	0x6
	.uahalf	0x252
	.byte	0x1
	.byte	0x1
	.uaword	0x6e8
	.uleb128 0x25
	.uaword	0x251
	.uleb128 0x25
	.uaword	0x251
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"EcuM_Init"
	.byte	0x7
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x343
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	EcuM_Init,STT_FUNC,0
	.extern	BrsHw_ExceptionTable_Init,STT_FUNC,0
	.extern	BrsMain_CoreConfig,STT_OBJECT,28
	.extern	BrsMain_CoreConfig_Size,STT_OBJECT,4
	.extern	BrsHwDisableInterruptAtPowerOn,STT_FUNC,0
	.extern	BrsHw_GetCore,STT_FUNC,0
	.extern	brsMain_ResetReason,STT_OBJECT,1
	.extern	BrsHwDisableEccErrorReporting,STT_FUNC,0
	.extern	BrsHwPortInitPowerOn,STT_FUNC,0
	.extern	BrsMain_Appl_Init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
