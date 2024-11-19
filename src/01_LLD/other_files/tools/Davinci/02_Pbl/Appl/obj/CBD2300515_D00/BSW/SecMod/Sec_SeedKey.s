	.file	"Sec_SeedKey.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SecM_ConsumeEntropy,"ax",@progbits
	.align 1
	.type	SecM_ConsumeEntropy, @function
SecM_ConsumeEntropy:
.LFB1:
	.file 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.c"
	.loc 1 331 0
.LVL0:
	.loc 1 341 0
	ld.hu	%d15, [%a4] 32
	.loc 1 343 0
	mov	%d2, 255
	.loc 1 341 0
	jlt.u	%d15, %d4, .L2
	.loc 1 338 0
	mov	%d2, 0
	.loc 1 348 0
	jz	%d4, .L2
	.loc 1 350 0
	mov.d	%d3, %a4
	add	%d3, %d4
.LVL1:
	.loc 1 351 0
	mov.d	%d5, %a4
.LVL2:
	.loc 1 354 0
	rsub	%d2, %d4, 32
	jz	%d2, .L3
	mov	%d15, 0
	mov.a	%a15, %d2
	add.a	%a15, -1
.LVL3:
.L4:
	.loc 1 356 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2]0, %d2
	.loc 1 354 0 discriminator 3
	add	%d15, 1
.LVL4:
	loop	%a15, .L4
.LVL5:
.L3:
	.loc 1 360 0
	ld.h	%d15, [%a4] 32
	sub	%d4, %d15, %d4
.LVL6:
	extr.u	%d4, %d4, 0, 16
	st.h	[%a4] 32, %d4
.LVL7:
	.loc 1 364 0
	lt.u	%d15, %d4, 32
	.loc 1 366 0
	cmovn	%d4, %d15, 0
.LVL8:
	.loc 1 369 0
	st.h	[%a4] 34, %d4
	.loc 1 338 0
	mov	%d2, 0
.LVL9:
.L2:
	.loc 1 374 0
	ret
.LFE1:
	.size	SecM_ConsumeEntropy, .-SecM_ConsumeEntropy
.section .text.SecM_InitEntropy,"ax",@progbits
	.align 1
	.global	SecM_InitEntropy
	.type	SecM_InitEntropy, @function
SecM_InitEntropy:
.LFB2:
	.loc 1 393 0
.LVL10:
	.loc 1 398 0
	mov	%d15, 0
	st.h	[%a4] 32, %d15
	.loc 1 399 0
	st.h	[%a4] 34, %d15
	.loc 1 400 0
	st.b	[%a4] 36, %d15
.LVL11:
	.loc 1 406 0
	mov	%d15, 0
	lea	%a15, 31
.LVL12:
.L10:
	.loc 1 406 0 is_stmt 0 discriminator 3
	st.b	[%a4+]1, %d15
.LVL13:
	loop	%a15, .L10
	.loc 1 408 0 is_stmt 1
	ret
.LFE2:
	.size	SecM_InitEntropy, .-SecM_InitEntropy
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	SecM_ProvideEntropy
	.type	SecM_ProvideEntropy, @function
SecM_ProvideEntropy:
.LFB3:
	.loc 1 433 0
.LVL14:
	.loc 1 440 0
	mov.d	%d5, %a4
.LVL15:
	.loc 1 441 0
	ld.hu	%d2, [%a4] 32
.LVL16:
	.loc 1 442 0
	ld.hu	%d15, [%a4] 34
.LVL17:
	.loc 1 445 0
	jz	%d4, .L13
	mov.aa	%a15, %a5
	addsc.a	%a5, %a5, %d4, 0
.LVL18:
	mov.d	%d3, %a15
	not	%d3
	addsc.a	%a5, %a5, %d3, 0
.LVL19:
.L16:
	.loc 1 448 0
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d4, [%a2]0
	ld.bu	%d3, [%a15]0
	xor	%d3, %d4
	st.b	[%a2]0, %d3
	.loc 1 451 0
	add	%d15, 1
.LVL20:
	extr.u	%d15, %d15, 0, 16
.LVL21:
	.loc 1 452 0
	lt.u	%d3, %d15, 32
	.loc 1 454 0
	sel	%d15, %d3, %d15, 0
.LVL22:
	.loc 1 458 0
	ge.u	%d3, %d2, 32
	jnz	%d3, .L15
.LVL23:
	.loc 1 460 0
	add	%d2, 1
.LVL24:
	extr.u	%d2, %d2, 0, 16
.LVL25:
.L15:
	add.a	%a15, 1
.LVL26:
	loop	%a5, .L16
.LVL27:
.L13:
	.loc 1 465 0
	st.h	[%a4] 32, %d2
	.loc 1 466 0
	st.h	[%a4] 34, %d15
	ret
.LFE3:
	.size	SecM_ProvideEntropy, .-SecM_ProvideEntropy
.section .text.SecM_GenerateSeed,"ax",@progbits
	.align 1
	.global	SecM_GenerateSeed
	.type	SecM_GenerateSeed, @function
SecM_GenerateSeed:
.LFB4:
	.loc 1 491 0
.LVL28:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 514 0
	ld.a	%a12, [%a4]0
.LVL29:
	.loc 1 543 0
	ld.a	%a15, [%a4] 4
.LVL30:
	.loc 1 558 0
	ld.bu	%d15, [%a15] 36
	jnz	%d15, .L19
	.loc 1 561 0
	ld.hu	%d2, [%a15] 32
	.loc 1 563 0
	mov	%d15, 255
	.loc 1 561 0
	jz	%d2, .L28
	.loc 1 568 0
	mov	%d15, 32
	st.h	[%a15] 32, %d15
	.loc 1 569 0
	mov	%d4, 0
	mov.aa	%a4, %a15
.LVL31:
	mov	%d5, %d15
	call	SecM_RandomSeedJob
.LVL32:
	mov	%d15, %d2
.LVL33:
	.loc 1 572 0
	mov.aa	%a4, %a15
	ld.hu	%d4, [%a15] 32
	call	SecM_ConsumeEntropy
.LVL34:
	jnz	%d2, .L26
	.loc 1 578 0
	jnz	%d15, .L28
	.loc 1 581 0
	mov	%d15, 1
.LVL35:
	st.b	[%a15] 36, %d15
	j	.L24
.LVL36:
.L19:
	.loc 1 589 0
	ld.hu	%d5, [%a15] 32
	lt.u	%d15, %d5, 32
	jnz	%d15, .L24
	.loc 1 591 0
	mov	%d4, 0
	mov.aa	%a4, %a15
.LVL37:
	call	SecM_RandomSeedJob
.LVL38:
	mov	%d15, %d2
.LVL39:
	.loc 1 594 0
	mov.aa	%a4, %a15
	ld.hu	%d4, [%a15] 32
	call	SecM_ConsumeEntropy
.LVL40:
	jnz	%d2, .L27
	.loc 1 601 0
	jnz	%d15, .L28
.LVL41:
.L24:
.LBB4:
.LBB5:
	.loc 1 220 0
	lea	%a5, [%SP] 8
	mov	%d15, 16
	st.w	[+%a5]-4, %d15
.LVL42:
	.loc 1 223 0
	mov	%d4, 1
	mov.aa	%a4, %a12
	call	SecM_RandomGenerateJob
.LVL43:
	.loc 1 219 0
	mov	%d15, 255
	.loc 1 223 0
	jnz	%d2, .L28
	.loc 1 226 0
	ld.w	%d15, [%SP] 4
	ne	%d15, %d15, 16
	rsub	%d15
	and	%d15, 255
.LVL44:
.LBE5:
.LBE4:
	.loc 1 637 0
	jnz	%d15, .L28
	.loc 1 640 0
	mov	%d2, 10
	movh.a	%a15, hi:secTimer
.LVL45:
	st.h	[%a15] lo:secTimer, %d2
	j	.L28
.LVL46:
.L26:
	.loc 1 574 0
	mov	%d15, 255
.LVL47:
	j	.L28
.LVL48:
.L27:
	.loc 1 596 0
	mov	%d15, 255
.LVL49:
.L28:
	.loc 1 645 0
	mov	%d2, %d15
	ret
.LFE4:
	.size	SecM_GenerateSeed, .-SecM_GenerateSeed
.section .text.SecM_ComputeKey,"ax",@progbits
	.align 1
	.global	SecM_ComputeKey
	.type	SecM_ComputeKey, @function
SecM_ComputeKey:
.LFB5:
	.loc 1 689 0
.LVL50:
	.loc 1 692 0
	call	SecM_ComputeKeyVendor
.LVL51:
	.loc 1 695 0
	ret
.LFE5:
	.size	SecM_ComputeKey, .-SecM_ComputeKey
.section .text.SecM_CompareKey,"ax",@progbits
	.align 1
	.global	SecM_CompareKey
	.type	SecM_CompareKey, @function
SecM_CompareKey:
.LFB6:
	.loc 1 713 0
.LVL52:
	sub.a	%SP, 24
.LCFI1:
.LVL53:
	.loc 1 726 0
	mov	%d15, 0
	.loc 1 728 0
	mov	%d2, 0
	lea	%a15, 17
.LVL54:
.L31:
	.loc 1 728 0 is_stmt 0 discriminator 3
	lea	%a3, [%SP] 6
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2]0, %d2
	.loc 1 726 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL55:
	loop	%a15, .L31
.LVL56:
	.loc 1 739 0
	movh.a	%a15, hi:secTimer
	ld.hu	%d15, [%a15] lo:secTimer
.LVL57:
	.loc 1 736 0
	mov	%d2, 255
	.loc 1 739 0
	jz	%d15, .L32
	mov.a	%a4, %d6
	mov	%d15, %d4
.LVL58:
.LBB8:
.LBB9:
	.loc 1 692 0
	mov	%d4, 0
.LVL59:
	mov.aa	%a5, %a3
	call	SecM_ComputeKeyVendor
.LVL60:
.LBE9:
.LBE8:
	.loc 1 769 0
	mov	%d4, %d15
	.loc 1 766 0
	mov	%d15, 0
	.loc 1 769 0
	lea	%a15, 17
.LVL61:
.L34:
	lea	%a4, [%SP] 6
.LVL62:
	addsc.a	%a2, %a4, %d15, 0
	mov.a	%a4, %d4
.LVL63:
	addsc.a	%a3, %a4, %d15, 0
	ld.bu	%d5, [%a3]0
	.loc 1 772 0
	ld.bu	%d3, [%a2]0
	eq	%d3, %d5, %d3
	sel	%d2, %d3, %d2, 255
.LVL64:
	.loc 1 766 0
	add	%d15, 1
.LVL65:
	loop	%a15, .L34
	.loc 1 785 0
	mov	%d15, 0
.LVL66:
	movh.a	%a15, hi:secTimer
	st.h	[%a15] lo:secTimer, %d15
.LVL67:
.L32:
	.loc 1 792 0
	mov	%d15, 0
	.loc 1 794 0
	mov	%d3, 0
	lea	%a15, 17
.LVL68:
.L35:
	.loc 1 794 0 is_stmt 0 discriminator 3
	lea	%a3, [%SP] 6
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2]0, %d3
	.loc 1 792 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL69:
	loop	%a15, .L35
	.loc 1 802 0
	ret
.LFE6:
	.size	SecM_CompareKey, .-SecM_CompareKey
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
	.byte	0x4
	.uaword	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
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
	.byte	0x4
	.uaword	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
	.file 4 "../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.h"
	.file 5 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h"
	.file 6 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xaeb
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/SecMod/Sec_SeedKey.c"
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
	.uleb128 0x3
	.string	"vuint8"
	.byte	0x2
	.uahalf	0x233
	.uaword	0x14c
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x179
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x19b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"SecM_WordType"
	.byte	0x3
	.byte	0x87
	.uaword	0x20d
	.uleb128 0x4
	.string	"SecM_ByteType"
	.byte	0x3
	.byte	0x8c
	.uaword	0x1ee
	.uleb128 0x4
	.string	"SecM_ShortType"
	.byte	0x3
	.byte	0x8e
	.uaword	0x1fd
	.uleb128 0x4
	.string	"SecM_RamDataType"
	.byte	0x3
	.byte	0x91
	.uaword	0x285
	.uleb128 0x5
	.byte	0x4
	.uaword	0x242
	.uleb128 0x5
	.byte	0x4
	.uaword	0x22d
	.uleb128 0x4
	.string	"SecM_ConstRamDataType"
	.byte	0x3
	.byte	0x97
	.uaword	0x2ae
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b4
	.uleb128 0x6
	.uaword	0x242
	.uleb128 0x4
	.string	"SecM_VoidPtrType"
	.byte	0x3
	.byte	0x9d
	.uaword	0x2d1
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x4
	.string	"SecM_StatusType"
	.byte	0x3
	.byte	0xa8
	.uaword	0x242
	.uleb128 0x4
	.string	"SecM_LengthType"
	.byte	0x3
	.byte	0xaa
	.uaword	0x257
	.uleb128 0x4
	.string	"SecM_SizeType"
	.byte	0x3
	.byte	0xaf
	.uaword	0x22d
	.uleb128 0x4
	.string	"SecM_ShortFastType"
	.byte	0x3
	.byte	0xd6
	.uaword	0x22d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_KeyBaseType"
	.byte	0x4
	.byte	0x56
	.uaword	0x242
	.uleb128 0x4
	.string	"SecM_KeyStorageType"
	.byte	0x4
	.byte	0x58
	.uaword	0x36f
	.uleb128 0x8
	.uaword	0x33c
	.uaword	0x37f
	.uleb128 0x9
	.uaword	0x330
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.string	"SecM_SeedBaseType"
	.byte	0x4
	.byte	0x64
	.uaword	0x242
	.uleb128 0x4
	.string	"SecM_ConstBaseType"
	.byte	0x4
	.byte	0x79
	.uaword	0x22d
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa4
	.uaword	0x3d3
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0xa7
	.uaword	0x398
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.byte	0xa9
	.uaword	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_ConstType"
	.byte	0x4
	.byte	0xaa
	.uaword	0x3b2
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.byte	0xb3
	.uaword	0x41e
	.uleb128 0xd
	.string	"SEC_RNG_UNINTIALIZED"
	.sleb128 0
	.uleb128 0xd
	.string	"SEC_RNG_INTIALIZED"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"SecM_RngState"
	.byte	0x4
	.byte	0xb6
	.uaword	0x3e9
	.uleb128 0xa
	.byte	0x2c
	.byte	0x4
	.byte	0xb9
	.uaword	0x47b
	.uleb128 0xe
	.string	"data"
	.byte	0x4
	.byte	0xbb
	.uaword	0x47b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x4
	.byte	0xbc
	.uaword	0x2ea
	.byte	0x20
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x4
	.byte	0xbd
	.uaword	0x2ea
	.byte	0x22
	.uleb128 0xe
	.string	"state"
	.byte	0x4
	.byte	0xbe
	.uaword	0x41e
	.byte	0x24
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.byte	0xbf
	.uaword	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.uaword	0x242
	.uaword	0x48b
	.uleb128 0x9
	.uaword	0x330
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"SecM_EntropyPoolType"
	.byte	0x4
	.byte	0xc0
	.uaword	0x433
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xcb
	.uaword	0x4d1
	.uleb128 0xe
	.string	"data"
	.byte	0x4
	.byte	0xce
	.uaword	0x4d1
	.byte	0
	.uleb128 0xe
	.string	"entropyPool"
	.byte	0x4
	.byte	0xcf
	.uaword	0x4d7
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x37f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x48b
	.uleb128 0x4
	.string	"SecM_SeedType"
	.byte	0x4
	.byte	0xd0
	.uaword	0x4a7
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xda
	.uaword	0x514
	.uleb128 0xe
	.string	"data"
	.byte	0x4
	.byte	0xdd
	.uaword	0x514
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.byte	0xdf
	.uaword	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33c
	.uleb128 0x4
	.string	"SecM_KeyType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x4f2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4dd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x354
	.uleb128 0x4
	.string	"SecM_CompareType"
	.byte	0x1
	.byte	0x94
	.uaword	0x354
	.uleb128 0xf
	.string	"SecM_ConsumeEntropy"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5fc
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4d7
	.uaword	.LLST0
	.uleb128 0x11
	.string	"consumed"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x2ea
	.uaword	.LLST1
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x2d3
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x316
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2ea
	.uaword	.LLST4
	.uleb128 0x13
	.string	"pSource"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x285
	.uaword	.LLST5
	.uleb128 0x13
	.string	"pTarget"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x285
	.uaword	.LLST6
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"SecM_InitEntropy"
	.byte	0x1
	.uahalf	0x185
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x655
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x185
	.uaword	0x4d7
	.uaword	.LLST7
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x301
	.uaword	.LLST8
	.uleb128 0x13
	.string	"pPool"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x285
	.uaword	.LLST9
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"SecM_ProvideEntropy"
	.byte	0x1
	.uahalf	0x1ab
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f8
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x4d7
	.uaword	.LLST10
	.uleb128 0x11
	.string	"entropy"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x285
	.uaword	.LLST11
	.uleb128 0x11
	.string	"length"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x2ea
	.uaword	.LLST12
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x316
	.uaword	.LLST13
	.uleb128 0x13
	.string	"pPool"
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x285
	.uaword	.LLST14
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x2ea
	.uaword	.LLST15
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x2ea
	.uaword	.LLST16
	.byte	0
	.uleb128 0x15
	.string	"SecM_GenerateRandom"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0x764
	.uleb128 0x16
	.string	"pRandom"
	.byte	0x1
	.byte	0xd9
	.uaword	0x285
	.uleb128 0x16
	.string	"length"
	.byte	0x1
	.byte	0xd9
	.uaword	0x22d
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xdb
	.uaword	0x2d3
	.uleb128 0x18
	.string	"localLength"
	.byte	0x1
	.byte	0xdc
	.uaword	0x22d
	.uleb128 0x18
	.string	"pLength"
	.byte	0x1
	.byte	0xdd
	.uaword	0x28b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"SecM_GenerateSeed"
	.byte	0x1
	.uahalf	0x1ea
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8ab
	.uleb128 0x11
	.string	"seed"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x52e
	.uaword	.LLST17
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x2d3
	.uaword	.LLST18
	.uleb128 0x1a
	.string	"pBaseSeed"
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x4d1
	.byte	0x1
	.byte	0x6c
	.uleb128 0x1a
	.string	"pRandom"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x285
	.byte	0x1
	.byte	0x6c
	.uleb128 0x13
	.string	"pPool"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x4d7
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	0x6f8
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x84e
	.uleb128 0x1c
	.uaword	0x728
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	0x719
	.uaword	.LLST21
	.uleb128 0x1d
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x1e
	.uaword	0x736
	.uaword	.LLST22
	.uleb128 0x1f
	.uaword	0x741
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1e
	.uaword	0x754
	.uaword	.LLST23
	.uleb128 0x20
	.uaword	.LVL43
	.uaword	0xa57
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL32
	.uaword	0xa8c
	.uaword	0x86d
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.uaword	.LVL34
	.uaword	0x552
	.uaword	0x881
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL38
	.uaword	0xa8c
	.uaword	0x89a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.uaword	.LVL40
	.uaword	0x552
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"SecM_ComputeKey"
	.byte	0x1
	.uahalf	0x2af
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0x909
	.uleb128 0x24
	.string	"inputSeed"
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x4d1
	.uleb128 0x25
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x3d3
	.uleb128 0x24
	.string	"computedKey"
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0x534
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0x2d3
	.byte	0
	.uleb128 0x27
	.uaword	0x8ab
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x958
	.uleb128 0x1c
	.uaword	0x8ca
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x8dc
	.uaword	.LLST25
	.uleb128 0x1c
	.uaword	0x8e8
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	0x8fc
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	.LVL51
	.uaword	0xabd
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"SecM_CompareKey"
	.byte	0x1
	.uahalf	0x2c8
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa40
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x51a
	.uaword	.LLST27
	.uleb128 0x11
	.string	"lastSeed"
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x4dd
	.uaword	.LLST28
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x2d3
	.uaword	.LLST29
	.uleb128 0x13
	.string	"keyConstant"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x3d3
	.uaword	.LLST30
	.uleb128 0x1a
	.string	"computeVal"
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0xa40
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x316
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	0x8ab
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x2f8
	.uleb128 0x1c
	.uaword	0x8e8
	.uaword	.LLST32
	.uleb128 0x29
	.uaword	0x8dc
	.uleb128 0x1c
	.uaword	0x8ca
	.uaword	.LLST33
	.uleb128 0x1d
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x1e
	.uaword	0x8fc
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	.LVL60
	.uaword	0xabd
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x354
	.uleb128 0x2b
	.string	"secTimer"
	.byte	0x6
	.byte	0x85
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"SecM_RandomGenerateJob"
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0xa8c
	.uleb128 0x2d
	.uaword	0x22d
	.uleb128 0x2d
	.uaword	0x26d
	.uleb128 0x2d
	.uaword	0x28b
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"SecM_RandomSeedJob"
	.byte	0x5
	.byte	0x52
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0xabd
	.uleb128 0x2d
	.uaword	0x22d
	.uleb128 0x2d
	.uaword	0x291
	.uleb128 0x2d
	.uaword	0x22d
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"SecM_ComputeKeyVendor"
	.byte	0x4
	.uahalf	0x124
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x4d1
	.uleb128 0x2d
	.uaword	0x3d3
	.uleb128 0x2d
	.uaword	0x534
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE2
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL15
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 32
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 34
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL30
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL41
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL41
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43-1
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52
	.uaword	.LVL59
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL67
	.uaword	.LFE6
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL52
	.uaword	.LVL60-1
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL67
	.uaword	.LFE6
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL58
	.uaword	.LVL60-1
	.uahalf	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL60-1
	.uaword	.LVL67
	.uahalf	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL58
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL60-1
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL63
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL58
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
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
	.string	"constant"
.LASF3:
	.string	"offset"
.LASF1:
	.string	"context"
.LASF5:
	.string	"result"
.LASF6:
	.string	"index"
.LASF2:
	.string	"fillLevel"
.LASF4:
	.string	"pEntropyPool"
	.extern	SecM_ComputeKeyVendor,STT_FUNC,0
	.extern	secTimer,STT_OBJECT,2
	.extern	SecM_RandomGenerateJob,STT_FUNC,0
	.extern	SecM_RandomSeedJob,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
