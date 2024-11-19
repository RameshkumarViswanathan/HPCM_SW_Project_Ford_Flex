	.file	"bm_main.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblBmState_CheckKeyAvailability,"ax",@progbits
	.align 1
	.type	FblBmState_CheckKeyAvailability, @function
FblBmState_CheckKeyAvailability:
.LFB21:
	.file 1 "../../../../CBD2300515_D00/BSW/FblBm/bm_main.c"
	.loc 1 1313 0
.LVL0:
	.loc 1 1339 0
	mov	%d2, 0
	ret
.LFE21:
	.size	FblBmState_CheckKeyAvailability, .-FblBmState_CheckKeyAvailability
.section .text.FblBmState_CheckApplStartFlag,"ax",@progbits
	.align 1
	.type	FblBmState_CheckApplStartFlag, @function
FblBmState_CheckApplStartFlag:
.LFB22:
	.loc 1 1390 0
.LVL1:
	.loc 1 1399 0
	movh.a	%a15, hi:fblBmMagicFlag
	ld.bu	%d15, [%a15] lo:fblBmMagicFlag
	ne	%d15, %d15, 65
	.loc 1 1406 0
	mov	%d2, 1
	.loc 1 1399 0
	jnz	%d15, .L3
	.loc 1 1399 0 is_stmt 0 discriminator 1
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 1
	ne	%d15, %d15, 112
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 2
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 2
	ne	%d15, %d15, 112
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 3
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 108
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 4
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 4
	ne	%d15, %d15, 83
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 5
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 5
	ne	%d15, %d15, 105
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 6
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 6
	ne	%d15, %d15, 103
	jnz	%d15, .L3
	.loc 1 1399 0 discriminator 7
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 7
	ne	%d15, %d15, 110
	jnz	%d15, .L3
	.loc 1 1401 0 is_stmt 1
	movh.a	%a2, hi:fblBmMagicFlag
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	st.b	[%a15] 1, %d15
	st.b	[%a15] 2, %d15
	st.b	[%a15] 3, %d15
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d15
	st.b	[%a15] 6, %d15
	st.b	[%a15] 7, %d15
.LVL2:
	.loc 1 1402 0
	mov	%d2, 0
.LVL3:
.L3:
	.loc 1 1410 0
	ret
.LFE22:
	.size	FblBmState_CheckApplStartFlag, .-FblBmState_CheckApplStartFlag
.section .text.FblBmState_TargetListInit,"ax",@progbits
	.align 1
	.type	FblBmState_TargetListInit, @function
FblBmState_TargetListInit:
.LFB25:
	.loc 1 1639 0
.LVL4:
	.loc 1 1648 0
	mov	%d15, 0
	movh.a	%a15, hi:g_BmTargetListIndex
	st.w	[%a15] lo:g_BmTargetListIndex, %d15
.LVL5:
	.loc 1 1652 0
	mov	%d2, 0
	ret
.LFE25:
	.size	FblBmState_TargetListInit, .-FblBmState_TargetListInit
.section .text.FblBmState_TargetListNext,"ax",@progbits
	.align 1
	.type	FblBmState_TargetListNext, @function
FblBmState_TargetListNext:
.LFB27:
	.loc 1 1808 0
.LVL6:
	.loc 1 1817 0
	movh.a	%a15, hi:g_BmTargetListIndex
	ld.w	%d2, [%a15] lo:g_BmTargetListIndex
	add	%d2, 1
	st.w	[%a15] lo:g_BmTargetListIndex, %d2
.LVL7:
	.loc 1 1829 0
	ge.u	%d2, %d2, 2
.LVL8:
	ret
.LFE27:
	.size	FblBmState_TargetListNext, .-FblBmState_TargetListNext
.section .text.FblBmState_CheckFblVerification,"ax",@progbits
	.align 1
	.type	FblBmState_CheckFblVerification, @function
FblBmState_CheckFblVerification:
.LFB28:
	.loc 1 1843 0
.LVL9:
	.loc 1 1869 0
	mov	%d2, 0
	ret
.LFE28:
	.size	FblBmState_CheckFblVerification, .-FblBmState_CheckFblVerification
.section .text.FblBmState_Fail_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_Fail_Entry, @function
FblBmState_Fail_Entry:
.LFB19:
	.loc 1 1022 0
.LVL10:
	.loc 1 1029 0
	movh.a	%a15, hi:g_BmError
	ld.bu	%d4, [%a15] lo:g_BmError
.LVL11:
	call	ApplFblBmFatalError
.LVL12:
	.loc 1 1032 0
	mov	%d2, 1
	ret
.LFE19:
	.size	FblBmState_Fail_Entry, .-FblBmState_Fail_Entry
.section .text.FblBmState_CallFblStayInBoot_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_CallFblStayInBoot_Entry, @function
FblBmState_CallFblStayInBoot_Entry:
.LFB18:
	.loc 1 946 0
.LVL13:
.LBB10:
.LBB11:
	.loc 1 1884 0
	call	ApplFblWDLong
.LVL14:
	.loc 1 1887 0
	mov	%d15, 0
	st.w	0xf0001030, %d15
.LBE11:
.LBE10:
	.loc 1 956 0
	movh.a	%a2, hi:fblBmMagicFlag
	lea	%a15, [%a2] lo:fblBmMagicFlag
	mov	%d15, 83
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	mov	%d15, 116
	st.b	[%a15] 1, %d15
	mov	%d2, 97
	st.b	[%a15] 2, %d2
	mov	%d2, 121
	st.b	[%a15] 3, %d2
	mov	%d2, 66
	st.b	[%a15] 4, %d2
	mov	%d2, 111
	st.b	[%a15] 5, %d2
	st.b	[%a15] 6, %d2
	st.b	[%a15] 7, %d15
	.loc 1 959 0
	movh.a	%a4, hi:fblBmBlockInfo+32
	lea	%a4, [%a4] lo:fblBmBlockInfo+32
	call	ApplFblBmStartSoftware
.LVL15:
	.loc 1 963 0
	mov	%d2, 0
	ret
.LFE18:
	.size	FblBmState_CallFblStayInBoot_Entry, .-FblBmState_CallFblStayInBoot_Entry
.section .text.FblBmState_TargetCheck,"ax",@progbits
	.align 1
	.type	FblBmState_TargetCheck, @function
FblBmState_TargetCheck:
.LFB26:
	.loc 1 1665 0
.LVL16:
	sub.a	%SP, 112
.LCFI0:
	.loc 1 1672 0
	lea	%a15, [%SP] 56
	mov	%e2, 0
	lea	%a2, 7-1
	0:
	st.d	[%a15+]8, %e2
	loop	%a2, 0b
	.loc 1 1683 0
	movh.a	%a15, hi:g_BmTargetListIndex
	ld.w	%d15, [%a15] lo:g_BmTargetListIndex
	movh.a	%a2, hi:FblBm_BootTargetList
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:FblBm_BootTargetList
	madd	%d3, %d2, %d15, 12
	mov.a	%a2, %d3
	ld.bu	%d15, [%a2]0
.LVL17:
	ld.a	%a15, [%a2] 4
.LVL18:
	ld.w	%d8, [%a2] 8
.LVL19:
	.loc 1 1688 0
	mov	%d4, %d15
.LVL20:
	call	ApplFblBmCheckTargetValidity
.LVL21:
	jz	%d2, .L18
.LVL22:
	.loc 1 1691 0
	mov	%d15, 31
.LVL23:
	movh.a	%a15, hi:g_BmError
.LVL24:
	st.b	[%a15] lo:g_BmError, %d15
	mov	%d2, 1
	ret
.LVL25:
.L27:
	.loc 1 1699 0
	mov	%d15, 32
.LVL26:
	movh.a	%a15, hi:g_BmError
.LVL27:
	st.b	[%a15] lo:g_BmError, %d15
	j	.L26
.LVL28:
.L31:
	.loc 1 1729 0 discriminator 1
	jz	%d8, .L21
	.loc 1 1729 0 is_stmt 0
	mov	%d15, 0
.LVL29:
.L24:
	.loc 1 1731 0 is_stmt 1
	ld.bu	%d9, [%a15]0
.LVL30:
	.loc 1 1733 0
	mov	%d4, %d9
	mov.aa	%a4, %SP
	call	FblBmHdrFindValidHeader
.LVL31:
	.loc 1 1735 0
	jz	%d2, .L22
	.loc 1 1759 0
	ld.bu	%d2, [%a15] 1
.LVL32:
	jnz	%d2, .L23
.LVL33:
	.loc 1 1762 0
	mov	%d15, 35
.LVL34:
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	j	.L26
.LVL35:
.L23:
	.loc 1 1767 0
	mov	%d4, %d9
	mov.aa	%a4, %SP
	call	ApplFblBmIsOptionalBlock
.LVL36:
.L22:
	.loc 1 1729 0
	add	%d15, 1
.LVL37:
	add.a	%a15, 2
	jne	%d15, %d8, .L24
.LVL38:
.L21:
	.loc 1 1780 0
	ld.w	%d15, [%SP] 92
	jne	%d15, -1, .L25
.LVL39:
	.loc 1 1783 0
	mov	%d15, 34
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	.loc 1 1784 0
	mov	%d4, 80
	call	ApplFblFatalError
.LVL40:
	j	.L26
.LVL41:
.L25:
	.loc 1 1791 0
	lea	%a15, [%SP] 88
	movh	%d2, hi:g_BmTargetBmHeader
	mov.a	%a3, %d2
	lea	%a2, [%a3] lo:g_BmTargetBmHeader
		# #chunks=3, chunksize=8, remains=0
	lea	%a3, 3-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	mov	%d2, 0
	ret
.LVL42:
.L18:
	.loc 1 1696 0
	mov	%d4, %d15
	lea	%a4, [%SP] 56
	call	FblBmHdrFindValidHeader
.LVL43:
	jnz	%d2, .L27
	j	.L31
.LVL44:
.L26:
	.loc 1 1791 0
	mov	%d2, 1
	.loc 1 1795 0
	ret
.LFE26:
	.size	FblBmState_TargetCheck, .-FblBmState_TargetCheck
.section .text.FblBmState_CheckReprogFlag,"ax",@progbits
	.align 1
	.type	FblBmState_CheckReprogFlag, @function
FblBmState_CheckReprogFlag:
.LFB23:
	.loc 1 1425 0
.LVL45:
	.loc 1 1435 0
	call	ApplFblBmCheckReprogFlag
.LVL46:
	.loc 1 1447 0
	ne	%d2, %d2, 0
.LVL47:
	ret
.LFE23:
	.size	FblBmState_CheckReprogFlag, .-FblBmState_CheckReprogFlag
.section .text.FblBmState_CheckFblLbt,"ax",@progbits
	.align 1
	.type	FblBmState_CheckFblLbt, @function
FblBmState_CheckFblLbt:
.LFB24:
	.loc 1 1460 0
.LVL48:
	.loc 1 1482 0
	movh.a	%a15, hi:fblBmFblHeader
	lea	%a15, [%a15] lo:fblBmFblHeader
	ld.w	%d4, [%a15] 4
.LVL49:
	call	FblLbtActivateLbtBlockByAddress
.LVL50:
	.loc 1 1486 0
	call	FblLbtGetBlockCount
.LVL51:
	.loc 1 1493 0
	mov	%d15, 0
	.loc 1 1486 0
	jlt.u	%d2, 5, .L34
.LVL52:
	.loc 1 1489 0
	mov	%d15, 20
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	.loc 1 1500 0
	call	FblLbtInitPowerOn
.LVL53:
	.loc 1 1488 0
	mov	%d15, 1
.LVL54:
.L34:
	.loc 1 1513 0
	mov	%d2, %d15
	ret
.LFE24:
	.size	FblBmState_CheckFblLbt, .-FblBmState_CheckFblLbt
.section .text.FblBmState_CheckFblValidity,"ax",@progbits
	.align 1
	.type	FblBmState_CheckFblValidity, @function
FblBmState_CheckFblValidity:
.LFB20:
	.loc 1 1045 0
.LVL55:
	.loc 1 1059 0
	movh	%d4, 40962
.LVL56:
	movh.a	%a4, hi:fblBmFblHeader
.LVL57:
	lea	%a4, [%a4] lo:fblBmFblHeader
	mov	%d5, 28
	call	FblReadProm
.LVL58:
	eq	%d2, %d2, 28
	jnz	%d2, .L37
.LVL59:
	.loc 1 1062 0
	mov	%d15, 1
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	j	.L38
.LVL60:
.L41:
	.loc 1 1071 0
	mov	%d15, 2
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	.loc 1 1070 0
	mov	%d15, 1
	j	.L44
.LVL61:
.L45:
	.loc 1 1078 0
	movh.a	%a2, hi:fblBmBlockInfo
	lea	%a4, [%a2] lo:fblBmBlockInfo
	movh.a	%a15, hi:fblBmFblHeader
	lea	%a15, [%a15] lo:fblBmFblHeader
	ld.w	%d15, [%a15] 16
	st.w	[%a4] 12, %d15
	.loc 1 1079 0
	ld.w	%d15, [%a15] 20
	st.w	[%a4] 16, %d15
	.loc 1 1080 0
	ld.w	%d15, [%a15] 24
	st.w	[%a4] 24, %d15
	.loc 1 1081 0
	mov	%d15, 1
	st.b	[%a4] 1, %d15
	.loc 1 1082 0
	mov	%d15, 0
	st.b	[%a2] lo:fblBmBlockInfo, %d15
	.loc 1 1085 0
	mov	%d4, 0
	call	ApplFblBmIsValidBlock
.LVL62:
	jz	%d2, .L40
.LVL63:
	.loc 1 1088 0
	mov	%d15, 5
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	j	.L38
.LVL64:
.L40:
	.loc 1 1106 0
	movh.a	%a4, hi:fblBmBlockInfo
	lea	%a4, [%a4] lo:fblBmBlockInfo
	mov	%d4, 0
	ld.w	%d5, [%a4] 24
	lea	%a4, [%a4] 32
	call	FblBmHdrGetBmHeader
.LVL65:
	mov	%d15, 0
	jz	%d2, .L44
.LVL66:
	.loc 1 1109 0
	mov	%d15, 6
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	.loc 1 1108 0
	mov	%d15, 1
	j	.L44
.LVL67:
.L37:
	.loc 1 1068 0
	movh.a	%a15, hi:fblBmFblHeader
	ld.w	%d15, [%a15] lo:fblBmFblHeader
	movh	%d2, 22598
	addi	%d2, %d2, 10520
	jne	%d15, %d2, .L41
	j	.L45
.LVL68:
.L38:
	.loc 1 1108 0
	mov	%d15, 1
.LVL69:
.L44:
	.loc 1 1114 0
	mov	%d2, %d15
	ret
.LFE20:
	.size	FblBmState_CheckFblValidity, .-FblBmState_CheckFblValidity
.section .text.FblBmState_Init_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_Init_Entry, @function
FblBmState_Init_Entry:
.LFB15:
	.loc 1 737 0
.LVL70:
	.loc 1 747 0
	call	ApplFblBmInitPre
.LVL71:
	.loc 1 750 0
	call	FblInitWatchdog
.LVL72:
	.loc 1 752 0
	call	FblTimerInit
.LVL73:
	.loc 1 755 0
	call	EcuM_StartupTwo
.LVL74:
	.loc 1 775 0
	call	ApplFblBmInitPost
.LVL75:
	.loc 1 778 0
	mov	%d2, 0
	ret
.LFE15:
	.size	FblBmState_Init_Entry, .-FblBmState_Init_Entry
.section .text.FblBmState_PowerOn_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_PowerOn_Entry, @function
FblBmState_PowerOn_Entry:
.LFB14:
	.loc 1 675 0
.LVL76:
	.loc 1 682 0
	mov	%d15, 0
	movh.a	%a15, hi:g_BmError
	st.b	[%a15] lo:g_BmError, %d15
	.loc 1 686 0
	call	ApplFblBmPowerOnPre
.LVL77:
.LBB12:
.LBB13:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE13:
.LBE12:
	.loc 1 697 0
	movh	%d2, hi:FblBmHeader
	addi	%d2, %d2, lo:FblBmHeader
	movh	%d15, 40962
	addi	%d15, %d15, -32
	jeq	%d2, %d15, .L48
	.loc 1 697 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL78:
.L48:
	.loc 1 701 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:WDInitFlag
	st.b	[%a15] lo:WDInitFlag, %d15
	.loc 1 703 0
	call	MemDriver_InitPowerOn
.LVL79:
	.loc 1 711 0
	call	FblLbtInitPowerOn
.LVL80:
	.loc 1 721 0
	call	ApplFblBmPowerOnPost
.LVL81:
	.loc 1 724 0
	mov	%d2, 0
	ret
.LFE14:
	.size	FblBmState_PowerOn_Entry, .-FblBmState_PowerOn_Entry
.section .text.FblStart,"ax",@progbits
	.align 1
	.global	FblStart
	.type	FblStart, @function
FblStart:
.LFB33:
	.loc 1 2010 0
.LBB14:
.LBB15:
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE15:
.LBE14:
	.loc 1 2038 0
	movh.a	%a2, hi:fblBmMagicFlag
	lea	%a15, [%a2] lo:fblBmMagicFlag
	mov	%d15, 80
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	mov	%d15, 114
	st.b	[%a15] 1, %d15
	mov	%d15, 111
	st.b	[%a15] 2, %d15
	mov	%d15, 103
	st.b	[%a15] 3, %d15
	mov	%d2, 83
	st.b	[%a15] 4, %d2
	mov	%d2, 105
	st.b	[%a15] 5, %d2
	st.b	[%a15] 6, %d15
	mov	%d15, 110
	st.b	[%a15] 7, %d15
	.loc 1 2041 0
	call	ApplFblBmReset
.LVL82:
	ret
.LFE33:
	.size	FblStart, .-FblStart
.section .text.ApplStart,"ax",@progbits
	.align 1
	.global	ApplStart
	.type	ApplStart, @function
ApplStart:
.LFB34:
	.loc 1 2064 0
.LBB16:
.LBB17:
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE17:
.LBE16:
	.loc 1 2087 0
	movh.a	%a2, hi:fblBmMagicFlag
	lea	%a15, [%a2] lo:fblBmMagicFlag
	mov	%d15, 65
	st.b	[%a2] lo:fblBmMagicFlag, %d15
	mov	%d15, 112
	st.b	[%a15] 1, %d15
	st.b	[%a15] 2, %d15
	mov	%d15, 108
	st.b	[%a15] 3, %d15
	mov	%d15, 83
	st.b	[%a15] 4, %d15
	mov	%d15, 105
	st.b	[%a15] 5, %d15
	mov	%d15, 103
	st.b	[%a15] 6, %d15
	mov	%d15, 110
	st.b	[%a15] 7, %d15
	.loc 1 2090 0
	call	ApplFblBmReset
.LVL83:
	ret
.LFE34:
	.size	ApplStart, .-ApplStart
.section .text.FblBmState_CallTarget_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_CallTarget_Entry, @function
FblBmState_CallTarget_Entry:
.LFB16:
	.loc 1 855 0
.LVL84:
.LBB20:
.LBB21:
	.loc 1 1884 0
	call	ApplFblWDLong
.LVL85:
	.loc 1 1887 0
	mov	%d15, 0
	st.w	0xf0001030, %d15
.LBE21:
.LBE20:
	.loc 1 866 0
	movh.a	%a4, hi:g_BmTargetBmHeader
	lea	%a4, [%a4] lo:g_BmTargetBmHeader
	call	ApplFblBmStartSoftware
.LVL86:
	.loc 1 870 0
	mov	%d2, 0
	ret
.LFE16:
	.size	FblBmState_CallTarget_Entry, .-FblBmState_CallTarget_Entry
.section .text.FblBmState_CallFbl_Entry,"ax",@progbits
	.align 1
	.type	FblBmState_CallFbl_Entry, @function
FblBmState_CallFbl_Entry:
.LFB17:
	.loc 1 917 0
.LVL87:
.LBB24:
.LBB25:
	.loc 1 1884 0
	call	ApplFblWDLong
.LVL88:
	.loc 1 1887 0
	mov	%d15, 0
	st.w	0xf0001030, %d15
.LBE25:
.LBE24:
	.loc 1 928 0
	movh.a	%a4, hi:fblBmBlockInfo+32
	lea	%a4, [%a4] lo:fblBmBlockInfo+32
	call	ApplFblBmStartSoftware
.LVL89:
	.loc 1 932 0
	mov	%d2, 0
	ret
.LFE17:
	.size	FblBmState_CallFbl_Entry, .-FblBmState_CallFbl_Entry
.section .text.FblMemSetInteger,"ax",@progbits
	.align 1
	.global	FblMemSetInteger
	.type	FblMemSetInteger, @function
FblMemSetInteger:
.LFB30:
	.loc 1 1910 0
.LVL90:
	.loc 1 1919 0
	jz	%d4, .L53
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL91:
.L56:
	.loc 1 1921 0
	add	%d4, -1
.LVL92:
	.loc 1 1923 0
	addsc.a	%a2, %a4, %d4, 0
	st.b	[%a2]0, %d5
	.loc 1 1925 0
	sh	%d5, -8
.LVL93:
	loop	%a15, .L56
.L53:
	ret
.LFE30:
	.size	FblMemSetInteger, .-FblMemSetInteger
.section .text.FblMemGetInteger,"ax",@progbits
	.align 1
	.global	FblMemGetInteger
	.type	FblMemGetInteger, @function
FblMemGetInteger:
.LFB31:
	.loc 1 1938 0
.LVL94:
	.loc 1 1942 0
	mov	%d2, 0
	.loc 1 1946 0
	jz	%d4, .L59
	mov.aa	%a15, %a4
	addsc.a	%a4, %a4, %d4, 0
.LVL95:
	mov.d	%d15, %a15
	not	%d15
	addsc.a	%a4, %a4, %d15, 0
.LVL96:
.L60:
	.loc 1 1949 0
	sh	%d2, %d2, 8
.LVL97:
	.loc 1 1951 0
	ld.bu	%d15, [%a15+]1
.LVL98:
	or	%d2, %d15
.LVL99:
	loop	%a4, .L60
.LVL100:
.L59:
	.loc 1 1957 0
	ret
.LFE31:
	.size	FblMemGetInteger, .-FblMemGetInteger
.section .text.FblMain,"ax",@progbits
	.align 1
	.global	FblMain
	.type	FblMain, @function
FblMain:
.LFB32:
	.loc 1 1969 0
	.loc 1 1971 0
	call	FblFsmInitPowerOn
.LVL101:
	.loc 1 1974 0
	movh.a	%a2, hi:g_BmFsmContext
	lea	%a15, [%a2] lo:g_BmFsmContext
	movh	%d15, hi:bmFsmStates
	addi	%d15, %d15, lo:bmFsmStates
	st.w	[%a2] lo:g_BmFsmContext, %d15
	.loc 1 1975 0
	mov	%d15, 30
	st.h	[%a15] 4, %d15
	.loc 1 1976 0
	mov.aa	%a4, %a15
	mov	%d4, 0
	call	FblFsmInit
.LVL102:
	.loc 1 1978 0
	ld.hu	%d15, [%a15] 6
	eq	%d15, %d15, 29
	jnz	%d15, .L64
	.loc 1 1981 0
	movh.a	%a15, hi:g_BmFsmContext
	lea	%a15, [%a15] lo:g_BmFsmContext
.L66:
	mov.aa	%a4, %a15
	mov	%d4, 4
	call	FblFsmTriggerEvent
.LVL103:
	.loc 1 1982 0
	mov.aa	%a4, %a15
	call	FblFsmStateTask
.LVL104:
	.loc 1 1978 0
	ld.hu	%d15, [%a15] 6
	ne	%d15, %d15, 29
	jnz	%d15, .L66
.L64:
	.loc 1 1985 0
	mov	%d4, 38
	call	ApplFblBmFatalError
.LVL105:
	ret
.LFE32:
	.size	FblMain, .-FblMain
.section .rodata,"a",@progbits
	.align 2
	.type	bmFsmStates, @object
	.size	bmFsmStates, 240
bmFsmStates:
	.short	-1
	.short	2
	.word	g_BmState_PowerOn
	.short	-1
	.short	2
	.word	g_BmState_Init
	.short	-1
	.short	2
	.word	g_BmState_CheckFblValidity
	.short	-1
	.short	1
	.word	g_BmState_FailsafeUpdaterEnabled
	.short	-1
	.short	1
	.word	g_BmState_FailsafeUpdaterSearchInit
	.short	-1
	.short	1
	.word	g_BmState_FailsafeUpdaterCheck
	.short	-1
	.short	1
	.word	g_BmState_FailsafeUpdaterSearchNext
	.short	-1
	.short	1
	.word	g_BmState_CallFailsafeUpdater
	.short	-1
	.short	1
	.word	g_BmState_SecureBootEnabled
	.short	-1
	.short	2
	.word	g_BmState_CheckKeyAvailability
	.short	-1
	.short	1
	.word	g_BmState_CallFblInitKey
	.short	-1
	.short	1
	.word	g_BmState_InitFblMacEnabled
	.short	-1
	.short	1
	.word	g_BmState_CheckFblMacErased
	.short	-1
	.short	1
	.word	g_BmState_CallFblInitCmac
	.short	-1
	.short	1
	.word	g_BmState_StayInBootEnabled
	.short	-1
	.short	2
	.word	g_BmState_CheckApplStartFlag
	.short	-1
	.short	2
	.word	g_BmState_CheckFblLbt
	.short	-1
	.short	2
	.word	g_BmState_CheckReprogFlag
	.short	-1
	.short	1
	.word	g_BmState_ReprogLbtEnabled
	.short	-1
	.short	1
	.word	g_BmState_CheckReprogLbt
	.short	-1
	.short	2
	.word	g_BmState_TargetListInit
	.short	-1
	.short	2
	.word	g_BmState_TargetCheck
	.short	-1
	.short	2
	.word	g_BmState_TargetListNext
	.short	-1
	.short	2
	.word	g_BmState_CallTarget
	.short	-1
	.short	2
	.word	g_BmState_CheckFblVerification
	.short	-1
	.short	2
	.word	g_BmState_CheckFblVerificationStayInBoot
	.short	-1
	.short	2
	.word	g_BmState_CallFbl
	.short	-1
	.short	2
	.word	g_BmState_CallFblStayInBoot
	.short	-1
	.short	1
	.word	g_BmState_CheckFblSegments
	.short	-1
	.short	1
	.word	g_BmState_Fail
	.align 2
	.type	g_BmState_Fail, @object
	.size	g_BmState_Fail, 8
g_BmState_Fail:
	.word	FblBmState_Fail_Entry
	.short	1
	.short	-1
	.align 2
	.type	g_BmState_CheckFblSegments, @object
	.size	g_BmState_CheckFblSegments, 8
g_BmState_CheckFblSegments:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	17
	.align 2
	.type	g_BmState_CallFblStayInBoot, @object
	.size	g_BmState_CallFblStayInBoot, 16
g_BmState_CallFblStayInBoot:
	.word	FblBmState_CallFblStayInBoot_Entry
	.short	1
	.short	-1
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CallFbl, @object
	.size	g_BmState_CallFbl, 16
g_BmState_CallFbl:
	.word	FblBmState_CallFbl_Entry
	.short	1
	.short	-1
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckFblVerificationStayInBoot, @object
	.size	g_BmState_CheckFblVerificationStayInBoot, 16
g_BmState_CheckFblVerificationStayInBoot:
	.word	FblBmState_CheckFblVerification
	.short	4
	.short	27
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckFblVerification, @object
	.size	g_BmState_CheckFblVerification, 16
g_BmState_CheckFblVerification:
	.word	FblBmState_CheckFblVerification
	.short	4
	.short	26
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CallTarget, @object
	.size	g_BmState_CallTarget, 16
g_BmState_CallTarget:
	.word	FblBmState_CallTarget_Entry
	.short	1
	.short	-1
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_TargetListNext, @object
	.size	g_BmState_TargetListNext, 16
g_BmState_TargetListNext:
	.word	FblBmState_TargetListNext
	.short	4
	.short	21
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	24
	.align 2
	.type	g_BmState_TargetCheck, @object
	.size	g_BmState_TargetCheck, 16
g_BmState_TargetCheck:
	.word	FblBmState_TargetCheck
	.short	4
	.short	23
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	22
	.align 2
	.type	g_BmState_TargetListInit, @object
	.size	g_BmState_TargetListInit, 16
g_BmState_TargetListInit:
	.word	FblBmState_TargetListInit
	.short	4
	.short	21
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckReprogLbt, @object
	.size	g_BmState_CheckReprogLbt, 8
g_BmState_CheckReprogLbt:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	29
	.align 2
	.type	g_BmState_ReprogLbtEnabled, @object
	.size	g_BmState_ReprogLbtEnabled, 8
g_BmState_ReprogLbtEnabled:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	20
	.align 2
	.type	g_BmState_CheckReprogFlag, @object
	.size	g_BmState_CheckReprogFlag, 16
g_BmState_CheckReprogFlag:
	.word	FblBmState_CheckReprogFlag
	.short	4
	.short	24
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	14
	.align 2
	.type	g_BmState_CheckFblLbt, @object
	.size	g_BmState_CheckFblLbt, 16
g_BmState_CheckFblLbt:
	.word	FblBmState_CheckFblLbt
	.short	4
	.short	18
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckApplStartFlag, @object
	.size	g_BmState_CheckApplStartFlag, 16
g_BmState_CheckApplStartFlag:
	.word	FblBmState_CheckApplStartFlag
	.short	4
	.short	16
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	25
	.align 2
	.type	g_BmState_StayInBootEnabled, @object
	.size	g_BmState_StayInBootEnabled, 8
g_BmState_StayInBootEnabled:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	15
	.align 2
	.type	g_BmState_CallFblInitCmac, @object
	.size	g_BmState_CallFblInitCmac, 8
g_BmState_CallFblInitCmac:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckFblMacErased, @object
	.size	g_BmState_CheckFblMacErased, 8
g_BmState_CheckFblMacErased:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	29
	.align 2
	.type	g_BmState_InitFblMacEnabled, @object
	.size	g_BmState_InitFblMacEnabled, 8
g_BmState_InitFblMacEnabled:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	28
	.align 2
	.type	g_BmState_CallFblInitKey, @object
	.size	g_BmState_CallFblInitKey, 8
g_BmState_CallFblInitKey:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_CheckKeyAvailability, @object
	.size	g_BmState_CheckKeyAvailability, 16
g_BmState_CheckKeyAvailability:
	.word	FblBmState_CheckKeyAvailability
	.short	4
	.short	11
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	10
	.align 2
	.type	g_BmState_SecureBootEnabled, @object
	.size	g_BmState_SecureBootEnabled, 8
g_BmState_SecureBootEnabled:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	28
	.align 2
	.type	g_BmState_CallFailsafeUpdater, @object
	.size	g_BmState_CallFailsafeUpdater, 8
g_BmState_CallFailsafeUpdater:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_FailsafeUpdaterSearchNext, @object
	.size	g_BmState_FailsafeUpdaterSearchNext, 8
g_BmState_FailsafeUpdaterSearchNext:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_FailsafeUpdaterCheck, @object
	.size	g_BmState_FailsafeUpdaterCheck, 8
g_BmState_FailsafeUpdaterCheck:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_FailsafeUpdaterSearchInit, @object
	.size	g_BmState_FailsafeUpdaterSearchInit, 8
g_BmState_FailsafeUpdaterSearchInit:
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	29
	.align 2
	.type	g_BmState_FailsafeUpdaterEnabled, @object
	.size	g_BmState_FailsafeUpdaterEnabled, 8
g_BmState_FailsafeUpdaterEnabled:
	.word	FblFsmEventHandlerDefault
	.short	1
	.short	29
	.align 2
	.type	g_BmState_CheckFblValidity, @object
	.size	g_BmState_CheckFblValidity, 16
g_BmState_CheckFblValidity:
	.word	FblBmState_CheckFblValidity
	.short	4
	.short	8
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	3
	.align 2
	.type	g_BmState_Init, @object
	.size	g_BmState_Init, 16
g_BmState_Init:
	.word	FblBmState_Init_Entry
	.short	1
	.short	-1
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	2
	.align 2
	.type	g_BmState_PowerOn, @object
	.size	g_BmState_PowerOn, 16
g_BmState_PowerOn:
	.word	FblBmState_PowerOn_Entry
	.short	1
	.short	-1
	.word	FblFsmEventHandlerDefault
	.short	4
	.short	1
	.local	g_BmError
.section .bss,"aw",@nobits
	.align 0
	.type		 g_BmError,@object
	.size		 g_BmError,1
g_BmError:
	.space	1
	.local	g_BmTargetBmHeader
	.align 2
	.type		 g_BmTargetBmHeader,@object
	.size		 g_BmTargetBmHeader,24
g_BmTargetBmHeader:
	.space	24
	.local	g_BmTargetListIndex
	.align 2
	.type		 g_BmTargetListIndex,@object
	.size		 g_BmTargetListIndex,4
g_BmTargetListIndex:
	.space	4
	.local	g_BmFsmContext
	.align 2
	.type		 g_BmFsmContext,@object
	.size		 g_BmFsmContext,12
g_BmFsmContext:
	.space	12
	.local	fblBmFblHeader
	.align 2
	.type		 fblBmFblHeader,@object
	.size		 fblBmFblHeader,28
fblBmFblHeader:
	.space	28
	.local	fblBmBlockInfo
	.align 2
	.type		 fblBmBlockInfo,@object
	.size		 fblBmBlockInfo,56
fblBmBlockInfo:
	.space	56
	.global	FblBmHeader
.section .BmHeaderSection,"a",@progbits
	.align 2
	.type	FblBmHeader, @object
	.size	FblBmHeader, 28
FblBmHeader:
	.word	99397639
	.short	1
	.short	0
	.word	-1610481664
	.word	FblStart
	.word	ApplStart
	.word	0
	.word	-826011296
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x70
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE38:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../../../BSW/_Common/Platform_Types.h"
	.file 4 "../../../BSW/_Common/v_def.h"
	.file 5 "../../../BSW/Fbl/fbl_def.h"
	.file 6 "GenData/Fbl_Lbt.h"
	.file 7 "GenData/FblBmHdr_Cfg.h"
	.file 8 "../../../BSW/FblBmHdr/bm_hdr_types.h"
	.file 9 "GenData/FblBm_Lcfg.h"
	.file 10 "../../../BSW/FblBm/bm_types_header.h"
	.file 11 "../../../BSW/FblBm/bm_types.h"
	.file 12 "../../../BSW/FblBm/bm_main.h"
	.file 13 "../../../BSW/Fbl/fbl_main_types.h"
	.file 14 "../../../BSW/Fbl/fbl_fsm.h"
	.file 15 "../../../BSW/Fbl/fbl_wd.h"
	.file 16 "../../../BSW/FblBm/bm_shared.h"
	.file 17 "Include/bm_ap.h"
	.file 18 "../../../BSW/FblBmHdr/bm_hdr.h"
	.file 19 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 20 "Include/fbl_apwd.h"
	.file 21 "../../../BSW/Fbl/fbl_mio.h"
	.file 22 "../../../BSW/Fbl/fbl_hw.h"
	.file 23 "Include/EcuM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2c4a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/FblBm/bm_main.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x65
	.uaword	0x155
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
	.uleb128 0x2
	.string	"uint16"
	.byte	0x3
	.byte	0x6a
	.uaword	0x190
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x3
	.byte	0x6c
	.uaword	0x1c0
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
	.byte	0x4
	.uahalf	0x233
	.uaword	0x155
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x4
	.uahalf	0x23e
	.uaword	0x190
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x1c0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x5
	.uahalf	0x14b
	.uaword	0x213
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x5
	.uahalf	0x15a
	.uaword	0x232
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x5
	.uahalf	0x15b
	.uaword	0x232
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x5
	.uahalf	0x165
	.uaword	0x265
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x5
	.uahalf	0x166
	.uaword	0x27b
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x5
	.uahalf	0x176
	.uaword	0x2ce
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d4
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x213
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x6
	.byte	0x5e
	.uaword	0x213
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x6
	.byte	0x5f
	.uaword	0x146
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x6
	.byte	0x60
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x6
	.byte	0x61
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtMagicFlag"
	.byte	0x6
	.byte	0x62
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtAssignFlags"
	.byte	0x6
	.byte	0x63
	.uaword	0x213
	.uleb128 0x2
	.string	"tFblLbtBlockCount"
	.byte	0x6
	.byte	0x64
	.uaword	0x213
	.uleb128 0x7
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x6
	.byte	0x68
	.uaword	0x46f
	.uleb128 0x8
	.string	"blockNr"
	.byte	0x6
	.byte	0x69
	.uaword	0x2e8
	.byte	0
	.uleb128 0x8
	.string	"mandatoryType"
	.byte	0x6
	.byte	0x6a
	.uaword	0x2fe
	.byte	0x1
	.uleb128 0x8
	.string	"blockIndex"
	.byte	0x6
	.byte	0x6b
	.uaword	0x31a
	.byte	0x4
	.uleb128 0x8
	.string	"blockType"
	.byte	0x6
	.byte	0x6c
	.uaword	0x333
	.byte	0x8
	.uleb128 0x8
	.string	"blockStartAddress"
	.byte	0x6
	.byte	0x6d
	.uaword	0x294
	.byte	0xc
	.uleb128 0x8
	.string	"blockLength"
	.byte	0x6
	.byte	0x6e
	.uaword	0x2a8
	.byte	0x10
	.uleb128 0x8
	.string	"headerAddress"
	.byte	0x6
	.byte	0x6f
	.uaword	0x294
	.byte	0x14
	.uleb128 0x8
	.string	"bmHeaderAddress"
	.byte	0x6
	.byte	0x70
	.uaword	0x294
	.byte	0x18
	.uleb128 0x8
	.string	"verifyOutput"
	.byte	0x6
	.byte	0x71
	.uaword	0x2bb
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x6
	.byte	0x72
	.uaword	0x396
	.uleb128 0x7
	.string	"tLogicalBlockTableTag"
	.byte	0x88
	.byte	0x6
	.byte	0x75
	.uaword	0x4e5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x76
	.uaword	0x34b
	.byte	0
	.uleb128 0x8
	.string	"assignFlags"
	.byte	0x6
	.byte	0x77
	.uaword	0x4e5
	.byte	0x4
	.uleb128 0x8
	.string	"noOfBlocks"
	.byte	0x6
	.byte	0x78
	.uaword	0x37d
	.byte	0x5
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x6
	.byte	0x79
	.uaword	0x4f5
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	0x363
	.uaword	0x4f5
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x46f
	.uaword	0x505
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.string	"tLogicalBlockTable"
	.byte	0x6
	.byte	0x7a
	.uaword	0x487
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0x82
	.uaword	0x598
	.uleb128 0xd
	.string	"FBLBMHDR_TARGET_FBL"
	.sleb128 0
	.uleb128 0xd
	.string	"FBLBMHDR_TARGET_FBLUPDATER"
	.sleb128 1
	.uleb128 0xd
	.string	"FBLBMHDR_TARGET_APPL"
	.sleb128 2
	.uleb128 0xd
	.string	"FBLBMHDR_TARGET_DATA"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrTargetHandle"
	.byte	0x7
	.byte	0x87
	.uaword	0x52e
	.uleb128 0xe
	.byte	0x18
	.byte	0x7
	.byte	0x91
	.uaword	0x658
	.uleb128 0x8
	.string	"bmMagicFlag"
	.byte	0x7
	.byte	0x93
	.uaword	0x1b2
	.byte	0
	.uleb128 0x8
	.string	"bmEntryAddress"
	.byte	0x7
	.byte	0x94
	.uaword	0x1b2
	.byte	0x4
	.uleb128 0x8
	.string	"bmTargetHandle"
	.byte	0x7
	.byte	0x95
	.uaword	0x598
	.byte	0x8
	.uleb128 0x8
	.string	"bmBlockStartAddress"
	.byte	0x7
	.byte	0x96
	.uaword	0x1b2
	.byte	0xc
	.uleb128 0x8
	.string	"bmBlockLength"
	.byte	0x7
	.byte	0x97
	.uaword	0x1b2
	.byte	0x10
	.uleb128 0x8
	.string	"bmAuthenticationHeaderAddress"
	.byte	0x7
	.byte	0x98
	.uaword	0x1b2
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrHeader"
	.byte	0x7
	.byte	0x99
	.uaword	0x5b5
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.uaword	0x76d
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_OK"
	.sleb128 0
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_BLOCK_INVALID"
	.sleb128 1
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_READ_FAIL"
	.sleb128 2
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_HEADER_INCONSISTENT"
	.sleb128 3
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_WRONG_TARGET"
	.sleb128 4
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_GET_MAC_FAIL"
	.sleb128 5
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_VERIFICATION_FAIL"
	.sleb128 6
	.uleb128 0xd
	.string	"FBLBMHDR_CHKHDR_NOT_FOUND"
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrCheckBmHeaderResult"
	.byte	0x8
	.byte	0x3c
	.uaword	0x66f
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x3c
	.uaword	0x7d5
	.uleb128 0xd
	.string	"FBLBM_TARGET_TYPE_MANDATORY"
	.sleb128 0
	.uleb128 0xd
	.string	"FBLBM_TARGET_TYPE_OPTIONAL"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"tFblBmTargetType"
	.byte	0x9
	.byte	0x3f
	.uaword	0x791
	.uleb128 0xe
	.byte	0x2
	.byte	0x9
	.byte	0x41
	.uaword	0x80f
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x9
	.byte	0x43
	.uaword	0x598
	.byte	0
	.uleb128 0x8
	.string	"type"
	.byte	0x9
	.byte	0x44
	.uaword	0x7d5
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrTargetDependency"
	.byte	0x9
	.byte	0x45
	.uaword	0x7ed
	.uleb128 0xe
	.byte	0xc
	.byte	0x9
	.byte	0x47
	.uaword	0x873
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x9
	.byte	0x49
	.uaword	0x598
	.byte	0
	.uleb128 0x8
	.string	"dependencies"
	.byte	0x9
	.byte	0x4a
	.uaword	0x873
	.byte	0x4
	.uleb128 0x8
	.string	"dependenciesSize"
	.byte	0x9
	.byte	0x4b
	.uaword	0x232
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x879
	.uleb128 0xf
	.uaword	0x80f
	.uleb128 0x2
	.string	"tFblBmHdrTargetListEntry"
	.byte	0x9
	.byte	0x4c
	.uaword	0x830
	.uleb128 0x2
	.string	"tFblStrtFct"
	.byte	0xa
	.byte	0x6e
	.uaword	0x2ce
	.uleb128 0x2
	.string	"tApplStrtFct"
	.byte	0xa
	.byte	0x76
	.uaword	0x2ce
	.uleb128 0xe
	.byte	0x1c
	.byte	0xa
	.byte	0x7a
	.uaword	0x96d
	.uleb128 0x8
	.string	"magic"
	.byte	0xa
	.byte	0x7c
	.uaword	0x1b2
	.byte	0
	.uleb128 0x8
	.string	"majorVersion"
	.byte	0xa
	.byte	0x7d
	.uaword	0x182
	.byte	0x4
	.uleb128 0x8
	.string	"minorVersion"
	.byte	0xa
	.byte	0x7e
	.uaword	0x182
	.byte	0x6
	.uleb128 0x8
	.string	"fblHeaderAddress"
	.byte	0xa
	.byte	0x7f
	.uaword	0x1b2
	.byte	0x8
	.uleb128 0x8
	.string	"pFblStartFct"
	.byte	0xa
	.byte	0x80
	.uaword	0x89e
	.byte	0xc
	.uleb128 0x8
	.string	"pApplStartFct"
	.byte	0xa
	.byte	0x81
	.uaword	0x8b1
	.byte	0x10
	.uleb128 0x8
	.string	"checksum"
	.byte	0xa
	.byte	0x82
	.uaword	0x1b2
	.byte	0x14
	.uleb128 0x8
	.string	"end_magic"
	.byte	0xa
	.byte	0x83
	.uaword	0x1b2
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHeader"
	.byte	0xa
	.byte	0x84
	.uaword	0x8c5
	.uleb128 0xe
	.byte	0x38
	.byte	0xb
	.byte	0x5b
	.uaword	0x9a2
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0xb
	.byte	0x5d
	.uaword	0x46f
	.byte	0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0xb
	.byte	0x5e
	.uaword	0x658
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.string	"tFblBmBlockInfo"
	.byte	0xb
	.byte	0x5f
	.uaword	0x981
	.uleb128 0xc
	.byte	0x1
	.byte	0xb
	.byte	0x63
	.uaword	0xf99
	.uleb128 0xd
	.string	"FBLBM_ERROR_NO_ERROR"
	.sleb128 0
	.uleb128 0xd
	.string	"FBLBM_ERROR_HEADER_READ_FAILED"
	.sleb128 1
	.uleb128 0xd
	.string	"FBLBM_ERROR_HEADER_MAGIC_FAILED"
	.sleb128 2
	.uleb128 0xd
	.string	"FBLBM_ERROR_HEADER_VERSION_FAILED"
	.sleb128 3
	.uleb128 0xd
	.string	"FBLBM_ERROR_HEADER_LENGTH_FAILED"
	.sleb128 4
	.uleb128 0xd
	.string	"FBLBM_ERROR_VALIDITY_FAILED"
	.sleb128 5
	.uleb128 0xd
	.string	"FBLBM_ERROR_FBL_BMHEADER_INCORRECT"
	.sleb128 6
	.uleb128 0xd
	.string	"FBLBM_ERROR_FBL_VERIFICATION_FAILED"
	.sleb128 7
	.uleb128 0xd
	.string	"FBLBM_ERROR_FBL_FBLHEADER_FAILED"
	.sleb128 8
	.uleb128 0xd
	.string	"FBLBM_ERROR_KEY_NOT_AVAILABLE"
	.sleb128 9
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_SEARCH_INIT_FAILED"
	.sleb128 10
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_SEARCH_NEXT_FINISHED"
	.sleb128 11
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_HEADER_ADDRESS"
	.sleb128 12
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_HEADER_READ_ERROR"
	.sleb128 13
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_HEADER_CONSISTENCY"
	.sleb128 14
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_HEADER_TYPE"
	.sleb128 15
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_BLOCK_VALIDITY"
	.sleb128 16
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_HEADER_CMAC_VERIFY"
	.sleb128 17
	.uleb128 0xd
	.string	"FBLBM_ERROR_UPDATER_VERIFY"
	.sleb128 18
	.uleb128 0xd
	.string	"FBLBM_ERROR_LBT_POINTER_NULL"
	.sleb128 19
	.uleb128 0xd
	.string	"FBLBM_ERROR_LBT_TOO_LARGE"
	.sleb128 20
	.uleb128 0xd
	.string	"FBLBM_ERROR_LBT_SIZE"
	.sleb128 21
	.uleb128 0xd
	.string	"FBLBM_ERROR_LBT_VERIFY"
	.sleb128 22
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_DESCR"
	.sleb128 23
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_INVALID"
	.sleb128 24
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_BMHEADER_INCORRECT"
	.sleb128 25
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_VERIFY_HEADER"
	.sleb128 26
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_VERIFY_SEGMENTS"
	.sleb128 27
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_MAGIC_FLAG"
	.sleb128 28
	.uleb128 0xd
	.string	"FBLBM_ERROR_REPROG_LBT_BLOCK_COUNT"
	.sleb128 29
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_LIST_INIT"
	.sleb128 30
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_INVALID"
	.sleb128 31
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_NO_VALID_HEADER"
	.sleb128 32
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_VERIFICATION_FAILED"
	.sleb128 33
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_INVALID_ADDRESS"
	.sleb128 34
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_DEP_MANDATORY_MISSING"
	.sleb128 35
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_DEP_NO_VALID_HEADER"
	.sleb128 36
	.uleb128 0xd
	.string	"FBLBM_ERROR_TARGET_DEP_VERIFY_FAILED"
	.sleb128 37
	.uleb128 0xd
	.string	"FBLBM_ERROR_END_OF_MAIN_REACHED"
	.sleb128 38
	.uleb128 0xd
	.string	"FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL"
	.sleb128 39
	.uleb128 0xd
	.string	"FBLBM_ERROR_AP_CHECK_MAC_BUF_LENGTH"
	.sleb128 40
	.uleb128 0xd
	.string	"FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL_LENGTH"
	.sleb128 41
	.byte	0
	.uleb128 0x2
	.string	"tFblBmError"
	.byte	0xb
	.byte	0x8e
	.uaword	0x9b9
	.uleb128 0x2
	.string	"tFblMemRamData"
	.byte	0xc
	.byte	0x63
	.uaword	0x2d6
	.uleb128 0x2
	.string	"tFblMemConstRamData"
	.byte	0xc
	.byte	0x65
	.uaword	0xfdd
	.uleb128 0x5
	.byte	0x4
	.uaword	0xfe3
	.uleb128 0xf
	.uaword	0x213
	.uleb128 0x2
	.string	"tFblCommonDataPtr"
	.byte	0xd
	.byte	0x4b
	.uaword	0x1001
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1007
	.uleb128 0x10
	.uleb128 0x2
	.string	"tFblHeaderLogicalBlockTablePtr"
	.byte	0xd
	.byte	0x4f
	.uaword	0x102e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1034
	.uleb128 0xf
	.uaword	0x505
	.uleb128 0x2
	.string	"tFblHeaderBmHeaderPtr"
	.byte	0xd
	.byte	0x51
	.uaword	0x1056
	.uleb128 0x5
	.byte	0x4
	.uaword	0x105c
	.uleb128 0xf
	.uaword	0x658
	.uleb128 0xe
	.byte	0x1c
	.byte	0xd
	.byte	0x54
	.uaword	0x10fc
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0xd
	.byte	0x56
	.uaword	0x232
	.byte	0
	.uleb128 0x8
	.string	"pLogicalBlockTable"
	.byte	0xd
	.byte	0x57
	.uaword	0x1008
	.byte	0x4
	.uleb128 0x8
	.string	"logicalBlockTableSize"
	.byte	0xd
	.byte	0x58
	.uaword	0x2a8
	.byte	0x8
	.uleb128 0x8
	.string	"pFblCommonData"
	.byte	0xd
	.byte	0x5a
	.uaword	0xfe8
	.byte	0xc
	.uleb128 0x8
	.string	"fblStartAddress"
	.byte	0xd
	.byte	0x5c
	.uaword	0x294
	.byte	0x10
	.uleb128 0x8
	.string	"fblLength"
	.byte	0xd
	.byte	0x5d
	.uaword	0x2a8
	.byte	0x14
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0xd
	.byte	0x5e
	.uaword	0x1039
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.string	"tFblHeader"
	.byte	0xd
	.byte	0x5f
	.uaword	0x1061
	.uleb128 0x2
	.string	"tFblFsmState"
	.byte	0xe
	.byte	0x5c
	.uaword	0x222
	.uleb128 0x2
	.string	"tFblFsmEvent"
	.byte	0xe
	.byte	0x5f
	.uaword	0x222
	.uleb128 0xc
	.byte	0x1
	.byte	0xe
	.byte	0x68
	.uaword	0x11c7
	.uleb128 0xd
	.string	"kFblFsmDefaultEvent_None"
	.sleb128 0
	.uleb128 0xd
	.string	"kFblFsmDefaultEvent_Entry"
	.sleb128 1
	.uleb128 0xd
	.string	"kFblFsmDefaultEvent_Exit"
	.sleb128 2
	.uleb128 0xd
	.string	"kFblFsmDefaultEvent_Any"
	.sleb128 3
	.uleb128 0xd
	.string	"kFblFsmDefaultEvent_Count"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0xe
	.byte	0x73
	.uaword	0x1212
	.uleb128 0xd
	.string	"kFblFsmGuard_True"
	.sleb128 0
	.uleb128 0xd
	.string	"kFblFsmGuard_False"
	.sleb128 1
	.uleb128 0xd
	.string	"kFblFsmGuard_Overwrite"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"tFblFsmGuard"
	.byte	0xe
	.byte	0x77
	.uaword	0x11c7
	.uleb128 0x2
	.string	"tFblFsmContext"
	.byte	0xe
	.byte	0x7a
	.uaword	0x123c
	.uleb128 0x7
	.string	"sFblFsmContext"
	.byte	0xc
	.byte	0xe
	.byte	0x93
	.uaword	0x12b8
	.uleb128 0x8
	.string	"stateDefinitions"
	.byte	0xe
	.byte	0x96
	.uaword	0x13d1
	.byte	0
	.uleb128 0x8
	.string	"stateCount"
	.byte	0xe
	.byte	0x97
	.uaword	0x222
	.byte	0x4
	.uleb128 0x8
	.string	"state"
	.byte	0xe
	.byte	0x98
	.uaword	0x110e
	.byte	0x6
	.uleb128 0x8
	.string	"pendingState"
	.byte	0xe
	.byte	0x99
	.uaword	0x110e
	.byte	0x8
	.uleb128 0x8
	.string	"pendingEvent"
	.byte	0xe
	.byte	0x9a
	.uaword	0x1122
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.string	"tFblFsmContextPtr"
	.byte	0xe
	.byte	0x7d
	.uaword	0x12d1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1226
	.uleb128 0x2
	.string	"tFblFsmEventHandler"
	.byte	0xe
	.byte	0x80
	.uaword	0x12f2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x12f8
	.uleb128 0x11
	.byte	0x1
	.uaword	0x1212
	.uaword	0x130d
	.uleb128 0x12
	.uaword	0x130d
	.uleb128 0x12
	.uaword	0x1122
	.byte	0
	.uleb128 0xf
	.uaword	0x12b8
	.uleb128 0xe
	.byte	0x8
	.byte	0xe
	.byte	0x82
	.uaword	0x134d
	.uleb128 0x8
	.string	"handler"
	.byte	0xe
	.byte	0x84
	.uaword	0x12d7
	.byte	0
	.uleb128 0x8
	.string	"trigger"
	.byte	0xe
	.byte	0x85
	.uaword	0x1122
	.byte	0x4
	.uleb128 0x8
	.string	"nextState"
	.byte	0xe
	.byte	0x86
	.uaword	0x110e
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.string	"tFblFsmEventEntry"
	.byte	0xe
	.byte	0x87
	.uaword	0x1312
	.uleb128 0xe
	.byte	0x8
	.byte	0xe
	.byte	0x8a
	.uaword	0x13a8
	.uleb128 0x8
	.string	"superState"
	.byte	0xe
	.byte	0x8c
	.uaword	0x110e
	.byte	0
	.uleb128 0x8
	.string	"triggerCount"
	.byte	0xe
	.byte	0x8d
	.uaword	0x222
	.byte	0x2
	.uleb128 0x8
	.string	"triggers"
	.byte	0xe
	.byte	0x8f
	.uaword	0x13a8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x13ae
	.uleb128 0xf
	.uaword	0x134d
	.uleb128 0x2
	.string	"tFblFsmStateDefinition"
	.byte	0xe
	.byte	0x90
	.uaword	0x1366
	.uleb128 0x5
	.byte	0x4
	.uaword	0x13d7
	.uleb128 0xf
	.uaword	0x13b3
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0x8f
	.uaword	0x17c0
	.uleb128 0xd
	.string	"FBLBM_STATE_POWER_ON"
	.sleb128 0
	.uleb128 0xd
	.string	"FBLBM_STATE_INIT"
	.sleb128 1
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_VALIDITY"
	.sleb128 2
	.uleb128 0xd
	.string	"FBLBM_STATE_FAILSAFE_UPDATER_ENABLED"
	.sleb128 3
	.uleb128 0xd
	.string	"FBLBM_STATE_FAILSAFE_UPDATER_SEARCH_INIT"
	.sleb128 4
	.uleb128 0xd
	.string	"FBLBM_STATE_FAILSAFE_UPDATER_CHECK"
	.sleb128 5
	.uleb128 0xd
	.string	"FBLBM_STATE_FAILSAFE_UPDATER_SEARCH_NEXT"
	.sleb128 6
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_FAILSAFE_UPDATER"
	.sleb128 7
	.uleb128 0xd
	.string	"FBLBM_STATE_SECURE_BOOT_ENABLED"
	.sleb128 8
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_KEY_AVAILABILITY"
	.sleb128 9
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_FBL_INIT_KEY"
	.sleb128 10
	.uleb128 0xd
	.string	"FBLBM_STATE_INIT_FBL_MAC_ENABLED"
	.sleb128 11
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_MAC_ERASED"
	.sleb128 12
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_FBL_INIT_CMAC"
	.sleb128 13
	.uleb128 0xd
	.string	"FBLBM_STATE_STAY_IN_BOOT_ENABLED"
	.sleb128 14
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_APPL_START_FLAG"
	.sleb128 15
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_LBT"
	.sleb128 16
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_REPROG_FLAG"
	.sleb128 17
	.uleb128 0xd
	.string	"FBLBM_STATE_REPROG_LBT_ENABLED"
	.sleb128 18
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_REPROG_LBT"
	.sleb128 19
	.uleb128 0xd
	.string	"FBLBM_STATE_TARGET_LIST_INIT"
	.sleb128 20
	.uleb128 0xd
	.string	"FBLBM_STATE_TARGET_CHECK"
	.sleb128 21
	.uleb128 0xd
	.string	"FBLBM_STATE_TARGET_LIST_NEXT"
	.sleb128 22
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_TARGET"
	.sleb128 23
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_VERIFICATION"
	.sleb128 24
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_VERIFICATION_STAY_IN_BOOT"
	.sleb128 25
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_FBL"
	.sleb128 26
	.uleb128 0xd
	.string	"FBLBM_STATE_CALL_FBL_STAY_IN_BOOT"
	.sleb128 27
	.uleb128 0xd
	.string	"FBLBM_STATE_CHECK_FBL_SEGMENTS"
	.sleb128 28
	.uleb128 0xd
	.string	"FBLBM_STATE_FAIL"
	.sleb128 29
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0xb2
	.uaword	0x17e0
	.uleb128 0xd
	.string	"FBLBM_EVENT_CONTINUE"
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.string	"_disable"
	.byte	0x2
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"FblBmState_CheckKeyAvailability"
	.byte	0x1
	.uahalf	0x520
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1850
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x520
	.uaword	0x130d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x520
	.uaword	0x1122
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x522
	.uaword	0x1212
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CheckApplStartFlag"
	.byte	0x1
	.uahalf	0x56d
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x18b3
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x56d
	.uaword	0x130d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x56d
	.uaword	0x1122
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x56f
	.uaword	0x1212
	.uaword	.LLST0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_TargetListInit"
	.byte	0x1
	.uahalf	0x666
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x190f
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x666
	.uaword	0x130d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x666
	.uaword	0x1122
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x668
	.uaword	0x1212
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_TargetListNext"
	.byte	0x1
	.uahalf	0x70f
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x196e
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x70f
	.uaword	0x130d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x70f
	.uaword	0x1122
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x711
	.uaword	0x1212
	.uaword	.LLST1
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CheckFblVerification"
	.byte	0x1
	.uahalf	0x732
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x19d0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x732
	.uaword	0x130d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x732
	.uaword	0x1122
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x734
	.uaword	0x1212
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_Fail_Entry"
	.byte	0x1
	.uahalf	0x3fd
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a28
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3fd
	.uaword	0x130d
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x3fd
	.uaword	0x1122
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x28c0
	.byte	0
	.uleb128 0x1a
	.string	"FblBmDeinit"
	.byte	0x1
	.uahalf	0x754
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"FblBmState_CallFblStayInBoot_Entry"
	.byte	0x1
	.uahalf	0x3b1
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1ac7
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3b1
	.uaword	0x130d
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x3b1
	.uaword	0x1122
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	0x1a28
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.uahalf	0x3ba
	.uaword	0x1ab3
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x28e4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL15
	.uaword	0x28f8
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	fblBmBlockInfo+32
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_TargetCheck"
	.byte	0x1
	.uahalf	0x680
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1c25
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x680
	.uaword	0x130d
	.uaword	.LLST6
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x680
	.uaword	0x1122
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x685
	.uaword	0x1212
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x686
	.uaword	0x87e
	.uaword	.LLST9
	.uleb128 0x1e
	.string	"targetHandle"
	.byte	0x1
	.uahalf	0x687
	.uaword	0x598
	.uaword	.LLST10
	.uleb128 0x1f
	.string	"blockInfoTarget"
	.byte	0x1
	.uahalf	0x688
	.uaword	0x9a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"blockInfoDep"
	.byte	0x1
	.uahalf	0x689
	.uaword	0x9a2
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"index"
	.byte	0x1
	.uahalf	0x68a
	.uaword	0x232
	.uaword	.LLST11
	.uleb128 0x1e
	.string	"findHeaderResult"
	.byte	0x1
	.uahalf	0x68b
	.uaword	0x76d
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	.LVL21
	.uaword	0x291f
	.uaword	0x1bc6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL31
	.uaword	0x2950
	.uaword	0x1be0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL36
	.uaword	0x2987
	.uaword	0x1bfa
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL40
	.uaword	0x29c0
	.uaword	0x1c0e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL43
	.uaword	0x2950
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CheckReprogFlag"
	.byte	0x1
	.uahalf	0x590
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1c92
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x590
	.uaword	0x130d
	.uaword	.LLST13
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x590
	.uaword	0x1122
	.uaword	.LLST14
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x592
	.uaword	0x1212
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	.LVL46
	.uaword	0x29e2
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CheckFblLbt"
	.byte	0x1
	.uahalf	0x5b3
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1d0d
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x5b3
	.uaword	0x130d
	.uaword	.LLST16
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x5b3
	.uaword	0x1122
	.uaword	.LLST17
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x5b6
	.uaword	0x1212
	.uaword	.LLST18
	.uleb128 0x19
	.uaword	.LVL50
	.uaword	0x2a05
	.uleb128 0x19
	.uaword	.LVL51
	.uaword	0x2a35
	.uleb128 0x19
	.uaword	.LVL53
	.uaword	0x2a53
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CheckFblValidity"
	.byte	0x1
	.uahalf	0x414
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1dcc
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x414
	.uaword	0x130d
	.uaword	.LLST19
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x414
	.uaword	0x1122
	.uaword	.LLST20
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x416
	.uaword	0x1212
	.uaword	.LLST21
	.uleb128 0x20
	.uaword	.LVL58
	.uaword	0x2a6b
	.uaword	0x1d97
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x4c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	fblBmFblHeader
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0x11
	.sleb128 -1610481664
	.byte	0
	.uleb128 0x20
	.uaword	.LVL62
	.uaword	0x2a95
	.uaword	0x1db3
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	fblBmBlockInfo
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL65
	.uaword	0x2ac4
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	fblBmBlockInfo+32
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_Init_Entry"
	.byte	0x1
	.uahalf	0x2e0
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e48
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x130d
	.uaword	.LLST22
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x1122
	.uaword	.LLST23
	.uleb128 0x19
	.uaword	.LVL71
	.uaword	0x2afc
	.uleb128 0x19
	.uaword	.LVL72
	.uaword	0x2b13
	.uleb128 0x19
	.uaword	.LVL73
	.uaword	0x2b29
	.uleb128 0x19
	.uaword	.LVL74
	.uaword	0x2b3d
	.uleb128 0x19
	.uaword	.LVL75
	.uaword	0x2b53
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_PowerOn_Entry"
	.byte	0x1
	.uahalf	0x2a2
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1ee2
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x130d
	.uaword	.LLST24
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x1122
	.uaword	.LLST25
	.uleb128 0x21
	.uaword	0x17e0
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.uahalf	0x2b2
	.uleb128 0x19
	.uaword	.LVL77
	.uaword	0x2b6b
	.uleb128 0x20
	.uaword	.LVL78
	.uaword	0x29c0
	.uaword	0x1ec6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.uaword	.LVL79
	.uaword	0x2b85
	.uleb128 0x19
	.uaword	.LVL80
	.uaword	0x2a53
	.uleb128 0x19
	.uaword	.LVL81
	.uaword	0x2ba1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"FblStart"
	.byte	0x1
	.uahalf	0x7d8
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f1a
	.uleb128 0x21
	.uaword	0x17e0
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.uahalf	0x7e0
	.uleb128 0x19
	.uaword	.LVL82
	.uaword	0x2bbc
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"ApplStart"
	.byte	0x1
	.uahalf	0x80e
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f53
	.uleb128 0x21
	.uaword	0x17e0
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.uahalf	0x816
	.uleb128 0x19
	.uaword	.LVL83
	.uaword	0x2bbc
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CallTarget_Entry"
	.byte	0x1
	.uahalf	0x356
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1fd9
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x356
	.uaword	0x130d
	.uaword	.LLST26
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x356
	.uaword	0x1122
	.uaword	.LLST27
	.uleb128 0x1b
	.uaword	0x1a28
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.uahalf	0x35f
	.uaword	0x1fc5
	.uleb128 0x19
	.uaword	.LVL85
	.uaword	0x28e4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL86
	.uaword	0x28f8
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	g_BmTargetBmHeader
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"FblBmState_CallFbl_Entry"
	.byte	0x1
	.uahalf	0x394
	.byte	0x1
	.uaword	0x1212
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x205c
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x394
	.uaword	0x130d
	.uaword	.LLST28
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x394
	.uaword	0x1122
	.uaword	.LLST29
	.uleb128 0x1b
	.uaword	0x1a28
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x39d
	.uaword	0x2048
	.uleb128 0x19
	.uaword	.LVL88
	.uaword	0x28e4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL89
	.uaword	0x28f8
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	fblBmBlockInfo+32
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"FblMemSetInteger"
	.byte	0x1
	.uahalf	0x775
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x20e2
	.uleb128 0x23
	.string	"count"
	.byte	0x1
	.uahalf	0x775
	.uaword	0x232
	.uaword	.LLST30
	.uleb128 0x23
	.string	"input"
	.byte	0x1
	.uahalf	0x775
	.uaword	0x232
	.uaword	.LLST31
	.uleb128 0x24
	.string	"buffer"
	.byte	0x1
	.uahalf	0x775
	.uaword	0xfac
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.string	"localCount"
	.byte	0x1
	.uahalf	0x777
	.uaword	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"localInput"
	.byte	0x1
	.uahalf	0x778
	.uaword	0x232
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"FblMemGetInteger"
	.byte	0x1
	.uahalf	0x791
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2153
	.uleb128 0x24
	.string	"count"
	.byte	0x1
	.uahalf	0x791
	.uaword	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buffer"
	.byte	0x1
	.uahalf	0x791
	.uaword	0xfc2
	.uaword	.LLST32
	.uleb128 0x1e
	.string	"output"
	.byte	0x1
	.uahalf	0x793
	.uaword	0x232
	.uaword	.LLST33
	.uleb128 0x1e
	.string	"idx"
	.byte	0x1
	.uahalf	0x794
	.uaword	0x232
	.uaword	.LLST34
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"FblMain"
	.byte	0x1
	.uahalf	0x7b0
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x21d0
	.uleb128 0x19
	.uaword	.LVL101
	.uaword	0x2bd1
	.uleb128 0x20
	.uaword	.LVL102
	.uaword	0x2be9
	.uaword	0x2192
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL103
	.uaword	0x2c09
	.uaword	0x21ab
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL104
	.uaword	0x2c31
	.uaword	0x21bf
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL105
	.uaword	0x28c0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"fblBmBlockInfo"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x9a2
	.byte	0x5
	.byte	0x3
	.uaword	fblBmBlockInfo
	.uleb128 0x1f
	.string	"fblBmFblHeader"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x10fc
	.byte	0x5
	.byte	0x3
	.uaword	fblBmFblHeader
	.uleb128 0x1f
	.string	"g_BmFsmContext"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1226
	.byte	0x5
	.byte	0x3
	.uaword	g_BmFsmContext
	.uleb128 0x1f
	.string	"g_BmTargetListIndex"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x232
	.byte	0x5
	.byte	0x3
	.uaword	g_BmTargetListIndex
	.uleb128 0x1f
	.string	"g_BmTargetBmHeader"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x658
	.byte	0x5
	.byte	0x3
	.uaword	g_BmTargetBmHeader
	.uleb128 0x1f
	.string	"g_BmError"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xf99
	.byte	0x5
	.byte	0x3
	.uaword	g_BmError
	.uleb128 0xa
	.uaword	0x134d
	.uaword	0x2292
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.string	"g_BmState_PowerOn"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x22b2
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_PowerOn
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_Init"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x22d4
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_Init
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckFblValidity"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x2302
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblValidity
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0xa
	.uaword	0x134d
	.uaword	0x2317
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"g_BmState_FailsafeUpdaterEnabled"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x2346
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_FailsafeUpdaterEnabled
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_FailsafeUpdaterSearchInit"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x237d
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_FailsafeUpdaterSearchInit
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_FailsafeUpdaterCheck"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x23af
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_FailsafeUpdaterCheck
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_FailsafeUpdaterSearchNext"
	.byte	0x1
	.uahalf	0x176
	.uaword	0x23e6
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_FailsafeUpdaterSearchNext
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CallFailsafeUpdater"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x2417
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallFailsafeUpdater
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_SecureBootEnabled"
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2446
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_SecureBootEnabled
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CheckKeyAvailability"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x2478
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckKeyAvailability
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CallFblInitKey"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x24a4
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallFblInitKey
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_InitFblMacEnabled"
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x24d3
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_InitFblMacEnabled
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CheckFblMacErased"
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x2502
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblMacErased
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CallFblInitCmac"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x252f
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallFblInitCmac
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_StayInBootEnabled"
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x255e
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_StayInBootEnabled
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CheckApplStartFlag"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x258e
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckApplStartFlag
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckFblLbt"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x25b7
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblLbt
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckReprogFlag"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x25e4
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckReprogFlag
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_ReprogLbtEnabled"
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x2612
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_ReprogLbtEnabled
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_CheckReprogLbt"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x263e
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckReprogLbt
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_TargetListInit"
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x266a
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_TargetListInit
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_TargetCheck"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x2693
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_TargetCheck
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_TargetListNext"
	.byte	0x1
	.uahalf	0x224
	.uaword	0x26bf
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_TargetListNext
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CallTarget"
	.byte	0x1
	.uahalf	0x230
	.uaword	0x26e7
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallTarget
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckFblVerification"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x2719
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblVerification
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckFblVerificationStayInBoot"
	.byte	0x1
	.uahalf	0x242
	.uaword	0x2755
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblVerificationStayInBoot
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CallFbl"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x277a
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallFbl
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CallFblStayInBoot"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x27a9
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CallFblStayInBoot
	.uleb128 0xf
	.uaword	0x2282
	.uleb128 0x1f
	.string	"g_BmState_CheckFblSegments"
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x27d7
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_CheckFblSegments
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0x1f
	.string	"g_BmState_Fail"
	.byte	0x1
	.uahalf	0x266
	.uaword	0x27f9
	.byte	0x5
	.byte	0x3
	.uaword	g_BmState_Fail
	.uleb128 0xf
	.uaword	0x2307
	.uleb128 0xa
	.uaword	0x13b3
	.uaword	0x280e
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.string	"bmFsmStates"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x2828
	.byte	0x5
	.byte	0x3
	.uaword	bmFsmStates
	.uleb128 0xf
	.uaword	0x27fe
	.uleb128 0x26
	.string	"WDInitFlag"
	.byte	0xf
	.byte	0x4b
	.uaword	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x87e
	.uaword	0x2851
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0x1
	.byte	0
	.uleb128 0x26
	.string	"FblBm_BootTargetList"
	.byte	0x9
	.byte	0x55
	.uaword	0x286f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x2841
	.uleb128 0xa
	.uaword	0x213
	.uaword	0x2884
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.string	"fblBmMagicFlag"
	.byte	0x10
	.byte	0xeb
	.uaword	0x289c
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x2874
	.uleb128 0x28
	.string	"FblBmHeader"
	.byte	0x1
	.byte	0xfb
	.uaword	0x28bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FblBmHeader
	.uleb128 0xf
	.uaword	0x96d
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblBmFatalError"
	.byte	0x11
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uaword	0x28e4
	.uleb128 0x12
	.uaword	0xf99
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblWDLong"
	.byte	0x14
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblBmStartSoftware"
	.byte	0x11
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x291f
	.uleb128 0x12
	.uaword	0x1056
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblBmCheckTargetValidity"
	.byte	0x11
	.byte	0x75
	.byte	0x1
	.uaword	0x252
	.byte	0x1
	.uaword	0x2950
	.uleb128 0x12
	.uaword	0x598
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"FblBmHdrFindValidHeader"
	.byte	0x12
	.byte	0x40
	.byte	0x1
	.uaword	0x76d
	.byte	0x1
	.uaword	0x2981
	.uleb128 0x12
	.uaword	0x598
	.uleb128 0x12
	.uaword	0x2981
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9a2
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblBmIsOptionalBlock"
	.byte	0x11
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uaword	0x29b5
	.uleb128 0x12
	.uaword	0x598
	.uleb128 0x12
	.uaword	0x29b5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x29bb
	.uleb128 0xf
	.uaword	0x46f
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x11
	.byte	0xa8
	.byte	0x1
	.byte	0x1
	.uaword	0x29e2
	.uleb128 0x12
	.uaword	0x213
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"ApplFblBmCheckReprogFlag"
	.byte	0x11
	.byte	0x91
	.byte	0x1
	.uaword	0x252
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"FblLbtActivateLbtBlockByAddress"
	.byte	0x13
	.byte	0xb1
	.byte	0x1
	.byte	0x1
	.uaword	0x2a35
	.uleb128 0x12
	.uaword	0x294
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"FblLbtGetBlockCount"
	.byte	0x13
	.byte	0x62
	.byte	0x1
	.uaword	0x37d
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"FblLbtInitPowerOn"
	.byte	0x13
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblReadProm"
	.byte	0x15
	.byte	0x6e
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uaword	0x2a95
	.uleb128 0x12
	.uaword	0x294
	.uleb128 0x12
	.uaword	0x2d6
	.uleb128 0x12
	.uaword	0x2a8
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"ApplFblBmIsValidBlock"
	.byte	0x11
	.byte	0x78
	.byte	0x1
	.uaword	0x252
	.byte	0x1
	.uaword	0x2ac4
	.uleb128 0x12
	.uaword	0x598
	.uleb128 0x12
	.uaword	0x29b5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"FblBmHdrGetBmHeader"
	.byte	0x12
	.byte	0x3d
	.byte	0x1
	.uaword	0x76d
	.byte	0x1
	.uaword	0x2af6
	.uleb128 0x12
	.uaword	0x598
	.uleb128 0x12
	.uaword	0x294
	.uleb128 0x12
	.uaword	0x2af6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x658
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblBmInitPre"
	.byte	0x11
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"FblInitWatchdog"
	.byte	0xf
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"FblTimerInit"
	.byte	0x16
	.uahalf	0x150
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"EcuM_StartupTwo"
	.byte	0x17
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblBmInitPost"
	.byte	0x11
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblBmPowerOnPre"
	.byte	0x11
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"MemDriver_InitPowerOn"
	.byte	0x15
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblBmPowerOnPost"
	.byte	0x11
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"ApplFblBmReset"
	.byte	0x11
	.byte	0x71
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"FblFsmInitPowerOn"
	.byte	0xe
	.byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"FblFsmInit"
	.byte	0xe
	.byte	0xa9
	.byte	0x1
	.byte	0x1
	.uaword	0x2c09
	.uleb128 0x12
	.uaword	0x130d
	.uleb128 0x12
	.uaword	0x110e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"FblFsmTriggerEvent"
	.byte	0xe
	.byte	0xac
	.byte	0x1
	.byte	0x1
	.uaword	0x2c31
	.uleb128 0x12
	.uaword	0x130d
	.uleb128 0x12
	.uaword	0x1122
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"FblFsmStateTask"
	.byte	0xe
	.byte	0xab
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x130d
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
	.uleb128 0x9
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000001
	.byte	0x2b
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE27
	.uahalf	0x11
	.byte	0x3
	.uaword	g_BmTargetListIndex
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000001
	.byte	0x2b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL21-1
	.uaword	.LVL23
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL29
	.uaword	.LVL42
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL44
	.uaword	.LFE26
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x2
	.byte	0x73
	.sleb128 0
	.uaword	.LVL21-1
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL31-1
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL85-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL91
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL96
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xb4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"magicFlag"
.LASF4:
	.string	"pFsmContext"
.LASF5:
	.string	"event"
.LASF3:
	.string	"bmHeader"
.LASF6:
	.string	"result"
.LASF1:
	.string	"logicalBlock"
.LASF2:
	.string	"target"
	.extern	FblFsmEventHandlerDefault,STT_FUNC,0
	.extern	FblFsmStateTask,STT_FUNC,0
	.extern	FblFsmTriggerEvent,STT_FUNC,0
	.extern	FblFsmInit,STT_FUNC,0
	.extern	FblFsmInitPowerOn,STT_FUNC,0
	.extern	ApplFblBmReset,STT_FUNC,0
	.extern	ApplFblBmPowerOnPost,STT_FUNC,0
	.extern	MemDriver_InitPowerOn,STT_FUNC,0
	.extern	WDInitFlag,STT_OBJECT,1
	.extern	ApplFblBmPowerOnPre,STT_FUNC,0
	.extern	ApplFblBmInitPost,STT_FUNC,0
	.extern	EcuM_StartupTwo,STT_FUNC,0
	.extern	FblTimerInit,STT_FUNC,0
	.extern	FblInitWatchdog,STT_FUNC,0
	.extern	ApplFblBmInitPre,STT_FUNC,0
	.extern	FblBmHdrGetBmHeader,STT_FUNC,0
	.extern	ApplFblBmIsValidBlock,STT_FUNC,0
	.extern	FblReadProm,STT_FUNC,0
	.extern	FblLbtInitPowerOn,STT_FUNC,0
	.extern	FblLbtGetBlockCount,STT_FUNC,0
	.extern	FblLbtActivateLbtBlockByAddress,STT_FUNC,0
	.extern	ApplFblBmCheckReprogFlag,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.extern	ApplFblBmIsOptionalBlock,STT_FUNC,0
	.extern	FblBmHdrFindValidHeader,STT_FUNC,0
	.extern	ApplFblBmCheckTargetValidity,STT_FUNC,0
	.extern	FblBm_BootTargetList,STT_OBJECT,24
	.extern	ApplFblBmStartSoftware,STT_FUNC,0
	.extern	ApplFblWDLong,STT_FUNC,0
	.extern	ApplFblBmFatalError,STT_FUNC,0
	.extern	fblBmMagicFlag,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
