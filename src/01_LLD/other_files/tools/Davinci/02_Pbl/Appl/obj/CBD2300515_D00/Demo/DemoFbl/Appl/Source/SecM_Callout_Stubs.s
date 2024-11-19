	.file	"SecM_Callout_Stubs.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_getBytesRNG,"ax",@progbits
	.align 1
	.global	esl_getBytesRNG
	.type	esl_getBytesRNG, @function
esl_getBytesRNG:
.LFB0:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/SecM_Callout_Stubs.c"
	.loc 1 66 0
.LVL0:
	.loc 1 73 0
	jz	%d4, .L2
	.loc 1 75 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
.L2:
	.loc 1 83 0
	mov	%d2, 8192
	ret
.LFE0:
	.size	esl_getBytesRNG, .-esl_getBytesRNG
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
	.file 3 "../../../BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../BSW/vSecPrim/actITypes.h"
	.file 5 "../../../BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../BSW/vSecPrim/ESLib_ERC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x35e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/SecM_Callout_Stubs.c"
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
	.uaword	0x161
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1a9
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
	.uaword	0x1d9
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
	.uaword	0x181
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x19b
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1cb
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x244
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"eslt_Size8"
	.byte	0x5
	.byte	0x3f
	.uaword	0x22c
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x25d
	.uleb128 0x3
	.string	"eslt_Byte"
	.byte	0x5
	.byte	0x46
	.uaword	0x290
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x2a2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b5
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x276
	.uleb128 0x5
	.byte	0x1
	.string	"esl_getBytesRNG"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	0x2e7
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35c
	.uleb128 0x6
	.string	"targetLength"
	.byte	0x1
	.byte	0x41
	.uaword	0x35c
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.string	"target"
	.byte	0x1
	.byte	0x41
	.uaword	0x2e1
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"retVal"
	.byte	0x1
	.byte	0x43
	.uaword	0x2e7
	.uahalf	0x2000
	.byte	0
	.uleb128 0x8
	.uaword	0x2c6
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
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
