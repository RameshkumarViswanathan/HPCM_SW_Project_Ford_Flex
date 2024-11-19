	.file	"fbl_hw.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.type	FblHwRegisterPasswordAccess, @function
FblHwRegisterPasswordAccess:
.LFB17:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_hw.c"
	.loc 1 292 0
.LVL0:
	.loc 1 301 0
	movh.a	%a15, hi:fblWdtRegisters
	lea	%a15, [%a15] lo:fblWdtRegisters
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL1:
	ld.a	%a15, [%a15] 4
.LVL2:
	.loc 1 302 0
	ld.w	%d2, [%a2]0
.LVL3:
	.loc 1 303 0
	ld.w	%d3, [%a15]0
.LVL4:
	.loc 1 306 0
	mov.u	%d15, 65532
	and	%d15, %d2
	xor	%d15, %d15, 252
.LVL5:
	.loc 1 309 0
	jz.t	%d3, 7, .L2
	.loc 1 318 0
	sh	%d4, %d15, 1
.LVL6:
	mov.u	%d5, 65532
	and	%d4, %d5
.LVL7:
	.loc 1 319 0
	sh	%d6, %d15, -12
	sh	%d5, %d15, -13
	xor	%d5, %d6
	sh	%d6, %d15, -11
	xor	%d5, %d6
	sh	%d15, -1
.LVL8:
	xor	%d15, %d5
	and	%d15, %d15, 4
	or	%d15, %d4
.LVL9:
.L2:
	.loc 1 324 0
	insert	%d2, %d2, 0, 0, 16
.LVL10:
	.loc 1 325 0
	or	%d15, %d2
.LVL11:
	or	%d2, %d15, 1
.LVL12:
	mov	%d4, %d2
	.loc 1 331 0
	jz.t	%d3, 8, .L3
	.loc 1 334 0
	ld.w	%d3, [%a15]0
.LVL13:
	.loc 1 339 0
	not	%d3
.LVL14:
	insert	%d3, %d3, 1, 0, 16
.LVL15:
	.loc 1 338 0
	insert	%d15, %d15, 0, 16, 16
.LVL16:
	.loc 1 339 0
	or	%d4, %d3, %d15
.LVL17:
.L3:
	.loc 1 343 0
	st.w	[%a2]0, %d4
	.loc 1 346 0
	ret
.LFE17:
	.size	FblHwRegisterPasswordAccess, .-FblHwRegisterPasswordAccess
	.align 1
	.type	FblHwRegisterModifyAccess, @function
FblHwRegisterModifyAccess:
.LFB18:
	.loc 1 358 0
.LVL18:
	.loc 1 366 0
	movh.a	%a15, hi:fblWdtRegisters
	lea	%a15, [%a15] lo:fblWdtRegisters
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a15, [%a15]0
.LVL19:
	.loc 1 369 0
	and	%d6, %d6, 1
.LVL20:
	insert	%d5, %d5, 2, 0, 2
.LVL21:
	.loc 1 372 0
	or	%d5, %d6
.LVL22:
	.loc 1 375 0
	st.w	[%a15]0, %d5
.L6:
	.loc 1 378 0 discriminator 1
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 1
	jne	%d15, %d6, .L6
	.loc 1 382 0
	ret
.LFE18:
	.size	FblHwRegisterModifyAccess, .-FblHwRegisterModifyAccess
	.align 1
	.type	FblHwRegisterGetIndex, @function
FblHwRegisterGetIndex:
.LFB16:
	.loc 1 248 0
.LVL23:
	.loc 1 260 0
	mov	%d15, 0
	.loc 1 254 0
	jz	%d4, .L10
	.loc 1 252 0
	mov	%d15, 7
	.loc 1 254 0
	jne	%d4, 1, .L9
.LVL24:
.LBB4:
.LBB5:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL25:
#NO_APP
.LBE5:
.LBE4:
	.loc 1 268 0
	and	%d15, %d15, 7
.LVL26:
	add	%d15, 1
.LVL27:
	.loc 1 270 0
	j	.L9
.LVL28:
.L9:
	.loc 1 279 0
	jlt.u	%d15, 7, .L10
	.loc 1 279 0 is_stmt 0 discriminator 1
	mov	%d4, 80
.LVL29:
	call	ApplFblFatalError
.LVL30:
.L10:
	.loc 1 282 0 is_stmt 1
	mov	%d2, %d15
	ret
.LFE16:
	.size	FblHwRegisterGetIndex, .-FblHwRegisterGetIndex
	.align 1
	.global	FblTimerInit
	.type	FblTimerInit, @function
FblTimerInit:
.LFB14:
	.loc 1 211 0
	.loc 1 212 0
	ld.w	%d15, 0xf0001010
	addi	%d15, %d15, -31073
	addih	%d15, %d15, 2
	st.w	0xf0001030, %d15
	.loc 1 213 0
	mov	%d15, 31
	st.w	0xf0001038, %d15
	.loc 1 214 0
	mov	%d15, 0
	st.w	0xf000103c, %d15
	ret
.LFE14:
	.size	FblTimerInit, .-FblTimerInit
	.align 1
	.global	FblGetTimerValue
	.type	FblGetTimerValue, @function
FblGetTimerValue:
.LFB15:
	.loc 1 229 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 233 0
	ld.w	%d15, 0xf0001010
	st.w	[%SP] 4, %d15
	.loc 1 235 0
	ld.w	%d2, [%SP] 4
	.loc 1 236 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE15:
	.size	FblGetTimerValue, .-FblGetTimerValue
	.align 1
	.global	FblHwRegisterUnlock
	.type	FblHwRegisterUnlock, @function
FblHwRegisterUnlock:
.LFB19:
	.loc 1 393 0
.LVL31:
	.loc 1 398 0
	call	FblHwRegisterGetIndex
.LVL32:
	mov	%d15, %d2
.LVL33:
	.loc 1 400 0
	mov	%d4, %d2
	call	FblHwRegisterPasswordAccess
.LVL34:
	.loc 1 403 0
	mov	%d4, %d15
	mov	%d5, %d2
	mov	%d6, 0
	call	FblHwRegisterModifyAccess
.LVL35:
	ret
.LFE19:
	.size	FblHwRegisterUnlock, .-FblHwRegisterUnlock
	.align 1
	.global	FblHwRegisterLock
	.type	FblHwRegisterLock, @function
FblHwRegisterLock:
.LFB20:
	.loc 1 415 0
.LVL36:
	.loc 1 420 0
	call	FblHwRegisterGetIndex
.LVL37:
	mov	%d15, %d2
.LVL38:
	.loc 1 422 0
	mov	%d4, %d2
	call	FblHwRegisterPasswordAccess
.LVL39:
	.loc 1 425 0
	mov	%d4, %d15
	mov	%d5, %d2
	mov	%d6, 1
	call	FblHwRegisterModifyAccess
.LVL40:
	ret
.LFE20:
	.size	FblHwRegisterLock, .-FblHwRegisterLock
	.align 1
	.global	FblHwRegisterModify
	.type	FblHwRegisterModify, @function
FblHwRegisterModify:
.LFB21:
	.loc 1 439 0
.LVL41:
	mov	%d9, %d5
	mov	%d8, %d6
	.loc 1 444 0
	call	FblHwRegisterGetIndex
.LVL42:
	mov	%d10, %d2
.LVL43:
	.loc 1 446 0
	mov	%d4, %d2
	call	FblHwRegisterPasswordAccess
.LVL44:
	.loc 1 449 0
	and	%d2, %d2, 3
.LVL45:
	.loc 1 450 0
	sh	%d3, %d9, 2
	insert	%d3, %d3, 0, 16, 16
	sh	%d6, %d8, 16
	or	%d5, %d3, %d6
	.loc 1 453 0
	mov	%d4, %d10
	or	%d5, %d2
	mov	%d6, 1
	call	FblHwRegisterModifyAccess
.LVL46:
	ret
.LFE21:
	.size	FblHwRegisterModify, .-FblHwRegisterModify
	.align 1
	.global	FblOwnMemcpy
	.type	FblOwnMemcpy, @function
FblOwnMemcpy:
.LFB22:
	.loc 1 482 0
.LVL47:
	mov.aa	%a14, %a4
	mov.aa	%a13, %a5
.LVL48:
	.loc 1 497 0
	jz	%d4, .L21
	.loc 1 494 0
	mov.d	%d15, %a4
	andn	%d15, %d15, ~(-2)
	mov.a	%a12, %d15
	.loc 1 500 0
	mov.d	%d15, %a4
	jz.t	%d15, 0, .L22
.LVL49:
	.loc 1 504 0
	ld.bu	%d2, [%a12]0
	.loc 1 505 0
	ld.bu	%d15, [%a13+]1
	sh	%d15, %d15, 8
	or	%d15, %d2
.LVL50:
	.loc 1 506 0
	st.h	[%a12+]2, %d15
	.loc 1 509 0
	add	%d4, -1
.LVL51:
.L22:
	.loc 1 514 0
	and	%d10, %d4, 1
.LVL52:
	.loc 1 516 0
	sh	%d8, %d4, -1
.LVL53:
	.loc 1 517 0
	mov	%d15, 0
	.loc 1 519 0
	jz	%d8, .L23
	mov	%d9, 0
.LVL54:
.L25:
	.loc 1 521 0
	and	%d2, %d15, 63
	jnz	%d2, .L24
	.loc 1 523 0
	call	FblLookForWatchdogVoid
.LVL55:
.L24:
	.loc 1 526 0 discriminator 2
	addsc.a	%a3, %a12, %d9, 0
	addsc.a	%a15, %a13, %d9, 0
	ld.bu	%d2, [%a15] 1
	sh	%d2, %d2, 8
	ld.bu	%d3, [%a15]0
	or	%d2, %d3
	st.h	[%a3]0, %d2
	.loc 1 527 0 discriminator 2
	add	%d9, 2
.LVL56:
	.loc 1 519 0 discriminator 2
	add	%d15, 1
.LVL57:
	jne	%d15, %d8, .L25
	sh	%d15, %d8, 1
.LVL58:
.L23:
	.loc 1 531 0
	jne	%d10, 1, .L21
	.loc 1 533 0
	addsc.a	%a12, %a12, %d8, 1
.LVL59:
	ld.hu	%d2, [%a12]0
.LVL60:
	.loc 1 534 0
	andn	%d2, %d2, ~(-256)
.LVL61:
	.loc 1 535 0
	addsc.a	%a13, %a13, %d15, 0
.LVL62:
	ld.bu	%d15, [%a13]0
	or	%d15, %d2
	.loc 1 536 0
	st.h	[%a12]0, %d15
.LVL63:
.L21:
	.loc 1 541 0
	mov.aa	%a2, %a14
	ret
.LFE22:
	.size	FblOwnMemcpy, .-FblOwnMemcpy
	.align 1
	.global	FblReadByte
	.type	FblReadByte, @function
FblReadByte:
.LFB23:
	.loc 1 556 0
.LVL64:
	.loc 1 558 0
	mov.a	%a15, %d4
	ld.bu	%d2, [%a15]0
	ret
.LFE23:
	.size	FblReadByte, .-FblReadByte
	.align 1
	.global	FblReadBlock
	.type	FblReadBlock, @function
FblReadBlock:
.LFB24:
	.loc 1 570 0
.LVL65:
	mov	%d15, %d5
	.loc 1 571 0
	mov.a	%a5, %d4
	mov	%d4, %d5
.LVL66:
	call	FblOwnMemcpy
.LVL67:
	.loc 1 573 0
	mov	%d2, %d15
	ret
.LFE24:
	.size	FblReadBlock, .-FblReadBlock
	.global	fblCurrentCmpValue
.section .bss,"aw",@nobits
	.align 2
	.type	fblCurrentCmpValue, @object
	.size	fblCurrentCmpValue, 4
fblCurrentCmpValue:
	.zero	4
	.global	fblCurrentTimer
	.align 2
	.type	fblCurrentTimer, @object
	.size	fblCurrentTimer, 4
fblCurrentTimer:
	.zero	4
.section .rodata,"a",@progbits
	.align 2
	.type	fblWdtRegisters, @object
	.size	fblWdtRegisters, 56
fblWdtRegisters:
	.word	-268213592
	.word	-268213584
	.word	-268213684
	.word	-268213676
	.word	-268213672
	.word	-268213664
	.word	-268213660
	.word	-268213652
	.word	-268213648
	.word	-268213640
	.word	-268213636
	.word	-268213628
	.word	-268213624
	.word	-268213616
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.byte	0x4
	.uaword	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
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
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "../../../BSW/Fbl/fbl_hw.h"
	.file 6 "Include/fbl_ap.h"
	.file 7 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9cb
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_hw.c"
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
	.byte	0x3
	.uahalf	0x233
	.uaword	0x144
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x171
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x193
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x22d
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x205
	.uleb128 0x3
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x205
	.uleb128 0x3
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x23a
	.uleb128 0x3
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x250
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x2ce
	.uleb128 0x8
	.string	"FBL_WDT_SYSTEM"
	.sleb128 0
	.uleb128 0x8
	.string	"FBL_WDT_CPU"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"tFblWdtType"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x2a5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e8
	.uleb128 0x9
	.uaword	0x1e6
	.uleb128 0xa
	.byte	0x8
	.byte	0x1
	.byte	0x8a
	.uaword	0x30e
	.uleb128 0xb
	.string	"con0"
	.byte	0x1
	.byte	0x8c
	.uaword	0x30e
	.byte	0
	.uleb128 0xb
	.string	"sr"
	.byte	0x1
	.byte	0x8d
	.uaword	0x30e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x314
	.uleb128 0xc
	.uaword	0x205
	.uleb128 0xd
	.string	"tFblWdtRegisters"
	.byte	0x1
	.byte	0x8e
	.uaword	0x2ed
	.uleb128 0xe
	.string	"_mfcr"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uaword	0x363
	.uleb128 0xf
	.string	"__regaddr"
	.byte	0x2
	.byte	0x6f
	.uaword	0x363
	.uleb128 0x10
	.string	"__res"
	.byte	0x2
	.byte	0x71
	.uaword	0x215
	.byte	0
	.uleb128 0x9
	.uaword	0x215
	.uleb128 0x11
	.string	"FblHwRegisterPasswordAccess"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	0x205
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x423
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x123
	.uaword	0x205
	.uaword	.LLST0
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x125
	.uaword	0x205
	.uaword	.LLST1
	.uleb128 0x14
	.string	"wdtsr"
	.byte	0x1
	.uahalf	0x126
	.uaword	0x205
	.uaword	.LLST2
	.uleb128 0x15
	.string	"wdtcon0Value"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x205
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x128
	.uaword	0x319
	.uaword	.LLST3
	.uleb128 0x14
	.string	"prevPass"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x205
	.uaword	.LLST4
	.uleb128 0x14
	.string	"currentPass"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x205
	.uaword	.LLST5
	.byte	0
	.uleb128 0x16
	.string	"FblHwRegisterModifyAccess"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4be
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x165
	.uaword	0x205
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"regValue"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x205
	.uaword	.LLST6
	.uleb128 0x18
	.string	"lockBit"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x205
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x167
	.uaword	0x319
	.byte	0x5
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x168
	.uaword	0x205
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"lockBitTmp"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x205
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1a
	.string	"FblHwRegisterGetIndex"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.uaword	0x205
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54b
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf7
	.uaword	0x2ce
	.uaword	.LLST8
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf9
	.uaword	0x205
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	0x331
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x53a
	.uleb128 0x1e
	.uaword	0x344
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x20
	.uaword	0x355
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL30
	.uaword	0x98f
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"FblTimerInit"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"FblGetTimerValue"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	0x1f5
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a6
	.uleb128 0x25
	.string	"tempCount"
	.byte	0x1
	.byte	0xe6
	.uaword	0x314
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FblHwRegisterUnlock"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x632
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2ce
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x205
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x205
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	.LVL32
	.uaword	0x4be
	.uleb128 0x28
	.uaword	.LVL34
	.uaword	0x368
	.uaword	0x61c
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL35
	.uaword	0x423
	.uleb128 0x22
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FblHwRegisterLock"
	.byte	0x1
	.uahalf	0x19e
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6bc
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x19e
	.uaword	0x2ce
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x205
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x205
	.uaword	.LLST17
	.uleb128 0x27
	.uaword	.LVL37
	.uaword	0x4be
	.uleb128 0x28
	.uaword	.LVL39
	.uaword	0x368
	.uaword	0x6a6
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL40
	.uaword	0x423
	.uleb128 0x22
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FblHwRegisterModify"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x770
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x2ce
	.uaword	.LLST18
	.uleb128 0x18
	.string	"password"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1f5
	.uaword	.LLST19
	.uleb128 0x18
	.string	"reload"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1f5
	.uaword	.LLST20
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x205
	.uaword	.LLST21
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x205
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	.LVL42
	.uaword	0x4be
	.uleb128 0x28
	.uaword	.LVL44
	.uaword	0x368
	.uaword	0x75a
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL46
	.uaword	0x423
	.uleb128 0x22
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.uaword	0x225
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x861
	.uleb128 0x18
	.string	"dest"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x225
	.uaword	.LLST23
	.uleb128 0x18
	.string	"source"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x227
	.uaword	.LLST24
	.uleb128 0x18
	.string	"count"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x215
	.uaword	.LLST25
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x205
	.uaword	.LLST26
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x205
	.uaword	.LLST27
	.uleb128 0x14
	.string	"countTmp"
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x215
	.uaword	.LLST28
	.uleb128 0x14
	.string	"localSource"
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x2e2
	.uaword	.LLST29
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x1f5
	.uaword	.LLST30
	.uleb128 0x14
	.string	"localDest"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x861
	.uaword	.LLST31
	.uleb128 0x14
	.string	"countRemainder"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x205
	.uaword	.LLST32
	.uleb128 0x27
	.uaword	.LVL55
	.uaword	0x9b1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f5
	.uleb128 0x29
	.byte	0x1
	.string	"FblReadByte"
	.byte	0x1
	.uahalf	0x22b
	.byte	0x1
	.uaword	0x1e6
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x89f
	.uleb128 0x2a
	.string	"address"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x269
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"FblReadBlock"
	.byte	0x1
	.uahalf	0x239
	.byte	0x1
	.uaword	0x27d
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x91e
	.uleb128 0x18
	.string	"address"
	.byte	0x1
	.uahalf	0x239
	.uaword	0x269
	.uaword	.LLST33
	.uleb128 0x18
	.string	"buffer"
	.byte	0x1
	.uahalf	0x239
	.uaword	0x290
	.uaword	.LLST34
	.uleb128 0x18
	.string	"length"
	.byte	0x1
	.uahalf	0x239
	.uaword	0x27d
	.uaword	.LLST35
	.uleb128 0x21
	.uaword	.LVL67
	.uaword	0x770
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x319
	.uaword	0x92e
	.uleb128 0x2c
	.uaword	0x22e
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.string	"fblWdtRegisters"
	.byte	0x1
	.byte	0x9f
	.uaword	0x94b
	.byte	0x5
	.byte	0x3
	.uaword	fblWdtRegisters
	.uleb128 0x9
	.uaword	0x91e
	.uleb128 0x2d
	.string	"fblCurrentTimer"
	.byte	0x1
	.byte	0xb8
	.uaword	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fblCurrentTimer
	.uleb128 0x2d
	.string	"fblCurrentCmpValue"
	.byte	0x1
	.byte	0xba
	.uaword	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fblCurrentCmpValue
	.uleb128 0x2e
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x6
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x9b1
	.uleb128 0x2f
	.uaword	0x1e6
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"FblLookForWatchdogVoid"
	.byte	0x7
	.byte	0x66
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
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xfffe
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL2
	.uaword	.LFE17
	.uahalf	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xfffc
	.byte	0x1a
	.byte	0x8
	.byte	0xfc
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL23
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL42-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL42-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x19
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL47
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL54
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL47
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0xe
	.byte	0x8d
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0xb
	.byte	0x8d
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL52
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL67-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL67-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"wdtcon0"
.LASF2:
	.string	"regIndex"
.LASF1:
	.string	"wdtRegisters"
.LASF3:
	.string	"wdtType"
	.extern	FblLookForWatchdogVoid,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
