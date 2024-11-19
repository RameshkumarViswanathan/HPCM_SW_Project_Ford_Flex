	.file	"fbl_valstruct.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblValStructValidateBlockExtended,"ax",@progbits
	.align 1
	.global	FblValStructValidateBlockExtended
	.type	FblValStructValidateBlockExtended, @function
FblValStructValidateBlockExtended:
.LFB20:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_valstruct.c"
	.loc 1 1015 0
.LVL0:
	sub.a	%SP, 56
.LCFI0:
	mov.aa	%a13, %a4
	mov	%d15, %d4
	.loc 1 1027 0
	jz.t	%d4, 0, .L2
	.loc 1 1027 0 is_stmt 0 discriminator 1
	mov	%d4, 80
.LVL1:
	call	ApplFblFatalError
.LVL2:
.L2:
	.loc 1 1031 0 is_stmt 1
	jz.t	%d15, 1, .L3
	.loc 1 1031 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL3:
.L3:
	.loc 1 1035 0 is_stmt 1
	jz.t	%d15, 2, .L4
	.loc 1 1035 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL4:
.L4:
	.loc 1 1038 0 is_stmt 1
	movh.a	%a15, hi:vsInfo.3429
	ld.w	%d1, [%a13] 20
	st.w	[%a15] lo:vsInfo.3429, %d1
.LVL5:
.LBB14:
.LBB15:
	.loc 1 316 0
	mov	%d4, %d1
	movh.a	%a4, hi:readBuffer+4
	lea	%a4, [%a4] lo:readBuffer+4
	mov	%d5, 4
	call	FblReadProm
.LVL6:
	.loc 1 319 0
	mov	%d9, 5
	.loc 1 316 0
	jne	%d2, 4, .L5
	j	.L45
.L46:
	.loc 1 349 0
	mov	%d4, 2
	movh.a	%a4, hi:readBuffer+6
	lea	%a4, [%a4] lo:readBuffer+6
	call	FblMemGetInteger
.LVL7:
	.loc 1 350 0
	extr.u	%d15, %d2, 0, 16
	jge.u	%d15, 15, .L30
	.loc 1 352 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a2, [%a15] lo:vsInfo.3429
	st.b	[%a2] 8, %d2
	.loc 1 376 0
	and	%d2, %d2, 255
.LVL8:
	mul	%d15, %d2, 40
	add	%d10, %d15, 4
.LVL9:
	.loc 1 379 0
	ld.w	%d4, [%a15] lo:vsInfo.3429
	add	%d4, 4
	movh.a	%a4, hi:readBuffer+8
	lea	%a4, [%a4] lo:readBuffer+8
	mov	%d5, %d15
	call	FblReadProm
.LVL10:
	.loc 1 384 0
	mov	%d9, 5
	.loc 1 379 0
	jne	%d15, %d2, .L7
.LVL11:
	.loc 1 417 0
	lea	%a15, [%a15] lo:vsInfo.3429
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L8
	mov	%d8, 0
	.loc 1 419 0
	movh	%d9, hi:readBuffer
	addi	%d9, %d9, lo:readBuffer
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
.LVL12:
.L9:
	insert	%d15, %d8, 0, 16, 16
	mul	%d15, %d15, 40
	mov.a	%a2, %d15
	lea	%a4, [%a2] 8
	mov	%d4, 4
	addsc.a	%a4, %a4, %d9, 0
	call	FblMemGetInteger
.LVL13:
	addsc.a	%a12, %a15, %d15, 0
	st.w	[%a12] 12, %d2
	.loc 1 420 0
	mov.a	%a3, %d15
	lea	%a4, [%a3] 12
	mov	%d4, 4
	addsc.a	%a4, %a4, %d9, 0
	call	FblMemGetInteger
.LVL14:
	st.w	[%a12] 16, %d2
	.loc 1 422 0
	mov.a	%a2, %d15
	lea	%a4, [%a2] 20
	lea	%a5, [%a2] 16
	add.a	%a4, %a15
	addsc.a	%a5, %a5, %d9, 0
	mov	%d4, 32
	call	FblOwnMemcpy
.LVL15:
	add	%d15, %d8, 1
	extr.u	%d15, %d15, 0, 16
.LVL16:
	add	%d8, 1
	.loc 1 417 0
	ld.bu	%d2, [%a15] 8
	jlt.u	%d15, %d2, .L9
	j	.L8
.LVL17:
.L26:
.LBE15:
.LBE14:
	.loc 1 1060 0
	movh.a	%a2, hi:vsInfo.3429
	lea	%a15, [%a2] lo:vsInfo.3429
	ld.w	%d1, [%a13] 20
	addi	%d15, %d1, -256
	st.w	[%a2] lo:vsInfo.3429, %d15
	.loc 1 1061 0
	ld.w	%d2, [%a15] 4
.LVL18:
	addi	%d15, %d2, 256
	st.w	[%a15] 4, %d15
.LVL19:
.LBB18:
.LBB19:
	.loc 1 656 0
	movh.a	%a12, hi:blockSegInfo.3430
	ld.bu	%d4, [%a13]0
	lea	%a4, [%a12] lo:blockSegInfo.3430
	call	FblDiagGetSegmentList
.LVL20:
	.loc 1 659 0
	ld.bu	%d15, [%a12] lo:blockSegInfo.3430
	ld.bu	%d2, [%a15] 8
	add	%d2, 1
	jne	%d15, %d2, .L32
.LVL21:
.LBB20:
.LBB21:
	.loc 1 689 0
	mov	%d2, 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.b	[%a15] 652, %d2
.LVL22:
	.loc 1 692 0
	jz	%d15, .L27
	.loc 1 699 0
	movh.a	%a2, hi:vsInfo.3429
	ld.w	%d8, [%a2] lo:vsInfo.3429
	.loc 1 701 0
	ld.w	%d10, [%a15] 4
.LVL23:
	mov	%d2, 0
	mov	%d5, 0
	mov	%d3, 0
	.loc 1 695 0
	movh	%d4, hi:blockSegInfo.3430
	addi	%d4, %d4, lo:blockSegInfo.3430
	movh	%d0, hi:vsInfo.3429
	addi	%d0, %d0, lo:vsInfo.3429
	.loc 1 705 0
	mov	%d13, 1
.LVL24:
.L17:
	and	%d11, %d2, 255
.LVL25:
	.loc 1 695 0
	mov	%d12, %d2
	madd	%d6, %d4, %d2, 40
	mov.a	%a15, %d6
	ld.w	%d6, [%a15] 4
	sub	%d7, %d2, %d3
	madd	%d14, %d0, %d7, 40
	mov.a	%a15, %d14
	ld.w	%d1, [%a15] 12
	jne	%d6, %d1, .L12
	.loc 1 696 0
	madd	%d1, %d4, %d2, 40
	mov.a	%a2, %d14
	.loc 1 695 0
	mov.a	%a15, %d1
	ld.w	%d1, [%a15] 8
	ld.w	%d7, [%a2] 16
	jeq	%d1, %d7, .L13
.L12:
	.loc 1 699 0
	jnz	%d3, .L14
	jeq	%d6, %d8, .L15
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.b	[%a15] 652, %d5
	.loc 1 716 0
	mov	%d15, 6
	j	.L16
.L15:
	.loc 1 701 0
	madd	%d1, %d4, %d12, 40
	mov.a	%a15, %d1
	ld.w	%d3, [%a15] 8
.LVL26:
	jeq	%d3, %d10, .L33
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.b	[%a15] 652, %d5
	.loc 1 710 0
	mov	%d15, 2
	j	.L16
.L33:
	.loc 1 704 0
	mov	%d5, %d11
	.loc 1 705 0
	mov	%d3, %d13
.L13:
.LVL27:
	add	%d2, 1
.LVL28:
	.loc 1 692 0
	and	%d6, %d2, 255
	jlt.u	%d6, %d15, .L17
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.b	[%a15] 652, %d5
.LVL29:
.L27:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
.LBB26:
.LBB27:
	.loc 1 447 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	ld.bu	%d7, [%a15] 652
	addi	%d2, %d7, 1
	and	%d2, %d2, 255
.LVL30:
	movh.a	%a15, hi:blockSegInfo.3430
	ld.bu	%d15, [%a15] lo:blockSegInfo.3430
	jge.u	%d2, %d15, .L18
	mov	%d6, 0
	.loc 1 449 0
	lea	%a15, [%a15] lo:blockSegInfo.3430
	add	%d7, 2
.LVL31:
.L19:
	and	%d3, %d6, 255
	add	%d15, %d2, %d3
	and	%d15, 255
.LVL32:
	add	%d4, %d15, -1
	mov.d	%d5, %a15
	madd	%d4, %d5, %d4, 40
	mov.a	%a2, %d4
	add.a	%a2, 4
	madd	%d4, %d5, %d15, 40
	mov.a	%a3, %d4
	add.a	%a3, 4
		# #chunks=5, chunksize=8, remains=0
	lea	%a4, 5-1
	0:
	ld.d	%e4, [%a3+]8
	st.d	[%a2+]8, %e4
	loop	%a4, 0b
.LVL33:
	.loc 1 447 0
	ld.bu	%d15, [%a15]0
	add	%d6, 1
	add	%d3, %d7
	and	%d3, %d3, 255
	jlt.u	%d3, %d15, .L19
.L18:
	.loc 1 453 0
	add	%d15, -1
	movh.a	%a15, hi:blockSegInfo.3430
	st.b	[%a15] lo:blockSegInfo.3430, %d15
.LVL34:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 1 745 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	ld.bu	%d0, [%a15] 8
	mov	%d7, 0
	.loc 1 750 0
	movh	%d8, hi:vsInfo.3429
	addi	%d8, %d8, lo:vsInfo.3429
	movh	%d1, hi:blockSegInfo.3430
	addi	%d1, %d1, lo:blockSegInfo.3430
	.loc 1 753 0
	mov	%d10, 4
	.loc 1 750 0
	mov	%d2, 1
	.loc 1 745 0
	jnz	%d0, .L44
	j	.L39
.LVL35:
.L23:
	.loc 1 750 0
	mov.a	%a2, %d6
	addsc.a	%a3, %a2, %d4, 0
	mov.a	%a4, %d5
	addsc.a	%a2, %a4, %d4, 0
	ld.bu	%d3, [%a3] 20
	ld.bu	%d15, [%a2] 12
	jne	%d3, %d15, .L35
.LVL36:
	add	%d4, 1
.LVL37:
	.loc 1 748 0
	loop	%a15, .L23
	j	.L22
.LVL38:
.L35:
	.loc 1 753 0
	mov	%d9, %d10
	j	.L22
.LVL39:
.L36:
	mov	%d9, %d10
.LVL40:
.L22:
	add	%d7, 1
.LVL41:
	.loc 1 745 0
	and	%d15, %d7, 255
	jge.u	%d15, %d0, .L39
.LVL42:
.L44:
	.loc 1 750 0
	mul	%d15, %d7, 40
	mov.a	%a15, %d8
	addsc.a	%a2, %a15, %d15, 0
	mov.a	%a3, %d1
	addsc.a	%a15, %a3, %d15, 0
	ld.bu	%d3, [%a2] 20
	ld.bu	%d15, [%a15] 12
	mov	%d4, %d2
	mul	%d5, %d7, 40
	add	%d6, %d8, %d5
	add	%d5, %d1
	lea	%a15, 30
	jeq	%d3, %d15, .L23
	j	.L36
.LVL43:
.L45:
.LBE29:
.LBE28:
.LBB30:
.LBB16:
	.loc 1 338 0
	mov	%d4, 2
	movh.a	%a4, hi:readBuffer+4
	lea	%a4, [%a4] lo:readBuffer+4
	call	FblMemGetInteger
.LVL44:
	extr.u	%d2, %d2, 0, 16
	jnz	%d2, .L37
	j	.L46
.LVL45:
.L8:
	.loc 1 427 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.w	[%a15] 4, %d10
.LBE16:
.LBE30:
	.loc 1 1047 0
	ld.w	%d1, [%a13] 20
	addi	%d4, %d1, -256
	movh.a	%a4, hi:readBuffer+4
	lea	%a4, [%a4] lo:readBuffer+4
	mov	%d5, 256
	call	FblReadProm
.LVL46:
	mov	%d15, 256
	mov	%d9, 5
	jne	%d2, %d15, .L39
.LVL47:
.LBB31:
.LBB32:
	.loc 1 479 0
	movh.a	%a2, hi:vsInfo.3429
	ld.w	%d2, [%a2] lo:vsInfo.3429
	st.w	[%SP] 20, %d2
	st.w	[%SP] 4, %d2
	.loc 1 480 0
	st.w	[%SP]0, %d2
	.loc 1 481 0
	ld.w	%d3, [%a15] 4
	st.w	[%SP] 24, %d3
	st.w	[%SP] 8, %d3
	.loc 1 482 0
	st.a	[%SP] 16, %SP
	.loc 1 483 0
	mov	%d15, 1
	st.w	[%SP] 12, %d15
	.loc 1 486 0
	movh	%d15, hi:readBuffer+4
	addi	%d15, %d15, lo:readBuffer+4
	st.w	[%SP] 28, %d15
	.loc 1 487 0
	movh	%d15, hi:FblRealTimeSupport
	addi	%d15, %d15, lo:FblRealTimeSupport
	st.w	[%SP] 36, %d15
	.loc 1 488 0
	movh	%d15, hi:FblReadProm
	addi	%d15, %d15, lo:FblReadProm
	st.w	[%SP] 40, %d15
	.loc 1 504 0
	mov	%d15, 0
	st.w	[%SP] 52, %d15
	.loc 1 510 0
	lea	%a4, [%SP] 12
	call	SecM_VerificationClassCCC_Rsa2048PssSha256
.LVL48:
	.loc 1 476 0
	ne	%d9, %d2, 0
.LVL49:
.LBE32:
.LBE31:
	.loc 1 1056 0
	jz	%d9, .L26
	j	.L39
.LVL50:
.L14:
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.b	[%a15] 652, %d5
.LBB33:
.LBB24:
.LBB23:
.LBB22:
	.loc 1 716 0
	mov	%d15, 6
.LVL51:
.L16:
.LBE22:
.LBE23:
.LBE24:
.LBE33:
	.loc 1 1090 0
	jz	%d15, .L27
	mov	%d9, %d15
.LVL52:
	j	.L39
.LVL53:
.L32:
.LBB34:
.LBB25:
	.loc 1 667 0
	mov	%d9, 3
.LVL54:
	j	.L39
.LVL55:
.L30:
.LBE25:
.LBE34:
.LBB35:
.LBB17:
	.loc 1 357 0
	mov	%d9, 2
.LVL56:
.L5:
	.loc 1 427 0
	mov	%d15, 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.w	[%a15] 4, %d15
	j	.L39
.LVL57:
.L37:
	.loc 1 313 0
	mov	%d10, 0
	.loc 1 341 0
	mov	%d9, 2
.LVL58:
.L7:
	.loc 1 427 0
	movh.a	%a15, hi:vsInfo.3429
	lea	%a15, [%a15] lo:vsInfo.3429
	st.w	[%a15] 4, %d10
.LVL59:
.L39:
.LBE17:
.LBE35:
	.loc 1 1100 0
	mov	%d2, %d9
	ret
.LFE20:
	.size	FblValStructValidateBlockExtended, .-FblValStructValidateBlockExtended
.section .text.FblValStructValidateBlock,"ax",@progbits
	.align 1
	.global	FblValStructValidateBlock
	.type	FblValStructValidateBlock, @function
FblValStructValidateBlock:
.LFB21:
	.loc 1 1112 0
.LVL60:
	.loc 1 1113 0
	mov	%d4, 0
	call	FblValStructValidateBlockExtended
.LVL61:
	.loc 1 1114 0
	ret
.LFE21:
	.size	FblValStructValidateBlock, .-FblValStructValidateBlock
	.local	blockSegInfo.3430
.section .bss,"aw",@nobits
	.align 2
	.type		 blockSegInfo.3430,@object
	.size		 blockSegInfo.3430,644
blockSegInfo.3430:
	.space	644
	.local	vsInfo.3429
	.align 2
	.type		 vsInfo.3429,@object
	.size		 vsInfo.3429,656
vsInfo.3429:
	.space	656
	.local	readBuffer
	.align 2
	.type		 readBuffer,@object
	.size		 readBuffer,568
readBuffer:
	.space	568
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x38
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/SecMod/Sec_Types.h"
	.file 5 "../../../BSW/Fbl/fbl_def.h"
	.file 6 "GenData/Fbl_Lbt.h"
	.file 7 "../../../BSW/Fbl/fbl_diag.h"
	.file 8 "../../../BSW/Fbl/fbl_mem.h"
	.file 9 "../../../../CBD2300515_D00/BSW/Fbl/fbl_valstruct.h"
	.file 10 "../../../BSW/Fbl/fbl_mio.h"
	.file 11 "../../../BSW/Fbl/fbl_hw.h"
	.file 12 "GenData/SecMPar.h"
	.file 13 "Include/fbl_ap.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1186
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_valstruct.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x58
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x15a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.string	"vuint8"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x15a
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x187
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1a9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"SecM_WordType"
	.byte	0x4
	.byte	0x87
	.uaword	0x21b
	.uleb128 0x2
	.string	"SecM_ByteType"
	.byte	0x4
	.byte	0x8c
	.uaword	0x1fc
	.uleb128 0x2
	.string	"SecM_ShortType"
	.byte	0x4
	.byte	0x8e
	.uaword	0x20b
	.uleb128 0x2
	.string	"SecM_RamDataType"
	.byte	0x4
	.byte	0x91
	.uaword	0x293
	.uleb128 0x5
	.byte	0x4
	.uaword	0x250
	.uleb128 0x2
	.string	"SecM_VoidPtrType"
	.byte	0x4
	.byte	0x9d
	.uaword	0x2b1
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b9
	.uleb128 0x7
	.uleb128 0x2
	.string	"SecM_StatusType"
	.byte	0x4
	.byte	0xa8
	.uaword	0x250
	.uleb128 0x2
	.string	"SecM_LengthType"
	.byte	0x4
	.byte	0xaa
	.uaword	0x265
	.uleb128 0x2
	.string	"SecM_AddrType"
	.byte	0x4
	.byte	0xad
	.uaword	0x23b
	.uleb128 0x2
	.string	"SecM_SizeType"
	.byte	0x4
	.byte	0xaf
	.uaword	0x23b
	.uleb128 0x8
	.byte	0xc
	.byte	0x4
	.byte	0xb2
	.uaword	0x34e
	.uleb128 0x9
	.string	"transferredAddress"
	.byte	0x4
	.byte	0xb4
	.uaword	0x2e8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb5
	.uaword	0x2e8
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb6
	.uaword	0x2fd
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"FL_SegmentInfoType"
	.byte	0x4
	.byte	0xb7
	.uaword	0x312
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uaword	0x389
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x4
	.byte	0xbd
	.uaword	0x23b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x4
	.byte	0xc0
	.uaword	0x389
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x34e
	.uleb128 0x2
	.string	"FL_SegmentListType"
	.byte	0x4
	.byte	0xc1
	.uaword	0x368
	.uleb128 0x2
	.string	"FL_WDTriggerFctType"
	.byte	0x4
	.byte	0xc4
	.uaword	0x3c4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3ca
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.string	"FL_ReadMemoryFctType"
	.byte	0x4
	.byte	0xc6
	.uaword	0x3e8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3ee
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2fd
	.uaword	0x408
	.uleb128 0xd
	.uaword	0x2e8
	.uleb128 0xd
	.uaword	0x27b
	.uleb128 0xd
	.uaword	0x2fd
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.uahalf	0x105
	.uaword	0x431
	.uleb128 0xf
	.string	"digest"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x431
	.byte	0
	.uleb128 0xf
	.string	"dummy"
	.byte	0x4
	.uahalf	0x108
	.uaword	0x23b
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	0x250
	.uaword	0x441
	.uleb128 0x11
	.uaword	0x441
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_BasicWkspType"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x408
	.uleb128 0x4
	.string	"SecM_WorkspacePtrType"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x486
	.uleb128 0x5
	.byte	0x4
	.uaword	0x44d
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x4b2
	.uleb128 0xf
	.string	"data"
	.byte	0x4
	.uahalf	0x112
	.uaword	0x468
	.byte	0
	.uleb128 0xf
	.string	"size"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x2d1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_WorkspaceType"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x48c
	.uleb128 0x4
	.string	"SecM_Crc16Type"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x265
	.uleb128 0x4
	.string	"SecM_CRCType"
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x4cd
	.uleb128 0x4
	.string	"SecM_VerifyKeyType"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x299
	.uleb128 0x4
	.string	"SecM_VerifyDataType"
	.byte	0x4
	.uahalf	0x23c
	.uaword	0x27b
	.uleb128 0xe
	.byte	0x2c
	.byte	0x4
	.uahalf	0x23f
	.uaword	0x5df
	.uleb128 0xf
	.string	"segmentList"
	.byte	0x4
	.uahalf	0x243
	.uaword	0x38f
	.byte	0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x245
	.uaword	0x2e8
	.byte	0x8
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x247
	.uaword	0x2fd
	.byte	0xc
	.uleb128 0xf
	.string	"verificationData"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x514
	.byte	0x10
	.uleb128 0xf
	.string	"crcTotal"
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x4e4
	.byte	0x14
	.uleb128 0xf
	.string	"wdTriggerFct"
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x3a9
	.byte	0x18
	.uleb128 0xf
	.string	"readMemory"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x3cc
	.byte	0x1c
	.uleb128 0xf
	.string	"workspace"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x4b2
	.byte	0x20
	.uleb128 0xf
	.string	"key"
	.byte	0x4
	.uahalf	0x254
	.uaword	0x4f9
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.string	"SecM_VerifyParamType"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x530
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5df
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x5
	.uahalf	0x14b
	.uaword	0x1fc
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x5
	.uahalf	0x15a
	.uaword	0x21b
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x5
	.uahalf	0x15b
	.uaword	0x21b
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x5
	.uahalf	0x165
	.uaword	0x615
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x5
	.uahalf	0x166
	.uaword	0x62b
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x5
	.uahalf	0x176
	.uaword	0x3c4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fc
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x6
	.byte	0x5e
	.uaword	0x1fc
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x6
	.byte	0x5f
	.uaword	0x14b
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x6
	.byte	0x60
	.uaword	0x21b
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x6
	.byte	0x61
	.uaword	0x21b
	.uleb128 0x13
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x6
	.byte	0x68
	.uaword	0x7aa
	.uleb128 0x9
	.string	"blockNr"
	.byte	0x6
	.byte	0x69
	.uaword	0x684
	.byte	0
	.uleb128 0x9
	.string	"mandatoryType"
	.byte	0x6
	.byte	0x6a
	.uaword	0x69a
	.byte	0x1
	.uleb128 0x9
	.string	"blockIndex"
	.byte	0x6
	.byte	0x6b
	.uaword	0x6b6
	.byte	0x4
	.uleb128 0x9
	.string	"blockType"
	.byte	0x6
	.byte	0x6c
	.uaword	0x6cf
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x6d
	.uaword	0x644
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0x6e
	.uaword	0x658
	.byte	0x10
	.uleb128 0x9
	.string	"headerAddress"
	.byte	0x6
	.byte	0x6f
	.uaword	0x644
	.byte	0x14
	.uleb128 0x9
	.string	"bmHeaderAddress"
	.byte	0x6
	.byte	0x70
	.uaword	0x644
	.byte	0x18
	.uleb128 0x9
	.string	"verifyOutput"
	.byte	0x6
	.byte	0x71
	.uaword	0x66b
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x6
	.byte	0x72
	.uaword	0x6e7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xe
	.byte	0x28
	.byte	0x7
	.uahalf	0x351
	.uaword	0x807
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x353
	.uaword	0x644
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x354
	.uaword	0x658
	.byte	0x4
	.uleb128 0xf
	.string	"checksum"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x807
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.uaword	0x1fc
	.uaword	0x817
	.uleb128 0x11
	.uaword	0x441
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"tDiagSegmentInfo"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x7d1
	.uleb128 0x14
	.uahalf	0x284
	.byte	0x7
	.uahalf	0x359
	.uaword	0x855
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x1fc
	.byte	0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x855
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	0x817
	.uaword	0x865
	.uleb128 0x11
	.uaword	0x441
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"tDiagSegmentList"
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x830
	.uleb128 0x4
	.string	"tFblMemConstRamData"
	.byte	0x8
	.uahalf	0x30f
	.uaword	0x89a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x8a0
	.uleb128 0x15
	.uaword	0x1fc
	.uleb128 0x2
	.string	"tFblValStructResult"
	.byte	0x9
	.byte	0x55
	.uaword	0x602
	.uleb128 0x2
	.string	"tFblValStructOption"
	.byte	0x9
	.byte	0x58
	.uaword	0x1fc
	.uleb128 0x16
	.uahalf	0x238
	.byte	0x1
	.byte	0xad
	.uaword	0x905
	.uleb128 0x9
	.string	"alignDummy"
	.byte	0x1
	.byte	0xaf
	.uaword	0x21b
	.byte	0
	.uleb128 0x9
	.string	"data"
	.byte	0x1
	.byte	0xb0
	.uaword	0x905
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	0x1fc
	.uaword	0x916
	.uleb128 0x17
	.uaword	0x441
	.uahalf	0x233
	.byte	0
	.uleb128 0x2
	.string	"tAlignedReadBuffer"
	.byte	0x1
	.byte	0xb1
	.uaword	0x8db
	.uleb128 0x2
	.string	"tVsSegInfo"
	.byte	0x1
	.byte	0xb4
	.uaword	0x865
	.uleb128 0x16
	.uahalf	0x290
	.byte	0x1
	.byte	0xb7
	.uaword	0x987
	.uleb128 0x9
	.string	"address"
	.byte	0x1
	.byte	0xb9
	.uaword	0x644
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xba
	.uaword	0x658
	.byte	0x4
	.uleb128 0x9
	.string	"segInfo"
	.byte	0x1
	.byte	0xbb
	.uaword	0x930
	.byte	0x8
	.uleb128 0x18
	.string	"vsSeg"
	.byte	0x1
	.byte	0xbc
	.uaword	0x1fc
	.uahalf	0x28c
	.byte	0
	.uleb128 0x2
	.string	"tVsInfo"
	.byte	0x1
	.byte	0xbd
	.uaword	0x942
	.uleb128 0x19
	.string	"FblValStructGetSegmentInfo"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	0x8a5
	.byte	0x1
	.uaword	0xa10
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x12c
	.uaword	0xa10
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x8a5
	.uleb128 0x1c
	.string	"vsTotalSize"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x658
	.uleb128 0x1c
	.string	"segIndex"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x20b
	.uleb128 0x1c
	.string	"vsSegCount"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x20b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x987
	.uleb128 0x19
	.string	"FblValStructVerification"
	.byte	0x1
	.uahalf	0x1d2
	.byte	0x1
	.uaword	0x8a5
	.byte	0x1
	.uaword	0xaa9
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0xaa9
	.uleb128 0x1d
	.string	"verifyData"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x293
	.uleb128 0x1c
	.string	"verifyParam"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x5df
	.uleb128 0x1c
	.string	"verifySegmentInfo"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0xab4
	.uleb128 0x1c
	.string	"secStatus"
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x2ba
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x8a5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xaaf
	.uleb128 0x15
	.uaword	0x987
	.uleb128 0x10
	.uaword	0x34e
	.uaword	0xac4
	.uleb128 0x11
	.uaword	0x441
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"FblValStructChecksumExternal"
	.byte	0x1
	.uahalf	0x284
	.byte	0x1
	.uaword	0x8a5
	.byte	0x1
	.uaword	0xb20
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x284
	.uaword	0xb20
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x285
	.uaword	0xa10
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x286
	.uaword	0xb2b
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x288
	.uaword	0x8a5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb26
	.uleb128 0x15
	.uaword	0x7aa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x865
	.uleb128 0x19
	.string	"FblValStructCompareSegmentLocation"
	.byte	0x1
	.uahalf	0x2aa
	.byte	0x1
	.uaword	0x8a5
	.byte	0x1
	.uaword	0xba3
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2aa
	.uaword	0xa10
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0xba3
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2ad
	.uaword	0x8a5
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x1fc
	.uleb128 0x1c
	.string	"vsFound"
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x1fc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xba9
	.uleb128 0x15
	.uaword	0x865
	.uleb128 0x1e
	.string	"FblValStructRemoveStructSegment"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.byte	0x1
	.uaword	0xbfd
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0xaa9
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0xb2b
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x19
	.string	"FblValStructCompareSegmentChecksum"
	.byte	0x1
	.uahalf	0x2e2
	.byte	0x1
	.uaword	0x8a5
	.byte	0x1
	.uaword	0xc73
	.uleb128 0x1d
	.string	"vsSegInfo"
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0xc73
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0xba3
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x8a5
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x1fc
	.uleb128 0x1c
	.string	"csIdx"
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x1fc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc79
	.uleb128 0x15
	.uaword	0x930
	.uleb128 0x1f
	.byte	0x1
	.string	"FblValStructValidateBlockExtended"
	.byte	0x1
	.uahalf	0x3f5
	.byte	0x1
	.uaword	0x8a5
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1004
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0xb20
	.uaword	.LLST0
	.uleb128 0x21
	.string	"option"
	.byte	0x1
	.uahalf	0x3f6
	.uaword	0x1004
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x987
	.byte	0x5
	.byte	0x3
	.uaword	vsInfo.3429
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x865
	.byte	0x5
	.byte	0x3
	.uaword	blockSegInfo.3430
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3fa
	.uaword	0x8a5
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	0x996
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x411
	.uaword	0xe2e
	.uleb128 0x25
	.uaword	0x9bf
	.byte	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x27
	.uaword	0x9cb
	.uaword	.LLST3
	.uleb128 0x27
	.uaword	0x9d7
	.uaword	.LLST4
	.uleb128 0x27
	.uaword	0x9eb
	.uaword	.LLST5
	.uleb128 0x27
	.uaword	0x9fc
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	.LVL6
	.uaword	0x107b
	.uaword	0xd75
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer+4
	.byte	0
	.uleb128 0x28
	.uaword	.LVL7
	.uaword	0x10a5
	.uaword	0xd91
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer+6
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x28
	.uaword	.LVL10
	.uaword	0x107b
	.uaword	0xdae
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer+8
	.byte	0
	.uleb128 0x28
	.uaword	.LVL13
	.uaword	0x10a5
	.uaword	0xdcc
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x28
	.uaword	.LVL14
	.uaword	0x10a5
	.uaword	0xdea
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x28
	.uaword	.LVL15
	.uaword	0x10d0
	.uaword	0xe14
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL44
	.uaword	0x10a5
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer+4
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xac4
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x432
	.uaword	0xec4
	.uleb128 0x2b
	.uaword	0xb07
	.uaword	.LLST7
	.uleb128 0x2b
	.uaword	0xafb
	.uaword	.LLST8
	.uleb128 0x2b
	.uaword	0xaef
	.uaword	.LLST9
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x2c
	.uaword	0xb13
	.uleb128 0x24
	.uaword	0xb31
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x296
	.uaword	0xeaf
	.uleb128 0x2b
	.uaword	0xb6e
	.uaword	.LLST10
	.uleb128 0x2b
	.uaword	0xb62
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x27
	.uaword	0xb7a
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	0xb86
	.uaword	.LLST13
	.uleb128 0x27
	.uaword	0xb92
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL20
	.uaword	0x10fc
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xbae
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.uahalf	0x445
	.uaword	0xefe
	.uleb128 0x2b
	.uaword	0xbe4
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	0xbd8
	.uaword	.LLST16
	.uleb128 0x2e
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0x27
	.uaword	0xbf0
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xbfd
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x448
	.uaword	0xf4a
	.uleb128 0x2b
	.uaword	0xc40
	.uaword	.LLST18
	.uleb128 0x2b
	.uaword	0xc2e
	.uaword	.LLST19
	.uleb128 0x2e
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x27
	.uaword	0xc4c
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	0xc58
	.uaword	.LLST21
	.uleb128 0x27
	.uaword	0xc64
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xa16
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.uahalf	0x41b
	.uaword	0xfad
	.uleb128 0x2b
	.uaword	0xa49
	.uaword	.LLST23
	.uleb128 0x2b
	.uaword	0xa3d
	.uaword	.LLST24
	.uleb128 0x2e
	.uaword	.LBB32
	.uaword	.LBE32
	.uleb128 0x2f
	.uaword	0xa5c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.uaword	0xa70
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.uaword	0xa8a
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	0xa9c
	.uaword	.LLST26
	.uleb128 0x2a
	.uaword	.LVL48
	.uaword	0x112c
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL2
	.uaword	0x116b
	.uaword	0xfc1
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x28
	.uaword	.LVL3
	.uaword	0x116b
	.uaword	0xfd5
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x28
	.uaword	.LVL4
	.uaword	0x116b
	.uaword	0xfe9
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL46
	.uaword	0x107b
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer+4
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x8c0
	.uleb128 0x1f
	.byte	0x1
	.string	"FblValStructValidateBlock"
	.byte	0x1
	.uahalf	0x457
	.byte	0x1
	.uaword	0x8a5
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1063
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x457
	.uaword	0xb20
	.uaword	.LLST27
	.uleb128 0x2a
	.uaword	.LVL61
	.uaword	0xc7e
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x30
	.string	"readBuffer"
	.byte	0x1
	.byte	0xc7
	.uaword	0x916
	.byte	0x5
	.byte	0x3
	.uaword	readBuffer
	.uleb128 0x31
	.byte	0x1
	.string	"FblReadProm"
	.byte	0xa
	.byte	0x6e
	.byte	0x1
	.uaword	0x658
	.byte	0x1
	.uaword	0x10a5
	.uleb128 0xd
	.uaword	0x644
	.uleb128 0xd
	.uaword	0x67e
	.uleb128 0xd
	.uaword	0x658
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"FblMemGetInteger"
	.byte	0x8
	.uahalf	0x3ab
	.byte	0x1
	.uaword	0x21b
	.byte	0x1
	.uaword	0x10d0
	.uleb128 0xd
	.uaword	0x21b
	.uleb128 0xd
	.uaword	0x87e
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0xb
	.uahalf	0x167
	.byte	0x1
	.uaword	0x2b1
	.byte	0x1
	.uaword	0x10fc
	.uleb128 0xd
	.uaword	0x2b1
	.uleb128 0xd
	.uaword	0x2b3
	.uleb128 0xd
	.uaword	0x22b
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"FblDiagGetSegmentList"
	.byte	0x7
	.uahalf	0x3a5
	.byte	0x1
	.uaword	0x1fc
	.byte	0x1
	.uaword	0x112c
	.uleb128 0xd
	.uaword	0x1fc
	.uleb128 0xd
	.uaword	0xb2b
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_VerificationClassCCC_Rsa2048PssSha256"
	.byte	0xc
	.byte	0x44
	.byte	0x1
	.uaword	0x2ba
	.byte	0x1
	.uaword	0x116b
	.uleb128 0xd
	.uaword	0x5fc
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0xd
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x1fc
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL17
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL29
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL50
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL21
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL34
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	blockSegInfo.3430
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL34
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429+8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x77
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL17
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	readBuffer+4
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x3
	.uaword	readBuffer+4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL17
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x3
	.uaword	vsInfo.3429
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL17
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"blockDescriptor"
.LASF0:
	.string	"targetAddress"
.LASF5:
	.string	"blockLength"
.LASF9:
	.string	"blockSegInfo"
.LASF10:
	.string	"segIdx"
.LASF2:
	.string	"nrOfSegments"
.LASF1:
	.string	"length"
.LASF6:
	.string	"result"
.LASF4:
	.string	"blockStartAddress"
.LASF7:
	.string	"vsInfo"
.LASF3:
	.string	"segmentInfo"
	.extern	SecM_VerificationClassCCC_Rsa2048PssSha256,STT_FUNC,0
	.extern	FblRealTimeSupport,STT_FUNC,0
	.extern	FblDiagGetSegmentList,STT_FUNC,0
	.extern	FblOwnMemcpy,STT_FUNC,0
	.extern	FblMemGetInteger,STT_FUNC,0
	.extern	FblReadProm,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
