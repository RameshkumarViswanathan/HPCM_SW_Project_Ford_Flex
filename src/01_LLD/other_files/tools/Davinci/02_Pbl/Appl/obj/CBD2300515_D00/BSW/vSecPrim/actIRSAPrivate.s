	.file	"actIRSAPrivate.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actRSAInitPrivateKeyOperation,"ax",@progbits
	.align 1
	.global	actRSAInitPrivateKeyOperation
	.type	actRSAInitPrivateKeyOperation, @function
actRSAInitPrivateKeyOperation:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivate.c"
	.loc 1 68 0
.LVL0:
	.loc 1 69 0
	mov	%d6, 0
	call	actRSAInitExponentiation
.LVL1:
	.loc 1 71 0
	ret
.LFE15:
	.size	actRSAInitPrivateKeyOperation, .-actRSAInitPrivateKeyOperation
.section .text.actRSAPrivateKeyOperation,"ax",@progbits
	.align 1
	.global	actRSAPrivateKeyOperation
	.type	actRSAPrivateKeyOperation, @function
actRSAPrivateKeyOperation:
.LFB16:
	.loc 1 89 0
.LVL2:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 90 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	call	actRSAExponentiation
.LVL3:
	.loc 1 91 0
	ret
.LFE16:
	.size	actRSAPrivateKeyOperation, .-actRSAPrivateKeyOperation
.section .text.actRSAPrivateKeyGetBitLength,"ax",@progbits
	.align 1
	.global	actRSAPrivateKeyGetBitLength
	.type	actRSAPrivateKeyGetBitLength, @function
actRSAPrivateKeyGetBitLength:
.LFB17:
	.loc 1 102 0
.LVL4:
	mov.aa	%a15, %a4
	.loc 1 103 0
	ld.a	%a4, [%a4]0
.LVL5:
	ld.w	%d4, [%a15] 4
	call	actBNGetBitLength
.LVL6:
	.loc 1 104 0
	ret
.LFE17:
	.size	actRSAPrivateKeyGetBitLength, .-actRSAPrivateKeyGetBitLength
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
	.byte	0x4
	.uaword	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x8
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
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7a2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivate.c"
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
	.uaword	0x151
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x199
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
	.uaword	0x1c9
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
	.uaword	0x171
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x18b
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1bb
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21c
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x234
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x24d
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x281
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2aa
	.uleb128 0x5
	.uaword	0x266
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x281
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x281
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x33b
	.uleb128 0x7
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x33b
	.byte	0
	.uleb128 0x7
	.string	"m_length"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x28f
	.byte	0x4
	.uleb128 0x7
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x28f
	.byte	0x8
	.uleb128 0x7
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x33b
	.byte	0xc
	.uleb128 0x7
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x2af
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2af
	.uleb128 0x8
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x2e2
	.uleb128 0x9
	.uahalf	0x204
	.byte	0x4
	.uahalf	0x495
	.uaword	0x380
	.uleb128 0x7
	.string	"cipher"
	.byte	0x4
	.uahalf	0x497
	.uaword	0x380
	.byte	0
	.uleb128 0xa
	.string	"message"
	.byte	0x4
	.uahalf	0x498
	.uaword	0x390
	.uahalf	0x100
	.byte	0
	.uleb128 0xb
	.uaword	0x2af
	.uaword	0x390
	.uleb128 0xc
	.uaword	0x2d6
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x2af
	.uaword	0x3a0
	.uleb128 0xc
	.uaword	0x2d6
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.string	"actRSACipherAndMSgStruct"
	.byte	0x4
	.uahalf	0x499
	.uaword	0x353
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x4
	.uahalf	0x49f
	.uaword	0x3f1
	.uleb128 0xe
	.string	"tmpInit"
	.byte	0x4
	.uahalf	0x4a1
	.uaword	0x3f1
	.uleb128 0xe
	.string	"cipherAndMsg"
	.byte	0x4
	.uahalf	0x4a2
	.uaword	0x3a0
	.byte	0
	.uleb128 0xb
	.uaword	0x2af
	.uaword	0x401
	.uleb128 0xc
	.uaword	0x2d6
	.byte	0x81
	.byte	0
	.uleb128 0x9
	.uahalf	0x624
	.byte	0x4
	.uahalf	0x49b
	.uaword	0x47b
	.uleb128 0x7
	.string	"wsRSARing"
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x341
	.byte	0
	.uleb128 0x7
	.string	"tmp"
	.byte	0x4
	.uahalf	0x4a3
	.uaword	0x3c1
	.byte	0x14
	.uleb128 0xa
	.string	"RRBuffer"
	.byte	0x4
	.uahalf	0x4a5
	.uaword	0x390
	.uahalf	0x21c
	.uleb128 0xa
	.string	"exponent"
	.byte	0x4
	.uahalf	0x4a6
	.uaword	0x380
	.uahalf	0x320
	.uleb128 0xa
	.string	"modulusBuffer"
	.byte	0x4
	.uahalf	0x4a7
	.uaword	0x380
	.uahalf	0x420
	.uleb128 0xa
	.string	"tmpExp"
	.byte	0x4
	.uahalf	0x4a8
	.uaword	0x390
	.uahalf	0x520
	.byte	0
	.uleb128 0x8
	.string	"actRSAPRIMSTRUCT"
	.byte	0x4
	.uahalf	0x4aa
	.uaword	0x401
	.uleb128 0xf
	.byte	0x1
	.string	"actRSAInitPrivateKeyOperation"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x2c1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58c
	.uleb128 0x10
	.string	"modulus"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2a4
	.uaword	.LLST0
	.uleb128 0x10
	.string	"modulus_len"
	.byte	0x1
	.byte	0x3f
	.uaword	0x28f
	.uaword	.LLST1
	.uleb128 0x10
	.string	"private_exponent"
	.byte	0x1
	.byte	0x40
	.uaword	0x2a4
	.uaword	.LLST2
	.uleb128 0x10
	.string	"private_exponent_len"
	.byte	0x1
	.byte	0x41
	.uaword	0x28f
	.uaword	.LLST3
	.uleb128 0x10
	.string	"wkspBuf"
	.byte	0x1
	.byte	0x42
	.uaword	0x58c
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x43
	.uaword	0x594
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x6dd
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x47b
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x592
	.uleb128 0xf
	.byte	0x1
	.string	"actRSAPrivateKeyOperation"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x2c1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x675
	.uleb128 0x10
	.string	"cipher"
	.byte	0x1
	.byte	0x53
	.uaword	0x2a4
	.uaword	.LLST6
	.uleb128 0x10
	.string	"cipher_len"
	.byte	0x1
	.byte	0x54
	.uaword	0x28f
	.uaword	.LLST7
	.uleb128 0x10
	.string	"message"
	.byte	0x1
	.byte	0x55
	.uaword	0x675
	.uaword	.LLST8
	.uleb128 0x10
	.string	"message_len"
	.byte	0x1
	.byte	0x56
	.uaword	0x67b
	.uaword	.LLST9
	.uleb128 0x10
	.string	"wkspBuf"
	.byte	0x1
	.byte	0x57
	.uaword	0x58c
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x594
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.uaword	.LVL3
	.uaword	0x728
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x266
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28f
	.uleb128 0xf
	.byte	0x1
	.string	"actRSAPrivateKeyGetBitLength"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d2
	.uleb128 0x10
	.string	"n_ring"
	.byte	0x1
	.byte	0x65
	.uaword	0x6d2
	.uaword	.LLST11
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x76a
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6d8
	.uleb128 0x5
	.uaword	0x341
	.uleb128 0x17
	.byte	0x1
	.string	"actRSAInitExponentiation"
	.byte	0x5
	.byte	0x53
	.byte	0x1
	.uaword	0x2c1
	.byte	0x1
	.uaword	0x728
	.uleb128 0x18
	.uaword	0x2a4
	.uleb128 0x18
	.uaword	0x28f
	.uleb128 0x18
	.uaword	0x2a4
	.uleb128 0x18
	.uaword	0x28f
	.uleb128 0x18
	.uaword	0x58c
	.uleb128 0x18
	.uaword	0x273
	.uleb128 0x18
	.uaword	0x594
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"actRSAExponentiation"
	.byte	0x5
	.byte	0x76
	.byte	0x1
	.uaword	0x2c1
	.byte	0x1
	.uaword	0x76a
	.uleb128 0x18
	.uaword	0x2a4
	.uleb128 0x18
	.uaword	0x28f
	.uleb128 0x18
	.uaword	0x675
	.uleb128 0x18
	.uaword	0x67b
	.uleb128 0x18
	.uaword	0x58c
	.uleb128 0x18
	.uaword	0x594
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"actBNGetBitLength"
	.byte	0x6
	.byte	0xc7
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x795
	.uleb128 0x18
	.uaword	0x795
	.uleb128 0x18
	.uaword	0x7a0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x79b
	.uleb128 0x5
	.uaword	0x2af
	.uleb128 0x5
	.uaword	0x28f
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
	.uleb128 0x7
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL3-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
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
	.string	"watchdog"
	.extern	actBNGetBitLength,STT_FUNC,0
	.extern	actRSAExponentiation,STT_FUNC,0
	.extern	actRSAInitExponentiation,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"