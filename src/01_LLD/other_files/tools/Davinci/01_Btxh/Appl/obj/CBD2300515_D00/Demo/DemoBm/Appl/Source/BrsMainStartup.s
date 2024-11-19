	.file	"BrsMainStartup.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Brs_MemoryZeroInit,"ax",@progbits
	.align 1
	.global	Brs_MemoryZeroInit
	.type	Brs_MemoryZeroInit, @function
Brs_MemoryZeroInit:
.LFB16:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsMainStartup.c"
	.loc 1 282 0
.LVL0:
	.loc 1 288 0
	ld.w	%d15, [%a4]0
	jz	%d15, .L1
	mov	%d15, 0
.LVL1:
.L5:
	sh	%d3, %d15, 4
	.loc 1 290 0
	ld.a	%a2, [%a4] 4
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%a15] 8
	jne	%d2, %d5, .L3
	.loc 1 290 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a15] 4
	ld.a	%a15, [%a15]0
	mov.d	%d6, %a15
	jeq	%d2, %d6, .L3
.LVL2:
	.loc 1 297 0 is_stmt 1
	jge.u	%d6, %d2, .L3
.LVL3:
.L6:
	.loc 1 299 0
	st.w	[%a15+]4, %d4
.LVL4:
	.loc 1 297 0
	ld.a	%a3, [%a4] 4
	addsc.a	%a2, %a3, %d3, 0
	ld.w	%d2, [%a2] 4
	mov.d	%d6, %a15
	jlt.u	%d6, %d2, .L6
.LVL5:
.L3:
	.loc 1 288 0 discriminator 2
	add	%d15, 1
.LVL6:
	ld.w	%d2, [%a4]0
	jlt.u	%d15, %d2, .L5
.LVL7:
.L1:
	ret
.LFE16:
	.size	Brs_MemoryZeroInit, .-Brs_MemoryZeroInit
.section .text.Brs_MemoryInit,"ax",@progbits
	.align 1
	.global	Brs_MemoryInit
	.type	Brs_MemoryInit, @function
Brs_MemoryInit:
.LFB17:
	.loc 1 318 0
.LVL8:
	.loc 1 323 0
	ld.w	%d15, [%a4]0
	jz	%d15, .L9
	mov	%d9, %d4
	mov.aa	%a15, %a4
	mov	%d15, 0
.LVL9:
.L14:
	mul	%d8, %d15, 24
	.loc 1 325 0
	ld.a	%a3, [%a15] 4
	addsc.a	%a2, %a3, %d8, 0
	ld.w	%d2, [%a2] 16
	jne	%d2, %d9, .L11
	.loc 1 325 0 is_stmt 0 discriminator 1
	ld.w	%d3, [%a2] 4
	ld.w	%d2, [%a2]0
	jeq	%d3, %d2, .L11
	.loc 1 327 0 is_stmt 1
	sub	%d2, %d3, %d2
	ld.w	%d4, [%a2] 12
	ld.w	%d3, [%a2] 8
	sub	%d4, %d3
	jeq	%d2, %d4, .L12
	.loc 1 330 0
	mov	%d4, 5
	mov	%d5, 4
	mov	%d6, 330
	call	BrsMainExceptionHandler
.LVL10:
.L12:
	.loc 1 333 0
	ld.a	%a4, [%a15] 4
	addsc.a	%a3, %a4, %d8, 0
	ld.w	%d2, [%a3]0
	mov.a	%a2, %d2
.LVL11:
	.loc 1 334 0
	ld.w	%d3, [%a3] 8
.LVL12:
	.loc 1 335 0
	ld.w	%d4, [%a3] 4
	jge.u	%d2, %d4, .L11
	sub	%d3, %d2
.LVL13:
.L15:
	addsc.a	%a3, %a2, %d3, 0
.LVL14:
	.loc 1 337 0
	ld.w	%d2, [%a3]0
	st.w	[%a2+]4, %d2
.LVL15:
	.loc 1 335 0
	ld.a	%a4, [%a15] 4
	addsc.a	%a3, %a4, %d8, 0
	ld.w	%d2, [%a3] 4
	mov.d	%d4, %a2
	jlt.u	%d4, %d2, .L15
.LVL16:
.L11:
	.loc 1 323 0 discriminator 2
	add	%d15, 1
.LVL17:
	ld.w	%d2, [%a15]0
	jlt.u	%d15, %d2, .L14
.LVL18:
.L9:
	ret
.LFE17:
	.size	Brs_MemoryInit, .-Brs_MemoryInit
.section .brsStartup,"ax",@progbits
	.align 1
	.global	Brs_ApplicationEntry
	.type	Brs_ApplicationEntry, @function
Brs_ApplicationEntry:
.LFB15:
	.loc 1 174 0
	.loc 1 181 0
	call	BrsHw_GetCore
.LVL19:
	mov	%d8, %d2
.LVL20:
	.loc 1 183 0
	mov	%d4, %d2
	call	BrsMain_MemoryInit_StageZero_Hook
.LVL21:
	.loc 1 195 0
	mov	%d4, %d8
	call	BrsMain_MemoryInit_StageHardReset_Hook
.LVL22:
	.loc 1 206 0
	movh.a	%a15, hi:brsMain_ResetReason
	ld.bu	%d15, [%a15] lo:brsMain_ResetReason
	jz	%d15, .L19
	.loc 1 209 0
	movh.a	%a4, hi:vLinkGen_ZeroInit_HardReset_GroupsSet
	lea	%a4, [%a4] lo:vLinkGen_ZeroInit_HardReset_GroupsSet
	mov	%d4, 0
	mov	%d5, %d8
	call	Brs_MemoryZeroInit
.LVL23:
.L19:
	.loc 1 221 0
	mov	%d4, %d8
	call	BrsMain_MemoryInit_StageOne_Hook
.LVL24:
	.loc 1 225 0
	movh.a	%a4, hi:vLinkGen_ZeroInit_One_BlocksSet
	lea	%a4, [%a4] lo:vLinkGen_ZeroInit_One_BlocksSet
	mov	%d4, 0
	mov	%d5, %d8
	call	Brs_MemoryZeroInit
.LVL25:
	.loc 1 230 0
	movh.a	%a4, hi:vLinkGen_ZeroInit_One_GroupsSet
	lea	%a4, [%a4] lo:vLinkGen_ZeroInit_One_GroupsSet
	mov	%d4, 0
	mov	%d5, %d8
	call	Brs_MemoryZeroInit
.LVL26:
	.loc 1 235 0
	movh.a	%a4, hi:vLinkGen_Init_One_GroupsSet
	lea	%a4, [%a4] lo:vLinkGen_Init_One_GroupsSet
	mov	%d4, %d8
	call	Brs_MemoryInit
.LVL27:
	.loc 1 238 0
	mov	%d4, %d8
	call	BrsMain_MemoryInit_StageTwo_Hook
.LVL28:
	.loc 1 250 0
	mov	%d4, %d8
	call	BrsMain_MemoryInit_StageThree_Hook
.LVL29:
	.loc 1 262 0
	mov	%d4, %d8
	call	BrsMain_PreMainHook
.LVL30:
	.loc 1 264 0
	call	main
.LVL31:
	.loc 1 266 0
	mov	%d4, 12
	mov	%d5, 2
	mov	%d6, 266
	call	BrsMainExceptionHandler
.LVL32:
	ret
.LFE15:
	.size	Brs_ApplicationEntry, .-Brs_ApplicationEntry
.section .text.brsMainStartup,"ax",@progbits
	.align 1
	.global	BrsMainExceptionStartup
	.type	BrsMainExceptionStartup, @function
BrsMainExceptionStartup:
.LFB18:
	.loc 1 362 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 364 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
.L21:
	.loc 1 365 0 discriminator 1
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L21
	.loc 1 371 0
	ret
.LFE18:
	.size	BrsMainExceptionStartup, .-BrsMainExceptionStartup
	.align 1
	.global	Brs_PreMainStartup
	.type	Brs_PreMainStartup, @function
Brs_PreMainStartup:
.LFB14:
	.loc 1 137 0
	.loc 1 143 0
	call	BrsHw_GetCore
.LVL33:
	jnz	%d2, .L24
	.loc 1 146 0
	call	BrsHwGetResetReasonStartup
.LVL34:
	movh.a	%a15, hi:brsMain_ResetReason
	st.b	[%a15] lo:brsMain_ResetReason, %d2
.L24:
	.loc 1 149 0
	call	Brs_ApplicationEntry
.LVL35:
	.loc 1 151 0
	call	BrsMainExceptionStartup
.LVL36:
	ret
.LFE14:
	.size	Brs_PreMainStartup, .-Brs_PreMainStartup
	.global	brsMain_ResetReason
.section .bss.brsSharedVar,"aw",@nobits
	.align 3
	.type	brsMain_ResetReason, @object
	.size	brsMain_ResetReason, 1
brsMain_ResetReason:
	.zero	1
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "Include/BrsMain_Types.h"
	.file 4 "GenData/vLinkGen_Lcfg.h"
	.file 5 "Include/BrsMain.h"
	.file 6 "Include/BrsHw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x97a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsMainStartup.c"
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
	.uaword	0x15b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1a3
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
	.uaword	0x1d3
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
	.byte	0x1
	.byte	0x3
	.byte	0x55
	.uaword	0x258
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
	.uaword	0x226
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.byte	0x4d
	.uaword	0x2b3
	.uleb128 0x7
	.string	"Start"
	.byte	0x4
	.byte	0x50
	.uaword	0x1c5
	.byte	0
	.uleb128 0x7
	.string	"End"
	.byte	0x4
	.byte	0x52
	.uaword	0x1c5
	.byte	0x4
	.uleb128 0x7
	.string	"Core"
	.byte	0x4
	.byte	0x54
	.uaword	0x1c5
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x56
	.uaword	0x1c5
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"vLinkGen_MemArea"
	.byte	0x4
	.byte	0x57
	.uaword	0x277
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x5a
	.uaword	0x2ee
	.uleb128 0x7
	.string	"Num"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1c5
	.byte	0
	.uleb128 0x7
	.string	"Areas"
	.byte	0x4
	.byte	0x5f
	.uaword	0x2ee
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x2f4
	.uleb128 0xa
	.uaword	0x2b3
	.uleb128 0x3
	.string	"vLinkGen_MemAreaSet"
	.byte	0x4
	.byte	0x60
	.uaword	0x2cb
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x63
	.uaword	0x370
	.uleb128 0x7
	.string	"Start"
	.byte	0x4
	.byte	0x66
	.uaword	0x1c5
	.byte	0
	.uleb128 0x7
	.string	"End"
	.byte	0x4
	.byte	0x68
	.uaword	0x1c5
	.byte	0x4
	.uleb128 0x7
	.string	"Romstart"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1c5
	.byte	0x8
	.uleb128 0x7
	.string	"Romend"
	.byte	0x4
	.byte	0x6c
	.uaword	0x1c5
	.byte	0xc
	.uleb128 0x7
	.string	"Core"
	.byte	0x4
	.byte	0x6e
	.uaword	0x1c5
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x70
	.uaword	0x1c5
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"vLinkGen_RamMemArea"
	.byte	0x4
	.byte	0x71
	.uaword	0x314
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x74
	.uaword	0x3ae
	.uleb128 0x7
	.string	"Num"
	.byte	0x4
	.byte	0x77
	.uaword	0x1c5
	.byte	0
	.uleb128 0x7
	.string	"Areas"
	.byte	0x4
	.byte	0x79
	.uaword	0x3ae
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x3b4
	.uleb128 0xa
	.uaword	0x370
	.uleb128 0x3
	.string	"vLinkGen_RamMemAreaSet"
	.byte	0x4
	.byte	0x7a
	.uaword	0x38b
	.uleb128 0xb
	.byte	0x1
	.string	"Brs_MemoryZeroInit"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45d
	.uleb128 0xc
	.string	"memAreaSet"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x45d
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"InitPattern"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1c5
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"coreId"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1c5
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x1c5
	.uaword	.LLST0
	.uleb128 0xd
	.string	"memPtr"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x468
	.uaword	.LLST1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x463
	.uleb128 0xa
	.uaword	0x2f9
	.uleb128 0x9
	.byte	0x4
	.uaword	0x46e
	.uleb128 0xe
	.uaword	0x1c5
	.uleb128 0xb
	.byte	0x1
	.string	"Brs_MemoryInit"
	.byte	0x1
	.uahalf	0x13d
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x512
	.uleb128 0xf
	.string	"memAreasSet"
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x512
	.uaword	.LLST2
	.uleb128 0xf
	.string	"coreId"
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x1c5
	.uaword	.LLST3
	.uleb128 0xd
	.string	"memPtr"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x468
	.uaword	.LLST4
	.uleb128 0xd
	.string	"romPtr"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x468
	.uaword	.LLST5
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x1c5
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LVL10
	.uaword	0x7cc
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x14a
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x518
	.uleb128 0xa
	.uaword	0x3b9
	.uleb128 0x12
	.byte	0x1
	.string	"Brs_ApplicationEntry"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65d
	.uleb128 0x13
	.string	"coreID"
	.byte	0x1
	.byte	0xaf
	.uaword	0x1c5
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LVL19
	.uaword	0x7ff
	.uleb128 0x15
	.uaword	.LVL21
	.uaword	0x818
	.uaword	0x575
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL22
	.uaword	0x84b
	.uaword	0x589
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL23
	.uaword	0x3d7
	.uaword	0x5a2
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL24
	.uaword	0x883
	.uaword	0x5b6
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL25
	.uaword	0x3d7
	.uaword	0x5cf
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL26
	.uaword	0x3d7
	.uaword	0x5e8
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL27
	.uaword	0x473
	.uaword	0x5fc
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL28
	.uaword	0x8b5
	.uaword	0x610
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL29
	.uaword	0x8e7
	.uaword	0x624
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL30
	.uaword	0x91b
	.uaword	0x638
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL31
	.uaword	0x940
	.uleb128 0x10
	.uaword	.LVL32
	.uaword	0x7cc
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x10a
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"BrsMainExceptionStartup"
	.byte	0x1
	.uahalf	0x169
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ae
	.uleb128 0x16
	.string	"BrsMainStartup_Continue"
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x6ae
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0xe
	.uaword	0x17b
	.uleb128 0x12
	.byte	0x1
	.string	"Brs_PreMainStartup"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ff
	.uleb128 0x14
	.uaword	.LVL33
	.uaword	0x7ff
	.uleb128 0x14
	.uaword	.LVL34
	.uaword	0x957
	.uleb128 0x14
	.uaword	.LVL35
	.uaword	0x51d
	.uleb128 0x14
	.uaword	.LVL36
	.uaword	0x65d
	.byte	0
	.uleb128 0x17
	.string	"vLinkGen_ZeroInit_HardReset_GroupsSet"
	.byte	0x4
	.byte	0xb8
	.uaword	0x463
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"vLinkGen_ZeroInit_One_BlocksSet"
	.byte	0x4
	.byte	0xb9
	.uaword	0x463
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"vLinkGen_ZeroInit_One_GroupsSet"
	.byte	0x4
	.byte	0xba
	.uaword	0x463
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"vLinkGen_Init_One_GroupsSet"
	.byte	0x4
	.byte	0xbf
	.uaword	0x518
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"brsMain_ResetReason"
	.byte	0x1
	.byte	0x5c
	.uaword	0x7c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	brsMain_ResetReason
	.uleb128 0xe
	.uaword	0x258
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMainExceptionHandler"
	.byte	0x5
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x7ff
	.uleb128 0x1a
	.uaword	0x17b
	.uleb128 0x1a
	.uaword	0x17b
	.uleb128 0x1a
	.uaword	0x195
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHw_GetCore"
	.byte	0x6
	.uahalf	0x2a5
	.byte	0x1
	.uaword	0x1c5
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageZero_Hook"
	.byte	0x5
	.uahalf	0x191
	.byte	0x1
	.byte	0x1
	.uaword	0x84b
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageHardReset_Hook"
	.byte	0x5
	.uahalf	0x19c
	.byte	0x1
	.byte	0x1
	.uaword	0x883
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageOne_Hook"
	.byte	0x5
	.uahalf	0x1a7
	.byte	0x1
	.byte	0x1
	.uaword	0x8b5
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageTwo_Hook"
	.byte	0x5
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x1
	.uaword	0x8e7
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageThree_Hook"
	.byte	0x5
	.uahalf	0x1bd
	.byte	0x1
	.byte	0x1
	.uaword	0x91b
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"BrsMain_PreMainHook"
	.byte	0x5
	.uahalf	0x1c8
	.byte	0x1
	.byte	0x1
	.uaword	0x940
	.uleb128 0x1a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"main"
	.byte	0x5
	.uahalf	0x24f
	.byte	0x1
	.uaword	0x950
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwGetResetReasonStartup"
	.byte	0x6
	.uahalf	0x26f
	.byte	0x1
	.uaword	0x258
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL18
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Alignment"
	.extern	BrsHwGetResetReasonStartup,STT_FUNC,0
	.extern	main,STT_FUNC,0
	.extern	BrsMain_PreMainHook,STT_FUNC,0
	.extern	BrsMain_MemoryInit_StageThree_Hook,STT_FUNC,0
	.extern	BrsMain_MemoryInit_StageTwo_Hook,STT_FUNC,0
	.extern	vLinkGen_Init_One_GroupsSet,STT_OBJECT,8
	.extern	vLinkGen_ZeroInit_One_GroupsSet,STT_OBJECT,8
	.extern	vLinkGen_ZeroInit_One_BlocksSet,STT_OBJECT,8
	.extern	BrsMain_MemoryInit_StageOne_Hook,STT_FUNC,0
	.extern	vLinkGen_ZeroInit_HardReset_GroupsSet,STT_OBJECT,8
	.extern	BrsMain_MemoryInit_StageHardReset_Hook,STT_FUNC,0
	.extern	BrsMain_MemoryInit_StageZero_Hook,STT_FUNC,0
	.extern	BrsHw_GetCore,STT_FUNC,0
	.extern	BrsMainExceptionHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
