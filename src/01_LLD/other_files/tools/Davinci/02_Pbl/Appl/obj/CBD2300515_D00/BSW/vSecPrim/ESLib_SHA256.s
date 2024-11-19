	.file	"ESLib_SHA256.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_initSHA256,"ax",@progbits
	.align 1
	.global	esl_initSHA256
	.type	esl_initSHA256, @function
esl_initSHA256:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_SHA256.c"
	.loc 1 64 0
.LVL0:
	.loc 1 69 0
	mov	%d15, 8195
	.loc 1 67 0
	jz.a	%a4, .L2
	mov.aa	%a15, %a4
	.loc 1 71 0
	mov	%d4, 112
	call	esl_CheckWorkSpaceHeader
.LVL1:
	mov	%d15, %d2
.LVL2:
	jnz	%d2, .L2
	.loc 1 78 0
	lea	%a4, [%a15] 16
	call	actSHA256Init
.LVL3:
	.loc 1 79 0
	mov.aa	%a4, %a15
	mov	%d4, 2048
	call	esl_SetWorkspaceStatus
.LVL4:
.L2:
	.loc 1 83 0
	mov	%d2, %d15
	ret
.LFE15:
	.size	esl_initSHA256, .-esl_initSHA256
.section .text.esl_updateSHA256,"ax",@progbits
	.align 1
	.global	esl_updateSHA256
	.type	esl_updateSHA256, @function
esl_updateSHA256:
.LFB16:
	.loc 1 98 0
.LVL5:
	.loc 1 100 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 102 0
	mov	%d8, 8195
	.loc 1 100 0
	jnz	%d15, .L5
	mov.aa	%a12, %a5
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 104 0
	mov	%d4, 112
.LVL6:
	mov	%d5, 2048
	call	esl_CheckWorkSpaceHeaderAndState
.LVL7:
	mov	%d8, %d2
.LVL8:
	jnz	%d2, .L5
.LBB2:
	.loc 1 111 0
	lea	%a4, [%a15] 16
	mov.aa	%a5, %a12
	mov	%d4, %d15
	ld.a	%a6, [%a15] 8
	call	actSHA256Update
.LVL9:
	.loc 1 115 0
	ne	%d2, %d2, 248
.LVL10:
	.loc 1 117 0
	mov	%d15, 8236
.LVL11:
	sel	%d8, %d2, %d8, %d15
.LVL12:
.L5:
.LBE2:
	.loc 1 122 0
	mov	%d2, %d8
	ret
.LFE16:
	.size	esl_updateSHA256, .-esl_updateSHA256
.section .text.esl_finalizeSHA256,"ax",@progbits
	.align 1
	.global	esl_finalizeSHA256
	.type	esl_finalizeSHA256, @function
esl_finalizeSHA256:
.LFB17:
	.loc 1 135 0
.LVL13:
	.loc 1 137 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 1 139 0
	mov	%d8, 8195
	.loc 1 137 0
	jnz	%d15, .L8
	mov.aa	%a13, %a5
	mov.aa	%a15, %a4
	.loc 1 141 0
	mov	%d4, 112
	mov	%d5, 2048
	call	esl_CheckWorkSpaceHeaderAndState
.LVL14:
	mov	%d8, %d2
.LVL15:
	jnz	%d2, .L8
	.loc 1 148 0
	lea	%a12, [%a15] 16
	mov.aa	%a4, %a12
	mov.aa	%a5, %a13
	ld.a	%a6, [%a15] 8
	call	actSHA256Finalize
.LVL16:
	.loc 1 153 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	esl_ResetAndClearWorkspace
.LVL17:
.L8:
	.loc 1 157 0
	mov	%d2, %d8
	ret
.LFE17:
	.size	esl_finalizeSHA256, .-esl_finalizeSHA256
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
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/actISHA2_32.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x888
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_SHA256.c"
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
	.uaword	0x14f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x197
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
	.uaword	0x1c7
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
	.uaword	0x16f
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x189
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b9
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21a
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x232
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x24b
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x27f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a8
	.uleb128 0x5
	.uaword	0x264
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x27f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	0x264
	.uaword	0x2de
	.uleb128 0x7
	.uaword	0x2c2
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x70
	.byte	0x4
	.uahalf	0x259
	.uaword	0x354
	.uleb128 0x9
	.string	"H"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x354
	.byte	0
	.uleb128 0x9
	.string	"low_count"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x27f
	.byte	0x20
	.uleb128 0x9
	.string	"hi_count"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x27f
	.byte	0x24
	.uleb128 0x9
	.string	"buffer_used"
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x28d
	.byte	0x28
	.uleb128 0x9
	.string	"result_length"
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x271
	.byte	0x2c
	.uleb128 0x9
	.string	"buffer"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x2ce
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.uaword	0x27f
	.uaword	0x364
	.uleb128 0x7
	.uaword	0x2c2
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"actSHA256STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x2de
	.uleb128 0x3
	.string	"eslt_Size8"
	.byte	0x5
	.byte	0x3f
	.uaword	0x21a
	.uleb128 0x3
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x232
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x24b
	.uleb128 0x3
	.string	"eslt_Byte"
	.byte	0x5
	.byte	0x46
	.uaword	0x37c
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x3a1
	.uleb128 0x3
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x38e
	.uleb128 0x3
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x3a1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xa
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x428
	.uleb128 0x4
	.byte	0x4
	.uaword	0x42e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x47c
	.uleb128 0x9
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x3c5
	.byte	0
	.uleb128 0x9
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x3d8
	.byte	0x4
	.uleb128 0x9
	.string	"watchdog"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x40c
	.byte	0x8
	.uleb128 0x9
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x3ed
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x430
	.uleb128 0x8
	.byte	0x80
	.byte	0x5
	.uahalf	0x4bc
	.uaword	0x4c5
	.uleb128 0x9
	.string	"header"
	.byte	0x5
	.uahalf	0x4be
	.uaword	0x47c
	.byte	0
	.uleb128 0x9
	.string	"wsSHA256"
	.byte	0x5
	.uahalf	0x4bf
	.uaword	0x364
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"eslt_WorkSpaceSHA256"
	.byte	0x5
	.uahalf	0x4c0
	.uaword	0x499
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3b4
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x271
	.uleb128 0x5
	.uaword	0x3c5
	.uleb128 0xc
	.byte	0x1
	.string	"esl_initSHA256"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x4e8
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58e
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3f
	.uaword	0x58e
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x41
	.uaword	0x4e8
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LVL1
	.uaword	0x71a
	.uaword	0x562
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL3
	.uaword	0x757
	.uaword	0x576
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0x77f
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x800
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4c5
	.uleb128 0xc
	.byte	0x1
	.string	"esl_updateSHA256"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	0x4e8
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65b
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5f
	.uaword	0x58e
	.uaword	.LLST2
	.uleb128 0x12
	.string	"inputSize"
	.byte	0x1
	.byte	0x60
	.uaword	0x4fe
	.uaword	.LLST3
	.uleb128 0x12
	.string	"input"
	.byte	0x1
	.byte	0x61
	.uaword	0x65b
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x63
	.uaword	0x4e8
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x63d
	.uleb128 0x14
	.string	"result"
	.byte	0x1
	.byte	0x6f
	.uaword	0x2ad
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	.LVL9
	.uaword	0x7b1
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	.LVL7
	.uaword	0x7e4
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x800
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x661
	.uleb128 0x5
	.uaword	0x3b4
	.uleb128 0xc
	.byte	0x1
	.string	"esl_finalizeSHA256"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x4e8
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x71a
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x86
	.uaword	0x58e
	.uaword	.LLST7
	.uleb128 0x12
	.string	"messageDigest"
	.byte	0x1
	.byte	0x86
	.uaword	0x4e2
	.uaword	.LLST8
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x88
	.uaword	0x4e8
	.uaword	.LLST9
	.uleb128 0xf
	.uaword	.LVL14
	.uaword	0x7e4
	.uaword	0x6e9
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x800
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL16
	.uaword	0x823
	.uaword	0x703
	.uleb128 0x10
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	.LVL17
	.uaword	0x859
	.uleb128 0x10
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeader"
	.byte	0x7
	.byte	0x72
	.byte	0x1
	.uaword	0x4e8
	.byte	0x1
	.uaword	0x74c
	.uleb128 0x16
	.uaword	0x74c
	.uleb128 0x16
	.uaword	0x3c5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x752
	.uleb128 0x5
	.uaword	0x47c
	.uleb128 0x15
	.byte	0x1
	.string	"actSHA256Init"
	.byte	0x8
	.byte	0x4c
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x779
	.uleb128 0x16
	.uaword	0x779
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x364
	.uleb128 0x17
	.byte	0x1
	.string	"esl_SetWorkspaceStatus"
	.byte	0x7
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x16
	.uaword	0x7ab
	.uleb128 0x16
	.uaword	0x3d8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x47c
	.uleb128 0x15
	.byte	0x1
	.string	"actSHA256Update"
	.byte	0x8
	.byte	0x7c
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x7e4
	.uleb128 0x16
	.uaword	0x779
	.uleb128 0x16
	.uaword	0x2a2
	.uleb128 0x16
	.uaword	0x28d
	.uleb128 0x16
	.uaword	0x428
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeaderAndState"
	.byte	0x7
	.byte	0x97
	.byte	0x1
	.uaword	0x4e8
	.byte	0x1
	.uaword	0x823
	.uleb128 0x16
	.uaword	0x74c
	.uleb128 0x16
	.uaword	0x3c5
	.uleb128 0x16
	.uaword	0x3d8
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"actSHA256Finalize"
	.byte	0x8
	.byte	0xa5
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x853
	.uleb128 0x16
	.uaword	0x779
	.uleb128 0x16
	.uaword	0x853
	.uleb128 0x16
	.uaword	0x428
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x264
	.uleb128 0x17
	.byte	0x1
	.string	"esl_ResetAndClearWorkspace"
	.byte	0x7
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uaword	0x889
	.uleb128 0x16
	.uaword	0x7ab
	.uleb128 0x16
	.uaword	0x889
	.byte	0
	.uleb128 0x18
	.byte	0x4
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL12
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14-1
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL17
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x58
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
.LASF1:
	.string	"retVal"
.LASF0:
	.string	"workSpace"
	.extern	esl_ResetAndClearWorkspace,STT_FUNC,0
	.extern	actSHA256Finalize,STT_FUNC,0
	.extern	actSHA256Update,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeaderAndState,STT_FUNC,0
	.extern	esl_SetWorkspaceStatus,STT_FUNC,0
	.extern	actSHA256Init,STT_FUNC,0
	.extern	esl_CheckWorkSpaceHeader,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
