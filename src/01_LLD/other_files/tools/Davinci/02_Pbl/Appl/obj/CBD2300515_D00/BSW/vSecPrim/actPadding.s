	.file	"actPadding.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actPaddingInit,"ax",@progbits
	.align 1
	.global	actPaddingInit
	.type	actPaddingInit, @function
actPaddingInit:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.c"
	.loc 1 60 0
.LVL0:
	.loc 1 64 0
	eq	%d15, %d4, 16
	jnz	%d15, .L4
	eq	%d15, %d4, 32
	jnz	%d15, .L4
	jz	%d4, .L4
	.loc 1 76 0
	mov	%d2, 247
	ret
.L4:
	.loc 1 70 0
	mov	%d2, 0
.LVL1:
	.loc 1 83 0
	ret
.LFE15:
	.size	actPaddingInit, .-actPaddingInit
.section .text.actPaddingPad,"ax",@progbits
	.align 1
	.global	actPaddingPad
	.type	actPaddingPad, @function
actPaddingPad:
.LFB16:
	.loc 1 96 0
.LVL2:
	.loc 1 101 0
	ld.w	%d15, [%a4]0
.LVL3:
	.loc 1 105 0
	mov	%d2, 248
	.loc 1 103 0
	jge.u	%d15, %d5, .L6
	mov.aa	%a15, %a4
.LVL4:
	.loc 1 110 0
	sub	%d8, %d5, %d15
.LVL5:
	.loc 1 113 0
	eq	%d2, %d4, 16
	jnz	%d2, .L8
	eq	%d2, %d4, 32
	jnz	%d2, .L9
	.loc 1 141 0
	mov	%d2, 246
	.loc 1 113 0
	jnz	%d4, .L7
	.loc 1 122 0
	mov	%d8, 0
.LVL6:
	seln	%d2, %d15, %d15, 248
	j	.L7
.LVL7:
.L8:
	.loc 1 128 0
	addsc.a	%a12, %a5, %d15, 0
	mov.aa	%a4, %a12
.LVL8:
	mov	%d4, 0
.LVL9:
	mov	%d5, %d8
.LVL10:
	call	VStdLib_MemSet
.LVL11:
	.loc 1 129 0
	mov	%d2, -128
	st.b	[%a12]0, %d2
	.loc 1 109 0
	mov	%d2, 0
	.loc 1 131 0
	j	.L7
.LVL12:
.L9:
	.loc 1 135 0
	addsc.a	%a4, %a5, %d15, 0
.LVL13:
	and	%d4, %d8, 255
.LVL14:
	mov	%d5, %d8
.LVL15:
	call	VStdLib_MemSet
.LVL16:
	.loc 1 109 0
	mov	%d2, 0
	.loc 1 137 0
	j	.L7
.LVL17:
.L7:
	.loc 1 147 0
	add	%d15, %d8
.LVL18:
	st.w	[%a15]0, %d15
.LVL19:
.L6:
	.loc 1 151 0
	ret
.LFE16:
	.size	actPaddingPad, .-actPaddingPad
.section .text.actPaddingUnpad,"ax",@progbits
	.align 1
	.global	actPaddingUnpad
	.type	actPaddingUnpad, @function
actPaddingUnpad:
.LFB17:
	.loc 1 164 0
.LVL20:
	.loc 1 174 0
	eq	%d15, %d4, 16
	jnz	%d15, .L17
	eq	%d15, %d4, 32
	jnz	%d15, .L18
	jnz	%d4, .L33
	j	.L26
.L17:
	.loc 1 184 0
	add	%d5, -1
.LVL21:
	jz	%d5, .L20
	.loc 1 186 0
	addsc.a	%a15, %a5, %d5, 0
	ld.bu	%d15, [%a15]0
	mov.a	%a15, %d5
	add.a	%a15, -1
	jz	%d15, .L21
	j	.L20
.LVL22:
.L22:
	addsc.a	%a2, %a5, %d5, 0
	ld.bu	%d15, [%a2]0
	jnz	%d15, .L20
.L21:
	.loc 1 184 0 discriminator 2
	add	%d5, -1
.LVL23:
	loop	%a15, .L22
.L20:
	.loc 1 192 0
	addsc.a	%a5, %a5, %d5, 0
.LVL24:
	ld.bu	%d15, [%a5]0
	ne	%d15, %d15, 128
	mov	%d2, 246
	jnz	%d15, .L31
	j	.L26
.LVL25:
.L18:
	.loc 1 206 0
	addsc.a	%a15, %a5, %d5, 0
	ld.bu	%d3, [%a15] -1
.LVL26:
	mov	%d2, 246
	.loc 1 208 0
	jlt.u	%d5, %d3, .L31
	.loc 1 214 0
	sub	%d4, %d5, %d3
.LVL27:
	.loc 1 216 0
	jge.u	%d4, %d5, .L30
	addsc.a	%a2, %a5, %d4, 0
	mov.d	%d15, %a5
	add	%d5, %d15
.LVL28:
	mov	%d2, 0
	.loc 1 220 0
	mov.d	%d15, %a2
	not	%d15
	mov.a	%a3, %d15
	addsc.a	%a15, %a3, %d5, 0
.LVL29:
.L25:
	.loc 1 218 0
	ld.bu	%d15, [%a2+]1
.LVL30:
	.loc 1 220 0
	eq	%d15, %d15, %d3
	sel	%d2, %d15, %d2, 246
.LVL31:
	loop	%a15, .L25
	.loc 1 214 0
	mov	%d5, %d4
.LVL32:
	j	.L16
.LVL33:
.L33:
	.loc 1 171 0
	mov	%d5, 0
.LVL34:
	.loc 1 229 0
	mov	%d2, 246
.LVL35:
.L16:
	.loc 1 235 0
	jnz	%d2, .L31
.LVL36:
.L26:
	.loc 1 237 0
	st.w	[%a4]0, %d5
	mov	%d2, 0
	ret
.LVL37:
.L30:
	.loc 1 214 0
	mov	%d5, %d4
.LVL38:
	j	.L26
.LVL39:
.L31:
	.loc 1 241 0
	ret
.LFE17:
	.size	actPaddingUnpad, .-actPaddingUnpad
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
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../BSW/VStdLib/vstdlib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4b5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.c"
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
	.uaword	0x14d
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1b7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1b7
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
	.string	"actPlatformUint8"
	.byte	0x3
	.byte	0x4d
	.uaword	0x16d
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1a9
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21e
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x236
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x25c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x285
	.uleb128 0x5
	.uaword	0x24f
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x25c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x5
	.byte	0x81
	.uaword	0x1cc
	.uleb128 0x6
	.byte	0x1
	.string	"actPaddingInit"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x28a
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x305
	.uleb128 0x7
	.string	"mode"
	.byte	0x1
	.byte	0x3b
	.uaword	0x24f
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3d
	.uaword	0x28a
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"actPaddingPad"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x28a
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3d9
	.uleb128 0x9
	.string	"mode"
	.byte	0x1
	.byte	0x5e
	.uaword	0x24f
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5e
	.uaword	0x26a
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5e
	.uaword	0x3d9
	.uaword	.LLST2
	.uleb128 0x9
	.string	"buffer"
	.byte	0x1
	.byte	0x5f
	.uaword	0x3df
	.uaword	.LLST3
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0x61
	.uaword	0x28a
	.uaword	.LLST4
	.uleb128 0xc
	.string	"pad"
	.byte	0x1
	.byte	0x62
	.uaword	0x26a
	.uaword	.LLST5
	.uleb128 0xc
	.string	"used"
	.byte	0x1
	.byte	0x63
	.uaword	0x26a
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LVL11
	.uaword	0x48c
	.uaword	0x3b8
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL16
	.uaword	0x48c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x24f
	.uleb128 0x6
	.byte	0x1
	.string	"actPaddingUnpad"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	0x28a
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48c
	.uleb128 0x9
	.string	"mode"
	.byte	0x1
	.byte	0xa2
	.uaword	0x24f
	.uaword	.LLST7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa2
	.uaword	0x26a
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa2
	.uaword	0x3d9
	.byte	0x1
	.byte	0x64
	.uleb128 0x9
	.string	"buffer"
	.byte	0x1
	.byte	0xa3
	.uaword	0x27f
	.uaword	.LLST9
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa5
	.uaword	0x28a
	.uaword	.LLST10
	.uleb128 0xc
	.string	"pad"
	.byte	0x1
	.byte	0xa6
	.uaword	0x24f
	.uaword	.LLST11
	.uleb128 0xc
	.string	"unpad"
	.byte	0x1
	.byte	0xa7
	.uaword	0x26a
	.uaword	.LLST12
	.uleb128 0xc
	.string	"index"
	.byte	0x1
	.byte	0xa8
	.uaword	0x26a
	.uaword	.LLST13
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x5
	.uahalf	0x431
	.byte	0x1
	.byte	0x1
	.uaword	0x4b6
	.uleb128 0x12
	.uaword	0x4b6
	.uleb128 0x12
	.uaword	0x16d
	.uleb128 0x12
	.uaword	0x2ab
	.byte	0
	.uleb128 0x13
	.byte	0x4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL39
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -1
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x75
	.sleb128 -1
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -1
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x7
	.byte	0x85
	.sleb128 0
	.byte	0x20
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
.LASF0:
	.string	"buffer_size"
.LASF2:
	.string	"result"
.LASF1:
	.string	"buffer_used"
	.extern	VStdLib_MemSet,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
