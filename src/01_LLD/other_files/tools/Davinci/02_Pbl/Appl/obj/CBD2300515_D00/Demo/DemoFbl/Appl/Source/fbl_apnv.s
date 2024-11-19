	.file	"fbl_apnv.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ApplFblOtpReadEntry,"ax",@progbits
	.align 1
	.type	ApplFblOtpReadEntry, @function
ApplFblOtpReadEntry:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
	.loc 1 331 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
	mov	%d14, %d4
	mov	%d12, %d5
	mov.aa	%a12, %a4
	.loc 1 334 0
	addi	%d9, %d5, 31
	andn	%d9, %d9, ~(-32)
.LVL1:
.LBB4:
.LBB5:
	.loc 1 285 0
	mov	%d11, %d4
	.loc 1 284 0
	mov	%d10, 1
	.loc 1 312 0
	mov	%d13, 0
	j	.L2
.LVL2:
.L7:
	.loc 1 290 0
	min.u	%d8, %d9, 16
.LVL3:
	.loc 1 291 0
	mov.aa	%a4, %SP
	mov	%d4, %d8
	mov	%d5, %d11
	call	FlashDriver_RReadSync
.LVL4:
	.loc 1 293 0
	eq	%d15, %d2, 229
	or.eq	%d15, %d2, 0
	jz	%d15, .L9
.LVL5:
	.loc 1 295 0
	jz	%d8, .L4
	.loc 1 298 0
	ld.bu	%d15, [%SP]0
	mov	%d2, %d13
.LVL6:
	jz	%d15, .L5
	j	.L10
.LVL7:
.L6:
	add	%d2, 1
	addsc.a	%a15, %SP, %d15, 0
	ld.bu	%d15, [%a15]0
.LVL8:
	jnz	%d15, .L11
.LVL9:
.L5:
	add	%d15, %d2, 1
	extr.u	%d15, %d15, 0, 16
.LVL10:
	.loc 1 295 0
	jlt.u	%d15, %d8, .L6
	j	.L4
.LVL11:
.L10:
	.loc 1 301 0
	mov	%d10, %d13
.LVL12:
	j	.L4
.LVL13:
.L11:
	mov	%d10, %d13
.LVL14:
.L4:
	.loc 1 306 0
	add	%d11, %d8
.LVL15:
	.loc 1 307 0
	sub	%d9, %d8
.LVL16:
	j	.L2
.LVL17:
.L9:
	.loc 1 312 0
	mov	%d10, %d13
.LVL18:
.L2:
	.loc 1 288 0
	ne	%d15, %d9, 0
	and.eq	%d15, %d10, 1
	jnz	%d15, .L7
.LBE5:
.LBE4:
	.loc 1 351 0
	mov	%d2, 229
	.loc 1 334 0
	jnz	%d10, .L8
	.loc 1 345 0
	mov	%d2, 1
	.loc 1 337 0
	jz.a	%a12, .L8
	.loc 1 340 0
	mov.aa	%a4, %a12
	mov	%d4, %d12
	mov	%d5, %d14
	call	FlashDriver_RReadSync
.LVL19:
.L8:
	.loc 1 355 0
	ret
.LFE15:
	.size	ApplFblOtpReadEntry, .-ApplFblOtpReadEntry
.section .text.ApplFblOtpWriteEntry,"ax",@progbits
	.align 1
	.type	ApplFblOtpWriteEntry, @function
ApplFblOtpWriteEntry:
.LFB16:
	.loc 1 367 0
.LVL20:
	sub.a	%SP, 32
.LCFI1:
	mov	%d10, %d4
	mov	%d15, %d5
	mov.aa	%a12, %a4
	.loc 1 374 0
	movh	%d8, hi:nvOtpArea
	addi	%d8, %d8, lo:nvOtpArea
	and	%d2, %d8, 31
	jz	%d2, .L15
	.loc 1 374 0 is_stmt 0 discriminator 1
	mov	%d4, 80
.LVL21:
	call	ApplFblFatalError
.LVL22:
.L15:
	.loc 1 377 0 is_stmt 1
	addi	%d2, %d15, 31
	andn	%d2, %d2, ~(-32)
.LVL23:
	.loc 1 379 0
	addi	%d3, %d2, -32
	ne	%d9, %d2, %d15
	sel	%d9, %d9, %d3, %d15
.LVL24:
	.loc 1 413 0
	mov	%d2, 1
.LVL25:
	.loc 1 382 0
	jlt.u	%d10, %d8, .L17
	.loc 1 382 0 is_stmt 0 discriminator 1
	sub	%d8, %d10, %d8
	lt.u	%d3, %d8, 288
.LVL26:
	and.lt.u	%d3, %d9, 289
	jz	%d3, .L17
	.loc 1 383 0 is_stmt 1
	mov	%d3, 288
	sub	%d3, %d9
	jlt.u	%d3, %d8, .L17
	.loc 1 386 0
	mov	%d4, %d10
	mov	%d5, %d15
	mov.a	%a4, 0
	call	ApplFblOtpReadEntry
.LVL27:
	mov	%d8, %d2
.LVL28:
	.loc 1 387 0
	ne	%d2, %d2, 229
.LVL29:
	jnz	%d2, .L18
	.loc 1 389 0
	movh.a	%a15, hi:memDrvLst
	lea	%a15, [%a15] lo:memDrvLst
	ld.bu	%d11, [%a15] 26
	mov	%d4, 0
	mov	%d5, 3
	mov	%d6, %d11
	call	MemDriver_Begin
.LVL30:
	.loc 1 392 0
	mov.aa	%a4, %a12
	mov	%d4, %d9
	mov	%d5, %d10
	call	FlashDriver_RWriteSync
.LVL31:
	mov	%d8, %d2
.LVL32:
	.loc 1 394 0
	lt.u	%d2, %d9, %d15
.LVL33:
	and.eq	%d2, %d8, 0
	jz	%d2, .L19
	mov	%d5, 0
	.loc 1 399 0
	mov	%d4, 0
	lea	%a15, 31
.L21:
.LVL34:
	mov.a	%a2, %d5
	add	%d2, %d5, %d9
	mov	%d3, %d4
	jge.u	%d2, %d15, .L20
	.loc 1 399 0 is_stmt 0 discriminator 1
	addsc.a	%a3, %a12, %d2, 0
	ld.bu	%d3, [%a3]0
.L20:
	.loc 1 399 0 discriminator 4
	add.a	%a2, %SP
	st.b	[%a2]0, %d3
.LVL35:
	add	%d5, 1
.LVL36:
	.loc 1 397 0 is_stmt 1 discriminator 4
	loop	%a15, .L21
	.loc 1 403 0
	mov.aa	%a4, %SP
	mov	%d4, 32
	add	%d5, %d9, %d10
.LVL37:
	call	FlashDriver_RWriteSync
.LVL38:
	mov	%d8, %d2
.LVL39:
.L19:
	.loc 1 406 0
	mov	%d4, %d11
	call	MemDriver_End
.LVL40:
.L18:
	.loc 1 408 0
	ne	%d2, %d8, 0
.LVL41:
.L17:
	.loc 1 417 0
	ret
.LFE16:
	.size	ApplFblOtpWriteEntry, .-ApplFblOtpWriteEntry
.section .text.ApplFblExtProgRequest,"ax",@progbits
	.align 1
	.global	ApplFblExtProgRequest
	.type	ApplFblExtProgRequest, @function
ApplFblExtProgRequest:
.LFB17:
	.loc 1 432 0
.LVL42:
	.loc 1 444 0
	movh.a	%a15, hi:fblBmMagicFlag
	ld.bu	%d15, [%a15] lo:fblBmMagicFlag
	ne	%d15, %d15, 80
	.loc 1 439 0
	mov	%d2, 255
	.loc 1 444 0
	jnz	%d15, .L29
	.loc 1 444 0 is_stmt 0 discriminator 1
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 1
	ne	%d15, %d15, 114
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 2
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 2
	ne	%d15, %d15, 111
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 3
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 103
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 4
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 4
	ne	%d15, %d15, 83
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 5
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 5
	ne	%d15, %d15, 105
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 6
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 6
	ne	%d15, %d15, 103
	jnz	%d15, .L29
	.loc 1 444 0 discriminator 7
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 7
	ne	%d15, %d15, 110
	jnz	%d15, .L29
	.loc 1 447 0 is_stmt 1
	movh.a	%a2, hi:fblBmMagicFlag
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	st.b	[%a15] 1, %d15
	st.b	[%a15] 2, %d15
	st.b	[%a15] 3, %d15
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d15
	st.b	[%a15] 6, %d15
	st.b	[%a15] 7, %d15
.LVL43:
	.loc 1 449 0
	mov	%d2, 0
.LVL44:
.L29:
	.loc 1 471 0
	movh.a	%a15, hi:fblBmMagicFlag
	ld.bu	%d15, [%a15] lo:fblBmMagicFlag
	ne	%d15, %d15, 83
	jnz	%d15, .L30
	.loc 1 471 0 is_stmt 0 discriminator 1
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 1
	ne	%d15, %d15, 116
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 2
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 2
	ne	%d15, %d15, 97
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 3
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 121
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 4
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 4
	ne	%d15, %d15, 66
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 5
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 5
	ne	%d15, %d15, 111
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 6
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 6
	ne	%d15, %d15, 111
	jnz	%d15, .L30
	.loc 1 471 0 discriminator 7
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 7
	ne	%d15, %d15, 116
	jnz	%d15, .L30
	.loc 1 474 0 is_stmt 1
	movh.a	%a2, hi:fblBmMagicFlag
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	st.b	[%a15] 1, %d15
	st.b	[%a15] 2, %d15
	st.b	[%a15] 3, %d15
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d15
	st.b	[%a15] 6, %d15
	st.b	[%a15] 7, %d15
.LVL45:
	.loc 1 476 0
	mov	%d2, 16
.LVL46:
.L30:
	.loc 1 496 0
	ret
.LFE17:
	.size	ApplFblExtProgRequest, .-ApplFblExtProgRequest
.section .text.ApplFblIsValidApp,"ax",@progbits
	.align 1
	.global	ApplFblIsValidApp
	.type	ApplFblIsValidApp, @function
ApplFblIsValidApp:
.LFB18:
	.loc 1 507 0
	sub.a	%SP, 80
.LCFI2:
.LVL47:
	.loc 1 519 0
	lea	%a4, [%SP] 36
	call	FblLbtBlockFilterInit
.LVL48:
	.loc 1 520 0
	lea	%a4, [%SP] 36
	mov	%d4, 154
	call	FblLbtBlockFilterSetBlockType
.LVL49:
	.loc 1 521 0
	mov.aa	%a15, %SP
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 36
	call	FblLbtBlockFirst
.LVL50:
	lea	%a2, [%SP] 48
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 526 0
	lea	%a15, [%SP] 48
	.loc 1 536 0
	mov.aa	%a12, %SP
	.loc 1 523 0
	j	.L40
.L42:
	.loc 1 526 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	FblNvPatternGet
.LVL51:
	jz	%d2, .L43
	.loc 1 536 0
	mov.aa	%a4, %SP
	call	FblLbtBlockNext
.LVL52:
	mov.aa	%a4, %a15
	mov.aa	%a2, %a12
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a4+]8, %e2
	loop	%a3, 0b
.L40:
	.loc 1 523 0
	call	FblLbtBlockDone
.LVL53:
	jz	%d2, .L42
	.loc 1 516 0
	mov	%d2, 0
	ret
.L43:
	.loc 1 528 0
	mov	%d2, 1
.LVL54:
	.loc 1 541 0
	ret
.LFE18:
	.size	ApplFblIsValidApp, .-ApplFblIsValidApp
.section .text.ApplFblValidateApp,"ax",@progbits
	.align 1
	.global	ApplFblValidateApp
	.type	ApplFblValidateApp, @function
ApplFblValidateApp:
.LFB19:
	.loc 1 552 0
	sub.a	%SP, 32
.LCFI3:
.LVL55:
	.loc 1 565 0
	call	FblDiagGetLastErasedBlock
.LVL56:
	.loc 1 566 0
	mov	%d4, %d2
	mov.aa	%a4, %SP
	call	FblLbtGetBlockDescriptorByNr
.LVL57:
	.loc 1 560 0
	mov	%d15, 1
	.loc 1 566 0
	jnz	%d2, .L45
	.loc 1 568 0
	mov.aa	%a4, %SP
	mov	%d4, 1
	call	FblNvPatternSet
.LVL58:
	mov	%d15, %d2
.LVL59:
.L45:
	.loc 1 572 0
	mov	%d2, %d15
	ret
.LFE19:
	.size	ApplFblValidateApp, .-ApplFblValidateApp
.section .text.ApplFblInvalidateApp,"ax",@progbits
	.align 1
	.global	ApplFblInvalidateApp
	.type	ApplFblInvalidateApp, @function
ApplFblInvalidateApp:
.LFB20:
	.loc 1 581 0
	sub.a	%SP, 80
.LCFI4:
.LVL60:
	.loc 1 592 0
	lea	%a4, [%SP] 36
	call	FblLbtBlockFilterInit
.LVL61:
	.loc 1 593 0
	lea	%a4, [%SP] 36
	mov	%d4, 154
	call	FblLbtBlockFilterSetBlockType
.LVL62:
	.loc 1 595 0
	mov.aa	%a15, %SP
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 36
	call	FblLbtBlockFirst
.LVL63:
	lea	%a2, [%SP] 48
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 582 0
	mov	%d15, 1
	.loc 1 598 0
	lea	%a15, [%SP] 48
	.loc 1 603 0
	mov.aa	%a12, %SP
	.loc 1 596 0
	j	.L48
.LVL64:
.L50:
	.loc 1 598 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	FblNvPatternClr
.LVL65:
	mov	%d15, %d2
.LVL66:
	.loc 1 599 0
	jnz	%d2, .L49
	.loc 1 603 0
	mov.aa	%a4, %SP
	call	FblLbtBlockNext
.LVL67:
	mov.aa	%a4, %a15
	mov.aa	%a2, %a12
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a4+]8, %e2
	loop	%a3, 0b
.LVL68:
.L48:
	.loc 1 596 0
	call	FblLbtBlockDone
.LVL69:
	jz	%d2, .L50
.L49:
.LVL70:
	.loc 1 610 0
	mov	%d2, %d15
	ret
.LFE20:
	.size	ApplFblInvalidateApp, .-ApplFblInvalidateApp
.section .text.ApplFblValidateBlock,"ax",@progbits
	.align 1
	.global	ApplFblValidateBlock
	.type	ApplFblValidateBlock, @function
ApplFblValidateBlock:
.LFB21:
	.loc 1 622 0
	sub.a	%SP, 64
.LCFI5:
	.loc 1 621 0
	lea	%a15, [%SP] 32
	mov.aa	%a2, %a15
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a4+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 631 0
	mov.aa	%a4, %SP
	mov.aa	%a2, %SP
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 642 0
	mov	%d4, 2
	call	FblNvPatternGet
.LVL71:
	.loc 1 649 0
	jz	%d2, .L52
	.loc 1 656 0
	mov.aa	%a4, %SP
	call	FblValStructValidateBlock
.LVL72:
	.loc 1 659 0
	movh.a	%a15, hi:applSignValidState
	ld.bu	%d15, [%a15] lo:applSignValidState
.LVL73:
	.loc 1 661 0
	eq	%d3, %d15, 0
	and.ne	%d3, %d2, 0
	.loc 1 662 0
	or.eq	%d3, %d15, 255
	jz	%d3, .L53
	.loc 1 665 0
	st.b	[%a15] lo:applSignValidState, %d2
.LVL74:
.L53:
	.loc 1 674 0
	jnz	%d2, .L52
	.loc 1 678 0
	ld.w	%d15, [%SP] 8
.LVL75:
	eq	%d15, %d15, 155
	jnz	%d15, .L52
	.loc 1 683 0
	mov.aa	%a4, %SP
	mov	%d4, 2
	call	FblNvPatternSet
.LVL76:
	.loc 1 642 0
	ne	%d2, %d2, 0
.L52:
.LVL77:
	.loc 1 697 0
	ret
.LFE21:
	.size	ApplFblValidateBlock, .-ApplFblValidateBlock
.section .text.ApplFblInvalidateBlock,"ax",@progbits
	.align 1
	.global	ApplFblInvalidateBlock
	.type	ApplFblInvalidateBlock, @function
ApplFblInvalidateBlock:
.LFB22:
	.loc 1 708 0
	sub.a	%SP, 64
.LCFI6:
	.loc 1 707 0
	lea	%a15, [%SP] 32
	mov.aa	%a2, %a15
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a4+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 712 0
	mov.aa	%a2, %SP
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 720 0
	call	ApplFblInvalidateApp
.LVL78:
	mov	%d15, %d2
.LVL79:
	.loc 1 723 0
	mov.aa	%a4, %SP
	mov	%d4, 2
	call	FblNvPatternClr
.LVL80:
	or	%d2, %d15
.LVL81:
	.loc 1 730 0
	and	%d2, %d2, 255
	ret
.LFE22:
	.size	ApplFblInvalidateBlock, .-ApplFblInvalidateBlock
.section .rodata,"a",@progbits
.LC0:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
.section .text.ApplFblReadSecurityBytes,"ax",@progbits
	.align 1
	.global	ApplFblReadSecurityBytes
	.type	ApplFblReadSecurityBytes, @function
ApplFblReadSecurityBytes:
.LFB23:
	.loc 1 741 0
.LVL82:
	sub.a	%SP, 16
.LCFI7:
	mov.aa	%a12, %a4
	mov	%d15, %d4
	.loc 1 742 0
	lea	%a15, [%SP] 4
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
		# #chunks=12, chunksize=1, remains=0
	lea	%a3, 12-1
	0:
	ld.bu	%d2, [%a2+]1
	st.b	[%a15+]1, %d2
	loop	%a3, 0b
	.loc 1 747 0
	eq	%d2, %d4, 12
	jnz	%d2, .L56
	.loc 1 747 0 is_stmt 0 discriminator 1
	mov	%d4, 224
.LVL83:
	call	ApplFblFatalError
.LVL84:
.L56:
	.loc 1 759 0 is_stmt 1
	mov.aa	%a4, %a12
	lea	%a5, [%SP] 4
	mov	%d4, %d15
	call	FblOwnMemcpy
.LVL85:
	ret
.LFE23:
	.size	ApplFblReadSecurityBytes, .-ApplFblReadSecurityBytes
.section .text.ApplFblAdjustLbtBlockData,"ax",@progbits
	.align 1
	.global	ApplFblAdjustLbtBlockData
	.type	ApplFblAdjustLbtBlockData, @function
ApplFblAdjustLbtBlockData:
.LFB24:
	.loc 1 819 0
.LVL86:
	sub.a	%SP, 8
.LCFI8:
	mov.aa	%a15, %a4
.LVL87:
	.loc 1 844 0
	ld.bu	%d4, [%a4]0
	mov	%d5, 2
	lea	%a4, [%SP] 4
.LVL88:
	mov.aa	%a5, %SP
	call	FblNvPatternGetBaseAddr
.LVL89:
	mov	%d15, %d2
	movh.a	%a2, hi:memSegment
	st.h	[%a2] lo:memSegment, %d2
	.loc 1 853 0
	mov	%d2, 1
	.loc 1 846 0
	jltz	%d15, .L58
	.loc 1 849 0
	ld.w	%d15, [%a15] 12
	ld.w	%d2, [%SP] 4
	sub	%d15, %d2, %d15
	st.w	[%a15] 16, %d15
	.loc 1 835 0
	mov	%d2, 0
.L58:
.LVL90:
	.loc 1 860 0
	ret
.LFE24:
	.size	ApplFblAdjustLbtBlockData, .-ApplFblAdjustLbtBlockData
.section .text.ApplFblWriteDcmDslRxTesterSourceAddr,"ax",@progbits
	.align 1
	.global	ApplFblWriteDcmDslRxTesterSourceAddr
	.type	ApplFblWriteDcmDslRxTesterSourceAddr, @function
ApplFblWriteDcmDslRxTesterSourceAddr:
.LFB25:
	.loc 1 872 0
.LVL91:
	.loc 1 875 0
	mov	%d2, 0
	ret
.LFE25:
	.size	ApplFblWriteDcmDslRxTesterSourceAddr, .-ApplFblWriteDcmDslRxTesterSourceAddr
.section .text.ApplFblReadDcmDslRxTesterSourceAddr,"ax",@progbits
	.align 1
	.global	ApplFblReadDcmDslRxTesterSourceAddr
	.type	ApplFblReadDcmDslRxTesterSourceAddr, @function
ApplFblReadDcmDslRxTesterSourceAddr:
.LFB26:
	.loc 1 885 0
.LVL92:
	.loc 1 887 0
	mov	%d4, 2
	mov	%d5, 0
	call	FblMemSetInteger
.LVL93:
	.loc 1 890 0
	mov	%d2, 0
	ret
.LFE26:
	.size	ApplFblReadDcmDslRxTesterSourceAddr, .-ApplFblReadDcmDslRxTesterSourceAddr
.section .text.ApplFblReadVerificationKey,"ax",@progbits
	.align 1
	.global	ApplFblReadVerificationKey
	.type	ApplFblReadVerificationKey, @function
ApplFblReadVerificationKey:
.LFB27:
	.loc 1 902 0
.LVL94:
	mov.aa	%a15, %a4
.LVL95:
.LBB10:
.LBB11:
	.loc 1 1103 0
	movh.a	%a2, hi:fblStates
	ld.w	%d15, [%a2] lo:fblStates
	.loc 1 1106 0
	extr.u	%d15, %d15, 22, 1
.LVL96:
.LBE11:
.LBE10:
	.loc 1 939 0
	jnz	%d15, .L63
.LBB12:
	.loc 1 944 0
	ld.hu	%d15, [%a4] 4
.LVL97:
	mov	%d2, 256
	jeq	%d15, %d2, .L64
	.loc 1 944 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL98:
.L64:
	.loc 1 945 0 is_stmt 1
	ld.hu	%d15, [%a15] 12
	jeq	%d15, 4, .L65
	.loc 1 945 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL99:
.L65:
	.loc 1 948 0 is_stmt 1
	movh	%d15, hi:nvOtpArea
	addi	%d15, %d15, lo:nvOtpArea
	mov	%d4, %d15
	ld.hu	%d5, [%a15] 4
	mov.a	%a4, 0
	call	ApplFblOtpReadEntry
.LVL100:
	mov	%d8, %d2
.LVL101:
	.loc 1 949 0
	addi	%d4, %d15, 256
	ld.hu	%d5, [%a15] 12
	mov.a	%a4, 0
	call	ApplFblOtpReadEntry
.LVL102:
	.loc 1 952 0
	ne	%d15, %d8, 229
	and.ne	%d15, %d2, 229
	jz	%d15, .L66
	.loc 1 957 0
	movh	%d15, hi:nvOtpArea
	addi	%d15, %d15, lo:nvOtpArea
	st.w	[%a15]0, %d15
	.loc 1 958 0
	addi	%d15, %d15, 256
	st.w	[%a15] 8, %d15
.LBE12:
	.loc 1 906 0
	mov	%d2, 0
.LVL103:
.LBB13:
	ret
.LVL104:
.L66:
	.loc 1 964 0
	movh	%d15, hi:SecM_RsaDevelopmentMod
	addi	%d15, %d15, lo:SecM_RsaDevelopmentMod
	st.w	[%a15]0, %d15
	.loc 1 965 0
	movh	%d15, hi:SecM_RsaDevelopmentExp
	addi	%d15, %d15, lo:SecM_RsaDevelopmentExp
	st.w	[%a15] 8, %d15
.LBE13:
	.loc 1 906 0
	mov	%d2, 0
.LVL105:
	ret
.LVL106:
.L63:
	.loc 1 1005 0
	mov	%d2, 1
	.loc 1 968 0
	jne	%d15, 1, .L67
.LBB14:
	.loc 1 974 0
	ld.hu	%d15, [%a4] 4
.LVL107:
	mov	%d2, 256
	jeq	%d15, %d2, .L68
	.loc 1 974 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL108:
.L68:
	.loc 1 975 0 is_stmt 1
	ld.hu	%d15, [%a15] 12
	jeq	%d15, 4, .L69
	.loc 1 975 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL109:
.L69:
	.loc 1 978 0 is_stmt 1
	movh	%d15, hi:nvOtpArea
	addi	%d15, %d15, lo:nvOtpArea
	mov	%d4, %d15
	ld.hu	%d5, [%a15] 4
	mov.a	%a4, 0
	call	ApplFblOtpReadEntry
.LVL110:
	mov	%d8, %d2
.LVL111:
	.loc 1 979 0
	addi	%d4, %d15, 256
	ld.hu	%d5, [%a15] 12
	mov.a	%a4, 0
	call	ApplFblOtpReadEntry
.LVL112:
	.loc 1 982 0
	ne	%d15, %d8, 229
	and.ne	%d15, %d2, 229
	jz	%d15, .L70
	.loc 1 987 0
	movh	%d15, hi:nvOtpArea
	addi	%d15, %d15, lo:nvOtpArea
	st.w	[%a15]0, %d15
	.loc 1 988 0
	addi	%d15, %d15, 256
	st.w	[%a15] 8, %d15
.LBE14:
	.loc 1 906 0
	mov	%d2, 0
.LVL113:
.LBB15:
	ret
.LVL114:
.L70:
	.loc 1 994 0
	movh	%d15, hi:SecM_RsaDevelopmentMod
	addi	%d15, %d15, lo:SecM_RsaDevelopmentMod
	st.w	[%a15]0, %d15
	.loc 1 995 0
	movh	%d15, hi:SecM_RsaDevelopmentExp
	addi	%d15, %d15, lo:SecM_RsaDevelopmentExp
	st.w	[%a15] 8, %d15
.LBE15:
	.loc 1 906 0
	mov	%d2, 0
.LVL115:
.L67:
	.loc 1 1011 0
	ret
.LFE27:
	.size	ApplFblReadVerificationKey, .-ApplFblReadVerificationKey
.section .text.ApplFblWriteVerificationKey,"ax",@progbits
	.align 1
	.global	ApplFblWriteVerificationKey
	.type	ApplFblWriteVerificationKey, @function
ApplFblWriteVerificationKey:
.LFB28:
	.loc 1 1023 0
.LVL116:
	lea	%SP, [%SP] -528
.LCFI9:
	mov.aa	%a5, %a4
.LVL117:
	.loc 1 1030 0
	movh.a	%a15, hi:fblStates
	ld.w	%d15, [%a15] lo:fblStates
	jz.t	%d15, 22, .L73
.LBB16:
	.loc 1 1035 0
	movh.a	%a15, hi:memDrvLst
	lea	%a15, [%a15] lo:memDrvLst
	ld.bu	%d8, [%a15] 27
	mov	%d4, 0
	mov	%d5, 6
	mov	%d6, %d8
	call	MemDriver_Begin
.LVL118:
	.loc 1 1037 0
	lea	%a4, [%SP] 8
	mov	%d4, 256
	movh	%d5, hi:SecM_RsaDevelopmentMod
	addi	%d5, %d5, lo:SecM_RsaDevelopmentMod
	call	FlashDriver_RReadSync
.LVL119:
	jnz	%d2, .L74
	.loc 1 1041 0
	lea	%a4, [%SP] 4
	mov	%d4, 4
	movh	%d5, hi:SecM_RsaDevelopmentExp
	addi	%d5, %d5, lo:SecM_RsaDevelopmentExp
	call	FlashDriver_RReadSync
.LVL120:
	.loc 1 1039 0
	ne	%d15, %d2, 0
.LVL121:
	.loc 1 1049 0
	mov	%d4, %d8
	call	MemDriver_End
.LVL122:
	.loc 1 1051 0
	jnz	%d15, .L76
	.loc 1 1054 0
	movh	%d4, hi:nvOtpArea
	addi	%d4, %d4, lo:nvOtpArea
	mov	%d5, 256
	lea	%a4, [%SP] 8
	call	ApplFblOtpWriteEntry
.LVL123:
	.loc 1 1056 0
	mov	%d15, 1
.LVL124:
	.loc 1 1054 0
	jnz	%d2, .L76
	.loc 1 1058 0
	movh	%d4, hi:nvOtpArea+256
	addi	%d4, %d4, lo:nvOtpArea+256
	mov	%d5, 4
	lea	%a4, [%SP] 4
	call	ApplFblOtpWriteEntry
.LVL125:
.LBE16:
	.loc 1 1024 0
	ne	%d15, %d2, 0
.LBB17:
	j	.L76
.LVL126:
.L73:
.LBE17:
	.loc 1 1072 0
	lea	%a4, [%SP] 268
.LVL127:
	mov	%d4, 260
	call	FblOwnMemcpy
.LVL128:
	.loc 1 1074 0
	movh	%d8, hi:nvOtpArea
	addi	%d8, %d8, lo:nvOtpArea
	mov	%d4, %d8
	mov	%d5, 256
	lea	%a4, [%SP] 268
	call	ApplFblOtpWriteEntry
.LVL129:
	mov	%d15, %d2
.LVL130:
	.loc 1 1075 0
	addi	%d4, %d8, 256
	mov	%d5, 4
	lea	%a4, [%SP] 524
	call	ApplFblOtpWriteEntry
.LVL131:
	or	%d2, %d15
	and	%d15, %d2, 255
.LVL132:
.L76:
	.loc 1 1078 0
	jz	%d15, .L79
	.loc 1 1081 0
	mov	%d2, 49
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d2
	j	.L79
.LVL133:
.L74:
.LBB18:
	.loc 1 1049 0
	mov	%d4, %d8
	call	MemDriver_End
.LVL134:
	.loc 1 1039 0
	mov	%d15, 1
	j	.L76
.LVL135:
.L79:
.LBE18:
	.loc 1 1085 0
	mov	%d2, %d15
	ret
.LFE28:
	.size	ApplFblWriteVerificationKey, .-ApplFblWriteVerificationKey
.section .RamConstSection,"a",@progbits
	.type	nvOtpArea, @object
	.size	nvOtpArea, 288
nvOtpArea:
	.zero	288
	.global	applSignValidState
.section .bss,"aw",@nobits
	.type	applSignValidState, @object
	.size	applSignValidState, 1
applSignValidState:
	.zero	1
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
	.uleb128 0x10
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
	.uleb128 0x20
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI4-.LFB20
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI8-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.byte	0x4
	.uaword	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x210
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/SecMod/Sec_Types.h"
	.file 5 "../../../BSW/Fbl/fbl_def.h"
	.file 6 "GenData/Fbl_Lbt.h"
	.file 7 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 8 "../../../BSW/Fbl/iotypes.h"
	.file 9 "GenData/Fbl_Fbt.h"
	.file 10 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
	.file 11 "../../../BSW/Fbl/fbl_diag.h"
	.file 12 "../../../BSW/Fbl/fbl_mem.h"
	.file 13 "../../../BSW/Fbl/fbl_valstruct.h"
	.file 14 "GenData/SecMPar.h"
	.file 15 "../../../BSW/Fbl/fbl_mio.h"
	.file 16 "../../../BSW/FblBm/bm_shared.h"
	.file 17 "Include/fbl_ap.h"
	.file 18 "../../../BSW/Fbl/fbl_flio.h"
	.file 19 "../../../BSW/Fbl/fbl_nvpattern.h"
	.file 20 "../../../BSW/Fbl/fbl_hw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1b79
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apnv.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x166
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
	.uaword	0x166
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x193
	.uleb128 0x4
	.string	"vsint16"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x186
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1b5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"SecM_ByteType"
	.byte	0x4
	.byte	0x8c
	.uaword	0x208
	.uleb128 0x2
	.string	"SecM_ShortType"
	.byte	0x4
	.byte	0x8e
	.uaword	0x217
	.uleb128 0x5
	.byte	0x4
	.uaword	0x288
	.uleb128 0x6
	.uaword	0x257
	.uleb128 0x2
	.string	"SecM_RomDataType"
	.byte	0x4
	.byte	0x9b
	.uaword	0x282
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ad
	.uleb128 0x8
	.uleb128 0x2
	.string	"SecM_LengthType"
	.byte	0x4
	.byte	0xaa
	.uaword	0x26c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cb
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xea
	.uaword	0x2f0
	.uleb128 0xb
	.string	"data"
	.byte	0x4
	.byte	0xed
	.uaword	0x28d
	.byte	0
	.uleb128 0xb
	.string	"size"
	.byte	0x4
	.byte	0xef
	.uaword	0x2ae
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"SecM_RomBufferType"
	.byte	0x4
	.byte	0xf0
	.uaword	0x2cd
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_CryptKeyType"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x2f0
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x35e
	.uleb128 0xd
	.string	"shared"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x316
	.byte	0
	.uleb128 0xd
	.string	"individual"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x316
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"SecM_AsymKeyType"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x330
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x5
	.uahalf	0x14b
	.uaword	0x208
	.uleb128 0x4
	.string	"tFblProgStatus"
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x208
	.uleb128 0x4
	.string	"tApplStatus"
	.byte	0x5
	.uahalf	0x14d
	.uaword	0x208
	.uleb128 0x4
	.string	"tFlashStatus"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x208
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x5
	.uahalf	0x15a
	.uaword	0x237
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x5
	.uahalf	0x15b
	.uaword	0x237
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x5
	.uahalf	0x165
	.uaword	0x3ca
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x5
	.uahalf	0x166
	.uaword	0x3e0
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x5
	.uahalf	0x176
	.uaword	0x2c5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x208
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x6
	.byte	0x5e
	.uaword	0x208
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x6
	.byte	0x5f
	.uaword	0x157
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x6
	.byte	0x60
	.uaword	0x237
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x6
	.byte	0x61
	.uaword	0x237
	.uleb128 0xe
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x6
	.byte	0x68
	.uaword	0x565
	.uleb128 0xb
	.string	"blockNr"
	.byte	0x6
	.byte	0x69
	.uaword	0x439
	.byte	0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x6
	.byte	0x6a
	.uaword	0x44f
	.byte	0x1
	.uleb128 0xb
	.string	"blockIndex"
	.byte	0x6
	.byte	0x6b
	.uaword	0x46b
	.byte	0x4
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0x6c
	.uaword	0x484
	.byte	0x8
	.uleb128 0xb
	.string	"blockStartAddress"
	.byte	0x6
	.byte	0x6d
	.uaword	0x3f9
	.byte	0xc
	.uleb128 0xb
	.string	"blockLength"
	.byte	0x6
	.byte	0x6e
	.uaword	0x40d
	.byte	0x10
	.uleb128 0xb
	.string	"headerAddress"
	.byte	0x6
	.byte	0x6f
	.uaword	0x3f9
	.byte	0x14
	.uleb128 0xb
	.string	"bmHeaderAddress"
	.byte	0x6
	.byte	0x70
	.uaword	0x3f9
	.byte	0x18
	.uleb128 0xb
	.string	"verifyOutput"
	.byte	0x6
	.byte	0x71
	.uaword	0x420
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x6
	.byte	0x72
	.uaword	0x49c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.byte	0x3a
	.uaword	0x5a4
	.uleb128 0xb
	.string	"value"
	.byte	0x7
	.byte	0x3c
	.uaword	0x44f
	.byte	0
	.uleb128 0xb
	.string	"enabled"
	.byte	0x7
	.byte	0x3d
	.uaword	0x157
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtMandatoryFilter"
	.byte	0x7
	.byte	0x3e
	.uaword	0x57d
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x42
	.uaword	0x5e9
	.uleb128 0xb
	.string	"value"
	.byte	0x7
	.byte	0x44
	.uaword	0x484
	.byte	0
	.uleb128 0xb
	.string	"enabled"
	.byte	0x7
	.byte	0x45
	.uaword	0x157
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtTypeFilter"
	.byte	0x7
	.byte	0x46
	.uaword	0x5c2
	.uleb128 0xa
	.byte	0xc
	.byte	0x7
	.byte	0x4a
	.uaword	0x623
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.byte	0x4c
	.uaword	0x5a4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x4e
	.uaword	0x5e9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtBlockFilter"
	.byte	0x7
	.byte	0x50
	.uaword	0x602
	.uleb128 0x2
	.string	"IO_SizeType"
	.byte	0x8
	.byte	0x42
	.uaword	0x237
	.uleb128 0x2
	.string	"IO_PositionType"
	.byte	0x8
	.byte	0x43
	.uaword	0x237
	.uleb128 0x2
	.string	"IO_ErrorType"
	.byte	0x8
	.byte	0x49
	.uaword	0x217
	.uleb128 0x2
	.string	"IO_MemPtrType"
	.byte	0x8
	.byte	0x4a
	.uaword	0x433
	.uleb128 0x2
	.string	"tMemDrvFctInit"
	.byte	0x9
	.byte	0x46
	.uaword	0x6a6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6ac
	.uleb128 0x10
	.byte	0x1
	.uaword	0x667
	.uaword	0x6bc
	.uleb128 0x11
	.uaword	0x2a5
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctDeinit"
	.byte	0x9
	.byte	0x47
	.uaword	0x6a6
	.uleb128 0x2
	.string	"tMemDrvFctErase"
	.byte	0x9
	.byte	0x48
	.uaword	0x6eb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6f1
	.uleb128 0x10
	.byte	0x1
	.uaword	0x667
	.uaword	0x706
	.uleb128 0x11
	.uaword	0x63d
	.uleb128 0x11
	.uaword	0x650
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctWrite"
	.byte	0x9
	.byte	0x49
	.uaword	0x71d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x723
	.uleb128 0x10
	.byte	0x1
	.uaword	0x667
	.uaword	0x73d
	.uleb128 0x11
	.uaword	0x67b
	.uleb128 0x11
	.uaword	0x63d
	.uleb128 0x11
	.uaword	0x650
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctRead"
	.byte	0x9
	.byte	0x4a
	.uaword	0x71d
	.uleb128 0xe
	.string	"tMemDrvTag"
	.byte	0x1c
	.byte	0x9
	.byte	0x4c
	.uaword	0x82d
	.uleb128 0xb
	.string	"init"
	.byte	0x9
	.byte	0x4d
	.uaword	0x690
	.byte	0
	.uleb128 0xb
	.string	"deinit"
	.byte	0x9
	.byte	0x4e
	.uaword	0x6bc
	.byte	0x4
	.uleb128 0xb
	.string	"erase"
	.byte	0x9
	.byte	0x4f
	.uaword	0x6d4
	.byte	0x8
	.uleb128 0xb
	.string	"write"
	.byte	0x9
	.byte	0x50
	.uaword	0x706
	.byte	0xc
	.uleb128 0xb
	.string	"read"
	.byte	0x9
	.byte	0x51
	.uaword	0x73d
	.byte	0x10
	.uleb128 0xb
	.string	"segmentSize"
	.byte	0x9
	.byte	0x52
	.uaword	0x217
	.byte	0x14
	.uleb128 0xb
	.string	"erasedValue"
	.byte	0x9
	.byte	0x53
	.uaword	0x208
	.byte	0x16
	.uleb128 0xb
	.string	"initHook"
	.byte	0x9
	.byte	0x54
	.uaword	0x157
	.byte	0x17
	.uleb128 0xb
	.string	"deinitHook"
	.byte	0x9
	.byte	0x55
	.uaword	0x157
	.byte	0x18
	.uleb128 0xb
	.string	"eraseHook"
	.byte	0x9
	.byte	0x56
	.uaword	0x157
	.byte	0x19
	.uleb128 0xb
	.string	"writeHook"
	.byte	0x9
	.byte	0x57
	.uaword	0x157
	.byte	0x1a
	.uleb128 0xb
	.string	"readHook"
	.byte	0x9
	.byte	0x58
	.uaword	0x157
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.string	"tMemDrv"
	.byte	0x9
	.byte	0x59
	.uaword	0x753
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x12
	.byte	0x1
	.byte	0xa
	.byte	0xa9
	.uaword	0x909
	.uleb128 0x13
	.string	"kFblNvPatternId_Invalid"
	.sleb128 0
	.uleb128 0x13
	.string	"kFblNvPatternId_PartitionValidity"
	.sleb128 1
	.uleb128 0x13
	.string	"kFblNvPatternId_ApplValidity"
	.sleb128 1
	.uleb128 0x13
	.string	"kFblNvPatternId_ModuleValidity"
	.sleb128 2
	.uleb128 0x13
	.string	"kFblNvPatternId_BlockValidity"
	.sleb128 2
	.uleb128 0x13
	.string	"kFblNvPatternId_Last"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternId"
	.byte	0xa
	.byte	0xbe
	.uaword	0x84b
	.uleb128 0x4
	.string	"tStateBitmap"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x237
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x945
	.uleb128 0x15
	.uaword	0x30a
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x955
	.uleb128 0x15
	.uaword	0x30a
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"tFblMemRamData"
	.byte	0xc
	.uahalf	0x30d
	.uaword	0x433
	.uleb128 0x2
	.string	"tFblValStructResult"
	.byte	0xd
	.byte	0x55
	.uaword	0x377
	.uleb128 0x12
	.byte	0x1
	.byte	0x1
	.byte	0xcd
	.uaword	0x9bf
	.uleb128 0x13
	.string	"kFblUseProductionKey"
	.sleb128 0
	.uleb128 0x13
	.string	"kFblUseDevelopmentKey"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"tFblKeyState"
	.byte	0x1
	.byte	0xd0
	.uaword	0x987
	.uleb128 0x16
	.uahalf	0x108
	.byte	0x1
	.byte	0xd5
	.uaword	0x9fd
	.uleb128 0xb
	.string	"alignDummy"
	.byte	0x1
	.byte	0xd7
	.uaword	0x237
	.byte	0
	.uleb128 0xb
	.string	"data"
	.byte	0x1
	.byte	0xd8
	.uaword	0x9fd
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0xa0e
	.uleb128 0x17
	.uaword	0x30a
	.uahalf	0x103
	.byte	0
	.uleb128 0x2
	.string	"tAlignedPublicKeyWriteBuffer"
	.byte	0x1
	.byte	0xd9
	.uaword	0x9d3
	.uleb128 0x18
	.string	"ApplFblOtpGetMemAreaErased"
	.byte	0x1
	.uahalf	0x112
	.byte	0x1
	.uaword	0x3b5
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x19
	.string	"memAddress"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x3f9
	.uleb128 0x19
	.string	"memLength"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x40d
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x114
	.uaword	0x3b5
	.uleb128 0x1b
	.string	"readLength"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x40d
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x116
	.uaword	0x667
	.uleb128 0x1b
	.string	"bufIdx"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x217
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x118
	.uaword	0x935
	.uleb128 0x1b
	.string	"localAddress"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x3f9
	.uleb128 0x1b
	.string	"localLength"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x40d
	.byte	0
	.uleb128 0x1c
	.string	"ApplFblOtpReadEntry"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	0x667
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc04
	.uleb128 0x1d
	.string	"address"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x3f9
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x40d
	.uaword	.LLST1
	.uleb128 0x1e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x433
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x667
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	0xa32
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.uahalf	0x14e
	.uaword	0xbe7
	.uleb128 0x21
	.uaword	0xa6e
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0xa5b
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x23
	.uaword	0xa80
	.uaword	.LLST5
	.uleb128 0x23
	.uaword	0xa8c
	.uaword	.LLST6
	.uleb128 0x23
	.uaword	0xa9f
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	0xaab
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	0xaba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.uaword	0xac6
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	0xadb
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.uaword	.LVL4
	.uaword	0x183c
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL19
	.uaword	0x183c
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"ApplFblOtpWriteEntry"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd81
	.uleb128 0x1d
	.string	"address"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x3f9
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x40d
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x433
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x170
	.uaword	0x377
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.string	"alignedLength"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x40d
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.string	"paddedLength"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x40d
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x172
	.uaword	0x667
	.uaword	.LLST14
	.uleb128 0x27
	.string	"padBuffer"
	.byte	0x1
	.uahalf	0x173
	.uaword	0x945
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"padIdx"
	.byte	0x1
	.uahalf	0x173
	.uaword	0x208
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	.LVL22
	.uaword	0x1870
	.uaword	0xcf0
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL27
	.uaword	0xaf0
	.uaword	0xd0f
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL30
	.uaword	0x1892
	.uaword	0xd2d
	.uleb128 0x26
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL31
	.uaword	0x18bc
	.uaword	0xd4d
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL38
	.uaword	0x18bc
	.uaword	0xd70
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL40
	.uaword	0x18f1
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblExtProgRequest"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.uaword	0x38a
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdc8
	.uleb128 0x28
	.string	"progStatus"
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x38a
	.uaword	.LLST16
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblIsValidApp"
	.byte	0x1
	.uahalf	0x1fa
	.byte	0x1
	.uaword	0x3a1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xeae
	.uleb128 0x28
	.string	"applicationStatus"
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x3a1
	.uaword	.LLST17
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x623
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.uaword	.LVL48
	.uaword	0x190f
	.uaword	0xe43
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL49
	.uaword	0x193b
	.uaword	0xe5d
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x9a
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL50
	.uaword	0x196e
	.uaword	0xe77
	.uleb128 0x26
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL51
	.uaword	0x199e
	.uaword	0xe90
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL52
	.uaword	0x19d2
	.uaword	0xea4
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL53
	.uaword	0x19ec
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblValidateApp"
	.byte	0x1
	.uahalf	0x227
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf41
	.uleb128 0x29
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x230
	.uaword	0x377
	.uaword	.LLST18
	.uleb128 0x28
	.string	"blockNr"
	.byte	0x1
	.uahalf	0x231
	.uaword	0x208
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x232
	.uaword	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.uaword	.LVL56
	.uaword	0x1a06
	.uleb128 0x2a
	.uaword	.LVL57
	.uaword	0x1a2b
	.uaword	0xf2a
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL58
	.uaword	0x1a61
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblInvalidateApp"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x101c
	.uleb128 0x29
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x246
	.uaword	0x377
	.uaword	.LLST20
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x248
	.uaword	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x249
	.uaword	0x623
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.uaword	.LVL61
	.uaword	0x190f
	.uaword	0xfb1
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL62
	.uaword	0x193b
	.uaword	0xfcb
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x9a
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL63
	.uaword	0x196e
	.uaword	0xfe5
	.uleb128 0x26
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL65
	.uaword	0x1a8a
	.uaword	0xffe
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL67
	.uaword	0x19d2
	.uaword	0x1012
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL69
	.uaword	0x19ec
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblValidateBlock"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10df
	.uleb128 0x2d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x565
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x29
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x377
	.uaword	.LLST21
	.uleb128 0x28
	.string	"localSigValidationState"
	.byte	0x1
	.uahalf	0x272
	.uaword	0x208
	.uaword	.LLST22
	.uleb128 0x1f
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x275
	.uaword	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uaword	.LVL71
	.uaword	0x199e
	.uaword	0x10b5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL72
	.uaword	0x1ab3
	.uaword	0x10c9
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL76
	.uaword	0x1a61
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblInvalidateBlock"
	.byte	0x1
	.uahalf	0x2c3
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x115c
	.uleb128 0x2d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x565
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x29
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0x377
	.uaword	.LLST23
	.uleb128 0x1f
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uaword	.LVL78
	.uaword	0xf41
	.uleb128 0x25
	.uaword	.LVL80
	.uaword	0x1a8a
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"ApplFblReadSecurityBytes"
	.byte	0x1
	.uahalf	0x2e4
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11f0
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x433
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x217
	.uaword	.LLST25
	.uleb128 0x27
	.string	"staticKey"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x1200
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.uaword	.LVL84
	.uaword	0x1870
	.uaword	0x11d3
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL85
	.uaword	0x1ae1
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x1200
	.uleb128 0x15
	.uaword	0x30a
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x11f0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblAdjustLbtBlockData"
	.byte	0x1
	.uahalf	0x332
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12a4
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x332
	.uaword	0x12a4
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x334
	.uaword	0x377
	.uaword	.LLST27
	.uleb128 0x27
	.string	"presPtnAddress"
	.byte	0x1
	.uahalf	0x336
	.uaword	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x27
	.string	"presPtnLen"
	.byte	0x1
	.uahalf	0x337
	.uaword	0x63d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x25
	.uaword	.LVL89
	.uaword	0x1b0d
	.uleb128 0x26
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x565
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblWriteDcmDslRxTesterSourceAddr"
	.byte	0x1
	.uahalf	0x367
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12fa
	.uleb128 0x2f
	.string	"buffer"
	.byte	0x1
	.uahalf	0x367
	.uaword	0x433
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblReadDcmDslRxTesterSourceAddr"
	.byte	0x1
	.uahalf	0x374
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1366
	.uleb128 0x1d
	.string	"buffer"
	.byte	0x1
	.uahalf	0x374
	.uaword	0x433
	.uaword	.LLST28
	.uleb128 0x25
	.uaword	.LVL93
	.uaword	0x1b54
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"ApplFblGetKeyState"
	.byte	0x1
	.uahalf	0x448
	.byte	0x1
	.uaword	0x377
	.byte	0x1
	.uaword	0x1394
	.uleb128 0x30
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x448
	.uaword	0x1394
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9bf
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblReadVerificationKey"
	.byte	0x1
	.uahalf	0x385
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1522
	.uleb128 0x1d
	.string	"publicKey"
	.byte	0x1
	.uahalf	0x385
	.uaword	0x1522
	.uaword	.LLST29
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x387
	.uaword	0x377
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x388
	.uaword	0x9bf
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	0x1366
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.uahalf	0x38a
	.uaword	0x1423
	.uleb128 0x31
	.uaword	0x1387
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5106
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0
	.uaword	0x14a4
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x667
	.uaword	.LLST31
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x667
	.uaword	.LLST32
	.uleb128 0x2a
	.uaword	.LVL98
	.uaword	0x1870
	.uaword	0x1460
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL99
	.uaword	0x1870
	.uaword	0x1474
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL100
	.uaword	0xaf0
	.uaword	0x148d
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL102
	.uaword	0xaf0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x7f
	.sleb128 256
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x3cc
	.uaword	0x667
	.uaword	.LLST33
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x3cc
	.uaword	0x667
	.uaword	.LLST34
	.uleb128 0x2a
	.uaword	.LVL108
	.uaword	0x1870
	.uaword	0x14dd
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL109
	.uaword	0x1870
	.uaword	0x14f1
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL110
	.uaword	0xaf0
	.uaword	0x150a
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL112
	.uaword	0xaf0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x7f
	.sleb128 256
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x35e
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblWriteVerificationKey"
	.byte	0x1
	.uahalf	0x3fe
	.byte	0x1
	.uaword	0x377
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x16e4
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.uahalf	0x3fe
	.uaword	0x433
	.uaword	.LLST35
	.uleb128 0x29
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x400
	.uaword	0x377
	.uaword	.LLST36
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x403
	.uaword	0xa0e
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0x1689
	.uleb128 0x27
	.string	"keyModBuffer"
	.byte	0x1
	.uahalf	0x408
	.uaword	0x16e4
	.byte	0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x27
	.string	"keyExpBuffer"
	.byte	0x1
	.uahalf	0x409
	.uaword	0x16f4
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x2a
	.uaword	.LVL118
	.uaword	0x1892
	.uaword	0x15e6
	.uleb128 0x26
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL119
	.uaword	0x183c
	.uaword	0x1602
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -520
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL120
	.uaword	0x183c
	.uaword	0x161c
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL122
	.uaword	0x18f1
	.uaword	0x1630
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL123
	.uaword	0xc04
	.uaword	0x1655
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.uaword	nvOtpArea
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL125
	.uaword	0xc04
	.uaword	0x1678
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.uaword	nvOtpArea+256
	.byte	0
	.uleb128 0x25
	.uaword	.LVL134
	.uaword	0x18f1
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL128
	.uaword	0x1ae1
	.uaword	0x16a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x104
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL129
	.uaword	0xc04
	.uaword	0x16c7
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL131
	.uaword	0xc04
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x78
	.sleb128 256
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x16f4
	.uleb128 0x15
	.uaword	0x30a
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x1704
	.uleb128 0x15
	.uaword	0x30a
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x1715
	.uleb128 0x17
	.uaword	0x30a
	.uahalf	0x11f
	.byte	0
	.uleb128 0x34
	.string	"nvOtpArea"
	.byte	0x1
	.byte	0xee
	.uaword	0x172c
	.byte	0x5
	.byte	0x3
	.uaword	nvOtpArea
	.uleb128 0x6
	.uaword	0x1704
	.uleb128 0x35
	.string	"SecM_RsaDevelopmentMod"
	.byte	0xe
	.byte	0x5c
	.uaword	0x1751
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x16e4
	.uleb128 0x35
	.string	"SecM_RsaDevelopmentExp"
	.byte	0xe
	.byte	0x5d
	.uaword	0x1776
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x16f4
	.uleb128 0x14
	.uaword	0x82d
	.uaword	0x1786
	.uleb128 0x36
	.byte	0
	.uleb128 0x35
	.string	"memDrvLst"
	.byte	0x9
	.byte	0x5e
	.uaword	0x1799
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x177b
	.uleb128 0x35
	.string	"memSegment"
	.byte	0xf
	.byte	0x8b
	.uaword	0x227
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"diagErrorCode"
	.byte	0xb
	.uahalf	0x3ba
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x920
	.uaword	0x17da
	.uleb128 0x15
	.uaword	0x30a
	.byte	0
	.byte	0
	.uleb128 0x37
	.string	"fblStates"
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0x17ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"applSignValidState"
	.byte	0x1
	.byte	0xe2
	.uaword	0x208
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	applSignValidState
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x181f
	.uleb128 0x15
	.uaword	0x30a
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.string	"fblBmMagicFlag"
	.byte	0x10
	.byte	0xeb
	.uaword	0x1837
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.uaword	0x180f
	.uleb128 0x3a
	.byte	0x1
	.string	"FlashDriver_RReadSync"
	.byte	0x12
	.byte	0xb9
	.byte	0x1
	.uaword	0x667
	.byte	0x1
	.uaword	0x1870
	.uleb128 0x11
	.uaword	0x67b
	.uleb128 0x11
	.uaword	0x63d
	.uleb128 0x11
	.uaword	0x650
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x11
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x1892
	.uleb128 0x11
	.uaword	0x208
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MemDriver_Begin"
	.byte	0xf
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uaword	0x18bc
	.uleb128 0x11
	.uaword	0x208
	.uleb128 0x11
	.uaword	0x208
	.uleb128 0x11
	.uaword	0x157
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FlashDriver_RWriteSync"
	.byte	0x12
	.byte	0xb7
	.byte	0x1
	.uaword	0x667
	.byte	0x1
	.uaword	0x18f1
	.uleb128 0x11
	.uaword	0x67b
	.uleb128 0x11
	.uaword	0x63d
	.uleb128 0x11
	.uaword	0x650
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MemDriver_End"
	.byte	0xf
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uaword	0x190f
	.uleb128 0x11
	.uaword	0x157
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"FblLbtBlockFilterInit"
	.byte	0x7
	.byte	0x5b
	.byte	0x1
	.byte	0x1
	.uaword	0x1935
	.uleb128 0x11
	.uaword	0x1935
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x623
	.uleb128 0x3b
	.byte	0x1
	.string	"FblLbtBlockFilterSetBlockType"
	.byte	0x7
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uaword	0x196e
	.uleb128 0x11
	.uaword	0x1935
	.uleb128 0x11
	.uaword	0x484
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FblLbtBlockFirst"
	.byte	0x7
	.byte	0xa5
	.byte	0x1
	.uaword	0x565
	.byte	0x1
	.uaword	0x1993
	.uleb128 0x11
	.uaword	0x1993
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1999
	.uleb128 0x6
	.uaword	0x623
	.uleb128 0x3a
	.byte	0x1
	.string	"FblNvPatternGet"
	.byte	0x13
	.byte	0x77
	.byte	0x1
	.uaword	0x377
	.byte	0x1
	.uaword	0x19c7
	.uleb128 0x11
	.uaword	0x19c7
	.uleb128 0x11
	.uaword	0x909
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x19cd
	.uleb128 0x6
	.uaword	0x565
	.uleb128 0x3c
	.byte	0x1
	.string	"FblLbtBlockNext"
	.byte	0x7
	.byte	0xa6
	.byte	0x1
	.uaword	0x565
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"FblLbtBlockDone"
	.byte	0x7
	.byte	0xa7
	.byte	0x1
	.uaword	0x157
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"FblDiagGetLastErasedBlock"
	.byte	0xb
	.uahalf	0x38b
	.byte	0x1
	.uaword	0x208
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByNr"
	.byte	0x7
	.byte	0x66
	.byte	0x1
	.uaword	0x377
	.byte	0x1
	.uaword	0x1a61
	.uleb128 0x11
	.uaword	0x439
	.uleb128 0x11
	.uaword	0x12a4
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FblNvPatternSet"
	.byte	0x13
	.byte	0x71
	.byte	0x1
	.uaword	0x377
	.byte	0x1
	.uaword	0x1a8a
	.uleb128 0x11
	.uaword	0x19c7
	.uleb128 0x11
	.uaword	0x909
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FblNvPatternClr"
	.byte	0x13
	.byte	0x74
	.byte	0x1
	.uaword	0x377
	.byte	0x1
	.uaword	0x1ab3
	.uleb128 0x11
	.uaword	0x19c7
	.uleb128 0x11
	.uaword	0x909
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FblValStructValidateBlock"
	.byte	0xd
	.byte	0x62
	.byte	0x1
	.uaword	0x96c
	.byte	0x1
	.uaword	0x1ae1
	.uleb128 0x11
	.uaword	0x19c7
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0x14
	.uahalf	0x167
	.byte	0x1
	.uaword	0x2a5
	.byte	0x1
	.uaword	0x1b0d
	.uleb128 0x11
	.uaword	0x2a5
	.uleb128 0x11
	.uaword	0x2a7
	.uleb128 0x11
	.uaword	0x247
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"FblNvPatternGetBaseAddr"
	.byte	0x13
	.byte	0x69
	.byte	0x1
	.uaword	0x227
	.byte	0x1
	.uaword	0x1b48
	.uleb128 0x11
	.uaword	0x208
	.uleb128 0x11
	.uaword	0x909
	.uleb128 0x11
	.uaword	0x1b48
	.uleb128 0x11
	.uaword	0x1b4e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x650
	.uleb128 0x5
	.byte	0x4
	.uaword	0x63d
	.uleb128 0x3f
	.byte	0x1
	.string	"FblMemSetInteger"
	.byte	0xc
	.uahalf	0x3aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x237
	.uleb128 0x11
	.uaword	0x237
	.uleb128 0x11
	.uaword	0x955
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x6
	.byte	0x7c
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL13
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE16
	.uahalf	0x6
	.byte	0x7f
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67-1
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL70
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL71
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x5
	.byte	0x3
	.uaword	applSignValidState
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL79
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80-1
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL82
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL84-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL92
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL93-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL94
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98-1
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL106
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL108-1
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL101
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102-1
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL111
	.uaword	.LVL112-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL112-1
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL116
	.uaword	.LVL118-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL118-1
	.uaword	.LVL126
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL127
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL128-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL117
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL126
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131-1
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0
	.uaword	0
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
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
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"mandatoryType"
.LASF9:
	.string	"blockDescriptor"
.LASF6:
	.string	"writeBuffer"
.LASF12:
	.string	"keyState"
.LASF1:
	.string	"blockType"
.LASF5:
	.string	"length"
.LASF13:
	.string	"readModResult"
.LASF8:
	.string	"blockFilter"
.LASF4:
	.string	"readBuffer"
.LASF2:
	.string	"result"
.LASF3:
	.string	"memDrvResult"
.LASF11:
	.string	"localBlockDescriptor"
.LASF7:
	.string	"iterBlock"
.LASF10:
	.string	"retCode"
.LASF14:
	.string	"readExpResult"
	.extern	diagErrorCode,STT_OBJECT,1
	.extern	SecM_RsaDevelopmentExp,STT_OBJECT,4
	.extern	SecM_RsaDevelopmentMod,STT_OBJECT,256
	.extern	fblStates,STT_OBJECT,4
	.extern	FblMemSetInteger,STT_FUNC,0
	.extern	memSegment,STT_OBJECT,2
	.extern	FblNvPatternGetBaseAddr,STT_FUNC,0
	.extern	FblOwnMemcpy,STT_FUNC,0
	.extern	FblValStructValidateBlock,STT_FUNC,0
	.extern	FblNvPatternClr,STT_FUNC,0
	.extern	FblNvPatternSet,STT_FUNC,0
	.extern	FblLbtGetBlockDescriptorByNr,STT_FUNC,0
	.extern	FblDiagGetLastErasedBlock,STT_FUNC,0
	.extern	FblLbtBlockDone,STT_FUNC,0
	.extern	FblLbtBlockNext,STT_FUNC,0
	.extern	FblNvPatternGet,STT_FUNC,0
	.extern	FblLbtBlockFirst,STT_FUNC,0
	.extern	FblLbtBlockFilterSetBlockType,STT_FUNC,0
	.extern	FblLbtBlockFilterInit,STT_FUNC,0
	.extern	fblBmMagicFlag,STT_OBJECT,8
	.extern	MemDriver_End,STT_FUNC,0
	.extern	FlashDriver_RWriteSync,STT_FUNC,0
	.extern	MemDriver_Begin,STT_FUNC,0
	.extern	memDrvLst,STT_OBJECT,-1
	.extern	ApplFblFatalError,STT_FUNC,0
	.extern	FlashDriver_RReadSync,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
