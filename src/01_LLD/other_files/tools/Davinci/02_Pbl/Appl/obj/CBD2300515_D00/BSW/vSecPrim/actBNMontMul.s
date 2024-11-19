	.file	"actBNMontMul.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNMontMul,"ax",@progbits
	.align 1
	.global	actBNMontMul
	.type	actBNMontMul, @function
actBNMontMul:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNMontMul.c"
	.loc 1 93 0
.LVL0:
	sub.a	%SP, 88
.LCFI0:
	mov.aa	%a15, %a4
	st.a	[%SP] 64, %a5
	st.a	[%SP] 52, %a6
	.loc 1 94 0
	ld.a	%a2, [%a7]0
	st.a	[%SP] 60, %a2
.LVL1:
	.loc 1 95 0
	ld.w	%d15, [%a7] 4
	st.w	[%SP] 24, %d15
.LVL2:
	.loc 1 96 0
	ld.w	%d15, [%a7] 16
.LVL3:
	st.w	[%SP] 68, %d15
.LVL4:
	.loc 1 102 0
	ld.a	%a4, [%SP] 88
.LVL5:
	call	actWatchdogTriggerFunction
.LVL6:
	.loc 1 105 0
	ld.a	%a4, [%SP] 52
	ld.w	%d4, [%SP] 24
	add	%d4, 1
	mov	%d5, 0
	call	actBNSet
.LVL7:
	.loc 1 108 0
	ld.w	%d15, [%SP] 24
.LVL8:
	jz	%d15, .L2
	.loc 1 142 0
	sh	%d15, 2
	ld.a	%a2, [%SP] 52
	addsc.a	%a2, %a2, %d15, 0
	st.a	[%SP] 56, %a2
	.loc 1 143 0
	add	%d15, -4
	ld.a	%a2, [%SP] 52
	addsc.a	%a2, %a2, %d15, 0
	st.a	[%SP] 72, %a2
	st.a	[%SP] 28, %a15
	mov	%d15, 0
	st.w	[%SP] 32, %d15
	ld.a	%a15, [%SP] 64
.LVL9:
	add.a	%a15, 4
	st.a	[%SP] 76, %a15
	ld.a	%a15, [%SP] 52
	add.a	%a15, 4
	st.a	[%SP] 80, %a15
	ld.a	%a15, [%SP] 60
	add.a	%a15, 4
	st.a	[%SP] 84, %a15
.LVL10:
.L5:
	.loc 1 115 0
	ld.a	%a15, [%SP] 28
	ld.w	%d15, [%a15]0
	mul.u	%e2, %d15, 1
	mov.a	%a12, %d2
	mov.a	%a13, %d3
	ld.a	%a15, [%SP] 64
	ld.w	%d15, [%a15]0
	ld.a	%a15, [%SP] 52
	ld.w	%d2, [%a15]0
	mov	%d3, 0
	mov.d	%d4, %a12
	madd.u	%e8, %e2, %d15, %d4
	mov.d	%d5, %a13
	madd	%d9, %d9, %d15, %d5
.LVL11:
	.loc 1 117 0
	mov	%d12, %d8
	st.w	[%a15]0, %d8
.LVL12:
	.loc 1 119 0
	ld.w	%d15, [%SP] 68
	mul	%d12, %d15
	.loc 1 123 0
	mov	%d13, 0
	ld.a	%a15, [%SP] 60
	ld.w	%d15, [%a15]0
	st.w	[%SP] 44, %d8
	mov	%d2, 0
	st.w	[%SP] 48, %d2
	ld.d	%e4, [%SP] 44
	madd.u	%e10, %e4, %d15, %d12
	madd	%d11, %d11, %d15, %d13
.LVL13:
	.loc 1 126 0
	ld.w	%d15, [%SP] 24
	jlt.u	%d15, 2, .L3
	ld.w	%d14, [%SP] 76
	ld.a	%a15, [%SP] 80
	ld.a	%a14, [%SP] 84
	st.d	[%SP] 16, %e12
	mov.d	%d12, %a12
	mov.d	%d13, %a13
	mov.a	%a12, %d14
	ld.a	%a13, [%SP] 24
	mov	%d14, 1
.LVL14:
.L4:
	.loc 1 130 0 discriminator 3
	ld.w	%d8, [%a15]0
	st.w	[%SP]0, %d9
	mov	%d2, 0
	st.w	[%SP] 4, %d2
	ld.d	%e4, [%SP]0
	madd.u	%e8, %e4, %d8, 1
	ld.w	%d15, [%a12+]4
	madd.u	%e8, %e8, %d15, %d12
	madd	%d9, %d9, %d15, %d13
.LVL15:
	.loc 1 134 0 discriminator 3
	ld.w	%d15, [%a14+]4
	st.w	[%SP] 8, %d11
	st.w	[%SP] 12, %d2
	ld.w	%d6, [%SP] 16
	ld.d	%e4, [%SP] 8
	madd.u	%e2, %e4, %d15, %d6
	ld.w	%d4, [%SP] 20
	madd	%d3, %d3, %d15, %d4
	mov	%d15, 0
	addx	%d10, %d2, %d8
	addc	%d11, %d3, %d15
.LVL16:
	.loc 1 136 0 discriminator 3
	st.w	[%a15] -4, %d10
	.loc 1 138 0 discriminator 3
	ld.a	%a4, [%SP] 88
	call	actWatchdogTriggerFunction
.LVL17:
	.loc 1 126 0 discriminator 3
	add	%d14, 1
.LVL18:
	add.a	%a15, 4
	mov.d	%d5, %a13
	jne	%d14, %d5, .L4
.LVL19:
.L3:
	.loc 1 142 0 discriminator 2
	mov	%d15, 0
	mov	%d2, 0
	addx	%d4, %d9, %d11
	st.w	[%SP] 36, %d4
	addc	%d2, %d15, %d2
	st.w	[%SP] 40, %d2
	ld.a	%a15, [%SP] 56
	ld.w	%d2, [%a15]0
	ld.d	%e4, [%SP] 36
	madd.u	%e2, %e4, %d2, 1
.LVL20:
	.loc 1 143 0 discriminator 2
	ld.a	%a15, [%SP] 72
	st.w	[%a15]0, %d2
	.loc 1 144 0 discriminator 2
	ld.a	%a15, [%SP] 56
	st.w	[%a15]0, %d3
	.loc 1 146 0 discriminator 2
	ld.a	%a4, [%SP] 88
	call	actWatchdogTriggerFunction
.LVL21:
	.loc 1 108 0 discriminator 2
	ld.w	%d15, [%SP] 32
	add	%d15, 1
	st.w	[%SP] 32, %d15
.LVL22:
	ld.a	%a15, [%SP] 28
	add.a	%a15, 4
	st.a	[%SP] 28, %a15
	ld.w	%d2, [%SP] 24
	jne	%d15, %d2, .L5
.LVL23:
.L2:
	.loc 1 152 0
	ld.w	%d15, [%SP] 24
	ld.a	%a2, [%SP] 52
	addsc.a	%a15, %a2, %d15, 2
	ld.w	%d15, [%a15]0
	jne	%d15, 1, .L6
	.loc 1 155 0
	mov.aa	%a4, %a2
	ld.a	%a5, [%SP] 60
	mov.aa	%a6, %a2
	ld.w	%d4, [%SP] 24
	call	actBNSub
.LVL24:
	.loc 1 156 0
	mov	%d15, 0
	st.w	[%a15]0, %d15
	j	.L7
.L6:
	.loc 1 160 0
	ld.a	%a4, [%SP] 52
	ld.a	%a5, [%SP] 60
	ld.w	%d4, [%SP] 24
	call	actBNCompare
.LVL25:
	lt.u	%d2, %d2, 17
	jnz	%d2, .L7
	.loc 1 162 0
	ld.a	%a4, [%SP] 88
	call	actWatchdogTriggerFunction
.LVL26:
	.loc 1 163 0
	ld.a	%a4, [%SP] 52
	ld.a	%a5, [%SP] 60
	mov.aa	%a6, %a4
	ld.w	%d4, [%SP] 24
	call	actBNSub
.LVL27:
.L7:
	.loc 1 167 0
	ld.a	%a4, [%SP] 88
	call	actWatchdogTriggerFunction
.LVL28:
	ret
.LFE15:
	.size	actBNMontMul, .-actBNMontMul
.section .text.actBNMontMulCopy,"ax",@progbits
	.align 1
	.global	actBNMontMulCopy
	.type	actBNMontMulCopy, @function
actBNMontMulCopy:
.LFB16:
	.loc 1 183 0
.LVL29:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a12, %a4
	mov.aa	%a13, %a6
	mov.aa	%a15, %a7
	.loc 1 186 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	call	actBNMontMul
.LVL30:
	.loc 1 188 0
	ld.w	%d15, [%a15] 4
	jz	%d15, .L10
	mov.aa	%a6, %a13
	mov.aa	%a4, %a12
	mov	%d15, 0
.LVL31:
.L12:
	.loc 1 190 0 discriminator 3
	ld.w	%d2, [%a6+]4
	st.w	[%a4+]4, %d2
	.loc 1 188 0 discriminator 3
	add	%d15, 1
.LVL32:
	ld.w	%d2, [%a15] 4
	jlt.u	%d15, %d2, .L12
.LVL33:
.L10:
	ret
.LFE16:
	.size	actBNMontMulCopy, .-actBNMontMulCopy
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
	.byte	0x4
	.uaword	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x58
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x664
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNMontMul.c"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1ac
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
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x19e
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1d2
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x1ff
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x218
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x231
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x231
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x23f
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x231
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x301
	.uleb128 0x5
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x301
	.byte	0
	.uleb128 0x5
	.string	"m_length"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x24d
	.byte	0x4
	.uleb128 0x5
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x24d
	.byte	0x8
	.uleb128 0x5
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x301
	.byte	0xc
	.uleb128 0x5
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x262
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x262
	.uleb128 0x7
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x2a8
	.uleb128 0x8
	.byte	0x1
	.string	"actBNMontMul"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x502
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x5a
	.uaword	0x502
	.uaword	.LLST0
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x5a
	.uaword	0x502
	.uaword	.LLST1
	.uleb128 0x9
	.string	"A"
	.byte	0x1
	.byte	0x5b
	.uaword	0x301
	.uaword	.LLST2
	.uleb128 0x9
	.string	"Ring"
	.byte	0x1
	.byte	0x5b
	.uaword	0x50d
	.uaword	.LLST3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0x51a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x5e
	.uaword	0x502
	.uaword	.LLST4
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x5f
	.uaword	0x24d
	.uaword	.LLST5
	.uleb128 0xb
	.string	"m_bar"
	.byte	0x1
	.byte	0x60
	.uaword	0x262
	.uaword	.LLST6
	.uleb128 0xb
	.string	"u_i"
	.byte	0x1
	.byte	0x62
	.uaword	0x262
	.uaword	.LLST7
	.uleb128 0xb
	.string	"x_i"
	.byte	0x1
	.byte	0x62
	.uaword	0x262
	.uaword	.LLST8
	.uleb128 0xb
	.string	"tmp1"
	.byte	0x1
	.byte	0x63
	.uaword	0x274
	.uaword	.LLST9
	.uleb128 0xb
	.string	"tmp2"
	.byte	0x1
	.byte	0x63
	.uaword	0x274
	.uaword	.LLST10
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x64
	.uaword	0x24d
	.uaword	.LLST11
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x64
	.uaword	0x24d
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	.LVL6
	.uaword	0x5c3
	.uaword	0x417
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL7
	.uaword	0x5ee
	.uaword	0x43a
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL17
	.uaword	0x5c3
	.uaword	0x44f
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL21
	.uaword	0x5c3
	.uaword	0x464
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL24
	.uaword	0x616
	.uaword	0x48e
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL25
	.uaword	0x63f
	.uaword	0x4b1
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL26
	.uaword	0x5c3
	.uaword	0x4c6
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LVL27
	.uaword	0x616
	.uaword	0x4f0
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LVL28
	.uaword	0x5c3
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x508
	.uleb128 0xf
	.uaword	0x262
	.uleb128 0x6
	.byte	0x4
	.uaword	0x513
	.uleb128 0xf
	.uaword	0x307
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x518
	.uleb128 0x8
	.byte	0x1
	.string	"actBNMontMulCopy"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c3
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0xb4
	.uaword	0x301
	.uaword	.LLST13
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0xb4
	.uaword	0x502
	.uaword	.LLST14
	.uleb128 0x9
	.string	"A"
	.byte	0x1
	.byte	0xb5
	.uaword	0x301
	.uaword	.LLST15
	.uleb128 0x9
	.string	"Ring"
	.byte	0x1
	.byte	0xb5
	.uaword	0x50d
	.uaword	.LLST16
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb6
	.uaword	0x51a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.uaword	0x24d
	.uaword	.LLST17
	.uleb128 0xe
	.uaword	.LVL30
	.uaword	0x319
	.uleb128 0xd
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xd
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x5
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x5ee
	.uleb128 0x12
	.uaword	0x51a
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"actBNSet"
	.byte	0x6
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uaword	0x611
	.uleb128 0x12
	.uaword	0x301
	.uleb128 0x12
	.uaword	0x611
	.uleb128 0x12
	.uaword	0x508
	.byte	0
	.uleb128 0xf
	.uaword	0x24d
	.uleb128 0x13
	.byte	0x1
	.string	"actBNSub"
	.byte	0x6
	.uahalf	0x183
	.byte	0x1
	.byte	0x1
	.uaword	0x63f
	.uleb128 0x12
	.uaword	0x502
	.uleb128 0x12
	.uaword	0x502
	.uleb128 0x12
	.uaword	0x301
	.uleb128 0x12
	.uaword	0x611
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actBNCompare"
	.byte	0x6
	.uahalf	0x115
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uleb128 0x12
	.uaword	0x502
	.uleb128 0x12
	.uaword	0x502
	.uleb128 0x12
	.uaword	0x611
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x91
	.sleb128 -60
	.uaword	.LVL10
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x2
	.byte	0x87
	.sleb128 4
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x7
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL30-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL30-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"watchdog"
	.extern	actBNCompare,STT_FUNC,0
	.extern	actBNSub,STT_FUNC,0
	.extern	actBNSet,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
