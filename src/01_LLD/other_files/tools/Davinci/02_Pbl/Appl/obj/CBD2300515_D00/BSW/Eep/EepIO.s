	.file	"EepIO.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EepromDriver_CheckRangeContained,"ax",@progbits
	.align 1
	.type	EepromDriver_CheckRangeContained, @function
EepromDriver_CheckRangeContained:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/BSW/Eep/EepIO.c"
	.loc 1 115 0
.LVL0:
	.loc 1 118 0
	movh	%d15, hi:eepData
	addi	%d15, %d15, lo:eepData
	jlt.u	%d5, %d15, .L2
	.loc 1 119 0
	sub	%d15, %d5, %d15
	.loc 1 120 0
	lt.u	%d2, %d15, 11
	and.lt.u	%d2, %d4, 12
	jz	%d2, .L2
	.loc 1 121 0
	rsub	%d4, %d4, 11
.LVL1:
	.loc 1 123 0
	mov	%d2, 0
	.loc 1 121 0
	jge.u	%d4, %d15, .L3
.L2:
	.loc 1 127 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL2:
	.loc 1 128 0 discriminator 1
	mov	%d2, 1
.LVL3:
.L3:
	.loc 1 132 0
	ret
.LFE14:
	.size	EepromDriver_CheckRangeContained, .-EepromDriver_CheckRangeContained
.section .text.EepromDriver_InitSync,"ax",@progbits
	.align 1
	.global	EepromDriver_InitSync
	.type	EepromDriver_InitSync, @function
EepromDriver_InitSync:
.LFB15:
	.loc 1 147 0
.LVL4:
	.loc 1 155 0
	movh.a	%a15, hi:eepData
	lea	%a15, [%a15] lo:eepData
	ld.bu	%d15, [%a15] 11
	eq	%d15, %d15, 85
	jnz	%d15, .L6
	.loc 1 160 0
	movh	%d3, hi:eepData
	addi	%d3, %d3, lo:eepData
	mov	%d2, -1
	mov.a	%a15, 10
.L7:
.LVL5:
	.loc 1 160 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2]0, %d2
	.loc 1 158 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL6:
	loop	%a15, .L7
	.loc 1 164 0
	mov	%d15, 85
.LVL7:
	movh.a	%a15, hi:eepData
	lea	%a15, [%a15] lo:eepData
	st.b	[%a15] 11, %d15
.L6:
	.loc 1 168 0
	mov	%d2, 0
	ret
.LFE15:
	.size	EepromDriver_InitSync, .-EepromDriver_InitSync
.section .text.EepromDriver_DeinitSync,"ax",@progbits
	.align 1
	.global	EepromDriver_DeinitSync
	.type	EepromDriver_DeinitSync, @function
EepromDriver_DeinitSync:
.LFB16:
	.loc 1 178 0
.LVL8:
	.loc 1 185 0
	mov	%d2, 0
	ret
.LFE16:
	.size	EepromDriver_DeinitSync, .-EepromDriver_DeinitSync
.section .text.EepromDriver_RWriteSync,"ax",@progbits
	.align 1
	.global	EepromDriver_RWriteSync
	.type	EepromDriver_RWriteSync, @function
EepromDriver_RWriteSync:
.LFB17:
	.loc 1 198 0
.LVL9:
	sub.a	%SP, 8
.LCFI0:
	mov.aa	%a15, %a4
	mov	%d8, %d4
	st.w	[%SP] 4, %d5
	.loc 1 201 0
	call	EepromDriver_CheckRangeContained
.LVL10:
	mov	%d15, %d2
.LVL11:
	.loc 1 203 0
	jnz	%d2, .L11
	.loc 1 206 0
	ld.a	%a4, [%SP] 4
	mov.aa	%a5, %a15
	mov	%d4, %d8
	call	FblOwnMemcpy
.LVL12:
.L11:
	.loc 1 210 0
	mov	%d2, %d15
	ret
.LFE17:
	.size	EepromDriver_RWriteSync, .-EepromDriver_RWriteSync
.section .text.EepromDriver_REraseSync,"ax",@progbits
	.align 1
	.global	EepromDriver_REraseSync
	.type	EepromDriver_REraseSync, @function
EepromDriver_REraseSync:
.LFB18:
	.loc 1 222 0
.LVL13:
	.loc 1 230 0
	call	EepromDriver_CheckRangeContained
.LVL14:
	.loc 1 233 0
	ret
.LFE18:
	.size	EepromDriver_REraseSync, .-EepromDriver_REraseSync
.section .text.EepromDriver_RReadSync,"ax",@progbits
	.align 1
	.global	EepromDriver_RReadSync
	.type	EepromDriver_RReadSync, @function
EepromDriver_RReadSync:
.LFB19:
	.loc 1 246 0
.LVL15:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a15, %a4
	mov	%d8, %d4
	st.w	[%SP] 4, %d5
	.loc 1 249 0
	call	EepromDriver_CheckRangeContained
.LVL16:
	mov	%d15, %d2
.LVL17:
	.loc 1 251 0
	jnz	%d2, .L14
	.loc 1 253 0
	mov.aa	%a4, %a15
	ld.a	%a5, [%SP] 4
	mov	%d4, %d8
	call	FblOwnMemcpy
.LVL18:
.L14:
	.loc 1 257 0
	mov	%d2, %d15
	ret
.LFE19:
	.size	EepromDriver_RReadSync, .-EepromDriver_RReadSync
.section .text.EepromDriver_VerifySync,"ax",@progbits
	.align 1
	.global	EepromDriver_VerifySync
	.type	EepromDriver_VerifySync, @function
EepromDriver_VerifySync:
.LFB20:
	.loc 1 268 0
.LVL19:
	.loc 1 274 0
	mov	%d2, 0
	ret
.LFE20:
	.size	EepromDriver_VerifySync, .-EepromDriver_VerifySync
	.local	eepData
.section .bss,"aw",@nobits
	.align 0
	.type		 eepData,@object
	.size		 eepData,12
eepData:
	.space	12
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../BSW/Fbl/iotypes.h"
	.file 4 "Include/fbl_ap.h"
	.file 5 "../../../BSW/Fbl/fbl_hw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x657
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Eep/EepIO.c"
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
	.uaword	0x143
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x170
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x192
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x22c
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x7
	.string	"IO_U8"
	.byte	0x3
	.byte	0x39
	.uaword	0x1e5
	.uleb128 0x7
	.string	"IO_SizeType"
	.byte	0x3
	.byte	0x42
	.uaword	0x204
	.uleb128 0x7
	.string	"IO_PositionType"
	.byte	0x3
	.byte	0x43
	.uaword	0x204
	.uleb128 0x7
	.string	"IO_ErrorType"
	.byte	0x3
	.byte	0x49
	.uaword	0x1f4
	.uleb128 0x7
	.string	"IO_MemPtrType"
	.byte	0x3
	.byte	0x4a
	.uaword	0x239
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.string	"EepromDriver_CheckRangeContained"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x327
	.uleb128 0x9
	.string	"length"
	.byte	0x1
	.byte	0x72
	.uaword	0x24c
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x72
	.uaword	0x25f
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x74
	.uaword	0x276
	.uaword	.LLST2
	.uleb128 0xc
	.uaword	.LVL2
	.uaword	0x610
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EepromDriver_InitSync"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x370
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x92
	.uaword	0x224
	.byte	0x1
	.byte	0x64
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x94
	.uaword	0x24c
	.uaword	.LLST3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EepromDriver_DeinitSync"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3ae
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb1
	.uaword	0x224
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EepromDriver_RWriteSync"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46c
	.uleb128 0x9
	.string	"writeBuffer"
	.byte	0x1
	.byte	0xc5
	.uaword	0x28a
	.uaword	.LLST4
	.uleb128 0x9
	.string	"writeLength"
	.byte	0x1
	.byte	0xc5
	.uaword	0x24c
	.uaword	.LLST5
	.uleb128 0x9
	.string	"writeAddress"
	.byte	0x1
	.byte	0xc5
	.uaword	0x25f
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc7
	.uaword	0x276
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	.LVL10
	.uaword	0x2ae
	.uaword	0x44e
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LVL12
	.uaword	0x632
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EepromDriver_REraseSync"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f1
	.uleb128 0x9
	.string	"eraseLength"
	.byte	0x1
	.byte	0xdd
	.uaword	0x24c
	.uaword	.LLST8
	.uleb128 0x9
	.string	"eraseAddress"
	.byte	0x1
	.byte	0xdd
	.uaword	0x25f
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdf
	.uaword	0x276
	.byte	0x1
	.byte	0x52
	.uleb128 0xc
	.uaword	.LVL14
	.uaword	0x2ae
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EepromDriver_RReadSync"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ab
	.uleb128 0x9
	.string	"readBuffer"
	.byte	0x1
	.byte	0xf5
	.uaword	0x28a
	.uaword	.LLST10
	.uleb128 0x9
	.string	"readLength"
	.byte	0x1
	.byte	0xf5
	.uaword	0x24c
	.uaword	.LLST11
	.uleb128 0x9
	.string	"readAddress"
	.byte	0x1
	.byte	0xf5
	.uaword	0x25f
	.uaword	.LLST12
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf7
	.uaword	0x276
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	.LVL16
	.uaword	0x2ae
	.uaword	0x58d
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LVL18
	.uaword	0x632
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"EepromDriver_VerifySync"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5eb
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x224
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.uaword	0x23f
	.uaword	0x5fb
	.uleb128 0x16
	.uaword	0x22d
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.string	"eepData"
	.byte	0x1
	.byte	0x56
	.uaword	0x5eb
	.byte	0x5
	.byte	0x3
	.uaword	eepData
	.uleb128 0x18
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x4
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x632
	.uleb128 0x19
	.uaword	0x1e5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0x5
	.uahalf	0x167
	.byte	0x1
	.uaword	0x224
	.byte	0x1
	.uleb128 0x19
	.uaword	0x224
	.uleb128 0x19
	.uaword	0x226
	.uleb128 0x19
	.uaword	0x214
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16-1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"address"
.LASF1:
	.string	"result"
	.extern	FblOwnMemcpy,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
