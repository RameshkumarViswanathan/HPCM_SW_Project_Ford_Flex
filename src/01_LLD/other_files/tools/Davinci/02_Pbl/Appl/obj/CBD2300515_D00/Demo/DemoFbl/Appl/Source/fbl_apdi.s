	.file	"fbl_apdi.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ApplFblReadBootloaderROM,"ax",@progbits
	.align 1
	.type	ApplFblReadBootloaderROM, @function
ApplFblReadBootloaderROM:
.LFB21:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apdi.c"
	.loc 1 990 0
.LVL0:
	mov	%d2, %d4
	mov	%d15, %d5
.LVL1:
	.loc 1 993 0
	mov	%d4, %d5
.LVL2:
	mov	%d5, %d2
.LVL3:
	call	FlashDriver_RReadSync
.LVL4:
	.loc 1 999 0
	seln	%d2, %d2, %d15, 0
.LVL5:
	ret
.LFE21:
	.size	ApplFblReadBootloaderROM, .-ApplFblReadBootloaderROM
.section .text.ApplFblReadDataByIdentifier,"ax",@progbits
	.align 1
	.global	ApplFblReadDataByIdentifier
	.type	ApplFblReadDataByIdentifier, @function
ApplFblReadDataByIdentifier:
.LFB14:
	.loc 1 470 0
.LVL6:
	sub.a	%SP, 112
.LCFI0:
	mov.aa	%a15, %a4
	mov	%d8, %d4
.LVL7:
	.loc 1 487 0
	ld.bu	%d15, [%a4]0
	sh	%d15, %d15, 8
	ld.bu	%d2, [%a4] 1
	.loc 1 489 0
	or	%d15, %d2
	mov.u	%d2, 53360
	jeq	%d15, %d2, .L6
	mov.u	%d2, 53361
	jge.u	%d15, %d2, .L7
	mov.u	%d2, 53288
	jeq	%d15, %d2, .L8
	mov.u	%d2, 53311
	jeq	%d15, %d2, .L9
	j	.L18
.L7:
	mov.u	%d2, 61820
	jeq	%d15, %d2, .L10
	mov.u	%d2, 61824
	jeq	%d15, %d2, .L11
	mov.u	%d2, 53361
	jne	%d15, %d2, .L18
	j	.L12
.L11:
	.loc 1 495 0
	movh.a	%a2, hi:fblCommonData
	lea	%a2, [%a2] lo:fblCommonData
	ld.bu	%d15, [%a2] 68
	st.b	[%a4] 2, %d15
.LVL8:
	.loc 1 483 0
	mov	%d15, 0
	.loc 1 498 0
	jz	%d4, .L5
	mov	%d2, 0
	.loc 1 500 0
	movh	%d3, hi:fblCommonData
	addi	%d3, %d3, lo:fblCommonData
.LVL9:
.L13:
	.loc 1 500 0 is_stmt 0 discriminator 3
	addsc.a	%a3, %a15, %d2, 0
	mov.a	%a4, %d3
	addsc.a	%a2, %a4, %d2, 0
	ld.bu	%d15, [%a2] 69
	st.b	[%a3] 3, %d15
.LVL10:
	add	%d2, 1
.LVL11:
	.loc 1 498 0 is_stmt 1 discriminator 3
	extr.u	%d15, %d2, 0, 16
	jlt.u	%d15, %d8, .L13
	.loc 1 483 0
	mov	%d15, 0
	j	.L5
.LVL12:
.L10:
	.loc 1 508 0
	movh.a	%a2, hi:fblCommonData
	lea	%a2, [%a2] lo:fblCommonData
	ld.bu	%d15, [%a2] 94
	st.b	[%a4] 2, %d15
.LVL13:
	.loc 1 483 0
	mov	%d15, 0
	.loc 1 511 0
	jz	%d4, .L5
	mov	%d2, 0
	.loc 1 513 0
	movh	%d3, hi:fblCommonData
	addi	%d3, %d3, lo:fblCommonData
.LVL14:
.L14:
	.loc 1 513 0 is_stmt 0 discriminator 3
	addsc.a	%a3, %a15, %d2, 0
	mov.a	%a4, %d3
	addsc.a	%a2, %a4, %d2, 0
	ld.bu	%d15, [%a2] 95
	st.b	[%a3] 3, %d15
.LVL15:
	add	%d2, 1
.LVL16:
	.loc 1 511 0 is_stmt 1 discriminator 3
	extr.u	%d15, %d2, 0, 16
	jlt.u	%d15, %d8, .L14
	.loc 1 483 0
	mov	%d15, 0
	j	.L5
.LVL17:
.L6:
	.loc 1 521 0
	movh.a	%a4, hi:seed
.LVL18:
	lea	%a4, [%a4] lo:seed
	call	SecM_GenerateSeed
.LVL19:
	.loc 1 528 0
	mov	%d15, 1
	.loc 1 521 0
	jnz	%d2, .L5
	.loc 1 524 0
	lea	%a4, [%a15] 2
	movh.a	%a15, hi:seed
.LVL20:
	ld.a	%a5, [%a15] lo:seed
	mov	%d4, 2
	call	FblOwnMemcpy
.LVL21:
	.loc 1 483 0
	mov	%d15, 0
	j	.L5
.LVL22:
.L12:
	.loc 1 537 0
	add.a	%a4, 2
.LVL23:
	movh.a	%a5, hi:tokenBuffer
	lea	%a5, [%a5] lo:tokenBuffer
	mov	%d4, 1899
.LVL24:
	call	FblOwnMemcpy
.LVL25:
	.loc 1 540 0
	mov	%d2, 1900
	.loc 1 483 0
	mov	%d15, 0
	.loc 1 540 0
	jlt.u	%d8, %d2, .L5
	mov	%d2, 0
	.loc 1 542 0
	mov	%d3, 0
.LVL26:
.L15:
	.loc 1 542 0 is_stmt 0 discriminator 3
	addsc.a	%a2, %a15, %d2, 0
	st.b	[%a2] 1901, %d3
.LVL27:
	add	%d2, 1
.LVL28:
	addi	%d15, %d2, 1899
	.loc 1 540 0 is_stmt 1 discriminator 3
	extr.u	%d15, %d15, 0, 16
	jlt.u	%d15, %d8, .L15
	.loc 1 483 0
	mov	%d15, 0
	j	.L5
.LVL29:
.L8:
	.loc 1 552 0
	movh.a	%a2, hi:applSignValidState
	ld.bu	%d15, [%a2] lo:applSignValidState
	st.b	[%a4] 2, %d15
	.loc 1 483 0
	mov	%d15, 0
	.loc 1 553 0
	j	.L5
.L9:
.LBB2:
	.loc 1 563 0
	mov	%d15, 256
	st.h	[%SP] 8, %d15
	.loc 1 564 0
	mov	%d15, 4
	st.h	[%SP] 16, %d15
	.loc 1 566 0
	lea	%a4, [%SP] 4
.LVL30:
	call	ApplFblReadVerificationKey
.LVL31:
	jz	%d2, .L16
	.loc 1 568 0
	mov	%d15, 34
	movh.a	%a15, hi:diagErrorCode
.LVL32:
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL33:
	.loc 1 569 0
	mov	%d15, 1
	j	.L5
.LVL34:
.L16:
	.loc 1 574 0
	movh	%d2, hi:kFblDerKeyPart1
	addi	%d2, %d2, lo:kFblDerKeyPart1
	st.w	[%SP] 68, %d2
	.loc 1 575 0
	st.w	[%SP] 64, %d2
	.loc 1 576 0
	mov	%d15, 33
	st.w	[%SP] 72, %d15
	.loc 1 577 0
	ld.w	%d3, [%SP] 4
	st.w	[%SP] 80, %d3
	.loc 1 578 0
	st.w	[%SP] 76, %d3
	.loc 1 579 0
	ld.hu	%d15, [%SP] 8
	st.w	[%SP] 84, %d15
	.loc 1 580 0
	movh	%d15, hi:kFblDerKeyPart2
	addi	%d15, %d15, lo:kFblDerKeyPart2
	st.w	[%SP] 92, %d15
	.loc 1 581 0
	st.w	[%SP] 88, %d15
	.loc 1 582 0
	mov	%d15, 2
	st.w	[%SP] 96, %d15
	.loc 1 583 0
	ld.hu	%d15, [%SP] 16
	add	%d15, -3
	ld.w	%d3, [%SP] 12
	add	%d15, %d3
	st.w	[%SP] 104, %d15
	.loc 1 584 0
	st.w	[%SP] 100, %d15
	.loc 1 585 0
	mov	%d15, 3
	st.w	[%SP] 108, %d15
	.loc 1 586 0
	lea	%a2, [%SP] 64
	st.a	[%SP] 24, %a2
	.loc 1 587 0
	mov	%d15, 4
	st.w	[%SP] 20, %d15
	.loc 1 588 0
	st.w	[%SP] 28, %d2
	.loc 1 589 0
	mov	%d15, 0
	st.w	[%SP] 32, %d15
	.loc 1 590 0
	add.a	%a15, 2
.LVL35:
	st.a	[%SP] 36, %a15
	.loc 1 591 0
	movh	%d15, hi:FblRealTimeSupport
	addi	%d15, %d15, lo:FblRealTimeSupport
	st.w	[%SP] 44, %d15
	.loc 1 592 0
	movh	%d15, hi:ApplFblReadBootloaderROM
	addi	%d15, %d15, lo:ApplFblReadBootloaderROM
	st.w	[%SP] 48, %d15
	.loc 1 595 0
	lea	%a4, [%SP] 20
	call	SecM_VerificationClassDDD_Sha256
.LVL36:
.LBE2:
	.loc 1 483 0
	mov	%d15, 0
.LBB3:
	.loc 1 597 0
	jz	%d2, .L5
	.loc 1 599 0
	mov	%d15, 34
	movh.a	%a15, hi:diagErrorCode
.LVL37:
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL38:
	.loc 1 600 0
	mov	%d15, 1
	j	.L5
.LVL39:
.L18:
.LBE3:
	.loc 1 609 0
	mov	%d15, 1
.LVL40:
.L5:
	.loc 1 617 0
	mov	%d2, %d15
	ret
.LFE14:
	.size	ApplFblReadDataByIdentifier, .-ApplFblReadDataByIdentifier
.section .text.ApplFblWriteDataByIdentifier,"ax",@progbits
	.align 1
	.global	ApplFblWriteDataByIdentifier
	.type	ApplFblWriteDataByIdentifier, @function
ApplFblWriteDataByIdentifier:
.LFB15:
	.loc 1 630 0
.LVL41:
	.loc 1 643 0
	ld.bu	%d15, [%a4]0
	sh	%d15, %d15, 8
	ld.bu	%d2, [%a4] 1
	.loc 1 645 0
	or	%d15, %d2
	mov.u	%d2, 61836
	jne	%d15, %d2, .L34
	.loc 1 650 0
	eq	%d4, %d4, 18
.LVL42:
	jnz	%d4, .L30
	.loc 1 652 0
	mov	%d15, 19
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL43:
	j	.L31
.LVL44:
.L30:
	.loc 1 657 0
	movh.a	%a15, hi:diagCurrentSecLvl
	ld.bu	%d15, [%a15] lo:diagCurrentSecLvl
	jeq	%d15, 1, .L32
	.loc 1 659 0
	mov	%d15, 51
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL45:
	j	.L31
.LVL46:
.L32:
	.loc 1 665 0
	movh.a	%a15, hi:fblStates
	ld.w	%d15, [%a15] lo:fblStates
	jnz.t	%d15, 15, .L33
	.loc 1 667 0
	mov	%d15, 34
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL47:
	j	.L31
.LVL48:
.L33:
	.loc 1 673 0
	mov	%d15, 49
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL49:
	j	.L31
.LVL50:
.L34:
	.loc 1 684 0
	mov	%d15, 49
	movh.a	%a15, hi:diagErrorCode
	st.b	[%a15] lo:diagErrorCode, %d15
.LVL51:
.L31:
	.loc 1 691 0
	mov	%d2, 1
	ret
.LFE15:
	.size	ApplFblWriteDataByIdentifier, .-ApplFblWriteDataByIdentifier
.section .text.ApplFblMemConditionCheck,"ax",@progbits
	.align 1
	.global	ApplFblMemConditionCheck
	.type	ApplFblMemConditionCheck, @function
ApplFblMemConditionCheck:
.LFB16:
	.loc 1 703 0
.LVL52:
	.loc 1 731 0
	mov	%d2, 0
	ret
.LFE16:
	.size	ApplFblMemConditionCheck, .-ApplFblMemConditionCheck
.section .text.ApplFblSecurityInit,"ax",@progbits
	.align 1
	.global	ApplFblSecurityInit
	.type	ApplFblSecurityInit, @function
ApplFblSecurityInit:
.LFB17:
	.loc 1 740 0
	.loc 1 744 0
	movh.a	%a12, hi:secEntropyPool
	lea	%a12, [%a12] lo:secEntropyPool
	mov.aa	%a4, %a12
	call	SecM_InitEntropy
.LVL53:
	.loc 1 746 0
	movh.a	%a15, hi:seed
	lea	%a2, [%a15] lo:seed
	st.a	[%a2] 4, %a12
	.loc 1 747 0
	movh	%d15, hi:secSeedData
	addi	%d15, %d15, lo:secSeedData
	st.w	[%a15] lo:seed, %d15
	.loc 1 749 0
	movh.a	%a2, hi:secSeedContext
	lea	%a15, [%a2] lo:secSeedContext
	st.a	[%a12] 40, %a15
	.loc 1 750 0
	movh	%d15, hi:FblRealTimeSupport
	addi	%d15, %d15, lo:FblRealTimeSupport
	st.w	[%a15] 8, %d15
	.loc 1 751 0
	mov	%d15, 0
	st.w	[%a2] lo:secSeedContext, %d15
	.loc 1 752 0
	st.h	[%a15] 4, %d15
	.loc 1 762 0
	mov	%d2, 0
	ret
.LFE17:
	.size	ApplFblSecurityInit, .-ApplFblSecurityInit
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	ApplFblSecuritySeedInit
	.type	ApplFblSecuritySeedInit, @function
ApplFblSecuritySeedInit:
.LFB18:
	.loc 1 773 0
	.loc 1 779 0
	call	FblGetTimerValue
.LVL54:
	.loc 1 782 0
	movh.a	%a15, hi:secEntropyInput
	lea	%a5, [%a15] lo:secEntropyInput
	st.b	[%a5] 1, %d2
	.loc 1 783 0
	sh	%d2, -8
.LVL55:
	st.b	[%a15] lo:secEntropyInput, %d2
	.loc 1 784 0
	movh.a	%a4, hi:secEntropyPool
	lea	%a4, [%a4] lo:secEntropyPool
	mov	%d4, 2
	call	SecM_ProvideEntropy
.LVL56:
	.loc 1 794 0
	mov	%d2, 0
	ret
.LFE18:
	.size	ApplFblSecuritySeedInit, .-ApplFblSecuritySeedInit
.section .text.ApplFblSecuritySeed,"ax",@progbits
	.align 1
	.global	ApplFblSecuritySeed
	.type	ApplFblSecuritySeed, @function
ApplFblSecuritySeed:
.LFB19:
	.loc 1 806 0
.LVL57:
	.loc 1 842 0
	movh.a	%a15, hi:secEntropyPool
	lea	%a15, [%a15] lo:secEntropyPool
	ld.hu	%d15, [%a15] 32
	ge.u	%d15, %d15, 32
	jnz	%d15, .L39
	movh.a	%a15, hi:secEntropyPool
	lea	%a15, [%a15] lo:secEntropyPool
.L42:
	.loc 1 844 0
	call	ApplFblSecuritySeedInit
.LVL58:
	.loc 1 842 0
	ld.hu	%d15, [%a15] 32
	lt.u	%d15, %d15, 32
	jnz	%d15, .L42
.L39:
	.loc 1 849 0
	movh.a	%a4, hi:seed
	lea	%a4, [%a4] lo:seed
	call	SecM_GenerateSeed
.LVL59:
	.loc 1 817 0
	ne	%d15, %d2, 0
.LVL60:
	.loc 1 858 0
	jnz	%d15, .L41
	.loc 1 872 0
	movh.a	%a15, hi:DiagBuffer
	ld.a	%a4, [%a15] lo:DiagBuffer
	add.a	%a4, 2
	movh.a	%a5, hi:secSeedData
	lea	%a5, [%a5] lo:secSeedData
	mov	%d4, 16
	call	FblOwnMemcpy
.LVL61:
.L41:
	.loc 1 892 0
	mov	%d2, %d15
	ret
.LFE19:
	.size	ApplFblSecuritySeed, .-ApplFblSecuritySeed
.section .text.ApplFblSecurityKey,"ax",@progbits
	.align 1
	.global	ApplFblSecurityKey
	.type	ApplFblSecurityKey, @function
ApplFblSecurityKey:
.LFB20:
	.loc 1 901 0
	sub.a	%SP, 48
.LCFI1:
	.loc 1 916 0
	mov	%d15, 0
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d15
	st.w	[%SP] 12, %d15
.LVL62:
	.loc 1 944 0
	lea	%a15, [%SP] 16
	mov.aa	%a4, %a15
	mov	%d4, 12
	call	ApplFblReadSecurityBytes
.LVL63:
	.loc 1 947 0
	st.a	[%SP] 40, %a15
	.loc 1 948 0
	mov	%d2, 12
	st.h	[%SP] 44, %d2
	.loc 1 949 0
	st.h	[%SP] 32, %d15
	.loc 1 950 0
	movh	%d15, hi:FblRealTimeSupport
	addi	%d15, %d15, lo:FblRealTimeSupport
	st.w	[%SP] 36, %d15
	.loc 1 953 0
	movh.a	%a2, hi:DiagBuffer
	ld.w	%d4, [%a2] lo:DiagBuffer
	.loc 1 957 0
	add	%d4, 2
	mov.d	%d15, %SP
	addi	%d5, %d15, 28
	movh.a	%a2, hi:seed
	lea	%a2, [%a2] lo:seed
	ld.d	%e6, [%a2]0
	call	SecM_CompareKey
.LVL64:
	mov	%d15, %d2
.LVL65:
	.loc 1 963 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	mov	%d4, 12
	call	FblOwnMemcpy
.LVL66:
	.loc 1 976 0
	ne	%d2, %d15, 0
	ret
.LFE20:
	.size	ApplFblSecurityKey, .-ApplFblSecurityKey
.section .text.ApplFblTokenRevertKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenRevertKey
	.type	ApplFblTokenRevertKey, @function
ApplFblTokenRevertKey:
.LFB22:
	.loc 1 1010 0
.LVL67:
	ret
.LFE22:
	.size	ApplFblTokenRevertKey, .-ApplFblTokenRevertKey
.section .text.ApplFblTokenUseDevPermKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenUseDevPermKey
	.type	ApplFblTokenUseDevPermKey, @function
ApplFblTokenUseDevPermKey:
.LFB23:
	.loc 1 1025 0
.LVL68:
	ret
.LFE23:
	.size	ApplFblTokenUseDevPermKey, .-ApplFblTokenUseDevPermKey
.section .text.ApplFblTokenUseDevTempKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenUseDevTempKey
	.type	ApplFblTokenUseDevTempKey, @function
ApplFblTokenUseDevTempKey:
.LFB24:
	.loc 1 1040 0
.LVL69:
	ret
.LFE24:
	.size	ApplFblTokenUseDevTempKey, .-ApplFblTokenUseDevTempKey
.section .text.ApplFblTokenUseDevDateKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenUseDevDateKey
	.type	ApplFblTokenUseDevDateKey, @function
ApplFblTokenUseDevDateKey:
.LFB25:
	.loc 1 1056 0
.LVL70:
	.loc 1 1062 0
	mov	%d2, 9
	ret
.LFE25:
	.size	ApplFblTokenUseDevDateKey, .-ApplFblTokenUseDevDateKey
.section .text.ApplFblTokenUseDevIgniKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenUseDevIgniKey
	.type	ApplFblTokenUseDevIgniKey, @function
ApplFblTokenUseDevIgniKey:
.LFB26:
	.loc 1 1073 0
.LVL71:
	.loc 1 1079 0
	mov	%d2, 9
	ret
.LFE26:
	.size	ApplFblTokenUseDevIgniKey, .-ApplFblTokenUseDevIgniKey
.section .text.ApplFblTokenProgKey,"ax",@progbits
	.align 1
	.global	ApplFblTokenProgKey
	.type	ApplFblTokenProgKey, @function
ApplFblTokenProgKey:
.LFB27:
	.loc 1 1089 0
.LVL72:
	ret
.LFE27:
	.size	ApplFblTokenProgKey, .-ApplFblTokenProgKey
.section .text.ApplFblInitErrStatus,"ax",@progbits
	.align 1
	.global	ApplFblInitErrStatus
	.type	ApplFblInitErrStatus, @function
ApplFblInitErrStatus:
.LFB28:
	.loc 1 1121 0
	.loc 1 1122 0
	movh.a	%a2, hi:errStatFlashDrvVersion
	lea	%a15, [%a2] lo:errStatFlashDrvVersion
	mov	%d15, 0
	st.b	[%a2] lo:errStatFlashDrvVersion, %d15
	.loc 1 1123 0
	st.b	[%a15] 1, %d15
	.loc 1 1124 0
	st.b	[%a15] 2, %d15
	.loc 1 1125 0
	mov	%d15, 0
	movh.a	%a15, hi:errStatFlashDrvErrorCode
	st.h	[%a15] lo:errStatFlashDrvErrorCode, %d15
	.loc 1 1126 0
	movh.a	%a15, hi:errStatErrorCode
	st.h	[%a15] lo:errStatErrorCode, %d15
	.loc 1 1127 0
	movh.a	%a15, hi:errStatFblStates
	st.h	[%a15] lo:errStatFblStates, %d15
	.loc 1 1128 0
	movh.a	%a15, hi:errStatLastServiceId
	st.b	[%a15] lo:errStatLastServiceId, %d15
	ret
.LFE28:
	.size	ApplFblInitErrStatus, .-ApplFblInitErrStatus
	.local	seed
.section .bss,"aw",@nobits
	.align 2
	.type		 seed,@object
	.size		 seed,8
seed:
	.space	8
	.local	secSeedData
	.align 0
	.type		 secSeedData,@object
	.size		 secSeedData,16
secSeedData:
	.space	16
	.local	secSeedContext
	.align 2
	.type		 secSeedContext,@object
	.size		 secSeedContext,12
secSeedContext:
	.space	12
	.local	secEntropyInput
	.align 0
	.type		 secEntropyInput,@object
	.size		 secEntropyInput,2
secEntropyInput:
	.space	2
	.local	secEntropyPool
	.align 2
	.type		 secEntropyPool,@object
	.size		 secEntropyPool,44
secEntropyPool:
	.space	44
.section .rodata,"a",@progbits
	.type	kFblDerKeyPart2, @object
	.size	kFblDerKeyPart2, 2
kFblDerKeyPart2:
	.byte	2
	.byte	3
	.type	kFblDerKeyPart1, @object
	.size	kFblDerKeyPart1, 33
kFblDerKeyPart1:
	.byte	48
	.byte	-126
	.byte	1
	.byte	34
	.byte	48
	.byte	13
	.byte	6
	.byte	9
	.byte	42
	.byte	-122
	.byte	72
	.byte	-122
	.byte	-9
	.byte	13
	.byte	1
	.byte	1
	.byte	1
	.byte	5
	.byte	0
	.byte	3
	.byte	-126
	.byte	1
	.byte	15
	.byte	0
	.byte	48
	.byte	-126
	.byte	1
	.byte	10
	.byte	2
	.byte	-126
	.byte	1
	.byte	1
	.byte	0
	.global	kNrOfDids
	.type	kNrOfDids, @object
	.size	kNrOfDids, 1
kNrOfDids:
	.byte	10
	.global	fblDidTable
	.align 2
	.type	fblDidTable, @object
	.size	fblDidTable, 80
fblDidTable:
	.short	-3823
	.short	24
	.word	fblCommonData
	.short	-3821
	.short	24
	.word	fblCommonData+25
	.short	-3700
	.short	16
	.word	fblCommonData+50
	.short	-3712
	.short	25
	.word	0
	.short	-3716
	.short	11
	.word	0
	.short	-3713
	.short	8
	.word	fblCommonData+106
	.short	-12176
	.short	2
	.word	0
	.short	-12175
	.short	2134
	.word	0
	.short	-12248
	.short	1
	.word	0
	.short	-12225
	.short	32
	.word	0
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
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.byte	0x4
	.uaword	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x70
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x30
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
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE28:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/SecMod/Sec_Types.h"
	.file 5 "../../../BSW/SecMod/Sec_SeedKey.h"
	.file 6 "../../../BSW/Fbl/fbl_def.h"
	.file 7 "../../../BSW/Fbl/iotypes.h"
	.file 8 "GenData/ComStack_Cfg.h"
	.file 9 "../../../BSW/FblCw/fbl_cw.h"
	.file 10 "../../../BSW/Fbl/fbl_diag.h"
	.file 11 "../../../BSW/Fbl/fbl_mem.h"
	.file 12 "Include/comdat.h"
	.file 13 "Include/fbl_apdi.h"
	.file 14 "GenData/SecMPar.h"
	.file 15 "Include/fbl_ap.h"
	.file 16 "Include/fbl_apnv.h"
	.file 17 "../../../BSW/Fbl/fbl_flio.h"
	.file 18 "../../../BSW/Fbl/fbl_hw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x20d8
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/fbl_apdi.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x192
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
	.uleb128 0x4
	.string	"vuint8"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x157
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x192
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1b4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"SecM_WordType"
	.byte	0x4
	.byte	0x87
	.uaword	0x226
	.uleb128 0x3
	.string	"SecM_ByteType"
	.byte	0x4
	.byte	0x8c
	.uaword	0x207
	.uleb128 0x3
	.string	"SecM_ShortType"
	.byte	0x4
	.byte	0x8e
	.uaword	0x216
	.uleb128 0x3
	.string	"SecM_RamDataType"
	.byte	0x4
	.byte	0x91
	.uaword	0x29e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x25b
	.uleb128 0x3
	.string	"SecM_ConstRamDataType"
	.byte	0x4
	.byte	0x97
	.uaword	0x2c1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c7
	.uleb128 0x6
	.uaword	0x25b
	.uleb128 0x3
	.string	"SecM_RomDataType"
	.byte	0x4
	.byte	0x9b
	.uaword	0x2c1
	.uleb128 0x3
	.string	"SecM_VoidPtrType"
	.byte	0x4
	.byte	0x9d
	.uaword	0x2fc
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x304
	.uleb128 0x8
	.uleb128 0x3
	.string	"SecM_StatusType"
	.byte	0x4
	.byte	0xa8
	.uaword	0x25b
	.uleb128 0x3
	.string	"SecM_LengthType"
	.byte	0x4
	.byte	0xaa
	.uaword	0x270
	.uleb128 0x3
	.string	"SecM_AddrType"
	.byte	0x4
	.byte	0xad
	.uaword	0x246
	.uleb128 0x3
	.string	"SecM_SizeType"
	.byte	0x4
	.byte	0xaf
	.uaword	0x246
	.uleb128 0x9
	.byte	0xc
	.byte	0x4
	.byte	0xb2
	.uaword	0x3a6
	.uleb128 0xa
	.string	"transferredAddress"
	.byte	0x4
	.byte	0xb4
	.uaword	0x333
	.byte	0
	.uleb128 0xa
	.string	"targetAddress"
	.byte	0x4
	.byte	0xb5
	.uaword	0x333
	.byte	0x4
	.uleb128 0xa
	.string	"length"
	.byte	0x4
	.byte	0xb6
	.uaword	0x348
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"FL_SegmentInfoType"
	.byte	0x4
	.byte	0xb7
	.uaword	0x35d
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uaword	0x3f2
	.uleb128 0xa
	.string	"nrOfSegments"
	.byte	0x4
	.byte	0xbd
	.uaword	0x246
	.byte	0
	.uleb128 0xa
	.string	"segmentInfo"
	.byte	0x4
	.byte	0xc0
	.uaword	0x3f2
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3a6
	.uleb128 0x3
	.string	"FL_SegmentListType"
	.byte	0x4
	.byte	0xc1
	.uaword	0x3c0
	.uleb128 0x3
	.string	"FL_WDTriggerFctType"
	.byte	0x4
	.byte	0xc4
	.uaword	0x42d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x433
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x3
	.string	"FL_ReadMemoryFctType"
	.byte	0x4
	.byte	0xc6
	.uaword	0x451
	.uleb128 0x5
	.byte	0x4
	.uaword	0x457
	.uleb128 0xc
	.byte	0x1
	.uaword	0x348
	.uaword	0x471
	.uleb128 0xd
	.uaword	0x333
	.uleb128 0xd
	.uaword	0x286
	.uleb128 0xd
	.uaword	0x348
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0xe1
	.uaword	0x493
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.byte	0xe4
	.uaword	0x2a4
	.byte	0
	.uleb128 0xa
	.string	"size"
	.byte	0x4
	.byte	0xe6
	.uaword	0x31c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"SecM_RamBufferType"
	.byte	0x4
	.byte	0xe7
	.uaword	0x471
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0xea
	.uaword	0x4cf
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.byte	0xed
	.uaword	0x2cc
	.byte	0
	.uleb128 0xa
	.string	"size"
	.byte	0x4
	.byte	0xef
	.uaword	0x31c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"SecM_RomBufferType"
	.byte	0x4
	.byte	0xf0
	.uaword	0x4ad
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.uahalf	0x105
	.uaword	0x512
	.uleb128 0x10
	.string	"digest"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x512
	.byte	0
	.uleb128 0x10
	.string	"dummy"
	.byte	0x4
	.uahalf	0x108
	.uaword	0x246
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	0x25b
	.uaword	0x522
	.uleb128 0x12
	.uaword	0x522
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_BasicWkspType"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x4e9
	.uleb128 0x4
	.string	"SecM_WorkspacePtrType"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x567
	.uleb128 0x5
	.byte	0x4
	.uaword	0x52e
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x592
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x112
	.uaword	0x549
	.byte	0
	.uleb128 0x10
	.string	"size"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x31c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_WorkspaceType"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x56d
	.uleb128 0x4
	.string	"SecM_CryptKeyType"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x4cf
	.uleb128 0x4
	.string	"SecM_SymKeyType"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x493
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x60d
	.uleb128 0x10
	.string	"shared"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x5ad
	.byte	0
	.uleb128 0x10
	.string	"individual"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x5ad
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"SecM_AsymKeyType"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x5df
	.uleb128 0x4
	.string	"SecM_Crc16Type"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x270
	.uleb128 0x4
	.string	"SecM_CRCType"
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x626
	.uleb128 0x4
	.string	"SecM_VerifyKeyType"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x2e4
	.uleb128 0x4
	.string	"SecM_VerifyDataType"
	.byte	0x4
	.uahalf	0x23c
	.uaword	0x286
	.uleb128 0xf
	.byte	0x2c
	.byte	0x4
	.uahalf	0x23f
	.uaword	0x73f
	.uleb128 0x10
	.string	"segmentList"
	.byte	0x4
	.uahalf	0x243
	.uaword	0x3f8
	.byte	0
	.uleb128 0x10
	.string	"blockStartAddress"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x333
	.byte	0x8
	.uleb128 0x10
	.string	"blockLength"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x348
	.byte	0xc
	.uleb128 0x10
	.string	"verificationData"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x66d
	.byte	0x10
	.uleb128 0x10
	.string	"crcTotal"
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x63d
	.byte	0x14
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x412
	.byte	0x18
	.uleb128 0x10
	.string	"readMemory"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x435
	.byte	0x1c
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x252
	.uaword	0x592
	.byte	0x20
	.uleb128 0x10
	.string	"key"
	.byte	0x4
	.uahalf	0x254
	.uaword	0x652
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.string	"SecM_VerifyParamType"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x689
	.uleb128 0x3
	.string	"SecM_KeyBaseType"
	.byte	0x5
	.byte	0x56
	.uaword	0x25b
	.uleb128 0x3
	.string	"SecM_SeedBaseType"
	.byte	0x5
	.byte	0x64
	.uaword	0x25b
	.uleb128 0x3
	.string	"SecM_SeedStorageType"
	.byte	0x5
	.byte	0x66
	.uaword	0x7a9
	.uleb128 0x11
	.uaword	0x774
	.uaword	0x7b9
	.uleb128 0x12
	.uaword	0x522
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x5
	.byte	0x7e
	.uaword	0x7da
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x5
	.byte	0x81
	.uaword	0x592
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x5
	.byte	0x83
	.uaword	0x412
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"SecM_SeedKeyContextType"
	.byte	0x5
	.byte	0x84
	.uaword	0x7b9
	.uleb128 0x3
	.string	"SecM_ComputeKeyParamType"
	.byte	0x5
	.byte	0x8e
	.uaword	0x7da
	.uleb128 0x9
	.byte	0x14
	.byte	0x5
	.byte	0x91
	.uaword	0x843
	.uleb128 0xa
	.string	"common"
	.byte	0x5
	.byte	0x94
	.uaword	0x7f9
	.byte	0
	.uleb128 0xa
	.string	"secretKey"
	.byte	0x5
	.byte	0x96
	.uaword	0x5c7
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"SecM_ComputeKeySymParamType"
	.byte	0x5
	.byte	0x97
	.uaword	0x819
	.uleb128 0x14
	.byte	0x1
	.byte	0x5
	.byte	0xb3
	.uaword	0x89b
	.uleb128 0x15
	.string	"SEC_RNG_UNINTIALIZED"
	.sleb128 0
	.uleb128 0x15
	.string	"SEC_RNG_INTIALIZED"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"SecM_RngState"
	.byte	0x5
	.byte	0xb6
	.uaword	0x866
	.uleb128 0x9
	.byte	0x2c
	.byte	0x5
	.byte	0xb9
	.uaword	0x904
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x5
	.byte	0xbb
	.uaword	0x904
	.byte	0
	.uleb128 0xa
	.string	"fillLevel"
	.byte	0x5
	.byte	0xbc
	.uaword	0x31c
	.byte	0x20
	.uleb128 0xa
	.string	"offset"
	.byte	0x5
	.byte	0xbd
	.uaword	0x31c
	.byte	0x22
	.uleb128 0xa
	.string	"state"
	.byte	0x5
	.byte	0xbe
	.uaword	0x89b
	.byte	0x24
	.uleb128 0xa
	.string	"context"
	.byte	0x5
	.byte	0xbf
	.uaword	0x2e4
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.uaword	0x25b
	.uaword	0x914
	.uleb128 0x12
	.uaword	0x522
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"SecM_EntropyPoolType"
	.byte	0x5
	.byte	0xc0
	.uaword	0x8b0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xcb
	.uaword	0x959
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x5
	.byte	0xce
	.uaword	0x959
	.byte	0
	.uleb128 0xa
	.string	"entropyPool"
	.byte	0x5
	.byte	0xcf
	.uaword	0x95f
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x774
	.uleb128 0x5
	.byte	0x4
	.uaword	0x914
	.uleb128 0x3
	.string	"SecM_SeedType"
	.byte	0x5
	.byte	0xd0
	.uaword	0x930
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xda
	.uaword	0x99f
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x5
	.byte	0xdd
	.uaword	0x99f
	.byte	0
	.uleb128 0xa
	.string	"context"
	.byte	0x5
	.byte	0xdf
	.uaword	0x2e4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x75c
	.uleb128 0x3
	.string	"SecM_KeyType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x97a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x965
	.uleb128 0x5
	.byte	0x4
	.uaword	0x73f
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x207
	.uleb128 0x5
	.byte	0x4
	.uaword	0x207
	.uleb128 0x3
	.string	"IO_SizeType"
	.byte	0x7
	.byte	0x42
	.uaword	0x226
	.uleb128 0x3
	.string	"IO_PositionType"
	.byte	0x7
	.byte	0x43
	.uaword	0x226
	.uleb128 0x3
	.string	"IO_ErrorType"
	.byte	0x7
	.byte	0x49
	.uaword	0x216
	.uleb128 0x3
	.string	"IO_MemPtrType"
	.byte	0x7
	.byte	0x4a
	.uaword	0x9d8
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x8
	.byte	0x41
	.uaword	0x184
	.uleb128 0x4
	.string	"tCwDataLengthType"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0xa31
	.uleb128 0x4
	.string	"tTpDataType"
	.byte	0x9
	.uahalf	0x12e
	.uaword	0xa46
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"tStateBitmap"
	.byte	0xa
	.uahalf	0x212
	.uaword	0x226
	.uleb128 0x16
	.byte	0x1
	.byte	0xa
	.uahalf	0x364
	.uaword	0xba8
	.uleb128 0x15
	.string	"kTokenHdlrOk"
	.sleb128 0
	.uleb128 0x15
	.string	"kTokenHdlrProtocolFailed"
	.sleb128 1
	.uleb128 0x15
	.string	"kTokenHdlrSyncPKeyValFailed"
	.sleb128 2
	.uleb128 0x15
	.string	"kTokenHdlrFesnFailed"
	.sleb128 3
	.uleb128 0x15
	.string	"kTokenHdlrTimeTokenFailed"
	.sleb128 4
	.uleb128 0x15
	.string	"kTokenHdlrKeyChangeFailed"
	.sleb128 5
	.uleb128 0x15
	.string	"kTokenHdlrSignatureFailed"
	.sleb128 6
	.uleb128 0x15
	.string	"kTokenHdlrTokenApplPassed"
	.sleb128 7
	.uleb128 0x15
	.string	"kTokenHdlrTokenSignFailed"
	.sleb128 8
	.uleb128 0x15
	.string	"kTokenHdlrInternalFailed"
	.sleb128 9
	.byte	0
	.uleb128 0x4
	.string	"tTokenHdlResult"
	.byte	0xa
	.uahalf	0x371
	.uaword	0xa98
	.uleb128 0x16
	.byte	0x1
	.byte	0xb
	.uahalf	0x297
	.uaword	0x128d
	.uleb128 0x15
	.string	"kFblMemStatus_Ok"
	.sleb128 0
	.uleb128 0x15
	.string	"kFblMemStatus_Failed"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_BlockEraseSequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_BlockStartSequence"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_BlockStartParam"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_BlockEndSequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_BlockEndVerifyFinalize"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_BlockVerifySequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_BlockVerifyInputVerify"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_BlockVerifyProcessedVerify"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_BlockVerifyPipeVerify"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_BlockVerifyOutputVerify"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartSequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartDataProcInit"
	.sleb128 49
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartStreamOutInit"
	.sleb128 49
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartVerifyInit"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartVerifyCompute"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentStartSegmentCount"
	.sleb128 49
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentEndSequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentEndInsufficientData"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_SegmentEndPost"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_DataIndSequence"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_DataIndParam"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DataIndOverflow"
	.sleb128 113
	.uleb128 0x15
	.string	"kFblMemStatus_DataProc"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DataProcConsume"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DataProcDeinit"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_StreamOutput"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_StreamOutputConsume"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_StreamOutputOverflow"
	.sleb128 113
	.uleb128 0x15
	.string	"kFblMemStatus_StreamOutputDeinit"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DriverResumeWrite"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DriverWrite"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DriverErase"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DriverRemainder"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_DriverSuspendWrite"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramOverflow"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramOutsideFbt"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramUnalignedAddress"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramDriverNotReady"
	.sleb128 36
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramPreWrite"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_ProgramPostWrite"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_EraseOutsideFbt"
	.sleb128 49
	.uleb128 0x15
	.string	"kFblMemStatus_EraseDriverNotReady"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_ErasePreErase"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_ErasePostErase"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_VerifyCompute"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_VerifyFinalize"
	.sleb128 114
	.uleb128 0x15
	.string	"kFblMemStatus_PassThroughLocal"
	.sleb128 34
	.uleb128 0x15
	.string	"kFblMemStatus_PassThroughRemote"
	.sleb128 34
	.byte	0
	.uleb128 0x4
	.string	"tFblMemStatus"
	.byte	0xb
	.uahalf	0x2f8
	.uaword	0xbc0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x12a9
	.uleb128 0x6
	.uaword	0x207
	.uleb128 0x17
	.string	"tBootSwId_tag"
	.byte	0x1a
	.byte	0xc
	.byte	0x35
	.uaword	0x1303
	.uleb128 0xa
	.string	"NumberOfModules"
	.byte	0xc
	.byte	0x37
	.uaword	0x157
	.byte	0
	.uleb128 0xa
	.string	"IdentificationParameterRecord"
	.byte	0xc
	.byte	0x39
	.uaword	0x1303
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x157
	.uaword	0x1313
	.uleb128 0x12
	.uaword	0x522
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"tBootSwId"
	.byte	0xc
	.byte	0x3a
	.uaword	0x12ae
	.uleb128 0x17
	.string	"tBootGenToolVer_tag"
	.byte	0xc
	.byte	0xc
	.byte	0x3c
	.uaword	0x1384
	.uleb128 0xa
	.string	"GenerationToolSupplier"
	.byte	0xc
	.byte	0x3e
	.uaword	0x157
	.byte	0
	.uleb128 0xa
	.string	"GenerationToolVersionNumber"
	.byte	0xc
	.byte	0x3f
	.uaword	0x1384
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x157
	.uaword	0x1394
	.uleb128 0x12
	.uaword	0x522
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"tBootGenToolVer"
	.byte	0xc
	.byte	0x40
	.uaword	0x1324
	.uleb128 0x17
	.string	"tFblCommonData_tag"
	.byte	0x74
	.byte	0xc
	.byte	0x42
	.uaword	0x148c
	.uleb128 0xa
	.string	"EcuCoreAssemblyNumber"
	.byte	0xc
	.byte	0x45
	.uaword	0x1303
	.byte	0
	.uleb128 0xa
	.string	"EcuDeliveryAssemblyNumber"
	.byte	0xc
	.byte	0x46
	.uaword	0x1303
	.byte	0x19
	.uleb128 0xa
	.string	"EcuSerialNumber"
	.byte	0xc
	.byte	0x47
	.uaword	0x148c
	.byte	0x32
	.uleb128 0xa
	.string	"BootSoftwareIdentification"
	.byte	0xc
	.byte	0x48
	.uaword	0x1313
	.byte	0x44
	.uleb128 0xa
	.string	"BootloaderGenToolVersionNumber"
	.byte	0xc
	.byte	0x49
	.uaword	0x1394
	.byte	0x5e
	.uleb128 0xa
	.string	"FordElectronicSerialNumber"
	.byte	0xc
	.byte	0x4a
	.uaword	0x149c
	.byte	0x6a
	.byte	0
	.uleb128 0x11
	.uaword	0x157
	.uaword	0x149c
	.uleb128 0x12
	.uaword	0x522
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	0x157
	.uaword	0x14ac
	.uleb128 0x12
	.uaword	0x522
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"tFblCommonData"
	.byte	0xc
	.byte	0x4b
	.uaword	0x13ab
	.uleb128 0x3
	.string	"tDidDataPtr"
	.byte	0xd
	.byte	0xa3
	.uaword	0x12a3
	.uleb128 0x17
	.string	"tFblDidTable_tag"
	.byte	0x8
	.byte	0xd
	.byte	0xa5
	.uaword	0x1514
	.uleb128 0xa
	.string	"did"
	.byte	0xd
	.byte	0xa7
	.uaword	0x216
	.byte	0
	.uleb128 0xa
	.string	"size"
	.byte	0xd
	.byte	0xa8
	.uaword	0x216
	.byte	0x2
	.uleb128 0xa
	.string	"ptr"
	.byte	0xd
	.byte	0xa9
	.uaword	0x14c2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"tFblDidTable"
	.byte	0xd
	.byte	0xaa
	.uaword	0x14d5
	.uleb128 0x18
	.string	"ApplFblReadBootloaderROM"
	.byte	0x1
	.uahalf	0x3dd
	.byte	0x1
	.uaword	0x348
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x15ce
	.uleb128 0x19
	.string	"address"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x333
	.uaword	.LLST0
	.uleb128 0x19
	.string	"buffer"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x286
	.uaword	.LLST1
	.uleb128 0x19
	.string	"length"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x348
	.uaword	.LLST2
	.uleb128 0x1a
	.string	"validReadLength"
	.byte	0x1
	.uahalf	0x3df
	.uaword	0x348
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LVL4
	.uaword	0x1f2a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblReadDataByIdentifier"
	.byte	0x1
	.uahalf	0x1d5
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1733
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x9d8
	.uaword	.LLST4
	.uleb128 0x1e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0xa60
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"reqDid"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x216
	.uaword	.LLST6
	.uleb128 0x1a
	.string	"dataIdx"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x216
	.uaword	.LLST7
	.uleb128 0x1f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x207
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0
	.uaword	0x16e8
	.uleb128 0x21
	.string	"verifyParam"
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x73f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"pubKey"
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x60d
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.string	"verifySegmentInfo"
	.byte	0x1
	.uahalf	0x230
	.uaword	0x1733
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"secStatus"
	.byte	0x1
	.uahalf	0x231
	.uaword	0x305
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	.LVL31
	.uaword	0x1f5e
	.uaword	0x16d6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL36
	.uaword	0x1f93
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL19
	.uaword	0x1fc8
	.uaword	0x16ff
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	seed
	.byte	0
	.uleb128 0x22
	.uaword	.LVL21
	.uaword	0x1fee
	.uaword	0x171b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL25
	.uaword	0x1fee
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x76b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x3a6
	.uaword	0x1743
	.uleb128 0x12
	.uaword	0x522
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblWriteDataByIdentifier"
	.byte	0x1
	.uahalf	0x275
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17bb
	.uleb128 0x23
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x275
	.uaword	0x9d8
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x275
	.uaword	0xa60
	.uaword	.LLST10
	.uleb128 0x1a
	.string	"reqDid"
	.byte	0x1
	.uahalf	0x277
	.uaword	0x216
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x278
	.uaword	0x207
	.uaword	.LLST12
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblMemConditionCheck"
	.byte	0x1
	.uahalf	0x2be
	.byte	0x1
	.uaword	0x128d
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1803
	.uleb128 0x24
	.string	"checkResult"
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0x128d
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblSecurityInit"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1841
	.uleb128 0x1b
	.uaword	.LVL53
	.uaword	0x201a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblSecuritySeedInit"
	.byte	0x1
	.uahalf	0x304
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x18b1
	.uleb128 0x1a
	.string	"hwTimer"
	.byte	0x1
	.uahalf	0x308
	.uaword	0x216
	.uaword	.LLST13
	.uleb128 0x25
	.uaword	.LVL54
	.uaword	0x203c
	.uleb128 0x1b
	.uaword	.LVL56
	.uaword	0x2058
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	secEntropyInput
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	secEntropyPool
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblSecuritySeed"
	.byte	0x1
	.uahalf	0x325
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x193e
	.uleb128 0x1a
	.string	"retVal"
	.byte	0x1
	.uahalf	0x327
	.uaword	0x207
	.uaword	.LLST14
	.uleb128 0x24
	.string	"seedLength"
	.byte	0x1
	.uahalf	0x328
	.uaword	0x207
	.byte	0x10
	.uleb128 0x25
	.uaword	.LVL58
	.uaword	0x1841
	.uleb128 0x22
	.uaword	.LVL59
	.uaword	0x1fc8
	.uaword	0x1925
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	seed
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL61
	.uaword	0x1fee
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	secSeedData
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblSecurityKey"
	.byte	0x1
	.uahalf	0x384
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a1f
	.uleb128 0x1a
	.string	"result"
	.byte	0x1
	.uahalf	0x386
	.uaword	0x207
	.uaword	.LLST15
	.uleb128 0x26
	.string	"securityKey"
	.byte	0x1
	.uahalf	0x391
	.uaword	0x9a5
	.uleb128 0x21
	.string	"seedKeyContext"
	.byte	0x1
	.uahalf	0x392
	.uaword	0x843
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"securityBytes"
	.byte	0x1
	.uahalf	0x393
	.uaword	0x1a1f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"securityBytesZero"
	.byte	0x1
	.uahalf	0x394
	.uaword	0x1a2f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.uaword	.LVL63
	.uaword	0x2087
	.uaword	0x19fa
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL64
	.uaword	0x20b5
	.uleb128 0x1b
	.uaword	.LVL66
	.uaword	0x1fee
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1a2f
	.uleb128 0x12
	.uaword	0x522
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x1a1f
	.uleb128 0x27
	.byte	0x1
	.string	"ApplFblTokenRevertKey"
	.byte	0x1
	.uahalf	0x3f1
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a7c
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3f1
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3f1
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"ApplFblTokenUseDevPermKey"
	.byte	0x1
	.uahalf	0x400
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1ac8
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x400
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x400
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"ApplFblTokenUseDevTempKey"
	.byte	0x1
	.uahalf	0x40f
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b14
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblTokenUseDevDateKey"
	.byte	0x1
	.uahalf	0x41f
	.byte	0x1
	.uaword	0xba8
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b64
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"ApplFblTokenUseDevIgniKey"
	.byte	0x1
	.uahalf	0x430
	.byte	0x1
	.uaword	0xba8
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1bb4
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x430
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x430
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"ApplFblTokenProgKey"
	.byte	0x1
	.uahalf	0x440
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1bfa
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x440
	.uaword	0x12a3
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x440
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"ApplFblInitErrStatus"
	.byte	0x1
	.uahalf	0x460
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1c30
	.uleb128 0x12
	.uaword	0x522
	.byte	0x20
	.byte	0
	.uleb128 0x29
	.string	"kFblDerKeyPart1"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1c4d
	.byte	0x5
	.byte	0x3
	.uaword	kFblDerKeyPart1
	.uleb128 0x6
	.uaword	0x1c20
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1c62
	.uleb128 0x12
	.uaword	0x522
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.string	"kFblDerKeyPart2"
	.byte	0x1
	.byte	0xc9
	.uaword	0x1c7f
	.byte	0x5
	.byte	0x3
	.uaword	kFblDerKeyPart2
	.uleb128 0x6
	.uaword	0x1c52
	.uleb128 0x29
	.string	"secEntropyPool"
	.byte	0x1
	.byte	0xd5
	.uaword	0x914
	.byte	0x5
	.byte	0x3
	.uaword	secEntropyPool
	.uleb128 0x29
	.string	"secEntropyInput"
	.byte	0x1
	.byte	0xd6
	.uaword	0x1c52
	.byte	0x5
	.byte	0x3
	.uaword	secEntropyInput
	.uleb128 0x29
	.string	"secSeedContext"
	.byte	0x1
	.byte	0xd7
	.uaword	0x7da
	.byte	0x5
	.byte	0x3
	.uaword	secSeedContext
	.uleb128 0x29
	.string	"secSeedData"
	.byte	0x1
	.byte	0xd8
	.uaword	0x78d
	.byte	0x5
	.byte	0x3
	.uaword	secSeedData
	.uleb128 0x29
	.string	"seed"
	.byte	0x1
	.byte	0xdb
	.uaword	0x965
	.byte	0x5
	.byte	0x3
	.uaword	seed
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1d14
	.uleb128 0x12
	.uaword	0x522
	.byte	0xff
	.byte	0
	.uleb128 0x2a
	.string	"SecM_RsaDevelopmentMod"
	.byte	0xe
	.byte	0x5c
	.uaword	0x1d34
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1d04
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1d49
	.uleb128 0x12
	.uaword	0x522
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.string	"SecM_RsaDevelopmentExp"
	.byte	0xe
	.byte	0x5d
	.uaword	0x1d69
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1d39
	.uleb128 0x2b
	.string	"DiagBuffer"
	.byte	0xa
	.uahalf	0x3b9
	.uaword	0x9d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"diagErrorCode"
	.byte	0xa
	.uahalf	0x3ba
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0xa83
	.uaword	0x1dab
	.uleb128 0x12
	.uaword	0x522
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"fblStates"
	.byte	0xa
	.uahalf	0x3c0
	.uaword	0x1d9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"diagCurrentSecLvl"
	.byte	0xa
	.uahalf	0x3c1
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"errStatErrorCode"
	.byte	0xa
	.uahalf	0x3de
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"errStatFblStates"
	.byte	0xa
	.uahalf	0x3df
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"errStatLastServiceId"
	.byte	0xa
	.uahalf	0x3e0
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1e40
	.uleb128 0x12
	.uaword	0x522
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.string	"errStatFlashDrvVersion"
	.byte	0xa
	.uahalf	0x3e1
	.uaword	0x1e30
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"errStatFlashDrvErrorCode"
	.byte	0xa
	.uahalf	0x3e2
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x207
	.uaword	0x1e95
	.uleb128 0x2c
	.uaword	0x522
	.uahalf	0x76a
	.byte	0
	.uleb128 0x2b
	.string	"tokenBuffer"
	.byte	0xa
	.uahalf	0x3ed
	.uaword	0x1e84
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"fblCommonData"
	.byte	0xf
	.byte	0xe4
	.uaword	0x1ec2
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x14ac
	.uleb128 0x11
	.uaword	0x1514
	.uaword	0x1ed7
	.uleb128 0x12
	.uaword	0x522
	.byte	0x9
	.byte	0
	.uleb128 0x2d
	.string	"fblDidTable"
	.byte	0x1
	.byte	0x8a
	.uaword	0x1ef1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fblDidTable
	.uleb128 0x6
	.uaword	0x1ec7
	.uleb128 0x2d
	.string	"kNrOfDids"
	.byte	0x1
	.byte	0xba
	.uaword	0x12a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kNrOfDids
	.uleb128 0x2a
	.string	"applSignValidState"
	.byte	0x10
	.byte	0xba
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"FlashDriver_RReadSync"
	.byte	0x11
	.byte	0xb9
	.byte	0x1
	.uaword	0xa08
	.byte	0x1
	.uaword	0x1f5e
	.uleb128 0xd
	.uaword	0xa1c
	.uleb128 0xd
	.uaword	0x9de
	.uleb128 0xd
	.uaword	0x9f1
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"ApplFblReadVerificationKey"
	.byte	0x10
	.byte	0xd2
	.byte	0x1
	.uaword	0x9c5
	.byte	0x1
	.uaword	0x1f8d
	.uleb128 0xd
	.uaword	0x1f8d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x60d
	.uleb128 0x2e
	.byte	0x1
	.string	"SecM_VerificationClassDDD_Sha256"
	.byte	0xe
	.byte	0x43
	.byte	0x1
	.uaword	0x305
	.byte	0x1
	.uaword	0x1fc8
	.uleb128 0xd
	.uaword	0x9bf
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"SecM_GenerateSeed"
	.byte	0x5
	.byte	0xfe
	.byte	0x1
	.uaword	0x305
	.byte	0x1
	.uaword	0x1fee
	.uleb128 0xd
	.uaword	0x9b9
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0x12
	.uahalf	0x167
	.byte	0x1
	.uaword	0x2fc
	.byte	0x1
	.uaword	0x201a
	.uleb128 0xd
	.uaword	0x2fc
	.uleb128 0xd
	.uaword	0x2fe
	.uleb128 0xd
	.uaword	0x236
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"SecM_InitEntropy"
	.byte	0x5
	.uahalf	0x10c
	.byte	0x1
	.byte	0x1
	.uaword	0x203c
	.uleb128 0xd
	.uaword	0x95f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"FblGetTimerValue"
	.byte	0x12
	.uahalf	0x14a
	.byte	0x1
	.uaword	0x216
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"SecM_ProvideEntropy"
	.byte	0x5
	.uahalf	0x113
	.byte	0x1
	.byte	0x1
	.uaword	0x2087
	.uleb128 0xd
	.uaword	0x95f
	.uleb128 0xd
	.uaword	0x29e
	.uleb128 0xd
	.uaword	0x31c
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"ApplFblReadSecurityBytes"
	.byte	0x10
	.byte	0xcc
	.byte	0x1
	.byte	0x1
	.uaword	0x20b5
	.uleb128 0xd
	.uaword	0x9d8
	.uleb128 0xd
	.uaword	0x216
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"SecM_CompareKey"
	.byte	0x5
	.uahalf	0x106
	.byte	0x1
	.uaword	0x305
	.byte	0x1
	.uleb128 0xd
	.uaword	0x9a5
	.uleb128 0xd
	.uaword	0x965
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
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL21-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x12
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x8f
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25-1
	.uahalf	0x12
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x8f
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x12
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x8f
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x76b
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0x72
	.sleb128 1899
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0x72
	.sleb128 1900
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0x72
	.sleb128 1899
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66-1
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL66-1
	.uaword	.LFE20
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x8c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
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
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0
	.uaword	0
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB14
	.uaword	.LFE14
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
.LASF1:
	.string	"wdTriggerFct"
.LASF2:
	.string	"workspace"
.LASF5:
	.string	"returnCode"
.LASF0:
	.string	"data"
.LASF4:
	.string	"diagReqDataLen"
.LASF6:
	.string	"tokenBuf"
.LASF3:
	.string	"pbDiagData"
.LASF7:
	.string	"tokenLength"
	.extern	errStatLastServiceId,STT_OBJECT,1
	.extern	errStatFblStates,STT_OBJECT,2
	.extern	errStatErrorCode,STT_OBJECT,2
	.extern	errStatFlashDrvErrorCode,STT_OBJECT,2
	.extern	errStatFlashDrvVersion,STT_OBJECT,3
	.extern	SecM_CompareKey,STT_FUNC,0
	.extern	ApplFblReadSecurityBytes,STT_FUNC,0
	.extern	DiagBuffer,STT_OBJECT,4
	.extern	SecM_ProvideEntropy,STT_FUNC,0
	.extern	FblGetTimerValue,STT_FUNC,0
	.extern	SecM_InitEntropy,STT_FUNC,0
	.extern	fblStates,STT_OBJECT,4
	.extern	diagCurrentSecLvl,STT_OBJECT,1
	.extern	SecM_VerificationClassDDD_Sha256,STT_FUNC,0
	.extern	FblRealTimeSupport,STT_FUNC,0
	.extern	diagErrorCode,STT_OBJECT,1
	.extern	ApplFblReadVerificationKey,STT_FUNC,0
	.extern	applSignValidState,STT_OBJECT,1
	.extern	tokenBuffer,STT_OBJECT,1899
	.extern	FblOwnMemcpy,STT_FUNC,0
	.extern	SecM_GenerateSeed,STT_FUNC,0
	.extern	fblCommonData,STT_OBJECT,116
	.extern	FlashDriver_RReadSync,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
