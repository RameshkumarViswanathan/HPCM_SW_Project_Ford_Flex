	.file	"actBNAdd.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNAdd,"ax",@progbits
	.align 1
	.global	actBNAdd
	.type	actBNAdd, @function
actBNAdd:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNAdd.c"
	.loc 1 65 0
.LVL0:
	.loc 1 67 0
	mov	%d2, 0
	.loc 1 69 0
	jz	%d4, .L2
	mov	%d3, 0
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL1:
.L3:
	.loc 1 72 0 discriminator 3
	mov	%d5, 0
	addsc.a	%a2, %a4, %d3, 0
	ld.w	%d4, [%a2]0
	addsc.a	%a2, %a5, %d3, 0
	ld.w	%d6, [%a2]0
	mov	%d7, 0
	madd.u	%e6, %e6, %d4, 1
	addx	%d15, %d6, %d2
	addc	%d2, %d7, %d5
.LVL2:
	.loc 1 73 0 discriminator 3
	addsc.a	%a2, %a6, %d3, 0
	st.w	[%a2]0, %d15
	add	%d3, 4
	loop	%a15, .L3
.LVL3:
.L2:
	.loc 1 78 0
	and	%d2, %d2, 255
	ret
.LFE15:
	.size	actBNAdd, .-actBNAdd
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x345
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNAdd.c"
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
	.uaword	0x14b
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
	.uaword	0x1b5
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
	.uaword	0x16b
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1a7
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1db
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x208
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x220
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x239
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x25f
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x25f
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x26d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x290
	.uleb128 0x5
	.byte	0x1
	.string	"actBNAdd"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x252
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x338
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.uaword	0x338
	.byte	0x1
	.byte	0x64
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x3e
	.uaword	0x338
	.byte	0x1
	.byte	0x65
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.uaword	0x2c1
	.byte	0x1
	.byte	0x66
	.uleb128 0x7
	.string	"length"
	.byte	0x1
	.byte	0x40
	.uaword	0x343
	.uaword	.LLST0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x42
	.uaword	0x27b
	.uaword	.LLST1
	.uleb128 0x8
	.string	"tmp"
	.byte	0x1
	.byte	0x43
	.uaword	0x2a2
	.uaword	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x33e
	.uleb128 0x9
	.uaword	0x290
	.uleb128 0x9
	.uaword	0x27b
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
	.uaxword	0
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
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
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
