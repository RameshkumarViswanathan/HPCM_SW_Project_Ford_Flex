	.file	"actIAES.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actAESInitEncryptBlock,"ax",@progbits
	.align 1
	.global	actAESInitEncryptBlock
	.type	actAESInitEncryptBlock, @function
actAESInitEncryptBlock:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.c"
	.loc 1 74 0
.LVL0:
	.loc 1 76 0
	call	actAESKeySetup
.LVL1:
	.loc 1 77 0
	ret
.LFE15:
	.size	actAESInitEncryptBlock, .-actAESInitEncryptBlock
.section .text.actAESEncryptBlock,"ax",@progbits
	.align 1
	.global	actAESEncryptBlock
	.type	actAESEncryptBlock, @function
actAESEncryptBlock:
.LFB16:
	.loc 1 93 0
.LVL2:
	sub.a	%SP, 32
.LCFI0:
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov.aa	%a14, %a6
	mov.aa	%a13, %a7
	.loc 1 94 0
	mov.d	%d9, %a4
.LVL3:
	.loc 1 96 0
	ld.w	%d8, [%a4] 256
	add	%d8, -4
	sh	%d8, -1
	add	%d8, 4
.LVL4:
	.loc 1 98 0
	mov.aa	%a4, %a7
.LVL5:
	call	actWatchdogTriggerFunction
.LVL6:
	.loc 1 101 0
	lea	%a4, [%SP] 16
	mov.aa	%a5, %a15
	mov	%d4, 16
	call	actCpyLEtoU32
.LVL7:
	.loc 1 104 0
	mov	%d15, 0
	mov.a	%a15, 3
.LVL8:
.L3:
	.loc 1 106 0 discriminator 3
	sh	%d2, %d15, 2
	lea	%a3, [%SP] 32
	addsc.a	%a2, %a3, %d2, 0
	mov.a	%a4, %d9
	addsc.a	%a3, %a4, %d2, 0
	ld.w	%d2, [%a3]0
	ld.w	%d3, [%a2] -16
	xor	%d2, %d3
	st.w	[%a2] -16, %d2
	.loc 1 104 0 discriminator 3
	add	%d15, 1
.LVL9:
	loop	%a15, .L3
	.loc 1 109 0
	lea	%a12, [%a12] 16
.LVL10:
	.loc 1 110 0
	jz	%d8, .L4
	mov.aa	%a15, %a12
	mov	%d15, 0
.LVL11:
.L5:
	.loc 1 112 0 discriminator 3
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 16
	mov.aa	%a6, %a15
	call	actAESEncryptionRound
.LVL12:
	.loc 1 114 0 discriminator 3
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	lea	%a6, [%a15] 16
.LVL13:
	call	actAESEncryptionRound
.LVL14:
	lea	%a15, [%a15] 32
.LVL15:
	.loc 1 116 0 discriminator 3
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL16:
	.loc 1 110 0 discriminator 3
	add	%d15, 1
.LVL17:
	jne	%d8, %d15, .L5
	sh	%d15, %d8, 5
.LVL18:
	addsc.a	%a12, %a12, %d15, 0
.LVL19:
.L4:
	.loc 1 118 0
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 16
	mov.aa	%a6, %a12
	call	actAESEncryptionRound
.LVL20:
	.loc 1 120 0
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	lea	%a6, [%a12] 16
.LVL21:
	call	actAESEncryptionFinalRound
.LVL22:
	.loc 1 123 0
	mov.aa	%a4, %a14
	lea	%a5, [%SP] 16
	mov	%d4, 4
	call	actCpyU32toLE
.LVL23:
	.loc 1 125 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL24:
	ret
.LFE16:
	.size	actAESEncryptBlock, .-actAESEncryptBlock
.section .text.actAESInitDecryptBlock,"ax",@progbits
	.align 1
	.global	actAESInitDecryptBlock
	.type	actAESInitDecryptBlock, @function
actAESInitDecryptBlock:
.LFB17:
	.loc 1 140 0
.LVL25:
	mov.aa	%a15, %a4
	.loc 1 142 0
	call	actAESKeySetup
.LVL26:
	mov	%d15, %d2
.LVL27:
	.loc 1 144 0
	jnz	%d2, .L9
	.loc 1 146 0
	mov.aa	%a4, %a15
	call	actAESMakeDecryptionKey
.LVL28:
.L9:
	.loc 1 150 0
	mov	%d2, %d15
	ret
.LFE17:
	.size	actAESInitDecryptBlock, .-actAESInitDecryptBlock
.section .text.actAESDecryptBlock,"ax",@progbits
	.align 1
	.global	actAESDecryptBlock
	.type	actAESDecryptBlock, @function
actAESDecryptBlock:
.LFB18:
	.loc 1 166 0
.LVL29:
	sub.a	%SP, 40
.LCFI1:
	mov.aa	%a13, %a4
	mov.aa	%a15, %a5
	st.a	[%SP] 4, %a6
	mov.aa	%a14, %a7
	.loc 1 167 0
	ld.w	%d15, [%a4] 256
	add	%d15, 5
	sh	%d11, %d15, 2
	addsc.a	%a12, %a4, %d15, 3
	addsc.a	%a12, %a12, %d15, 3
.LVL30:
	.loc 1 169 0
	ld.w	%d9, [%a4] 256
	add	%d9, -4
	sh	%d9, -1
	addi	%d8, %d9, 4
.LVL31:
	.loc 1 172 0
	mov.aa	%a4, %a7
.LVL32:
	call	actWatchdogTriggerFunction
.LVL33:
	.loc 1 175 0
	lea	%a4, [%SP] 24
	mov.aa	%a5, %a15
	mov	%d4, 16
	call	actCpyLEtoU32
.LVL34:
	lea	%a3, [%a12] 16
	.loc 1 178 0
	mov	%d15, 0
	mov.a	%a15, 3
.LVL35:
.L11:
	.loc 1 180 0 discriminator 3
	lea	%a4, [%SP] 40
.LVL36:
	addsc.a	%a2, %a4, %d15, 2
	ld.w	%d2, [%a3+]4
	ld.w	%d3, [%a2] -16
	xor	%d2, %d3
	st.w	[%a2] -16, %d2
	.loc 1 178 0 discriminator 3
	add	%d15, 1
.LVL37:
	loop	%a15, .L11
.LVL38:
	.loc 1 182 0 discriminator 1
	mov	%d10, %d11
	jz	%d8, .L12
.LVL39:
	addi	%d10, %d11, -4
.LVL40:
	sh	%d10, 2
	addsc.a	%a15, %a13, %d10, 0
	mov.d	%d2, %a12
	sub	%d10, %d2
	.loc 1 182 0 is_stmt 0
	mov	%d15, 0
	addi	%d10, %d10, -16
.LVL41:
.L13:
	.loc 1 184 0 is_stmt 1 discriminator 3
	lea	%a4, [%SP] 8
	lea	%a5, [%SP] 24
	mov.aa	%a6, %a12
	call	actAESDecryptionRound
.LVL42:
	.loc 1 187 0 discriminator 3
	lea	%a4, [%SP] 24
	lea	%a5, [%SP] 8
	mov.aa	%a6, %a15
	call	actAESDecryptionRound
.LVL43:
	addsc.a	%a12, %a12, %d10, 0
	add.a	%a12, %a13
.LVL44:
	.loc 1 190 0 discriminator 3
	mov.aa	%a4, %a14
	call	actWatchdogTriggerFunction
.LVL45:
	.loc 1 182 0 discriminator 3
	add	%d15, 1
.LVL46:
	lea	%a15, [%a15] -32
	jne	%d8, %d15, .L13
	mov.a	%a4, %d11
	lea	%a12, [%a4] -32
.LVL47:
	mul	%d15, %d9, -8
.LVL48:
	mov.d	%d10, %a12
	add	%d10, %d15
	sh	%d9, 3
	mov.d	%d15, %a12
	sub	%d9, %d15, %d9
	addsc.a	%a12, %a13, %d9, 2
.L12:
	.loc 1 192 0
	lea	%a4, [%SP] 8
	lea	%a5, [%SP] 24
	mov.aa	%a6, %a12
	call	actAESDecryptionRound
.LVL49:
	.loc 1 193 0
	add	%d15, %d10, -4
.LVL50:
	.loc 1 195 0
	lea	%a4, [%SP] 24
	lea	%a5, [%SP] 8
	addsc.a	%a6, %a13, %d15, 2
	call	actAESDecryptionFinalRound
.LVL51:
	.loc 1 198 0
	ld.a	%a4, [%SP] 4
	lea	%a5, [%SP] 24
	mov	%d4, 4
	call	actCpyU32toLE
.LVL52:
	.loc 1 200 0
	mov.aa	%a4, %a14
	call	actWatchdogTriggerFunction
.LVL53:
	ret
.LFE18:
	.size	actAESDecryptBlock, .-actAESDecryptBlock
.section .text.actAESInitEncrypt,"ax",@progbits
	.align 1
	.global	actAESInitEncrypt
	.type	actAESInitEncrypt, @function
actAESInitEncrypt:
.LFB19:
	.loc 1 216 0
.LVL54:
	mov.aa	%a14, %a4
	mov.aa	%a13, %a5
	mov	%d8, %d4
	mov.aa	%a12, %a6
	mov	%d15, %d5
	mov.aa	%a15, %a7
	.loc 1 220 0
	and	%d4, %d5, 240
.LVL55:
	call	actPaddingInit
.LVL56:
	.loc 1 222 0
	jnz	%d2, .L18
	.loc 1 225 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d4, %d8
	mov.aa	%a6, %a12
	mov	%d5, %d15
	mov.aa	%a7, %a15
	call	actAESInit
.LVL57:
.L18:
	.loc 1 229 0
	ret
.LFE19:
	.size	actAESInitEncrypt, .-actAESInitEncrypt
.section .text.actAESEncrypt,"ax",@progbits
	.align 1
	.global	actAESEncrypt
	.type	actAESEncrypt, @function
actAESEncrypt:
.LFB20:
	.loc 1 249 0
.LVL58:
	sub.a	%SP, 8
.LCFI2:
.LVL59:
	.loc 1 252 0
	ld.w	%d2, [%a4] 260
.LVL60:
	.loc 1 255 0
	mov	%d3, -17
	mov	%d9, 248
	jlt.u	%d3, %d4, .L37
	mov	%d15, %d5
	mov.aa	%a12, %a6
	mov.aa	%a15, %a4
	.loc 1 252 0
	add	%d8, %d4, %d2
.LVL61:
	andn	%d8, %d8, ~(-16)
.LVL62:
	.loc 1 259 0
	jne	%d5, 1, .L21
	.loc 1 259 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a4] 296
	jne	%d3, 4, .L22
	.loc 1 264 0 is_stmt 1
	ld.w	%d3, [%a7]0
	jlt.u	%d3, %d2, .L37
	.loc 1 270 0
	st.w	[%a7]0, %d2
	.loc 1 299 0
	jz	%d4, .L24
	j	.L23
.L21:
	.loc 1 273 0
	jz	%d5, .L25
.L22:
	.loc 1 273 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 296
.LVL63:
	and	%d2, %d2, 240
	jnz	%d2, .L26
.L25:
	.loc 1 275 0 is_stmt 1
	ld.w	%d2, [%a7]0
	mov	%d9, 248
	jlt.u	%d2, %d8, .L37
	.loc 1 281 0
	st.w	[%a7]0, %d8
.LVL64:
	j	.L27
.LVL65:
.L26:
	.loc 1 286 0
	addi	%d2, %d8, 16
	ld.w	%d3, [%a7]0
	mov	%d9, 248
	jlt.u	%d3, %d2, .L37
	.loc 1 292 0
	st.w	[%a7]0, %d2
.LVL66:
	j	.L27
.L23:
	.loc 1 301 0
	ld.w	%d2, [%SP] 8
	st.w	[%SP]0, %d2
	mov.aa	%a4, %a15
.LVL67:
	mov.aa	%a6, %a12
.LVL68:
	movh.a	%a7, hi:actAESEncryptMultipleBlocks
.LVL69:
	lea	%a7, [%a7] lo:actAESEncryptMultipleBlocks
	call	actAESTransform
.LVL70:
.L30:
	mov	%d9, 0
	.loc 1 305 0
	jne	%d15, 1, .L28
.L24:
	.loc 1 310 0
	ld.bu	%d4, [%a15] 296
	jeq	%d4, 4, .L29
	.loc 1 312 0
	and	%d4, %d4, 240
	mov	%d5, 16
	lea	%a4, [%a15] 260
	lea	%a5, [%a15] 280
	call	actPaddingPad
.LVL71:
	mov	%d9, %d2
.LVL72:
	.loc 1 315 0
	jnz	%d2, .L28
.LVL73:
.L29:
	.loc 1 315 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 260
	mov	%d9, 0
	jz	%d15, .L28
	.loc 1 318 0 is_stmt 1
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 280
	addsc.a	%a6, %a12, %d8, 0
	mov	%d4, 1
	ld.a	%a7, [%SP] 8
	call	actAESEncryptMultipleBlocks
.LVL74:
.L28:
	.loc 1 322 0
	ld.a	%a4, [%SP] 8
	call	actWatchdogTriggerFunction
.LVL75:
	j	.L37
.LVL76:
.L27:
	.loc 1 299 0
	jz	%d4, .L30
	j	.L23
.LVL77:
.L37:
	.loc 1 326 0
	mov	%d2, %d9
	ret
.LFE20:
	.size	actAESEncrypt, .-actAESEncrypt
.section .text.actAESInitDecrypt,"ax",@progbits
	.align 1
	.global	actAESInitDecrypt
	.type	actAESInitDecrypt, @function
actAESInitDecrypt:
.LFB21:
	.loc 1 342 0
.LVL78:
	mov.aa	%a15, %a4
	mov.aa	%a14, %a5
	mov	%d9, %d4
	mov.aa	%a13, %a6
	mov	%d8, %d5
	mov.aa	%a12, %a7
	.loc 1 346 0
	and	%d4, %d5, 240
.LVL79:
	call	actPaddingInit
.LVL80:
	mov	%d15, %d2
.LVL81:
	.loc 1 348 0
	jnz	%d2, .L39
	.loc 1 351 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a14
	mov	%d4, %d9
	mov.aa	%a6, %a13
	mov	%d5, %d8
	mov.aa	%a7, %a12
	call	actAESInit
.LVL82:
	mov	%d15, %d2
.LVL83:
	.loc 1 353 0
	jnz	%d2, .L39
	.loc 1 355 0
	ld.bu	%d2, [%a15] 296
.LVL84:
	and	%d2, %d2, 15
	jeq	%d2, 4, .L39
	.loc 1 358 0
	mov.aa	%a4, %a15
	call	actAESMakeDecryptionKey
.LVL85:
.L39:
	.loc 1 364 0
	mov	%d2, %d15
	ret
.LFE21:
	.size	actAESInitDecrypt, .-actAESInitDecrypt
.section .text.actAESDecrypt,"ax",@progbits
	.align 1
	.global	actAESDecrypt
	.type	actAESDecrypt, @function
actAESDecrypt:
.LFB22:
	.loc 1 381 0
.LVL86:
	sub.a	%SP, 8
.LCFI3:
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
	mov	%d15, %d4
	mov.aa	%a14, %a6
	mov.aa	%a12, %a7
	mov	%d9, %d5
.LVL87:
	.loc 1 383 0
	ld.w	%d4, [%a4] 260
.LVL88:
	add	%d3, %d15, %d4
.LVL89:
	.loc 1 387 0
	jne	%d5, 1, .L41
	.loc 1 389 0
	ld.bu	%d2, [%a4] 296
	jeq	%d2, 4, .L41
	mov	%d10, 245
	.loc 1 392 0
	jz	%d3, .L56
	.loc 1 392 0 is_stmt 0 discriminator 1
	and	%d2, %d3, 15
	jnz	%d2, .L56
.L49:
	.loc 1 404 0 is_stmt 1
	addi	%d8, %d3, -1
	andn	%d8, %d8, ~(-16)
.LVL90:
	.loc 1 413 0
	ld.w	%d2, [%a12]0
	.loc 1 415 0
	mov	%d10, 248
	.loc 1 413 0
	jlt.u	%d2, %d8, .L56
	.loc 1 421 0
	jz	%d15, .L43
	.loc 1 423 0
	ge.u	%d2, %d3, 17
	jnz	%d2, .L44
	j	.L50
.LVL91:
.L55:
	.loc 1 409 0
	mov	%d8, 0
.L50:
	.loc 1 425 0
	mov.a	%a2, %d4
	lea	%a4, [%a2] 280
.LVL92:
	add.a	%a4, %a15
	mov.aa	%a5, %a13
.LVL93:
	mov	%d4, %d15
	call	VStdLib_MemCpy
.LVL94:
	.loc 1 426 0
	ld.w	%d2, [%a15] 260
	add	%d15, %d2
.LVL95:
	st.w	[%a15] 260, %d15
	j	.L43
.LVL96:
.L44:
	.loc 1 430 0
	and	%d3, %d3, 15
.LVL97:
	jnz	%d3, .L45
	.loc 1 432 0
	addi	%d15, %d15, -16
.LVL98:
	ld.w	%d2, [%SP] 8
	st.w	[%SP]0, %d2
	mov.aa	%a4, %a15
.LVL99:
	mov.aa	%a5, %a13
.LVL100:
	mov	%d4, %d15
.LVL101:
	mov.aa	%a6, %a14
.LVL102:
	movh.a	%a7, hi:actAESDecryptMultipleBlocks
.LVL103:
	lea	%a7, [%a7] lo:actAESDecryptMultipleBlocks
	call	actAESTransform
.LVL104:
	.loc 1 433 0
	lea	%a4, [%a15] 280
	addsc.a	%a5, %a13, %d15, 0
	mov	%d4, 16
	call	VStdLib_MemCpy
.LVL105:
	.loc 1 434 0
	mov	%d15, 16
.LVL106:
	st.w	[%a15] 260, %d15
	j	.L43
.LVL107:
.L45:
	.loc 1 438 0
	ld.w	%d2, [%SP] 8
	st.w	[%SP]0, %d2
	mov.aa	%a4, %a15
.LVL108:
	mov.aa	%a5, %a13
.LVL109:
	mov	%d4, %d15
.LVL110:
	mov.aa	%a6, %a14
.LVL111:
	movh.a	%a7, hi:actAESDecryptMultipleBlocks
.LVL112:
	lea	%a7, [%a7] lo:actAESDecryptMultipleBlocks
	call	actAESTransform
.LVL113:
.L43:
	.loc 1 443 0
	jne	%d9, 1, .L46
	.loc 1 446 0
	lea	%a13, [%a15] 280
.LVL114:
	mov.aa	%a4, %a15
	mov.aa	%a5, %a13
	mov.aa	%a6, %a13
	mov	%d4, 1
	ld.a	%a7, [%SP] 8
	call	actAESDecryptMultipleBlocks
.LVL115:
	.loc 1 450 0
	ld.bu	%d4, [%a15] 296
	jeq	%d4, 4, .L47
	.loc 1 452 0
	and	%d4, %d4, 240
	mov	%d5, 16
	lea	%a4, [%a15] 260
	mov.aa	%a5, %a13
	call	actPaddingUnpad
.LVL116:
	mov	%d10, %d2
.LVL117:
	.loc 1 455 0
	jnz	%d2, .L48
.LVL118:
.L47:
	.loc 1 457 0
	ld.w	%d4, [%a15] 260
	add	%d15, %d8, %d4
	ld.w	%d2, [%a12]0
	.loc 1 459 0
	mov	%d10, 248
	.loc 1 457 0
	jlt.u	%d2, %d15, .L48
	.loc 1 463 0
	addsc.a	%a4, %a14, %d8, 0
	mov.aa	%a5, %a13
	call	VStdLib_MemCpy
.LVL119:
	.loc 1 464 0
	ld.w	%d15, [%a15] 260
	add	%d8, %d15
	st.w	[%a12]0, %d8
	mov	%d10, 0
	j	.L48
.LVL120:
.L46:
	.loc 1 470 0
	st.w	[%a12]0, %d8
	mov	%d10, 0
.LVL121:
.L48:
	.loc 1 473 0
	ld.a	%a4, [%SP] 8
	call	actWatchdogTriggerFunction
.LVL122:
	j	.L56
.LVL123:
.L41:
	.loc 1 401 0
	jnz	%d3, .L49
	.loc 1 409 0
	mov	%d8, 0
	.loc 1 421 0
	jz	%d15, .L43
	j	.L55
.LVL124:
.L56:
	.loc 1 478 0
	mov	%d2, %d10
	ret
.LFE22:
	.size	actAESDecrypt, .-actAESDecrypt
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
	.byte	0x4
	.uaword	.LCFI0-.LFB16
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
	.uaword	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x28
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x8
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
	.byte	0x4
	.uaword	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actAES.h"
	.file 6 "../../../BSW/VStdLib/vstdlib.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
	.file 8 "../../../../CBD2300515_D00/BSW/vSecPrim/actPadding.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x10d5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actIAES.c"
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x14a
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
	.uaword	0x1b4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1b4
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
	.string	"actPlatformUint8"
	.byte	0x3
	.byte	0x4d
	.uaword	0x16a
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1a6
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21b
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x233
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x259
	.uleb128 0x3
	.string	"actBoolean"
	.byte	0x4
	.byte	0x41
	.uaword	0x14a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x294
	.uleb128 0x5
	.uaword	0x24c
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x259
	.uleb128 0x6
	.uahalf	0x12c
	.byte	0x4
	.uahalf	0x242
	.uaword	0x32b
	.uleb128 0x7
	.string	"e_key"
	.byte	0x4
	.uahalf	0x244
	.uaword	0x32b
	.byte	0
	.uleb128 0x8
	.string	"key_dword_len"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x267
	.uahalf	0x100
	.uleb128 0x8
	.string	"buffer_used"
	.byte	0x4
	.uahalf	0x246
	.uaword	0x267
	.uahalf	0x104
	.uleb128 0x8
	.string	"prev_block"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x347
	.uahalf	0x108
	.uleb128 0x8
	.string	"buffer"
	.byte	0x4
	.uahalf	0x248
	.uaword	0x347
	.uahalf	0x118
	.uleb128 0x8
	.string	"mode"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x24c
	.uahalf	0x128
	.byte	0
	.uleb128 0x9
	.uaword	0x259
	.uaword	0x33b
	.uleb128 0xa
	.uaword	0x33b
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x24c
	.uaword	0x357
	.uleb128 0xa
	.uaword	0x33b
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"actAESSTRUCT"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x2ae
	.uleb128 0x9
	.uaword	0x259
	.uaword	0x37c
	.uleb128 0xa
	.uaword	0x33b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"actAESTransformFctType"
	.byte	0x5
	.byte	0x2f
	.uaword	0x39a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3a0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x3c6
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x357
	.uleb128 0x4
	.byte	0x4
	.uaword	0x24c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3d2
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x6
	.byte	0x81
	.uaword	0x1c9
	.uleb128 0xf
	.byte	0x1
	.string	"actAESInitEncryptBlock"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x47d
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0x47
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x48
	.uaword	0x28e
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x48
	.uaword	0x267
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x49
	.uaword	0x3cc
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0xd8a
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actAESEncryptBlock"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x61c
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5a
	.uaword	0x61c
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5b
	.uaword	0x28e
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.byte	0x5b
	.uaword	0x3c6
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5c
	.uaword	0x3cc
	.uaword	.LLST7
	.uleb128 0x15
	.string	"k_ptr"
	.byte	0x1
	.byte	0x5e
	.uaword	0x627
	.uaword	.LLST8
	.uleb128 0x16
	.string	"b0"
	.byte	0x1
	.byte	0x5f
	.uaword	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.string	"b1"
	.byte	0x1
	.byte	0x5f
	.uaword	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x60
	.uaword	0x267
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0x60
	.uaword	0x267
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.uaword	.LVL6
	.uaword	0xdbc
	.uaword	0x539
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL7
	.uaword	0xde7
	.uaword	0x558
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL12
	.uaword	0xe16
	.uaword	0x578
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL14
	.uaword	0xe16
	.uaword	0x598
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL16
	.uaword	0xdbc
	.uaword	0x5ac
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL20
	.uaword	0xe16
	.uaword	0x5cc
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL22
	.uaword	0xe46
	.uaword	0x5ec
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL23
	.uaword	0xe7b
	.uaword	0x60b
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL24
	.uaword	0xdbc
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x622
	.uleb128 0x5
	.uaword	0x357
	.uleb128 0x4
	.byte	0x4
	.uaword	0x62d
	.uleb128 0x5
	.uaword	0x259
	.uleb128 0xf
	.byte	0x1
	.string	"actAESInitDecryptBlock"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e6
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0x89
	.uaword	0x3c0
	.uaword	.LLST10
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x8a
	.uaword	0x28e
	.uaword	.LLST11
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8a
	.uaword	0x267
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8b
	.uaword	0x3cc
	.uaword	.LLST13
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8e
	.uaword	0x299
	.uaword	.LLST14
	.uleb128 0x18
	.uaword	.LVL26
	.uaword	0xd8a
	.uaword	0x6d5
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL28
	.uaword	0xea4
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"actAESDecryptBlock"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8a1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa3
	.uaword	0x61c
	.uaword	.LLST15
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa4
	.uaword	0x28e
	.uaword	.LLST16
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.byte	0xa4
	.uaword	0x3c6
	.uaword	.LLST17
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa5
	.uaword	0x3cc
	.uaword	.LLST18
	.uleb128 0x15
	.string	"k_ptr"
	.byte	0x1
	.byte	0xa7
	.uaword	0x627
	.uaword	.LLST19
	.uleb128 0x16
	.string	"b0"
	.byte	0x1
	.byte	0xa8
	.uaword	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.string	"b1"
	.byte	0x1
	.byte	0xa8
	.uaword	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.uaword	0x267
	.uaword	.LLST20
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xa9
	.uaword	0x267
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.string	"arrayIndex"
	.byte	0x1
	.byte	0xaa
	.uaword	0x267
	.uaword	.LLST21
	.uleb128 0x18
	.uaword	.LVL33
	.uaword	0xdbc
	.uaword	0x7b8
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL34
	.uaword	0xde7
	.uaword	0x7d7
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL42
	.uaword	0xecc
	.uaword	0x7f7
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL43
	.uaword	0xecc
	.uaword	0x817
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL45
	.uaword	0xdbc
	.uaword	0x82b
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL49
	.uaword	0xecc
	.uaword	0x84b
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL51
	.uaword	0xefc
	.uaword	0x870
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.uaword	.LVL52
	.uaword	0xe7b
	.uaword	0x890
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.uaword	.LVL53
	.uaword	0xdbc
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"actAESInitEncrypt"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x97a
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd5
	.uaword	0x3c0
	.uaword	.LLST22
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0xd6
	.uaword	0x28e
	.uaword	.LLST23
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd6
	.uaword	0x267
	.uaword	.LLST24
	.uleb128 0x11
	.string	"iv"
	.byte	0x1
	.byte	0xd6
	.uaword	0x28e
	.uaword	.LLST25
	.uleb128 0x11
	.string	"mode"
	.byte	0x1
	.byte	0xd7
	.uaword	0x24c
	.uaword	.LLST26
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd7
	.uaword	0x3cc
	.uaword	.LLST27
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0xd9
	.uaword	0x299
	.uaword	.LLST28
	.uleb128 0x18
	.uaword	.LVL56
	.uaword	0xf31
	.uaword	0x94b
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.uaword	.LVL57
	.uaword	0xf54
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"actAESEncrypt"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaac
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf5
	.uaword	0x3c0
	.uaword	.LLST29
	.uleb128 0x11
	.string	"in"
	.byte	0x1
	.byte	0xf6
	.uaword	0x28e
	.uaword	.LLST30
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.byte	0xf6
	.uaword	0x267
	.uaword	.LLST31
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x1
	.byte	0xf7
	.uaword	0x3c6
	.uaword	.LLST32
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf7
	.uaword	0xaac
	.uaword	.LLST33
	.uleb128 0x11
	.string	"final"
	.byte	0x1
	.byte	0xf8
	.uaword	0x27c
	.uaword	.LLST34
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf8
	.uaword	0x3cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfa
	.uaword	0x299
	.uaword	.LLST35
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0x1
	.byte	0xfc
	.uaword	0x267
	.uaword	.LLST36
	.uleb128 0x18
	.uaword	.LVL70
	.uaword	0xf8c
	.uaword	0xa49
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.uaword	.LVL71
	.uaword	0xfc5
	.uaword	0xa6a
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 280
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 260
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.uaword	.LVL74
	.uaword	0xff6
	.uaword	0xa9a
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 280
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL75
	.uaword	0xdbc
	.uleb128 0x13
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
	.uaword	0x267
	.uleb128 0x1b
	.byte	0x1
	.string	"actAESInitDecrypt"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xba7
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x153
	.uaword	0x3c0
	.uaword	.LLST37
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x28e
	.uaword	.LLST38
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x154
	.uaword	0x267
	.uaword	.LLST39
	.uleb128 0x1d
	.string	"iv"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x28e
	.uaword	.LLST40
	.uleb128 0x1d
	.string	"mode"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x24c
	.uaword	.LLST41
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x155
	.uaword	0x3cc
	.uaword	.LLST42
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x157
	.uaword	0x299
	.uaword	.LLST43
	.uleb128 0x18
	.uaword	.LVL80
	.uaword	0xf31
	.uaword	0xb64
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.uaword	.LVL82
	.uaword	0xf54
	.uaword	0xb96
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL85
	.uaword	0xea4
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"actAESDecrypt"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd8a
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x179
	.uaword	0x3c0
	.uaword	.LLST44
	.uleb128 0x1d
	.string	"in"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x28e
	.uaword	.LLST45
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x267
	.uaword	.LLST46
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x3c6
	.uaword	.LLST47
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x17b
	.uaword	0xaac
	.uaword	.LLST48
	.uleb128 0x1d
	.string	"final"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x27c
	.uaword	.LLST49
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x3cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x299
	.uaword	.LLST50
	.uleb128 0x20
	.string	"total_bytes"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x267
	.uaword	.LLST51
	.uleb128 0x1e
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x180
	.uaword	0x267
	.uaword	.LLST52
	.uleb128 0x18
	.uaword	.LVL94
	.uaword	0x1036
	.uaword	0xc90
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL104
	.uaword	0xf8c
	.uaword	0xcbe
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.uaword	.LVL105
	.uaword	0x1036
	.uaword	0xce1
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 280
	.byte	0
	.uleb128 0x18
	.uaword	.LVL113
	.uaword	0xf8c
	.uaword	0xd0f
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.uaword	.LVL115
	.uaword	0x1069
	.uaword	0xd3b
	.uleb128 0x13
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL116
	.uaword	0x10a9
	.uaword	0xd5b
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 260
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.uaword	.LVL119
	.uaword	0x1036
	.uaword	0xd78
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x12
	.uaword	.LVL122
	.uaword	0xdbc
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actAESKeySetup"
	.byte	0x5
	.byte	0x8e
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uaword	0xdbc
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x7
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xde7
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"actCpyLEtoU32"
	.byte	0x7
	.uahalf	0x1f5
	.byte	0x1
	.byte	0x1
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x62d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x259
	.uleb128 0x22
	.byte	0x1
	.string	"actAESEncryptionRound"
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uaword	0xe46
	.uleb128 0xd
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0x627
	.uleb128 0xd
	.uaword	0x627
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESEncryptionFinalRound"
	.byte	0x5
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.uaword	0xe7b
	.uleb128 0xd
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0x627
	.uleb128 0xd
	.uaword	0x627
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"actCpyU32toLE"
	.byte	0x7
	.uahalf	0x21d
	.byte	0x1
	.byte	0x1
	.uaword	0xea4
	.uleb128 0xd
	.uaword	0x3c6
	.uleb128 0xd
	.uaword	0x627
	.uleb128 0xd
	.uaword	0x62d
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESMakeDecryptionKey"
	.byte	0x5
	.byte	0x9d
	.byte	0x1
	.byte	0x1
	.uaword	0xecc
	.uleb128 0xd
	.uaword	0x3c0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESDecryptionRound"
	.byte	0x5
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.uaword	0xefc
	.uleb128 0xd
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0x627
	.uleb128 0xd
	.uaword	0x627
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESDecryptionFinalRound"
	.byte	0x5
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uaword	0xf31
	.uleb128 0xd
	.uaword	0xe10
	.uleb128 0xd
	.uaword	0x627
	.uleb128 0xd
	.uaword	0x627
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actPaddingInit"
	.byte	0x8
	.byte	0x3e
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uaword	0xf54
	.uleb128 0xd
	.uaword	0x24c
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actAESInit"
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uaword	0xf8c
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x24c
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESTransform"
	.byte	0x5
	.byte	0xf7
	.byte	0x1
	.byte	0x1
	.uaword	0xfc5
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x3c6
	.uleb128 0xd
	.uaword	0x37c
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actPaddingPad"
	.byte	0x8
	.byte	0x52
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uaword	0xff6
	.uleb128 0xd
	.uaword	0x24c
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0xaac
	.uleb128 0xd
	.uaword	0x3c6
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actAESEncryptMultipleBlocks"
	.byte	0x5
	.byte	0xca
	.byte	0x1
	.byte	0x1
	.uaword	0x1036
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x3c6
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x6
	.uahalf	0x445
	.byte	0x1
	.byte	0x1
	.uaword	0x1060
	.uleb128 0xd
	.uaword	0x1060
	.uleb128 0xd
	.uaword	0x1062
	.uleb128 0xd
	.uaword	0x3d4
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1068
	.uleb128 0x25
	.uleb128 0x22
	.byte	0x1
	.string	"actAESDecryptMultipleBlocks"
	.byte	0x5
	.byte	0xde
	.byte	0x1
	.byte	0x1
	.uaword	0x10a9
	.uleb128 0xd
	.uaword	0x3c0
	.uleb128 0xd
	.uaword	0x28e
	.uleb128 0xd
	.uaword	0x3c6
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0x3cc
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"actPaddingUnpad"
	.byte	0x8
	.byte	0x65
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uleb128 0xd
	.uaword	0x24c
	.uleb128 0xd
	.uaword	0x267
	.uleb128 0xd
	.uaword	0xaac
	.uleb128 0xd
	.uaword	0x28e
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1-1
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL1-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL6-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL6-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x8c
	.sleb128 16
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL22-1
	.uaword	.LFE16
	.uahalf	0x3
	.byte	0x8c
	.sleb128 16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL33-1
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x84
	.sleb128 -36
	.uaword	.LVL41
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -36
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL33-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL30
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL49
	.uaword	.LFE18
	.uahalf	0x8
	.byte	0x7a
	.sleb128 -4
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL31
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL56-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL56-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL56-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL58
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL58
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL70-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL58
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL58
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL68
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL58
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL58
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL70-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL77
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL59
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x84
	.sleb128 260
	.byte	0x6
	.byte	0x22
	.byte	0x34
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x84
	.sleb128 260
	.byte	0x6
	.byte	0x22
	.byte	0x34
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL80-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL80-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL80-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL80-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL80-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL81
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82-1
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL86
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL99
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL108
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL96
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL100
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL109
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL114
	.uaword	.LVL120
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x7f
	.sleb128 16
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL86
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL94-1
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL96
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL102
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL111
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL86
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL94-1
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL96
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL103
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL107
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL112
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL86
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL94-1
	.uaword	.LVL96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL104-1
	.uaword	.LVL107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL113-1
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL124
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL87
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL89
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL101
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL96
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF9:
	.string	"out_length"
.LASF7:
	.string	"in_length"
.LASF3:
	.string	"in_block"
.LASF8:
	.string	"out_buffer"
.LASF4:
	.string	"out_block"
.LASF5:
	.string	"iterations"
.LASF6:
	.string	"result"
.LASF1:
	.string	"key_len"
.LASF10:
	.string	"out_size"
.LASF0:
	.string	"info"
.LASF2:
	.string	"watchdog"
	.extern	actPaddingUnpad,STT_FUNC,0
	.extern	actAESDecryptMultipleBlocks,STT_FUNC,0
	.extern	VStdLib_MemCpy,STT_FUNC,0
	.extern	actPaddingPad,STT_FUNC,0
	.extern	actAESTransform,STT_FUNC,0
	.extern	actAESEncryptMultipleBlocks,STT_FUNC,0
	.extern	actAESInit,STT_FUNC,0
	.extern	actPaddingInit,STT_FUNC,0
	.extern	actAESDecryptionFinalRound,STT_FUNC,0
	.extern	actAESDecryptionRound,STT_FUNC,0
	.extern	actAESMakeDecryptionKey,STT_FUNC,0
	.extern	actCpyU32toLE,STT_FUNC,0
	.extern	actAESEncryptionFinalRound,STT_FUNC,0
	.extern	actAESEncryptionRound,STT_FUNC,0
	.extern	actCpyLEtoU32,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.extern	actAESKeySetup,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
