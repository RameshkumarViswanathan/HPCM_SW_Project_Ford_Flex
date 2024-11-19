	.file	"cmpr.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.InputBits,"ax",@progbits
	.align 1
	.type	InputBits, @function
InputBits:
.LFB17:
	.file 1 "../../../../CBD2300515_D00/BSW/Cmpr/cmpr.c"
	.loc 1 503 0
.LVL0:
	.loc 1 508 0
	ld.w	%d15, [%a4] 8
	eq	%d3, %d4, 0
	or.eq	%d3, %d15, 0
	.loc 1 511 0
	mov	%d2, 0
	.loc 1 508 0
	jnz	%d3, .L2
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 515 0
	ld.bu	%d15, [%a4] 4
	jlt.u	%d15, 8, .L3
	.loc 1 515 0 is_stmt 0 discriminator 1
	mov	%d4, 161
.LVL1:
	call	ApplFblFatalError
.LVL2:
.L3:
	.loc 1 517 0 is_stmt 1
	ld.bu	%d15, [%a15] 4
	add	%d15, %d9
	lt	%d15, %d15, 33
	jnz	%d15, .L4
	.loc 1 517 0 is_stmt 0 discriminator 1
	mov	%d4, 161
	call	ApplFblFatalError
.LVL3:
.L4:
	.loc 1 520 0 is_stmt 1
	ld.bu	%d2, [%a15] 4
	movh.a	%a2, hi:inputMask
	lea	%a2, [%a2] lo:inputMask
	addsc.a	%a2, %a2, %d2, 0
	ld.a	%a3, [%a15]0
	ld.bu	%d15, [%a3]0
	ld.bu	%d3, [%a2]0
	and	%d10, %d15, %d3
.LVL4:
	add	%d2, -1
	.loc 1 523 0
	add	%d2, %d9
	and	%d2, %d2, 255
.LVL5:
	.loc 1 526 0
	sh	%d8, %d2, -3
.LVL6:
	.loc 1 528 0
	and	%d2, %d2, 7
.LVL7:
	add	%d2, 1
	st.b	[%a15] 4, %d2
.LVL8:
	.loc 1 530 0
	ld.w	%d4, [%a15] 12
	sub	%d4, %d9
	st.w	[%a15] 12, %d4
	.loc 1 533 0
	jlt.u	%d8, 4, .L5
	.loc 1 533 0 is_stmt 0 discriminator 1
	mov	%d4, 161
	call	ApplFblFatalError
.LVL9:
.L5:
	.loc 1 536 0 is_stmt 1
	jz	%d8, .L6
	mov	%d9, 0
.LVL10:
.L8:
	.loc 1 539 0
	ld.w	%d2, [%a15] 8
	jnz	%d2, .L7
	.loc 1 539 0 is_stmt 0 discriminator 1
	mov	%d4, 161
	call	ApplFblFatalError
.LVL11:
.L7:
	.loc 1 541 0 is_stmt 1
	ld.a	%a2, [%a15]0
	mov.d	%d2, %a2
	add	%d2, 1
	st.w	[%a15]0, %d2
	.loc 1 542 0
	ld.w	%d2, [%a15] 8
	add	%d2, -1
	st.w	[%a15] 8, %d2
	.loc 1 545 0
	sh	%d15, %d10, 8
.LVL12:
	.loc 1 547 0
	ld.bu	%d2, [%a2] 1
	or	%d10, %d15, %d2
.LVL13:
	add	%d9, 1
.LVL14:
	.loc 1 536 0
	and	%d2, %d9, 255
	jne	%d8, %d2, .L8
.LVL15:
.L6:
	.loc 1 562 0
	ld.bu	%d2, [%a15] 4
.LVL16:
	.loc 1 563 0
	sh	%d3, %d2, -3
	ld.w	%d4, [%a15]0
	add	%d4, %d3
	st.w	[%a15]0, %d4
	.loc 1 564 0
	ld.w	%d15, [%a15] 8
	sub	%d3, %d15, %d3
	st.w	[%a15] 8, %d3
.LVL17:
	.loc 1 570 0
	and	%d3, %d2, 7
	st.b	[%a15] 4, %d3
	.loc 1 567 0
	rsub	%d2, %d2, 8
.LVL18:
	.loc 1 573 0
	extr.u	%d2, %d10, %d2, 16
.LVL19:
.L2:
	.loc 1 574 0
	ret
.LFE17:
	.size	InputBits, .-InputBits
.section .text.LZSS_Decompress,"ax",@progbits
	.align 1
	.type	LZSS_Decompress, @function
LZSS_Decompress:
.LFB16:
	.loc 1 302 0
.LVL20:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 308 0
	movh.a	%a14, hi:eosFlag
	lea	%a14, [%a14] lo:eosFlag
	movh	%d9, hi:overflow
	.loc 1 464 0
	movh	%d8, hi:window
	addi	%d8, %d8, lo:window
	.loc 1 308 0
	j	.L12
.LVL21:
.L40:
	.loc 1 311 0
	call	FblLookForWatchdog
.LVL22:
	.loc 1 313 0
	movh.a	%a2, hi:state
	ld.bu	%d15, [%a2] lo:state
	jge.u	%d15, 5, .L13
	movh.a	%a2, hi:.L15
	lea	%a2, [%a2] lo:.L15
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L15:
	.code32
	j	.L14
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L18
	.code32
	j	.L19
.L14:
	.loc 1 319 0
	ld.w	%d15, [%a15] 12
	jnz	%d15, .L20
	.loc 1 322 0
	mov	%d15, 1
	st.b	[%a13]0, %d15
	j	.L21
.L20:
	.loc 1 327 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	InputBits
.LVL23:
	jne	%d2, 1, .L22
	.loc 1 330 0
	mov	%d15, 1
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
	j	.L23
.L22:
	.loc 1 336 0
	mov	%d15, 2
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
.L23:
	.loc 1 340 0
	ld.w	%d15, [%a15] 8
	sh	%d2, %d15, 3
	ld.bu	%d15, [%a15] 4
	sub	%d15, %d2, %d15
	ld.w	%d2, [%a15] 12
	jeq	%d2, %d15, .L21
	.loc 1 340 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL24:
	j	.L21
.L16:
	.loc 1 349 0 is_stmt 1
	ld.w	%d15, [%a15] 12
	jge.u	%d15, 8, .L24
	.loc 1 352 0
	mov	%d15, 1
	st.b	[%a13]0, %d15
	j	.L21
.L24:
	.loc 1 357 0
	ld.w	%d15, [%a12] 8
	add	%d15, 1
	movh.a	%a2, hi:maxOutLen
	ld.w	%d2, [%a2] lo:maxOutLen
	jge.u	%d2, %d15, .L25
	.loc 1 360 0
	mov	%d15, 2
	st.b	[%a13]0, %d15
	j	.L21
.L25:
	.loc 1 365 0
	mov.aa	%a4, %a15
	mov	%d4, 8
	call	InputBits
.LVL25:
	and	%d15, %d2, 255
.LVL26:
	.loc 1 368 0
	ld.w	%d2, [%a15] 8
.LVL27:
	sh	%d3, %d2, 3
	ld.bu	%d2, [%a15] 4
	sub	%d2, %d3, %d2
	ld.w	%d3, [%a15] 12
	jeq	%d3, %d2, .L26
	.loc 1 368 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL28:
.L26:
	.loc 1 371 0 is_stmt 1
	ld.a	%a2, [%a12]0
	mov.d	%d2, %a2
	add	%d2, 1
	st.w	[%a12]0, %d2
	st.b	[%a2]0, %d15
	.loc 1 372 0
	ld.w	%d2, [%a12] 8
	add	%d2, 1
	st.w	[%a12] 8, %d2
	.loc 1 374 0
	movh.a	%a2, hi:winPos
	ld.hu	%d2, [%a2] lo:winPos
	mov.a	%a4, %d8
	addsc.a	%a3, %a4, %d2, 0
	st.b	[%a3]0, %d15
	.loc 1 376 0
	add	%d15, %d2, 1
.LVL29:
	insert	%d15, %d15, 0, 10, 22
	st.h	[%a2] lo:winPos, %d15
	.loc 1 379 0
	mov	%d15, 0
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
	j	.L21
.L17:
	.loc 1 389 0
	ld.w	%d15, [%a15] 12
	jge.u	%d15, 10, .L27
	.loc 1 392 0
	mov	%d15, 1
	st.b	[%a13]0, %d15
	j	.L21
.L27:
	.loc 1 397 0
	mov.aa	%a4, %a15
	mov	%d4, 10
	call	InputBits
.LVL30:
	movh.a	%a2, hi:matchPos
	st.h	[%a2] lo:matchPos, %d2
	.loc 1 400 0
	ld.w	%d15, [%a15] 8
	sh	%d2, %d15, 3
	ld.bu	%d15, [%a15] 4
	sub	%d15, %d2, %d15
	ld.w	%d2, [%a15] 12
	jeq	%d2, %d15, .L28
	.loc 1 400 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL31:
.L28:
	.loc 1 403 0 is_stmt 1
	movh.a	%a2, hi:matchPos
	ld.hu	%d15, [%a2] lo:matchPos
	jnz	%d15, .L29
	.loc 1 406 0
	ld.w	%d15, [%a15] 8
	jlt.u	%d15, 2, .L30
	.loc 1 406 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL32:
.L30:
	.loc 1 408 0 is_stmt 1
	mov	%d15, 1
	st.b	[%a14]0, %d15
	.loc 1 409 0
	mov	%d15, 0
	st.w	[%a15] 8, %d15
	j	.L21
.L29:
	.loc 1 414 0
	mov	%d15, 3
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
	j	.L21
.L18:
	.loc 1 424 0
	ld.w	%d15, [%a15] 12
	jge.u	%d15, 4, .L31
	.loc 1 427 0
	mov	%d15, 1
	st.b	[%a13]0, %d15
	j	.L21
.L31:
	.loc 1 432 0
	mov.aa	%a4, %a15
	mov	%d4, 4
	call	InputBits
.LVL33:
	movh.a	%a2, hi:matchLen
	st.b	[%a2] lo:matchLen, %d2
	.loc 1 435 0
	ld.w	%d15, [%a15] 8
	sh	%d2, %d15, 3
	ld.bu	%d15, [%a15] 4
	sub	%d15, %d2, %d15
	ld.w	%d2, [%a15] 12
	jeq	%d2, %d15, .L32
	.loc 1 435 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL34:
.L32:
	.loc 1 437 0 is_stmt 1
	movh.a	%a2, hi:matchLen
	ld.bu	%d15, [%a2] lo:matchLen
	lt.u	%d15, %d15, 16
	jnz	%d15, .L33
	.loc 1 437 0 is_stmt 0 discriminator 1
	mov	%d4, 225
	call	ApplFblFatalError
.LVL35:
.L33:
	.loc 1 442 0 is_stmt 1
	movh.a	%a2, hi:matchLen
	ld.bu	%d15, [%a2] lo:matchLen
	add	%d15, 2
	st.b	[%a2] lo:matchLen, %d15
	.loc 1 445 0
	mov	%d15, 4
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
	j	.L21
.L19:
	.loc 1 453 0
	movh.a	%a2, hi:matchLen
	ld.bu	%d3, [%a2] lo:matchLen
	ld.w	%d15, [%a12] 8
	add	%d15, %d3
	movh.a	%a2, hi:maxOutLen
	ld.w	%d2, [%a2] lo:maxOutLen
	jlt.u	%d2, %d15, .L34
.LVL36:
	.loc 1 464 0 discriminator 1
	movh.a	%a2, hi:matchPos
	ld.hu	%d6, [%a2] lo:matchPos
	movh.a	%a2, hi:winPos
	ld.hu	%d15, [%a2] lo:winPos
	mov	%d4, 0
	.loc 1 461 0 discriminator 1
	jnz	%d3, .L37
	j	.L36
.LVL37:
.L34:
	.loc 1 456 0
	mov	%d15, 2
	st.b	[%a13]0, %d15
	j	.L21
.L37:
.LVL38:
	.loc 1 464 0 discriminator 3
	add	%d2, %d6, %d4
	insert	%d2, %d2, 0, 10, 22
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL39:
	.loc 1 466 0 discriminator 3
	ld.a	%a2, [%a12]0
.LVL40:
	mov.d	%d5, %a2
	add	%d5, 1
	st.w	[%a12]0, %d5
	st.b	[%a2]0, %d2
	.loc 1 467 0 discriminator 3
	ld.w	%d5, [%a12] 8
	add	%d5, 1
	st.w	[%a12] 8, %d5
	.loc 1 469 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2]0, %d2
.LVL41:
	.loc 1 471 0 discriminator 3
	add	%d15, 1
	insert	%d15, %d15, 0, 10, 22
.LVL42:
	add	%d4, 1
.LVL43:
	.loc 1 461 0 discriminator 3
	and	%d2, %d4, 255
.LVL44:
	jlt.u	%d2, %d3, .L37
	movh.a	%a2, hi:winPos
	st.h	[%a2] lo:winPos, %d15
.LVL45:
.L36:
	.loc 1 475 0
	mov	%d15, 0
	movh.a	%a2, hi:state
	st.b	[%a2] lo:state, %d15
	j	.L21
.L13:
	.loc 1 483 0 discriminator 1
	mov	%d4, 162
	call	ApplFblFatalError
.LVL46:
.L21:
	.loc 1 489 0
	movh.a	%a2, hi:winPos
	ld.hu	%d15, [%a2] lo:winPos
	mov	%d2, 1024
	jlt.u	%d15, %d2, .L38
	.loc 1 489 0 is_stmt 0 discriminator 1
	mov	%d4, 224
	call	ApplFblFatalError
.LVL47:
.L12:
	.loc 1 308 0 is_stmt 1
	mov.a	%a4, %d9
	lea	%a13, [%a4] lo:overflow
.L38:
	ld.w	%d15, [%a15] 8
	jz	%d15, .L11
	.loc 1 308 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14]0
	jeq	%d15, 1, .L11
	.loc 1 308 0 discriminator 2
	ld.bu	%d15, [%a13]0
	jz	%d15, .L40
.L11:
	ret
.LFE16:
	.size	LZSS_Decompress, .-LZSS_Decompress
.section .text.LZSS_Init,"ax",@progbits
	.align 1
	.global	LZSS_Init
	.type	LZSS_Init, @function
LZSS_Init:
.LFB14:
	.loc 1 191 0 is_stmt 1
	.loc 1 192 0
	mov	%d15, 0
	movh.a	%a15, hi:state
	st.b	[%a15] lo:state, %d15
	.loc 1 193 0
	movh.a	%a15, hi:matchLen
	st.b	[%a15] lo:matchLen, %d15
	.loc 1 194 0
	mov	%d2, 0
	movh.a	%a15, hi:matchPos
	st.h	[%a15] lo:matchPos, %d2
	.loc 1 195 0
	mov	%d3, 1
	movh.a	%a15, hi:winPos
	st.h	[%a15] lo:winPos, %d3
	.loc 1 196 0
	movh.a	%a15, hi:eosFlag
	st.b	[%a15] lo:eosFlag, %d2
	.loc 1 197 0
	movh.a	%a15, hi:unprocessedCount
	st.b	[%a15] lo:unprocessedCount, %d15
	ret
.LFE14:
	.size	LZSS_Init, .-LZSS_Init
.section .text.LZSS_ExpandData,"ax",@progbits
	.align 1
	.global	LZSS_ExpandData
	.type	LZSS_ExpandData, @function
LZSS_ExpandData:
.LFB15:
	.loc 1 210 0
.LVL48:
	sub.a	%SP, 16
.LCFI0:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 217 0
	mov	%d15, 0
	movh.a	%a2, hi:overflow
	st.b	[%a2] lo:overflow, %d15
	.loc 1 220 0
	movh.a	%a2, hi:maxOutLen
	ld.w	%d2, [%a5] 8
	st.w	[%a2] lo:maxOutLen, %d2
	.loc 1 221 0
	mov	%d15, 0
	st.w	[%a5] 8, %d15
	.loc 1 224 0
	movh.a	%a2, hi:unprocessedCount
	ld.bu	%d15, [%a2] lo:unprocessedCount
	jz	%d15, .L45
	.loc 1 227 0
	jlt.u	%d15, 4, .L46
	.loc 1 227 0 is_stmt 0 discriminator 1
	mov	%d4, 161
	call	ApplFblFatalError
.LVL49:
.L46:
	.loc 1 230 0 is_stmt 1
	ld.w	%d2, [%a15] 8
	.loc 1 236 0
	mov	%d15, 2
	.loc 1 230 0
	jge.u	%d2, 2, .L47
	.loc 1 232 0
	and	%d15, %d2, 255
.LVL50:
	.loc 1 240 0
	jz	%d15, .L48
.LVL51:
.L47:
	.loc 1 242 0 discriminator 3
	movh.a	%a2, hi:unprocessedCount
	ld.bu	%d3, [%a2] lo:unprocessedCount
	mov	%d2, 0
	movh	%d4, hi:unprocessed
	addi	%d4, %d4, lo:unprocessed
	add	%d4, %d3
.LVL52:
.L49:
	ld.a	%a3, [%a15]0
	addsc.a	%a2, %a3, %d2, 0
	ld.bu	%d3, [%a2]0
	mov.a	%a3, %d4
	addsc.a	%a2, %a3, %d2, 0
	st.b	[%a2]0, %d3
.LVL53:
	add	%d2, 1
.LVL54:
	.loc 1 240 0 discriminator 3
	and	%d3, %d2, 255
	jlt.u	%d3, %d15, .L49
.LVL55:
.L48:
	.loc 1 246 0
	movh	%d2, hi:unprocessed
	addi	%d2, %d2, lo:unprocessed
	st.w	[%SP]0, %d2
	.loc 1 247 0
	ld.bu	%d2, [%a15] 4
	st.b	[%SP] 4, %d2
	.loc 1 248 0
	movh.a	%a13, hi:unprocessedCount
	ld.bu	%d3, [%a13] lo:unprocessedCount
	add	%d3, %d15
	st.w	[%SP] 8, %d3
	.loc 1 249 0
	sh	%d3, 3
	sub	%d3, %d2
	st.w	[%SP] 12, %d3
	.loc 1 252 0
	mov.aa	%a4, %SP
	mov.aa	%a5, %a12
	call	LZSS_Decompress
.LVL56:
	.loc 1 255 0
	ld.w	%d2, [%SP] 8
	ld.bu	%d3, [%a13] lo:unprocessedCount
	add	%d3, %d15
	jne	%d2, %d3, .L50
	.loc 1 255 0 is_stmt 0 discriminator 1
	ld.bu	%d4, [%SP] 4
	ld.bu	%d3, [%a15] 4
	jeq	%d4, %d3, .L45
.L50:
	.loc 1 258 0 is_stmt 1
	sub	%d3, %d15, %d2
	ld.w	%d4, [%a15]0
	add	%d3, %d4
	st.w	[%a15]0, %d3
	ld.w	%d3, [%a15] 8
	add	%d2, %d3
	.loc 1 259 0
	sub	%d15, %d2, %d15
	st.w	[%a15] 8, %d15
	.loc 1 260 0
	ld.bu	%d15, [%SP] 4
	st.b	[%a15] 4, %d15
	.loc 1 263 0
	mov	%d15, 0
	movh.a	%a2, hi:unprocessedCount
	st.b	[%a2] lo:unprocessedCount, %d15
	.loc 1 264 0
	movh.a	%a2, hi:overflow
	st.b	[%a2] lo:overflow, %d15
.L45:
	.loc 1 269 0
	ld.w	%d2, [%a15] 8
	sh	%d2, 3
	ld.bu	%d15, [%a15] 4
	sub	%d15, %d2, %d15
	st.w	[%a15] 12, %d15
	.loc 1 271 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	LZSS_Decompress
.LVL57:
	.loc 1 274 0
	movh.a	%a2, hi:overflow
	ld.bu	%d15, [%a2] lo:overflow
	jne	%d15, 1, .L44
	.loc 1 277 0
	movh.a	%a2, hi:unprocessedCount
	ld.bu	%d15, [%a2] lo:unprocessedCount
	ld.w	%d4, [%a15] 8
	add	%d15, %d4
	jlt.u	%d15, 4, .L52
	.loc 1 277 0 is_stmt 0 discriminator 1
	mov	%d4, 161
	call	ApplFblFatalError
.LVL58:
.L52:
	.loc 1 280 0 is_stmt 1 discriminator 1
	ld.w	%d3, [%a15] 8
	jz	%d3, .L53
	.loc 1 282 0
	movh.a	%a2, hi:unprocessedCount
	ld.bu	%d4, [%a2] lo:unprocessedCount
	mov	%d15, 0
	mov	%d2, 0
	movh	%d5, hi:unprocessed
	addi	%d5, %d5, lo:unprocessed
	add	%d5, %d4
.LVL59:
.L54:
	.loc 1 282 0 is_stmt 0 discriminator 3
	ld.a	%a3, [%a15]0
	addsc.a	%a2, %a3, %d2, 0
	ld.bu	%d2, [%a2]0
	and	%d4, %d15, 255
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d4, 0
	st.b	[%a2]0, %d2
.LVL60:
	add	%d2, %d15, 1
	.loc 1 280 0 is_stmt 1 discriminator 3
	and	%d2, %d2, 255
	add	%d15, 1
.LVL61:
	jlt.u	%d2, %d3, .L54
.LVL62:
.L53:
	.loc 1 284 0
	movh.a	%a2, hi:unprocessedCount
	ld.bu	%d15, [%a2] lo:unprocessedCount
	add	%d3, %d15
	st.b	[%a2] lo:unprocessedCount, %d3
	.loc 1 287 0
	mov	%d15, 0
	st.w	[%a15] 8, %d15
.L44:
	ret
.LFE15:
	.size	LZSS_ExpandData, .-LZSS_ExpandData
.section .rodata,"a",@progbits
	.type	inputMask, @object
	.size	inputMask, 9
inputMask:
	.byte	-1
	.byte	127
	.byte	63
	.byte	31
	.byte	15
	.byte	7
	.byte	3
	.byte	1
	.byte	0
	.local	maxOutLen
.section .bss,"aw",@nobits
	.align 2
	.type		 maxOutLen,@object
	.size		 maxOutLen,4
maxOutLen:
	.space	4
	.local	overflow
	.align 0
	.type		 overflow,@object
	.size		 overflow,1
overflow:
	.space	1
	.local	eosFlag
	.align 0
	.type		 eosFlag,@object
	.size		 eosFlag,1
eosFlag:
	.space	1
	.local	winPos
	.align 1
	.type		 winPos,@object
	.size		 winPos,2
winPos:
	.space	2
	.local	matchPos
	.align 1
	.type		 matchPos,@object
	.size		 matchPos,2
matchPos:
	.space	2
	.local	matchLen
	.align 0
	.type		 matchLen,@object
	.size		 matchLen,1
matchLen:
	.space	1
	.local	state
	.align 0
	.type		 state,@object
	.size		 state,1
state:
	.space	1
	.local	unprocessedCount
	.align 0
	.type		 unprocessedCount,@object
	.size		 unprocessedCount,1
unprocessedCount:
	.space	1
	.local	unprocessed
	.align 0
	.type		 unprocessed,@object
	.size		 unprocessed,5
unprocessed:
	.space	5
	.local	window
	.align 0
	.type		 window,@object
	.size		 window,1024
window:
	.space	1024
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.byte	0x4
	.uaword	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../BSW/Cmpr/cmpr.h"
	.file 4 "Include/fbl_ap.h"
	.file 5 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x78a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Cmpr/cmpr.c"
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
	.byte	0x2
	.uahalf	0x233
	.uaword	0x143
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x170
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x192
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"tagLZSS_InputBuffer_T"
	.byte	0x10
	.byte	0x3
	.byte	0x4c
	.uaword	0x2a3
	.uleb128 0x6
	.string	"buffer"
	.byte	0x3
	.byte	0x4f
	.uaword	0x230
	.byte	0
	.uleb128 0x6
	.string	"bitPos"
	.byte	0x3
	.byte	0x51
	.uaword	0x1e5
	.byte	0x4
	.uleb128 0x6
	.string	"length"
	.byte	0x3
	.byte	0x53
	.uaword	0x204
	.byte	0x8
	.uleb128 0x6
	.string	"bitLength"
	.byte	0x3
	.byte	0x55
	.uaword	0x204
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"LZSS_InputBuffer_T"
	.byte	0x3
	.byte	0x56
	.uaword	0x245
	.uleb128 0x7
	.string	"LZSS_OutputBuffer_T"
	.byte	0x3
	.byte	0x59
	.uaword	0x2a3
	.uleb128 0x8
	.string	"InputBits"
	.byte	0x1
	.uahalf	0x1f6
	.byte	0x1
	.uaword	0x1f4
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3ac
	.uleb128 0x9
	.string	"pInBuf"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x3ac
	.uaword	.LLST0
	.uleb128 0x9
	.string	"numBits"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x1e5
	.uaword	.LLST1
	.uleb128 0xa
	.string	"rval"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x204
	.uaword	.LLST2
	.uleb128 0xa
	.string	"byteCount"
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0x1e5
	.uaword	.LLST3
	.uleb128 0xa
	.string	"tempBitPos"
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x1e5
	.uaword	.LLST4
	.uleb128 0xb
	.uaword	.LVL2
	.uaword	0x74e
	.uaword	0x373
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0xb
	.uaword	.LVL3
	.uaword	0x74e
	.uaword	0x387
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0xb
	.uaword	.LVL9
	.uaword	0x74e
	.uaword	0x39b
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0xd
	.uaword	.LVL11
	.uaword	0x74e
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a3
	.uleb128 0xe
	.string	"LZSS_Decompress"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x527
	.uleb128 0x9
	.string	"inBuf"
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x3ac
	.uaword	.LLST5
	.uleb128 0x9
	.string	"outBuf"
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x527
	.uaword	.LLST6
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x1e5
	.uaword	.LLST7
	.uleb128 0xa
	.string	"outByte"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x1e5
	.uaword	.LLST8
	.uleb128 0xf
	.uaword	.LVL22
	.uaword	0x770
	.uleb128 0xb
	.uaword	.LVL23
	.uaword	0x2d8
	.uaword	0x43f
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL24
	.uaword	0x74e
	.uaword	0x453
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL25
	.uaword	0x2d8
	.uaword	0x46c
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL28
	.uaword	0x74e
	.uaword	0x480
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL30
	.uaword	0x2d8
	.uaword	0x499
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL31
	.uaword	0x74e
	.uaword	0x4ad
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL32
	.uaword	0x74e
	.uaword	0x4c1
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL33
	.uaword	0x2d8
	.uaword	0x4da
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL34
	.uaword	0x74e
	.uaword	0x4ee
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL35
	.uaword	0x74e
	.uaword	0x502
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe1
	.byte	0
	.uleb128 0xb
	.uaword	.LVL46
	.uaword	0x74e
	.uaword	0x516
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa2
	.byte	0
	.uleb128 0xd
	.uaword	.LVL47
	.uaword	0x74e
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xe0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bd
	.uleb128 0x10
	.byte	0x1
	.string	"LZSS_Init"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"LZSS_ExpandData"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x621
	.uleb128 0x12
	.string	"inBuf"
	.byte	0x1
	.byte	0xd1
	.uaword	0x3ac
	.uaword	.LLST9
	.uleb128 0x12
	.string	"outBuf"
	.byte	0x1
	.byte	0xd1
	.uaword	0x527
	.uaword	.LLST10
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xd4
	.uaword	0x1e5
	.uaword	.LLST11
	.uleb128 0x13
	.string	"addCount"
	.byte	0x1
	.byte	0xd5
	.uaword	0x1e5
	.uaword	.LLST12
	.uleb128 0x14
	.string	"unprocessedBuf"
	.byte	0x1
	.byte	0xd6
	.uaword	0x2a3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.uaword	.LVL49
	.uaword	0x74e
	.uaword	0x5dc
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0xb
	.uaword	.LVL56
	.uaword	0x3b2
	.uaword	0x5f6
	.uleb128 0xc
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL57
	.uaword	0x3b2
	.uaword	0x610
	.uleb128 0xc
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL58
	.uaword	0x74e
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x1e5
	.uaword	0x632
	.uleb128 0x16
	.uaword	0x224
	.uahalf	0x3ff
	.byte	0
	.uleb128 0x14
	.string	"window"
	.byte	0x1
	.byte	0x91
	.uaword	0x621
	.byte	0x5
	.byte	0x3
	.uaword	window
	.uleb128 0x15
	.uaword	0x1e5
	.uaword	0x656
	.uleb128 0x17
	.uaword	0x224
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"unprocessed"
	.byte	0x1
	.byte	0x94
	.uaword	0x646
	.byte	0x5
	.byte	0x3
	.uaword	unprocessed
	.uleb128 0x14
	.string	"unprocessedCount"
	.byte	0x1
	.byte	0x96
	.uaword	0x1e5
	.byte	0x5
	.byte	0x3
	.uaword	unprocessedCount
	.uleb128 0x14
	.string	"state"
	.byte	0x1
	.byte	0x99
	.uaword	0x1e5
	.byte	0x5
	.byte	0x3
	.uaword	state
	.uleb128 0x14
	.string	"matchLen"
	.byte	0x1
	.byte	0x9b
	.uaword	0x1e5
	.byte	0x5
	.byte	0x3
	.uaword	matchLen
	.uleb128 0x14
	.string	"matchPos"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1f4
	.byte	0x5
	.byte	0x3
	.uaword	matchPos
	.uleb128 0x14
	.string	"winPos"
	.byte	0x1
	.byte	0x9f
	.uaword	0x1f4
	.byte	0x5
	.byte	0x3
	.uaword	winPos
	.uleb128 0x14
	.string	"eosFlag"
	.byte	0x1
	.byte	0xa1
	.uaword	0x1e5
	.byte	0x5
	.byte	0x3
	.uaword	eosFlag
	.uleb128 0x14
	.string	"overflow"
	.byte	0x1
	.byte	0xa3
	.uaword	0x1e5
	.byte	0x5
	.byte	0x3
	.uaword	overflow
	.uleb128 0x14
	.string	"maxOutLen"
	.byte	0x1
	.byte	0xa5
	.uaword	0x204
	.byte	0x5
	.byte	0x3
	.uaword	maxOutLen
	.uleb128 0x15
	.uaword	0x1e5
	.uaword	0x732
	.uleb128 0x17
	.uaword	0x224
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"inputMask"
	.byte	0x1
	.byte	0xa8
	.uaword	0x749
	.byte	0x5
	.byte	0x3
	.uaword	inputMask
	.uleb128 0x18
	.uaword	0x722
	.uleb128 0x19
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x4
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x770
	.uleb128 0x1a
	.uaword	0x1e5
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0x5
	.byte	0x6c
	.byte	0x1
	.uaword	0x1e5
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LFE17
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
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x38
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x20
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x79
	.sleb128 -1
	.byte	0x20
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0xd
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
