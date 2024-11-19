	.file	"actBNSub.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNSub,"ax",@progbits
	.align 1
	.global	actBNSub
	.type	actBNSub, @function
actBNSub:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNSub.c"
	.loc 1 74 0
.LVL0:
	.loc 1 78 0
	jz	%d4, .L1
	mov	%d5, 0
	imask	%e6, 0, 0, 1
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL1:
.L3:
	.loc 1 81 0 discriminator 3
	mov	%d15, 0
	addx	%d4, %d7, -1
	addc	%d15, %d15, -1
	addsc.a	%a2, %a4, %d5, 0
	ld.w	%d6, [%a2]0
	mov	%d7, 1
	addx	%d2, %d4, %d6
	addc	%d3, %d15, %d7
	addsc.a	%a2, %a5, %d5, 0
	ld.w	%d6, [%a2]0
	msub.u	%e6, %e2, %d6, 1
.LVL2:
	.loc 1 82 0 discriminator 3
	addsc.a	%a2, %a6, %d5, 0
	st.w	[%a2]0, %d6
.LVL3:
	add	%d5, 4
	loop	%a15, .L3
.L1:
	ret
.LFE15:
	.size	actBNSub, .-actBNSub
.section .text.actBNSubDigit,"ax",@progbits
	.align 1
	.global	actBNSubDigit
	.type	actBNSubDigit, @function
actBNSubDigit:
.LFB16:
	.loc 1 102 0
.LVL4:
	mov	%d7, %d5
	.loc 1 105 0
	mul.u	%e2, %d4, 1
.LVL5:
	.loc 1 107 0
	ne	%d15, %d5, 0
	and.ne	%d15, %d4, 0
	jz	%d15, .L5
	mov	%d15, 0
.LVL6:
.L7:
	.loc 1 109 0
	ld.w	%d4, [%a4+]4
	mov	%d5, 0
	subx	%d2, %d4, %d2
.LVL7:
	subc	%d3, %d5, %d3
.LVL8:
	.loc 1 110 0
	st.w	[%a5+]4, %d2
	.loc 1 112 0
	ne	%d4, %d3, 0
	mul.u	%e2, %d4, 1
.LVL9:
	.loc 1 107 0
	add	%d15, 1
.LVL10:
	lt.u	%d6, %d15, %d7
	and	%d4, %d6
	jnz	%d4, .L7
.LVL11:
.L5:
	ret
.LFE16:
	.size	actBNSubDigit, .-actBNSubDigit
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3b0
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNSub.c"
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
	.uaword	0x1a8
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
	.uaword	0x19a
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1ce
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x1fb
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x214
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x22d
	.uleb128 0x3
	.string	"actBNLENGTH"
	.byte	0x4
	.byte	0x40
	.uaword	0x249
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x22d
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x23b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x271
	.uleb128 0x5
	.byte	0x1
	.string	"actBNSub"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x315
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x46
	.uaword	0x315
	.byte	0x1
	.byte	0x64
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x47
	.uaword	0x315
	.byte	0x1
	.byte	0x65
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x48
	.uaword	0x2a2
	.byte	0x1
	.byte	0x66
	.uleb128 0x7
	.string	"length"
	.byte	0x1
	.byte	0x49
	.uaword	0x320
	.uaword	.LLST0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.uaword	0x249
	.uaword	.LLST1
	.uleb128 0x8
	.string	"tmp"
	.byte	0x1
	.byte	0x4c
	.uaword	0x283
	.uaword	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x31b
	.uleb128 0x9
	.uaword	0x271
	.uleb128 0x9
	.uaword	0x249
	.uleb128 0x5
	.byte	0x1
	.string	"actBNSubDigit"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3ae
	.uleb128 0x7
	.string	"a"
	.byte	0x1
	.byte	0x62
	.uaword	0x315
	.uaword	.LLST3
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.byte	0x63
	.uaword	0x31b
	.uaword	.LLST4
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x64
	.uaword	0x2a2
	.uaword	.LLST5
	.uleb128 0x7
	.string	"length"
	.byte	0x1
	.byte	0x65
	.uaword	0x3ae
	.uaword	.LLST6
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x67
	.uaword	0x25e
	.uaword	.LLST7
	.uleb128 0x8
	.string	"tmp"
	.byte	0x1
	.byte	0x68
	.uaword	0x283
	.uaword	.LLST8
	.uleb128 0x8
	.string	"carry"
	.byte	0x1
	.byte	0x69
	.uaword	0x283
	.uaword	.LLST9
	.byte	0
	.uleb128 0x9
	.uaword	0x25e
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x100000000
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9
	.uaword	.LFE16
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
