	.file	"ESLib_RSA_PSS.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_calcSaltedHashRSASHA1_PSS,"ax",@progbits
	.align 1
	.global	esl_calcSaltedHashRSASHA1_PSS
	.type	esl_calcSaltedHashRSASHA1_PSS, @function
esl_calcSaltedHashRSASHA1_PSS:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RSA_PSS.c"
	.loc 1 68 0
.LVL0:
	sub.a	%SP, 136
.LCFI0:
.LVL1:
	.loc 1 70 0
	mov.d	%d2, %a4
	mov.d	%d3, %a7
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 72 0
	mov	%d2, 8195
	.loc 1 70 0
	jnz	%d15, .L2
	mov.aa	%a13, %a7
	mov.aa	%a14, %a6
	st.a	[%SP] 4, %a5
	mov	%d15, %d4
	mov.aa	%a12, %a4
	.loc 1 74 0
	mov	%d4, 96
.LVL2:
	call	esl_CheckWorkSpaceHeader
.LVL3:
	jnz	%d2, .L2
.LBB2:
	.loc 1 81 0
	lea	%a4, [%SP] 8
	mov.aa	%a2, %a4
		# #chunks=14, chunksize=8, remains=0
	lea	%a15, 14-1
	0:
	ld.d	%e2, [%a12+]8
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
.LVL4:
	.loc 1 83 0
	mov	%d4, %d15
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a14
	mov	%d5, 20
	mov.aa	%a7, %a13
	mov	%d6, 0
	call	esl_calcSaltedHashRSA_PSS
.LVL5:
	.loc 1 88 0
	mov	%d15, 8236
.LVL6:
	ne	%d15, %d2, %d15
	mov	%d3, 8205
	cmovn	%d2, %d15, %d3
.LVL7:
.L2:
.LBE2:
	.loc 1 93 0
	ret
.LFE15:
	.size	esl_calcSaltedHashRSASHA1_PSS, .-esl_calcSaltedHashRSASHA1_PSS
.section .text.esl_calcSaltedHashRSASHA256_PSS,"ax",@progbits
	.align 1
	.global	esl_calcSaltedHashRSASHA256_PSS
	.type	esl_calcSaltedHashRSASHA256_PSS, @function
esl_calcSaltedHashRSASHA256_PSS:
.LFB16:
	.loc 1 115 0
.LVL8:
	sub.a	%SP, 136
.LCFI1:
.LVL9:
	.loc 1 118 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 120 0
	mov	%d2, 8195
	.loc 1 118 0
	jnz	%d15, .L6
	.loc 1 118 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a6
	mov.d	%d3, %a7
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 120 0 is_stmt 1 discriminator 1
	mov	%d2, 8195
	.loc 1 118 0 discriminator 1
	jnz	%d15, .L6
	mov.aa	%a13, %a7
	mov.aa	%a14, %a6
	st.a	[%SP] 4, %a5
	mov	%d15, %d4
	mov.aa	%a12, %a4
	.loc 1 122 0
	mov	%d4, 112
.LVL10:
	call	esl_CheckWorkSpaceHeader
.LVL11:
	jnz	%d2, .L6
.LBB3:
	.loc 1 129 0
	lea	%a4, [%SP] 8
	mov.aa	%a2, %a4
		# #chunks=16, chunksize=8, remains=0
	lea	%a15, 16-1
	0:
	ld.d	%e2, [%a12+]8
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
.LVL12:
	.loc 1 131 0
	mov	%d4, %d15
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a14
	mov	%d5, 32
	mov.aa	%a7, %a13
	mov	%d6, 2
	call	esl_calcSaltedHashRSA_PSS
.LVL13:
.L6:
.LBE3:
	.loc 1 141 0
	ret
.LFE16:
	.size	esl_calcSaltedHashRSASHA256_PSS, .-esl_calcSaltedHashRSASHA256_PSS
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
	.uleb128 0x88
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
	.uleb128 0x88
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RSA_Common.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8a4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RSA_PSS.c"
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
	.uaword	0x150
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x198
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
	.uaword	0x1c8
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
	.uaword	0x170
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x18a
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1ba
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21b
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x233
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x24c
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x280
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x60
	.byte	0x4
	.uahalf	0x250
	.uaword	0x2fb
	.uleb128 0x5
	.string	"H"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x2fb
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x253
	.uaword	0x280
	.byte	0x14
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x253
	.uaword	0x280
	.byte	0x18
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x254
	.uaword	0x28e
	.byte	0x1c
	.uleb128 0x5
	.string	"buffer"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x30b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.uaword	0x280
	.uaword	0x30b
	.uleb128 0x8
	.uaword	0x2a3
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.uaword	0x265
	.uaword	0x31b
	.uleb128 0x8
	.uaword	0x2a3
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.string	"actSHASTRUCT"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x2af
	.uleb128 0x4
	.byte	0x70
	.byte	0x4
	.uahalf	0x259
	.uaword	0x393
	.uleb128 0x5
	.string	"H"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x393
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x280
	.byte	0x20
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x280
	.byte	0x24
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x28e
	.byte	0x28
	.uleb128 0x5
	.string	"result_length"
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x272
	.byte	0x2c
	.uleb128 0x5
	.string	"buffer"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x30b
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.uaword	0x280
	.uaword	0x3a3
	.uleb128 0x8
	.uaword	0x2a3
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"actSHA256STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x330
	.uleb128 0x3
	.string	"eslt_Size8"
	.byte	0x5
	.byte	0x3f
	.uaword	0x21b
	.uleb128 0x3
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x233
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x24c
	.uleb128 0x3
	.string	"eslt_Byte"
	.byte	0x5
	.byte	0x46
	.uaword	0x3bb
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x3e0
	.uleb128 0x3
	.string	"eslt_Mode"
	.byte	0x5
	.byte	0x4c
	.uaword	0x3bb
	.uleb128 0x3
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x3cd
	.uleb128 0x3
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x3e0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"eslt_HashAlgorithm"
	.byte	0x5
	.byte	0xdb
	.uaword	0x417
	.uleb128 0x9
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x492
	.uleb128 0xa
	.byte	0x4
	.uaword	0x498
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x4
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x4e6
	.uleb128 0x5
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x404
	.byte	0
	.uleb128 0x5
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x428
	.byte	0x4
	.uleb128 0x5
	.string	"watchdog"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x476
	.byte	0x8
	.uleb128 0x5
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x43d
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x49a
	.uleb128 0x4
	.byte	0x70
	.byte	0x5
	.uahalf	0x4b0
	.uaword	0x52d
	.uleb128 0x5
	.string	"header"
	.byte	0x5
	.uahalf	0x4b2
	.uaword	0x4e6
	.byte	0
	.uleb128 0x5
	.string	"wsSHA1"
	.byte	0x5
	.uahalf	0x4b3
	.uaword	0x31b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceSHA1"
	.byte	0x5
	.uahalf	0x4b4
	.uaword	0x503
	.uleb128 0x4
	.byte	0x80
	.byte	0x5
	.uahalf	0x4bc
	.uaword	0x574
	.uleb128 0x5
	.string	"header"
	.byte	0x5
	.uahalf	0x4be
	.uaword	0x4e6
	.byte	0
	.uleb128 0x5
	.string	"wsSHA256"
	.byte	0x5
	.uahalf	0x4bf
	.uaword	0x3a3
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceSHA256"
	.byte	0x5
	.uahalf	0x4c0
	.uaword	0x548
	.uleb128 0xa
	.byte	0x4
	.uaword	0x3f3
	.uleb128 0xc
	.byte	0x80
	.byte	0x5
	.uahalf	0x58d
	.uaword	0x5c1
	.uleb128 0xd
	.string	"SHA256ws"
	.byte	0x5
	.uahalf	0x590
	.uaword	0x574
	.uleb128 0xd
	.string	"SHA1ws"
	.byte	0x5
	.uahalf	0x595
	.uaword	0x52d
	.byte	0
	.uleb128 0x9
	.string	"eslt_WorkSpaceUnionHashFunctions_RSA"
	.byte	0x5
	.uahalf	0x596
	.uaword	0x597
	.uleb128 0xa
	.byte	0x4
	.uaword	0x5c1
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x272
	.uleb128 0xe
	.byte	0x1
	.string	"esl_calcSaltedHashRSASHA1_PSS"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	0x5f4
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x707
	.uleb128 0xf
	.string	"wsHash"
	.byte	0x1
	.byte	0x3f
	.uaword	0x707
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0x40
	.uaword	0x404
	.uaword	.LLST1
	.uleb128 0xf
	.string	"salt"
	.byte	0x1
	.byte	0x41
	.uaword	0x70d
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.byte	0x42
	.uaword	0x70d
	.uaword	.LLST3
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x1
	.byte	0x43
	.uaword	0x591
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x45
	.uaword	0x5f4
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x6f0
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.byte	0x50
	.uaword	0x5c1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.uaword	.LVL5
	.uaword	0x81e
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x44
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL3
	.uaword	0x86a
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x52d
	.uleb128 0xa
	.byte	0x4
	.uaword	0x713
	.uleb128 0x16
	.uaword	0x3f3
	.uleb128 0xe
	.byte	0x1
	.string	"esl_calcSaltedHashRSASHA256_PSS"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x5f4
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x818
	.uleb128 0xf
	.string	"wsHash"
	.byte	0x1
	.byte	0x6e
	.uaword	0x818
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6f
	.uaword	0x404
	.uaword	.LLST7
	.uleb128 0xf
	.string	"salt"
	.byte	0x1
	.byte	0x70
	.uaword	0x70d
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.byte	0x71
	.uaword	0x70d
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x1
	.byte	0x72
	.uaword	0x591
	.uaword	.LLST10
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x74
	.uaword	0x5f4
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0x801
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x1
	.byte	0x80
	.uaword	0x5c1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.uaword	.LVL13
	.uaword	0x81e
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL11
	.uaword	0x86a
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x574
	.uleb128 0x17
	.byte	0x1
	.string	"esl_calcSaltedHashRSA_PSS"
	.byte	0x7
	.byte	0x59
	.byte	0x1
	.uaword	0x5f4
	.byte	0x1
	.uaword	0x86a
	.uleb128 0x18
	.uaword	0x5ee
	.uleb128 0x18
	.uaword	0x404
	.uleb128 0x18
	.uaword	0x70d
	.uleb128 0x18
	.uaword	0x70d
	.uleb128 0x18
	.uaword	0x404
	.uleb128 0x18
	.uaword	0x591
	.uleb128 0x18
	.uaword	0x45c
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeader"
	.byte	0x8
	.byte	0x72
	.byte	0x1
	.uaword	0x5f4
	.byte	0x1
	.uaword	0x89c
	.uleb128 0x18
	.uaword	0x89c
	.uleb128 0x18
	.uaword	0x404
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8a2
	.uleb128 0x16
	.uaword	0x4e6
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
	.uleb128 0x17
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
	.uleb128 0xd
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
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
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x91
	.sleb128 -132
	.uaword	.LVL7
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
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL3-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x2000
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x91
	.sleb128 -132
	.uaword	.LVL13
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL13
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL13
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x2000
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
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
.LASF7:
	.string	"wsHashUnion"
.LASF0:
	.string	"low_count"
.LASF3:
	.string	"saltSize"
.LASF5:
	.string	"saltedHash"
.LASF4:
	.string	"messageDigest"
.LASF2:
	.string	"buffer_used"
.LASF1:
	.string	"hi_count"
.LASF6:
	.string	"returnValue"
	.extern	esl_calcSaltedHashRSA_PSS,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeader,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
