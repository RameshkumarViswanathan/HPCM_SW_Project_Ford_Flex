	.file	"BrsHwIntTb.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.section .brsExcVectRam,"ax"
	.align 8
	.align 5
	.globl brsTrap_Ram_0_Core0
	brsTrap_Ram_0_Core0: svlcx
	movh %d4, 0
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_1_Core0
	brsTrap_Ram_1_Core0: svlcx
	movh %d4, 1
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_2_Core0
	brsTrap_Ram_2_Core0: svlcx
	movh %d4, 2
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_3_Core0
	brsTrap_Ram_3_Core0: svlcx
	movh %d4, 3
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_4_Core0
	brsTrap_Ram_4_Core0: svlcx
	movh %d4, 4
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_5_Core0
	brsTrap_Ram_5_Core0: svlcx
	movh %d4, 5
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_6_Core0
	brsTrap_Ram_6_Core0: svlcx
	movh %d4, 6
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
	.align 5
	.globl brsTrap_Ram_7_Core0
	brsTrap_Ram_7_Core0: svlcx
	movh %d4, 7
	or %d4, %d15
	movh.a %a14, hi:BrsHw_CoreExceptionHandler_Ram
	lea %a14,[%a14]lo:BrsHw_CoreExceptionHandler_Ram
	ji %a14 
#NO_APP
.section .text.RamCodeSection,"ax",@progbits
	.align 1
	.global	BrsHw_CoreExceptionHandler_Ram
	.type	BrsHw_CoreExceptionHandler_Ram, @function
BrsHw_CoreExceptionHandler_Ram:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsHwIntTb.c"
	.loc 1 124 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 130 0
	mov	%d15, 0
	st.b	[%SP] 7, %d15
.L2:
	.loc 1 132 0 discriminator 1
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L2
	.loc 1 138 0
	ret
.LFE14:
	.size	BrsHw_CoreExceptionHandler_Ram, .-BrsHw_CoreExceptionHandler_Ram
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
	.byte	0x4
	.uaword	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x27a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsHwIntTb.c"
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
	.uaword	0x159
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
	.uaword	0x1c3
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
	.string	"BrsHw_CoreExceptionHandler_Ram"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x278
	.uleb128 0x5
	.string	"CLASS_TIN"
	.byte	0x1
	.byte	0x7b
	.uaword	0x1b5
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.string	"BrsMain_Continue"
	.byte	0x1
	.byte	0x81
	.uaword	0x278
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x7
	.uaword	0x179
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
