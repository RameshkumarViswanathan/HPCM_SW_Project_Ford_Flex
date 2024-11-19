	.file	"fbl_wd.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblInitWatchdog,"ax",@progbits
	.align 1
	.global	FblInitWatchdog
	.type	FblInitWatchdog, @function
FblInitWatchdog:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_wd.c"
	.loc 1 123 0
	.loc 1 124 0
	mov	%d15, 0
	movh.a	%a15, hi:P2Timer
	st.h	[%a15] lo:P2Timer, %d15
	.loc 1 125 0
	mov	%d15, 1
	movh.a	%a15, hi:WDInitFlag
	st.b	[%a15] lo:WDInitFlag, %d15
	.loc 1 129 0
	call	ApplFblWDInit
.LVL0:
	ret
.LFE14:
	.size	FblInitWatchdog, .-FblInitWatchdog
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	FblLookForWatchdog
	.type	FblLookForWatchdog, @function
FblLookForWatchdog:
.LFB16:
	.loc 1 168 0
.LVL1:
	.loc 1 171 0
	movh.a	%a15, hi:WDInitFlag
	ld.bu	%d15, [%a15] lo:WDInitFlag
	.loc 1 169 0
	mov	%d2, 0
	.loc 1 171 0
	jne	%d15, 1, .L14
	.loc 1 173 0
	ld.w	%d15, 0xf000103c
	jz.t	%d15, 1, .L14
	.loc 1 175 0
	ld.w	%d2, 0xf0001010
	movh.a	%a15, hi:fblCurrentTimer
	st.w	[%a15] lo:fblCurrentTimer, %d2
	ld.w	%d15, 0xf0001030
	movh.a	%a15, hi:fblCurrentCmpValue
	st.w	[%a15] lo:fblCurrentCmpValue, %d15
	jge.u	%d15, %d2, .L4
	.loc 1 175 0 is_stmt 0 discriminator 1
	addi	%d3, %d15, 12449
	jge.u	%d3, %d2, .L5
	.loc 1 175 0 discriminator 5
	mov	%d2, -12550
	jlt.u	%d2, %d15, .L5
	j	.L6
.L9:
	.loc 1 175 0 discriminator 9
	addi	%d15, %d15, 12449
	jlt.u	%d15, %d2, .L6
.L5:
	.loc 1 175 0 discriminator 11
	lea	%a15, -268431312
	ld.w	%d15, [%a15]0
	addi	%d15, %d15, 12499
	st.w	[%a15]0, %d15
	j	.L7
.L6:
	.loc 1 175 0 discriminator 12
	ld.w	%d15, 0xf0001010
	addi	%d15, %d15, 12499
	st.w	0xf0001030, %d15
.L7:
	.loc 1 175 0 discriminator 14
	lea	%a15, -268431296
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
.LVL2:
	.loc 1 178 0 is_stmt 1 discriminator 14
	movh.a	%a15, hi:P2Timer
	ld.hu	%d15, [%a15] lo:P2Timer
	jz	%d15, .L8
	.loc 1 180 0
	add	%d15, -1
	st.h	[%a15] lo:P2Timer, %d15
.L8:
	.loc 1 188 0
	movh.a	%a15, hi:WDTimer
	ld.bu	%d15, [%a15] lo:WDTimer
	.loc 1 176 0
	mov	%d2, 2
	.loc 1 188 0
	jz	%d15, .L14
	.loc 1 190 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] lo:WDTimer, %d15
	.loc 1 191 0
	jnz	%d15, .L14
	.loc 1 193 0
	call	ApplFblWDTrigger
.LVL3:
	.loc 1 194 0
	mov	%d15, 1
	st.b	[%a15] lo:WDTimer, %d15
.LVL4:
	.loc 1 195 0
	mov	%d2, 3
	ret
.LVL5:
.L4:
	.loc 1 175 0
	mov	%d3, -12550
	jlt.u	%d3, %d15, .L9
	j	.L6
.LVL6:
.L14:
	.loc 1 234 0
	ret
.LFE16:
	.size	FblLookForWatchdog, .-FblLookForWatchdog
	.align 1
	.global	FblLookForWatchdogVoid
	.type	FblLookForWatchdogVoid, @function
FblLookForWatchdogVoid:
.LFB15:
	.loc 1 149 0
	.loc 1 150 0
	call	FblLookForWatchdog
.LVL7:
	ret
.LFE15:
	.size	FblLookForWatchdogVoid, .-FblLookForWatchdogVoid
	.global	WDTimer
.section .bss,"aw",@nobits
	.type	WDTimer, @object
	.size	WDTimer, 1
WDTimer:
	.zero	1
	.global	WDInitFlag
	.type	WDInitFlag, @object
	.size	WDInitFlag, 1
WDInitFlag:
	.zero	1
	.global	P2Timer
	.align 1
	.type	P2Timer, @object
	.size	P2Timer, 2
P2Timer:
	.zero	2
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../BSW/Fbl/fbl_wd.h"
	.file 4 "../../../BSW/Fbl/fbl_hw.h"
	.file 5 "Include/fbl_apwd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x39e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_wd.c"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"tWdTime"
	.byte	0x3
	.byte	0x51
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x1
	.string	"FblInitWatchdog"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x27c
	.uleb128 0x6
	.uaword	.LVL0
	.uaword	0x376
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x1e5
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c5
	.uleb128 0x8
	.string	"retValue"
	.byte	0x1
	.byte	0xa9
	.uaword	0x1e5
	.uaword	.LLST0
	.uleb128 0x6
	.uaword	.LVL3
	.uaword	0x38a
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"FblLookForWatchdogVoid"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2fa
	.uleb128 0x6
	.uaword	.LVL7
	.uaword	0x27c
	.byte	0
	.uleb128 0x9
	.string	"P2Timer"
	.byte	0x1
	.byte	0x58
	.uaword	0x1f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P2Timer
	.uleb128 0x9
	.string	"WDInitFlag"
	.byte	0x1
	.byte	0x5a
	.uaword	0x1e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WDInitFlag
	.uleb128 0x9
	.string	"WDTimer"
	.byte	0x1
	.byte	0x5e
	.uaword	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WDTimer
	.uleb128 0xa
	.string	"fblCurrentTimer"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"fblCurrentCmpValue"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ApplFblWDInit"
	.byte	0x5
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ApplFblWDTrigger"
	.byte	0x5
	.byte	0x9f
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ApplFblWDTrigger,STT_FUNC,0
	.extern	fblCurrentCmpValue,STT_OBJECT,4
	.extern	fblCurrentTimer,STT_OBJECT,4
	.extern	ApplFblWDInit,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
