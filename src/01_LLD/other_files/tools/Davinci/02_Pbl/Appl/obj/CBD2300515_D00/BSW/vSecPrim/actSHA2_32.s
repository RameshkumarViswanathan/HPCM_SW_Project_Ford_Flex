	.file	"actSHA2_32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actSHA2_32_Transform,"ax",@progbits
	.align 1
	.type	actSHA2_32_Transform, @function
actSHA2_32_Transform:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actSHA2_32.c"
	.loc 1 190 0
.LVL0:
	sub.a	%SP, 96
.LCFI0:
	mov.aa	%a7, %a4
	mov.aa	%a13, %a6
.LVL1:
	mov.aa	%a12, %a5
	.loc 1 190 0
	mov.aa	%a2, %a5
	.loc 1 196 0
	mov	%d15, 0
	mov.a	%a15, 7
.LVL2:
.L2:
	.loc 1 198 0 discriminator 3
	lea	%a4, [%SP] 96
	addsc.a	%a3, %a4, %d15, 2
	ld.w	%d2, [%a2+]4
	st.w	[%a3] -96, %d2
	.loc 1 196 0 discriminator 3
	add	%d15, 1
.LVL3:
	loop	%a15, .L2
	.loc 1 202 0
	lea	%a4, [%SP] 32
	mov.aa	%a5, %a7
.LVL4:
	mov	%d4, 64
	call	actCpyBEtoU32
.LVL5:
	.loc 1 204 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL6:
	mov	%d10, 16
	mov	%d9, 0
	mov	%d11, 0
	.loc 1 251 0
	movh	%d8, hi:actSHA2_32_K
	addi	%d8, %d8, lo:actSHA2_32_K
	j	.L3
.LVL7:
.L7:
	addi	%d9, %d9, 16
	addi	%d10, %d10, 16
.LVL8:
.L3:
	mov	%d15, %d11
	.loc 1 237 0
	jnz	%d9, .L10
.L5:
.LVL9:
	rsub	%d4, %d15, 7
	.loc 1 240 0 discriminator 3
	and	%d4, %d4, 7
	rsub	%d2, %d15, 4
	and	%d2, %d2, 7
	lea	%a2, [%SP] 96
	addsc.a	%a15, %a2, %d2, 2
	ld.w	%d2, [%a15] -96
	rsub	%d3, %d15, 6
	and	%d3, %d3, 7
	addsc.a	%a15, %a2, %d3, 2
	ld.w	%d3, [%a15] -96
	sh	%d5, %d15, 2
	addsc.a	%a15, %a2, %d5, 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d5, 0
	ld.w	%d6, [%a15] -64
	ld.w	%d5, [%a2]0
	add	%d5, %d6
	lea	%a4, [%SP] 96
	addsc.a	%a15, %a4, %d4, 2
	ld.w	%d6, [%a15] -96
	add	%d6, %d5
	dextr	%d5, %d2, %d2, 21
	dextr	%d4, %d2, %d2, 26
	xor	%d5, %d4
	dextr	%d4, %d2, %d2, 7
	xor	%d4, %d5
	add	%d5, %d6, %d4
	rsub	%d4, %d15, 5
	and	%d4, %d4, 7
	addsc.a	%a2, %a4, %d4, 2
	ld.w	%d4, [%a2] -96
	xor	%d4, %d3
	and	%d2, %d4
	xor	%d2, %d3
	add	%d3, %d5, %d2
	st.w	[%a15] -96, %d3
	rsub	%d2, %d15, 3
	.loc 1 241 0 discriminator 3
	and	%d2, %d2, 7
	addsc.a	%a2, %a4, %d2, 2
	ld.w	%d2, [%a2] -96
	add	%d2, %d3
	st.w	[%a2] -96, %d2
	rsub	%d2, %d15, 0
	.loc 1 242 0 discriminator 3
	and	%d2, %d2, 7
	addsc.a	%a2, %a4, %d2, 2
	ld.w	%d2, [%a2] -96
	rsub	%d3, %d15, 1
	and	%d3, %d3, 7
	addsc.a	%a2, %a4, %d3, 2
	ld.w	%d3, [%a2] -96
	dextr	%d5, %d2, %d2, 19
	dextr	%d4, %d2, %d2, 30
	xor	%d5, %d4
	dextr	%d4, %d2, %d2, 10
	xor	%d6, %d5, %d4
	or	%d4, %d3, %d2
	rsub	%d5, %d15, 2
	and	%d5, %d5, 7
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d5, [%a2] -96
	and	%d4, %d5
	and	%d2, %d3
	or	%d2, %d4
	add	%d2, %d6
	ld.w	%d3, [%a15] -96
	add	%d2, %d3
	st.w	[%a15] -96, %d2
	.loc 1 244 0 discriminator 3
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL10:
	.loc 1 238 0 discriminator 3
	add	%d15, 1
.LVL11:
	ne	%d2, %d15, 16
	jnz	%d2, .L5
	j	.L15
.LVL12:
.L10:
	.loc 1 251 0 discriminator 3
	and	%d4, %d15, 15
	add	%d2, %d15, -2
	and	%d2, %d2, 15
	lea	%a2, [%SP] 96
	addsc.a	%a15, %a2, %d2, 2
	ld.w	%d3, [%a15] -64
	addi	%d2, %d15, -15
	and	%d2, %d2, 15
	addsc.a	%a15, %a2, %d2, 2
	ld.w	%d2, [%a15] -64
	add	%d5, %d15, -7
	and	%d5, %d5, 15
	addsc.a	%a2, %a2, %d5, 2
	lea	%a3, [%SP] 96
	addsc.a	%a15, %a3, %d4, 2
	ld.w	%d5, [%a2] -64
	ld.w	%d4, [%a15] -64
	add	%d5, %d4
	dextr	%d4, %d3, %d3, 13
	dextr	%d6, %d3, %d3, 15
	xor	%d4, %d6
	sh	%d3, %d3, -10
	xor	%d3, %d4
	add	%d3, %d5
	dextr	%d5, %d2, %d2, 14
	dextr	%d6, %d2, %d2, 25
	xor	%d5, %d6
	sh	%d2, -3
	xor	%d2, %d5
	add	%d3, %d2
	st.w	[%a15] -64, %d3
	rsub	%d7, %d15, 7
	and	%d7, %d7, 7
	rsub	%d0, %d15, 4
	and	%d0, %d0, 7
	addsc.a	%a15, %a3, %d0, 2
	ld.w	%d2, [%a15] -96
	rsub	%d0, %d15, 6
	and	%d0, %d0, 7
	addsc.a	%a15, %a3, %d0, 2
	ld.w	%d4, [%a15] -96
	addsc.a	%a15, %a3, %d7, 2
	add	%d7, %d15, %d9
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d7, 2
	ld.w	%d6, [%a2]0
	ld.w	%d0, [%a15] -96
	add	%d0, %d6
	dextr	%d6, %d2, %d2, 21
	dextr	%d7, %d2, %d2, 26
	xor	%d6, %d7
	dextr	%d5, %d2, %d2, 7
	xor	%d6, %d5
	add	%d6, %d0
	rsub	%d5, %d15, 5
	and	%d5, %d5, 7
	lea	%a4, [%SP] 96
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d5, [%a2] -96
	xor	%d5, %d4
	and	%d2, %d5
	xor	%d2, %d4
	add	%d2, %d6
	add	%d2, %d3
	st.w	[%a15] -96, %d2
	rsub	%d5, %d15, 3
	.loc 1 252 0 discriminator 3
	and	%d5, %d5, 7
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d3, [%a2] -96
	add	%d2, %d3
	st.w	[%a2] -96, %d2
	rsub	%d2, %d15, 0
	.loc 1 253 0 discriminator 3
	and	%d2, %d2, 7
	addsc.a	%a2, %a4, %d2, 2
	ld.w	%d2, [%a2] -96
	rsub	%d3, %d15, 1
	and	%d3, %d3, 7
	addsc.a	%a2, %a4, %d3, 2
	ld.w	%d3, [%a2] -96
	dextr	%d5, %d2, %d2, 19
	dextr	%d4, %d2, %d2, 30
	xor	%d5, %d4
	dextr	%d4, %d2, %d2, 10
	xor	%d7, %d5, %d4
	or	%d5, %d3, %d2
	rsub	%d6, %d15, 2
	and	%d6, %d6, 7
	addsc.a	%a2, %a4, %d6, 2
	ld.w	%d4, [%a2] -96
	and	%d4, %d5
	and	%d2, %d3
	or	%d2, %d4
	add	%d2, %d7
	ld.w	%d4, [%a15] -96
	add	%d2, %d4
	st.w	[%a15] -96, %d2
	.loc 1 255 0 discriminator 3
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL13:
	.loc 1 249 0 discriminator 3
	add	%d15, 1
.LVL14:
	ne	%d2, %d15, 16
	jnz	%d2, .L10
	.loc 1 259 0 discriminator 2
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL15:
	.loc 1 207 0 discriminator 2
	lt.u	%d15, %d10, 64
.LVL16:
	jnz	%d15, .L7
	.loc 1 262 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL17:
	.loc 1 265 0
	mov	%d15, 0
	mov.a	%a15, 7
.LVL18:
.L8:
	.loc 1 267 0 discriminator 3
	lea	%a3, [%SP] 96
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2] -96
	ld.w	%d3, [%a12]0
	add	%d2, %d3
	st.w	[%a12+]4, %d2
	.loc 1 265 0 discriminator 3
	add	%d15, 1
.LVL19:
	loop	%a15, .L8
	ret
.LVL20:
.L15:
	.loc 1 259 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL21:
	j	.L7
.LFE15:
	.size	actSHA2_32_Transform, .-actSHA2_32_Transform
.section .text.actSHA2_32_Update,"ax",@progbits
	.align 1
	.type	actSHA2_32_Update, @function
actSHA2_32_Update:
.LFB16:
	.loc 1 287 0
.LVL22:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	mov	%d9, %d4
	mov.aa	%a14, %a6
	.loc 1 288 0
	st.a	[%SP] 4, %a4
.LVL23:
	.loc 1 289 0
	lea	%a13, [%a4] 46
.LVL24:
	.loc 1 296 0
	mov.aa	%a4, %a6
.LVL25:
	call	actWatchdogTriggerFunction
.LVL26:
	.loc 1 299 0
	ld.w	%d2, [%a15] 32
	add	%d15, %d9, %d2
	jge.u	%d15, %d2, .L18
	.loc 1 301 0
	ld.w	%d3, [%a15] 36
	add	%d3, 1
	st.w	[%a15] 36, %d3
	.loc 1 302 0
	movh	%d4, 8192
	.loc 1 304 0
	mov	%d2, 248
	.loc 1 302 0
	jne	%d3, %d4, .L18
	ret
.L22:
	.loc 1 315 0
	rsub	%d15, %d2, 64
	min.u	%d15, %d9, %d15
.LVL27:
	.loc 1 316 0
	addsc.a	%a4, %a13, %d2, 0
	mov.aa	%a5, %a12
	mov	%d4, %d15
	call	VStdLib_MemCpy
.LVL28:
	.loc 1 317 0
	and	%d3, %d15, 255
	ld.w	%d2, [%a15] 40
	add	%d3, %d2
	st.w	[%a15] 40, %d3
	.loc 1 318 0
	lt.u	%d3, %d3, 64
	mov	%d2, 0
	jnz	%d3, .L26
	.loc 1 325 0
	mov.aa	%a4, %a13
	mov.aa	%a5, %a15
	mov.aa	%a6, %a14
	call	actSHA2_32_Transform
.LVL29:
	j	.L20
.LVL30:
.L27:
	.loc 1 337 0 discriminator 3
	addsc.a	%a4, %a12, %d15, 0
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a14
	call	actSHA2_32_Transform
.LVL31:
	.loc 1 335 0 discriminator 3
	addi	%d15, %d15, 64
.LVL32:
	jlt.u	%d15, %d8, .L27
.L23:
	.loc 1 341 0
	sub	%d4, %d9, %d8
	st.w	[%a15] 40, %d4
	.loc 1 342 0
	mov.aa	%a4, %a13
	addsc.a	%a5, %a12, %d8, 0
	call	VStdLib_MemCpy
.LVL33:
	.loc 1 344 0
	mov.aa	%a4, %a14
	call	actWatchdogTriggerFunction
.LVL34:
	mov	%d2, 0
	ret
.LVL35:
.L18:
	.loc 1 310 0
	st.w	[%a15] 32, %d15
	.loc 1 313 0
	ld.w	%d2, [%a15] 40
	jnz	%d2, .L22
	.loc 1 290 0
	mov	%d15, 0
.LVL36:
.L20:
	.loc 1 332 0
	sub	%d8, %d9, %d15
	.loc 1 333 0
	andn	%d8, %d8, ~(-64)
	add	%d8, %d15
.LVL37:
	.loc 1 335 0
	jlt.u	%d15, %d8, .L27
	j	.L23
.LVL38:
.L26:
	.loc 1 349 0
	ret
.LFE16:
	.size	actSHA2_32_Update, .-actSHA2_32_Update
.section .text.actSHA2_32_Finalize,"ax",@progbits
	.align 1
	.type	actSHA2_32_Finalize, @function
actSHA2_32_Finalize:
.LFB17:
	.loc 1 366 0
.LVL39:
	mov.aa	%a15, %a4
	mov.aa	%a14, %a5
	mov.aa	%a13, %a6
	.loc 1 367 0
	lea	%a12, [%a4] 46
.LVL40:
	.loc 1 369 0
	ld.w	%d15, [%a4] 32
	sh	%d9, %d15, 3
.LVL41:
	.loc 1 370 0
	ld.w	%d10, [%a4] 36
	dextr	%d10, %d10, %d15, 3
.LVL42:
	.loc 1 371 0
	and	%d15, %d15, 63
.LVL43:
	.loc 1 374 0
	mov.aa	%a4, %a6
.LVL44:
	call	actWatchdogTriggerFunction
.LVL45:
	.loc 1 377 0
	addsc.a	%a2, %a12, %d15, 0
	mov	%d2, -128
	st.b	[%a2]0, %d2
	.loc 1 378 0
	add	%d8, %d15, 1
.LVL46:
	.loc 1 381 0
	addsc.a	%a4, %a12, %d8, 0
	mov	%d4, 0
	rsub	%d5, %d15, 63
	call	VStdLib_MemSet
.LVL47:
	.loc 1 382 0
	lt.u	%d15, %d8, 57
	jnz	%d15, .L30
	.loc 1 384 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	call	actSHA2_32_Transform
.LVL48:
	.loc 1 385 0
	mov.aa	%a4, %a12
	mov	%d4, 0
	mov	%d5, 56
	call	VStdLib_MemSet
.LVL49:
.L30:
	.loc 1 389 0
	lea	%a4, [%a15] 102
	mov	%d4, %d10
	call	actU32toBE
.LVL50:
	.loc 1 390 0
	lea	%a4, [%a15] 106
	mov	%d4, %d9
	call	actU32toBE
.LVL51:
	.loc 1 393 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	call	actSHA2_32_Transform
.LVL52:
	.loc 1 396 0
	ld.hu	%d4, [%a15] 44
	mov.aa	%a4, %a14
	mov.aa	%a5, %a15
	sh	%d4, -2
	call	actCpyU32toBE
.LVL53:
	.loc 1 399 0
	mov.aa	%a4, %a12
	mov	%d4, 0
	mov	%d5, 64
	call	VStdLib_MemSet
.LVL54:
	.loc 1 401 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL55:
	.loc 1 404 0
	mov	%d2, 0
	ret
.LFE17:
	.size	actSHA2_32_Finalize, .-actSHA2_32_Finalize
.section .text.actSHA224Init,"ax",@progbits
	.align 1
	.global	actSHA224Init
	.type	actSHA224Init, @function
actSHA224Init:
.LFB18:
	.loc 1 420 0
.LVL56:
	.loc 1 422 0
	movh	%d15, 49414
	addi	%d15, %d15, -24872
	st.w	[%a4]0, %d15
	.loc 1 423 0
	movh	%d15, 13949
	addi	%d15, %d15, -11001
	st.w	[%a4] 4, %d15
	.loc 1 424 0
	movh	%d15, 12401
	addi	%d15, %d15, -8937
	st.w	[%a4] 8, %d15
	.loc 1 425 0
	movh	%d15, 63246
	addi	%d15, %d15, 22841
	st.w	[%a4] 12, %d15
	.loc 1 426 0
	movh	%d15, 65472
	addi	%d15, %d15, 2865
	st.w	[%a4] 16, %d15
	.loc 1 427 0
	movh	%d15, 26712
	addi	%d15, %d15, 5393
	st.w	[%a4] 20, %d15
	.loc 1 428 0
	movh	%d15, 25850
	addi	%d15, %d15, -28761
	st.w	[%a4] 24, %d15
	.loc 1 429 0
	movh	%d15, 48890
	addi	%d15, %d15, 20388
	st.w	[%a4] 28, %d15
	.loc 1 432 0
	mov	%d15, 0
	st.w	[%a4] 32, %d15
	.loc 1 433 0
	st.w	[%a4] 36, %d15
	.loc 1 434 0
	st.w	[%a4] 40, %d15
	.loc 1 435 0
	mov	%d15, 28
	st.h	[%a4] 44, %d15
	.loc 1 438 0
	mov	%d2, 0
	ret
.LFE18:
	.size	actSHA224Init, .-actSHA224Init
.section .text.actSHA224Update,"ax",@progbits
	.align 1
	.global	actSHA224Update
	.type	actSHA224Update, @function
actSHA224Update:
.LFB19:
	.loc 1 453 0
.LVL57:
	.loc 1 454 0
	call	actSHA2_32_Update
.LVL58:
	.loc 1 455 0
	ret
.LFE19:
	.size	actSHA224Update, .-actSHA224Update
.section .text.actSHA224Finalize,"ax",@progbits
	.align 1
	.global	actSHA224Finalize
	.type	actSHA224Finalize, @function
actSHA224Finalize:
.LFB20:
	.loc 1 469 0
.LVL59:
	.loc 1 470 0
	call	actSHA2_32_Finalize
.LVL60:
	.loc 1 471 0
	ret
.LFE20:
	.size	actSHA224Finalize, .-actSHA224Finalize
.section .text.actSHA256Init,"ax",@progbits
	.align 1
	.global	actSHA256Init
	.type	actSHA256Init, @function
actSHA256Init:
.LFB21:
	.loc 1 483 0
.LVL61:
	.loc 1 485 0
	movh	%d15, 27146
	addi	%d15, %d15, -6553
	st.w	[%a4]0, %d15
	.loc 1 486 0
	movh	%d15, 47976
	addi	%d15, %d15, -20859
	st.w	[%a4] 4, %d15
	.loc 1 487 0
	movh	%d15, 15471
	addi	%d15, %d15, -3214
	st.w	[%a4] 8, %d15
	.loc 1 488 0
	movh	%d15, 42320
	addi	%d15, %d15, -2758
	st.w	[%a4] 12, %d15
	.loc 1 489 0
	movh	%d15, 20750
	addi	%d15, %d15, 21119
	st.w	[%a4] 16, %d15
	.loc 1 490 0
	movh	%d15, 39685
	addi	%d15, %d15, 26764
	st.w	[%a4] 20, %d15
	.loc 1 491 0
	movh	%d15, 8068
	addi	%d15, %d15, -9813
	st.w	[%a4] 24, %d15
	.loc 1 492 0
	movh	%d15, 23521
	addi	%d15, %d15, -13031
	st.w	[%a4] 28, %d15
	.loc 1 495 0
	mov	%d15, 0
	st.w	[%a4] 32, %d15
	.loc 1 496 0
	st.w	[%a4] 36, %d15
	.loc 1 497 0
	st.w	[%a4] 40, %d15
	.loc 1 498 0
	mov	%d15, 32
	st.h	[%a4] 44, %d15
	.loc 1 501 0
	mov	%d2, 0
	ret
.LFE21:
	.size	actSHA256Init, .-actSHA256Init
.section .text.actSHA256Update,"ax",@progbits
	.align 1
	.global	actSHA256Update
	.type	actSHA256Update, @function
actSHA256Update:
.LFB22:
	.loc 1 516 0
.LVL62:
	.loc 1 517 0
	call	actSHA2_32_Update
.LVL63:
	.loc 1 518 0
	ret
.LFE22:
	.size	actSHA256Update, .-actSHA256Update
.section .text.actSHA256Finalize,"ax",@progbits
	.align 1
	.global	actSHA256Finalize
	.type	actSHA256Finalize, @function
actSHA256Finalize:
.LFB23:
	.loc 1 532 0
.LVL64:
	.loc 1 533 0
	call	actSHA2_32_Finalize
.LVL65:
	.loc 1 534 0
	ret
.LFE23:
	.size	actSHA256Finalize, .-actSHA256Finalize
.section .rodata.MSR_CONST,"a",@progbits
	.align 2
	.type	actSHA2_32_K, @object
	.size	actSHA2_32_K, 256
actSHA2_32_K:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
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
	.uleb128 0x60
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
	.uleb128 0x8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../BSW/VStdLib/vstdlib.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc40
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actSHA2_32.c"
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
	.uaword	0x14d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x195
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1c5
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
	.uaword	0x16d
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x187
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b7
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x22c
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x244
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x25d
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x291
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ba
	.uleb128 0x5
	.uaword	0x276
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x291
	.uleb128 0x6
	.uaword	0x291
	.uaword	0x2e4
	.uleb128 0x7
	.uaword	0x2e4
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	0x276
	.uaword	0x300
	.uleb128 0x7
	.uaword	0x2e4
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x70
	.byte	0x4
	.uahalf	0x259
	.uaword	0x376
	.uleb128 0x9
	.string	"H"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x376
	.byte	0
	.uleb128 0x9
	.string	"low_count"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x291
	.byte	0x20
	.uleb128 0x9
	.string	"hi_count"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x291
	.byte	0x24
	.uleb128 0x9
	.string	"buffer_used"
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x29f
	.byte	0x28
	.uleb128 0x9
	.string	"result_length"
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x283
	.byte	0x2c
	.uleb128 0x9
	.string	"buffer"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x2f0
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.uaword	0x291
	.uaword	0x386
	.uleb128 0x7
	.uaword	0x2e4
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"actSHA224STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x300
	.uleb128 0xa
	.string	"actSHA256STRUCT"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x300
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x5
	.byte	0x81
	.uaword	0x1da
	.uleb128 0xb
	.string	"actSHA2_32_Transform"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e8
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0xbb
	.uaword	0x2b4
	.uaword	.LLST0
	.uleb128 0xc
	.string	"H"
	.byte	0x1
	.byte	0xbc
	.uaword	0x4e8
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbd
	.uaword	0x4f0
	.uaword	.LLST2
	.uleb128 0xe
	.string	"W"
	.byte	0x1
	.byte	0xbf
	.uaword	0x4f6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"T"
	.byte	0x1
	.byte	0xc0
	.uaword	0x376
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.uaword	0x291
	.uaword	.LLST3
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0xc1
	.uaword	0x291
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.LVL5
	.uaword	0xb3d
	.uaword	0x473
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.uaword	.LVL6
	.uaword	0xb6b
	.uaword	0x487
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL10
	.uaword	0xb6b
	.uaword	0x49b
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL13
	.uaword	0xb6b
	.uaword	0x4af
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL15
	.uaword	0xb6b
	.uaword	0x4c3
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL17
	.uaword	0xb6b
	.uaword	0x4d7
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0xb6b
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x291
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ee
	.uleb128 0x6
	.uaword	0x291
	.uaword	0x506
	.uleb128 0x7
	.uaword	0x2e4
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"actSHA2_32_Update"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69d
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x69d
	.uaword	.LLST5
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x2b4
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x29f
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x4f0
	.uaword	.LLST8
	.uleb128 0x16
	.string	"Hptr"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x4e8
	.uaword	.LLST9
	.uleb128 0x17
	.string	"bufferPtr"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x6a3
	.byte	0x1
	.byte	0x6d
	.uleb128 0x16
	.string	"diff"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x29f
	.uaword	.LLST10
	.uleb128 0x18
	.string	"retVal"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x2bf
	.byte	0
	.uleb128 0x16
	.string	"lastBlockEnd"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x29f
	.uaword	.LLST11
	.uleb128 0x16
	.string	"bcount"
	.byte	0x1
	.uahalf	0x125
	.uaword	0x29f
	.uaword	.LLST12
	.uleb128 0x18
	.string	"finished"
	.byte	0x1
	.uahalf	0x126
	.uaword	0x276
	.byte	0
	.uleb128 0x10
	.uaword	.LVL26
	.uaword	0xb6b
	.uaword	0x608
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL28
	.uaword	0xb96
	.uaword	0x622
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL29
	.uaword	0x3cd
	.uaword	0x642
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL31
	.uaword	0x3cd
	.uaword	0x666
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.uaword	.LVL33
	.uaword	0xb96
	.uaword	0x68c
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL34
	.uaword	0xb6b
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x39e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x276
	.uleb128 0x14
	.string	"actSHA2_32_Finalize"
	.byte	0x1
	.uahalf	0x16a
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x894
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x69d
	.uaword	.LLST13
	.uleb128 0x19
	.string	"hash"
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x6a3
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x4f0
	.uaword	.LLST15
	.uleb128 0x17
	.string	"tempBuffer"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x6a3
	.byte	0x1
	.byte	0x6c
	.uleb128 0x16
	.string	"digest"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x4e8
	.uaword	.LLST16
	.uleb128 0x17
	.string	"low_bitcount"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x291
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.string	"hi_bitcount"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x291
	.byte	0x1
	.byte	0x5a
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.uahalf	0x173
	.uaword	0x29f
	.uaword	.LLST17
	.uleb128 0x18
	.string	"pad_len"
	.byte	0x1
	.uahalf	0x174
	.uaword	0x29f
	.byte	0x38
	.uleb128 0x10
	.uaword	.LVL45
	.uaword	0xb6b
	.uaword	0x790
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL47
	.uaword	0xbc9
	.uaword	0x7b5
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8
	.byte	0x3f
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.uaword	.LVL48
	.uaword	0x3cd
	.uaword	0x7d5
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL49
	.uaword	0xbc9
	.uaword	0x7f4
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL50
	.uaword	0xbf3
	.uaword	0x80f
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 102
	.byte	0
	.uleb128 0x10
	.uaword	.LVL51
	.uaword	0xbf3
	.uaword	0x82a
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 106
	.byte	0
	.uleb128 0x10
	.uaword	.LVL52
	.uaword	0x3cd
	.uaword	0x84a
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL53
	.uaword	0xc14
	.uaword	0x864
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL54
	.uaword	0xbc9
	.uaword	0x883
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL55
	.uaword	0xb6b
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA224Init"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8ca
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x8ca
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x386
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA224Update"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x960
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x8ca
	.uaword	.LLST18
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x2b4
	.uaword	.LLST19
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x29f
	.uaword	.LLST20
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x4f0
	.uaword	.LLST21
	.uleb128 0x12
	.uaword	.LVL58
	.uaword	0x506
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA224Finalize"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9dc
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x8ca
	.uaword	.LLST22
	.uleb128 0x19
	.string	"hash"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x6a3
	.uaword	.LLST23
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x4f0
	.uaword	.LLST24
	.uleb128 0x12
	.uaword	.LVL60
	.uaword	0x6a9
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA256Init"
	.byte	0x1
	.uahalf	0x1e2
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa12
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x69d
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA256Update"
	.byte	0x1
	.uahalf	0x1ff
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaa2
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x200
	.uaword	0x69d
	.uaword	.LLST25
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x201
	.uaword	0x2b4
	.uaword	.LLST26
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x202
	.uaword	0x29f
	.uaword	.LLST27
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x203
	.uaword	0x4f0
	.uaword	.LLST28
	.uleb128 0x12
	.uaword	.LVL63
	.uaword	0x506
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"actSHA256Finalize"
	.byte	0x1
	.uahalf	0x210
	.byte	0x1
	.uaword	0x2bf
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb1e
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x211
	.uaword	0x69d
	.uaword	.LLST29
	.uleb128 0x19
	.string	"hash"
	.byte	0x1
	.uahalf	0x212
	.uaword	0x6a3
	.uaword	.LLST30
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x213
	.uaword	0x4f0
	.uaword	.LLST31
	.uleb128 0x12
	.uaword	.LVL65
	.uaword	0x6a9
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x11
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"actSHA2_32_K"
	.byte	0x1
	.byte	0x59
	.uaword	0xb38
	.byte	0x5
	.byte	0x3
	.uaword	actSHA2_32_K
	.uleb128 0x5
	.uaword	0x2d4
	.uleb128 0x1c
	.byte	0x1
	.string	"actCpyBEtoU32"
	.byte	0x6
	.uahalf	0x1e1
	.byte	0x1
	.byte	0x1
	.uaword	0xb66
	.uleb128 0x1d
	.uaword	0x4e8
	.uleb128 0x1d
	.uaword	0x2b4
	.uleb128 0x1d
	.uaword	0xb66
	.byte	0
	.uleb128 0x5
	.uaword	0x291
	.uleb128 0x1e
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xb96
	.uleb128 0x1d
	.uaword	0x4f0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x5
	.uahalf	0x445
	.byte	0x1
	.byte	0x1
	.uaword	0xbc0
	.uleb128 0x1d
	.uaword	0xbc0
	.uleb128 0x1d
	.uaword	0xbc2
	.uleb128 0x1d
	.uaword	0x3b6
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0xbc8
	.uleb128 0x20
	.uleb128 0x1c
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x5
	.uahalf	0x431
	.byte	0x1
	.byte	0x1
	.uaword	0xbf3
	.uleb128 0x1d
	.uaword	0xbc0
	.uleb128 0x1d
	.uaword	0x16d
	.uleb128 0x1d
	.uaword	0x3b6
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"actU32toBE"
	.byte	0x6
	.uahalf	0x1c1
	.byte	0x1
	.byte	0x1
	.uaword	0xc14
	.uleb128 0x1d
	.uaword	0x6a3
	.uleb128 0x1d
	.uaword	0xb66
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"actCpyU32toBE"
	.byte	0x6
	.uahalf	0x209
	.byte	0x1
	.byte	0x1
	.uaword	0xc3d
	.uleb128 0x1d
	.uaword	0x6a3
	.uleb128 0x1d
	.uaword	0xc3d
	.uleb128 0x1d
	.uaword	0xb66
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xb66
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL5-1
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST2:
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
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL21
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL39
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL45-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL58-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL58-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL60-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL60-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL63-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL63-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL63-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL65-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL65-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
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
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"info"
.LASF3:
	.string	"length"
.LASF0:
	.string	"watchdog"
.LASF2:
	.string	"dataIN"
	.extern	actCpyU32toBE,STT_FUNC,0
	.extern	actU32toBE,STT_FUNC,0
	.extern	VStdLib_MemSet,STT_FUNC,0
	.extern	VStdLib_MemCpy,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.extern	actCpyBEtoU32,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
