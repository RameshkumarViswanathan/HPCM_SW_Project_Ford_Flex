	.file	"actCTRDRBG.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actAesCtrDrbgConstructS,"ax",@progbits
	.align 1
	.type	actAesCtrDrbgConstructS, @function
actAesCtrDrbgConstructS:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
	.loc 1 300 0
.LVL0:
	mov.aa	%a12, %a4
	mov.d	%d12, %a5
	mov.aa	%a13, %a6
	mov.aa	%a14, %a7
	mov	%d15, %d5
.LVL1:
	.loc 1 308 0
	ld.w	%d11, [%a7]0
.LVL2:
	.loc 1 309 0
	ld.bu	%d9, [%a6]0
.LVL3:
	.loc 1 305 0
	mov	%d2, 16
	.loc 1 304 0
	mov	%d13, 0
	.loc 1 313 0
	jne	%d6, 1, .L2
	.loc 1 316 0
	mov.aa	%a4, %a5
.LVL4:
	call	actU32toBE
.LVL5:
	.loc 1 318 0
	mov.a	%a4, %d12
	add.a	%a4, 4
	mov	%d4, %d15
	call	actU32toBE
.LVL6:
	.loc 1 321 0
	mov	%d2, 8
	.loc 1 320 0
	mov	%d13, %d2
.LVL7:
.L2:
	.loc 1 324 0
	ld.bu	%d8, [%a13]0
.LVL8:
	ld.bu	%d15, [%a12]0
.LVL9:
	lt.u	%d3, %d8, %d15
	and.ne	%d3, %d2, 0
	mov	%d15, %d11
	mov	%d1, 0
	mov	%d4, 0
	.loc 1 329 0
	add	%d5, %d12, %d13
	.loc 1 336 0
	mov.a	%a5, 0
	addi	%d10, %d8, 1
	.loc 1 324 0
	jnz	%d3, .L12
	j	.L4
.LVL10:
.L10:
	.loc 1 329 0
	ld.a	%a4, [%a2]0
	addsc.a	%a3, %a4, %d15, 0
	ld.bu	%d3, [%a3]0
	mov.a	%a4, %d5
	addsc.a	%a3, %a4, %d4, 0
	st.b	[%a3]0, %d3
	.loc 1 330 0
	add	%d4, 1
.LVL11:
	.loc 1 331 0
	add	%d15, 1
.LVL12:
	.loc 1 334 0
	add	%d2, -1
.LVL13:
	.loc 1 326 0
	ld.w	%d0, [%a15] 8
	ne	%d3, %d2, 0
	and.lt.u	%d3, %d15, %d0
	jnz	%d3, .L10
	mov	%d9, %d6
	.loc 1 331 0
	mov	%d11, %d15
.LVL14:
.L6:
	add	%d1, 1
	.loc 1 336 0 discriminator 2
	mov.d	%d15, %a5
	add	%d7, %d10
.LVL15:
	.loc 1 324 0 discriminator 2
	ld.bu	%d6, [%a12]0
	and	%d7, %d7, 255
	lt.u	%d3, %d7, %d6
	and.ne	%d3, %d2, 0
	jz	%d3, .L4
.LVL16:
.L12:
	and	%d7, %d1, 255
	add	%d6, %d7, %d8
	and	%d6, %d6, 255
.LVL17:
	addsc.a	%a15, %a12, %d6, 3
	.loc 1 326 0
	ld.w	%d14, [%a15] 8
	ne	%d3, %d2, 0
	and.lt.u	%d3, %d15, %d14
	.loc 1 329 0
	mov.aa	%a2, %a15
	add.a	%a2, 4
	.loc 1 326 0
	jnz	%d3, .L10
	j	.L6
.LVL18:
.L4:
	.loc 1 339 0
	st.b	[%a13]0, %d9
	.loc 1 340 0
	st.w	[%a14]0, %d11
	.loc 1 343 0
	ld.bu	%d15, [%a12]0
	add	%d15, -1
	jne	%d9, %d15, .L1
	.loc 1 344 0 discriminator 1
	addsc.a	%a12, %a12, %d9, 3
.LVL19:
	.loc 1 343 0 discriminator 1
	ld.w	%d3, [%a12] 8
	.loc 1 344 0 discriminator 1
	ne	%d15, %d2, 0
	and.eq	%d15, %d11, %d3
	jz	%d15, .L1
	.loc 1 349 0
	add	%d4, %d13
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d4, 0
	mov	%d15, -128
	st.b	[%a15]0, %d15
	.loc 1 351 0
	jeq	%d2, 1, .L1
	.loc 1 354 0
	mov.a	%a4, %d4
	add.a	%a4, 1
	addsc.a	%a4, %a4, %d12, 0
	mov	%d4, 0
	addi	%d5, %d2, -1
	call	VStdLib_MemSet
.LVL20:
.L1:
	ret
.LFE15:
	.size	actAesCtrDrbgConstructS, .-actAesCtrDrbgConstructS
.section .text.actAesCtrDrbgDF,"ax",@progbits
	.align 1
	.type	actAesCtrDrbgDF, @function
actAesCtrDrbgDF:
.LFB19:
	.loc 1 589 0
.LVL21:
	sub.a	%SP, 56
.LCFI0:
	st.a	[%SP] 16, %a4
	st.a	[%SP] 12, %a5
	st.a	[%SP] 32, %a6
	st.w	[%SP] 44, %d4
	st.w	[%SP] 40, %d5
	st.a	[%SP] 4, %a7
.LVL22:
	.loc 1 596 0
	lea	%a15, [%a4] 444
	st.a	[%SP] 24, %a15
.LVL23:
	.loc 1 597 0
	lea	%a15, [%a4] 396
.LVL24:
	st.a	[%SP] 36, %a15
.LVL25:
	.loc 1 604 0
	ld.a	%a4, [%SP] 24
.LVL26:
	mov	%d4, 0
.LVL27:
	mov	%d5, 16
.LVL28:
	call	VStdLib_MemSet
.LVL29:
	.loc 1 607 0
	ld.a	%a4, [%SP] 36
	mov	%d4, 0
	mov	%d5, 48
	call	VStdLib_MemSet
.LVL30:
	.loc 1 612 0
	ld.a	%a15, [%SP] 12
.LVL31:
	ld.bu	%d3, [%a15]0
	.loc 1 611 0
	mov	%d12, 0
	.loc 1 612 0
	jz	%d3, .L15
	j	.L14
.LVL32:
.L17:
	.loc 1 615 0
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d15, 3
	ld.w	%d4, [%a2] 8
	add	%d4, %d12
.LVL33:
	.loc 1 621 0
	ge.u	%d3, %d4, %d12
	sel	%d2, %d3, %d2, 245
.LVL34:
	.loc 1 615 0
	mov	%d12, %d4
.LVL35:
.L28:
	.loc 1 612 0 discriminator 2
	add	%d15, 1
.LVL36:
	loop	%a15, .L17
	.loc 1 626 0
	addi	%d15, %d12, 9
.LVL37:
	jlt.u	%d15, %d12, .L29
	.loc 1 631 0
	jnz	%d2, .L31
.LVL38:
.L15:
	.loc 1 633 0
	addi	%d11, %d12, 8
	andn	%d11, %d11, ~(-16)
	addi	%d11, %d11, 16
.LVL39:
	.loc 1 636 0
	ld.w	%d15, [%SP] 40
	jz	%d15, .L19
	ld.w	%d15, [%SP] 36
	st.w	[%SP] 20, %d15
	mov	%d14, 0
.LBB4:
.LBB5:
	.loc 1 392 0
	ld.w	%d15, [%SP] 16
	addi	%d10, %d15, 460
	.loc 1 394 0
	addi	%d9, %d15, 348
	.loc 1 417 0
	movh.a	%a15, hi:tempKey
	lea	%a15, [%a15] lo:tempKey
	.loc 1 435 0
	mov.a	%a14, %d10
	ld.w	%d10, [%SP] 40
	mov.a	%a13, %d9
.LVL40:
.L26:
.LBE5:
.LBE4:
	.loc 1 639 0 discriminator 3
	ld.w	%d15, [%SP] 20
	st.w	[%SP] 28, %d15
.LVL41:
.LBB8:
.LBB6:
	.loc 1 395 0 discriminator 3
	ld.w	%d15, [%SP] 16
.LVL42:
	addi	%d8, %d15, 364
.LVL43:
	.loc 1 398 0 discriminator 3
	mov	%d15, 0
	st.b	[%SP] 51, %d15
	.loc 1 399 0 discriminator 3
	mov	%d15, 0
	st.w	[%SP] 52, %d15
	.loc 1 401 0 discriminator 3
	ld.a	%a2, [%SP] 16
	ld.bu	%d15, [%a2] 528
	and	%d15, %d15, 15
	.loc 1 411 0 discriminator 3
	eq	%d3, %d15, 1
	mov	%d2, 32
	sel	%d13, %d3, %d2, 48
.LVL44:
	.loc 1 417 0 discriminator 3
	st.a	[%SP] 8, %a2
	mov.aa	%a4, %a2
	mov.aa	%a5, %a15
	mov	%d4, 16
	sel	%d4, %d3, %d4, 32
.LVL45:
	ld.a	%a6, [%SP] 4
	call	actAESInitEncryptBlock
.LVL46:
	.loc 1 421 0 discriminator 3
	ld.a	%a4, [%SP] 16
	ld.a	%a5, [%SP] 24
	mov.aa	%a6, %a13
	ld.a	%a7, [%SP] 4
	call	actAESEncryptBlock
.LVL47:
	.loc 1 423 0 discriminator 3
	mov.aa	%a4, %a14
	mov	%d4, 0
	mov	%d5, 16
	call	VStdLib_MemSet
.LVL48:
	.loc 1 427 0 discriminator 3
	jz	%d11, .L21
	.loc 1 427 0 is_stmt 0
	mov	%d9, 0
	mov.a	%a12, %d8
.LVL49:
.L25:
	.loc 1 429 0 is_stmt 1
	jnz	%d9, .L22
.LVL50:
	.loc 1 431 0
	ld.a	%a4, [%SP] 12
	mov.aa	%a5, %a14
	mov	%d4, %d12
	lea	%a6, [%SP] 51
	lea	%a7, [%SP] 52
	mov	%d5, %d13
	mov	%d6, 1
	call	actAesCtrDrbgConstructS
.LVL51:
	j	.L23
.LVL52:
.L22:
	.loc 1 435 0
	ld.a	%a4, [%SP] 12
	mov.aa	%a5, %a14
	mov	%d4, %d12
	lea	%a6, [%SP] 51
	lea	%a7, [%SP] 52
	mov	%d5, %d13
	mov	%d6, 0
	call	actAesCtrDrbgConstructS
.LVL53:
	j	.L23
.LVL54:
.L24:
	.loc 1 441 0
	addsc.a	%a3, %a12, %d3, 0
	addsc.a	%a5, %a14, %d3, 0
	addsc.a	%a4, %a13, %d3, 0
	ld.bu	%d2, [%a5]0
	ld.bu	%d15, [%a4]0
	xor	%d15, %d2
	st.b	[%a3]0, %d15
	.loc 1 439 0
	add	%d3, 1
.LVL55:
	loop	%a2, .L24
	.loc 1 445 0
	ld.a	%a4, [%SP] 8
	mov.aa	%a5, %a12
	mov.aa	%a6, %a13
	ld.a	%a7, [%SP] 4
	call	actAESEncryptBlock
.LVL56:
	.loc 1 427 0
	addi	%d9, %d9, 16
.LVL57:
	jlt.u	%d9, %d11, .L25
.LVL58:
.L21:
	.loc 1 450 0
	ld.a	%a4, [%SP] 28
	mov.aa	%a5, %a13
	mov	%d4, 16
	call	VStdLib_MemCpy
.LVL59:
.LBE6:
.LBE8:
	.loc 1 642 0
	add	%d14, 1
.LVL60:
	.loc 1 643 0
	ld.a	%a4, [%SP] 24
	mov	%d4, %d14
	call	actU32toBE
.LVL61:
	ld.w	%d15, [%SP] 20
	addi	%d15, %d15, 16
	st.w	[%SP] 20, %d15
.LVL62:
	sh	%d15, %d14, 4
	.loc 1 636 0
	jlt.u	%d15, %d10, .L26
.LVL63:
.L19:
	.loc 1 648 0
	ld.a	%a12, [%SP] 16
	mov.aa	%a4, %a12
	ld.a	%a5, [%SP] 36
	ld.w	%d4, [%SP] 44
	ld.a	%a6, [%SP] 4
	call	actAESInitEncryptBlock
.LVL64:
	.loc 1 651 0
	ld.w	%d15, [%SP] 40
	addi	%d8, %d15, -16
	mov	%d15, 0
	.loc 1 656 0
	ld.a	%a2, [%SP] 36
	ld.w	%d2, [%SP] 44
	addsc.a	%a15, %a2, %d2, 0
.LVL65:
.L27:
	.loc 1 656 0 is_stmt 0 discriminator 3
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a15
	ld.a	%a7, [%SP] 4
	call	actAESEncryptBlock
.LVL66:
	.loc 1 660 0 is_stmt 1 discriminator 3
	ld.a	%a3, [%SP] 32
	addsc.a	%a4, %a3, %d15, 0
	mov.aa	%a5, %a15
	mov	%d4, 16
	call	VStdLib_MemCpy
.LVL67:
	.loc 1 651 0 discriminator 3
	addi	%d15, %d15, 16
.LVL68:
	jge.u	%d8, %d15, .L27
	mov	%d2, 0
	ret
.LVL69:
.L29:
	.loc 1 628 0
	mov	%d2, 245
.LVL70:
	ret
.LVL71:
.L23:
.LBB9:
.LBB7:
	.loc 1 427 0
	mov	%d3, 0
	mov.a	%a2, 15
	j	.L24
.LVL72:
.L14:
.LBE7:
.LBE9:
	.loc 1 615 0
	ld.a	%a15, [%SP] 12
	ld.w	%d12, [%a15] 8
.LVL73:
	mov	%d2, 0
	mov	%d15, 0
	mov.a	%a15, %d3
	add.a	%a15, -1
	ld.w	%d5, [%SP] 12
	j	.L28
.LVL74:
.L31:
	.loc 1 665 0
	ret
.LFE19:
	.size	actAesCtrDrbgDF, .-actAesCtrDrbgDF
.section .text.actAesCtrDrbgEncryptBlock,"ax",@progbits
	.align 1
	.type	actAesCtrDrbgEncryptBlock, @function
actAesCtrDrbgEncryptBlock:
.LFB17:
	.loc 1 469 0
.LVL75:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	mov	%d9, %d4
	mov.aa	%a13, %a6
.LVL76:
	.loc 1 476 0
	st.a	[%SP] 4, %a4
	lea	%a5, [%a4] 476
.LVL77:
	mov	%d4, %d5
.LVL78:
	call	actAESInitEncryptBlock
.LVL79:
	.loc 1 479 0
	lt.u	%d15, %d9, 16
	.loc 1 471 0
	mov	%d8, 0
	.loc 1 479 0
	jnz	%d15, .L37
	.loc 1 481 0 discriminator 1
	addi	%d8, %d9, -16
	mov	%d15, 0
	.loc 1 484 0 discriminator 1
	lea	%a14, [%a15] 508
.LVL80:
.L38:
	.loc 1 484 0 is_stmt 0 discriminator 3
	mov.aa	%a4, %a14
	mov	%d4, 16
	call	actDrbgIncrementBlock
.LVL81:
	.loc 1 488 0 is_stmt 1 discriminator 3
	ld.a	%a4, [%SP] 4
	mov.aa	%a5, %a14
	addsc.a	%a6, %a12, %d15, 0
	mov.aa	%a7, %a13
	call	actAESEncryptBlock
.LVL82:
	.loc 1 481 0 discriminator 3
	addi	%d15, %d15, 16
.LVL83:
	jge.u	%d8, %d15, .L38
	andn	%d8, %d8, ~(-16)
	addi	%d8, %d8, 16
.LVL84:
.L37:
	.loc 1 493 0
	jge.u	%d8, %d9, .L36
	.loc 1 496 0
	mov.d	%d2, %a15
	addi	%d15, %d2, 508
	mov.a	%a4, %d15
	mov	%d4, 16
	call	actDrbgIncrementBlock
.LVL85:
	.loc 1 500 0
	lea	%a14, [%a15] 460
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	actAESEncryptBlock
.LVL86:
	.loc 1 501 0
	addsc.a	%a4, %a12, %d8, 0
	mov.aa	%a5, %a14
	sub	%d4, %d9, %d8
	call	VStdLib_MemCpy
.LVL87:
.L36:
	ret
.LFE17:
	.size	actAesCtrDrbgEncryptBlock, .-actAesCtrDrbgEncryptBlock
.section .text.actAesCtrDrbgBlockUpdate,"ax",@progbits
	.align 1
	.type	actAesCtrDrbgBlockUpdate, @function
actAesCtrDrbgBlockUpdate:
.LFB18:
	.loc 1 531 0
.LVL88:
	mov.aa	%a14, %a4
	mov.aa	%a13, %a5
	mov	%d8, %d4
	mov	%d15, %d5
	.loc 1 534 0
	lea	%a12, [%a4] 348
.LVL89:
	.loc 1 544 0
	mov.aa	%a5, %a12
.LVL90:
	mov	%d4, %d5
.LVL91:
	mov	%d5, %d8
.LVL92:
	call	actAesCtrDrbgEncryptBlock
.LVL93:
	.loc 1 547 0
	jz	%d15, .L43
	mov	%d3, 0
	mov.a	%a15, %d15
	add.a	%a15, -1
.LVL94:
.L44:
	addsc.a	%a2, %a12, %d3, 0
	.loc 1 550 0 discriminator 3
	addsc.a	%a3, %a13, %d3, 0
	ld.bu	%d2, [%a3]0
	ld.bu	%d15, [%a2]0
	xor	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 547 0 discriminator 3
	add	%d3, 1
.LVL95:
	loop	%a15, .L44
.LVL96:
.L43:
	.loc 1 554 0
	lea	%a4, [%a14] 476
	mov.aa	%a5, %a12
	mov	%d4, %d8
	call	VStdLib_MemCpy
.LVL97:
	.loc 1 557 0
	lea	%a4, [%a14] 508
	addsc.a	%a5, %a12, %d8, 0
	mov	%d4, 16
	call	VStdLib_MemCpy
.LVL98:
	ret
.LFE18:
	.size	actAesCtrDrbgBlockUpdate, .-actAesCtrDrbgBlockUpdate
.section .text.actAesCtrDrbgInstantiation,"ax",@progbits
	.align 1
	.global	actAesCtrDrbgInstantiation
	.type	actAesCtrDrbgInstantiation, @function
actAesCtrDrbgInstantiation:
.LFB22:
	.loc 1 816 0
.LVL99:
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov	%d10, %d4
	mov.aa	%a14, %a6
.LVL100:
	.loc 1 821 0
	lea	%a13, [%a4] 300
.LVL101:
	.loc 1 823 0
	ld.bu	%d15, [%a4] 528
	and	%d5, %d15, 15
	.loc 1 833 0
	eq	%d9, %d5, 1
	mov	%d2, 16
	sel	%d9, %d9, %d2, 32
	eq	%d5, %d5, 1
	mov	%d2, 32
	sel	%d8, %d5, %d2, 48
.LVL102:
	.loc 1 837 0
	and	%d15, %d15, 240
	ne	%d15, %d15, 16
	jnz	%d15, .L48
	.loc 1 841 0
	mov.aa	%a6, %a13
.LVL103:
	mov	%d4, %d9
.LVL104:
	mov	%d5, %d8
	mov.aa	%a7, %a14
	call	actAesCtrDrbgDF
.LVL105:
	.loc 1 849 0
	jnz	%d2, .L50
	j	.L49
.LVL106:
.L48:
.LBB12:
.LBB13:
	.loc 1 699 0
	mov.aa	%a4, %a13
.LVL107:
	ld.a	%a5, [%a5] 4
.LVL108:
	ld.w	%d4, [%a15] 8
.LVL109:
	call	VStdLib_MemCpy
.LVL110:
	.loc 1 702 0
	ld.bu	%d15, [%a15]0
	jlt.u	%d15, 2, .L49
	.loc 1 704 0
	ld.w	%d6, [%a15] 12
.LVL111:
	.loc 1 705 0
	ld.a	%a15, [%a15] 16
.LVL112:
	.loc 1 707 0
	jz.a	%a15, .L49
	mov	%d3, 0
	add.a	%a15, -1
.LVL113:
.L52:
	addsc.a	%a2, %a13, %d3, 0
	.loc 1 709 0
	mov.a	%a4, %d6
	addsc.a	%a3, %a4, %d3, 0
	ld.bu	%d2, [%a3]0
	ld.bu	%d15, [%a2]0
	xor	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 707 0
	add	%d3, 1
.LVL114:
	loop	%a15, .L52
.LVL115:
.L49:
.LBE13:
.LBE12:
	.loc 1 851 0
	jeq	%d10, 1, .L53
	.loc 1 854 0
	lea	%a4, [%a12] 476
	mov	%d4, 0
	mov	%d5, 32
	call	VStdLib_MemSet
.LVL116:
	.loc 1 857 0
	lea	%a4, [%a12] 508
	mov	%d4, 0
	mov	%d5, 16
	call	VStdLib_MemSet
.LVL117:
.L53:
	.loc 1 861 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a13
	mov	%d4, %d9
	mov	%d5, %d8
	mov.aa	%a6, %a14
	call	actAesCtrDrbgBlockUpdate
.LVL118:
	.loc 1 864 0
	mov	%d15, 1
	st.w	[%a12] 524, %d15
	mov	%d2, 0
.LVL119:
.L50:
	.loc 1 869 0
	ret
.LFE22:
	.size	actAesCtrDrbgInstantiation, .-actAesCtrDrbgInstantiation
.section .text.actAesCtrDrbgGenerate,"ax",@progbits
	.align 1
	.global	actAesCtrDrbgGenerate
	.type	actAesCtrDrbgGenerate, @function
actAesCtrDrbgGenerate:
.LFB23:
	.loc 1 925 0
.LVL120:
	sub.a	%SP, 48
.LCFI2:
	.loc 1 931 0
	ld.bu	%d2, [%a4] 528
	and	%d15, %d2, 15
	.loc 1 941 0
	eq	%d8, %d15, 1
	mov	%d3, 16
	sel	%d8, %d8, %d3, 32
	eq	%d15, %d15, 1
	mov	%d3, 32
	sel	%d15, %d15, %d3, 48
.LVL121:
	.loc 1 946 0
	ld.w	%d3, [%a4] 524
	jeq	%d3, -1, .L58
	mov.aa	%a13, %a7
	mov	%d9, %d5
	mov.d	%d6, %a6
	st.a	[%SP] 4, %a5
	mov	%d10, %d4
	mov.aa	%a15, %a4
.LVL122:
.LBB16:
.LBB17:
	.loc 1 743 0
	lea	%a12, [%a4] 300
.LVL123:
	.loc 1 747 0
	ne	%d3, %d5, 0
	and.ne	%d3, %d6, 0
	jz	%d3, .L59
	.loc 1 749 0
	and	%d2, %d2, 240
	ne	%d2, %d2, 16
	jnz	%d2, .L60
	.loc 1 751 0
	st.a	[%SP] 16, %a6
	.loc 1 752 0
	st.w	[%SP] 20, %d5
	.loc 1 753 0
	lea	%a5, [%SP] 48
.LVL124:
	mov	%d2, 1
	st.b	[+%a5]-36, %d2
.LVL125:
	.loc 1 756 0
	mov.aa	%a6, %a12
.LVL126:
	mov	%d4, %d8
.LVL127:
	mov	%d5, %d15
.LVL128:
	call	actAesCtrDrbgDF
.LVL129:
	.loc 1 765 0
	jnz	%d2, .L66
	j	.L61
.LVL130:
.L60:
	.loc 1 761 0
	mov.aa	%a4, %a12
.LVL131:
	mov.aa	%a5, %a6
.LVL132:
	mov	%d4, %d5
.LVL133:
	call	VStdLib_MemCpy
.LVL134:
	.loc 1 762 0
	addsc.a	%a4, %a12, %d9, 0
	mov	%d4, 0
	rsub	%d5, %d9, 48
	call	VStdLib_MemSet
.LVL135:
.L61:
	.loc 1 768 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	mov	%d4, %d8
	mov	%d5, %d15
	mov.aa	%a6, %a13
	call	actAesCtrDrbgBlockUpdate
.LVL136:
	j	.L63
.LVL137:
.L59:
	.loc 1 774 0
	mov.aa	%a4, %a12
.LVL138:
	mov	%d4, 0
.LVL139:
	mov	%d5, 48
.LVL140:
	call	VStdLib_MemSet
.LVL141:
	j	.L63
.LVL142:
.L58:
.LBE17:
.LBE16:
	.loc 1 977 0
	mov	%d15, 2
.LVL143:
	st.b	[%a4] 529, %d15
.LVL144:
	.loc 1 978 0
	mov	%d2, 240
.LVL145:
	ret
.LVL146:
.L63:
	.loc 1 954 0
	ld.a	%a4, [%SP] 4
	mov	%d4, 0
	mov	%d5, %d10
	call	VStdLib_MemSet
.LVL147:
	.loc 1 960 0
	mov.aa	%a4, %a15
	ld.a	%a5, [%SP] 4
	mov	%d4, %d10
	mov	%d5, %d8
	mov.aa	%a6, %a13
	call	actAesCtrDrbgEncryptBlock
.LVL148:
	.loc 1 966 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	mov	%d4, %d8
	mov	%d5, %d15
	mov.aa	%a6, %a13
	call	actAesCtrDrbgBlockUpdate
.LVL149:
	.loc 1 969 0
	ld.w	%d15, [%a15] 524
.LVL150:
	add	%d15, 1
	st.w	[%a15] 524, %d15
	.loc 1 948 0
	mov	%d2, 0
.LVL151:
.L66:
	.loc 1 982 0
	ret
.LFE23:
	.size	actAesCtrDrbgGenerate, .-actAesCtrDrbgGenerate
.section .rodata.MSR_CONST,"a",@progbits
	.type	tempKey, @object
	.size	tempKey, 32
tempKey:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x38
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x8
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actIDRBG.h"
	.file 6 "../../../BSW/VStdLib/vstdlib.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.h"
	.file 9 "../../../../CBD2300515_D00/BSW/vSecPrim/actDRBGCommon.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15ff
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actCTRDRBG.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x15c
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
	.uaword	0x15c
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
	.uaword	0x1c6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1c6
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
	.uleb128 0x2
	.string	"actPlatformUint8"
	.byte	0x3
	.byte	0x4d
	.uaword	0x17c
	.uleb128 0x2
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b8
	.uleb128 0x2
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x22d
	.uleb128 0x2
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x245
	.uleb128 0x2
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x26b
	.uleb128 0x2
	.string	"actDRBGReseedCounterType"
	.byte	0x4
	.byte	0x43
	.uaword	0x279
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b4
	.uleb128 0x5
	.uaword	0x25e
	.uleb128 0x2
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x26b
	.uleb128 0x6
	.uahalf	0x12c
	.byte	0x4
	.uahalf	0x242
	.uaword	0x34b
	.uleb128 0x7
	.string	"e_key"
	.byte	0x4
	.uahalf	0x244
	.uaword	0x34b
	.byte	0
	.uleb128 0x8
	.string	"key_dword_len"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x279
	.uahalf	0x100
	.uleb128 0x8
	.string	"buffer_used"
	.byte	0x4
	.uahalf	0x246
	.uaword	0x279
	.uahalf	0x104
	.uleb128 0x8
	.string	"prev_block"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x367
	.uahalf	0x108
	.uleb128 0x8
	.string	"buffer"
	.byte	0x4
	.uahalf	0x248
	.uaword	0x367
	.uahalf	0x118
	.uleb128 0x8
	.string	"mode"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x25e
	.uahalf	0x128
	.byte	0
	.uleb128 0x9
	.uaword	0x26b
	.uaword	0x35b
	.uleb128 0xa
	.uaword	0x35b
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x25e
	.uaword	0x377
	.uleb128 0xa
	.uaword	0x35b
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"actAESSTRUCT"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x2ce
	.uleb128 0x9
	.uaword	0x25e
	.uaword	0x39c
	.uleb128 0xa
	.uaword	0x35b
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.byte	0x20
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x3c5
	.uleb128 0x7
	.string	"result"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x367
	.byte	0
	.uleb128 0x7
	.string	"input"
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x367
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"actCTRDRBGTmpBufferStruct"
	.byte	0x4
	.uahalf	0x30e
	.uaword	0x39c
	.uleb128 0xd
	.byte	0x30
	.byte	0x4
	.uahalf	0x313
	.uaword	0x409
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x315
	.uaword	0x409
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x316
	.uaword	0x409
	.byte	0
	.uleb128 0x9
	.uaword	0x25e
	.uaword	0x419
	.uleb128 0xa
	.uaword	0x35b
	.byte	0x2f
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x4
	.uahalf	0x318
	.uaword	0x455
	.uleb128 0xf
	.string	"blockUpdateTmpBuffer"
	.byte	0x4
	.uahalf	0x31a
	.uaword	0x409
	.uleb128 0xf
	.string	"BCCTmpBuffer"
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x3c5
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.uahalf	0x31f
	.uaword	0x480
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x321
	.uaword	0x367
	.uleb128 0xf
	.string	"tempAesBlock"
	.byte	0x4
	.uahalf	0x322
	.uaword	0x367
	.byte	0
	.uleb128 0x6
	.uahalf	0x214
	.byte	0x4
	.uahalf	0x310
	.uaword	0x563
	.uleb128 0x7
	.string	"wsAES"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x377
	.byte	0
	.uleb128 0x8
	.string	"tmpBuffer"
	.byte	0x4
	.uahalf	0x317
	.uaword	0x3e7
	.uahalf	0x12c
	.uleb128 0x8
	.string	"BCCUpdateTmpBuffer"
	.byte	0x4
	.uahalf	0x31c
	.uaword	0x419
	.uahalf	0x15c
	.uleb128 0x8
	.string	"DFencryptBuffer"
	.byte	0x4
	.uahalf	0x31d
	.uaword	0x409
	.uahalf	0x18c
	.uleb128 0x8
	.string	"DFIV"
	.byte	0x4
	.uahalf	0x31e
	.uaword	0x367
	.uahalf	0x1bc
	.uleb128 0x8
	.string	"tempBlocks"
	.byte	0x4
	.uahalf	0x323
	.uaword	0x455
	.uahalf	0x1cc
	.uleb128 0x8
	.string	"key"
	.byte	0x4
	.uahalf	0x324
	.uaword	0x38c
	.uahalf	0x1dc
	.uleb128 0x8
	.string	"variable"
	.byte	0x4
	.uahalf	0x325
	.uaword	0x367
	.uahalf	0x1fc
	.uleb128 0x8
	.string	"reseedCount"
	.byte	0x4
	.uahalf	0x326
	.uaword	0x28e
	.uahalf	0x20c
	.uleb128 0x8
	.string	"mode"
	.byte	0x4
	.uahalf	0x327
	.uaword	0x25e
	.uahalf	0x210
	.uleb128 0x8
	.string	"seedState"
	.byte	0x4
	.uahalf	0x328
	.uaword	0x25e
	.uahalf	0x211
	.byte	0
	.uleb128 0xb
	.string	"actCTRDRBGSTRUCT"
	.byte	0x4
	.uahalf	0x329
	.uaword	0x480
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.byte	0x3b
	.uaword	0x5a4
	.uleb128 0x11
	.string	"dataPtr"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2ae
	.byte	0
	.uleb128 0x11
	.string	"length"
	.byte	0x5
	.byte	0x3e
	.uaword	0x279
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"actAesCtrDrbgSeedInputElementType"
	.byte	0x5
	.byte	0x3f
	.uaword	0x57c
	.uleb128 0x10
	.byte	0x24
	.byte	0x5
	.byte	0x46
	.uaword	0x5f5
	.uleb128 0x11
	.string	"elements"
	.byte	0x5
	.byte	0x48
	.uaword	0x25e
	.byte	0
	.uleb128 0x11
	.string	"input"
	.byte	0x5
	.byte	0x49
	.uaword	0x5f5
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.uaword	0x5a4
	.uaword	0x605
	.uleb128 0xa
	.uaword	0x35b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.string	"actDrbgSeedInputType"
	.byte	0x5
	.byte	0x4a
	.uaword	0x5cd
	.uleb128 0x2
	.string	"VStdLib_CntType"
	.byte	0x6
	.byte	0x81
	.uaword	0x1db
	.uleb128 0x12
	.string	"actAesCtrDrbgConstructS"
	.byte	0x1
	.uahalf	0x124
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7d6
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x125
	.uaword	0x7d6
	.uaword	.LLST0
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x126
	.uaword	0x7e1
	.uaword	.LLST1
	.uleb128 0x14
	.string	"inputStringLength"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x279
	.uaword	.LLST2
	.uleb128 0x14
	.string	"nextElement"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x7e1
	.uaword	.LLST3
	.uleb128 0x14
	.string	"nextIndex"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x7e7
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x279
	.uaword	.LLST5
	.uleb128 0x14
	.string	"isFirstBlock"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x14d
	.uaword	.LLST6
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x279
	.uaword	.LLST7
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x279
	.uaword	.LLST8
	.uleb128 0x15
	.string	"nextIndexLocal"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x279
	.uaword	.LLST9
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x25e
	.uaword	.LLST10
	.uleb128 0x15
	.string	"nextElementLocal"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x25e
	.uaword	.LLST11
	.uleb128 0x15
	.string	"offset"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x279
	.uaword	.LLST12
	.uleb128 0x15
	.string	"remainingBytesInBuffer"
	.byte	0x1
	.uahalf	0x131
	.uaword	0x279
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	.LVL5
	.uaword	0x14db
	.uaword	0x7ac
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x14db
	.uaword	0x7c6
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 4
	.byte	0
	.uleb128 0x18
	.uaword	.LVL20
	.uaword	0x1501
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7dc
	.uleb128 0x5
	.uaword	0x605
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x279
	.uleb128 0x19
	.string	"actAesCtrDrbgBcc"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.byte	0x1
	.uaword	0x8f6
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x8f6
	.uleb128 0x1b
	.string	"IV"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x2ae
	.uleb128 0x1b
	.string	"Slength"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x279
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x180
	.uaword	0x279
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x181
	.uaword	0x7d6
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x182
	.uaword	0x7e1
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x183
	.uaword	0x8fe
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x279
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x279
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x187
	.uaword	0x279
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x187
	.uaword	0x279
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x188
	.uaword	0x7e1
	.uleb128 0x1c
	.string	"tempResult"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x7e1
	.uleb128 0x1c
	.string	"tempInput"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x7e1
	.uleb128 0x1c
	.string	"nextInputElement"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x25e
	.uleb128 0x1c
	.string	"nextIndexInInputElement"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x279
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x563
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x8fc
	.uleb128 0x1f
	.string	"actAesCtrDrbgDF"
	.byte	0x1
	.uahalf	0x246
	.byte	0x1
	.uaword	0x2b9
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcd5
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x247
	.uaword	0x8f6
	.uaword	.LLST14
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x248
	.uaword	0x7d6
	.uaword	.LLST15
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x249
	.uaword	0x7e1
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x279
	.uaword	.LLST17
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x279
	.uaword	.LLST18
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x24c
	.uaword	0x8fe
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x24f
	.uaword	0x2b9
	.uaword	.LLST20
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x279
	.uaword	.LLST21
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x251
	.uaword	0x279
	.uaword	.LLST22
	.uleb128 0x15
	.string	"totalInputLengthControlValue"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x279
	.uaword	.LLST23
	.uleb128 0x15
	.string	"bccInputLength"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x279
	.uaword	.LLST24
	.uleb128 0x15
	.string	"IV"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x7e1
	.uaword	.LLST25
	.uleb128 0x15
	.string	"encryptBuffer"
	.byte	0x1
	.uahalf	0x255
	.uaword	0x7e1
	.uaword	.LLST26
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x258
	.uaword	0x26b
	.uaword	.LLST27
	.uleb128 0x21
	.uaword	0x7ed
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x27f
	.uaword	0xc0b
	.uleb128 0x22
	.uaword	0x853
	.uaword	.LLST28
	.uleb128 0x22
	.uaword	0x847
	.uaword	.LLST29
	.uleb128 0x22
	.uaword	0x83b
	.uaword	.LLST30
	.uleb128 0x22
	.uaword	0x82f
	.uaword	.LLST31
	.uleb128 0x22
	.uaword	0x81f
	.uaword	.LLST32
	.uleb128 0x22
	.uaword	0x814
	.uaword	.LLST33
	.uleb128 0x22
	.uaword	0x808
	.uaword	.LLST34
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x24
	.uaword	0x85f
	.uaword	.LLST35
	.uleb128 0x24
	.uaword	0x869
	.uaword	.LLST36
	.uleb128 0x24
	.uaword	0x873
	.uaword	.LLST37
	.uleb128 0x24
	.uaword	0x87f
	.uaword	.LLST38
	.uleb128 0x24
	.uaword	0x88b
	.uaword	.LLST39
	.uleb128 0x24
	.uaword	0x897
	.uaword	.LLST40
	.uleb128 0x24
	.uaword	0x8aa
	.uaword	.LLST41
	.uleb128 0x25
	.uaword	0x8bc
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x25
	.uaword	0x8d5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.uaword	.LVL46
	.uaword	0x152d
	.uaword	0xb0e
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0xc
	.byte	0x40
	.byte	0x8
	.byte	0x20
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL47
	.uaword	0x156d
	.uaword	0xb37
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL48
	.uaword	0x1501
	.uaword	0xb55
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL51
	.uaword	0x638
	.uaword	0xb8d
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL53
	.uaword	0x638
	.uaword	0xbc5
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL56
	.uaword	0x156d
	.uaword	0xbed
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.uaword	.LVL59
	.uaword	0x15aa
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL29
	.uaword	0x1501
	.uaword	0xc2a
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL30
	.uaword	0x1501
	.uaword	0xc4a
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL61
	.uaword	0x14db
	.uaword	0xc65
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL64
	.uaword	0x152d
	.uaword	0xc8e
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL66
	.uaword	0x156d
	.uaword	0xcb5
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL67
	.uaword	0x15aa
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"actAesCtrDrbgEncryptBlock"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe3c
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x8f6
	.uaword	.LLST42
	.uleb128 0x14
	.string	"outputData"
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x7e1
	.uaword	.LLST43
	.uleb128 0x14
	.string	"dataLength"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x279
	.uaword	.LLST44
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x279
	.uaword	.LLST45
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x8fe
	.uaword	.LLST46
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x1b8
	.uaword	.LLST47
	.uleb128 0x16
	.uaword	.LVL79
	.uaword	0x152d
	.uaword	0xd97
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 476
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL81
	.uaword	0x15db
	.uaword	0xdb0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL82
	.uaword	0x156d
	.uaword	0xdda
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL85
	.uaword	0x15db
	.uaword	0xdf3
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL86
	.uaword	0x156d
	.uaword	0xe19
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL87
	.uaword	0x15aa
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"actAesCtrDrbgBlockUpdate"
	.byte	0x1
	.uahalf	0x20d
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf50
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x8f6
	.uaword	.LLST48
	.uleb128 0x14
	.string	"inputData"
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x2ae
	.uaword	.LLST49
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x210
	.uaword	0x279
	.uaword	.LLST50
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x211
	.uaword	0x279
	.uaword	.LLST51
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x212
	.uaword	0x8fe
	.uaword	.LLST52
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x215
	.uaword	0x279
	.uaword	.LLST53
	.uleb128 0x26
	.string	"tempBuffer"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x7e1
	.byte	0x1
	.byte	0x6c
	.uleb128 0x16
	.uaword	.LVL93
	.uaword	0xcd5
	.uaword	0xf0f
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL97
	.uaword	0x15aa
	.uaword	0xf30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 476
	.byte	0
	.uleb128 0x18
	.uaword	.LVL98
	.uaword	0x15aa
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 508
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"actAesCtrDrbgNoDF"
	.byte	0x1
	.uahalf	0x2a9
	.byte	0x1
	.byte	0x1
	.uaword	0xfe9
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2aa
	.uaword	0x7d6
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x7e1
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x1b8
	.uleb128 0x1c
	.string	"entropyPtr"
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x2ae
	.uleb128 0x1c
	.string	"personalStrPtr"
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0x2ae
	.uleb128 0x1c
	.string	"entropyLength"
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x279
	.uleb128 0x1c
	.string	"personalStrLength"
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x279
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"actAesCtrDrbgInstantiation"
	.byte	0x1
	.uahalf	0x32b
	.byte	0x1
	.uaword	0x2b9
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11ac
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x32c
	.uaword	0x8f6
	.uaword	.LLST54
	.uleb128 0x14
	.string	"dataInput"
	.byte	0x1
	.uahalf	0x32d
	.uaword	0x7d6
	.uaword	.LLST55
	.uleb128 0x14
	.string	"reseedFlag"
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x14d
	.uaword	.LLST56
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x32f
	.uaword	0x8fe
	.uaword	.LLST57
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x332
	.uaword	0x2b9
	.uaword	.LLST58
	.uleb128 0x28
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x334
	.uaword	0x279
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x334
	.uaword	0x279
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x335
	.uaword	0x7e1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x29
	.uaword	0xf50
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.uahalf	0x34e
	.uaword	0x1112
	.uleb128 0x22
	.uaword	0xf78
	.uaword	.LLST59
	.uleb128 0x22
	.uaword	0xf6c
	.uaword	.LLST60
	.uleb128 0x2a
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x24
	.uaword	0xf84
	.uaword	.LLST61
	.uleb128 0x24
	.uaword	0xf8e
	.uaword	.LLST62
	.uleb128 0x24
	.uaword	0xfa1
	.uaword	.LLST63
	.uleb128 0x24
	.uaword	0xfb8
	.uaword	.LLST64
	.uleb128 0x24
	.uaword	0xfce
	.uaword	.LLST65
	.uleb128 0x18
	.uaword	.LVL110
	.uaword	0x15aa
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL105
	.uaword	0x904
	.uaword	0x1144
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL116
	.uaword	0x1501
	.uaword	0x1164
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 476
	.byte	0
	.uleb128 0x16
	.uaword	.LVL117
	.uaword	0x1501
	.uaword	0x1183
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 508
	.byte	0
	.uleb128 0x18
	.uaword	.LVL118
	.uaword	0xe3c
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"actAesCtrDrbgGenerateSetInput"
	.byte	0x1
	.uahalf	0x2dc
	.byte	0x1
	.uaword	0x2b9
	.byte	0x1
	.uaword	0x124b
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x8f6
	.uleb128 0x1a
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x2de
	.uaword	0x2ae
	.uleb128 0x1a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x2df
	.uaword	0x279
	.uleb128 0x1a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x279
	.uleb128 0x1a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x279
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x8fe
	.uleb128 0x1d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x2b9
	.uleb128 0x1c
	.string	"seedInput"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x605
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x7e1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"actAesCtrDrbgGenerate"
	.byte	0x1
	.uahalf	0x396
	.byte	0x1
	.uaword	0x2b9
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14c1
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x397
	.uaword	0x8f6
	.uaword	.LLST66
	.uleb128 0x14
	.string	"requestedLength"
	.byte	0x1
	.uahalf	0x398
	.uaword	0x279
	.uaword	.LLST67
	.uleb128 0x14
	.string	"outputBuffer"
	.byte	0x1
	.uahalf	0x399
	.uaword	0x7e1
	.uaword	.LLST68
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x2ae
	.uaword	.LLST69
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x279
	.uaword	.LLST70
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x8fe
	.uaword	.LLST71
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x39f
	.uaword	0x2b9
	.uaword	.LLST72
	.uleb128 0x20
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x279
	.uaword	.LLST73
	.uleb128 0x28
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x279
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.uaword	0x11ac
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.uahalf	0x3b4
	.uaword	0x144b
	.uleb128 0x22
	.uaword	0x1214
	.uaword	.LLST74
	.uleb128 0x22
	.uaword	0x1208
	.uaword	.LLST75
	.uleb128 0x22
	.uaword	0x11fc
	.uaword	.LLST76
	.uleb128 0x22
	.uaword	0x11f0
	.uaword	.LLST77
	.uleb128 0x22
	.uaword	0x11e4
	.uaword	.LLST78
	.uleb128 0x22
	.uaword	0x11d8
	.uaword	.LLST79
	.uleb128 0x2a
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x24
	.uaword	0x1220
	.uaword	.LLST80
	.uleb128 0x25
	.uaword	0x122c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.uaword	0x123e
	.uaword	.LLST81
	.uleb128 0x16
	.uaword	.LVL129
	.uaword	0x904
	.uaword	0x13bc
	.uleb128 0x17
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL134
	.uaword	0x15aa
	.uaword	0x13dd
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL135
	.uaword	0x1501
	.uaword	0x1402
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8
	.byte	0x30
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x16
	.uaword	.LVL136
	.uaword	0xe3c
	.uaword	0x142e
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL141
	.uaword	0x1501
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL147
	.uaword	0x1501
	.uaword	0x146b
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL148
	.uaword	0xcd5
	.uaword	0x1498
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL149
	.uaword	0xe3c
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"tempKey"
	.byte	0x1
	.byte	0x2d
	.uaword	0x14d6
	.byte	0x5
	.byte	0x3
	.uaword	tempKey
	.uleb128 0x5
	.uaword	0x38c
	.uleb128 0x2d
	.byte	0x1
	.string	"actU32toBE"
	.byte	0x7
	.uahalf	0x1c1
	.byte	0x1
	.byte	0x1
	.uaword	0x14fc
	.uleb128 0x2e
	.uaword	0x7e1
	.uleb128 0x2e
	.uaword	0x14fc
	.byte	0
	.uleb128 0x5
	.uaword	0x26b
	.uleb128 0x2d
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x6
	.uahalf	0x431
	.byte	0x1
	.byte	0x1
	.uaword	0x152b
	.uleb128 0x2e
	.uaword	0x152b
	.uleb128 0x2e
	.uaword	0x17c
	.uleb128 0x2e
	.uaword	0x621
	.byte	0
	.uleb128 0x2f
	.byte	0x4
	.uleb128 0x30
	.byte	0x1
	.string	"actAESInitEncryptBlock"
	.byte	0x8
	.byte	0xbc
	.byte	0x1
	.uaword	0x2b9
	.byte	0x1
	.uaword	0x1567
	.uleb128 0x2e
	.uaword	0x1567
	.uleb128 0x2e
	.uaword	0x2ae
	.uleb128 0x2e
	.uaword	0x279
	.uleb128 0x2e
	.uaword	0x8fe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x377
	.uleb128 0x31
	.byte	0x1
	.string	"actAESEncryptBlock"
	.byte	0x8
	.byte	0xd0
	.byte	0x1
	.byte	0x1
	.uaword	0x159f
	.uleb128 0x2e
	.uaword	0x159f
	.uleb128 0x2e
	.uaword	0x2ae
	.uleb128 0x2e
	.uaword	0x7e1
	.uleb128 0x2e
	.uaword	0x8fe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x15a5
	.uleb128 0x5
	.uaword	0x377
	.uleb128 0x2d
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x6
	.uahalf	0x445
	.byte	0x1
	.byte	0x1
	.uaword	0x15d4
	.uleb128 0x2e
	.uaword	0x152b
	.uleb128 0x2e
	.uaword	0x15d4
	.uleb128 0x2e
	.uaword	0x621
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x15da
	.uleb128 0x32
	.uleb128 0x33
	.byte	0x1
	.string	"actDrbgIncrementBlock"
	.byte	0x9
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x7e1
	.uleb128 0x2e
	.uaword	0x279
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL19
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
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL5-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5-1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -40
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL29-1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL29-1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL21
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL29-1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL22
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL39
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -32
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL72
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -32
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -32
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -40
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x91
	.sleb128 -40
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL44
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0xd
	.byte	0x40
	.byte	0x8
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1
	.uaword	.LVL49
	.uahalf	0xd
	.byte	0x40
	.byte	0x8
	.byte	0x20
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL41
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL43
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL75
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL79-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL78
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL75
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL79-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL75
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL79-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL88
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL93-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL90
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL88
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL92
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL93-1
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL88
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL93-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL99
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL105-1
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL107
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL99
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL105-1
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL108
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL112
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL99
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL106
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL110-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL100
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL106
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL108
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x85
	.sleb128 4
	.uaword	.LVL108
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL111
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL108
	.uaword	.LVL110-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL120
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL131
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL138
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL120
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL139
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL120
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x85
	.sleb128 -44
	.uaword	.LVL125
	.uaword	.LVL129-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 -8
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL132
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	.LVL137
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL120
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL126
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL120
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL137
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL120
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL137
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL144
	.uaword	.LVL146
	.uahalf	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL121
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x10
	.byte	0x8
	.byte	0x20
	.byte	0x8
	.byte	0x30
	.byte	0x72
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x16
	.byte	0x8
	.byte	0x20
	.byte	0x8
	.byte	0x30
	.byte	0x84
	.sleb128 528
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL122
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL137
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL122
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL122
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL122
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL137
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL122
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL126
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL134-1
	.uaword	.LVL137
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL122
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL129-1
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL131
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL138
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL122
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL130
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL123
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL146
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
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
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF14:
	.string	"additionalInputPtr"
.LASF13:
	.string	"localSeedLength"
.LASF6:
	.string	"workSpace"
.LASF4:
	.string	"outputString"
.LASF10:
	.string	"keyLength"
.LASF8:
	.string	"watchdog"
.LASF12:
	.string	"retVal"
.LASF11:
	.string	"seedLength"
.LASF1:
	.string	"seedData"
.LASF0:
	.string	"additionalInputPrepared"
.LASF9:
	.string	"localKeyLength"
.LASF5:
	.string	"numberOfBytesToReturn"
.LASF3:
	.string	"inputString"
.LASF2:
	.string	"blockOfS"
.LASF15:
	.string	"additionalInputLength"
.LASF7:
	.string	"totalInputLength"
	.extern	actDrbgIncrementBlock,STT_FUNC,0
	.extern	VStdLib_MemCpy,STT_FUNC,0
	.extern	actAESEncryptBlock,STT_FUNC,0
	.extern	actAESInitEncryptBlock,STT_FUNC,0
	.extern	VStdLib_MemSet,STT_FUNC,0
	.extern	actU32toBE,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
