	.file	"actBNOddInvModBase.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__umoddi3
.section .text.actBNOddInvModBase,"ax",@progbits
	.align 1
	.global	actBNOddInvModBase
	.type	actBNOddInvModBase, @function
actBNOddInvModBase:
.LFB0:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNOddInvModBase.c"
	.loc 1 65 0
.LVL0:
	mov.aa	%a15, %a4
.LVL1:
	.loc 1 68 0
	ld.w	%d11, [%a5]0
.LVL2:
	.loc 1 71 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
.LVL3:
	mov	%d12, 0
	.loc 1 67 0
	mov	%d15, 1
	mov	%d10, 0
	.loc 1 66 0
	mov	%e8, 1
.LVL4:
.L3:
	.loc 1 75 0
	dextr	%d10, %d10, %d15, 1
.LVL5:
	sh	%d15, 1
.LVL6:
	.loc 1 76 0
	mov	%e4, %d9, %d8
	mov	%d6, %d15
	mov	%d7, %d10
	call	__umoddi3
.LVL7:
	or	%d2, %d3
	jz	%d2, .L2
	.loc 1 79 0
	madd.u	%e8, %e8, %d11, 1
.LVL8:
	.loc 1 81 0
	dextr	%d2, %d10, %d15, 31
	ld.w	%d3, [%a15]0
	add	%d2, %d3
	st.w	[%a15]0, %d2
.L2:
	.loc 1 83 0 discriminator 2
	sh	%d11, 1
.LVL9:
	add	%d12, 1
.LVL10:
	.loc 1 72 0 discriminator 2
	ne	%d2, %d12, 32
	jnz	%d2, .L3
	.loc 1 85 0
	ret
.LFE0:
	.size	actBNOddInvModBase, .-actBNOddInvModBase
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x34c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNOddInvModBase.c"
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
	.uaword	0x155
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
	.uaword	0x1bf
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
	.string	"actPlatformUint8"
	.byte	0x3
	.byte	0x4d
	.uaword	0x175
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b1
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1e5
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x212
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x22a
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x243
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x269
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x277
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x285
	.uleb128 0x5
	.byte	0x1
	.string	"actBNOddInvModBase"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x344
	.uleb128 0x6
	.string	"inverse"
	.byte	0x1
	.byte	0x40
	.uaword	0x2b6
	.uaword	.LLST0
	.uleb128 0x6
	.string	"value"
	.byte	0x1
	.byte	0x40
	.uaword	0x344
	.uaword	.LLST1
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x42
	.uaword	0x297
	.uaword	.LLST2
	.uleb128 0x7
	.string	"power"
	.byte	0x1
	.byte	0x43
	.uaword	0x297
	.uaword	.LLST3
	.uleb128 0x8
	.string	"tempVal"
	.byte	0x1
	.byte	0x44
	.uaword	0x285
	.byte	0x1
	.byte	0x5b
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x45
	.uaword	0x25c
	.uaword	.LLST4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x34a
	.uleb128 0x9
	.uaword	0x285
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
	.uleb128 0x2116
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x1
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x1
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL6
	.uaword	.LFE0
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE0
	.uahalf	0x3
	.byte	0x7c
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
