	.file	"vSecPrim_Hash.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.vSecPrim_switchHashIDFinalize,"ax",@progbits
	.align 1
	.type	vSecPrim_switchHashIDFinalize, @function
vSecPrim_switchHashIDFinalize:
.LFB17:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/vSecPrim_Hash.c"
	.loc 1 512 0
.LVL0:
	.loc 1 518 0
	jnz.a	%a6, .L2
	.loc 1 520 0
	ld.bu	%d15, [%a4] 210
	movh.a	%a15, hi:vSecPrim_digestSizes
	lea	%a15, [%a15] lo:vSecPrim_digestSizes
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	st.w	[%a5]0, %d15
.LVL1:
	.loc 1 521 0
	mov	%d8, 0
	j	.L22
.LVL2:
.L2:
	mov.aa	%a14, %a6
	mov.aa	%a12, %a5
	.loc 1 571 0
	ld.bu	%d15, [%a4] 210
	min.u	%d15, %d15, 14
	movh.a	%a2, hi:vSecPrim_digestSizes
	lea	%a2, [%a2] lo:vSecPrim_digestSizes
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d15, [%a2]0
.LVL3:
.LBB6:
.LBB7:
.LBB8:
.LBB9:
	.loc 1 730 0
	ld.hu	%d2, [%a4] 144
	jne	%d2, 1, .L5
.LVL4:
	ld.w	%d2, [%a5]0
	.loc 1 733 0
	mov	%d8, 8200
	.loc 1 730 0
	jne	%d15, %d2, .L6
	j	.L23
.L5:
	.loc 1 737 0
	jne	%d2, 2, .L8
	ld.w	%d2, [%a5]0
	.loc 1 740 0
	mov	%d8, 8199
	.loc 1 737 0
	jlt.u	%d2, %d15, .L6
.L8:
	.loc 1 754 0
	ld.w	%d2, [%a12]0
	min.u	%d2, %d15, %d2
	st.w	[%a12]0, %d2
	.loc 1 726 0
	lt.u	%d15, %d2, %d15
.LVL5:
.LBE9:
.LBE8:
	.loc 1 610 0
	jne	%d15, 1, .L9
	.loc 1 612 0
	lea	%a13, [%a4] 146
.LVL6:
.L13:
	.loc 1 622 0
	ld.bu	%d2, [%a4] 210
	jeq	%d2, 1, .L11
	jeq	%d2, 2, .L12
	j	.L24
.LVL7:
.L20:
	mov.aa	%a13, %a14
.LVL8:
.L11:
	.loc 1 634 0
	lea	%a4, [%a4] 16
.LVL9:
	mov.aa	%a5, %a13
.LVL10:
	call	esl_finalizeSHA224
.LVL11:
	mov	%d8, %d2
.LVL12:
	j	.L10
.LVL13:
.L21:
	.loc 1 622 0
	mov.aa	%a13, %a14
.LVL14:
.L12:
	.loc 1 638 0
	lea	%a4, [%a4] 16
.LVL15:
	mov.aa	%a5, %a13
.LVL16:
	call	esl_finalizeSHA256
.LVL17:
	mov	%d8, %d2
.LVL18:
	j	.L10
.LVL19:
.L24:
	.loc 1 673 0
	mov	%d8, 8200
.LVL20:
.L10:
	.loc 1 678 0
	eq	%d2, %d8, 0
	and	%d15, %d2
	jz	%d15, .L22
	.loc 1 680 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	ld.w	%d4, [%a12]0
	call	VStdLib_MemCpy
.LVL21:
	j	.L22
.LVL22:
.L25:
	.loc 1 673 0
	mov	%d8, 8200
	j	.L22
.LVL23:
.L6:
	.loc 1 619 0
	jnz	%d8, .L22
	j	.L18
.LVL24:
.L23:
.LBB11:
.LBB10:
	.loc 1 754 0
	ld.w	%d2, [%a5]0
	min.u	%d2, %d15, %d2
	st.w	[%a5]0, %d2
	.loc 1 726 0
	lt.u	%d15, %d2, %d15
.LVL25:
.LBE10:
.LBE11:
	.loc 1 616 0
	mov.aa	%a13, %a6
	j	.L13
.LVL26:
.L18:
	.loc 1 619 0
	mov	%d15, 0
.LVL27:
.L9:
	.loc 1 622 0
	ld.bu	%d2, [%a4] 210
	jeq	%d2, 1, .L20
	jeq	%d2, 2, .L21
	j	.L25
.LVL28:
.L22:
.LBE7:
.LBE6:
	.loc 1 579 0
	mov	%d2, %d8
	ret
.LFE17:
	.size	vSecPrim_switchHashIDFinalize, .-vSecPrim_switchHashIDFinalize
.section .text.vSecPrim_switchHashIDUpdate,"ax",@progbits
	.align 1
	.type	vSecPrim_switchHashIDUpdate, @function
vSecPrim_switchHashIDUpdate:
.LFB16:
	.loc 1 410 0
.LVL29:
	.loc 1 414 0
	ld.bu	%d15, [%a4] 210
	jeq	%d15, 1, .L28
	jeq	%d15, 2, .L29
	j	.L31
.L28:
	.loc 1 425 0
	lea	%a4, [%a4] 16
.LVL30:
	call	esl_updateSHA224
.LVL31:
	ret
.LVL32:
.L29:
	.loc 1 430 0
	lea	%a4, [%a4] 16
.LVL33:
	call	esl_updateSHA256
.LVL34:
	ret
.LVL35:
.L31:
	.loc 1 483 0
	mov	%d2, 8200
.LVL36:
	.loc 1 489 0
	ret
.LFE16:
	.size	vSecPrim_switchHashIDUpdate, .-vSecPrim_switchHashIDUpdate
.section .text.vSecPrim_initHash,"ax",@progbits
	.align 1
	.global	vSecPrim_initHash
	.type	vSecPrim_initHash, @function
vSecPrim_initHash:
.LFB21:
	.loc 1 785 0
.LVL37:
	mov.aa	%a15, %a4
	mov	%d9, %d4
	mov	%d8, %d5
	.loc 1 791 0
	mov	%d15, 8195
	.loc 1 789 0
	jz.a	%a4, .L40
	.loc 1 793 0
	mov	%d4, 196
.LVL38:
	call	esl_CheckWorkSpaceHeader
.LVL39:
	mov	%d15, %d2
.LVL40:
	jnz	%d2, .L40
	.loc 1 797 0
	addi	%d3, %d8, -1
	extr.u	%d3, %d3, 0, 16
	ne	%d2, %d8, 4
.LVL41:
	and.ge.u	%d2, %d3, 2
	jnz	%d2, .L38
.LVL42:
.LBB18:
.LBB19:
	.loc 1 270 0
	jeq	%d9, 1, .L34
	jeq	%d9, 2, .L35
	j	.L41
.L34:
	.loc 1 287 0
	lea	%a12, [%a15] 16
	mov.aa	%a4, %a12
	mov	%d4, 112
	ld.a	%a5, [%a15] 8
	call	esl_initWorkSpaceHeader
.LVL43:
	.loc 1 290 0
	mov.aa	%a4, %a12
	call	esl_initSHA224
.LVL44:
	j	.L36
.L35:
	.loc 1 296 0
	lea	%a12, [%a15] 16
	mov.aa	%a4, %a12
	mov	%d4, 112
	ld.a	%a5, [%a15] 8
	call	esl_initWorkSpaceHeader
.LVL45:
	.loc 1 299 0
	mov.aa	%a4, %a12
	call	esl_initSHA256
.LVL46:
	j	.L36
.LVL47:
.L38:
.LBE19:
.LBE18:
	.loc 1 801 0
	mov	%d15, 8200
.LVL48:
	j	.L40
.LVL49:
.L41:
.LBB21:
.LBB20:
	.loc 1 390 0
	mov	%d15, 8200
.LVL50:
	j	.L40
.LVL51:
.L36:
.LBE20:
.LBE21:
	.loc 1 812 0
	st.b	[%a15] 210, %d9
	.loc 1 813 0
	st.h	[%a15] 144, %d8
	.loc 1 817 0
	mov.aa	%a4, %a15
	mov	%d4, 2688
	call	esl_SetWorkspaceStatus
.LVL52:
	.loc 1 818 0
	mov	%d2, 0
	st.b	[%a15] 211, %d2
.LVL53:
.L40:
	.loc 1 823 0
	mov	%d2, %d15
	ret
.LFE21:
	.size	vSecPrim_initHash, .-vSecPrim_initHash
.section .text.vSecPrim_updateHash,"ax",@progbits
	.align 1
	.global	vSecPrim_updateHash
	.type	vSecPrim_updateHash, @function
vSecPrim_updateHash:
.LFB22:
	.loc 1 839 0
.LVL54:
	.loc 1 843 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 845 0
	mov	%d2, 8195
	.loc 1 843 0
	jnz	%d15, .L43
	mov.aa	%a12, %a5
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 847 0
	mov	%d4, 2688
.LVL55:
	call	esl_CheckWorkSpaceState
.LVL56:
	jnz	%d2, .L43
	.loc 1 853 0
	mov.aa	%a4, %a15
	mov	%d4, %d15
	mov.aa	%a5, %a12
	call	vSecPrim_switchHashIDUpdate
.LVL57:
	.loc 1 856 0
	mov	%d15, 1
.LVL58:
	st.b	[%a15] 211, %d15
.LVL59:
.L43:
	.loc 1 860 0
	ret
.LFE22:
	.size	vSecPrim_updateHash, .-vSecPrim_updateHash
.section .text.vSecPrim_finalizeHash,"ax",@progbits
	.align 1
	.global	vSecPrim_finalizeHash
	.type	vSecPrim_finalizeHash, @function
vSecPrim_finalizeHash:
.LFB23:
	.loc 1 880 0
.LVL60:
	.loc 1 884 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 886 0
	mov	%d8, 8195
	.loc 1 884 0
	jnz	%d15, .L46
	mov.aa	%a15, %a6
	mov.aa	%a13, %a5
	mov.aa	%a12, %a4
	.loc 1 888 0
	mov	%d4, 2688
	call	esl_CheckWorkSpaceState
.LVL61:
	mov	%d8, %d2
.LVL62:
	jnz	%d2, .L46
	.loc 1 895 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a13
	mov.aa	%a6, %a15
	call	vSecPrim_switchHashIDFinalize
.LVL63:
	mov	%d8, %d2
.LVL64:
	.loc 1 900 0
	jz.a	%a15, .L46
	.loc 1 902 0
	mov.aa	%a4, %a12
	lea	%a5, [%a12] 16
	call	esl_ResetAndClearWorkspace
.LVL65:
.L46:
	.loc 1 907 0
	mov	%d2, %d8
	ret
.LFE23:
	.size	vSecPrim_finalizeHash, .-vSecPrim_finalizeHash
.section .text.vSecPrim_digestHash,"ax",@progbits
	.align 1
	.global	vSecPrim_digestHash
	.type	vSecPrim_digestHash, @function
vSecPrim_digestHash:
.LFB24:
	.loc 1 929 0
.LVL66:
	mov.d	%d2, %a5
	mov.d	%d3, %a6
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 933 0
	mov.d	%d2, %a4
	or.eq	%d15, %d2, 0
	.loc 1 935 0
	mov	%d8, 8195
	.loc 1 933 0
	jnz	%d15, .L49
	mov.aa	%a12, %a7
	mov.aa	%a13, %a6
	mov.aa	%a14, %a5
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 938 0
	mov	%d4, 2688
.LVL67:
	call	esl_CheckWorkSpaceState
.LVL68:
	mov	%d8, %d2
.LVL69:
	jnz	%d2, .L49
	.loc 1 943 0
	ld.bu	%d15, [%a15] 211
	.loc 1 945 0
	mov	%d8, 8193
	.loc 1 943 0
	jnz	%d15, .L49
	.loc 1 947 0
	jnz.a	%a12, .L50
	.loc 1 950 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a13
	mov.a	%a6, 0
	call	vSecPrim_switchHashIDFinalize
.LVL70:
	mov	%d8, %d2
.LVL71:
	j	.L49
.L50:
	.loc 1 955 0
	mov.aa	%a4, %a15
	mov	%d4, %d9
	mov.aa	%a5, %a14
	call	vSecPrim_switchHashIDUpdate
.LVL72:
	mov	%d8, %d2
.LVL73:
	.loc 1 957 0
	jnz	%d2, .L49
	.loc 1 959 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a13
	mov.aa	%a6, %a12
	call	vSecPrim_switchHashIDFinalize
.LVL74:
	mov	%d8, %d2
.LVL75:
	.loc 1 960 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 16
	call	esl_ResetAndClearWorkspace
.LVL76:
.L49:
	.loc 1 965 0
	mov	%d2, %d8
	ret
.LFE24:
	.size	vSecPrim_digestHash, .-vSecPrim_digestHash
.section .rodata.MSR_CONST,"a",@progbits
	.type	vSecPrim_digestSizes, @object
	.size	vSecPrim_digestSizes, 15
vSecPrim_digestSizes:
	.byte	20
	.byte	28
	.byte	32
	.byte	48
	.byte	64
	.byte	28
	.byte	32
	.byte	28
	.byte	32
	.byte	48
	.byte	64
	.byte	32
	.byte	64
	.byte	20
	.byte	16
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
	.file 7 "../../../BSW/VStdLib/vstdlib.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/vSecPrim_types.h"
	.file 9 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib.h"
	.file 10 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x11b1
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/vSecPrim_Hash.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x15f
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
	.uaword	0x15f
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1a7
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1d7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1d7
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
	.string	"actPlatformUint8"
	.byte	0x3
	.byte	0x4d
	.uaword	0x17f
	.uleb128 0x2
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x199
	.uleb128 0x2
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1c9
	.uleb128 0x2
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x23e
	.uleb128 0x2
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x256
	.uleb128 0x2
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x26f
	.uleb128 0x2
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x2a3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x60
	.byte	0x4
	.uahalf	0x250
	.uaword	0x31e
	.uleb128 0x5
	.string	"H"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x31e
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x253
	.uaword	0x2a3
	.byte	0x14
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x253
	.uaword	0x2a3
	.byte	0x18
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x254
	.uaword	0x2b1
	.byte	0x1c
	.uleb128 0x5
	.string	"buffer"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x32e
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.uaword	0x2a3
	.uaword	0x32e
	.uleb128 0x8
	.uaword	0x2c6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.uaword	0x288
	.uaword	0x33e
	.uleb128 0x8
	.uaword	0x2c6
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.string	"actSHASTRUCT"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x2d2
	.uleb128 0x4
	.byte	0x70
	.byte	0x4
	.uahalf	0x259
	.uaword	0x3b6
	.uleb128 0x5
	.string	"H"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x3b6
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x2a3
	.byte	0x20
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x2a3
	.byte	0x24
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x2b1
	.byte	0x28
	.uleb128 0x5
	.string	"result_length"
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x295
	.byte	0x2c
	.uleb128 0x5
	.string	"buffer"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x32e
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.uaword	0x2a3
	.uaword	0x3c6
	.uleb128 0x8
	.uaword	0x2c6
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"actSHA224STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x353
	.uleb128 0x9
	.string	"actSHA256STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x353
	.uleb128 0x2
	.string	"eslt_Size8"
	.byte	0x5
	.byte	0x3f
	.uaword	0x23e
	.uleb128 0x2
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x256
	.uleb128 0x2
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x26f
	.uleb128 0x2
	.string	"eslt_Byte"
	.byte	0x5
	.byte	0x46
	.uaword	0x3f6
	.uleb128 0x2
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x41b
	.uleb128 0x2
	.string	"eslt_Mode"
	.byte	0x5
	.byte	0x4c
	.uaword	0x3f6
	.uleb128 0x2
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x408
	.uleb128 0x2
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x41b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.string	"eslt_HashAlgorithm"
	.byte	0x5
	.byte	0xdb
	.uaword	0x452
	.uleb128 0x9
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x4cd
	.uleb128 0xa
	.byte	0x4
	.uaword	0x4d3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x4
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x521
	.uleb128 0x5
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x43f
	.byte	0
	.uleb128 0x5
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x463
	.byte	0x4
	.uleb128 0x5
	.string	"watchdog"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x4b1
	.byte	0x8
	.uleb128 0x5
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x478
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x4d5
	.uleb128 0x4
	.byte	0x70
	.byte	0x5
	.uahalf	0x4b0
	.uaword	0x565
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x4b2
	.uaword	0x521
	.byte	0
	.uleb128 0x5
	.string	"wsSHA1"
	.byte	0x5
	.uahalf	0x4b3
	.uaword	0x33e
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceSHA1"
	.byte	0x5
	.uahalf	0x4b4
	.uaword	0x53e
	.uleb128 0x4
	.byte	0x80
	.byte	0x5
	.uahalf	0x4b6
	.uaword	0x5a9
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x4b8
	.uaword	0x521
	.byte	0
	.uleb128 0x5
	.string	"wsSHA224"
	.byte	0x5
	.uahalf	0x4b9
	.uaword	0x3c6
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceSHA224"
	.byte	0x5
	.uahalf	0x4ba
	.uaword	0x580
	.uleb128 0x4
	.byte	0x80
	.byte	0x5
	.uahalf	0x4bc
	.uaword	0x5ef
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x4be
	.uaword	0x521
	.byte	0
	.uleb128 0x5
	.string	"wsSHA256"
	.byte	0x5
	.uahalf	0x4bf
	.uaword	0x3de
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceSHA256"
	.byte	0x5
	.uahalf	0x4c0
	.uaword	0x5c6
	.uleb128 0xa
	.byte	0x4
	.uaword	0x42e
	.uleb128 0xa
	.byte	0x4
	.uaword	0x43f
	.uleb128 0x2
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x295
	.uleb128 0x2
	.string	"VStdLib_CntType"
	.byte	0x7
	.byte	0x81
	.uaword	0x1ec
	.uleb128 0xc
	.uaword	0x43f
	.uleb128 0x2
	.string	"vSecPrimType_OutputBufferFlag"
	.byte	0x8
	.byte	0x58
	.uaword	0x408
	.uleb128 0x2
	.string	"vSecPrimType_HashAlgorithm"
	.byte	0x8
	.byte	0x59
	.uaword	0x497
	.uleb128 0x2
	.string	"vSecPrimType_CallUpdateFlag"
	.byte	0x8
	.byte	0x5a
	.uaword	0x42e
	.uleb128 0xd
	.byte	0x80
	.byte	0x8
	.byte	0x5f
	.uaword	0x6ef
	.uleb128 0xe
	.string	"wsSHA1"
	.byte	0x8
	.byte	0x61
	.uaword	0x565
	.uleb128 0xe
	.string	"wsSHA2_224"
	.byte	0x8
	.byte	0x64
	.uaword	0x5a9
	.uleb128 0xe
	.string	"wsSHA2_256"
	.byte	0x8
	.byte	0x65
	.uaword	0x5ef
	.byte	0
	.uleb128 0x2
	.string	"vSecPrimType_WorkSpaceUnionHash"
	.byte	0x8
	.byte	0x7c
	.uaword	0x6b4
	.uleb128 0xf
	.byte	0xd4
	.byte	0x8
	.byte	0x7f
	.uaword	0x778
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.byte	0x81
	.uaword	0x521
	.byte	0
	.uleb128 0x11
	.string	"wsHash"
	.byte	0x8
	.byte	0x82
	.uaword	0x6ef
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.byte	0x84
	.uaword	0x64a
	.byte	0x90
	.uleb128 0x11
	.string	"tempHash"
	.byte	0x8
	.byte	0x85
	.uaword	0x778
	.byte	0x92
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.byte	0x86
	.uaword	0x66f
	.byte	0xd2
	.uleb128 0x11
	.string	"updateCalled"
	.byte	0x8
	.byte	0x87
	.uaword	0x691
	.byte	0xd3
	.byte	0
	.uleb128 0x7
	.uaword	0x42e
	.uaword	0x788
	.uleb128 0x8
	.uaword	0x2c6
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.string	"vSecPrimType_WorkSpaceHash"
	.byte	0x8
	.byte	0x89
	.uaword	0x716
	.uleb128 0x12
	.string	"vSecPrim_finalizeHashWithLengthHandling"
	.byte	0x1
	.uahalf	0x253
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x83e
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x254
	.uaword	0x83e
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x255
	.uaword	0x612
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x256
	.uaword	0x60c
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x257
	.uaword	0x645
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x259
	.uaword	0x618
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x150
	.uleb128 0x15
	.string	"outputBuffer"
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x60c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x788
	.uleb128 0x12
	.string	"vSecPrim_finalizeHashLengthCheck"
	.byte	0x1
	.uahalf	0x2cf
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x8b0
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0x8b0
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x612
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2d2
	.uaword	0x645
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2d3
	.uaword	0x8bb
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0x618
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8b6
	.uleb128 0xc
	.uaword	0x788
	.uleb128 0xa
	.byte	0x4
	.uaword	0x150
	.uleb128 0x16
	.string	"vSecPrim_switchHashIDFinalize"
	.byte	0x1
	.uahalf	0x1fc
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa37
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x83e
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x612
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x60c
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x201
	.uaword	0x618
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x202
	.uaword	0x150
	.byte	0
	.uleb128 0x1a
	.uaword	0x7aa
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x23b
	.uleb128 0x1b
	.uaword	0x804
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	0x7f8
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	0x7ec
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x7e0
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x1d
	.uaword	0x810
	.uaword	.LLST8
	.uleb128 0x1d
	.uaword	0x81c
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	0x828
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x844
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x9e4
	.uleb128 0x1b
	.uaword	0x897
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	0x88b
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	0x87f
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x873
	.uaword	.LLST7
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1d
	.uaword	0x8a3
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL11
	.uaword	0xf71
	.uaword	0xa01
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x20
	.uaword	.LVL17
	.uaword	0xfa4
	.uaword	0xa1e
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x22
	.uaword	.LVL21
	.uaword	0xfd7
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"vSecPrim_updateHashMapReturnValue"
	.byte	0x1
	.uahalf	0x2b8
	.byte	0x1
	.byte	0x1
	.uaword	0xa88
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2b9
	.uaword	0xa88
	.uleb128 0x24
	.string	"referenceRetVal"
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0x618
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x618
	.uleb128 0x16
	.string	"vSecPrim_switchHashIDUpdate"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb2f
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x197
	.uaword	0x83e
	.uaword	.LLST16
	.uleb128 0x17
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x198
	.uaword	0x43f
	.uaword	.LLST17
	.uleb128 0x25
	.string	"input"
	.byte	0x1
	.uahalf	0x199
	.uaword	0xb2f
	.uaword	.LLST18
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x618
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	.LVL31
	.uaword	0x100a
	.uaword	0xb1b
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x22
	.uaword	.LVL34
	.uaword	0x103a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb35
	.uleb128 0xc
	.uaword	0x42e
	.uleb128 0x12
	.string	"vSecPrim_switchHashIDInit"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0xb87
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x108
	.uaword	0x83e
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x109
	.uaword	0x66f
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x618
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"vSecPrim_initHash"
	.byte	0x1
	.uahalf	0x30d
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcb2
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x30e
	.uaword	0x83e
	.uaword	.LLST20
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x30f
	.uaword	0x66f
	.uaword	.LLST21
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x310
	.uaword	0x64a
	.uaword	.LLST22
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x312
	.uaword	0x618
	.uaword	.LLST23
	.uleb128 0x1e
	.uaword	0xb3a
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x327
	.uaword	0xc80
	.uleb128 0x1b
	.uaword	0xb6e
	.uaword	.LLST24
	.uleb128 0x1b
	.uaword	0xb62
	.uaword	.LLST25
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.uaword	0xb7a
	.uaword	.LLST26
	.uleb128 0x20
	.uaword	.LVL43
	.uaword	0x106a
	.uaword	0xc40
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL44
	.uaword	0x10a6
	.uaword	0xc54
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL45
	.uaword	0x106a
	.uaword	0xc6e
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL46
	.uaword	0x10ca
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL39
	.uaword	0x10ee
	.uaword	0xc9a
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xc4
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL52
	.uaword	0x112b
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xa80
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"vSecPrim_updateHash"
	.byte	0x1
	.uahalf	0x343
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd59
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x344
	.uaword	0x83e
	.uaword	.LLST27
	.uleb128 0x17
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x345
	.uaword	0x645
	.uaword	.LLST28
	.uleb128 0x25
	.string	"input"
	.byte	0x1
	.uahalf	0x346
	.uaword	0xb2f
	.uaword	.LLST29
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x348
	.uaword	0x618
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	.LVL56
	.uaword	0x1157
	.uaword	0xd3c
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xa80
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL57
	.uaword	0xa8e
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"vSecPrim_finalizeHash"
	.byte	0x1
	.uahalf	0x36c
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe1a
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x36d
	.uaword	0x83e
	.uaword	.LLST31
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x36e
	.uaword	0x612
	.uaword	.LLST32
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x36f
	.uaword	0x60c
	.uaword	.LLST33
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x371
	.uaword	0x618
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	.LVL61
	.uaword	0x1157
	.uaword	0xde3
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xa80
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL63
	.uaword	0x8c1
	.uaword	0xe03
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL65
	.uaword	0x1188
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"vSecPrim_digestHash"
	.byte	0x1
	.uahalf	0x39b
	.byte	0x1
	.uaword	0x618
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf3a
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x83e
	.uaword	.LLST35
	.uleb128 0x17
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x39d
	.uaword	0x645
	.uaword	.LLST36
	.uleb128 0x25
	.string	"input"
	.byte	0x1
	.uahalf	0x39e
	.uaword	0xb2f
	.uaword	.LLST37
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x39f
	.uaword	0x612
	.uaword	.LLST38
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3a0
	.uaword	0x60c
	.uaword	.LLST39
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x3a2
	.uaword	0x618
	.uaword	.LLST40
	.uleb128 0x20
	.uaword	.LVL68
	.uaword	0x1157
	.uaword	0xec4
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xa80
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL70
	.uaword	0x8c1
	.uaword	0xee3
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL72
	.uaword	0xa8e
	.uaword	0xf03
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL74
	.uaword	0x8c1
	.uaword	0xf23
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL76
	.uaword	0x1188
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uaword	0x42e
	.uaword	0xf4a
	.uleb128 0x8
	.uaword	0x2c6
	.byte	0xe
	.byte	0
	.uleb128 0x27
	.string	"vSecPrim_digestSizes"
	.byte	0x1
	.byte	0x2f
	.uaword	0xf6c
	.byte	0x5
	.byte	0x3
	.uaword	vSecPrim_digestSizes
	.uleb128 0xc
	.uaword	0xf3a
	.uleb128 0x28
	.byte	0x1
	.string	"esl_finalizeSHA224"
	.byte	0x9
	.uahalf	0xc24
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0xf9e
	.uleb128 0x29
	.uaword	0xf9e
	.uleb128 0x29
	.uaword	0x60c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x5a9
	.uleb128 0x28
	.byte	0x1
	.string	"esl_finalizeSHA256"
	.byte	0x9
	.uahalf	0xc6a
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0xfd1
	.uleb128 0x29
	.uaword	0xfd1
	.uleb128 0x29
	.uaword	0x60c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x5ef
	.uleb128 0x2a
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x7
	.uahalf	0x445
	.byte	0x1
	.byte	0x1
	.uaword	0x1001
	.uleb128 0x29
	.uaword	0x1001
	.uleb128 0x29
	.uaword	0x1003
	.uleb128 0x29
	.uaword	0x62e
	.byte	0
	.uleb128 0x2b
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1009
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0x1
	.string	"esl_updateSHA224"
	.byte	0x9
	.uahalf	0xc0b
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x103a
	.uleb128 0x29
	.uaword	0xf9e
	.uleb128 0x29
	.uaword	0x645
	.uleb128 0x29
	.uaword	0xb2f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"esl_updateSHA256"
	.byte	0x9
	.uahalf	0xc52
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x106a
	.uleb128 0x29
	.uaword	0xfd1
	.uleb128 0x29
	.uaword	0x645
	.uleb128 0x29
	.uaword	0xb2f
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"esl_initWorkSpaceHeader"
	.byte	0x9
	.byte	0x71
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x10a0
	.uleb128 0x29
	.uaword	0x10a0
	.uleb128 0x29
	.uaword	0x645
	.uleb128 0x29
	.uaword	0x4b1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x521
	.uleb128 0x28
	.byte	0x1
	.string	"esl_initSHA224"
	.byte	0x9
	.uahalf	0xbf4
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x10ca
	.uleb128 0x29
	.uaword	0xf9e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"esl_initSHA256"
	.byte	0x9
	.uahalf	0xc3c
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x10ee
	.uleb128 0x29
	.uaword	0xfd1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeader"
	.byte	0xa
	.byte	0x72
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x1120
	.uleb128 0x29
	.uaword	0x1120
	.uleb128 0x29
	.uaword	0x43f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1126
	.uleb128 0xc
	.uaword	0x521
	.uleb128 0x2e
	.byte	0x1
	.string	"esl_SetWorkspaceStatus"
	.byte	0xa
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x1157
	.uleb128 0x29
	.uaword	0x10a0
	.uleb128 0x29
	.uaword	0x463
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"esl_CheckWorkSpaceState"
	.byte	0xa
	.byte	0x83
	.byte	0x1
	.uaword	0x618
	.byte	0x1
	.uaword	0x1188
	.uleb128 0x29
	.uaword	0x1120
	.uleb128 0x29
	.uaword	0x463
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"esl_ResetAndClearWorkspace"
	.byte	0xa
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x10a0
	.uleb128 0x29
	.uaword	0x1001
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL13
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL28
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL11-1
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL17-1
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL4
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL13
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2442
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL39-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL42
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL42
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL59
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56-1
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL59
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL65
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL61-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL65
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL61-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63-1
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL68-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL68-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL68-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74-1
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x58
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"messageDigestLength"
.LASF3:
	.string	"header"
.LASF9:
	.string	"maxDigestLength"
.LASF6:
	.string	"workSpace"
.LASF4:
	.string	"outputLengthFlag"
.LASF11:
	.string	"truncateDigest"
.LASF1:
	.string	"hi_count"
.LASF10:
	.string	"retVal"
.LASF2:
	.string	"buffer_used"
.LASF8:
	.string	"messageDigest"
.LASF5:
	.string	"hashID"
.LASF12:
	.string	"inputLength"
.LASF0:
	.string	"low_count"
	.extern	esl_ResetAndClearWorkspace,STT_FUNC,0
	.extern	esl_CheckWorkSpaceState,STT_FUNC,0
	.extern	esl_SetWorkspaceStatus,STT_FUNC,0
	.extern	esl_initSHA256,STT_FUNC,0
	.extern	esl_initSHA224,STT_FUNC,0
	.extern	esl_initWorkSpaceHeader,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeader,STT_FUNC,0
	.extern	esl_updateSHA256,STT_FUNC,0
	.extern	esl_updateSHA224,STT_FUNC,0
	.extern	VStdLib_MemCpy,STT_FUNC,0
	.extern	esl_finalizeSHA256,STT_FUNC,0
	.extern	esl_finalizeSHA224,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
