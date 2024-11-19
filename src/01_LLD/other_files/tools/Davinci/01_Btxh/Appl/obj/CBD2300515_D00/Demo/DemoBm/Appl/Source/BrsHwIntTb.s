	.file	"BrsHwIntTb.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.section .brsExcVect
	.align 8
	.align 5
	.globl brsTrap_0_Core0
	brsTrap_0_Core0: svlcx
	movh %d4, 0
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_1_Core0
	brsTrap_1_Core0: svlcx
	movh %d4, 1
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_2_Core0
	brsTrap_2_Core0: svlcx
	movh %d4, 2
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_3_Core0
	brsTrap_3_Core0: svlcx
	movh %d4, 3
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_4_Core0
	brsTrap_4_Core0: svlcx
	movh %d4, 4
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_5_Core0
	brsTrap_5_Core0: svlcx
	movh %d4, 5
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_6_Core0
	brsTrap_6_Core0: svlcx
	movh %d4, 6
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
	.align 5
	.globl brsTrap_7_Core0
	brsTrap_7_Core0: svlcx
	movh %d4, 7
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler
	ji %a14 
#NO_APP
.section .text.BrsHw_CoreExceptionHandler,"ax",@progbits
	.align 1
	.global	BrsHw_CoreExceptionHandler
	.type	BrsHw_CoreExceptionHandler, @function
BrsHw_CoreExceptionHandler:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwIntTb.c"
	.loc 1 69 0
.LVL0:
	.loc 1 71 0
	mov	%d4, 1
.LVL1:
	mov	%d5, 1
	mov	%d6, 0
	call	BrsMainExceptionHandler
.LVL2:
	ret
.LFE14:
	.size	BrsHw_CoreExceptionHandler, .-BrsHw_CoreExceptionHandler
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "Include/BrsMain.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2ac
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwIntTb.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
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
	.uaword	0x157
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19f
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
	.uaword	0x1cf
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
	.uleb128 0x4
	.byte	0x1
	.string	"BrsHw_CoreExceptionHandler"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x280
	.uleb128 0x5
	.string	"CLASS_TIN"
	.byte	0x1
	.byte	0x44
	.uaword	0x1c1
	.uaword	.LLST0
	.uleb128 0x6
	.uaword	.LVL2
	.uaword	0x280
	.uleb128 0x7
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x7
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"BrsMainExceptionHandler"
	.byte	0x3
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x177
	.uleb128 0x9
	.uaword	0x177
	.uleb128 0x9
	.uaword	0x191
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	BrsMainExceptionHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
