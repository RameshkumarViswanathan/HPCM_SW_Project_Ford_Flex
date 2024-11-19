	.file	"actBNReduce.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNMulDigit,"ax",@progbits
	.align 1
	.type	actBNMulDigit, @function
actBNMulDigit:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBNReduce.c"
	.loc 1 298 0
.LVL0:
	.loc 1 300 0
	mov	%e2, 0
	.loc 1 302 0
	jz	%d4, .L2
	.loc 1 305 0
	mul.u	%e6, %d5, 1
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL1:
.L3:
	.loc 1 305 0 is_stmt 0 discriminator 3
	mov	%d0, %d3
	mov	%d1, 0
	ld.w	%d15, [%a4+]4
	madd.u	%e2, %e0, %d15, %d6
	madd	%d3, %d3, %d15, %d7
.LVL2:
	.loc 1 306 0 is_stmt 1 discriminator 3
	st.w	[%a5+]4, %d2
.LVL3:
	loop	%a15, .L3
.L2:
	.loc 1 309 0
	mov	%d2, %d3
	ret
.LFE15:
	.size	actBNMulDigit, .-actBNMulDigit
.section .text.actBNReduceLengthCheck,"ax",@progbits
	.align 1
	.global	actBNReduceLengthCheck
	.type	actBNReduceLengthCheck, @function
actBNReduceLengthCheck:
.LFB18:
	.loc 1 399 0
.LVL4:
	.loc 1 403 0
	ld.w	%d15, [%a5]0
	jlt.u	%d15, 2, .L7
	mov.a	%a2, %d15
	add.a	%a2, -1
	add.a	%a2, %a2
	add.a	%a2, %a2
	add.a	%a15, %a4, %a2
	ld.w	%d2, [%a15]0
	jnz	%d2, .L7
	add	%d15, -1
	add.a	%a2, -4
	add.a	%a2, %a4
	mov.a	%a15, %d15
	add.a	%a15, -1
.L12:
	.loc 1 405 0
	st.w	[%a5]0, %d15
	loop	%a15, .L8
.L7:
	.loc 1 408 0
	ld.w	%d15, [%a7]0
	jlt.u	%d15, 2, .L9
	mov.a	%a2, %d15
	add.a	%a2, -1
	add.a	%a2, %a2
	add.a	%a2, %a2
	add.a	%a15, %a6, %a2
	ld.w	%d2, [%a15]0
	jz	%d2, .L10
	j	.L11
.L8:
	.loc 1 403 0 discriminator 1
	ld.w	%d2, [%a2+]-4
	add	%d15, -1
	jz	%d2, .L12
	j	.L7
.L10:
	add	%d15, -1
	add.a	%a2, -4
	add.a	%a2, %a6
	mov.a	%a15, %d15
	add.a	%a15, -1
	j	.L13
.L17:
	mov	%d15, %d3
.L13:
	.loc 1 410 0
	st.w	[%a7]0, %d15
	loop	%a15, .L21
	j	.L9
.L21:
	.loc 1 408 0 discriminator 1
	ld.w	%d2, [%a2+]-4
	add	%d3, %d15, -1
	jz	%d2, .L17
	j	.L11
.L16:
	.loc 1 423 0
	mov.aa	%a4, %a13
.LVL5:
	mov.aa	%a5, %a6
.LVL6:
	call	actBNCompare
.LVL7:
	ne	%d15, %d2, 16
	.loc 1 400 0
	mov	%d2, 0
	.loc 1 423 0
	jnz	%d15, .L14
	.loc 1 425 0
	ld.a	%a4, [%SP]0
	mov.aa	%a5, %a13
	ld.w	%d4, [%a15]0
	call	actBNCopy
.LVL8:
	.loc 1 426 0
	mov	%d2, 2
.LVL9:
.L14:
	.loc 1 429 0
	ld.w	%d4, [%a15]0
	ld.w	%d15, [%a12]0
	jge.u	%d4, %d15, .L19
	.loc 1 431 0
	ld.a	%a4, [%SP]0
	mov.aa	%a5, %a13
	call	actBNCopy
.LVL10:
	.loc 1 432 0
	mov	%d2, 2
	ret
.LVL11:
.L9:
	.loc 1 416 0
	mov	%d2, 248
.LVL12:
	ret
.LVL13:
.L11:
	mov.aa	%a12, %a7
	mov.aa	%a15, %a5
	mov.aa	%a13, %a4
	.loc 1 421 0
	ld.w	%d4, [%a5]0
	.loc 1 400 0
	mov	%d2, 0
	.loc 1 421 0
	jne	%d4, %d15, .L14
	j	.L16
.LVL14:
.L19:
	.loc 1 438 0
	ret
.LFE18:
	.size	actBNReduceLengthCheck, .-actBNReduceLengthCheck
.section .text.actBNReduceInitialize,"ax",@progbits
	.align 1
	.global	actBNReduceInitialize
	.type	actBNReduceInitialize, @function
actBNReduceInitialize:
.LFB19:
	.loc 1 457 0
.LVL15:
	mov.aa	%a13, %a4
	mov.aa	%a12, %a5
	mov.aa	%a14, %a6
	mov.aa	%a15, %a7
	ld.a	%a2, [%SP]0
	.loc 1 461 0
	ld.w	%d15, [%a7]0
	addsc.a	%a3, %a6, %d15, 2
	ld.w	%d15, [%a3] -4
.LVL16:
	.loc 1 462 0
	jltz	%d15, .L23
	ld.w	%d2, [%a2]0
	add	%d2, 1
	j	.L24
.L28:
	mov	%d2, %d3
.L24:
	.loc 1 464 0
	sh	%d15, 1
.LVL17:
	addi	%d3, %d2, 1
	.loc 1 462 0
	jgez	%d15, .L28
	st.w	[%a2]0, %d2
.LVL18:
.L23:
	.loc 1 468 0
	ld.w	%d15, [%a2]0
.LVL19:
	jz	%d15, .L25
	.loc 1 471 0
	ld.w	%d9, [%a15]0
.LVL20:
.LBB4:
.LBB5:
	.loc 1 333 0
	mov	%d8, 1
	sh	%d8, %d8, %d15
.LVL21:
	.loc 1 336 0
	mov.aa	%a4, %a13
.LVL22:
	ld.w	%d4, [%a12]0
	mov	%d5, %d8
	mov.aa	%a5, %a13
.LVL23:
	call	actBNMulDigit
.LVL24:
	.loc 1 337 0
	jz	%d2, .L26
	.loc 1 339 0
	ld.w	%d15, [%a12]0
.LVL25:
	addsc.a	%a2, %a13, %d15, 2
	st.w	[%a2]0, %d2
	.loc 1 340 0
	ld.w	%d15, [%a12]0
	add	%d15, 1
	st.w	[%a12]0, %d15
.L26:
	.loc 1 344 0
	mov.aa	%a4, %a14
	mov	%d4, %d9
	mov	%d5, %d8
	mov.aa	%a5, %a14
	call	actBNMulDigit
.LVL26:
.L25:
.LBE5:
.LBE4:
	.loc 1 478 0
	ld.w	%d4, [%a15]0
	ld.w	%d15, [%a12]0
	sub	%d15, %d4
	addsc.a	%a4, %a13, %d15, 2
	mov.aa	%a5, %a14
	call	actBNCompare
.LVL27:
	lt.u	%d2, %d2, 17
	jnz	%d2, .L22
	.loc 1 480 0
	ld.w	%d4, [%a15]0
	ld.a	%a6, [%a12]0
	mov.d	%d15, %a6
	sub	%d15, %d4
	addsc.a	%a6, %a13, %d15, 2
	mov.aa	%a4, %a6
	mov.aa	%a5, %a14
	call	actBNSub
.LVL28:
.L22:
	ret
.LFE19:
	.size	actBNReduceInitialize, .-actBNReduceInitialize
	.global	__udivdi3
.section .text.actBNReduceComputeQuotientEstimate,"ax",@progbits
	.align 1
	.global	actBNReduceComputeQuotientEstimate
	.type	actBNReduceComputeQuotientEstimate, @function
actBNReduceComputeQuotientEstimate:
.LFB20:
	.loc 1 504 0
.LVL29:
	.loc 1 507 0
	sh	%d4, 2
.LVL30:
	addsc.a	%a15, %a4, %d4, 0
	ld.w	%d15, [%a15]0
	addsc.a	%a5, %a5, %d5, 2
.LVL31:
	ld.w	%d6, [%a5] -4
	jne	%d15, %d6, .L30
	.loc 1 509 0
	mov	%d15, 0
	st.w	[%a6]0, %d15
	ret
.L30:
	mov.aa	%a15, %a6
.LVL32:
	.loc 1 513 0
	addsc.a	%a4, %a4, %d4, 0
.LVL33:
	ld.w	%d4, [%a4] -4
.LVL34:
	mov	%d3, %d15
	mov	%d2, 0
	madd.u	%e4, %e2, %d4, 1
	mov	%d7, 0
	call	__udivdi3
.LVL35:
	.loc 1 515 0
	add	%d2, 1
	st.w	[%a15]0, %d2
	ret
.LFE20:
	.size	actBNReduceComputeQuotientEstimate, .-actBNReduceComputeQuotientEstimate
.section .text.actBNReduceRefineQuotientEstimate,"ax",@progbits
	.align 1
	.global	actBNReduceRefineQuotientEstimate
	.type	actBNReduceRefineQuotientEstimate, @function
actBNReduceRefineQuotientEstimate:
.LFB21:
	.loc 1 541 0
.LVL36:
	sub.a	%SP, 24
.LCFI0:
	mov.aa	%a15, %a6
	st.a	[%SP] 4, %a7
	.loc 1 548 0
	add	%d5, -2
.LVL37:
	sh	%d5, 2
.LVL38:
	addsc.a	%a13, %a5, %d5, 0
	.loc 1 550 0
	mov.a	%a12, %d5
	add.a	%a12, 4
	add.a	%a12, %a5
	.loc 1 555 0
	add	%d4, -2
.LVL39:
	addsc.a	%a14, %a4, %d4, 2
.LVL40:
.L33:
	.loc 1 547 0 discriminator 1
	ld.w	%d2, [%a15]0
	add	%d2, -1
	st.w	[%a15]0, %d2
	.loc 1 548 0 discriminator 1
	mov	%d3, 0
	ld.w	%d15, [%a13]0
	mul.u	%e6, %d15, %d2
	madd	%d7, %d7, %d15, %d3
.LVL41:
	.loc 1 549 0 discriminator 1
	st.w	[%SP] 12, %d6
	.loc 1 550 0 discriminator 1
	mov	%d8, %d7
	mov	%d9, 0
	ld.w	%d15, [%a12]0
	madd.u	%e6, %e8, %d15, %d2
.LVL42:
	madd	%d7, %d7, %d15, %d3
.LVL43:
	.loc 1 551 0 discriminator 1
	st.w	[%SP] 16, %d6
	.loc 1 552 0 discriminator 1
	st.w	[%SP] 20, %d7
	.loc 1 554 0 discriminator 1
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL44:
	.loc 1 555 0 discriminator 1
	mov.aa	%a4, %a14
	lea	%a5, [%SP] 12
	mov	%d4, 3
	call	actBNCompare
.LVL45:
	eq	%d2, %d2, 16
	jnz	%d2, .L33
	.loc 1 556 0
	ret
.LFE21:
	.size	actBNReduceRefineQuotientEstimate, .-actBNReduceRefineQuotientEstimate
.section .text.actBNReduceUpdateCurrentProduct,"ax",@progbits
	.align 1
	.global	actBNReduceUpdateCurrentProduct
	.type	actBNReduceUpdateCurrentProduct, @function
actBNReduceUpdateCurrentProduct:
.LFB22:
	.loc 1 576 0
.LVL46:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a14, %a4
	st.a	[%SP] 4, %a5
	mov	%d8, %d4
	mov	%d15, %d5
	mov.aa	%a15, %a6
	mov.aa	%a12, %a7
	.loc 1 577 0
	addsc.a	%a13, %a7, %d5, 2
	mov.aa	%a4, %a5
.LVL47:
	mov	%d4, %d5
.LVL48:
	ld.w	%d5, [%a6]0
.LVL49:
	mov.aa	%a5, %a7
.LVL50:
	call	actBNMulDigit
.LVL51:
	st.w	[%a13]0, %d2
	.loc 1 578 0
	ld.a	%a4, [%SP] 8
	call	actWatchdogTriggerFunction
.LVL52:
	.loc 1 582 0
	sub	%d4, %d8, %d15
	addsc.a	%a4, %a14, %d4, 2
	mov.aa	%a5, %a12
	add	%d4, %d15, 1
	call	actBNCompare
.LVL53:
	ne	%d2, %d2, 16
	jnz	%d2, .L36
	.loc 1 584 0
	ld.w	%d5, [%a15]0
	add	%d5, -1
	st.w	[%a15]0, %d5
	.loc 1 585 0
	ld.a	%a4, [%SP] 4
	mov	%d4, %d15
	mov.aa	%a5, %a12
	call	actBNMulDigit
.LVL54:
	st.w	[%a13]0, %d2
.L36:
	.loc 1 587 0
	ld.a	%a4, [%SP] 8
	call	actWatchdogTriggerFunction
.LVL55:
	ret
.LFE22:
	.size	actBNReduceUpdateCurrentProduct, .-actBNReduceUpdateCurrentProduct
.section .text.actBNReduce,"ax",@progbits
	.align 1
	.global	actBNReduce
	.type	actBNReduce, @function
actBNReduce:
.LFB23:
	.loc 1 627 0
.LVL56:
	sub.a	%SP, 32
.LCFI2:
	mov.aa	%a13, %a4
	st.a	[%SP] 12, %a5
	mov.aa	%a14, %a6
	mov.aa	%a12, %a7
.LVL57:
	.loc 1 629 0
	st.w	[%SP] 28, %d4
	.loc 1 630 0
	st.w	[%SP] 24, %d5
	.loc 1 632 0
	mov.aa	%a4, %a7
.LVL58:
	call	actWatchdogTriggerFunction
.LVL59:
	.loc 1 635 0
	mov.aa	%a4, %a14
	ld.w	%d4, [%SP] 24
	mov	%d5, 0
	call	actBNSet
.LVL60:
	.loc 1 636 0
	st.a	[%SP]0, %a14
	mov.aa	%a4, %a13
	lea	%a5, [%SP] 28
	ld.a	%a6, [%SP] 12
	lea	%a7, [%SP] 24
	call	actBNReduceLengthCheck
.LVL61:
	mov	%d8, %d2
.LVL62:
	.loc 1 638 0
	jnz	%d2, .L38
.LBB9:
	.loc 1 650 0
	mov	%d15, 0
	st.w	[%SP] 16, %d15
	.loc 1 653 0
	lea	%a15, [%SP] 16
	st.a	[%SP]0, %a15
	mov.aa	%a4, %a13
	lea	%a5, [%SP] 28
	ld.a	%a6, [%SP] 12
	lea	%a7, [%SP] 24
	call	actBNReduceInitialize
.LVL63:
	.loc 1 656 0
	ld.a	%a15, [%SP] 28
	mov.d	%d10, %a15
	add	%d10, -1
.LVL64:
	.loc 1 657 0
	ld.w	%d2, [%SP] 24
	addi	%d9, %d2, -1
.LVL65:
	.loc 1 660 0
	jge.u	%d9, %d10, .L39
	add.a	%a15, -1
	mov.d	%d15, %a15
	sub	%d2, %d15, %d2
	addsc.a	%a15, %a13, %d2, 2
.LVL66:
.L40:
	.loc 1 662 0 discriminator 3
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL67:
	.loc 1 664 0 discriminator 3
	mov.aa	%a4, %a13
	ld.a	%a5, [%SP] 12
	mov	%d4, %d10
	ld.w	%d5, [%SP] 24
	lea	%a6, [%SP] 20
	call	actBNReduceComputeQuotientEstimate
.LVL68:
	.loc 1 665 0 discriminator 3
	mov.aa	%a4, %a13
	mov	%d4, %d10
	ld.a	%a5, [%SP] 12
	ld.w	%d5, [%SP] 24
	lea	%a6, [%SP] 20
	mov.aa	%a7, %a12
	call	actBNReduceRefineQuotientEstimate
.LVL69:
	.loc 1 666 0 discriminator 3
	st.a	[%SP]0, %a12
	mov.aa	%a4, %a13
	ld.a	%a5, [%SP] 12
	mov	%d4, %d10
	ld.w	%d5, [%SP] 24
	lea	%a6, [%SP] 20
	mov.aa	%a7, %a14
	call	actBNReduceUpdateCurrentProduct
.LVL70:
	.loc 1 667 0 discriminator 3
	mov.aa	%a4, %a15
	mov.aa	%a5, %a14
	mov.aa	%a6, %a15
	ld.w	%d4, [%SP] 24
	add	%d4, 1
	call	actBNSub
.LVL71:
	.loc 1 660 0 discriminator 3
	add	%d10, -1
.LVL72:
	add.a	%a15, -4
	jlt.u	%d9, %d10, .L40
.LVL73:
.L39:
	.loc 1 670 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL74:
	.loc 1 673 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	ld.w	%d4, [%SP] 24
	call	actBNCopy
.LVL75:
	.loc 1 675 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL76:
	.loc 1 678 0
	ld.w	%d15, [%SP] 16
	jz	%d15, .L41
	.loc 1 680 0
	ld.w	%d9, [%SP] 24
.LVL77:
.LBB10:
.LBB11:
	.loc 1 367 0
	rsub	%d15, %d15, 32
.LVL78:
	mov	%d10, 1
.LVL79:
	sh	%d10, %d10, %d15
.LVL80:
	.loc 1 370 0
	sh	%d15, %d9, 2
	addsc.a	%a15, %a14, %d15, 0
	mov.aa	%a4, %a14
	mov	%d4, %d9
	mov	%d5, %d10
	mov.aa	%a5, %a14
	call	actBNMulDigit
.LVL81:
	st.w	[%a15]0, %d2
	.loc 1 372 0
	mov.aa	%a4, %a14
	lea	%a5, [%a14] 4
	mov	%d4, %d9
	call	actBNCopy
.LVL82:
	.loc 1 375 0
	ld.a	%a4, [%SP] 12
	mov	%d4, %d9
	mov	%d5, %d10
	mov.aa	%a5, %a4
	call	actBNMulDigit
.LVL83:
	mov	%d10, %d2
.LVL84:
	.loc 1 377 0
	ld.a	%a4, [%SP] 12
	mov.aa	%a5, %a4
	add.a	%a5, 4
	addi	%d4, %d9, -1
	call	actBNCopy
.LVL85:
	.loc 1 379 0
	ld.a	%a15, [%SP] 12
	addsc.a	%a14, %a15, %d15, 0
.LVL86:
	st.w	[%a14] -4, %d10
.LVL87:
.L41:
.LBE11:
.LBE10:
.LBE9:
	.loc 1 684 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL88:
	j	.L42
.LVL89:
.L38:
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL90:
	.loc 1 688 0
	ne	%d15, %d8, 2
	cmovn	%d8, %d15, 0
.LVL91:
.L42:
	.loc 1 692 0
	mov	%d2, %d8
	ret
.LFE23:
	.size	actBNReduce, .-actBNReduce
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd6d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBNReduce.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1d5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1c7
	.uleb128 0x3
	.string	"actPlatformUint64"
	.byte	0x3
	.byte	0x5a
	.uaword	0x14e
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x20e
	.uleb128 0x3
	.string	"actU64"
	.byte	0x4
	.byte	0x34
	.uaword	0x227
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x240
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x240
	.uleb128 0x3
	.string	"actBNDDIGIT"
	.byte	0x4
	.byte	0x85
	.uaword	0x24e
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x240
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x271
	.uleb128 0x5
	.string	"actBNMulDigit"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x338
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x126
	.uaword	0x338
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x127
	.uaword	0x343
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x33e
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x2b7
	.uaword	.LLST1
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x25c
	.uaword	.LLST2
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x283
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x33e
	.uleb128 0xa
	.uaword	0x271
	.uleb128 0xa
	.uaword	0x25c
	.uleb128 0xb
	.byte	0x1
	.string	"actBNReduceLengthCheck"
	.byte	0x1
	.uahalf	0x189
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x422
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x338
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x422
	.uaword	.LLST5
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x338
	.uaword	.LLST6
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x422
	.uaword	.LLST7
	.uleb128 0x8
	.string	"r"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"retVal"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x296
	.uaword	.LLST8
	.uleb128 0xd
	.uaword	.LVL7
	.uaword	0xcad
	.uaword	0x3ef
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL8
	.uaword	0xcd9
	.uaword	0x40a
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LVL10
	.uaword	0xcd9
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25c
	.uleb128 0x10
	.string	"actBNNormalize"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.byte	0x1
	.uaword	0x494
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.uahalf	0x146
	.uaword	0x2b7
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x147
	.uaword	0x422
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x2b7
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x149
	.uaword	0x25c
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x25c
	.uleb128 0x13
	.string	"tmp"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x271
	.uleb128 0x13
	.string	"carry"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x271
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actBNReduceInitialize"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x601
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x2b7
	.uaword	.LLST9
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x422
	.uaword	.LLST10
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x2b7
	.uaword	.LLST11
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x601
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x422
	.uaword	.LLST13
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x271
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	0x428
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x5bb
	.uleb128 0x16
	.uaword	0x46d
	.uaword	.LLST15
	.uleb128 0x16
	.uaword	0x461
	.uaword	.LLST16
	.uleb128 0x16
	.uaword	0x457
	.uaword	.LLST17
	.uleb128 0x16
	.uaword	0x44b
	.uaword	.LLST18
	.uleb128 0x16
	.uaword	0x441
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x18
	.uaword	0x479
	.uaword	.LLST20
	.uleb128 0x18
	.uaword	0x485
	.uaword	.LLST21
	.uleb128 0xd
	.uaword	.LVL24
	.uaword	0x2bd
	.uaword	0x597
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL26
	.uaword	0x2bd
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL27
	.uaword	0xcad
	.uaword	0x5da
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.uaword	.LVL28
	.uaword	0xcfd
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x343
	.uleb128 0x19
	.byte	0x1
	.string	"actBNReduceComputeQuotientEstimate"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69d
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x338
	.uaword	.LLST22
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x338
	.uaword	.LLST23
	.uleb128 0x6
	.string	"idx"
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x25c
	.uaword	.LLST24
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x25c
	.uaword	.LLST25
	.uleb128 0x6
	.string	"qDig"
	.byte	0x1
	.uahalf	0x1f7
	.uaword	0x2b7
	.uaword	.LLST26
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0x283
	.uaword	.LLST27
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actBNReduceRefineQuotientEstimate"
	.byte	0x1
	.uahalf	0x216
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x784
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x338
	.uaword	.LLST28
	.uleb128 0x6
	.string	"idx"
	.byte	0x1
	.uahalf	0x218
	.uaword	0x25c
	.uaword	.LLST29
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x338
	.uaword	.LLST30
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x25c
	.uaword	.LLST31
	.uleb128 0x6
	.string	"qDig"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x2b7
	.uaword	.LLST32
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x21c
	.uaword	0x786
	.uaword	.LLST33
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x283
	.uaword	.LLST34
	.uleb128 0x1a
	.string	"digits"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x78c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.uaword	.LVL44
	.uaword	0xd26
	.uaword	0x768
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LVL45
	.uaword	0xcad
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x784
	.uleb128 0x1c
	.uaword	0x271
	.uaword	0x79c
	.uleb128 0x1d
	.uaword	0x2ab
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actBNReduceUpdateCurrentProduct"
	.byte	0x1
	.uahalf	0x239
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8cc
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x338
	.uaword	.LLST35
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x338
	.uaword	.LLST36
	.uleb128 0x6
	.string	"idx"
	.byte	0x1
	.uahalf	0x23c
	.uaword	0x25c
	.uaword	.LLST37
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x23c
	.uaword	0x25c
	.uaword	.LLST38
	.uleb128 0x6
	.string	"qDig"
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x2b7
	.uaword	.LLST39
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x2b7
	.uaword	.LLST40
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x786
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.uaword	.LVL51
	.uaword	0x2bd
	.uaword	0x85c
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LVL52
	.uaword	0xd26
	.uaword	0x871
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LVL53
	.uaword	0xcad
	.uaword	0x899
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 1
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xd
	.uaword	.LVL54
	.uaword	0x2bd
	.uaword	0x8ba
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LVL55
	.uaword	0xd26
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"actBNReNormalize"
	.byte	0x1
	.uahalf	0x168
	.byte	0x1
	.byte	0x1
	.uaword	0x920
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x2b7
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x2b7
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x25c
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x25c
	.uleb128 0x13
	.string	"tmp"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x271
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"actBNReduce"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcad
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.uahalf	0x26e
	.uaword	0x2b7
	.uaword	.LLST41
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x25c
	.uaword	.LLST42
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.uahalf	0x270
	.uaword	0x2b7
	.uaword	.LLST43
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x271
	.uaword	0x25c
	.uaword	.LLST44
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.uahalf	0x272
	.uaword	0x2b7
	.uaword	.LLST45
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x272
	.uaword	0x786
	.uaword	.LLST46
	.uleb128 0x9
	.string	"retVal"
	.byte	0x1
	.uahalf	0x274
	.uaword	0x296
	.uaword	.LLST47
	.uleb128 0x1a
	.string	"a_len"
	.byte	0x1
	.uahalf	0x275
	.uaword	0x25c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1a
	.string	"b_len"
	.byte	0x1
	.uahalf	0x276
	.uaword	0x25c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1e
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0xc2d
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x25c
	.uaword	.LLST48
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x25c
	.uaword	.LLST49
	.uleb128 0x9
	.string	"t"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x25c
	.uaword	.LLST50
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x284
	.uaword	0x25c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.string	"qDig"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x271
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.uaword	0x8cc
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.uahalf	0x2a8
	.uaword	0xb04
	.uleb128 0x16
	.uaword	0x907
	.uaword	.LLST51
	.uleb128 0x16
	.uaword	0x8fb
	.uaword	.LLST52
	.uleb128 0x16
	.uaword	0x8f1
	.uaword	.LLST53
	.uleb128 0x16
	.uaword	0x8e7
	.uaword	.LLST54
	.uleb128 0x17
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x18
	.uaword	0x913
	.uaword	.LLST55
	.uleb128 0xd
	.uaword	.LVL81
	.uaword	0x2bd
	.uaword	0xa9a
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL82
	.uaword	0xcd9
	.uaword	0xaba
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 4
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL83
	.uaword	0x2bd
	.uaword	0xae2
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LVL85
	.uaword	0xcd9
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 -1
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL63
	.uaword	0x494
	.uaword	0xb32
	.uleb128 0xe
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL67
	.uaword	0xd26
	.uaword	0xb46
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL68
	.uaword	0x607
	.uaword	0xb6d
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL69
	.uaword	0x69d
	.uaword	0xb9a
	.uleb128 0xe
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL70
	.uaword	0x79c
	.uaword	0xbce
	.uleb128 0xe
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL71
	.uaword	0xcfd
	.uaword	0xbee
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL74
	.uaword	0xd26
	.uaword	0xc02
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL75
	.uaword	0xcd9
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL76
	.uaword	0xd26
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL59
	.uaword	0xd26
	.uaword	0xc41
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL60
	.uaword	0xd51
	.uaword	0xc5a
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL61
	.uaword	0x348
	.uaword	0xc88
	.uleb128 0xe
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0xe
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xe
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL88
	.uaword	0xd26
	.uaword	0xc9c
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL90
	.uaword	0xd26
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"actBNCompare"
	.byte	0x5
	.uahalf	0x115
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0xcd9
	.uleb128 0x21
	.uaword	0x338
	.uleb128 0x21
	.uaword	0x338
	.uleb128 0x21
	.uaword	0x343
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actBNCopy"
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.byte	0x1
	.uaword	0xcfd
	.uleb128 0x21
	.uaword	0x2b7
	.uleb128 0x21
	.uaword	0x338
	.uleb128 0x21
	.uaword	0x343
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"actBNSub"
	.byte	0x5
	.uahalf	0x183
	.byte	0x1
	.byte	0x1
	.uaword	0xd26
	.uleb128 0x21
	.uaword	0x338
	.uleb128 0x21
	.uaword	0x338
	.uleb128 0x21
	.uaword	0x2b7
	.uleb128 0x21
	.uaword	0x343
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xd51
	.uleb128 0x21
	.uaword	0x786
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"actBNSet"
	.byte	0x5
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x2b7
	.uleb128 0x21
	.uaword	0x343
	.uleb128 0x21
	.uaword	0x33e
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
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
	.byte	0x65
	.uaword	.LVL1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL7-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL7-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL14
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL24-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL24-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL24-1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL24-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL29
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL29
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL35-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x22
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2e
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x22
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x22
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL40
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL40
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL40
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x13
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x168
	.byte	0xf7
	.uleb128 0x14e
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL49
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL46
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL51-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL46
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL51-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59-1
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL59-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL59-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL91
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL59-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL57
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63-1
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL65
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL66
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL65
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL78
	.uaword	.LVL81-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL77
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL77
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL77
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85-1
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB15
	.uaword	.LFE15
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"watchdog"
.LASF0:
	.string	"a_length"
.LASF1:
	.string	"b_length"
.LASF2:
	.string	"shift"
	.extern	actBNSet,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.extern	actBNSub,STT_FUNC,0
	.extern	actBNCopy,STT_FUNC,0
	.extern	actBNCompare,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
