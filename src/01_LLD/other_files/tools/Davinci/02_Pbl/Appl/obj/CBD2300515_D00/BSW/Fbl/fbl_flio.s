	.file	"fbl_flio.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.type	FlashDriver_GetPmuIndex, @function
FlashDriver_GetPmuIndex:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_flio.c"
	.loc 1 869 0
.LVL0:
	.loc 1 878 0
	movh	%d15, 40960
	or	%d4, %d15
.LVL1:
	.loc 1 875 0
	mov	%d2, -1
	.loc 1 882 0
	jge.u	%d5, 3, .L2
	.loc 1 884 0
	movh	%d3, hi:flashStructure
	addi	%d3, %d3, lo:flashStructure
	mov	%d6, %d4
.LVL2:
.L4:
	madd	%d15, %d3, %d5, 24
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	jlt.u	%d4, %d15, .L3
	.loc 1 884 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 4
	lt.u	%d15, %d15, %d6
	cmovn	%d2, %d15, %d5
.LVL3:
.L3:
	.loc 1 888 0 is_stmt 1
	add	%d5, 1
.LVL4:
	.loc 1 882 0
	lt.u	%d15, %d5, 3
	and.eq	%d15, %d2, -1
	jnz	%d15, .L4
.LVL5:
.L2:
	.loc 1 892 0
	ret
.LFE15:
	.size	FlashDriver_GetPmuIndex, .-FlashDriver_GetPmuIndex
	.align 1
	.type	FlashDriver_VerifyErasedPage, @function
FlashDriver_VerifyErasedPage:
.LFB16:
	.loc 1 962 0
.LVL6:
	.loc 1 967 0
	mov	%d15, 22
	movh.a	%a15, 63492
	lea	%a15, [%a15] 56
	st.w	[%a15]0, %d15
.LBB32:
.LBB33:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE33:
.LBE32:
	.loc 1 970 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d4
.LBB34:
.LBB35:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE35:
.LBE34:
	.loc 1 972 0
	mov	%d15, 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
.LBB36:
.LBB37:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE37:
.LBE36:
	.loc 1 974 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	mov	%d15, 128
	st.w	[%a15]0, %d15
.LBB38:
.LBB39:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE39:
.LBE38:
	.loc 1 976 0
	mov	%d15, 86
	st.w	[%a15]0, %d15
.LBB40:
.LBB41:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE41:
.LBE40:
	.loc 1 981 0
	movh.a	%a15, 63492
	lea	%a15, [%a15] 16
.L8:
	.loc 1 981 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 255
	jz	%d15, .L8
	.loc 1 986 0 is_stmt 1
	movh.a	%a15, 63492
	lea	%a15, [%a15] 16
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 255
	jz	%d15, .L9
.LVL7:
.L14:
	.loc 1 989 0
	call	FblLookForWatchdogVoid
.LVL8:
	.loc 1 986 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 255
	jnz	%d15, .L14
.L9:
	.loc 1 992 0
	movh.a	%a15, 63492
	lea	%a15, [%a15] 52
	ld.w	%d15, [%a15]0
.LVL9:
	.loc 1 1005 0
	mov	%d2, 1
	.loc 1 1002 0
	jnz.t	%d15, 1, .L11
	and	%d15, %d15, 20
.LVL10:
	.loc 1 1027 0
	mov	%d2, 0
	sel	%d2, %d15, %d2, 229
.L11:
.LVL11:
	.loc 1 1031 0
	ret
.LFE16:
	.size	FlashDriver_VerifyErasedPage, .-FlashDriver_VerifyErasedPage
	.align 1
	.global	FlashDriver_InitSync
	.type	FlashDriver_InitSync, @function
FlashDriver_InitSync:
.LFB19:
	.loc 1 1617 0
.LVL12:
	.loc 1 1630 0
	movh.a	%a2, hi:flashParam
	lea	%a15, [%a2] lo:flashParam
	movh	%d15, hi:FblLookForWatchdog
	addi	%d15, %d15, lo:FblLookForWatchdog
	st.w	[%a15] 48, %d15
	.loc 1 1631 0
	mov	%d15, 0
	st.b	[%a15] 3, %d15
	.loc 1 1632 0
	mov	%d15, 0
	st.h	[%a15] 6, %d15
	.loc 1 1633 0
	st.h	[%a15] 4, %d15
	.loc 1 1635 0
	mov	%d15, 2
	st.b	[%a15] 2, %d15
	.loc 1 1636 0
	mov	%d15, 9
	st.b	[%a15] 1, %d15
	.loc 1 1637 0
	mov	%d15, 1
	st.b	[%a2] lo:flashParam, %d15
	.loc 1 1639 0
	movh	%d15, hi:tempFlashData
	addi	%d15, %d15, lo:tempFlashData
	st.w	[%a15] 64, %d15
	.loc 1 1643 0
	movh.a	%a15, hi:flashCode
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 163
	.loc 1 1649 0
	mov	%d2, 9
	.loc 1 1643 0
	jnz	%d15, .L18
	.loc 1 1644 0
	movh.a	%a15, hi:flashCode
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d15, [%a15] 2
	jne	%d15, 1, .L18
	.loc 1 1645 0
	movh.a	%a15, hi:flashCode
	ld.bu	%d15, [%a15] lo:flashCode
	jne	%d15, 4, .L18
	.loc 1 1654 0
	lea	%a12, [%a2] lo:flashParam
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d3, [%a15] 4
	ld.bu	%d15, [%a15] 5
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d15, %d2
	ld.bu	%d2, [%a15] 7
	sh	%d2, %d2, 24
	or	%d15, %d2
	mov.aa	%a4, %a12
.LVL13:
	mov.a	%a15, %d15
	calli	%a15
.LVL14:
	.loc 1 1655 0
	ld.hu	%d2, [%a12] 4
.LVL15:
.L18:
	.loc 1 1673 0
	ret
.LFE19:
	.size	FlashDriver_InitSync, .-FlashDriver_InitSync
	.align 1
	.global	FlashDriver_DeinitSync
	.type	FlashDriver_DeinitSync, @function
FlashDriver_DeinitSync:
.LFB20:
	.loc 1 1686 0
.LVL16:
	.loc 1 1694 0
	movh.a	%a15, hi:flashCode
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d3, [%a15] 8
	ld.bu	%d15, [%a15] 9
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 10
	sh	%d15, %d15, 16
	or	%d15, %d2
	ld.bu	%d2, [%a15] 11
	sh	%d2, %d2, 24
	or	%d15, %d2
	movh.a	%a4, hi:flashParam
.LVL17:
	lea	%a4, [%a4] lo:flashParam
	mov.a	%a2, %d15
	calli	%a2
.LVL18:
	.loc 1 1697 0
	mov	%d15, 0
	.loc 1 1699 0
	movh	%d10, hi:flashCode
	addi	%d10, %d10, lo:flashCode
	mov	%d9, 0
	.loc 1 1697 0
	mov	%d8, 3072
.LVL19:
.L24:
	.loc 1 1699 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d15, 0
	st.b	[%a15]0, %d9
	.loc 1 1702 0
	and	%d2, %d15, 255
	jnz	%d2, .L23
	.loc 1 1704 0
	call	FblLookForWatchdog
.LVL20:
.L23:
	.loc 1 1697 0 discriminator 2
	add	%d15, 1
.LVL21:
	jne	%d15, %d8, .L24
	.loc 1 1714 0
	movh.a	%a15, hi:flashParam
	lea	%a15, [%a15] lo:flashParam
	ld.hu	%d2, [%a15] 4
	ret
.LFE20:
	.size	FlashDriver_DeinitSync, .-FlashDriver_DeinitSync
	.align 1
	.global	FlashDriver_RWriteSync
	.type	FlashDriver_RWriteSync, @function
FlashDriver_RWriteSync:
.LFB21:
	.loc 1 1731 0
.LVL22:
	mov.aa	%a13, %a4
	mov	%d9, %d4
.LVL23:
.LBB44:
.LBB45:
	.loc 1 758 0
	movh	%d2, 40960
	or	%d8, %d5, %d2
.LVL24:
	.loc 1 761 0
	movh	%d15, 44800
	and	%d3, %d5, %d15
	or	%d2, %d3
	jne	%d2, %d15, .L27
	.loc 1 764 0
	and	%d5, %d5, 7
.LVL25:
	.loc 1 766 0
	mov	%d2, 100
	.loc 1 764 0
	jnz	%d5, .L39
	.loc 1 768 0
	and	%d15, %d4, 7
	.loc 1 770 0
	mov	%d2, 101
	.loc 1 768 0
	mov	%d13, 0
	jz	%d15, .L29
	j	.L39
.LVL26:
.L27:
	.loc 1 780 0
	and	%d5, %d5, 31
.LVL27:
	.loc 1 782 0
	mov	%d2, 100
	.loc 1 780 0
	jnz	%d5, .L39
	.loc 1 784 0
	and	%d15, %d4, 31
	.loc 1 786 0
	mov	%d2, 101
	.loc 1 784 0
	jnz	%d15, .L39
	mov	%d13, 0
.L29:
	.loc 1 806 0
	movh	%d11, hi:flashStructure
	addi	%d11, %d11, lo:flashStructure
	.loc 1 818 0
	movh.a	%a15, hi:flashParam
	lea	%a15, [%a15] lo:flashParam
	.loc 1 821 0
	mov	%d14, 0
	.loc 1 844 0
	movh.a	%a12, hi:flashCode
	lea	%a12, [%a12] lo:flashCode
.LVL28:
.L40:
	.loc 1 801 0
	mov	%d4, %d8
	mov	%d5, %d15
	call	FlashDriver_GetPmuIndex
.LVL29:
	mov	%d15, %d2
.LVL30:
	.loc 1 803 0
	jge.u	%d2, 3, .L37
	.loc 1 806 0
	madd	%d2, %d11, %d2, 24
.LVL31:
	mov.a	%a2, %d2
	ld.w	%d2, [%a2] 4
	add	%d3, %d8, %d9
	add	%d3, -1
	.loc 1 812 0
	mov	%d10, %d9
	.loc 1 806 0
	jge.u	%d2, %d3, .L31
	addi	%d10, %d2, 1
	.loc 1 808 0
	sub	%d10, %d8
.LVL32:
.L31:
	.loc 1 815 0
	mov.d	%d12, %a13
	add	%d12, %d13
	and	%d2, %d12, 3
	jz	%d2, .L32
	mov	%d4, 80
	call	ApplFblFatalError
.LVL33:
.L32:
	.loc 1 818 0
	st.w	[%a15] 28, %d8
	.loc 1 819 0
	st.w	[%a15] 36, %d10
	.loc 1 820 0
	st.w	[%a15] 44, %d12
	.loc 1 821 0
	st.h	[%a15] 6, %d14
	.loc 1 835 0
	st.w	[%a15] 32, %d8
	.loc 1 836 0
	madd	%d2, %d11, %d15, 24
	mov.a	%a2, %d2
	ld.a	%a2, [%a2] 16
	ld.w	%d2, [%a2]0
	st.w	[%a15] 8, %d2
	.loc 1 837 0
	ld.w	%d2, [%a2] 4
	st.w	[%a15] 12, %d2
	.loc 1 840 0
	ld.w	%d2, [%a2] 12
	st.w	[%a15] 16, %d2
	.loc 1 841 0
	ld.w	%d2, [%a2] 16
	st.w	[%a15] 20, %d2
	.loc 1 842 0
	ld.w	%d2, [%a2] 20
	st.w	[%a15] 24, %d2
	.loc 1 844 0
	ld.bu	%d4, [%a12] 16
	ld.bu	%d2, [%a12] 17
	sh	%d2, %d2, 8
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a12] 18
	sh	%d2, %d2, 16
	or	%d2, %d3
	ld.bu	%d3, [%a12] 19
	sh	%d3, %d3, 24
	or	%d2, %d3
	mov.aa	%a4, %a15
	mov.a	%a2, %d2
	calli	%a2
.LVL34:
	.loc 1 845 0
	ld.hu	%d2, [%a15] 4
.LVL35:
	.loc 1 846 0
	sub	%d9, %d10
.LVL36:
	.loc 1 847 0
	add	%d8, %d10
.LVL37:
	.loc 1 848 0
	add	%d13, %d10
.LVL38:
	.loc 1 854 0
	eq	%d3, %d2, 0
	and.ne	%d3, %d9, 0
	jnz	%d3, .L40
	ret
.LVL39:
.L37:
	.loc 1 852 0
	mov	%d2, 100
.LVL40:
.L39:
.LBE45:
.LBE44:
	.loc 1 1733 0
	ret
.LFE21:
	.size	FlashDriver_RWriteSync, .-FlashDriver_RWriteSync
	.align 1
	.global	FlashDriver_REraseSync
	.type	FlashDriver_REraseSync, @function
FlashDriver_REraseSync:
.LFB22:
	.loc 1 1749 0
.LVL41:
	sub.a	%SP, 24
.LCFI0:
.LVL42:
	.loc 1 1777 0
	movh	%d3, 40960
	or	%d9, %d5, %d3
.LVL43:
	.loc 1 1780 0
	movh	%d15, 44800
	and	%d2, %d5, %d15
	or	%d2, %d3
	.loc 1 1790 0
	eq	%d5, %d2, %d15
.LVL44:
	mov	%d3, 2
	sel	%d5, %d5, %d3, 1
	st.w	[%SP] 20, %d5
	eq	%d15, %d2, %d15
	mov.a	%a2, %d15
	add.a	%a13, %a2, %a2
.LVL45:
	.loc 1 1794 0
	nor	%d15, %d4, 0
	jlt.u	%d15, %d9, .L73
	j	.L75
.LVL46:
.L53:
	.loc 1 1805 0
	mov.d	%d2, %a13
	movh.a	%a2, hi:flashStructure
	lea	%a2, [%a2] lo:flashStructure
	mov.d	%d3, %a2
.LVL47:
	madd	%d2, %d3, %d2, 24
.LVL48:
	mov.a	%a15, %d2
	ld.w	%d8, [%a15]0
.LVL49:
.L66:
	.loc 1 1808 0
	mov.d	%d2, %a13
	movh.a	%a2, hi:flashStructure
	lea	%a2, [%a2] lo:flashStructure
	mov.d	%d3, %a2
	madd	%d2, %d3, %d2, 24
	mov.a	%a15, %d2
	ld.w	%d2, [%a15] 8
	jnz	%d2, .L45
	j	.L46
.LVL50:
.L65:
	.loc 1 1814 0
	ld.w	%d2, [%a2]0
	jz	%d2, .L47
	ld.a	%a15, [%a2] 4
	.loc 1 1817 0
	mov	%d2, 1
	mov	%d6, %d14
	mov.d	%d5, %a13
	j	.L52
.LVL51:
.L71:
	mov	%d2, %d4
.LVL52:
.L52:
	addi	%d12, %d2, -1
.LVL53:
	.loc 1 1820 0
	ld.w	%d3, [%a15]0
	add	%d3, %d8
	.loc 1 1823 0
	ne	%d4, %d3, %d11
	sel	%d15, %d4, %d15, 1
.LVL54:
	.loc 1 1826 0
	jeq	%d8, %d9, .L70
.LVL55:
	ld.w	%d12, [%SP] 4
	.loc 1 1841 0
	jeq	%d10, 1, .L49
	j	.L50
.LVL56:
.L70:
	st.w	[%SP] 8, %d6
	st.w	[%SP] 12, %d5
.LVL57:
.L49:
	.loc 1 1843 0
	add	%d13, 1
.LVL58:
	.loc 1 1846 0
	jeq	%d15, 1, .L51
	st.w	[%SP] 4, %d12
	ld.w	%d10, [%SP] 16
.LVL59:
.L50:
	add.a	%a15, 4
.LVL60:
	addi	%d4, %d2, 1
	.loc 1 1820 0
	mov	%d8, %d3
	.loc 1 1814 0
	ld.w	%d7, [%a2]0
	jlt.u	%d2, %d7, .L71
	j	.L47
.LVL61:
.L46:
	.loc 1 1859 0
	add.a	%a13, 1
.LVL62:
	.loc 1 1802 0
	ld.w	%d2, [%SP] 20
	mov.d	%d3, %a13
	jge.u	%d2, %d3, .L53
	j	.L67
.LVL63:
.L62:
	.loc 1 1872 0
	addi	%d15, %d11, lo:flashStructure
	ld.w	%d4, [%SP] 12
	madd	%d4, %d15, %d4, 24
	mov.a	%a15, %d4
	ld.a	%a13, [%a15] 12
	ld.w	%d15, [%SP] 8
	addsc.a	%a13, %a13, %d15, 3
.LVL64:
	.loc 1 1874 0
	ld.w	%d8, [%a13]0
	sub	%d8, %d12
	min.u	%d8, %d8, %d13
.LVL65:
	.loc 1 1885 0
	ld.w	%d10, [%a15] 20
.LVL66:
	.loc 1 1888 0
	j	.L55
.L60:
	.loc 1 1890 0
	st.w	[%a12] 28, %d9
	.loc 1 1894 0
	min.u	%d15, %d10, %d8
	st.w	[%a12] 40, %d15
	.loc 1 1901 0
	sub	%d8, %d15
.LVL67:
	.loc 1 1904 0
	ld.bu	%d3, [%a14] 12
	ld.bu	%d15, [%a14] 13
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
.LVL68:
	ld.bu	%d15, [%a14] 14
	sh	%d15, %d15, 16
	or	%d15, %d2
	ld.bu	%d2, [%a14] 15
	sh	%d2, %d2, 24
	or	%d15, %d2
	ld.a	%a4, [%SP] 4
	mov.a	%a2, %d15
	calli	%a2
.LVL69:
	.loc 1 1907 0
	ld.hu	%d2, [%a12] 4
.LVL70:
	.loc 1 1910 0
	ld.w	%d5, [%a12] 40
	sub	%d13, %d5
.LVL71:
	.loc 1 1911 0
	jz	%d5, .L55
	sh	%d15, %d12, 2
	mov	%d3, %d5
	.loc 1 1916 0
	mov.a	%a15, %d5
	add.a	%a15, -1
.LVL72:
.L59:
	.loc 1 1914 0
	ld.a	%a3, [%a13] 4
	addsc.a	%a2, %a3, %d15, 0
	ld.w	%d4, [%a2]0
	add	%d9, %d4
.LVL73:
	.loc 1 1916 0
	add	%d3, -1
	st.w	[%a12] 40, %d3
	add	%d15, 4
	loop	%a15, .L59
	add	%d12, %d5
.LVL74:
.L55:
	.loc 1 1888 0
	ne	%d15, %d8, 0
	and.eq	%d15, %d2, 0
	jnz	%d15, .L60
.LVL75:
	.loc 1 1923 0
	ld.w	%d15, [%SP] 8
	add	%d15, 1
	st.w	[%SP] 8, %d15
.LVL76:
	.loc 1 1924 0
	addi	%d15, %d11, lo:flashStructure
.LVL77:
	ld.w	%d3, [%SP] 12
	madd	%d3, %d15, %d3, 24
	mov.a	%a15, %d3
	ld.w	%d15, [%a15] 8
	ld.w	%d4, [%SP] 8
	jne	%d15, %d4, .L61
.LVL78:
	.loc 1 1928 0
	ld.w	%d15, [%SP] 12
	add	%d15, 1
	st.w	[%SP] 12, %d15
.LVL79:
	.loc 1 1927 0
	mov	%d15, 0
.LVL80:
	st.w	[%SP] 8, %d15
.LVL81:
.L61:
	mov	%d12, 0
.LVL82:
.L64:
	.loc 1 1869 0
	ne	%d15, %d13, 0
	and.eq	%d15, %d2, 0
	jnz	%d15, .L62
	ret
.LVL83:
.L73:
	.loc 1 1794 0
	mov	%d10, 0
.LVL84:
.L67:
	.loc 1 1942 0
	mov	%d2, 68
	seln	%d2, %d10, %d2, 69
	ret
.LVL85:
.L51:
	.loc 1 1854 0
	call	FblLookForWatchdog
.LVL86:
	mov	%d2, 0
	.loc 1 1872 0
	movh	%d11, hi:flashStructure
	.loc 1 1890 0
	movh.a	%a12, hi:flashParam
	lea	%a12, [%a12] lo:flashParam
	.loc 1 1904 0
	movh.a	%a14, hi:flashCode
	lea	%a14, [%a14] lo:flashCode
	.loc 1 1890 0
	st.a	[%SP] 4, %a12
	j	.L64
.LVL87:
.L47:
	.loc 1 1854 0
	call	FblLookForWatchdog
.LVL88:
	.loc 1 1856 0
	add	%d14, 1
.LVL89:
	.loc 1 1808 0
	ld.w	%d2, [%a14]0
	jge.u	%d14, %d2, .L46
.LVL90:
	.loc 1 1813 0
	ld.a	%a2, [%a12] 12
	addsc.a	%a2, %a2, %d14, 3
.LVL91:
	j	.L65
.LVL92:
.L45:
	mov.d	%d2, %a13
	movh.a	%a2, hi:flashStructure
	lea	%a2, [%a2] lo:flashStructure
	mov.d	%d3, %a2
	madd	%d2, %d3, %d2, 24
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 12
.LVL93:
	mov	%d14, 0
	.loc 1 1808 0
	mov.d	%d2, %a13
	madd	%d2, %d3, %d2, 24
	mov.a	%a12, %d2
	lea	%a14, [%a12] 8
	j	.L65
.LVL94:
.L75:
	mov	%d11, %d4
.LVL95:
	.loc 1 1805 0
	movh.a	%a15, hi:flashStructure
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:flashStructure
	mov.d	%d3, %a13
	madd	%d3, %d15, %d3, 24
	mov.a	%a15, %d3
	ld.w	%d8, [%a15]0
.LVL96:
	mov	%d13, 0
	mov	%d15, 0
	mov	%d10, 0
	.loc 1 1823 0
	add	%d11, %d9
	mov	%d4, 1
.LVL97:
	st.w	[%SP] 16, %d4
	j	.L66
.LFE22:
	.size	FlashDriver_REraseSync, .-FlashDriver_REraseSync
	.align 1
	.global	FlashDriver_RReadSync
	.type	FlashDriver_RReadSync, @function
FlashDriver_RReadSync:
.LFB23:
	.loc 1 1967 0
.LVL98:
	sub.a	%SP, 32
.LCFI1:
	st.a	[%SP] 16, %a4
	mov	%d10, %d4
.LVL99:
	.loc 1 1979 0
	mov	%d13, 0
	.loc 1 1982 0
	jz	%d4, .L98
	.loc 1 1977 0
	movh	%d9, 40960
	or	%d9, %d5
.LVL100:
	mov	%d15, 0
	st.w	[%SP]0, %d15
	.loc 1 1996 0
	movh.a	%a13, hi:flashStructure
	lea	%a13, [%a13] lo:flashStructure
.LBB50:
.LBB51:
	.loc 1 1140 0
	lea	%a12, -1610612736
	.loc 1 1146 0
	movh	%d14, 44800
.LBE51:
.LBE50:
	.loc 1 2028 0
	mov.a	%a14, 0
.LVL101:
.L88:
	.loc 1 1987 0
	mov	%d4, %d9
	mov	%d5, 0
	call	FlashDriver_GetPmuIndex
.LVL102:
	.loc 1 1989 0
	jeq	%d2, -1, .L93
	.loc 1 1996 0
	mul	%d15, %d2, 24
	addsc.a	%a15, %a13, %d15, 0
	ld.w	%d12, [%a15] 4
	add	%d15, %d10, %d9
	jge.u	%d12, %d15, .L79
	add	%d12, 1
	.loc 1 1999 0
	sub	%d12, %d9
.LVL103:
	.loc 1 2007 0
	ld.a	%a15, [%SP] 16
	ld.a	%a2, [%SP]0
	add.a	%a15, %a2
	st.a	[%SP] 20, %a15
	mul	%d15, %d2, 24
	addsc.a	%a15, %a13, %d15, 0
	ld.a	%a15, [%a15] 16
.LVL104:
.LBB60:
.LBB54:
	.loc 1 1140 0
	mov.d	%d15, %a12
	or	%d15, %d9
	st.w	[%SP] 4, %d15
.LVL105:
	.loc 1 1141 0
	ld.a	%a2, [%a15]0
	st.a	[%SP] 24, %a2
.LVL106:
	ld.w	%d15, [%a15] 4
.LVL107:
	st.w	[%SP] 28, %d15
.LVL108:
	ld.a	%a2, [%a15] 12
.LVL109:
	st.a	[%SP] 8, %a2
.LVL110:
	ld.w	%d15, [%a15] 16
.LVL111:
	st.w	[%SP] 12, %d15
.LVL112:
	ld.a	%a15, [%a15] 20
.LVL113:
	.loc 1 1146 0
	and	%d3, %d9, %d14
	mov.d	%d2, %a12
.LVL114:
	or	%d3, %d2
	jeq	%d3, %d14, .L89
.L90:
.LVL115:
.LBB52:
.LBB53:
	.loc 1 1070 0
	ld.w	%d2, [%SP] 4
	andn	%d15, %d2, ~(-32)
.LVL116:
	.loc 1 1075 0
	call	FblLookForWatchdogVoid
.LVL117:
	.loc 1 1077 0
	mov	%d4, %d15
	call	FlashDriver_VerifyErasedPage
.LVL118:
	mov	%d8, %d2
.LVL119:
	.loc 1 1081 0
	eq	%d3, %d2, 229
	or.eq	%d3, %d2, 0
	jz	%d3, .L81
	ld.w	%d11, [%SP] 4
	add	%d11, %d12
	.loc 1 1072 0
	addi	%d11, %d11, 31
	andn	%d11, %d11, ~(-32)
	.loc 1 1084 0
	addi	%d15, %d15, 32
.LVL120:
	jge.u	%d15, %d11, .L81
.LVL121:
.L99:
	.loc 1 1086 0
	and	%d3, %d15, 255
	jnz	%d3, .L82
	.loc 1 1089 0
	call	FblLookForWatchdogVoid
.LVL122:
.L82:
	.loc 1 1091 0
	mov	%d4, %d15
	call	FlashDriver_VerifyErasedPage
.LVL123:
	jne	%d8, %d2, .L89
	.loc 1 1084 0
	addi	%d15, %d15, 32
.LVL124:
	jlt.u	%d15, %d11, .L99
.LVL125:
.L81:
.LBE53:
.LBE52:
	.loc 1 1166 0
	eq	%d15, %d8, 229
	jnz	%d15, .L94
	j	.L89
.LVL126:
.L96:
.LBE54:
.LBE60:
	.loc 1 2003 0
	mov	%d12, %d10
.LVL127:
.L89:
.LBB61:
.LBB55:
	.loc 1 1198 0
	mov	%d4, 1
	call	FblHwRegisterUnlock
.LVL128:
	.loc 1 1210 0
	ld.a	%a2, [%SP] 8
	ld.w	%d3, [%a2]0
	ld.w	%d15, [%SP] 12
	andn	%d3, %d3, %d15
	mov.d	%d2, %a15
	and	%d2, %d15
	or	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 1212 0
	mov	%d4, 1
	call	FblHwRegisterLock
.LVL129:
	.loc 1 1216 0
	ld.a	%a4, [%SP] 20
	ld.a	%a5, [%SP] 4
	mov	%d4, %d12
	call	FblOwnMemcpy
.LVL130:
	.loc 1 1218 0
	ld.a	%a15, [%SP] 24
.LVL131:
	ld.w	%d15, [%a15]0
	ld.w	%d2, [%SP] 28
	and	%d15, %d2
	.loc 1 1221 0
	ne	%d2, %d15, 0
.LVL132:
.LBE55:
.LBE61:
	.loc 1 2009 0
	eq	%d15, %d13, 229
	and.eq	%d15, %d2, 0
	jnz	%d15, .L103
.LVL133:
.LBB62:
.LBB56:
	.loc 1 1221 0
	mov	%d13, %d2
.LBE56:
.LBE62:
	j	.L86
.LVL134:
.L94:
.LBB63:
.LBB57:
	.loc 1 1166 0
	mov	%d13, %d8
.LVL135:
.LBE57:
.LBE63:
	.loc 1 2026 0
	jz	%d12, .L86
.LVL136:
	ld.a	%a2, [%SP] 16
	ld.a	%a15, [%SP]0
.LVL137:
	add.a	%a2, %a15
	addsc.a	%a15, %a15, %d12, 0
	ld.a	%a3, [%SP] 16
	add.a	%a15, %a3
	.loc 1 2028 0
	mov.d	%d15, %a2
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
.LVL138:
.L87:
	.loc 1 2028 0 is_stmt 0 discriminator 3
	mov.d	%d2, %a14
	st.b	[%a2+]1, %d2
	loop	%a15, .L87
.LVL139:
.L86:
	.loc 1 2033 0 is_stmt 1
	add	%d9, %d12
.LVL140:
	.loc 1 2034 0
	ld.w	%d15, [%SP]0
	add	%d15, %d12
	st.w	[%SP]0, %d15
.LVL141:
	.loc 1 2035 0
	sub	%d10, %d12
.LVL142:
	.loc 1 2038 0
	ne	%d15, %d13, 1
.LVL143:
	and.ne	%d15, %d10, 0
	jnz	%d15, .L88
	j	.L98
.LVL144:
.L93:
	.loc 1 1991 0
	mov	%d13, 1
.LVL145:
	j	.L98
.LVL146:
.L79:
	.loc 1 2007 0
	ld.a	%a15, [%SP] 16
	ld.a	%a2, [%SP]0
	add.a	%a15, %a2
	st.a	[%SP] 20, %a15
	mul	%d15, %d2, 24
	addsc.a	%a15, %a13, %d15, 0
	ld.a	%a15, [%a15] 16
.LVL147:
.LBB64:
.LBB58:
	.loc 1 1140 0
	mov.d	%d15, %a12
	or	%d15, %d9
	st.w	[%SP] 4, %d15
.LVL148:
	.loc 1 1141 0
	ld.a	%a2, [%a15]0
	st.a	[%SP] 24, %a2
.LVL149:
	ld.w	%d15, [%a15] 4
.LVL150:
	st.w	[%SP] 28, %d15
.LVL151:
	ld.a	%a2, [%a15] 12
.LVL152:
	st.a	[%SP] 8, %a2
.LVL153:
	ld.w	%d15, [%a15] 16
.LVL154:
	st.w	[%SP] 12, %d15
.LVL155:
	ld.a	%a15, [%a15] 20
.LVL156:
	.loc 1 1146 0
	and	%d3, %d9, %d14
	mov.d	%d2, %a12
.LVL157:
	or	%d3, %d2
.LBE58:
.LBE64:
	.loc 1 2003 0
	mov	%d12, %d10
.LBB65:
.LBB59:
	.loc 1 1146 0
	jne	%d3, %d14, .L90
	j	.L96
.LVL158:
.L103:
.LBE59:
.LBE65:
	.loc 1 2012 0
	mov	%d13, 1
.LVL159:
.L98:
	.loc 1 2042 0
	mov	%d2, %d13
	ret
.LFE23:
	.size	FlashDriver_RReadSync, .-FlashDriver_RReadSync
	.align 1
	.global	FlashDriver_GetVersionOfDriver
	.type	FlashDriver_GetVersionOfDriver, @function
FlashDriver_GetVersionOfDriver:
.LFB24:
	.loc 1 2056 0
	.loc 1 2060 0
	movh.a	%a15, hi:flashCode
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 163
	.loc 1 2066 0
	movh	%d2, 2
	addi	%d2, %d2, 2305
	.loc 1 2060 0
	jnz	%d15, .L105
	.loc 1 2061 0
	movh.a	%a15, hi:flashCode
	lea	%a15, [%a15] lo:flashCode
	ld.bu	%d15, [%a15] 2
	jne	%d15, 1, .L105
	.loc 1 2062 0
	movh.a	%a15, hi:flashCode
	ld.bu	%d15, [%a15] lo:flashCode
	jne	%d15, 4, .L105
	.loc 1 2073 0
	movh.a	%a2, hi:flashParam
	lea	%a15, [%a2] lo:flashParam
	ld.bu	%d2, [%a15] 2
	sh	%d2, %d2, 16
	.loc 1 2074 0
	ld.bu	%d15, [%a15] 1
	sh	%d15, %d15, 8
	.loc 1 2073 0
	or	%d15, %d2
	.loc 1 2075 0
	ld.bu	%d2, [%a2] lo:flashParam
	.loc 1 2073 0
	or	%d2, %d15
.LVL160:
.L105:
	.loc 1 2079 0
	ret
.LFE24:
	.size	FlashDriver_GetVersionOfDriver, .-FlashDriver_GetVersionOfDriver
	.align 1
	.global	FlashDriver_ResumeProtection
	.type	FlashDriver_ResumeProtection, @function
FlashDriver_ResumeProtection:
.LFB25:
	.loc 1 2348 0
	.loc 1 2349 0
	mov	%d15, 245
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
.LBB66:
.LBB67:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE67:
.LBE66:
.LFE25:
	.size	FlashDriver_ResumeProtection, .-FlashDriver_ResumeProtection
	.align 1
	.global	FlashDriver_DisableProtection
	.type	FlashDriver_DisableProtection, @function
FlashDriver_DisableProtection:
.LFB26:
	.loc 1 2363 0
.LVL161:
	.loc 1 2368 0
	eqz.a	%d2, %a4
.LVL162:
	.loc 1 2375 0
	jnz	%d2, .L114
.LVL163:
	.loc 1 2381 0 discriminator 1
	eq	%d15, %d4, 16
	jnz	%d15, .L117
	.loc 1 2381 0 is_stmt 0
	mov	%d15, 1
	movh	%d5, hi:flashProtMaskLookUpTbl
	addi	%d5, %d5, lo:flashProtMaskLookUpTbl
	mov.a	%a15, 11
.LVL164:
.L116:
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d15, 3
	ld.hu	%d3, [%a2]0
	jne	%d3, %d4, .L113
	j	.L112
.LVL165:
.L117:
	mov	%d15, 0
.LVL166:
.L112:
	.loc 1 2383 0 is_stmt 1
	movh.a	%a15, hi:flashProtMaskLookUpTbl
	lea	%a15, [%a15] lo:flashProtMaskLookUpTbl
	addsc.a	%a15, %a15, %d15, 3
	ld.w	%d15, [%a15] 4
.LVL167:
	.loc 1 2393 0
	movh.a	%a15, 63492
	lea	%a15, [%a15] 28
	ld.w	%d3, [%a15]0
	and	%d3, %d15
	jne	%d15, %d3, .L120
	ret
.LVL168:
.L113:
	.loc 1 2379 0 discriminator 2
	add	%d15, 1
.LVL169:
	loop	%a15, .L116
	.loc 1 2377 0
	mov	%d2, 1
.LVL170:
	ret
.LVL171:
.L120:
	mov.aa	%a15, %a4
	mov	%d8, %d4
	.loc 1 2400 0
	call	FblLookForWatchdog
.LVL172:
	.loc 1 2403 0
	movh.a	%a2, 63492
	lea	%a2, [%a2] 56
	ld.w	%d2, [%a2]0
	or	%d2, %d2, 4
	st.w	[%a2]0, %d2
	.loc 1 2405 0
	movh.a	%a2, 44800
	lea	%a2, [%a2] 21820
	st.w	[%a2]0, %d8
.LBB68:
.LBB69:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE69:
.LBE68:
	.loc 1 2407 0
	ld.w	%d2, [%a15]0
	st.w	[%a2]0, %d2
.LBB70:
.LBB71:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE71:
.LBE70:
	.loc 1 2409 0
	ld.w	%d2, [%a15] 4
	st.w	[%a2]0, %d2
.LBB72:
.LBB73:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE73:
.LBE72:
	.loc 1 2411 0
	ld.w	%d2, [%a15] 8
	st.w	[%a2]0, %d2
.LBB74:
.LBB75:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE75:
.LBE74:
	.loc 1 2413 0
	ld.w	%d2, [%a15] 12
	st.w	[%a2]0, %d2
.LBB76:
.LBB77:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE77:
.LBE76:
	.loc 1 2415 0
	ld.w	%d2, [%a15] 16
	st.w	[%a2]0, %d2
.LBB78:
.LBB79:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE79:
.LBE78:
	.loc 1 2417 0
	ld.w	%d2, [%a15] 20
	st.w	[%a2]0, %d2
.LBB80:
.LBB81:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE81:
.LBE80:
	.loc 1 2419 0
	ld.w	%d2, [%a15] 24
	st.w	[%a2]0, %d2
.LBB82:
.LBB83:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE83:
.LBE82:
	.loc 1 2421 0
	ld.w	%d2, [%a15] 28
	st.w	[%a2]0, %d2
.LBB84:
.LBB85:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE85:
.LBE84:
	.loc 1 2426 0
	movh.a	%a15, 63492
.LVL173:
	lea	%a15, [%a15] 28
	ld.w	%d3, [%a15]0
	and	%d3, %d15
	.loc 1 2433 0
	mov	%d2, 1
	.loc 1 2426 0
	jne	%d15, %d3, .L114
	.loc 1 2426 0 is_stmt 0 discriminator 1
	movh.a	%a15, 63492
	lea	%a15, [%a15] 52
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 2, 1
.LVL174:
.L114:
	.loc 1 2439 0 is_stmt 1
	ret
.LFE26:
	.size	FlashDriver_DisableProtection, .-FlashDriver_DisableProtection
.section .rodata,"a",@progbits
	.align 2
	.type	flashProtMaskLookUpTbl, @object
	.size	flashProtMaskLookUpTbl, 104
flashProtMaskLookUpTbl:
	.short	16
	.zero	2
	.word	1
	.short	17
	.zero	2
	.word	2
	.short	18
	.zero	2
	.word	4
	.short	22
	.zero	2
	.word	8
	.short	0
	.zero	2
	.word	16
	.short	23
	.zero	2
	.word	32
	.short	32
	.zero	2
	.word	256
	.short	33
	.zero	2
	.word	512
	.short	34
	.zero	2
	.word	1024
	.short	35
	.zero	2
	.word	2048
	.short	36
	.zero	2
	.word	4096
	.short	37
	.zero	2
	.word	8192
	.short	15
	.zero	2
	.word	16777216
	.align 2
	.type	flashStructure, @object
	.size	flashStructure, 72
flashStructure:
	.word	-1610612736
	.word	-1607467009
	.word	3
	.word	pmuStructure0
	.word	flashReg0
	.word	32
	.word	-1607467008
	.word	-1604321281
	.word	3
	.word	pmuStructure1
	.word	flashReg1
	.word	32
	.word	-1358954496
	.word	-1357905921
	.word	1
	.word	df0Structure
	.word	flashRegDF
	.word	32
	.align 2
	.type	flashRegDF, @object
	.size	flashRegDF, 24
flashRegDF:
	.word	-133955516
	.word	983040
	.word	50332416
	.word	-133955512
	.word	3
	.word	3
	.align 2
	.type	df0Structure, @object
	.size	df0Structure, 8
df0Structure:
	.word	256
	.word	physSector_D0
	.align 2
	.type	flashReg1, @object
	.size	flashReg1, 24
flashReg1:
	.word	-1472724960
	.word	720896
	.word	2097184
	.word	-125693688
	.word	196608
	.word	65536
	.align 2
	.type	pmuStructure1, @object
	.size	pmuStructure1, 24
pmuStructure1:
	.word	64
	.word	physSector
	.word	64
	.word	physSector
	.word	64
	.word	physSector
	.align 2
	.type	flashReg0, @object
	.size	flashReg0, 24
flashReg0:
	.word	-1475870688
	.word	720896
	.word	2097184
	.word	-125824760
	.word	196608
	.word	65536
	.align 2
	.type	pmuStructure0, @object
	.size	pmuStructure0, 24
pmuStructure0:
	.word	64
	.word	physSector
	.word	64
	.word	physSector
	.word	64
	.word	physSector
	.align 2
	.type	physSector_D0, @object
	.size	physSector_D0, 1024
physSector_D0:
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.word	4096
	.align 2
	.type	physSector, @object
	.size	physSector, 256
physSector:
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.local	tempFlashData
.section .bss,"aw",@nobits
	.align 2
	.type		 tempFlashData,@object
	.size		 tempFlashData,4
tempFlashData:
	.space	4
	.local	flashParam
	.align 2
	.type		 flashParam,@object
	.size		 flashParam,68
flashParam:
	.space	68
	.global	flashCode
.section .FblFlashDrvSection,"aw",@nobits
	.type	flashCode, @object
	.size	flashCode, 3072
flashCode:
	.zero	3072
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
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Flash/flashdrv.h"
	.file 5 "../../../BSW/Fbl/iotypes.h"
	.file 6 "../../../BSW/Fbl/fbl_hw.h"
	.file 7 "Include/fbl_ap.h"
	.file 8 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1673
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_flio.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x40
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
	.uaword	0x146
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x173
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x195
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x22f
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e8
	.uleb128 0x7
	.string	"tFlashData"
	.byte	0x4
	.byte	0xf1
	.uaword	0x195
	.uleb128 0x7
	.string	"tFlashAddress"
	.byte	0x4
	.byte	0xf2
	.uaword	0x195
	.uleb128 0x7
	.string	"tFlashLength"
	.byte	0x4
	.byte	0xf3
	.uaword	0x195
	.uleb128 0x7
	.string	"tFlashErrorCode"
	.byte	0x4
	.byte	0xf4
	.uaword	0x173
	.uleb128 0x7
	.string	"tFlashUint8"
	.byte	0x4
	.byte	0xf7
	.uaword	0x146
	.uleb128 0x7
	.string	"tFlashUint16"
	.byte	0x4
	.byte	0xf8
	.uaword	0x173
	.uleb128 0x7
	.string	"tFlashUint32"
	.byte	0x4
	.byte	0xf9
	.uaword	0x195
	.uleb128 0x8
	.byte	0x44
	.byte	0x4
	.byte	0xfb
	.uaword	0x496
	.uleb128 0x9
	.string	"patchLevel"
	.byte	0x4
	.byte	0xfe
	.uaword	0x294
	.byte	0
	.uleb128 0x9
	.string	"minorVersion"
	.byte	0x4
	.byte	0xff
	.uaword	0x294
	.byte	0x1
	.uleb128 0xa
	.string	"majorVersion"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x294
	.byte	0x2
	.uleb128 0xa
	.string	"reserved1"
	.byte	0x4
	.uahalf	0x101
	.uaword	0x294
	.byte	0x3
	.uleb128 0xa
	.string	"errorCode"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x27d
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x105
	.uaword	0x2a7
	.byte	0x6
	.uleb128 0xa
	.string	"pflashEccStatReg"
	.byte	0x4
	.uahalf	0x106
	.uaword	0x496
	.byte	0x8
	.uleb128 0xa
	.string	"flashEccStatMask"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x2bb
	.byte	0xc
	.uleb128 0xa
	.string	"pflashEccControlReg"
	.byte	0x4
	.uahalf	0x108
	.uaword	0x496
	.byte	0x10
	.uleb128 0xa
	.string	"flashEccControlMask"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x2bb
	.byte	0x14
	.uleb128 0xa
	.string	"flashEccControlValue"
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x2bb
	.byte	0x18
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x254
	.byte	0x1c
	.uleb128 0xa
	.string	"verificationAddress"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x254
	.byte	0x20
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x269
	.byte	0x24
	.uleb128 0xa
	.string	"eraseCount"
	.byte	0x4
	.uahalf	0x10e
	.uaword	0x269
	.byte	0x28
	.uleb128 0xa
	.string	"data"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x4a1
	.byte	0x2c
	.uleb128 0xa
	.string	"wdTriggerFct"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x4ad
	.byte	0x30
	.uleb128 0xa
	.string	"intendedData"
	.byte	0x4
	.uahalf	0x113
	.uaword	0x242
	.byte	0x34
	.uleb128 0xa
	.string	"acutalData"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x242
	.byte	0x38
	.uleb128 0xa
	.string	"errorAddress"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x254
	.byte	0x3c
	.uleb128 0xa
	.string	"tempData"
	.byte	0x4
	.uahalf	0x117
	.uaword	0x4b3
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x49c
	.uleb128 0xc
	.uaword	0x2bb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x242
	.uleb128 0xd
	.byte	0x1
	.uaword	0x294
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4a7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2bb
	.uleb128 0x3
	.string	"tFlashParam"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x2cf
	.uleb128 0x3
	.string	"tFlashFct"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x4df
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4e5
	.uleb128 0xe
	.byte	0x1
	.uaword	0x4f1
	.uleb128 0xf
	.uaword	0x4f1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4b9
	.uleb128 0x7
	.string	"IO_U32"
	.byte	0x5
	.byte	0x3b
	.uaword	0x207
	.uleb128 0x7
	.string	"IO_SizeType"
	.byte	0x5
	.byte	0x42
	.uaword	0x207
	.uleb128 0x7
	.string	"IO_PositionType"
	.byte	0x5
	.byte	0x43
	.uaword	0x207
	.uleb128 0x7
	.string	"IO_ErrorType"
	.byte	0x5
	.byte	0x49
	.uaword	0x1f7
	.uleb128 0x7
	.string	"IO_MemPtrType"
	.byte	0x5
	.byte	0x4a
	.uaword	0x23c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x590
	.uleb128 0x11
	.string	"FBL_WDT_SYSTEM"
	.sleb128 0
	.uleb128 0x11
	.string	"FBL_WDT_CPU"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"tFblWdtType"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x567
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.uaword	0x5df
	.uleb128 0x9
	.string	"logicalSectorCount"
	.byte	0x1
	.byte	0xd9
	.uaword	0x207
	.byte	0
	.uleb128 0x9
	.string	"logicalSectors"
	.byte	0x1
	.byte	0xdb
	.uaword	0x5df
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5e5
	.uleb128 0x12
	.uaword	0x207
	.uleb128 0x7
	.string	"tPhysSector"
	.byte	0x1
	.byte	0xdc
	.uaword	0x5a4
	.uleb128 0x8
	.byte	0x18
	.byte	0x1
	.byte	0xdf
	.uaword	0x668
	.uleb128 0x9
	.string	"xfECC"
	.byte	0x1
	.byte	0xe2
	.uaword	0x668
	.byte	0
	.uleb128 0x9
	.string	"maskECC"
	.byte	0x1
	.byte	0xe4
	.uaword	0x207
	.byte	0x4
	.uleb128 0x9
	.string	"maskBLANK"
	.byte	0x1
	.byte	0xe6
	.uaword	0x207
	.byte	0x8
	.uleb128 0x9
	.string	"flashControl"
	.byte	0x1
	.byte	0xe8
	.uaword	0x668
	.byte	0xc
	.uleb128 0x9
	.string	"maskFC"
	.byte	0x1
	.byte	0xea
	.uaword	0x207
	.byte	0x10
	.uleb128 0x9
	.string	"valFC"
	.byte	0x1
	.byte	0xec
	.uaword	0x207
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x66e
	.uleb128 0xc
	.uaword	0x207
	.uleb128 0x7
	.string	"tflashRegs"
	.byte	0x1
	.byte	0xed
	.uaword	0x5fd
	.uleb128 0x8
	.byte	0x18
	.byte	0x1
	.byte	0xf0
	.uaword	0x714
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf3
	.uaword	0x207
	.byte	0
	.uleb128 0x9
	.string	"endAddress"
	.byte	0x1
	.byte	0xf5
	.uaword	0x207
	.byte	0x4
	.uleb128 0x9
	.string	"physicalSectorCount"
	.byte	0x1
	.byte	0xf7
	.uaword	0x207
	.byte	0x8
	.uleb128 0x9
	.string	"physicalSectors"
	.byte	0x1
	.byte	0xf9
	.uaword	0x714
	.byte	0xc
	.uleb128 0x9
	.string	"flashRegs"
	.byte	0x1
	.byte	0xfb
	.uaword	0x71f
	.byte	0x10
	.uleb128 0x9
	.string	"maxNumLogSectorsForErase"
	.byte	0x1
	.byte	0xfd
	.uaword	0x207
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x71a
	.uleb128 0x12
	.uaword	0x5ea
	.uleb128 0x5
	.byte	0x4
	.uaword	0x725
	.uleb128 0x12
	.uaword	0x673
	.uleb128 0x7
	.string	"tFlashStructure"
	.byte	0x1
	.byte	0xfe
	.uaword	0x685
	.uleb128 0x14
	.byte	0x8
	.byte	0x1
	.uahalf	0x128
	.uaword	0x769
	.uleb128 0xa
	.string	"uc"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x1f7
	.byte	0
	.uleb128 0xa
	.string	"protMask"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x207
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"tFlashProtectionMaskLookUpTbl"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x741
	.uleb128 0x15
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.string	"FlashDriver_GetPmuIndex"
	.byte	0x1
	.uahalf	0x364
	.byte	0x1
	.uaword	0x207
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x821
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x364
	.uaword	0x518
	.uaword	.LLST0
	.uleb128 0x18
	.string	"startIndex"
	.byte	0x1
	.uahalf	0x364
	.uaword	0x207
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x366
	.uaword	0x207
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x367
	.uaword	0x207
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"index"
	.byte	0x1
	.uahalf	0x368
	.uaword	0x207
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x16
	.string	"FlashDriver_VerifyErasedPage"
	.byte	0x1
	.uahalf	0x3c1
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8e0
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0x207
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3c3
	.uaword	0x52f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"errsr"
	.byte	0x1
	.uahalf	0x3c4
	.uaword	0x207
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x3c9
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x3cb
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x3cd
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x3cf
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x3d1
	.uleb128 0x1e
	.uaword	.LVL8
	.uaword	0x15aa
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_InitSync"
	.byte	0x1
	.uahalf	0x650
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x93c
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x650
	.uaword	0x227
	.uaword	.LLST5
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x652
	.uaword	0x52f
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	.LVL14
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_DeinitSync"
	.byte	0x1
	.uahalf	0x695
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9aa
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x695
	.uaword	0x227
	.uaword	.LLST6
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x697
	.uaword	0x207
	.uaword	.LLST7
	.uleb128 0x22
	.uaword	.LVL18
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uaword	0x9a0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	flashParam
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL20
	.uaword	0x15c7
	.byte	0
	.uleb128 0x23
	.string	"FlashDriver_WriteToFlash"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.uaword	0x52f
	.byte	0x1
	.uaword	0xa86
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x543
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x505
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x518
	.uleb128 0x24
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x1f7
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x52f
	.uleb128 0x26
	.string	"uncachedWriteAddress"
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x207
	.uleb128 0x26
	.string	"sectorIndex"
	.byte	0x1
	.uahalf	0x2e8
	.uaword	0x207
	.uleb128 0x26
	.string	"deltaWriteLength"
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x505
	.uleb128 0x26
	.string	"writeLengthRemaining"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x505
	.uleb128 0x26
	.string	"writePos"
	.byte	0x1
	.uahalf	0x2eb
	.uaword	0x518
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_RWriteSync"
	.byte	0x1
	.uahalf	0x6c2
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb91
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x6c2
	.uaword	0x543
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x6c2
	.uaword	0x505
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x6c2
	.uaword	0x518
	.uaword	.LLST10
	.uleb128 0x27
	.uaword	0x9aa
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x6c4
	.uleb128 0x28
	.uaword	0x9f5
	.byte	0
	.uleb128 0x29
	.uaword	0x9e9
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	0x9dd
	.uaword	.LLST12
	.uleb128 0x29
	.uaword	0x9d1
	.uaword	.LLST13
	.uleb128 0x2a
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x2b
	.uaword	0xa01
	.uaword	.LLST14
	.uleb128 0x2c
	.uaword	0xa0d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2b
	.uaword	0xa2a
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	0xa3e
	.uaword	.LLST16
	.uleb128 0x2b
	.uaword	0xa57
	.uaword	.LLST17
	.uleb128 0x2b
	.uaword	0xa74
	.uaword	.LLST18
	.uleb128 0x2d
	.uaword	.LVL29
	.uaword	0x79b
	.uaword	0xb6e
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL33
	.uaword	0x15e4
	.uaword	0xb82
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL34
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_REraseSync"
	.byte	0x1
	.uahalf	0x6d4
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdaa
	.uleb128 0x18
	.string	"eraseLength"
	.byte	0x1
	.uahalf	0x6d4
	.uaword	0x505
	.uaword	.LLST19
	.uleb128 0x18
	.string	"eraseAddress"
	.byte	0x1
	.uahalf	0x6d4
	.uaword	0x518
	.uaword	.LLST20
	.uleb128 0x1c
	.string	"pmuPosition"
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x207
	.uaword	.LLST21
	.uleb128 0x26
	.string	"pmuLimit"
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x207
	.uleb128 0x1c
	.string	"physBlockPosition"
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x207
	.uaword	.LLST22
	.uleb128 0x1c
	.string	"logBlockPosition"
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x207
	.uaword	.LLST23
	.uleb128 0x1c
	.string	"actualErasePosition"
	.byte	0x1
	.uahalf	0x6d8
	.uaword	0x207
	.uaword	.LLST24
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x6d9
	.uaword	0x52f
	.uaword	.LLST25
	.uleb128 0x1b
	.string	"uncachedEraseAddress"
	.byte	0x1
	.uahalf	0x6da
	.uaword	0x207
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.string	"addressAligned"
	.byte	0x1
	.uahalf	0x6dd
	.uaword	0x207
	.uaword	.LLST26
	.uleb128 0x1c
	.string	"lengthAligned"
	.byte	0x1
	.uahalf	0x6de
	.uaword	0x207
	.uaword	.LLST27
	.uleb128 0x1c
	.string	"eraseStartPosition"
	.byte	0x1
	.uahalf	0x6e1
	.uaword	0xdaa
	.uaword	.LLST28
	.uleb128 0x1c
	.string	"eraseCounter"
	.byte	0x1
	.uahalf	0x6e2
	.uaword	0x207
	.uaword	.LLST29
	.uleb128 0x1c
	.string	"eraseRange"
	.byte	0x1
	.uahalf	0x6e3
	.uaword	0x207
	.uaword	.LLST30
	.uleb128 0x1c
	.string	"maxEraseSize"
	.byte	0x1
	.uahalf	0x6e4
	.uaword	0x207
	.uaword	.LLST31
	.uleb128 0x1c
	.string	"currentBlockLength"
	.byte	0x1
	.uahalf	0x6e7
	.uaword	0x207
	.uaword	.LLST32
	.uleb128 0x1c
	.string	"currentPhysicalSector"
	.byte	0x1
	.uahalf	0x6e8
	.uaword	0x714
	.uaword	.LLST33
	.uleb128 0x22
	.uaword	.LVL69
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uaword	0xd97
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL86
	.uaword	0x15c7
	.uleb128 0x1e
	.uaword	.LVL88
	.uaword	0x15c7
	.byte	0
	.uleb128 0x2f
	.uaword	0x207
	.uaword	0xdba
	.uleb128 0x30
	.uaword	0x230
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.string	"FlashDriver_ReadInternal"
	.byte	0x1
	.uahalf	0x464
	.byte	0x1
	.uaword	0x52f
	.byte	0x1
	.uaword	0xe94
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x464
	.uaword	0x543
	.uleb128 0x31
	.string	"regs"
	.byte	0x1
	.uahalf	0x464
	.uaword	0x71f
	.uleb128 0x24
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x464
	.uaword	0x207
	.uleb128 0x24
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x464
	.uaword	0x207
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x466
	.uaword	0x52f
	.uleb128 0x26
	.string	"ecccReg"
	.byte	0x1
	.uahalf	0x467
	.uaword	0x668
	.uleb128 0x26
	.string	"ecccMask"
	.byte	0x1
	.uahalf	0x468
	.uaword	0x207
	.uleb128 0x26
	.string	"ecccValue"
	.byte	0x1
	.uahalf	0x469
	.uaword	0x207
	.uleb128 0x26
	.string	"eccsReg"
	.byte	0x1
	.uahalf	0x46b
	.uaword	0xe94
	.uleb128 0x26
	.string	"eccsMaskEcc"
	.byte	0x1
	.uahalf	0x46c
	.uaword	0x207
	.uleb128 0x26
	.string	"localRegs"
	.byte	0x1
	.uahalf	0x46e
	.uaword	0x673
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x472
	.uaword	0x207
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe9a
	.uleb128 0x12
	.uaword	0x66e
	.uleb128 0x23
	.string	"FlashDriver_VerifyErased"
	.byte	0x1
	.uahalf	0x418
	.byte	0x1
	.uaword	0x52f
	.byte	0x1
	.uaword	0xf51
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x418
	.uaword	0x207
	.uleb128 0x24
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x418
	.uaword	0x207
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x41a
	.uaword	0x52f
	.uleb128 0x26
	.string	"firstResult"
	.byte	0x1
	.uahalf	0x41b
	.uaword	0x52f
	.uleb128 0x26
	.string	"alignedEndAddress"
	.byte	0x1
	.uahalf	0x41c
	.uaword	0x207
	.uleb128 0x26
	.string	"alignedAddress"
	.byte	0x1
	.uahalf	0x41d
	.uaword	0x207
	.uleb128 0x26
	.string	"segmentSize"
	.byte	0x1
	.uahalf	0x41e
	.uaword	0x207
	.uleb128 0x26
	.string	"addr"
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x207
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_RReadSync"
	.byte	0x1
	.uahalf	0x7ae
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11c6
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x7ae
	.uaword	0x543
	.uaword	.LLST34
	.uleb128 0x18
	.string	"readLength"
	.byte	0x1
	.uahalf	0x7ae
	.uaword	0x505
	.uaword	.LLST35
	.uleb128 0x18
	.string	"readAddress"
	.byte	0x1
	.uahalf	0x7ae
	.uaword	0x518
	.uaword	.LLST36
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x7b0
	.uaword	0x52f
	.uaword	.LLST37
	.uleb128 0x26
	.string	"internalResult"
	.byte	0x1
	.uahalf	0x7b1
	.uaword	0x52f
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x7b2
	.uaword	0x207
	.uaword	.LLST38
	.uleb128 0x1c
	.string	"pmu"
	.byte	0x1
	.uahalf	0x7b3
	.uaword	0x207
	.uaword	.LLST39
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x7b4
	.uaword	0x207
	.uaword	.LLST40
	.uleb128 0x1c
	.string	"pos"
	.byte	0x1
	.uahalf	0x7b5
	.uaword	0x207
	.uaword	.LLST41
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x7b6
	.uaword	0x518
	.uaword	.LLST42
	.uleb128 0x1c
	.string	"remainingLength"
	.byte	0x1
	.uahalf	0x7b7
	.uaword	0x505
	.uaword	.LLST43
	.uleb128 0x32
	.uaword	0xdba
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x7d7
	.uaword	0x11b0
	.uleb128 0x29
	.uaword	0xe06
	.uaword	.LLST44
	.uleb128 0x29
	.uaword	0xdfa
	.uaword	.LLST45
	.uleb128 0x29
	.uaword	0xded
	.uaword	.LLST46
	.uleb128 0x29
	.uaword	0xde1
	.uaword	.LLST47
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2b
	.uaword	0xe12
	.uaword	.LLST48
	.uleb128 0x2b
	.uaword	0xe1e
	.uaword	.LLST49
	.uleb128 0x2b
	.uaword	0xe2e
	.uaword	.LLST50
	.uleb128 0x2b
	.uaword	0xe3f
	.uaword	.LLST51
	.uleb128 0x2b
	.uaword	0xe51
	.uaword	.LLST52
	.uleb128 0x2b
	.uaword	0xe61
	.uaword	.LLST53
	.uleb128 0x2b
	.uaword	0xe75
	.uaword	.LLST54
	.uleb128 0x2b
	.uaword	0xe87
	.uaword	.LLST55
	.uleb128 0x34
	.uaword	0xe9f
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x48b
	.uaword	0x116a
	.uleb128 0x35
	.uaword	0xed2
	.uleb128 0x35
	.uaword	0xec6
	.uleb128 0x2a
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x2b
	.uaword	0xede
	.uaword	.LLST56
	.uleb128 0x2b
	.uaword	0xeea
	.uaword	.LLST56
	.uleb128 0x2b
	.uaword	0xefe
	.uaword	.LLST58
	.uleb128 0x2b
	.uaword	0xf18
	.uaword	.LLST59
	.uleb128 0x2b
	.uaword	0xf2f
	.uaword	.LLST60
	.uleb128 0x2b
	.uaword	0xf43
	.uaword	.LLST61
	.uleb128 0x1e
	.uaword	.LVL117
	.uaword	0x15aa
	.uleb128 0x2d
	.uaword	.LVL118
	.uaword	0x821
	.uaword	0x114f
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL122
	.uaword	0x15aa
	.uleb128 0x36
	.uaword	.LVL123
	.uaword	0x821
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL128
	.uaword	0x1606
	.uaword	0x117d
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL129
	.uaword	0x162b
	.uaword	0x1190
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.uaword	.LVL130
	.uaword	0x164e
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL102
	.uaword	0x79b
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_GetVersionOfDriver"
	.byte	0x1
	.uahalf	0x807
	.byte	0x1
	.uaword	0x4f7
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x120d
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x809
	.uaword	0x4f7
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"FlashDriver_ResumeProtection"
	.byte	0x1
	.uahalf	0x92b
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1250
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x92e
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"FlashDriver_DisableProtection"
	.byte	0x1
	.uahalf	0x93a
	.byte	0x1
	.uaword	0x52f
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1386
	.uleb128 0x18
	.string	"uc"
	.byte	0x1
	.uahalf	0x93a
	.uaword	0x1f7
	.uaword	.LLST62
	.uleb128 0x18
	.string	"password"
	.byte	0x1
	.uahalf	0x93a
	.uaword	0x5df
	.uaword	.LLST63
	.uleb128 0x1c
	.string	"result"
	.byte	0x1
	.uahalf	0x93c
	.uaword	0x52f
	.uaword	.LLST64
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x93d
	.uaword	0x207
	.uaword	.LLST65
	.uleb128 0x1c
	.string	"protectRegisterMask"
	.byte	0x1
	.uahalf	0x93e
	.uaword	0x207
	.uaword	.LLST66
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x966
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x968
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x96a
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x96c
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x96e
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x970
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.uahalf	0x972
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x974
	.uleb128 0x1d
	.uaword	0x78f
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.uahalf	0x976
	.uleb128 0x1e
	.uaword	.LVL172
	.uaword	0x15c7
	.byte	0
	.uleb128 0x1b
	.string	"flashParam"
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x4b9
	.byte	0x5
	.byte	0x3
	.uaword	flashParam
	.uleb128 0x2f
	.uaword	0x207
	.uaword	0x13af
	.uleb128 0x30
	.uaword	0x230
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"tempFlashData"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x139f
	.byte	0x5
	.byte	0x3
	.uaword	tempFlashData
	.uleb128 0x2f
	.uaword	0x207
	.uaword	0x13db
	.uleb128 0x30
	.uaword	0x230
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.string	"physSector"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x13f4
	.byte	0x5
	.byte	0x3
	.uaword	physSector
	.uleb128 0x12
	.uaword	0x13cb
	.uleb128 0x2f
	.uaword	0x207
	.uaword	0x1409
	.uleb128 0x30
	.uaword	0x230
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.string	"physSector_D0"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1425
	.byte	0x5
	.byte	0x3
	.uaword	physSector_D0
	.uleb128 0x12
	.uaword	0x13f9
	.uleb128 0x2f
	.uaword	0x5ea
	.uaword	0x143a
	.uleb128 0x30
	.uaword	0x230
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"pmuStructure0"
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x1456
	.byte	0x5
	.byte	0x3
	.uaword	pmuStructure0
	.uleb128 0x12
	.uaword	0x142a
	.uleb128 0x2f
	.uaword	0x673
	.uaword	0x146b
	.uleb128 0x30
	.uaword	0x230
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"flashReg0"
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x1483
	.byte	0x5
	.byte	0x3
	.uaword	flashReg0
	.uleb128 0x12
	.uaword	0x145b
	.uleb128 0x1b
	.string	"pmuStructure1"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x14a4
	.byte	0x5
	.byte	0x3
	.uaword	pmuStructure1
	.uleb128 0x12
	.uaword	0x142a
	.uleb128 0x1b
	.string	"flashReg1"
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x14c1
	.byte	0x5
	.byte	0x3
	.uaword	flashReg1
	.uleb128 0x12
	.uaword	0x145b
	.uleb128 0x2f
	.uaword	0x5ea
	.uaword	0x14d6
	.uleb128 0x30
	.uaword	0x230
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"df0Structure"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x14f1
	.byte	0x5
	.byte	0x3
	.uaword	df0Structure
	.uleb128 0x12
	.uaword	0x14c6
	.uleb128 0x1b
	.string	"flashRegDF"
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x150f
	.byte	0x5
	.byte	0x3
	.uaword	flashRegDF
	.uleb128 0x12
	.uaword	0x145b
	.uleb128 0x2f
	.uaword	0x72a
	.uaword	0x1524
	.uleb128 0x30
	.uaword	0x230
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"flashStructure"
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x1541
	.byte	0x5
	.byte	0x3
	.uaword	flashStructure
	.uleb128 0x12
	.uaword	0x1514
	.uleb128 0x2f
	.uaword	0x769
	.uaword	0x1556
	.uleb128 0x30
	.uaword	0x230
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.string	"flashProtMaskLookUpTbl"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x157b
	.byte	0x5
	.byte	0x3
	.uaword	flashProtMaskLookUpTbl
	.uleb128 0x12
	.uaword	0x1546
	.uleb128 0x2f
	.uaword	0x1e8
	.uaword	0x1591
	.uleb128 0x38
	.uaword	0x230
	.uahalf	0xbff
	.byte	0
	.uleb128 0x39
	.string	"flashCode"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x1580
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	flashCode
	.uleb128 0x3a
	.byte	0x1
	.string	"FblLookForWatchdogVoid"
	.byte	0x8
	.byte	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.uaword	0x1e8
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x7
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x1606
	.uleb128 0xf
	.uaword	0x1e8
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"FblHwRegisterUnlock"
	.byte	0x6
	.uahalf	0x152
	.byte	0x1
	.byte	0x1
	.uaword	0x162b
	.uleb128 0xf
	.uaword	0x590
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"FblHwRegisterLock"
	.byte	0x6
	.uahalf	0x153
	.byte	0x1
	.byte	0x1
	.uaword	0x164e
	.uleb128 0xf
	.uaword	0x590
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"FblOwnMemcpy"
	.byte	0x6
	.uahalf	0x167
	.byte	0x1
	.uaword	0x227
	.byte	0x1
	.uleb128 0xf
	.uaword	0x227
	.uleb128 0xf
	.uaword	0x229
	.uleb128 0xf
	.uaword	0x217
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x5
	.byte	0x3
	.uaword	flashParam+4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL32
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL28
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL28
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL94
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL51
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL63
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL86-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL87
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL92
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL63
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL75
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL90
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL57
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL89
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL96
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL42
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70
	.uaword	.LVL74
	.uahalf	0x5
	.byte	0x3
	.uaword	flashParam+4
	.uaword	.LVL74
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL63
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL94
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL42
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL59
	.uaword	.LVL63
	.uahalf	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0xb
	.byte	0x91
	.sleb128 -12
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL95
	.uaword	.LFE22
	.uahalf	0xc
	.byte	0x91
	.sleb128 -12
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL42
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL94
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL65
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL66
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -4
	.uaword	.LVL53
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -4
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL50
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL64
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL101
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL101
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL136
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL142
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL146
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL103
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL127
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL146
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL102
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL144
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL135
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL101
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL141
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL143
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL101
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL104
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL127
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL147
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL104
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL147
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL104
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.uaword	.LVL147
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL104
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL147
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL127
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL134
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL128
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL128
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL128
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL128
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL128
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x5
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0xf
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x12
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x13
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL116
	.uaword	.LVL117-1
	.uahalf	0x14
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL117-1
	.uaword	.LVL126
	.uahalf	0x15
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x13
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL127
	.uaword	.LVL131
	.uahalf	0x15
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL131
	.uaword	.LVL134
	.uahalf	0x14
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL134
	.uaword	.LVL137
	.uahalf	0x15
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL137
	.uaword	.LVL144
	.uahalf	0x14
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL149
	.uaword	.LVL151
	.uahalf	0x5
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x9
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0xe
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0xf
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x12
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x13
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x14
	.byte	0x91
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL150
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL134
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL116
	.uaword	.LVL117-1
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL117-1
	.uaword	.LVL126
	.uahalf	0xc
	.byte	0x7c
	.sleb128 0
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL139
	.uahalf	0xc
	.byte	0x7c
	.sleb128 0
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL116
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL126
	.uahalf	0x7
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL139
	.uahalf	0x7
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL115
	.uaword	.LVL126
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL161
	.uaword	.LVL172-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL172-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL161
	.uaword	.LVL172-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL172-1
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL173
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x5
	.byte	0x84
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL161
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL168
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0
	.uaword	0
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"readBuffer"
.LASF2:
	.string	"writeLength"
.LASF9:
	.string	"length"
.LASF3:
	.string	"startAddress"
.LASF0:
	.string	"programmingType"
.LASF6:
	.string	"writeBuffer"
.LASF7:
	.string	"writeAddress"
.LASF1:
	.string	"address"
.LASF5:
	.string	"uncachedAddress"
.LASF4:
	.string	"returnValue"
	.extern	FblOwnMemcpy,STT_FUNC,0
	.extern	FblHwRegisterLock,STT_FUNC,0
	.extern	FblHwRegisterUnlock,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	FblLookForWatchdogVoid,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
