	.file	"fbl_lbt_access.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblLbtInitPowerOn,"ax",@progbits
	.align 1
	.global	FblLbtInitPowerOn
	.type	FblLbtInitPowerOn, @function
FblLbtInitPowerOn:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_lbt_access.c"
	.loc 1 333 0
	.loc 1 339 0
	movh	%d15, hi:FblLogicalBlockTable
	addi	%d15, %d15, lo:FblLogicalBlockTable
	movh.a	%a15, hi:fblLbtActive
	st.w	[%a15] lo:fblLbtActive, %d15
	ret
.LFE15:
	.size	FblLbtInitPowerOn, .-FblLbtInitPowerOn
.section .text.FblLbtBlockFilterInit,"ax",@progbits
	.align 1
	.global	FblLbtBlockFilterInit
	.type	FblLbtBlockFilterInit, @function
FblLbtBlockFilterInit:
.LFB16:
	.loc 1 350 0
.LVL0:
	.loc 1 351 0
	mov	%d15, 0
	st.b	[%a4] 1, %d15
	.loc 1 353 0
	st.b	[%a4] 8, %d15
	ret
.LFE16:
	.size	FblLbtBlockFilterInit, .-FblLbtBlockFilterInit
.section .text.FblLbtBlockFilterSetMandatoryType,"ax",@progbits
	.align 1
	.global	FblLbtBlockFilterSetMandatoryType
	.type	FblLbtBlockFilterSetMandatoryType, @function
FblLbtBlockFilterSetMandatoryType:
.LFB17:
	.loc 1 366 0
.LVL1:
	.loc 1 367 0
	st.b	[%a4]0, %d4
	.loc 1 368 0
	mov	%d15, 1
	st.b	[%a4] 1, %d15
	ret
.LFE17:
	.size	FblLbtBlockFilterSetMandatoryType, .-FblLbtBlockFilterSetMandatoryType
.section .text.FblLbtBlockFilterSetBlockType,"ax",@progbits
	.align 1
	.global	FblLbtBlockFilterSetBlockType
	.type	FblLbtBlockFilterSetBlockType, @function
FblLbtBlockFilterSetBlockType:
.LFB18:
	.loc 1 381 0
.LVL2:
	.loc 1 382 0
	st.w	[%a4] 4, %d4
	.loc 1 383 0
	mov	%d15, 1
	st.b	[%a4] 8, %d15
	ret
.LFE18:
	.size	FblLbtBlockFilterSetBlockType, .-FblLbtBlockFilterSetBlockType
.section .text.FblLbtBlockNext,"ax",@progbits
	.align 1
	.global	FblLbtBlockNext
	.type	FblLbtBlockNext, @function
FblLbtBlockNext:
.LFB20:
	.loc 1 410 0
.LVL3:
	mov.aa	%a2, %a4
.LVL4:
	.loc 1 415 0
	movh.a	%a15, hi:FblLogicalBlockTable
	lea	%a15, [%a15] lo:FblLogicalBlockTable
	lea	%a3, [%a15] 8
		# #chunks=4, chunksize=8, remains=0
	lea	%a5, 4-1
	0:
	ld.d	%e2, [%a3+]8
	st.d	[%a4+]8, %e2
	loop	%a5, 0b
.LVL5:
	ld.bu	%d4, [%a15] 9
.LVL6:
	ld.w	%d5, [%a15] 16
.LVL7:
	.loc 1 412 0
	mov	%d2, 0
	.loc 1 417 0
	movh.a	%a6, hi:fblLbtActive
	lea	%a6, [%a6] lo:fblLbtActive
	movh.a	%a3, hi:fblLbtBlockIteratorNr
	lea	%a3, [%a3] lo:fblLbtBlockIteratorNr
.LBB4:
.LBB5:
	.loc 1 130 0
	movh.a	%a15, hi:fblLbtBlockIteratorFilter
.LVL8:
	lea	%a15, [%a15] lo:fblLbtBlockIteratorFilter
.LBE5:
.LBE4:
	.loc 1 417 0
	j	.L6
.LVL9:
.L12:
	.loc 1 420 0
	sh	%d15, 5
	mov.d	%d2, %a5
	add	%d2, %d15
	mov.a	%a7, %d2
	lea	%a4, [%a7] 8
	mov.aa	%a12, %a2
		# #chunks=4, chunksize=8, remains=0
	lea	%a7, 4-1
	0:
	ld.d	%e2, [%a4+]8
	st.d	[%a12+]8, %e2
	loop	%a7, 0b
	addi	%d15, %d15, 8
	addsc.a	%a5, %a5, %d15, 0
	ld.bu	%d4, [%a5] 1
.LVL10:
	ld.w	%d5, [%a5] 8
.LVL11:
	.loc 1 423 0
	ld.bu	%d15, [%a3]0
	add	%d15, 1
	st.b	[%a3]0, %d15
.LVL12:
.LBB8:
.LBB6:
	.loc 1 130 0
	ld.bu	%d15, [%a15] 1
	jne	%d15, 1, .L7
	.loc 1 133 0
	jne	%d4, 1, .L8
	.loc 1 136 0
	ld.bu	%d2, [%a15]0
	.loc 1 127 0
	eq	%d2, %d2, 1
	j	.L9
.L8:
	.loc 1 141 0
	ld.bu	%d2, [%a15]0
	.loc 1 127 0
	eq	%d2, %d2, 0
.L9:
.LVL13:
	.loc 1 147 0
	ld.bu	%d3, [%a15] 8
	.loc 1 150 0
	eq	%d15, %d3, 1
	and.eq	%d15, %d2, 1
	jz	%d15, .L10
.LVL14:
.L13:
	.loc 1 152 0
	ld.w	%d2, [%a15] 4
	eq	%d2, %d2, %d5
.L10:
.LVL15:
.LBE6:
.LBE8:
	.loc 1 427 0
	jeq	%d2, 1, .L11
.LVL16:
.L6:
	.loc 1 417 0
	ld.a	%a5, [%a6]0
	ld.bu	%d3, [%a5] 5
	ld.bu	%d15, [%a3]0
	jlt.u	%d15, %d3, .L12
.LVL17:
	.loc 1 434 0
	nand.t	%d6, %d2,0, %d2,0
	and.ge.u	%d6, %d15, %d3
	jz	%d6, .L11
	.loc 1 437 0
	mov	%d15, 1
	movh.a	%a15, hi:fblLbtBlockIteratorDone
	st.b	[%a15] lo:fblLbtBlockIteratorDone, %d15
.LVL18:
.L11:
	.loc 1 440 0
	st.b	[%a2] 1, %d4
	st.w	[%a2] 8, %d5
	ret
.LVL19:
.L7:
.LBB9:
.LBB7:
	.loc 1 150 0
	ld.bu	%d15, [%a15] 8
	jne	%d15, 1, .L11
	j	.L13
.LBE7:
.LBE9:
.LFE20:
	.size	FblLbtBlockNext, .-FblLbtBlockNext
.section .text.FblLbtBlockFirst,"ax",@progbits
	.align 1
	.global	FblLbtBlockFirst
	.type	FblLbtBlockFirst, @function
FblLbtBlockFirst:
.LFB19:
	.loc 1 395 0
.LVL20:
	mov.aa	%a12, %a4
	.loc 1 396 0
	mov	%d15, 0
	movh.a	%a15, hi:fblLbtBlockIteratorNr
	st.b	[%a15] lo:fblLbtBlockIteratorNr, %d15
	.loc 1 397 0
	movh	%d2, hi:fblLbtBlockIteratorFilter
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:fblLbtBlockIteratorFilter
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e2, [%a5+]8
	st.d	[%a15+]8, %e2
	ld.w	%d2, [%a5+]4
	st.w	[%a15+]4, %d2
.LVL21:
	.loc 1 398 0
	movh.a	%a15, hi:fblLbtBlockIteratorDone
	st.b	[%a15] lo:fblLbtBlockIteratorDone, %d15
	.loc 1 400 0
	call	FblLbtBlockNext
.LVL22:
	.loc 1 401 0
	mov.aa	%a2, %a12
	ret
.LFE19:
	.size	FblLbtBlockFirst, .-FblLbtBlockFirst
.section .text.FblLbtBlockDone,"ax",@progbits
	.align 1
	.global	FblLbtBlockDone
	.type	FblLbtBlockDone, @function
FblLbtBlockDone:
.LFB21:
	.loc 1 452 0
	.loc 1 454 0
	movh.a	%a15, hi:fblLbtBlockIteratorDone
	ld.bu	%d2, [%a15] lo:fblLbtBlockIteratorDone
	ret
.LFE21:
	.size	FblLbtBlockDone, .-FblLbtBlockDone
.section .text.FblLbtGetBlockCount,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockCount
	.type	FblLbtGetBlockCount, @function
FblLbtGetBlockCount:
.LFB22:
	.loc 1 463 0
	.loc 1 464 0
	movh.a	%a15, hi:fblLbtActive
	ld.a	%a15, [%a15] lo:fblLbtActive
	.loc 1 465 0
	ld.bu	%d2, [%a15] 5
	ret
.LFE22:
	.size	FblLbtGetBlockCount, .-FblLbtGetBlockCount
.section .text.FblLbtGetMagicFlag,"ax",@progbits
	.align 1
	.global	FblLbtGetMagicFlag
	.type	FblLbtGetMagicFlag, @function
FblLbtGetMagicFlag:
.LFB23:
	.loc 1 474 0
	.loc 1 475 0
	movh.a	%a15, hi:fblLbtActive
	ld.a	%a15, [%a15] lo:fblLbtActive
	.loc 1 476 0
	ld.w	%d2, [%a15]0
	ret
.LFE23:
	.size	FblLbtGetMagicFlag, .-FblLbtGetMagicFlag
.section .text.FblLbtGetBlockDescriptorByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockDescriptorByNr
	.type	FblLbtGetBlockDescriptorByNr, @function
FblLbtGetBlockDescriptorByNr:
.LFB25:
	.loc 1 529 0
.LVL23:
	.loc 1 532 0
	movh.a	%a15, hi:fblLbtActive
	ld.a	%a15, [%a15] lo:fblLbtActive
	ld.bu	%d15, [%a15] 5
	.loc 1 530 0
	mov	%d2, 1
	.loc 1 532 0
	jge.u	%d4, %d15, .L20
	.loc 1 534 0
	mov.d	%d15, %a15
	madd	%d4, %d15, %d4, 32
.LVL24:
	mov.a	%a2, %d4
	lea	%a15, [%a2] 8
		# #chunks=4, chunksize=8, remains=0
	lea	%a2, 4-1
	0:
	ld.d	%e4, [%a15+]8
	st.d	[%a4+]8, %e4
	loop	%a2, 0b
.LVL25:
	.loc 1 535 0
	mov	%d2, 0
.LVL26:
.L20:
	.loc 1 539 0
	ret
.LFE25:
	.size	FblLbtGetBlockDescriptorByNr, .-FblLbtGetBlockDescriptorByNr
.section .text.FblLbtGetBlockDescriptorByType,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockDescriptorByType
	.type	FblLbtGetBlockDescriptorByType, @function
FblLbtGetBlockDescriptorByType:
.LFB27:
	.loc 1 581 0
.LVL27:
	sub.a	%SP, 48
.LCFI0:
	mov	%d8, %d4
	mov.aa	%a12, %a4
.LVL28:
	.loc 1 584 0
	mov	%d15, 0
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d15
	st.w	[%SP] 12, %d15
.LVL29:
	.loc 1 589 0
	lea	%a4, [%SP] 16
.LVL30:
	lea	%a5, [%SP] 4
.LVL31:
	call	FblLbtBlockFirst
.LVL32:
	ld.w	%d15, [%SP] 24
.LVL33:
.LBB14:
.LBB15:
	.loc 1 453 0
	movh.a	%a15, hi:fblLbtBlockIteratorDone
.LBE15:
.LBE14:
	.loc 1 590 0
	ld.bu	%d3, [%a15] lo:fblLbtBlockIteratorDone
	.loc 1 582 0
	mov	%d2, 1
	.loc 1 590 0
	jnz	%d3, .L23
.LBB17:
.LBB16:
	.loc 1 453 0
	lea	%a15, [%a15] lo:fblLbtBlockIteratorDone
.LBE16:
.LBE17:
	.loc 1 592 0
	jne	%d8, %d15, .L25
	j	.L24
.L26:
	jne	%d8, %d15, .L25
.L24:
	.loc 1 594 0
	st.w	[%SP] 24, %d15
	lea	%a15, [%SP] 16
		# #chunks=4, chunksize=8, remains=0
	lea	%a2, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a12+]8, %e2
	loop	%a2, 0b
.LVL34:
	.loc 1 595 0
	mov	%d2, 0
	.loc 1 596 0
	ret
.LVL35:
.L25:
	.loc 1 599 0
	lea	%a4, [%SP] 16
	call	FblLbtBlockNext
.LVL36:
	ld.w	%d15, [%SP] 24
	.loc 1 590 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L26
	.loc 1 582 0
	mov	%d2, 1
.LVL37:
.L23:
	.loc 1 603 0
	ret
.LFE27:
	.size	FblLbtGetBlockDescriptorByType, .-FblLbtGetBlockDescriptorByType
.section .text.FblLbtGetBlockTypeByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockTypeByNr
	.type	FblLbtGetBlockTypeByNr, @function
FblLbtGetBlockTypeByNr:
.LFB28:
	.loc 1 619 0
.LVL38:
	sub.a	%SP, 32
.LCFI1:
	mov.aa	%a12, %a4
.LVL39:
	.loc 1 621 0
	mov.aa	%a4, %SP
.LVL40:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 626 0
	call	FblLbtGetBlockDescriptorByNr
.LVL41:
	.loc 1 620 0
	mov	%d15, 1
	.loc 1 626 0
	jnz	%d2, .L30
	.loc 1 628 0
	ld.w	%d2, [%SP] 8
	st.w	[%a12]0, %d2
.LVL42:
	.loc 1 629 0
	mov	%d15, 0
.LVL43:
.L30:
	.loc 1 633 0
	mov	%d2, %d15
	ret
.LFE28:
	.size	FblLbtGetBlockTypeByNr, .-FblLbtGetBlockTypeByNr
.section .text.FblLbtGetBlockIndexByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockIndexByNr
	.type	FblLbtGetBlockIndexByNr, @function
FblLbtGetBlockIndexByNr:
.LFB29:
	.loc 1 648 0
.LVL44:
	sub.a	%SP, 32
.LCFI2:
	mov.aa	%a12, %a4
.LVL45:
	.loc 1 650 0
	mov.aa	%a4, %SP
.LVL46:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 655 0
	call	FblLbtGetBlockDescriptorByNr
.LVL47:
	.loc 1 649 0
	mov	%d15, 1
	.loc 1 655 0
	jnz	%d2, .L33
	.loc 1 657 0
	ld.w	%d2, [%SP] 4
	st.w	[%a12]0, %d2
.LVL48:
	.loc 1 658 0
	mov	%d15, 0
.LVL49:
.L33:
	.loc 1 662 0
	mov	%d2, %d15
	ret
.LFE29:
	.size	FblLbtGetBlockIndexByNr, .-FblLbtGetBlockIndexByNr
.section .text.FblLbtGetBlockHeaderAddressByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockHeaderAddressByNr
	.type	FblLbtGetBlockHeaderAddressByNr, @function
FblLbtGetBlockHeaderAddressByNr:
.LFB30:
	.loc 1 678 0
.LVL50:
	sub.a	%SP, 32
.LCFI3:
	mov.aa	%a12, %a4
.LVL51:
	.loc 1 680 0
	mov.aa	%a4, %SP
.LVL52:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 685 0
	call	FblLbtGetBlockDescriptorByNr
.LVL53:
	.loc 1 679 0
	mov	%d15, 1
	.loc 1 685 0
	jnz	%d2, .L36
	.loc 1 687 0
	ld.w	%d2, [%SP] 20
	st.w	[%a12]0, %d2
.LVL54:
	.loc 1 688 0
	mov	%d15, 0
.LVL55:
.L36:
	.loc 1 692 0
	mov	%d2, %d15
	ret
.LFE30:
	.size	FblLbtGetBlockHeaderAddressByNr, .-FblLbtGetBlockHeaderAddressByNr
.section .text.FblLbtGetBlockBmHeaderAddressByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockBmHeaderAddressByNr
	.type	FblLbtGetBlockBmHeaderAddressByNr, @function
FblLbtGetBlockBmHeaderAddressByNr:
.LFB31:
	.loc 1 708 0
.LVL56:
	sub.a	%SP, 32
.LCFI4:
	mov.aa	%a12, %a4
.LVL57:
	.loc 1 710 0
	mov.aa	%a4, %SP
.LVL58:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 715 0
	call	FblLbtGetBlockDescriptorByNr
.LVL59:
	.loc 1 709 0
	mov	%d15, 1
	.loc 1 715 0
	jnz	%d2, .L39
	.loc 1 717 0
	ld.w	%d2, [%SP] 24
	st.w	[%a12]0, %d2
.LVL60:
	.loc 1 718 0
	mov	%d15, 0
.LVL61:
.L39:
	.loc 1 722 0
	mov	%d2, %d15
	ret
.LFE31:
	.size	FblLbtGetBlockBmHeaderAddressByNr, .-FblLbtGetBlockBmHeaderAddressByNr
.section .text.FblLbtGetBlockVerifyOutputFuncByNr,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockVerifyOutputFuncByNr
	.type	FblLbtGetBlockVerifyOutputFuncByNr, @function
FblLbtGetBlockVerifyOutputFuncByNr:
.LFB32:
	.loc 1 858 0
.LVL62:
	sub.a	%SP, 32
.LCFI5:
	mov.aa	%a12, %a4
.LVL63:
	.loc 1 860 0
	mov.aa	%a4, %SP
.LVL64:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 865 0
	call	FblLbtGetBlockDescriptorByNr
.LVL65:
	.loc 1 859 0
	mov	%d15, 1
	.loc 1 865 0
	jnz	%d2, .L42
	.loc 1 867 0
	ld.w	%d2, [%SP] 28
	st.w	[%a12]0, %d2
.LVL66:
	.loc 1 868 0
	mov	%d15, 0
.LVL67:
.L42:
	.loc 1 872 0
	mov	%d2, %d15
	ret
.LFE32:
	.size	FblLbtGetBlockVerifyOutputFuncByNr, .-FblLbtGetBlockVerifyOutputFuncByNr
.section .text.FblLbtGetBlockDescriptorByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockDescriptorByIndex
	.type	FblLbtGetBlockDescriptorByIndex, @function
FblLbtGetBlockDescriptorByIndex:
.LFB33:
	.loc 1 888 0
.LVL68:
	sub.a	%SP, 48
.LCFI6:
	mov	%d8, %d4
	mov.aa	%a12, %a4
.LVL69:
	.loc 1 891 0
	mov	%d15, 0
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d15
	st.w	[%SP] 12, %d15
.LVL70:
	.loc 1 896 0
	lea	%a4, [%SP] 16
.LVL71:
	lea	%a5, [%SP] 4
.LVL72:
	call	FblLbtBlockFirst
.LVL73:
	ld.w	%d15, [%SP] 20
.LVL74:
.LBB22:
.LBB23:
	.loc 1 453 0
	movh.a	%a15, hi:fblLbtBlockIteratorDone
.LBE23:
.LBE22:
	.loc 1 897 0
	ld.bu	%d3, [%a15] lo:fblLbtBlockIteratorDone
	.loc 1 889 0
	mov	%d2, 1
	.loc 1 897 0
	jnz	%d3, .L45
.LBB25:
.LBB24:
	.loc 1 453 0
	lea	%a15, [%a15] lo:fblLbtBlockIteratorDone
.LBE24:
.LBE25:
	.loc 1 899 0
	jne	%d8, %d15, .L47
	j	.L46
.L48:
	jne	%d8, %d15, .L47
.L46:
	.loc 1 901 0
	st.w	[%SP] 20, %d15
	lea	%a15, [%SP] 16
		# #chunks=4, chunksize=8, remains=0
	lea	%a2, 4-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a12+]8, %e2
	loop	%a2, 0b
.LVL75:
	.loc 1 902 0
	mov	%d2, 0
	.loc 1 903 0
	ret
.LVL76:
.L47:
	.loc 1 906 0
	lea	%a4, [%SP] 16
	call	FblLbtBlockNext
.LVL77:
	ld.w	%d15, [%SP] 20
	.loc 1 897 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L48
	.loc 1 889 0
	mov	%d2, 1
.LVL78:
.L45:
	.loc 1 910 0
	ret
.LFE33:
	.size	FblLbtGetBlockDescriptorByIndex, .-FblLbtGetBlockDescriptorByIndex
.section .text.FblLbtGetBlockNrByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockNrByIndex
	.type	FblLbtGetBlockNrByIndex, @function
FblLbtGetBlockNrByIndex:
.LFB34:
	.loc 1 924 0
.LVL79:
	sub.a	%SP, 32
.LCFI7:
	mov.aa	%a12, %a4
.LVL80:
	.loc 1 926 0
	mov.aa	%a4, %SP
.LVL81:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 931 0
	call	FblLbtGetBlockDescriptorByIndex
.LVL82:
	.loc 1 925 0
	mov	%d15, 1
	.loc 1 931 0
	jnz	%d2, .L52
	.loc 1 933 0
	ld.bu	%d15, [%SP]0
	st.b	[%a12]0, %d15
.LVL83:
	.loc 1 934 0
	mov	%d15, 0
.LVL84:
.L52:
	.loc 1 938 0
	mov	%d2, %d15
	ret
.LFE34:
	.size	FblLbtGetBlockNrByIndex, .-FblLbtGetBlockNrByIndex
.section .text.FblLbtGetBlockTypeByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockTypeByIndex
	.type	FblLbtGetBlockTypeByIndex, @function
FblLbtGetBlockTypeByIndex:
.LFB35:
	.loc 1 953 0
.LVL85:
	sub.a	%SP, 32
.LCFI8:
	mov.aa	%a12, %a4
.LVL86:
	.loc 1 955 0
	mov.aa	%a4, %SP
.LVL87:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 960 0
	call	FblLbtGetBlockDescriptorByIndex
.LVL88:
	.loc 1 954 0
	mov	%d15, 1
	.loc 1 960 0
	jnz	%d2, .L55
	.loc 1 962 0
	ld.w	%d2, [%SP] 8
	st.w	[%a12]0, %d2
.LVL89:
	.loc 1 963 0
	mov	%d15, 0
.LVL90:
.L55:
	.loc 1 967 0
	mov	%d2, %d15
	ret
.LFE35:
	.size	FblLbtGetBlockTypeByIndex, .-FblLbtGetBlockTypeByIndex
.section .text.FblLbtGetBlockHeaderAddressByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockHeaderAddressByIndex
	.type	FblLbtGetBlockHeaderAddressByIndex, @function
FblLbtGetBlockHeaderAddressByIndex:
.LFB36:
	.loc 1 983 0
.LVL91:
	sub.a	%SP, 32
.LCFI9:
	mov.aa	%a12, %a4
.LVL92:
	.loc 1 985 0
	mov.aa	%a4, %SP
.LVL93:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 990 0
	call	FblLbtGetBlockDescriptorByIndex
.LVL94:
	.loc 1 984 0
	mov	%d15, 1
	.loc 1 990 0
	jnz	%d2, .L58
	.loc 1 992 0
	ld.w	%d2, [%SP] 20
	st.w	[%a12]0, %d2
.LVL95:
	.loc 1 993 0
	mov	%d15, 0
.LVL96:
.L58:
	.loc 1 997 0
	mov	%d2, %d15
	ret
.LFE36:
	.size	FblLbtGetBlockHeaderAddressByIndex, .-FblLbtGetBlockHeaderAddressByIndex
.section .text.FblLbtGetBlockBmHeaderAddressByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockBmHeaderAddressByIndex
	.type	FblLbtGetBlockBmHeaderAddressByIndex, @function
FblLbtGetBlockBmHeaderAddressByIndex:
.LFB37:
	.loc 1 1013 0
.LVL97:
	sub.a	%SP, 32
.LCFI10:
	mov.aa	%a12, %a4
.LVL98:
	.loc 1 1015 0
	mov.aa	%a4, %SP
.LVL99:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 1020 0
	call	FblLbtGetBlockDescriptorByIndex
.LVL100:
	.loc 1 1014 0
	mov	%d15, 1
	.loc 1 1020 0
	jnz	%d2, .L61
	.loc 1 1022 0
	ld.w	%d2, [%SP] 24
	st.w	[%a12]0, %d2
.LVL101:
	.loc 1 1023 0
	mov	%d15, 0
.LVL102:
.L61:
	.loc 1 1027 0
	mov	%d2, %d15
	ret
.LFE37:
	.size	FblLbtGetBlockBmHeaderAddressByIndex, .-FblLbtGetBlockBmHeaderAddressByIndex
.section .text.FblLbtGetBlockVerifyOutputFuncByIndex,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockVerifyOutputFuncByIndex
	.type	FblLbtGetBlockVerifyOutputFuncByIndex, @function
FblLbtGetBlockVerifyOutputFuncByIndex:
.LFB38:
	.loc 1 1163 0
.LVL103:
	sub.a	%SP, 32
.LCFI11:
	mov.aa	%a12, %a4
.LVL104:
	.loc 1 1165 0
	mov.aa	%a4, %SP
.LVL105:
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a15, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	.loc 1 1170 0
	call	FblLbtGetBlockDescriptorByIndex
.LVL106:
	.loc 1 1164 0
	mov	%d15, 1
	.loc 1 1170 0
	jnz	%d2, .L64
	.loc 1 1172 0
	ld.w	%d2, [%SP] 28
	st.w	[%a12]0, %d2
.LVL107:
	.loc 1 1173 0
	mov	%d15, 0
.LVL108:
.L64:
	.loc 1 1177 0
	mov	%d2, %d15
	ret
.LFE38:
	.size	FblLbtGetBlockVerifyOutputFuncByIndex, .-FblLbtGetBlockVerifyOutputFuncByIndex
.section .text.FblLbtCheckAddressRange,"ax",@progbits
	.align 1
	.global	FblLbtCheckAddressRange
	.type	FblLbtCheckAddressRange, @function
FblLbtCheckAddressRange:
.LFB39:
	.loc 1 1193 0
.LVL109:
	.loc 1 1194 0
	mov	%d2, 1
	.loc 1 1196 0
	jlt.u	%d4, %d5, .L67
	.loc 1 1197 0
	sub	%d5, %d4, %d5
.LVL110:
	.loc 1 1194 0
	ge.u	%d2, %d5, %d6
.L67:
.LVL111:
	.loc 1 1203 0
	ret
.LFE39:
	.size	FblLbtCheckAddressRange, .-FblLbtCheckAddressRange
.section .text.FblLbtCheckRangeContained,"ax",@progbits
	.align 1
	.global	FblLbtCheckRangeContained
	.type	FblLbtCheckRangeContained, @function
FblLbtCheckRangeContained:
.LFB40:
	.loc 1 1218 0
.LVL112:
	.loc 1 1219 0
	mov	%d2, 1
.LBB28:
.LBB29:
	.loc 1 1196 0
	jlt.u	%d4, %d6, .L70
	.loc 1 1197 0
	sub	%d6, %d4, %d6
.LVL113:
.LBE29:
.LBE28:
	.loc 1 1222 0
	ge.u	%d3, %d7, %d5
	ge.u	%d15, %d6, %d7
	jge.u	%d15, %d3, .L70
	.loc 1 1223 0
	sub	%d7, %d5
.LVL114:
	.loc 1 1225 0
	lt.u	%d2, %d7, %d6
.LVL115:
.L70:
	.loc 1 1229 0
	ret
.LFE40:
	.size	FblLbtCheckRangeContained, .-FblLbtCheckRangeContained
.section .text.FblLbtGetBlockNrByAddressLength,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockNrByAddressLength
	.type	FblLbtGetBlockNrByAddressLength, @function
FblLbtGetBlockNrByAddressLength:
.LFB24:
	.loc 1 491 0
.LVL116:
	sub.a	%SP, 48
.LCFI12:
	mov	%d9, %d4
	mov	%d10, %d5
	mov.aa	%a12, %a4
.LVL117:
	.loc 1 494 0
	mov	%d15, 0
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d15
	st.w	[%SP] 12, %d15
.LVL118:
	.loc 1 499 0
	lea	%a4, [%SP] 16
.LVL119:
	lea	%a5, [%SP] 4
.LVL120:
	call	FblLbtBlockFirst
.LVL121:
	ld.bu	%d8, [%SP] 16
.LVL122:
	ld.w	%d6, [%SP] 28
.LVL123:
	ld.w	%d7, [%SP] 32
.LVL124:
.LBB34:
.LBB35:
	.loc 1 453 0
	movh.a	%a15, hi:fblLbtBlockIteratorDone
.LBE35:
.LBE34:
	.loc 1 500 0
	ld.bu	%d2, [%a15] lo:fblLbtBlockIteratorDone
	.loc 1 492 0
	mov	%d15, 1
	.loc 1 500 0
	jnz	%d2, .L74
.LBB37:
.LBB36:
	.loc 1 453 0
	lea	%a15, [%a15] lo:fblLbtBlockIteratorDone
.LVL125:
.L78:
.LBE36:
.LBE37:
	.loc 1 502 0
	mov	%d4, %d9
	mov	%d5, %d10
	call	FblLbtCheckRangeContained
.LVL126:
	mov	%d15, %d2
.LVL127:
	.loc 1 505 0
	jnz	%d2, .L75
	.loc 1 507 0
	st.b	[%a12]0, %d8
	.loc 1 508 0
	j	.L74
.L75:
	.loc 1 511 0
	lea	%a4, [%SP] 16
	call	FblLbtBlockNext
.LVL128:
	ld.bu	%d8, [%SP] 16
.LVL129:
	ld.w	%d6, [%SP] 28
.LVL130:
	ld.w	%d7, [%SP] 32
.LVL131:
	.loc 1 500 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L78
.LVL132:
.L74:
	.loc 1 515 0
	mov	%d2, %d15
	ret
.LFE24:
	.size	FblLbtGetBlockNrByAddressLength, .-FblLbtGetBlockNrByAddressLength
.section .text.FblLbtGetBlockDescriptorByAddressLength,"ax",@progbits
	.align 1
	.global	FblLbtGetBlockDescriptorByAddressLength
	.type	FblLbtGetBlockDescriptorByAddressLength, @function
FblLbtGetBlockDescriptorByAddressLength:
.LFB26:
	.loc 1 554 0
.LVL133:
	sub.a	%SP, 8
.LCFI13:
	mov.aa	%a15, %a4
.LVL134:
	.loc 1 556 0
	lea	%a4, [%SP] 8
.LVL135:
	mov	%d15, 0
	st.b	[+%a4]-1, %d15
	.loc 1 558 0
	call	FblLbtGetBlockNrByAddressLength
.LVL136:
	.loc 1 560 0
	jnz	%d2, .L81
	.loc 1 562 0
	ld.bu	%d4, [%SP] 7
	mov.aa	%a4, %a15
	call	FblLbtGetBlockDescriptorByNr
.LVL137:
.L81:
	.loc 1 566 0
	ret
.LFE26:
	.size	FblLbtGetBlockDescriptorByAddressLength, .-FblLbtGetBlockDescriptorByAddressLength
.section .text.FblLbtActivateLbtBlockByAddress,"ax",@progbits
	.align 1
	.global	FblLbtActivateLbtBlockByAddress
	.type	FblLbtActivateLbtBlockByAddress, @function
FblLbtActivateLbtBlockByAddress:
.LFB41:
	.loc 1 1329 0
.LVL138:
	.loc 1 1337 0
	movh.a	%a15, hi:fblLbtActive
	st.w	[%a15] lo:fblLbtActive, %d4
	ret
.LFE41:
	.size	FblLbtActivateLbtBlockByAddress, .-FblLbtActivateLbtBlockByAddress
	.local	fblLbtActive
.section .bss,"aw",@nobits
	.align 2
	.type		 fblLbtActive,@object
	.size		 fblLbtActive,4
fblLbtActive:
	.space	4
	.local	fblLbtBlockIteratorDone
	.align 0
	.type		 fblLbtBlockIteratorDone,@object
	.size		 fblLbtBlockIteratorDone,1
fblLbtBlockIteratorDone:
	.space	1
	.local	fblLbtBlockIteratorFilter
	.align 2
	.type		 fblLbtBlockIteratorFilter,@object
	.size		 fblLbtBlockIteratorFilter,12
fblLbtBlockIteratorFilter:
	.space	12
	.local	fblLbtBlockIteratorNr
	.align 0
	.type		 fblLbtBlockIteratorNr,@object
	.size		 fblLbtBlockIteratorNr,1
fblLbtBlockIteratorNr:
	.space	1
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
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
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.byte	0x4
	.uaword	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.byte	0x4
	.uaword	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.byte	0x4
	.uaword	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.byte	0x4
	.uaword	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.byte	0x4
	.uaword	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.byte	0x4
	.uaword	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.byte	0x4
	.uaword	.LCFI6-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.byte	0x4
	.uaword	.LCFI7-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.byte	0x4
	.uaword	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.byte	0x4
	.uaword	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.byte	0x4
	.uaword	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI11-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI13-.LFB26
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE52:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/Fbl_Lbt.h"
	.file 6 "../../../BSW/Fbl/fbl_lbt_access.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x13ec
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_lbt_access.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x15b
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
	.uaword	0x15b
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1aa
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x232
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1fd
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x20c
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x20c
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x253
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x269
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x22c
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1fd
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x5
	.byte	0x5f
	.uaword	0x14c
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x5
	.byte	0x60
	.uaword	0x20c
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x5
	.byte	0x61
	.uaword	0x20c
	.uleb128 0x2
	.string	"tFblLbtMagicFlag"
	.byte	0x5
	.byte	0x62
	.uaword	0x20c
	.uleb128 0x2
	.string	"tFblLbtAssignFlags"
	.byte	0x5
	.byte	0x63
	.uaword	0x1fd
	.uleb128 0x2
	.string	"tFblLbtBlockCount"
	.byte	0x5
	.byte	0x64
	.uaword	0x1fd
	.uleb128 0x7
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x5
	.byte	0x68
	.uaword	0x41c
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.byte	0x69
	.uaword	0x2bc
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x6a
	.uaword	0x2d2
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.byte	0x6b
	.uaword	0x2ee
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x5
	.byte	0x6c
	.uaword	0x307
	.byte	0x8
	.uleb128 0x9
	.string	"blockStartAddress"
	.byte	0x5
	.byte	0x6d
	.uaword	0x282
	.byte	0xc
	.uleb128 0x9
	.string	"blockLength"
	.byte	0x5
	.byte	0x6e
	.uaword	0x296
	.byte	0x10
	.uleb128 0x9
	.string	"headerAddress"
	.byte	0x5
	.byte	0x6f
	.uaword	0x282
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x5
	.byte	0x70
	.uaword	0x282
	.byte	0x18
	.uleb128 0x9
	.string	"verifyOutput"
	.byte	0x5
	.byte	0x71
	.uaword	0x2a9
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x5
	.byte	0x72
	.uaword	0x36a
	.uleb128 0x7
	.string	"tLogicalBlockTableTag"
	.byte	0x88
	.byte	0x5
	.byte	0x75
	.uaword	0x4a1
	.uleb128 0x9
	.string	"magicFlag"
	.byte	0x5
	.byte	0x76
	.uaword	0x31f
	.byte	0
	.uleb128 0x9
	.string	"assignFlags"
	.byte	0x5
	.byte	0x77
	.uaword	0x4a1
	.byte	0x4
	.uleb128 0x9
	.string	"noOfBlocks"
	.byte	0x5
	.byte	0x78
	.uaword	0x351
	.byte	0x5
	.uleb128 0x9
	.string	"logicalBlock"
	.byte	0x5
	.byte	0x79
	.uaword	0x4b1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	0x337
	.uaword	0x4b1
	.uleb128 0xb
	.uaword	0x234
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x41c
	.uaword	0x4c1
	.uleb128 0xb
	.uaword	0x234
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.string	"tLogicalBlockTable"
	.byte	0x5
	.byte	0x7a
	.uaword	0x434
	.uleb128 0xc
	.byte	0x2
	.byte	0x6
	.byte	0x3a
	.uaword	0x502
	.uleb128 0x9
	.string	"value"
	.byte	0x6
	.byte	0x3c
	.uaword	0x2d2
	.byte	0
	.uleb128 0x9
	.string	"enabled"
	.byte	0x6
	.byte	0x3d
	.uaword	0x14c
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtMandatoryFilter"
	.byte	0x6
	.byte	0x3e
	.uaword	0x4db
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x42
	.uaword	0x547
	.uleb128 0x9
	.string	"value"
	.byte	0x6
	.byte	0x44
	.uaword	0x307
	.byte	0
	.uleb128 0x9
	.string	"enabled"
	.byte	0x6
	.byte	0x45
	.uaword	0x14c
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtTypeFilter"
	.byte	0x6
	.byte	0x46
	.uaword	0x520
	.uleb128 0xc
	.byte	0xc
	.byte	0x6
	.byte	0x4a
	.uaword	0x581
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x4c
	.uaword	0x502
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0x4e
	.uaword	0x547
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtBlockFilter"
	.byte	0x6
	.byte	0x50
	.uaword	0x560
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5b0
	.uleb128 0xd
	.uaword	0x4c1
	.uleb128 0xe
	.byte	0x1
	.string	"FblLbtInitPowerOn"
	.byte	0x1
	.uahalf	0x14c
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"FblLbtBlockFilterInit"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.byte	0x1
	.uaword	0x606
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x606
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x581
	.uleb128 0x11
	.uaword	0x5d8
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x628
	.uleb128 0x12
	.uaword	0x5f9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblLbtBlockFilterSetMandatoryType"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67c
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x606
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x2d2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblLbtBlockFilterSetBlockType"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6cc
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x606
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x307
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x15
	.string	"FblLbtBlockFilterHit"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0x14c
	.byte	0x1
	.uaword	0x710
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.byte	0x7b
	.uaword	0x710
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7c
	.uaword	0x71b
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.byte	0x7f
	.uaword	0x14c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x716
	.uleb128 0xd
	.uaword	0x581
	.uleb128 0x5
	.byte	0x4
	.uaword	0x721
	.uleb128 0xd
	.uaword	0x41c
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtBlockNext"
	.byte	0x1
	.uahalf	0x199
	.byte	0x1
	.uaword	0x41c
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x41c
	.uaword	.LLST0
	.uleb128 0x1a
	.string	"filterResult"
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x14c
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	0x6cc
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1aa
	.uleb128 0x1c
	.uaword	0x6f9
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	0x6ee
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1e
	.uaword	0x704
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtBlockFirst"
	.byte	0x1
	.uahalf	0x18a
	.byte	0x1
	.uaword	0x41c
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f6
	.uleb128 0x1f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x710
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	.LVL22
	.uaword	0x726
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"FblLbtBlockDone"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	0x14c
	.byte	0x1
	.uleb128 0x23
	.uaword	0x7f6
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"FblLbtGetBlockCount"
	.byte	0x1
	.uahalf	0x1ce
	.byte	0x1
	.uaword	0x351
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"FblLbtGetMagicFlag"
	.byte	0x1
	.uahalf	0x1d9
	.byte	0x1
	.uaword	0x31f
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByNr"
	.byte	0x1
	.uahalf	0x20f
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8d9
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x2bc
	.uaword	.LLST6
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x210
	.uaword	0x8d9
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x212
	.uaword	0x240
	.uaword	.LLST8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x41c
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByType"
	.byte	0x1
	.uahalf	0x243
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9a1
	.uleb128 0x1f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x243
	.uaword	0x307
	.uaword	.LLST9
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x244
	.uaword	0x8d9
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x246
	.uaword	0x240
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x247
	.uaword	0x41c
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x248
	.uaword	0x581
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.uaword	0x7f6
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x24e
	.uleb128 0x27
	.uaword	.LVL32
	.uaword	0x7ab
	.uaword	0x990
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.uaword	.LVL36
	.uaword	0x726
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockTypeByNr"
	.byte	0x1
	.uahalf	0x269
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa21
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x269
	.uaword	0x2bc
	.uaword	.LLST13
	.uleb128 0x1f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x26a
	.uaword	0xa21
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x26c
	.uaword	0x240
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL41
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x307
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockIndexByNr"
	.byte	0x1
	.uahalf	0x287
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaa8
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x287
	.uaword	0x2bc
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x287
	.uaword	0xaa8
	.uaword	.LLST17
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x289
	.uaword	0x240
	.uaword	.LLST18
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL47
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ee
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockHeaderAddressByNr"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb37
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0x2bc
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0xb37
	.uaword	.LLST20
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x240
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2a8
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL53
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x282
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockBmHeaderAddressByNr"
	.byte	0x1
	.uahalf	0x2c2
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbc8
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0x2bc
	.uaword	.LLST22
	.uleb128 0x1f
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0xb37
	.uaword	.LLST23
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0x240
	.uaword	.LLST24
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL59
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockVerifyOutputFuncByNr"
	.byte	0x1
	.uahalf	0x358
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc54
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x358
	.uaword	0x2bc
	.uaword	.LLST25
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x359
	.uaword	0xc54
	.uaword	.LLST26
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x35b
	.uaword	0x240
	.uaword	.LLST27
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x35c
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL65
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a9
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByIndex"
	.byte	0x1
	.uahalf	0x376
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd1d
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x376
	.uaword	0x2ee
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x377
	.uaword	0x8d9
	.uaword	.LLST29
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x379
	.uaword	0x240
	.uaword	.LLST30
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x37a
	.uaword	0x41c
	.uaword	.LLST31
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x37b
	.uaword	0x581
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.uaword	0x7f6
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x381
	.uleb128 0x27
	.uaword	.LVL73
	.uaword	0x7ab
	.uaword	0xd0c
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.uaword	.LVL77
	.uaword	0x726
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockNrByIndex"
	.byte	0x1
	.uahalf	0x39a
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xda5
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x2ee
	.uaword	.LLST32
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x39b
	.uaword	0xda5
	.uaword	.LLST33
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x39d
	.uaword	0x240
	.uaword	.LLST34
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x39e
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL82
	.uaword	0xc5a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2bc
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockTypeByIndex"
	.byte	0x1
	.uahalf	0x3b7
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe35
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x3b7
	.uaword	0x2ee
	.uaword	.LLST35
	.uleb128 0x1f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3b8
	.uaword	0xa21
	.uaword	.LLST36
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3ba
	.uaword	0x240
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3bb
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL88
	.uaword	0xc5a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockHeaderAddressByIndex"
	.byte	0x1
	.uahalf	0x3d5
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xec8
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x3d5
	.uaword	0x2ee
	.uaword	.LLST38
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3d6
	.uaword	0xb37
	.uaword	.LLST39
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3d8
	.uaword	0x240
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3d9
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL94
	.uaword	0xc5a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockBmHeaderAddressByIndex"
	.byte	0x1
	.uahalf	0x3f3
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf5d
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x3f3
	.uaword	0x2ee
	.uaword	.LLST41
	.uleb128 0x1f
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3f4
	.uaword	0xb37
	.uaword	.LLST42
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3f6
	.uaword	0x240
	.uaword	.LLST43
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3f7
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL100
	.uaword	0xc5a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockVerifyOutputFuncByIndex"
	.byte	0x1
	.uahalf	0x489
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xff3
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x489
	.uaword	0x2ee
	.uaword	.LLST44
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x48a
	.uaword	0xc54
	.uaword	.LLST45
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x48c
	.uaword	0x240
	.uaword	.LLST46
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x48d
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.uaword	.LVL106
	.uaword	0xc5a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"FblLbtCheckAddressRange"
	.byte	0x1
	.uahalf	0x4a8
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x104b
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x4a8
	.uaword	0x282
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4a8
	.uaword	0x282
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x4a8
	.uaword	0x296
	.uleb128 0x29
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4aa
	.uaword	0x240
	.byte	0
	.uleb128 0x11
	.uaword	0xff3
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1080
	.uleb128 0x12
	.uaword	0x101a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.uaword	0x1026
	.uaword	.LLST47
	.uleb128 0x12
	.uaword	0x1032
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.uaword	0x103e
	.uaword	.LLST48
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtCheckRangeContained"
	.byte	0x1
	.uahalf	0x4c1
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x113d
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x4c1
	.uaword	0x282
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x4c1
	.uaword	0x296
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4c1
	.uaword	0x282
	.uaword	.LLST49
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x4c1
	.uaword	0x296
	.uaword	.LLST50
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4c3
	.uaword	0x240
	.uaword	.LLST51
	.uleb128 0x2a
	.uaword	0xff3
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x4c5
	.uleb128 0x1c
	.uaword	0x1032
	.uaword	.LLST50
	.uleb128 0x1c
	.uaword	0x1026
	.uaword	.LLST49
	.uleb128 0x12
	.uaword	0x101a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x1e
	.uaword	0x103e
	.uaword	.LLST54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockNrByAddressLength"
	.byte	0x1
	.uahalf	0x1e9
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1238
	.uleb128 0x1f
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x282
	.uaword	.LLST55
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x296
	.uaword	.LLST56
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0xda5
	.uaword	.LLST57
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x240
	.uaword	.LLST58
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x41c
	.uaword	.LLST59
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x581
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.uaword	0x7f6
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x1f4
	.uleb128 0x27
	.uaword	.LVL121
	.uaword	0x7ab
	.uaword	0x11ff
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.uaword	.LVL126
	.uaword	0x1080
	.uaword	0x1227
	.uleb128 0x21
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL128
	.uaword	0x726
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByAddressLength"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1304
	.uleb128 0x1f
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x228
	.uaword	0x282
	.uaword	.LLST60
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x228
	.uaword	0x296
	.uaword	.LLST61
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x229
	.uaword	0x8d9
	.uaword	.LLST62
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x240
	.uaword	.LLST63
	.uleb128 0x2c
	.string	"localBlockNr"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x2bc
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x27
	.uaword	.LVL136
	.uaword	0x113d
	.uaword	0x12f3
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x20
	.uaword	.LVL137
	.uaword	0x872
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblLbtActivateLbtBlockByAddress"
	.byte	0x1
	.uahalf	0x530
	.byte	0x1
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1348
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x530
	.uaword	0x282
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2d
	.string	"fblLbtBlockIteratorNr"
	.byte	0x1
	.byte	0x51
	.uaword	0x2bc
	.byte	0x5
	.byte	0x3
	.uaword	fblLbtBlockIteratorNr
	.uleb128 0x2d
	.string	"fblLbtBlockIteratorFilter"
	.byte	0x1
	.byte	0x52
	.uaword	0x581
	.byte	0x5
	.byte	0x3
	.uaword	fblLbtBlockIteratorFilter
	.uleb128 0x2d
	.string	"fblLbtBlockIteratorDone"
	.byte	0x1
	.byte	0x53
	.uaword	0x14c
	.byte	0x5
	.byte	0x3
	.uaword	fblLbtBlockIteratorDone
	.uleb128 0x2d
	.string	"fblLbtActive"
	.byte	0x1
	.byte	0x58
	.uaword	0x5aa
	.byte	0x5
	.byte	0x3
	.uaword	fblLbtActive
	.uleb128 0x2e
	.string	"FblLogicalBlockTable"
	.byte	0x5
	.byte	0x7d
	.uaword	0x5b0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL5
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL19
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x3
	.uaword	fblLbtBlockIteratorFilter
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE20
	.uahalf	0x6
	.byte	0x3
	.uaword	fblLbtBlockIteratorFilter
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32-1
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL35
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	.LVL37
	.uaword	.LFE27
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL38
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL44
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-1
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL50
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL62
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL65-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL63
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL68
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73-1
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL68
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL76
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL69
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL69
	.uaword	.LVL74
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.uaword	.LVL78
	.uaword	.LFE33
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL79
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82-1
	.uaword	.LFE34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL85
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88-1
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL87
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL91
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL94-1
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL93
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL92
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL97
	.uaword	.LVL100-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL100-1
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL99
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL103
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106-1
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL105
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL104
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL110
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL113
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL112
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL114
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2c
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL116
	.uaword	.LVL121-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL121-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL116
	.uaword	.LVL121-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL121-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL116
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL119
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL117
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL128-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL132
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL117
	.uaword	.LVL122
	.uahalf	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x10
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0xf
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0xe
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL125
	.uaword	.LVL126-1
	.uahalf	0xa
	.byte	0x93
	.uleb128 0xc
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL126-1
	.uaword	.LVL129
	.uahalf	0xc
	.byte	0x93
	.uleb128 0xc
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0xe
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0xd
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL132
	.uaword	.LFE24
	.uahalf	0xc
	.byte	0x93
	.uleb128 0xc
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL133
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL136-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL133
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL136-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL135
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL137-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL137
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xec
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB37
	.uaword	.LBE37
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
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF13:
	.string	"rangeLength"
.LASF1:
	.string	"mandatoryType"
.LASF2:
	.string	"blockIndex"
.LASF6:
	.string	"blockDescriptor"
.LASF12:
	.string	"rangeStart"
.LASF3:
	.string	"blockType"
.LASF8:
	.string	"localBlockDescriptor"
.LASF10:
	.string	"blockVerifyFunc"
.LASF11:
	.string	"address"
.LASF14:
	.string	"length"
.LASF9:
	.string	"blockHeaderAddress"
.LASF7:
	.string	"result"
.LASF5:
	.string	"blockFilter"
.LASF4:
	.string	"bmHeaderAddress"
.LASF0:
	.string	"blockNr"
	.extern	FblLogicalBlockTable,STT_OBJECT,136
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
