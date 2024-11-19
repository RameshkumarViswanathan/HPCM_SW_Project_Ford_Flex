	.file	"ESLib_RSAprim_ver.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_initVerifyRSA_prim,"ax",@progbits
	.align 1
	.global	esl_initVerifyRSA_prim
	.type	esl_initVerifyRSA_prim, @function
esl_initVerifyRSA_prim:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RSAprim_ver.c"
	.loc 1 69 0
.LVL0:
	mov.d	%d2, %a5
	mov.d	%d3, %a6
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 72 0
	mov.d	%d2, %a4
	or.eq	%d15, %d2, 0
	.loc 1 74 0
	mov	%d8, 8195
	.loc 1 72 0
	jnz	%d15, .L2
	mov.aa	%a13, %a6
	mov	%d9, %d5
	mov.aa	%a12, %a5
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 76 0
	mov	%d4, 1572
.LVL1:
	call	esl_CheckWorkSpaceHeader
.LVL2:
	mov	%d8, %d2
.LVL3:
	jnz	%d2, .L2
.LBB2:
	.loc 1 83 0
	mov.aa	%a4, %a12
	mov	%d4, %d15
	mov.aa	%a5, %a13
	mov	%d5, %d9
	lea	%a6, [%a15] 16
	ld.a	%a7, [%a15] 8
	call	actRSAInitPublicKeyOperation
.LVL4:
	.loc 1 86 0
	jz	%d2, .L3
	.loc 1 88 0
	eq	%d15, %d2, 244
.LVL5:
	.loc 1 90 0
	mov	%d8, 8194
.LVL6:
	.loc 1 88 0
	jnz	%d15, .L2
	.loc 1 92 0
	eq	%d8, %d2, 144
	.loc 1 100 0
	mov	%d15, 8223
	mov	%d3, 8195
	seln	%d8, %d8, %d15, %d3
	j	.L2
.LVL7:
.L3:
	.loc 1 107 0
	mov.aa	%a4, %a15
	mov	%d4, 1792
	call	esl_SetWorkspaceStatus
.LVL8:
.L2:
.LBE2:
	.loc 1 112 0
	mov	%d2, %d8
	ret
.LFE15:
	.size	esl_initVerifyRSA_prim, .-esl_initVerifyRSA_prim
.section .text.esl_verifyRSA_prim,"ax",@progbits
	.align 1
	.global	esl_verifyRSA_prim
	.type	esl_verifyRSA_prim, @function
esl_verifyRSA_prim:
.LFB16:
	.loc 1 132 0
.LVL9:
	sub.a	%SP, 16
.LCFI0:
.LVL10:
	.loc 1 135 0
	mov.d	%d2, %a4
	mov.d	%d3, %a6
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 137 0
	mov	%d8, 8195
	.loc 1 135 0
	jnz	%d15, .L8
	.loc 1 135 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a7
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	jnz	%d15, .L8
	mov.aa	%a14, %a7
	mov.aa	%a12, %a6
	mov.aa	%a13, %a5
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 140 0 is_stmt 1
	mov	%d4, 1572
.LVL11:
	mov	%d5, 1792
	call	esl_CheckWorkSpaceHeaderAndState
.LVL12:
	mov	%d8, %d2
.LVL13:
	jnz	%d2, .L8
.LBB3:
	.loc 1 146 0
	lea	%a6, [%SP] 16
	ld.w	%d2, [%a12]0
.LVL14:
	st.w	[+%a6]-4, %d2
	.loc 1 147 0
	ld.w	%d3, [%a15] 8
	st.w	[%SP]0, %d3
	mov.aa	%a4, %a13
	mov	%d4, %d15
	mov.aa	%a5, %a14
	lea	%a7, [%a15] 16
	call	actRSAPublicKeyOperation
.LVL15:
	.loc 1 150 0
	jz	%d2, .L9
	.loc 1 152 0
	eq	%d8, %d2, 244
.LVL16:
	.loc 1 159 0
	mov	%d15, 8220
.LVL17:
	mov	%d2, 8199
.LVL18:
	seln	%d8, %d8, %d15, %d2
	j	.L8
.LVL19:
.L9:
	.loc 1 165 0
	ld.hu	%d15, [%SP] 12
.LVL20:
	st.w	[%a12]0, %d15
.LVL21:
.L8:
.LBE3:
	.loc 1 170 0
	mov	%d2, %d8
	ret
.LFE16:
	.size	esl_verifyRSA_prim, .-esl_verifyRSA_prim
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
	.uleb128 0x10
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSA.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9d6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_RSAprim_ver.c"
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
	.uaword	0x154
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19c
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
	.uaword	0x1cc
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
	.uaword	0x174
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x18e
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1be
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21f
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x237
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x250
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x284
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ad
	.uleb128 0x5
	.uaword	0x269
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x284
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x284
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x33e
	.uleb128 0x7
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x33e
	.byte	0
	.uleb128 0x7
	.string	"m_length"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x292
	.byte	0x4
	.uleb128 0x7
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x292
	.byte	0x8
	.uleb128 0x7
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x33e
	.byte	0xc
	.uleb128 0x7
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x2b2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b2
	.uleb128 0x8
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x2e5
	.uleb128 0x9
	.uahalf	0x204
	.byte	0x4
	.uahalf	0x495
	.uaword	0x383
	.uleb128 0x7
	.string	"cipher"
	.byte	0x4
	.uahalf	0x497
	.uaword	0x383
	.byte	0
	.uleb128 0xa
	.string	"message"
	.byte	0x4
	.uahalf	0x498
	.uaword	0x393
	.uahalf	0x100
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x393
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x3a3
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.string	"actRSACipherAndMSgStruct"
	.byte	0x4
	.uahalf	0x499
	.uaword	0x356
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x4
	.uahalf	0x49f
	.uaword	0x3f4
	.uleb128 0xe
	.string	"tmpInit"
	.byte	0x4
	.uahalf	0x4a1
	.uaword	0x3f4
	.uleb128 0xe
	.string	"cipherAndMsg"
	.byte	0x4
	.uahalf	0x4a2
	.uaword	0x3a3
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x404
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x81
	.byte	0
	.uleb128 0x9
	.uahalf	0x624
	.byte	0x4
	.uahalf	0x49b
	.uaword	0x47e
	.uleb128 0x7
	.string	"wsRSARing"
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x344
	.byte	0
	.uleb128 0x7
	.string	"tmp"
	.byte	0x4
	.uahalf	0x4a3
	.uaword	0x3c4
	.byte	0x14
	.uleb128 0xa
	.string	"RRBuffer"
	.byte	0x4
	.uahalf	0x4a5
	.uaword	0x393
	.uahalf	0x21c
	.uleb128 0xa
	.string	"exponent"
	.byte	0x4
	.uahalf	0x4a6
	.uaword	0x383
	.uahalf	0x320
	.uleb128 0xa
	.string	"modulusBuffer"
	.byte	0x4
	.uahalf	0x4a7
	.uaword	0x383
	.uahalf	0x420
	.uleb128 0xa
	.string	"tmpExp"
	.byte	0x4
	.uahalf	0x4a8
	.uaword	0x393
	.uahalf	0x520
	.byte	0
	.uleb128 0x8
	.string	"actRSAPRIMSTRUCT"
	.byte	0x4
	.uahalf	0x4aa
	.uaword	0x404
	.uleb128 0x3
	.string	"eslt_Size8"
	.byte	0x5
	.byte	0x3f
	.uaword	0x21f
	.uleb128 0x3
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x237
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x250
	.uleb128 0x3
	.string	"eslt_Byte"
	.byte	0x5
	.byte	0x46
	.uaword	0x497
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x4bc
	.uleb128 0x3
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x4a9
	.uleb128 0x3
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x4bc
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x543
	.uleb128 0x4
	.byte	0x4
	.uaword	0x549
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x597
	.uleb128 0x7
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x4e0
	.byte	0
	.uleb128 0x7
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x4f3
	.byte	0x4
	.uleb128 0x7
	.string	"watchdog"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x527
	.byte	0x8
	.uleb128 0x7
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x508
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x54b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4cf
	.uleb128 0x9
	.uahalf	0x634
	.byte	0x5
	.uahalf	0x587
	.uaword	0x5eb
	.uleb128 0x7
	.string	"header"
	.byte	0x5
	.uahalf	0x589
	.uaword	0x597
	.byte	0
	.uleb128 0x7
	.string	"wsRSAPrimBuf"
	.byte	0x5
	.uahalf	0x58a
	.uaword	0x47e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"eslt_WorkSpaceRSAver_prim"
	.byte	0x5
	.uahalf	0x58b
	.uaword	0x5ba
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4e0
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x276
	.uleb128 0x10
	.byte	0x1
	.string	"esl_initVerifyRSA_prim"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x613
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x762
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x40
	.uaword	0x762
	.uaword	.LLST0
	.uleb128 0x12
	.string	"keyPairModuleSize"
	.byte	0x1
	.byte	0x41
	.uaword	0x4e0
	.uaword	.LLST1
	.uleb128 0x12
	.string	"keyPairModule"
	.byte	0x1
	.byte	0x42
	.uaword	0x768
	.uaword	.LLST2
	.uleb128 0x12
	.string	"publicKeyExponentSize"
	.byte	0x1
	.byte	0x43
	.uaword	0x4e0
	.uaword	.LLST3
	.uleb128 0x12
	.string	"publicKeyExponent"
	.byte	0x1
	.byte	0x44
	.uaword	0x768
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0x46
	.uaword	0x613
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x74a
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.byte	0x53
	.uaword	0x2c4
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LVL4
	.uaword	0x88d
	.uaword	0x732
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.uleb128 0x16
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL8
	.uaword	0x8dd
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x700
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL2
	.uaword	0x90f
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x624
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5eb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x76e
	.uleb128 0x5
	.uaword	0x4cf
	.uleb128 0x10
	.byte	0x1
	.string	"esl_verifyRSA_prim"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.uaword	0x613
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x88d
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7f
	.uaword	0x762
	.uaword	.LLST7
	.uleb128 0x12
	.string	"signatureSize"
	.byte	0x1
	.byte	0x80
	.uaword	0x4e0
	.uaword	.LLST8
	.uleb128 0x12
	.string	"signature"
	.byte	0x1
	.byte	0x81
	.uaword	0x768
	.uaword	.LLST9
	.uleb128 0x12
	.string	"messageSize"
	.byte	0x1
	.byte	0x82
	.uaword	0x60d
	.uaword	.LLST10
	.uleb128 0x12
	.string	"message"
	.byte	0x1
	.byte	0x83
	.uaword	0x5b4
	.uaword	.LLST11
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0x85
	.uaword	0x613
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0x86e
	.uleb128 0x18
	.string	"messageLen"
	.byte	0x1
	.byte	0x92
	.uaword	0x292
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.byte	0x93
	.uaword	0x2c4
	.uaword	.LLST13
	.uleb128 0x17
	.uaword	.LVL15
	.uaword	0x94c
	.uleb128 0x16
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL12
	.uaword	0x99e
	.uleb128 0x16
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x700
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x624
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"actRSAInitPublicKeyOperation"
	.byte	0x7
	.byte	0x50
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x8d7
	.uleb128 0x1a
	.uaword	0x2a7
	.uleb128 0x1a
	.uaword	0x292
	.uleb128 0x1a
	.uaword	0x2a7
	.uleb128 0x1a
	.uaword	0x292
	.uleb128 0x1a
	.uaword	0x8d7
	.uleb128 0x1a
	.uaword	0x543
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x47e
	.uleb128 0x1b
	.byte	0x1
	.string	"esl_SetWorkspaceStatus"
	.byte	0x8
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x909
	.uleb128 0x1a
	.uaword	0x909
	.uleb128 0x1a
	.uaword	0x4f3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x597
	.uleb128 0x19
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeader"
	.byte	0x8
	.byte	0x72
	.byte	0x1
	.uaword	0x613
	.byte	0x1
	.uaword	0x941
	.uleb128 0x1a
	.uaword	0x941
	.uleb128 0x1a
	.uaword	0x4e0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x947
	.uleb128 0x5
	.uaword	0x597
	.uleb128 0x19
	.byte	0x1
	.string	"actRSAPublicKeyOperation"
	.byte	0x7
	.byte	0x71
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x992
	.uleb128 0x1a
	.uaword	0x2a7
	.uleb128 0x1a
	.uaword	0x292
	.uleb128 0x1a
	.uaword	0x992
	.uleb128 0x1a
	.uaword	0x998
	.uleb128 0x1a
	.uaword	0x8d7
	.uleb128 0x1a
	.uaword	0x543
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x269
	.uleb128 0x4
	.byte	0x4
	.uaword	0x292
	.uleb128 0x1c
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeaderAndState"
	.byte	0x8
	.byte	0x97
	.byte	0x1
	.uaword	0x613
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x941
	.uleb128 0x1a
	.uaword	0x4e0
	.uleb128 0x1a
	.uaword	0x4f3
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL8
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL8
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL8
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
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL12-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL12-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL21
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
.LASF1:
	.string	"returnValue"
.LASF2:
	.string	"actReturnValue"
.LASF0:
	.string	"workSpace"
	.extern	actRSAPublicKeyOperation,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeaderAndState,STT_FUNC,0
	.extern	esl_SetWorkspaceStatus,STT_FUNC,0
	.extern	actRSAInitPublicKeyOperation,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeader,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
