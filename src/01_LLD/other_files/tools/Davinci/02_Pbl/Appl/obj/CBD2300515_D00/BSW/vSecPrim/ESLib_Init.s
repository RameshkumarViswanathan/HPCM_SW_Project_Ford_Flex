	.file	"ESLib_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_initESCryptoLib,"ax",@progbits
	.align 1
	.global	esl_initESCryptoLib
	.type	esl_initESCryptoLib, @function
esl_initESCryptoLib:
.LFB0:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Init.c"
	.loc 1 55 0
	.loc 1 57 0
	mov	%d2, 0
	ret
.LFE0:
	.size	esl_initESCryptoLib, .-esl_initESCryptoLib
.section .text.esl_initWorkSpaceHeader,"ax",@progbits
	.align 1
	.global	esl_initWorkSpaceHeader
	.type	esl_initWorkSpaceHeader, @function
esl_initWorkSpaceHeader:
.LFB1:
	.loc 1 72 0
.LVL0:
	.loc 1 78 0
	mov	%d2, 8195
	.loc 1 76 0
	jz.a	%a4, .L3
	.loc 1 83 0
	st.w	[%a4]0, %d4
	.loc 1 84 0
	mov	%d15, 127
	st.h	[%a4] 4, %d15
	.loc 1 85 0
	st.a	[%a4] 8, %a5
	.loc 1 87 0
	mov	%d15, 0
	st.w	[%a4] 12, %d15
.LVL1:
	.loc 1 89 0
	mov	%d2, 0
.LVL2:
.L3:
	.loc 1 93 0
	ret
.LFE1:
	.size	esl_initWorkSpaceHeader, .-esl_initWorkSpaceHeader
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x412
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Init.c"
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x188
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
	.uaword	0x1b8
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
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x17a
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1aa
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x20b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x20b
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x224
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x26a
	.uleb128 0x3
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x257
	.uleb128 0x3
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x26a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x2e0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e6
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x32f
	.uleb128 0x8
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x27d
	.byte	0
	.uleb128 0x8
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x290
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x210
	.uaword	0x2c4
	.byte	0x8
	.uleb128 0x8
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x2a5
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x2e8
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x23d
	.uleb128 0xa
	.byte	0x1
	.string	"esl_initESCryptoLib"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	0x34c
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"esl_initWorkSpaceHeader"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x34c
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x40a
	.uleb128 0xc
	.string	"workSpaceHeader"
	.byte	0x1
	.byte	0x45
	.uaword	0x40a
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"workSpaceSize"
	.byte	0x1
	.byte	0x46
	.uaword	0x410
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x47
	.uaword	0x2c4
	.byte	0x1
	.byte	0x65
	.uleb128 0xe
	.string	"retVal"
	.byte	0x1
	.byte	0x49
	.uaword	0x34c
	.uaword	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x32f
	.uleb128 0xf
	.uaword	0x27d
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE1
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"watchdog"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
