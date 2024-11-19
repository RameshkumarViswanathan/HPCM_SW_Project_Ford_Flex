	.file	"actBNModExp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNModExp,"ax",@progbits
	.align 1
	.global	actBNModExp
	.type	actBNModExp, @function
actBNModExp:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNModExp.c"
	.loc 1 77 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
	st.a	[%SP] 12, %a4
	mov.aa	%a15, %a5
	mov.aa	%a14, %a6
	mov.aa	%a13, %a7
	ld.a	%a12, [%SP] 20
	.loc 1 81 0
	ld.w	%d8, [%a7] 4
.LVL1:
	.loc 1 82 0
	ld.a	%a4, [%a7]0
.LVL2:
	mov	%d4, %d8
	call	actBNGetBitLength
.LVL3:
	add	%d15, %d2, -1
.LVL4:
	.loc 1 83 0
	ld.a	%a2, [%SP] 16
	ld.a	%a2, [%a2]0
	st.a	[%SP] 8, %a2
.LVL5:
	.loc 1 85 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL6:
	.loc 1 88 0
	sh	%d2, %d15, -5
	addsc.a	%a2, %a15, %d2, 2
	and	%d2, %d15, 31
	ld.w	%d3, [%a2]0
	extr.u	%d2, %d3, %d2, 1
	jnz	%d2, .L2
.L10:
	.loc 1 90 0
	and	%d2, %d15, 7
	jnz	%d2, .L3
	.loc 1 92 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL7:
.L3:
	.loc 1 94 0
	add	%d15, -1
.LVL8:
	.loc 1 88 0
	sh	%d2, %d15, -5
	addsc.a	%a2, %a15, %d2, 2
	and	%d2, %d15, 31
	ld.w	%d3, [%a2]0
	extr.u	%d2, %d3, %d2, 1
	jz	%d2, .L10
.L2:
	.loc 1 97 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL9:
	.loc 1 100 0
	mov.aa	%a4, %a14
	ld.a	%a5, [%SP] 12
	mov	%d4, %d8
	call	actBNCopy
.LVL10:
	.loc 1 102 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL11:
	.loc 1 105 0
	jz	%d15, .L5
.L9:
	.loc 1 107 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL12:
	.loc 1 110 0
	st.a	[%SP]0, %a12
	mov.aa	%a4, %a14
	mov.aa	%a5, %a14
	ld.a	%a6, [%SP] 8
	mov.aa	%a7, %a13
	call	actBNMontMul
.LVL13:
	.loc 1 112 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL14:
	.loc 1 115 0
	add	%d15, -1
.LVL15:
	sh	%d2, %d15, -5
	addsc.a	%a2, %a15, %d2, 2
	and	%d2, %d15, 31
	ld.w	%d3, [%a2]0
	extr.u	%d2, %d3, %d2, 1
	jz	%d2, .L6
	.loc 1 117 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL16:
	.loc 1 120 0
	st.a	[%SP]0, %a12
	ld.a	%a4, [%SP] 8
	ld.a	%a5, [%SP] 12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	actBNMontMul
.LVL17:
	j	.L7
.L6:
	.loc 1 124 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL18:
	.loc 1 127 0
	mov.aa	%a4, %a14
	ld.a	%a5, [%SP] 8
	mov	%d4, %d8
	call	actBNCopy
.LVL19:
.L7:
	.loc 1 105 0 discriminator 1
	jnz	%d15, .L9
.L5:
	.loc 1 522 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL20:
	ret
.LFE15:
	.size	actBNModExp, .-actBNModExp
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
	.uleb128 0x10
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
	.uaword	0x599
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNModExp.c"
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
	.uaword	0x1ab
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
	.uaword	0x19d
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x1fe
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x217
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x217
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x2ac
	.uleb128 0x5
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x2ac
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x225
	.byte	0x4
	.uleb128 0x5
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x225
	.byte	0x8
	.uleb128 0x5
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x2ac
	.byte	0xc
	.uleb128 0x5
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x23a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x23a
	.uleb128 0x8
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x258
	.uleb128 0x9
	.byte	0x1
	.string	"actBNModExp"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4cb
	.uleb128 0xa
	.string	"gR"
	.byte	0x1
	.byte	0x4a
	.uaword	0x4cb
	.uaword	.LLST0
	.uleb128 0xa
	.string	"e"
	.byte	0x1
	.byte	0x4a
	.uaword	0x4cb
	.uaword	.LLST1
	.uleb128 0xa
	.string	"AR"
	.byte	0x1
	.byte	0x4b
	.uaword	0x2ac
	.uaword	.LLST2
	.uleb128 0xa
	.string	"Ring"
	.byte	0x1
	.byte	0x4b
	.uaword	0x4d6
	.uaword	.LLST3
	.uleb128 0xb
	.string	"t"
	.byte	0x1
	.byte	0x4c
	.uaword	0x4e1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"watchdog"
	.byte	0x1
	.byte	0x4c
	.uaword	0x4e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x51
	.uaword	0x225
	.byte	0x1
	.byte	0x58
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x52
	.uaword	0x225
	.uaword	.LLST4
	.uleb128 0xd
	.string	"tmp"
	.byte	0x1
	.byte	0x53
	.uaword	0x2ac
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x4ef
	.uaword	0x379
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0x51f
	.uaword	0x38e
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LVL7
	.uaword	0x51f
	.uaword	0x3a3
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LVL9
	.uaword	0x51f
	.uaword	0x3b7
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL10
	.uaword	0x54a
	.uaword	0x3d8
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL11
	.uaword	0x51f
	.uaword	0x3ec
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0x51f
	.uaword	0x400
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL13
	.uaword	0x56e
	.uaword	0x42e
	.uleb128 0xf
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL14
	.uaword	0x51f
	.uaword	0x442
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL16
	.uaword	0x51f
	.uaword	0x456
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0x56e
	.uaword	0x485
	.uleb128 0xf
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL18
	.uaword	0x51f
	.uaword	0x499
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL19
	.uaword	0x54a
	.uaword	0x4ba
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL20
	.uaword	0x51f
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4d1
	.uleb128 0x11
	.uaword	0x23a
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4dc
	.uleb128 0x11
	.uaword	0x2b2
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2ac
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4e7
	.uleb128 0x13
	.byte	0x1
	.string	"actBNGetBitLength"
	.byte	0x6
	.byte	0xc7
	.byte	0x1
	.uaword	0x225
	.byte	0x1
	.uaword	0x51a
	.uleb128 0x14
	.uaword	0x4cb
	.uleb128 0x14
	.uaword	0x51a
	.byte	0
	.uleb128 0x11
	.uaword	0x225
	.uleb128 0x15
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x5
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x54a
	.uleb128 0x14
	.uaword	0x4e9
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"actBNCopy"
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.byte	0x1
	.uaword	0x56e
	.uleb128 0x14
	.uaword	0x2ac
	.uleb128 0x14
	.uaword	0x4cb
	.uleb128 0x14
	.uaword	0x51a
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"actBNMontMul"
	.byte	0x6
	.uahalf	0x267
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x4cb
	.uleb128 0x14
	.uaword	0x4cb
	.uleb128 0x14
	.uaword	0x2ac
	.uleb128 0x14
	.uaword	0x4d6
	.uleb128 0x14
	.uaword	0x4e9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6-1
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
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
.LASF0:
	.string	"m_length"
	.extern	actBNMontMul,STT_FUNC,0
	.extern	actBNCopy,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.extern	actBNGetBitLength,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
