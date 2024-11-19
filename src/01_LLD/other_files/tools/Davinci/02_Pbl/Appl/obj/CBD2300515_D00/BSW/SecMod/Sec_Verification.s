	.file	"Sec_Verification.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SecM_VerifyWrapper,"ax",@progbits
	.align 1
	.type	SecM_VerifyWrapper, @function
SecM_VerifyWrapper:
.LFB0:
	.file 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
	.loc 1 254 0
.LVL0:
	.loc 1 268 0
	ld.bu	%d8, [%a4] 12
.LVL1:
	.loc 1 269 0
	ld.hu	%d9, [%a4] 20
.LVL2:
	.loc 1 274 0
	jne	%d8, 1, .L2
.LVL3:
	.loc 1 278 0
	ld.a	%a15, [%a5] 4
.LVL4:
	.loc 1 282 0
	ld.w	%d2, [%a4] 28
	st.w	[%a15] 28, %d2
.LVL5:
.L2:
	.loc 1 286 0
	ld.w	%d10, [%a5] 32
.LVL6:
	.loc 1 265 0
	mov	%d2, 0
	.loc 1 288 0
	jz	%d10, .L3
	mov.d	%d11, %a5
	mov.aa	%a15, %a4
	mov	%d12, 0
	mov	%d15, 0
.LVL7:
.L5:
	.loc 1 292 0
	mov.a	%a3, %d11
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a3, [%a2]0
.LVL8:
	.loc 1 293 0
	ld.a	%a4, [%a2] 4
.LVL9:
	.loc 1 296 0
	jne	%d8, 4, .L4
	.loc 1 299 0
	ld.w	%d12, [%a3] 8
.LVL10:
	.loc 1 300 0
	ld.hu	%d9, [%a3] 4
.LVL11:
.L4:
	.loc 1 304 0
	st.b	[%a4] 12, %d8
	.loc 1 305 0
	ld.w	%d2, [%a15] 16
	add	%d2, %d12
	st.w	[%a4] 16, %d2
	.loc 1 306 0
	st.h	[%a4] 20, %d9
	.loc 1 307 0
	ld.w	%d2, [%a15] 24
	st.w	[%a4] 24, %d2
	.loc 1 310 0
	ld.a	%a2, [%a3]0
	calli	%a2
.LVL12:
	.loc 1 312 0
	jnz	%d2, .L3
	.loc 1 288 0 discriminator 2
	add	%d15, 1
.LVL13:
	jne	%d15, %d10, .L5
.LVL14:
.L3:
	.loc 1 320 0
	ret
.LFE0:
	.size	SecM_VerifyWrapper, .-SecM_VerifyWrapper
.section .text.SecM_PopulateCfgList,"ax",@progbits
	.align 1
	.type	SecM_PopulateCfgList, @function
SecM_PopulateCfgList:
.LFB3:
	.loc 1 511 0
.LVL15:
	.loc 1 521 0
	ld.w	%d15, [%a4] 8
	.loc 1 519 0
	mov	%d3, 0
	.loc 1 521 0
	jz	%d15, .L9
	mov	%d15, 0
.LVL16:
.L11:
	.loc 1 524 0
	ld.w	%d2, [%a4]0
	madd	%d5, %d2, %d15, 16
	mov.a	%a15, %d5
.LVL17:
	.loc 1 525 0
	ld.w	%d5, [%a4] 4
.LVL18:
	.loc 1 529 0
	ld.bu	%d2, [%a15] 12
	and	%d2, %d4
	jne	%d2, %d4, .L10
.LVL19:
	.loc 1 534 0
	addsc.a	%a2, %a5, %d3, 3
	st.a	[%a2]0, %a15
	.loc 1 525 0
	madd	%d5, %d5, %d15, 32
.LVL20:
	.loc 1 535 0
	st.w	[%a2] 4, %d5
	.loc 1 537 0
	add	%d3, 1
.LVL21:
.L10:
	.loc 1 521 0 discriminator 2
	add	%d15, 1
.LVL22:
	ld.w	%d2, [%a4] 8
	jlt.u	%d15, %d2, .L11
.LVL23:
.L9:
	.loc 1 542 0
	st.w	[%a5] 32, %d3
	ret
.LFE3:
	.size	SecM_PopulateCfgList, .-SecM_PopulateCfgList
.section .text.SecM_InitPowerOnVerification,"ax",@progbits
	.align 1
	.global	SecM_InitPowerOnVerification
	.type	SecM_InitPowerOnVerification, @function
SecM_InitPowerOnVerification:
.LFB7:
	.loc 1 1009 0
	ret
.LFE7:
	.size	SecM_InitPowerOnVerification, .-SecM_InitPowerOnVerification
.section .text.SecM_VerificationBase,"ax",@progbits
	.align 1
	.global	SecM_VerificationBase
	.type	SecM_VerificationBase, @function
SecM_VerificationBase:
.LFB8:
	.loc 1 1058 0
.LVL24:
	.loc 1 1058 0
	sub.a	%SP, 240
.LCFI0:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 1073 0
	ld.a	%a2, [%a5] 4
.LVL25:
	.loc 1 1076 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	.loc 1 1077 0
	st.w	[%a2] 4, %d15
	.loc 1 1079 0
	st.w	[%a2] 8, %d15
.LVL26:
	.loc 1 1118 0
	ld.w	%d15, [%a5] 8
	jlt.u	%d15, 2, .L16
	.loc 1 1121 0
	lea	%a3, [%SP] 220
	st.a	[%a2] 32, %a3
.LVL27:
	.loc 1 1122 0
	mov	%d15, 20
.LVL28:
	st.w	[%a2] 36, %d15
	.loc 1 1124 0
	mov	%d15, 0
	st.w	[%a2] 40, %d15
.L16:
.LVL29:
.LBB8:
.LBB9:
	.loc 1 583 0
	lea	%a13, [%SP] 4
	mov.aa	%a2, %a13
.LVL30:
	mov	%e2, 0
	lea	%a3, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	st.w	[%a2+]4, %d2
	.loc 1 585 0
	mov.d	%d2, %SP
	addi	%d15, %d2, 40
	mov.a	%a2, %d15
	mov	%e2, 0
	lea	%a3, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	st.w	[%a2+]4, %d2
	.loc 1 588 0
	lea	%a14, [%SP] 76
	mov.aa	%a2, %a14
	mov	%e2, 0
	lea	%a3, 4-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	st.w	[%a2+]4, %d2
	.loc 1 608 0
	mov.aa	%a4, %a12
.LVL31:
	mov.aa	%a5, %a13
.LVL32:
	mov	%d4, 0
	call	SecM_PopulateCfgList
.LVL33:
	.loc 1 611 0
	mov.aa	%a4, %a12
	mov.a	%a5, %d15
	mov	%d4, 4
	call	SecM_PopulateCfgList
.LVL34:
	.loc 1 614 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a14
	mov	%d4, 1
	call	SecM_PopulateCfgList
.LVL35:
	.loc 1 627 0
	mov	%d15, 1
	st.b	[%SP] 136, %d15
	.loc 1 628 0
	mov	%d15, 0
	st.h	[%SP] 144, %d15
	.loc 1 629 0
	ld.w	%d2, [%a15] 24
	st.w	[%SP] 148, %d2
	.loc 1 630 0
	ld.w	%d3, [%a15] 28
	st.w	[%SP] 112, %d3
	.loc 1 632 0
	mov	%d15, 0
	st.w	[%SP] 132, %d15
	.loc 1 635 0
	ld.w	%d15, [%a15] 40
	st.w	[%SP] 152, %d15
	.loc 1 637 0
	ld.w	%d2, [%a15] 32
	st.w	[%SP] 124, %d2
	.loc 1 638 0
	ld.hu	%d15, [%a15] 36
	st.w	[%SP] 128, %d15
	.loc 1 641 0
	lea	%a4, [%SP] 124
	mov.aa	%a5, %a13
	call	SecM_VerifyWrapper
.LVL36:
	.loc 1 643 0
	jnz	%d2, .L27
.LVL37:
	.loc 1 755 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L29
	mov	%d9, 0
.LBB10:
.LBB11:
	.loc 1 480 0
	lea	%a13, [%SP] 156
	.loc 1 486 0
	mov	%d12, 8
	.loc 1 487 0
	mov	%d11, 2
.LVL38:
.L31:
.LBE11:
.LBE10:
	.loc 1 758 0
	ld.w	%d15, [%a15] 4
	madd	%d3, %d15, %d9, 12
	mov.a	%a12, %d3
.LVL39:
	.loc 1 761 0
	ld.w	%d15, [%a12] 4
	st.w	[%SP] 116, %d15
	.loc 1 762 0
	ld.w	%d2, [%a12] 8
	st.w	[%SP] 120, %d2
.LVL40:
.LBB13:
.LBB12:
	.loc 1 477 0
	ld.w	%d15, [%SP] 108
	jz	%d15, .L28
	.loc 1 480 0
	mov	%d4, 4
	ld.w	%d5, [%a12]0
	mov.aa	%a4, %a13
	call	SecM_SetInteger
.LVL41:
	.loc 1 481 0
	mov	%d4, 4
	ld.w	%d5, [%a12] 8
	lea	%a4, [%SP] 160
	call	SecM_SetInteger
.LVL42:
	.loc 1 485 0
	st.a	[%SP] 140, %a13
	.loc 1 486 0
	st.h	[%SP] 144, %d12
	.loc 1 487 0
	st.b	[%SP] 136, %d11
	.loc 1 490 0
	lea	%a4, [%SP] 124
.LVL43:
	lea	%a5, [%SP] 76
	call	SecM_VerifyWrapper
.LVL44:
.LBE12:
.LBE13:
	.loc 1 768 0
	jnz	%d2, .L20
.LVL45:
.L28:
.LBB14:
.LBB15:
	.loc 1 349 0
	ld.w	%d15, [%SP] 36
	jz	%d15, .L21
	.loc 1 352 0
	ld.w	%d10, [%SP] 116
.LVL46:
	.loc 1 353 0
	ld.w	%d15, [%SP] 120
.LVL47:
	.loc 1 373 0
	st.a	[%SP] 140, %a13
	.loc 1 374 0
	st.b	[%SP] 136, %d11
	.loc 1 376 0
	jz	%d15, .L21
.L33:
	.loc 1 379 0
	ld.a	%a2, [%SP] 148
	jz.a	%a2, .L22
	calli	%a2
.LVL48:
.L22:
	.loc 1 383 0
	min.u	%d8, %d15, 64
.LVL49:
	.loc 1 390 0
	mov	%d4, %d10
	mov.aa	%a4, %a13
	mov	%d5, %d8
	ld.a	%a2, [%SP] 112
	calli	%a2
.LVL50:
	.loc 1 411 0
	jz	%d2, .L24
	.loc 1 415 0
	st.h	[%SP] 144, %d2
	.loc 1 416 0
	lea	%a4, [%SP] 124
.LVL51:
	lea	%a5, [%SP] 4
.LVL52:
	call	SecM_VerifyWrapper
.LVL53:
	.loc 1 436 0
	add	%d10, %d8
.LVL54:
	.loc 1 437 0
	sub	%d15, %d8
.LVL55:
	.loc 1 439 0
	jnz	%d2, .L27
.LVL56:
.L30:
	.loc 1 376 0
	jnz	%d15, .L33
	j	.L21
.LVL57:
.L29:
.LBE15:
.LBE14:
	.loc 1 788 0
	mov	%d15, 3
	st.b	[%SP] 136, %d15
	.loc 1 790 0
	lea	%a4, [%SP] 124
	lea	%a5, [%SP] 4
	call	SecM_VerifyWrapper
.LVL58:
	.loc 1 792 0
	jnz	%d2, .L27
	.loc 1 795 0
	ld.w	%d3, [%a15] 16
	st.w	[%SP] 140, %d3
	.loc 1 796 0
	mov	%d15, 4
	st.b	[%SP] 136, %d15
	.loc 1 798 0
	lea	%a4, [%SP] 124
	lea	%a5, [%SP] 40
	call	SecM_VerifyWrapper
.LVL59:
.L27:
.LBE9:
.LBE8:
	.loc 1 1136 0
	mov	%d15, 0
	st.h	[%a15] 20, %d15
	ret
.LVL60:
.L20:
.LBB19:
.LBB18:
	.loc 1 785 0
	jz	%d2, .L29
	j	.L27
.LVL61:
.L24:
.LBB17:
.LBB16:
	.loc 1 436 0
	add	%d10, %d8
.LVL62:
	.loc 1 437 0
	sub	%d15, %d8
.LVL63:
	j	.L30
.LVL64:
.L21:
.LBE16:
.LBE17:
	.loc 1 755 0
	add	%d9, 1
.LVL65:
	ld.w	%d15, [%a15]0
	jlt.u	%d9, %d15, .L31
	j	.L29
.LBE18:
.LBE19:
.LFE8:
	.size	SecM_VerificationBase, .-SecM_VerificationBase
.section .text.SecM_UpdateDataLength,"ax",@progbits
	.align 1
	.global	SecM_UpdateDataLength
	.type	SecM_UpdateDataLength, @function
SecM_UpdateDataLength:
.LFB9:
	.loc 1 1151 0
.LVL66:
	.loc 1 1155 0
	ld.a	%a15, [%a4] 8
	jz.a	%a15, .L37
	.loc 1 1158 0
	ld.w	%d15, [%a15]0
.LVL67:
	.loc 1 1160 0
	ld.bu	%d2, [%a4] 12
	jeq	%d2, 2, .L40
	jeq	%d2, 3, .L41
	.loc 1 1165 0
	ne	%d2, %d2, 1
	sel	%d15, %d2, %d15, 0
.LVL68:
	j	.L39
.LVL69:
.L40:
	.loc 1 1172 0
	ld.hu	%d2, [%a4] 20
	add	%d15, %d2
.LVL70:
	.loc 1 1174 0
	j	.L39
.L41:
	.loc 1 1179 0
	sh	%d15, -6
.LVL71:
.L39:
	.loc 1 1192 0
	st.w	[%a15]0, %d15
.LVL72:
.L37:
	ret
.LFE9:
	.size	SecM_UpdateDataLength, .-SecM_UpdateDataLength
.section .text.SecM_InitVerification,"ax",@progbits
	.align 1
	.global	SecM_InitVerification
	.type	SecM_InitVerification, @function
SecM_InitVerification:
.LFB10:
	.loc 1 1206 0
.LVL73:
	.loc 1 1213 0
	mov	%d2, 0
	ret
.LFE10:
	.size	SecM_InitVerification, .-SecM_InitVerification
.section .text.SecM_DeinitVerification,"ax",@progbits
	.align 1
	.global	SecM_DeinitVerification
	.type	SecM_DeinitVerification, @function
SecM_DeinitVerification:
.LFB11:
	.loc 1 1224 0
.LVL74:
	.loc 1 1231 0
	mov	%d2, 0
	ret
.LFE11:
	.size	SecM_DeinitVerification, .-SecM_DeinitVerification
.section .text.SecM_VerifyChecksumCrc,"ax",@progbits
	.align 1
	.global	SecM_VerifyChecksumCrc
	.type	SecM_VerifyChecksumCrc, @function
SecM_VerifyChecksumCrc:
.LFB12:
	.loc 1 1250 0
.LVL75:
	.loc 1 1260 0
	ld.w	%d15, [%a4] 4
	lt.u	%d15, %d15, 20
	.loc 1 1255 0
	mov	%d2, 1
	.loc 1 1260 0
	jnz	%d15, .L55
	.loc 1 1263 0
	ld.a	%a2, [%a4]0
.LVL76:
	.loc 1 1266 0
	ld.bu	%d15, [%a4] 12
	add	%d15, -1
	jge.u	%d15, 4, .L55
	movh.a	%a15, hi:.L48
	lea	%a15, [%a15] lo:.L48
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L48:
	.code32
	j	.L47
	.code32
	j	.L49
	.code32
	j	.L54
	.code32
	j	.L51
.L49:
	.loc 1 1278 0
	mov	%d2, 2
	j	.L50
.L51:
	.loc 1 1294 0
	ld.w	%d15, [%a4] 16
	st.w	[%a2] 8, %d15
.LVL77:
	.loc 1 1295 0
	mov	%d2, 5
	.loc 1 1304 0
	j	.L50
.LVL78:
.L47:
	.loc 1 1271 0
	mov	%d2, 1
	j	.L50
.L54:
	.loc 1 1285 0
	mov	%d2, 3
.LVL79:
.L50:
	.loc 1 1316 0
	ld.hu	%d15, [%a4] 20
	st.h	[%a2] 12, %d15
	.loc 1 1317 0
	ld.w	%d15, [%a4] 16
	st.w	[%a2] 4, %d15
	.loc 1 1318 0
	ld.w	%d15, [%a4] 24
	st.w	[%a2] 16, %d15
	.loc 1 1319 0
	st.b	[%a2] 2, %d2
	.loc 1 1321 0
	mov.aa	%a4, %a2
.LVL80:
	call	SecM_ComputeCRC
.LVL81:
.L55:
	.loc 1 1326 0
	ret
.LFE12:
	.size	SecM_VerifyChecksumCrc, .-SecM_VerifyChecksumCrc
.section .text.SecM_VerifyHash,"ax",@progbits
	.align 1
	.global	SecM_VerifyHash
	.type	SecM_VerifyHash, @function
SecM_VerifyHash:
.LFB13:
	.loc 1 1449 0
.LVL82:
	sub.a	%SP, 8
.LCFI1:
.LVL83:
	.loc 1 1453 0
	mov	%d15, 1
	.loc 1 1455 0
	jnz	%d4, .L57
	mov.aa	%a15, %a4
.LVL84:
	.loc 1 1460 0
	movh.a	%a2, hi:SecM_HashPrimitives
	lea	%a2, [%a2] lo:SecM_HashPrimitives
	ld.bu	%d15, [%a2] 11
	jne	%d15, 1, .L58
	.loc 1 1463 0
	call	SecM_UpdateDataLength
.LVL85:
.L58:
	.loc 1 1467 0
	ld.bu	%d2, [%a15] 12
	add	%d2, -1
	.loc 1 1453 0
	mov	%d15, 1
	.loc 1 1467 0
	jge.u	%d2, 4, .L57
	movh.a	%a2, hi:.L60
	lea	%a2, [%a2] lo:.L60
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L60:
	.code32
	j	.L59
	.code32
	j	.L61
	.code32
	j	.L62
	.code32
	j	.L63
.L59:
	.loc 1 1472 0
	movh.a	%a15, hi:SecM_HashPrimitives
.LVL86:
	ld.w	%d4, [%a15] lo:SecM_HashPrimitives
	mov	%d5, 1
	mov.a	%a4, 0
	mov	%d6, 0
	mov.a	%a5, 0
	mov.a	%a6, 0
	call	SecM_HashJob
.LVL87:
	mov	%d15, %d2
.LVL88:
	.loc 1 1474 0
	j	.L57
.LVL89:
.L61:
	.loc 1 1479 0
	movh.a	%a2, hi:SecM_HashPrimitives
	ld.w	%d4, [%a2] lo:SecM_HashPrimitives
	mov	%d5, 2
	ld.a	%a4, [%a15] 16
	ld.hu	%d6, [%a15] 20
	mov.a	%a5, 0
	mov.a	%a6, 0
	call	SecM_HashJob
.LVL90:
	mov	%d15, %d2
.LVL91:
	.loc 1 1482 0
	j	.L57
.LVL92:
.L62:
.LBB25:
	.loc 1 1486 0
	movh.a	%a2, hi:SecM_HashPrimitives
	lea	%a15, [%a2] lo:SecM_HashPrimitives
.LVL93:
	ld.hu	%d8, [%a15] 8
	lea	%a6, [%SP] 8
	st.w	[+%a6]-4, %d8
	.loc 1 1489 0
	ld.w	%d4, [%a2] lo:SecM_HashPrimitives
	mov	%d5, 4
	mov.a	%a4, 0
	mov	%d6, 0
	ld.a	%a5, [%a15] 4
	call	SecM_HashJob
.LVL94:
.LBE25:
	.loc 1 1453 0
	mov	%d15, 1
.LBB26:
	.loc 1 1489 0
	jnz	%d2, .L57
.LBE26:
	.loc 1 1453 0
	ld.w	%d15, [%SP] 4
	ne	%d15, %d8, %d15
.LBB27:
	j	.L57
.LVL95:
.L63:
.LBE27:
	.loc 1 1503 0
	movh.a	%a2, hi:SecM_HashPrimitives
	lea	%a2, [%a2] lo:SecM_HashPrimitives
	ld.bu	%d15, [%a2] 10
	jne	%d15, 1, .L65
	.loc 1 1508 0
	movh.a	%a2, hi:SecM_HashPrimitives
	lea	%a2, [%a2] lo:SecM_HashPrimitives
	ld.a	%a4, [%a2] 4
	ld.hu	%d8, [%a2] 8
	ld.a	%a5, [%a15] 16
.LVL96:
.LBB28:
.LBB29:
	.loc 1 827 0
	ld.hu	%d2, [%a15] 20
	jlt.u	%d2, %d8, .L66
	.loc 1 830 0
	mov	%d4, %d8
	call	SecM_CopyBuffer
.LVL97:
	.loc 1 832 0
	mov	%d15, 0
.LVL98:
.L66:
.LBE29:
.LBE28:
	.loc 1 1511 0
	st.h	[%a15] 20, %d8
	j	.L57
.LVL99:
.L65:
	.loc 1 1517 0
	movh.a	%a2, hi:SecM_HashPrimitives
	lea	%a2, [%a2] lo:SecM_HashPrimitives
	ld.w	%d6, [%a2] 4
	ld.hu	%d2, [%a2] 8
	.loc 1 1518 0
	ld.w	%d7, [%a15] 16
.LVL100:
.LBB30:
.LBB31:
	.loc 1 861 0
	ld.hu	%d3, [%a15] 20
	.loc 1 858 0
	mov	%d15, 1
	.loc 1 861 0
	jne	%d3, %d2, .L57
.LVL101:
	.loc 1 874 0
	mov	%d15, 0
	.loc 1 866 0
	jz	%d2, .L57
	mov	%d5, 0
.LVL102:
.L67:
	.loc 1 868 0
	mov.a	%a3, %d7
	addsc.a	%a2, %a3, %d5, 0
	mov.a	%a3, %d6
	addsc.a	%a15, %a3, %d5, 0
	ld.bu	%d4, [%a2]0
	ld.bu	%d3, [%a15]0
	xor	%d3, %d4
	or	%d15, %d3
.LVL103:
	and	%d15, 255
.LVL104:
	add	%d5, 1
.LVL105:
	.loc 1 866 0
	extr.u	%d3, %d5, 0, 16
	jlt.u	%d3, %d2, .L67
	.loc 1 879 0
	cmov	%d15, %d15, 4
.LVL106:
.L57:
.LBE31:
.LBE30:
	.loc 1 1532 0
	mov	%d2, %d15
	ret
.LFE13:
	.size	SecM_VerifyHash, .-SecM_VerifyHash
.section .text.SecM_VerifySig,"ax",@progbits
	.align 1
	.global	SecM_VerifySig
	.type	SecM_VerifySig, @function
SecM_VerifySig:
.LFB14:
	.loc 1 1693 0
.LVL107:
	sub.a	%SP, 8
.LCFI2:
.LVL108:
	.loc 1 1697 0
	mov	%d2, 1
	.loc 1 1699 0
	jge.u	%d4, 2, .L77
	mov	%d15, %d4
	mov.aa	%a15, %a4
.LVL109:
	.loc 1 1704 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:SecM_SignaturePrimitives
	madd	%d3, %d2, %d4, 28
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 24
	jne	%d2, 1, .L78
	.loc 1 1707 0
	call	SecM_UpdateDataLength
.LVL110:
.L78:
	.loc 1 1711 0
	ld.bu	%d3, [%a15] 12
	add	%d3, -1
	.loc 1 1697 0
	mov	%d2, 1
	.loc 1 1711 0
	jge.u	%d3, 4, .L77
	movh.a	%a2, hi:.L80
	lea	%a2, [%a2] lo:.L80
	addsc.a	%a2, %a2, %d3, 2
	ji	%a2
	.align 2
	.align 2
.L80:
	.code32
	j	.L79
	.code32
	j	.L81
	.code32
	j	.L82
	.code32
	j	.L83
.L82:
	.loc 1 1760 0
	mov	%d2, 0
	ret
.L79:
	.loc 1 1722 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:SecM_SignaturePrimitives
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d3, [%a2] 4
	.loc 1 1697 0
	mov	%d2, 1
	.loc 1 1722 0
	jne	%d3, -1, .L77
	.loc 1 1725 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d2, %a2
	addi	%d4, %d2, lo:SecM_SignaturePrimitives
	madd	%d3, %d4, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d4, [%a2]0
	mov	%d5, 1
	ld.a	%a4, [%a15] 28
	mov.a	%a5, 0
	mov	%d6, 0
	mov.a	%a6, 0
	mov	%d7, 0
	call	SecM_SignatureVerifyJob
.LVL111:
	ret
.LVL112:
.L81:
	.loc 1 1740 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:SecM_SignaturePrimitives
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d3, [%a2] 4
	.loc 1 1697 0
	mov	%d2, 1
	.loc 1 1740 0
	jne	%d3, -1, .L77
	.loc 1 1743 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d2, %a2
	addi	%d4, %d2, lo:SecM_SignaturePrimitives
	madd	%d3, %d4, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d4, [%a2]0
	mov	%d5, 2
	mov.a	%a4, 0
	ld.a	%a5, [%a15] 16
	ld.hu	%d6, [%a15] 20
	mov.a	%a6, 0
	mov	%d7, 0
	call	SecM_SignatureVerifyJob
.LVL113:
	ret
.LVL114:
.L83:
.LBB32:
	.loc 1 1785 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:SecM_SignaturePrimitives
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d3, [%a2] 4
.LBE32:
	.loc 1 1697 0
	mov	%d2, 1
.LBB34:
	.loc 1 1785 0
	jne	%d3, -1, .L77
.LBB33:
	.loc 1 1787 0
	lea	%a5, [%SP] 8
	mov	%d2, 0
	st.b	[+%a5]-1, %d2
	.loc 1 1789 0
	movh.a	%a2, hi:SecM_SignaturePrimitives
	mov.d	%d2, %a2
	addi	%d4, %d2, lo:SecM_SignaturePrimitives
	madd	%d3, %d4, %d15, 28
	mov.a	%a2, %d3
	ld.w	%d4, [%a2]0
	mov	%d5, 4
	mov.a	%a4, 0
	mov	%d6, 0
	ld.a	%a6, [%a15] 16
	ld.hu	%d7, [%a15] 20
	call	SecM_SignatureVerifyJob
.LVL115:
.L77:
.LBE33:
.LBE34:
	.loc 1 1821 0
	ret
.LFE14:
	.size	SecM_VerifySig, .-SecM_VerifySig
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.byte	0x4
	.uaword	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0xf0
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.byte	0x4
	.uaword	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.byte	0x4
	.uaword	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Csm/Csm_Types.h"
	.file 5 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
	.file 6 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
	.file 7 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h"
	.file 8 "GenData/SecMPar.h"
	.file 9 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.h"
	.file 10 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1aa6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x80
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x160
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x160
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
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1ca
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
	.uaword	0x160
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x19a
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1ca
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"Crypto_OperationModeType"
	.byte	0x4
	.uahalf	0x262
	.uaword	0x180
	.uleb128 0x2
	.string	"SecM_WordType"
	.byte	0x5
	.byte	0x87
	.uaword	0x23c
	.uleb128 0x2
	.string	"SecM_ByteType"
	.byte	0x5
	.byte	0x8c
	.uaword	0x21d
	.uleb128 0x2
	.string	"SecM_ShortType"
	.byte	0x5
	.byte	0x8e
	.uaword	0x22c
	.uleb128 0x2
	.string	"SecM_RamDataType"
	.byte	0x5
	.byte	0x91
	.uaword	0x2d5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x292
	.uleb128 0x5
	.byte	0x4
	.uaword	0x27d
	.uleb128 0x2
	.string	"SecM_ConstRamDataType"
	.byte	0x5
	.byte	0x97
	.uaword	0x2fe
	.uleb128 0x5
	.byte	0x4
	.uaword	0x304
	.uleb128 0x6
	.uaword	0x292
	.uleb128 0x2
	.string	"SecM_VoidPtrType"
	.byte	0x5
	.byte	0x9d
	.uaword	0x321
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.string	"SecM_ConstVoidPtrType"
	.byte	0x5
	.byte	0x9f
	.uaword	0x340
	.uleb128 0x5
	.byte	0x4
	.uaword	0x346
	.uleb128 0x8
	.uleb128 0x2
	.string	"SecM_StatusType"
	.byte	0x5
	.byte	0xa8
	.uaword	0x292
	.uleb128 0x2
	.string	"SecM_LengthType"
	.byte	0x5
	.byte	0xaa
	.uaword	0x2a7
	.uleb128 0x2
	.string	"SecM_AddrType"
	.byte	0x5
	.byte	0xad
	.uaword	0x27d
	.uleb128 0x2
	.string	"SecM_SizeType"
	.byte	0x5
	.byte	0xaf
	.uaword	0x27d
	.uleb128 0x9
	.byte	0xc
	.byte	0x5
	.byte	0xb2
	.uaword	0x3e5
	.uleb128 0xa
	.string	"transferredAddress"
	.byte	0x5
	.byte	0xb4
	.uaword	0x375
	.byte	0
	.uleb128 0xa
	.string	"targetAddress"
	.byte	0x5
	.byte	0xb5
	.uaword	0x375
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x5
	.byte	0xb6
	.uaword	0x38a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"FL_SegmentInfoType"
	.byte	0x5
	.byte	0xb7
	.uaword	0x39f
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xba
	.uaword	0x431
	.uleb128 0xa
	.string	"nrOfSegments"
	.byte	0x5
	.byte	0xbd
	.uaword	0x27d
	.byte	0
	.uleb128 0xa
	.string	"segmentInfo"
	.byte	0x5
	.byte	0xc0
	.uaword	0x431
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3e5
	.uleb128 0x2
	.string	"FL_SegmentListType"
	.byte	0x5
	.byte	0xc1
	.uaword	0x3ff
	.uleb128 0x2
	.string	"FL_WDTriggerFctType"
	.byte	0x5
	.byte	0xc4
	.uaword	0x46c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x472
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.string	"FL_ReadMemoryFctType"
	.byte	0x5
	.byte	0xc6
	.uaword	0x490
	.uleb128 0x5
	.byte	0x4
	.uaword	0x496
	.uleb128 0xd
	.byte	0x1
	.uaword	0x38a
	.uaword	0x4b0
	.uleb128 0xe
	.uaword	0x375
	.uleb128 0xe
	.uaword	0x2bd
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x2
	.string	"SecM_ByteFastType"
	.byte	0x5
	.byte	0xd5
	.uaword	0x27d
	.uleb128 0x2
	.string	"SecM_ShortFastType"
	.byte	0x5
	.byte	0xd6
	.uaword	0x27d
	.uleb128 0x2
	.string	"SecM_LengthFastType"
	.byte	0x5
	.byte	0xda
	.uaword	0x4c9
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.uahalf	0x105
	.uaword	0x527
	.uleb128 0x10
	.string	"digest"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x527
	.byte	0
	.uleb128 0x10
	.string	"dummy"
	.byte	0x5
	.uahalf	0x108
	.uaword	0x27d
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	0x292
	.uaword	0x537
	.uleb128 0x12
	.uaword	0x537
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_BasicWkspType"
	.byte	0x5
	.uahalf	0x109
	.uaword	0x4fe
	.uleb128 0x4
	.string	"SecM_WorkspacePtrType"
	.byte	0x5
	.uahalf	0x10c
	.uaword	0x57c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x543
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x5a8
	.uleb128 0x10
	.string	"data"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x55e
	.byte	0
	.uleb128 0x10
	.string	"size"
	.byte	0x5
	.uahalf	0x114
	.uaword	0x35e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_WorkspaceType"
	.byte	0x5
	.uahalf	0x115
	.uaword	0x582
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.uahalf	0x118
	.uaword	0x5e9
	.uleb128 0x10
	.string	"data"
	.byte	0x5
	.uahalf	0x11b
	.uaword	0x2d5
	.byte	0
	.uleb128 0x10
	.string	"size"
	.byte	0x5
	.uahalf	0x11d
	.uaword	0x27d
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_VerificationWksp"
	.byte	0x5
	.uahalf	0x11e
	.uaword	0x5c3
	.uleb128 0x4
	.string	"SecM_OperationModeType"
	.byte	0x5
	.uahalf	0x1a9
	.uaword	0x25c
	.uleb128 0x4
	.string	"SecM_Crc16Type"
	.byte	0x5
	.uahalf	0x1e8
	.uaword	0x2a7
	.uleb128 0x4
	.string	"SecM_CRCType"
	.byte	0x5
	.uahalf	0x1f2
	.uaword	0x626
	.uleb128 0xf
	.byte	0xc
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x6b7
	.uleb128 0x10
	.string	"jobId"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x27d
	.byte	0
	.uleb128 0x10
	.string	"digest"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x2bd
	.byte	0x4
	.uleb128 0x10
	.string	"digestLength"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x35e
	.byte	0x8
	.uleb128 0x10
	.string	"computationOnly"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x151
	.byte	0xa
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x212
	.uaword	0x151
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.string	"SecM_HashPrimitiveType"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x652
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5e9
	.uleb128 0xf
	.byte	0x1c
	.byte	0x5
	.uahalf	0x220
	.uaword	0x76f
	.uleb128 0x10
	.string	"jobId"
	.byte	0x5
	.uahalf	0x222
	.uaword	0x27d
	.byte	0
	.uleb128 0x10
	.string	"hashJobId"
	.byte	0x5
	.uahalf	0x223
	.uaword	0x27d
	.byte	0x4
	.uleb128 0x10
	.string	"hashDigest"
	.byte	0x5
	.uahalf	0x224
	.uaword	0x2bd
	.byte	0x8
	.uleb128 0x10
	.string	"hashDigestLength"
	.byte	0x5
	.uahalf	0x225
	.uaword	0x35e
	.byte	0xc
	.uleb128 0x10
	.string	"contextBufferSize"
	.byte	0x5
	.uahalf	0x226
	.uaword	0x27d
	.byte	0x10
	.uleb128 0x10
	.string	"pVerWks"
	.byte	0x5
	.uahalf	0x227
	.uaword	0x6d6
	.byte	0x14
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x228
	.uaword	0x151
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"SecM_SigPrimitiveType"
	.byte	0x5
	.uahalf	0x229
	.uaword	0x6dc
	.uleb128 0x4
	.string	"SecM_ResultBufferType"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x38a
	.uleb128 0x4
	.string	"SecM_VerifyKeyType"
	.byte	0x5
	.uahalf	0x239
	.uaword	0x309
	.uleb128 0x4
	.string	"SecM_VerifyDataType"
	.byte	0x5
	.uahalf	0x23c
	.uaword	0x2bd
	.uleb128 0xf
	.byte	0x2c
	.byte	0x5
	.uahalf	0x23f
	.uaword	0x897
	.uleb128 0x10
	.string	"segmentList"
	.byte	0x5
	.uahalf	0x243
	.uaword	0x437
	.byte	0
	.uleb128 0x10
	.string	"blockStartAddress"
	.byte	0x5
	.uahalf	0x245
	.uaword	0x375
	.byte	0x8
	.uleb128 0x10
	.string	"blockLength"
	.byte	0x5
	.uahalf	0x247
	.uaword	0x38a
	.byte	0xc
	.uleb128 0x10
	.string	"verificationData"
	.byte	0x5
	.uahalf	0x249
	.uaword	0x7c6
	.byte	0x10
	.uleb128 0x10
	.string	"crcTotal"
	.byte	0x5
	.uahalf	0x24b
	.uaword	0x63d
	.byte	0x14
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x24d
	.uaword	0x451
	.byte	0x18
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x24f
	.uaword	0x474
	.byte	0x1c
	.uleb128 0x10
	.string	"workspace"
	.byte	0x5
	.uahalf	0x252
	.uaword	0x5a8
	.byte	0x20
	.uleb128 0x10
	.string	"key"
	.byte	0x5
	.uahalf	0x254
	.uaword	0x7ab
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.string	"SecM_VerifyParamType"
	.byte	0x5
	.uahalf	0x255
	.uaword	0x7e2
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.uahalf	0x258
	.uaword	0x8e4
	.uleb128 0x10
	.string	"sigResultBuffer"
	.byte	0x5
	.uahalf	0x25a
	.uaword	0x78d
	.byte	0
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x25b
	.uaword	0x38a
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_SignatureType"
	.byte	0x5
	.uahalf	0x25c
	.uaword	0x8b4
	.uleb128 0xf
	.byte	0x20
	.byte	0x5
	.uahalf	0x25f
	.uaword	0x994
	.uleb128 0x10
	.string	"currentHash"
	.byte	0x5
	.uahalf	0x262
	.uaword	0x8e4
	.byte	0
	.uleb128 0x10
	.string	"currentDataLength"
	.byte	0x5
	.uahalf	0x264
	.uaword	0x994
	.byte	0x8
	.uleb128 0x10
	.string	"sigState"
	.byte	0x5
	.uahalf	0x266
	.uaword	0x347
	.byte	0xc
	.uleb128 0x10
	.string	"sigSourceBuffer"
	.byte	0x5
	.uahalf	0x268
	.uaword	0x7c6
	.byte	0x10
	.uleb128 0x10
	.string	"sigByteCount"
	.byte	0x5
	.uahalf	0x26a
	.uaword	0x35e
	.byte	0x14
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x26c
	.uaword	0x451
	.byte	0x18
	.uleb128 0x10
	.string	"key"
	.byte	0x5
	.uahalf	0x26f
	.uaword	0x7ab
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x38a
	.uleb128 0x4
	.string	"SecM_SignatureParamType"
	.byte	0x5
	.uahalf	0x270
	.uaword	0x8ff
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x5a
	.uaword	0xa38
	.uleb128 0xa
	.string	"currentCRC"
	.byte	0x6
	.byte	0x5c
	.uaword	0x626
	.byte	0
	.uleb128 0xa
	.string	"crcState"
	.byte	0x6
	.byte	0x5d
	.uaword	0x292
	.byte	0x2
	.uleb128 0xa
	.string	"crcSourceBuffer"
	.byte	0x6
	.byte	0x5e
	.uaword	0x2e1
	.byte	0x4
	.uleb128 0xa
	.string	"crcOutputBuffer"
	.byte	0x6
	.byte	0x5f
	.uaword	0x2bd
	.byte	0x8
	.uleb128 0xa
	.string	"crcByteCount"
	.byte	0x6
	.byte	0x60
	.uaword	0x35e
	.byte	0xc
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.byte	0x61
	.uaword	0x451
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.string	"SecM_CRC16ParamType"
	.byte	0x6
	.byte	0x62
	.uaword	0x9ba
	.uleb128 0x2
	.string	"SecM_CRCParamType"
	.byte	0x6
	.byte	0x77
	.uaword	0xa38
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa53
	.uleb128 0x2
	.string	"SecM_VerifyInitType"
	.byte	0x7
	.byte	0xb2
	.uaword	0x323
	.uleb128 0x2
	.string	"SecM_VerifyDeinitType"
	.byte	0x7
	.byte	0xb4
	.uaword	0x323
	.uleb128 0x5
	.byte	0x4
	.uaword	0x897
	.uleb128 0x2
	.string	"pSecVerifySignatureFct"
	.byte	0x7
	.byte	0xba
	.uaword	0xace
	.uleb128 0x5
	.byte	0x4
	.uaword	0xad4
	.uleb128 0xd
	.byte	0x1
	.uaword	0x347
	.uaword	0xae4
	.uleb128 0xe
	.uaword	0xae4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x99a
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.byte	0xc1
	.uaword	0xb2d
	.uleb128 0xa
	.string	"pFunction"
	.byte	0x7
	.byte	0xc3
	.uaword	0xab0
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.byte	0xc4
	.uaword	0x35e
	.byte	0x4
	.uleb128 0xa
	.string	"offset"
	.byte	0x7
	.byte	0xc5
	.uaword	0x4e3
	.byte	0x8
	.uleb128 0xa
	.string	"mask"
	.byte	0x7
	.byte	0xc6
	.uaword	0x292
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"SecM_VerifyOperationType"
	.byte	0x7
	.byte	0xc7
	.uaword	0xaea
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.byte	0xca
	.uaword	0xb6e
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x7
	.byte	0xcc
	.uaword	0xb6e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x7
	.byte	0xcd
	.uaword	0xae4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb74
	.uleb128 0x6
	.uaword	0xb2d
	.uleb128 0x2
	.string	"SecM_VerifyConfigType"
	.byte	0x7
	.byte	0xd2
	.uaword	0xb4d
	.uleb128 0x9
	.byte	0xc
	.byte	0x7
	.byte	0xd5
	.uaword	0xbb9
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x7
	.byte	0xd7
	.uaword	0xb79
	.byte	0
	.uleb128 0xa
	.string	"count"
	.byte	0x7
	.byte	0xd8
	.uaword	0x4b0
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"SecM_VerifyConfigListType"
	.byte	0x7
	.byte	0xd9
	.uaword	0xb96
	.uleb128 0x9
	.byte	0x2c
	.byte	0x1
	.byte	0x6d
	.uaword	0xc2d
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6f
	.uaword	0x474
	.byte	0
	.uleb128 0xa
	.string	"verifyAddress"
	.byte	0x1
	.byte	0x70
	.uaword	0x375
	.byte	0x4
	.uleb128 0xa
	.string	"remainingBytes"
	.byte	0x1
	.byte	0x71
	.uaword	0x38a
	.byte	0x8
	.uleb128 0xa
	.string	"sigParam"
	.byte	0x1
	.byte	0x72
	.uaword	0x99a
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"SecM_VerifyContextType"
	.byte	0x1
	.byte	0x78
	.uaword	0xbda
	.uleb128 0x9
	.byte	0x24
	.byte	0x1
	.byte	0x7b
	.uaword	0xc6e
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7d
	.uaword	0xc6e
	.byte	0
	.uleb128 0xa
	.string	"count"
	.byte	0x1
	.byte	0x7e
	.uaword	0x4b0
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.uaword	0xb79
	.uaword	0xc7e
	.uleb128 0x12
	.uaword	0x537
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.string	"SecM_VerifyConfigPairType"
	.byte	0x1
	.byte	0x7f
	.uaword	0xc4b
	.uleb128 0x14
	.string	"SecM_VerifyWrapper"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd8e
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfc
	.uaword	0xae4
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0xfd
	.uaword	0xd8e
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x1
	.byte	0xff
	.uaword	0x347
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x100
	.uaword	0x4b0
	.uaword	.LLST3
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x101
	.uaword	0x4b0
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.string	"action"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x292
	.uaword	.LLST4
	.uleb128 0x19
	.string	"byteCount"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x35e
	.uaword	.LLST5
	.uleb128 0x19
	.string	"sourceOffset"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x4e3
	.uaword	.LLST6
	.uleb128 0x19
	.string	"pConfig"
	.byte	0x1
	.uahalf	0x105
	.uaword	0xd94
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x106
	.uaword	0xb6e
	.uaword	.LLST8
	.uleb128 0x19
	.string	"pParam"
	.byte	0x1
	.uahalf	0x107
	.uaword	0xae4
	.uaword	.LLST9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc7e
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb79
	.uleb128 0x1a
	.string	"SecM_PopulateCfgList"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe72
	.uleb128 0x1b
	.string	"pSourceList"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0xe72
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.string	"pTargetList"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0xd8e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1b
	.string	"mask"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x292
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"inIndex"
	.byte	0x1
	.uahalf	0x200
	.uaword	0x4b0
	.uaword	.LLST10
	.uleb128 0x19
	.string	"outIndex"
	.byte	0x1
	.uahalf	0x201
	.uaword	0x4b0
	.uaword	.LLST11
	.uleb128 0x19
	.string	"pSourceOperation"
	.byte	0x1
	.uahalf	0x202
	.uaword	0xb6e
	.uaword	.LLST12
	.uleb128 0x19
	.string	"pSourceParam"
	.byte	0x1
	.uahalf	0x203
	.uaword	0xae4
	.uaword	.LLST13
	.uleb128 0x19
	.string	"pTarget"
	.byte	0x1
	.uahalf	0x204
	.uaword	0xd94
	.uaword	.LLST14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe78
	.uleb128 0x6
	.uaword	0xbb9
	.uleb128 0x1c
	.byte	0x1
	.string	"SecM_InitPowerOnVerification"
	.byte	0x1
	.uahalf	0x3f0
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.string	"SecM_VerificationWrapper"
	.byte	0x1
	.uahalf	0x23a
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0xf71
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23a
	.uaword	0xaaa
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x23b
	.uaword	0xe72
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x347
	.uleb128 0x20
	.string	"context"
	.byte	0x1
	.uahalf	0x240
	.uaword	0xc2d
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x241
	.uaword	0x4b0
	.uleb128 0x20
	.string	"pSegmentList"
	.byte	0x1
	.uahalf	0x243
	.uaword	0xf71
	.uleb128 0x1f
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x245
	.uaword	0x431
	.uleb128 0x20
	.string	"cfgListAll"
	.byte	0x1
	.uahalf	0x247
	.uaword	0xc7e
	.uleb128 0x20
	.string	"cfgListVerify"
	.byte	0x1
	.uahalf	0x249
	.uaword	0xc7e
	.uleb128 0x20
	.string	"cfgListAddr"
	.byte	0x1
	.uahalf	0x24c
	.uaword	0xc7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x437
	.uleb128 0x1d
	.string	"SecM_UpdateSegmentAddress"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0xff2
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xff2
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0xd8e
	.uleb128 0x1e
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0xff8
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x347
	.uleb128 0x20
	.string	"addressBuffer"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x1003
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0xae4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc2d
	.uleb128 0x5
	.byte	0x4
	.uaword	0xffe
	.uleb128 0x6
	.uaword	0x3e5
	.uleb128 0x11
	.uaword	0x292
	.uaword	0x1013
	.uleb128 0x12
	.uaword	0x537
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.string	"SecM_UpdateSegment"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0x10cf
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x14b
	.uaword	0xff2
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x14c
	.uaword	0xd8e
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x347
	.uleb128 0x20
	.string	"currentAddress"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x375
	.uleb128 0x20
	.string	"remainderLength"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x38a
	.uleb128 0x20
	.string	"verifyCount"
	.byte	0x1
	.uahalf	0x151
	.uaword	0x38a
	.uleb128 0x20
	.string	"readCount"
	.byte	0x1
	.uahalf	0x152
	.uaword	0x38a
	.uleb128 0x20
	.string	"verifyBuffer"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x10cf
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x159
	.uaword	0xae4
	.byte	0
	.uleb128 0x11
	.uaword	0x292
	.uaword	0x10df
	.uleb128 0x12
	.uaword	0x537
	.byte	0x3f
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"SecM_VerificationBase"
	.byte	0x1
	.uahalf	0x420
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x13e4
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x420
	.uaword	0xaaa
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x421
	.uaword	0xe72
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x423
	.uaword	0x347
	.uleb128 0x19
	.string	"pVerifyContext"
	.byte	0x1
	.uahalf	0x424
	.uaword	0xae4
	.uaword	.LLST17
	.uleb128 0x23
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x427
	.uaword	0x4b0
	.byte	0x1
	.uleb128 0x17
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x428
	.uaword	0x4b0
	.uaword	.LLST18
	.uleb128 0x24
	.string	"crcWrittenParam"
	.byte	0x1
	.uahalf	0x42e
	.uaword	0xa53
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.uaword	0xeab
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x46a
	.uleb128 0x26
	.uaword	0xede
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	0xed2
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.uaword	0xeea
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	0xef6
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.uaword	0xf06
	.uaword	.LLST22
	.uleb128 0x29
	.uaword	0xf12
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0xf27
	.uaword	.LLST23
	.uleb128 0x29
	.uaword	0xf33
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x29
	.uaword	0xf46
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.uaword	0xf5c
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.uaword	0xf77
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x1295
	.uleb128 0x26
	.uaword	0xfb7
	.uaword	.LLST24
	.uleb128 0x26
	.uaword	0xfab
	.uaword	.LLST25
	.uleb128 0x26
	.uaword	0xf9f
	.uaword	.LLST26
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x28
	.uaword	0xfc3
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0xfcf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.uaword	0xfe5
	.uaword	.LLST28
	.uleb128 0x2b
	.uaword	.LVL41
	.uaword	0x19b1
	.uaword	0x1262
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL42
	.uaword	0x19b1
	.uaword	0x127c
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL44
	.uaword	0xc9f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1013
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x304
	.uaword	0x1335
	.uleb128 0x26
	.uaword	0x1040
	.uaword	.LLST29
	.uleb128 0x26
	.uaword	0x1034
	.uaword	.LLST30
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x28
	.uaword	0x104c
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	0x1058
	.uaword	.LLST32
	.uleb128 0x28
	.uaword	0x106f
	.uaword	.LLST33
	.uleb128 0x28
	.uaword	0x1087
	.uaword	.LLST34
	.uleb128 0x28
	.uaword	0x109b
	.uaword	.LLST35
	.uleb128 0x29
	.uaword	0x10ad
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.uaword	0x10c2
	.uaword	.LLST36
	.uleb128 0x2e
	.uaword	.LVL50
	.uaword	0x131b
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL53
	.uaword	0xc9f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL33
	.uaword	0xd9a
	.uaword	0x1354
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL34
	.uaword	0xd9a
	.uaword	0x1373
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL35
	.uaword	0xd9a
	.uaword	0x1392
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL36
	.uaword	0xc9f
	.uaword	0x13ad
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL58
	.uaword	0xc9f
	.uaword	0x13c9
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL59
	.uaword	0xc9f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"SecM_UpdateDataLength"
	.byte	0x1
	.uahalf	0x47e
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1435
	.uleb128 0x30
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x47e
	.uaword	0xae4
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.string	"dataLength"
	.byte	0x1
	.uahalf	0x480
	.uaword	0x38a
	.uaword	.LLST37
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_InitVerification"
	.byte	0x1
	.uahalf	0x4b5
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1474
	.uleb128 0x1b
	.string	"init"
	.byte	0x1
	.uahalf	0x4b5
	.uaword	0xa72
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_DeinitVerification"
	.byte	0x1
	.uahalf	0x4c7
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14b7
	.uleb128 0x1b
	.string	"deinit"
	.byte	0x1
	.uahalf	0x4c7
	.uaword	0xa8d
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_VerifyChecksumCrc"
	.byte	0x1
	.uahalf	0x4e1
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x153d
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4e1
	.uaword	0xae4
	.uaword	.LLST38
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x4e3
	.uaword	0x347
	.uaword	.LLST39
	.uleb128 0x19
	.string	"pCrcParam"
	.byte	0x1
	.uahalf	0x4e4
	.uaword	0xa6c
	.uaword	.LLST40
	.uleb128 0x19
	.string	"crcAction"
	.byte	0x1
	.uahalf	0x4e5
	.uaword	0x292
	.uaword	.LLST41
	.uleb128 0x32
	.uaword	.LVL81
	.uaword	0x19db
	.byte	0
	.uleb128 0x1d
	.string	"SecM_CopyDigest"
	.byte	0x1
	.uahalf	0x333
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0x15a7
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x333
	.uaword	0x2e1
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x333
	.uaword	0x35e
	.uleb128 0x33
	.string	"pOutputData"
	.byte	0x1
	.uahalf	0x334
	.uaword	0x2bd
	.uleb128 0x33
	.string	"outputSize"
	.byte	0x1
	.uahalf	0x334
	.uaword	0x35e
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x336
	.uaword	0x347
	.byte	0
	.uleb128 0x1d
	.string	"SecM_CompareDigest"
	.byte	0x1
	.uahalf	0x353
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0x1638
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x353
	.uaword	0x2e1
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x353
	.uaword	0x35e
	.uleb128 0x33
	.string	"pProvidedData"
	.byte	0x1
	.uahalf	0x354
	.uaword	0x2e1
	.uleb128 0x33
	.string	"providedSize"
	.byte	0x1
	.uahalf	0x354
	.uaword	0x35e
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x356
	.uaword	0x347
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x357
	.uaword	0x35e
	.uleb128 0x20
	.string	"accumulated"
	.byte	0x1
	.uahalf	0x358
	.uaword	0x292
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_VerifyHash"
	.byte	0x1
	.uahalf	0x5a8
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1800
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x5a8
	.uaword	0xae4
	.uaword	.LLST42
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x5a8
	.uaword	0x27d
	.uaword	.LLST43
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x5aa
	.uaword	0x347
	.uaword	.LLST44
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x5ab
	.uaword	0x1800
	.uleb128 0x34
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0x16f0
	.uleb128 0x24
	.string	"hashResultLength"
	.byte	0x1
	.uahalf	0x5ce
	.uaword	0x1bc
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2d
	.uaword	.LVL94
	.uaword	0x19ff
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x153d
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x5e4
	.uaword	0x174c
	.uleb128 0x26
	.uaword	0x1587
	.uaword	.LLST45
	.uleb128 0x26
	.uaword	0x1573
	.uaword	.LLST46
	.uleb128 0x26
	.uaword	0x1567
	.uaword	.LLST47
	.uleb128 0x26
	.uaword	0x155b
	.uaword	.LLST48
	.uleb128 0x36
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x28
	.uaword	0x159a
	.uaword	.LLST49
	.uleb128 0x2d
	.uaword	.LVL97
	.uaword	0x1a39
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x15a7
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x5ed
	.uaword	0x17aa
	.uleb128 0x26
	.uaword	0x15f6
	.uaword	.LLST50
	.uleb128 0x26
	.uaword	0x15e0
	.uaword	.LLST51
	.uleb128 0x26
	.uaword	0x15d4
	.uaword	.LLST52
	.uleb128 0x26
	.uaword	0x15c8
	.uaword	.LLST53
	.uleb128 0x36
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x28
	.uaword	0x160b
	.uaword	.LLST54
	.uleb128 0x28
	.uaword	0x1617
	.uaword	.LLST55
	.uleb128 0x28
	.uaword	0x1623
	.uaword	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL85
	.uaword	0x13e4
	.uaword	0x17be
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL87
	.uaword	0x19ff
	.uaword	0x17e6
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL90
	.uaword	0x19ff
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1806
	.uleb128 0x6
	.uaword	0x6b7
	.uleb128 0x31
	.byte	0x1
	.string	"SecM_VerifySig"
	.byte	0x1
	.uahalf	0x69c
	.byte	0x1
	.uaword	0x347
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1923
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x69c
	.uaword	0xae4
	.uaword	.LLST57
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x69c
	.uaword	0x27d
	.uaword	.LLST58
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x69e
	.uaword	0x347
	.uaword	.LLST59
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x69f
	.uaword	0x1923
	.uleb128 0x34
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0x18c9
	.uleb128 0x19
	.string	"ctxResult"
	.byte	0x1
	.uahalf	0x6e5
	.uaword	0x347
	.uaword	.LLST60
	.uleb128 0x36
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x24
	.string	"dummy"
	.byte	0x1
	.uahalf	0x6fb
	.uaword	0x527
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2d
	.uaword	.LVL115
	.uaword	0x1a63
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL110
	.uaword	0x13e4
	.uaword	0x18dd
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL111
	.uaword	0x1a63
	.uaword	0x1904
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL113
	.uaword	0x1a63
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1929
	.uleb128 0x6
	.uaword	0x76f
	.uleb128 0x37
	.string	"crcZeroValue"
	.byte	0x1
	.byte	0xba
	.uaword	0x1943
	.byte	0
	.uleb128 0x6
	.uaword	0x63d
	.uleb128 0x11
	.uaword	0x6b7
	.uaword	0x1958
	.uleb128 0x12
	.uaword	0x537
	.byte	0
	.byte	0
	.uleb128 0x38
	.string	"SecM_HashPrimitives"
	.byte	0x8
	.byte	0x69
	.uaword	0x1975
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1948
	.uleb128 0x11
	.uaword	0x76f
	.uaword	0x198a
	.uleb128 0x12
	.uaword	0x537
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.string	"SecM_SignaturePrimitives"
	.byte	0x8
	.byte	0x6f
	.uaword	0x19ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x197a
	.uleb128 0x39
	.byte	0x1
	.string	"SecM_SetInteger"
	.byte	0xa
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.uaword	0x19db
	.uleb128 0xe
	.uaword	0x4b0
	.uleb128 0xe
	.uaword	0x27d
	.uleb128 0xe
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"SecM_ComputeCRC"
	.byte	0x6
	.byte	0x9d
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0x19ff
	.uleb128 0xe
	.uaword	0xa6c
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"SecM_HashJob"
	.byte	0x9
	.byte	0x3a
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uaword	0x1a39
	.uleb128 0xe
	.uaword	0x27d
	.uleb128 0xe
	.uaword	0x607
	.uleb128 0xe
	.uaword	0x2e1
	.uleb128 0xe
	.uaword	0x27d
	.uleb128 0xe
	.uaword	0x2bd
	.uleb128 0xe
	.uaword	0x2db
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"SecM_CopyBuffer"
	.byte	0xa
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uaword	0x1a63
	.uleb128 0xe
	.uaword	0x2e1
	.uleb128 0xe
	.uaword	0x2bd
	.uleb128 0xe
	.uaword	0x2a7
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"SecM_SignatureVerifyJob"
	.byte	0x9
	.byte	0x55
	.byte	0x1
	.uaword	0x347
	.byte	0x1
	.uleb128 0xe
	.uaword	0x27d
	.uleb128 0xe
	.uaword	0x607
	.uleb128 0xe
	.uaword	0x309
	.uleb128 0xe
	.uaword	0x2e1
	.uleb128 0xe
	.uaword	0x27d
	.uleb128 0xe
	.uaword	0x2e1
	.uleb128 0xe
	.uaword	0x27d
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2116
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL14
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
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
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL5
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x84
	.sleb128 20
	.uaword	.LVL5
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x8
	.byte	0x7f
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL24
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL32
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL38
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL38
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LFE8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL60
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL39
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41-1
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL60
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41-1
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL60
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL60
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL40
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL45
	.uaword	.LVL52
	.uahalf	0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-1
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL45
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL45
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL47
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL50
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL47
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL75
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL80
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL76
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL82
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL85-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL102
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL82
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL83
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	.LVL102
	.uaword	.LVL106
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL107
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL110-1
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL115
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL107
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL110-1
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL108
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"cfgCount"
.LASF5:
	.string	"pContext"
.LASF15:
	.string	"primitiveId"
.LASF0:
	.string	"length"
.LASF4:
	.string	"pOperation"
.LASF14:
	.string	"calculatedSize"
.LASF7:
	.string	"pVerifyParam"
.LASF6:
	.string	"pPrimitives"
.LASF3:
	.string	"readMemory"
.LASF8:
	.string	"pCfgList"
.LASF12:
	.string	"pSegmentInfo"
.LASF10:
	.string	"index"
.LASF2:
	.string	"wdTriggerFct"
.LASF1:
	.string	"updateVerifiedData"
.LASF9:
	.string	"result"
.LASF13:
	.string	"pCalculatedData"
.LASF16:
	.string	"pPrimitive"
	.extern	SecM_SignatureVerifyJob,STT_FUNC,0
	.extern	SecM_SignaturePrimitives,STT_OBJECT,56
	.extern	SecM_CopyBuffer,STT_FUNC,0
	.extern	SecM_HashJob,STT_FUNC,0
	.extern	SecM_HashPrimitives,STT_OBJECT,12
	.extern	SecM_ComputeCRC,STT_FUNC,0
	.extern	SecM_SetInteger,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
