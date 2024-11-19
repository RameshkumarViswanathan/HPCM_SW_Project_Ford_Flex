	.file	"actBNMult.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNMult,"ax",@progbits
	.align 1
	.global	actBNMult
	.type	actBNMult, @function
actBNMult:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNMult.c"
	.loc 1 70 0
.LVL0:
	mov.aa	%a12, %a4
	mov	%d8, %d4
	mov.aa	%a13, %a5
	mov	%d15, %d5
	mov.aa	%a15, %a6
	.loc 1 71 0
	add	%d9, %d15, %d4
.LVL1:
	.loc 1 75 0
	mov.aa	%a4, %a7
.LVL2:
	call	actWatchdogTriggerFunction
.LVL3:
	.loc 1 77 0
	mov.aa	%a4, %a15
	mov	%d4, %d9
	mov	%d5, 0
	call	actBNSet
.LVL4:
	.loc 1 80 0
	jz	%d15, .L1
	addsc.a	%a6, %a15, %d8, 2
	mov.aa	%a5, %a13
	mul	%d4, %d8, -4
	.loc 1 83 0
	mov	%d5, 0
	mov.aa	%a4, %a12
	mov.a	%a12, %d15
.LVL5:
	add.a	%a12, -1
	j	.L3
.LVL6:
.L4:
	.loc 1 85 0 discriminator 3
	ld.w	%d15, [%a2]0
	mov	%d3, 0
	madd.u	%e2, %e2, %d15, 1
.LVL7:
	ld.w	%d15, [%a3+]4
	ld.w	%d7, [%a7]0
	madd.u	%e2, %e2, %d15, %d7
.LVL8:
	.loc 1 86 0 discriminator 3
	st.w	[%a2+]4, %d2
	.loc 1 87 0 discriminator 3
	mov	%d2, %d3
.LVL9:
	.loc 1 83 0 discriminator 3
	add	%d6, 1
.LVL10:
	loop	%a15, .L4
.LVL11:
.L5:
	.loc 1 89 0 discriminator 2
	st.w	[%a6+]4, %d2
	add.a	%a5, 4
	loop	%a12, .L3
	ret
.L3:
.LVL12:
	.loc 1 83 0 discriminator 1
	mov	%d2, %d5
	jz	%d8, .L5
	.loc 1 85 0
	mov.aa	%a7, %a5
	mov.aa	%a3, %a4
	addsc.a	%a2, %a6, %d4, 0
	mov	%d6, %d5
	nor	%d15, %d5, 0
	mov.a	%a13, %d15
	addsc.a	%a15, %a13, %d8, 0
	j	.L4
.LVL13:
.L1:
	ret
.LFE15:
	.size	actBNMult, .-actBNMult
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
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3f3
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNMult.c"
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
	.uaword	0x1a9
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
	.uaword	0x19b
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1cf
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x1fc
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x215
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x22e
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x22e
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x23c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25f
	.uleb128 0x5
	.byte	0x1
	.string	"actBNMult"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x394
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x40
	.uaword	0x394
	.uaword	.LLST0
	.uleb128 0x6
	.string	"a_length"
	.byte	0x1
	.byte	0x41
	.uaword	0x39f
	.uaword	.LLST1
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x42
	.uaword	0x394
	.uaword	.LLST2
	.uleb128 0x6
	.string	"b_length"
	.byte	0x1
	.byte	0x43
	.uaword	0x39f
	.uaword	.LLST3
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x44
	.uaword	0x290
	.uaword	.LLST4
	.uleb128 0x6
	.string	"watchdog"
	.byte	0x1
	.byte	0x45
	.uaword	0x3a6
	.uaword	.LLST5
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x47
	.uaword	0x24a
	.uaword	.LLST6
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x47
	.uaword	0x24a
	.uaword	.LLST7
	.uleb128 0x8
	.string	"c_length"
	.byte	0x1
	.byte	0x47
	.uaword	0x24a
	.byte	0x1
	.byte	0x59
	.uleb128 0x7
	.string	"tmp"
	.byte	0x1
	.byte	0x48
	.uaword	0x271
	.uaword	.LLST8
	.uleb128 0x7
	.string	"carry"
	.byte	0x1
	.byte	0x49
	.uaword	0x25f
	.uaword	.LLST9
	.uleb128 0x9
	.uaword	.LVL3
	.uaword	0x3ac
	.uaword	0x378
	.uleb128 0xa
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0
	.uleb128 0xb
	.uaword	.LVL4
	.uaword	0x3d7
	.uleb128 0xa
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x39a
	.uleb128 0xc
	.uaword	0x25f
	.uleb128 0xc
	.uaword	0x24a
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3a4
	.uleb128 0xe
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x5
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x3d7
	.uleb128 0xf
	.uaword	0x3a6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"actBNSet"
	.byte	0x6
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x290
	.uleb128 0xf
	.uaword	0x39f
	.uleb128 0xf
	.uaword	0x39a
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
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL5
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
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
	.extern	actBNSet,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
