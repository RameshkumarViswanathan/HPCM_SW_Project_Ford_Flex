	.file	"actSHA.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.blk1,"ax",@progbits
	.align 1
	.type	blk1, @function
blk1:
.LFB16:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actSHA.c"
	.loc 1 322 0
.LVL0:
	.loc 1 323 0
	addi	%d15, %d4, 13
	and	%d15, %d15, 15
	addsc.a	%a2, %a4, %d15, 2
	addi	%d15, %d4, 8
	and	%d15, %d15, 15
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a15]0
	xor	%d2, %d15
	and	%d15, %d4, 15
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d15, [%a15]0
	xor	%d2, %d15
	add	%d4, 2
.LVL1:
	and	%d4, %d4, 15
.LVL2:
	addsc.a	%a4, %a4, %d4, 2
.LVL3:
	ld.w	%d15, [%a4]0
	xor	%d2, %d15
.LVL4:
	.loc 1 326 0
	dextr	%d2, %d2, %d2, 1
.LVL5:
	ret
.LFE16:
	.size	blk1, .-blk1
.section .text.actSHATransform,"ax",@progbits
	.align 1
	.type	actSHATransform, @function
actSHATransform:
.LFB15:
	.loc 1 178 0
.LVL6:
	sub.a	%SP, 64
.LCFI0:
	mov.aa	%a14, %a4
	mov.aa	%a15, %a5
	mov.aa	%a12, %a6
	.loc 1 179 0
	mov.aa	%a2, %SP
	mov	%e2, 0
	lea	%a3, 8-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 186 0
	ld.w	%d9, [%a5]0
.LVL7:
	.loc 1 187 0
	ld.w	%d8, [%a5] 4
.LVL8:
	.loc 1 188 0
	ld.w	%d10, [%a5] 8
.LVL9:
	.loc 1 189 0
	ld.w	%d14, [%a5] 12
.LVL10:
	.loc 1 190 0
	ld.w	%d13, [%a5] 16
.LVL11:
	.loc 1 192 0
	mov.aa	%a4, %a6
.LVL12:
	call	actWatchdogTriggerFunction
.LVL13:
	.loc 1 195 0
	mov.aa	%a4, %SP
	mov.aa	%a5, %a14
	mov	%d4, 64
	call	actCpyBEtoU32
.LVL14:
	.loc 1 236 0
	mov	%d15, 0
	j	.L3
.LVL15:
.L8:
	mov	%d14, %d10
	.loc 1 242 0
	mov	%d10, %d11
.LVL16:
	.loc 1 238 0
	mov	%d9, %d12
.LVL17:
.L3:
	.loc 1 238 0 is_stmt 0 discriminator 3
	lea	%a3, [%SP] 64
	addsc.a	%a2, %a3, %d15, 2
	dextr	%d4, %d9, %d9, 5
	ld.w	%d5, [%a2] -64
	add	%d3, %d4, %d5
	addi	%d3, %d3, 31129
	addih	%d3, %d3, 23170
	xor	%d2, %d14, %d10
	and	%d2, %d8
	xor	%d2, %d14
	add	%d2, %d3
	add	%d12, %d2, %d13
.LVL18:
	.loc 1 242 0 is_stmt 1 discriminator 3
	dextr	%d11, %d8, %d8, 30
.LVL19:
	.loc 1 245 0 discriminator 3
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL20:
	.loc 1 236 0 discriminator 3
	add	%d15, 1
.LVL21:
	mov	%d8, %d9
	mov	%d13, %d14
	ne	%d2, %d15, 16
	jnz	%d2, .L8
.LVL22:
	j	.L4
.LVL23:
.L9:
	mov	%d10, %d11
.LVL24:
	.loc 1 253 0
	mov	%d11, %d13
.LVL25:
	.loc 1 249 0
	mov	%d12, %d8
.LVL26:
.L4:
	.loc 1 249 0 is_stmt 0 discriminator 2
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	blk1
.LVL27:
	and	%d3, %d15, 15
	lea	%a3, [%SP] 64
	addsc.a	%a2, %a3, %d3, 2
	st.w	[%a2] -64, %d2
	addi	%d2, %d2, 31129
	addih	%d2, %d2, 23170
	dextr	%d3, %d12, %d12, 5
	add	%d8, %d2, %d3
	xor	%d2, %d10, %d11
	and	%d2, %d9
	xor	%d3, %d2, %d10
	add	%d2, %d8, %d3
	add	%d8, %d2, %d14
.LVL28:
	.loc 1 253 0 is_stmt 1 discriminator 2
	dextr	%d13, %d9, %d9, 30
.LVL29:
	.loc 1 256 0 discriminator 2
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL30:
	.loc 1 247 0 discriminator 2
	add	%d15, 1
.LVL31:
	mov	%d9, %d12
	mov	%d14, %d10
	ne	%d2, %d15, 20
	jnz	%d2, .L9
.LVL32:
	.loc 1 258 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL33:
	j	.L5
.LVL34:
.L10:
	mov	%d11, %d13
	.loc 1 267 0
	mov	%d13, %d9
.LVL35:
	.loc 1 263 0
	mov	%d8, %d14
.LVL36:
.L5:
	.loc 1 263 0 is_stmt 0 discriminator 2
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	blk1
.LVL37:
	and	%d3, %d15, 15
	lea	%a3, [%SP] 64
	addsc.a	%a2, %a3, %d3, 2
	st.w	[%a2] -64, %d2
	addi	%d2, %d2, -5215
	addih	%d2, %d2, 28378
	dextr	%d3, %d8, %d8, 5
	add	%d14, %d2, %d3
	xor	%d2, %d13, %d12
	xor	%d3, %d2, %d11
	add	%d2, %d14, %d3
	add	%d14, %d2, %d10
.LVL38:
	.loc 1 267 0 is_stmt 1 discriminator 2
	dextr	%d9, %d12, %d12, 30
.LVL39:
	.loc 1 270 0 discriminator 2
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL40:
	.loc 1 261 0 discriminator 2
	add	%d15, 1
.LVL41:
	mov	%d12, %d8
	mov	%d10, %d11
	ne	%d2, %d15, 40
	jnz	%d2, .L10
.LVL42:
	.loc 1 272 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL43:
	j	.L6
.LVL44:
.L11:
	mov	%d13, %d9
	.loc 1 281 0
	mov	%d9, %d10
.LVL45:
	.loc 1 277 0
	mov	%d14, %d12
.LVL46:
.L6:
	.loc 1 277 0 is_stmt 0 discriminator 2
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	blk1
.LVL47:
	and	%d4, %d15, 15
	lea	%a3, [%SP] 64
	addsc.a	%a2, %a3, %d4, 2
	st.w	[%a2] -64, %d2
	addi	%d2, %d2, -17188
	addih	%d2, %d2, 36636
	dextr	%d3, %d14, %d14, 5
	add	%d12, %d2, %d3
	or	%d3, %d9, %d8
	and	%d3, %d13
	and	%d2, %d9, %d8
	or	%d3, %d2
	add	%d3, %d12
	add	%d12, %d3, %d11
.LVL48:
	.loc 1 281 0 is_stmt 1 discriminator 2
	dextr	%d10, %d8, %d8, 30
.LVL49:
	.loc 1 284 0 discriminator 2
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL50:
	.loc 1 275 0 discriminator 2
	add	%d15, 1
.LVL51:
	mov	%d8, %d14
	mov	%d11, %d13
	ne	%d2, %d15, 60
	jnz	%d2, .L11
.LVL52:
	.loc 1 286 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL53:
	j	.L7
.LVL54:
.L12:
	mov	%d9, %d10
.LVL55:
	.loc 1 295 0
	mov	%d10, %d8
.LVL56:
	.loc 1 291 0
	mov	%d12, %d11
.LVL57:
.L7:
	.loc 1 291 0 is_stmt 0 discriminator 2
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	blk1
.LVL58:
	and	%d4, %d15, 15
	lea	%a3, [%SP] 64
	addsc.a	%a2, %a3, %d4, 2
	st.w	[%a2] -64, %d2
	addi	%d2, %d2, -15914
	addih	%d2, %d2, 51811
	dextr	%d3, %d12, %d12, 5
	add	%d2, %d3
	xor	%d3, %d10, %d14
	xor	%d3, %d9
	add	%d3, %d2
	add	%d11, %d3, %d13
.LVL59:
	.loc 1 295 0 is_stmt 1 discriminator 2
	dextr	%d8, %d14, %d14, 30
.LVL60:
	.loc 1 298 0 discriminator 2
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL61:
	.loc 1 289 0 discriminator 2
	add	%d15, 1
.LVL62:
	mov	%d14, %d12
	mov	%d13, %d9
	ne	%d4, %d15, 80
	jnz	%d4, .L12
	.loc 1 302 0
	mov.aa	%a4, %a12
	call	actWatchdogTriggerFunction
.LVL63:
	.loc 1 305 0
	ld.w	%d3, [%a15]0
	add	%d3, %d11
	st.w	[%a15]0, %d3
	.loc 1 306 0
	ld.w	%d2, [%a15] 4
	add	%d12, %d2
.LVL64:
	st.w	[%a15] 4, %d12
	.loc 1 307 0
	ld.w	%d3, [%a15] 8
	add	%d8, %d3
.LVL65:
	st.w	[%a15] 8, %d8
	.loc 1 308 0
	ld.w	%d15, [%a15] 12
.LVL66:
	add	%d10, %d15
.LVL67:
	st.w	[%a15] 12, %d10
	.loc 1 309 0
	ld.w	%d2, [%a15] 16
	add	%d9, %d2
.LVL68:
	st.w	[%a15] 16, %d9
	ret
.LFE15:
	.size	actSHATransform, .-actSHATransform
.section .text.actSHAInit,"ax",@progbits
	.align 1
	.global	actSHAInit
	.type	actSHAInit, @function
actSHAInit:
.LFB17:
	.loc 1 377 0
.LVL69:
	.loc 1 379 0
	movh	%d15, 26437
	addi	%d15, %d15, 8961
	st.w	[%a4]0, %d15
	.loc 1 380 0
	movh	%d15, 61390
	addi	%d15, %d15, -21623
	st.w	[%a4] 4, %d15
	.loc 1 381 0
	movh	%d15, 39099
	addi	%d15, %d15, -8962
	st.w	[%a4] 8, %d15
	.loc 1 382 0
	movh	%d15, 4146
	addi	%d15, %d15, 21622
	st.w	[%a4] 12, %d15
	.loc 1 383 0
	movh	%d15, 50131
	addi	%d15, %d15, -7696
	st.w	[%a4] 16, %d15
	.loc 1 385 0
	mov	%d15, 0
	st.w	[%a4] 20, %d15
	.loc 1 386 0
	st.w	[%a4] 24, %d15
	.loc 1 387 0
	st.w	[%a4] 28, %d15
	.loc 1 390 0
	mov	%d2, 0
	ret
.LFE17:
	.size	actSHAInit, .-actSHAInit
.section .text.actSHAUpdate,"ax",@progbits
	.align 1
	.global	actSHAUpdate
	.type	actSHAUpdate, @function
actSHAUpdate:
.LFB18:
	.loc 1 408 0
.LVL70:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	mov	%d9, %d4
	mov.aa	%a14, %a6
	.loc 1 409 0
	st.a	[%SP] 4, %a4
.LVL71:
	.loc 1 410 0
	lea	%a13, [%a4] 32
.LVL72:
	.loc 1 417 0
	mov.aa	%a4, %a6
.LVL73:
	call	actWatchdogTriggerFunction
.LVL74:
	.loc 1 420 0
	ld.w	%d2, [%a15] 20
	add	%d15, %d9, %d2
	jge.u	%d15, %d2, .L15
	.loc 1 422 0
	ld.w	%d3, [%a15] 24
	add	%d3, 1
	st.w	[%a15] 24, %d3
	.loc 1 423 0
	movh	%d4, 8192
	.loc 1 425 0
	mov	%d2, 248
	.loc 1 423 0
	jne	%d3, %d4, .L15
	ret
.L19:
	.loc 1 436 0
	rsub	%d15, %d2, 64
	min.u	%d15, %d9, %d15
.LVL75:
	.loc 1 437 0
	addsc.a	%a4, %a13, %d2, 0
	mov.aa	%a5, %a12
	mov	%d4, %d15
	call	VStdLib_MemCpy
.LVL76:
	.loc 1 438 0
	and	%d3, %d15, 255
	ld.w	%d2, [%a15] 28
	add	%d3, %d2
	st.w	[%a15] 28, %d3
	.loc 1 439 0
	lt.u	%d3, %d3, 64
	mov	%d2, 0
	jnz	%d3, .L23
	.loc 1 446 0
	mov.aa	%a4, %a13
	mov.aa	%a5, %a15
	mov.aa	%a6, %a14
	call	actSHATransform
.LVL77:
	j	.L17
.LVL78:
.L24:
	.loc 1 458 0 discriminator 3
	addsc.a	%a4, %a12, %d15, 0
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a14
	call	actSHATransform
.LVL79:
	.loc 1 456 0 discriminator 3
	addi	%d15, %d15, 64
.LVL80:
	jlt.u	%d15, %d8, .L24
.L20:
	.loc 1 462 0
	sub	%d4, %d9, %d8
	st.w	[%a15] 28, %d4
	.loc 1 463 0
	mov.aa	%a4, %a13
	addsc.a	%a5, %a12, %d8, 0
	call	VStdLib_MemCpy
.LVL81:
	.loc 1 465 0
	mov.aa	%a4, %a14
	call	actWatchdogTriggerFunction
.LVL82:
	mov	%d2, 0
	ret
.LVL83:
.L15:
	.loc 1 431 0
	st.w	[%a15] 20, %d15
	.loc 1 434 0
	ld.w	%d2, [%a15] 28
	jnz	%d2, .L19
	.loc 1 411 0
	mov	%d15, 0
.LVL84:
.L17:
	.loc 1 453 0
	sub	%d8, %d9, %d15
	.loc 1 454 0
	andn	%d8, %d8, ~(-64)
	add	%d8, %d15
.LVL85:
	.loc 1 456 0
	jlt.u	%d15, %d8, .L24
	j	.L20
.LVL86:
.L23:
	.loc 1 470 0
	ret
.LFE18:
	.size	actSHAUpdate, .-actSHAUpdate
.section .text.actSHAFinalize,"ax",@progbits
	.align 1
	.global	actSHAFinalize
	.type	actSHAFinalize, @function
actSHAFinalize:
.LFB19:
	.loc 1 486 0
.LVL87:
	mov.aa	%a15, %a4
	mov.aa	%a14, %a5
	mov.aa	%a13, %a6
	.loc 1 487 0
	lea	%a12, [%a4] 32
.LVL88:
	.loc 1 489 0
	ld.w	%d15, [%a4] 20
	sh	%d9, %d15, 3
.LVL89:
	.loc 1 490 0
	ld.w	%d10, [%a4] 24
	dextr	%d10, %d10, %d15, 3
.LVL90:
	.loc 1 491 0
	and	%d15, %d15, 63
.LVL91:
	.loc 1 494 0
	mov.aa	%a4, %a6
.LVL92:
	call	actWatchdogTriggerFunction
.LVL93:
	.loc 1 497 0
	addsc.a	%a2, %a12, %d15, 0
	mov	%d2, -128
	st.b	[%a2]0, %d2
	.loc 1 498 0
	add	%d8, %d15, 1
.LVL94:
	.loc 1 501 0
	addsc.a	%a4, %a12, %d8, 0
	mov	%d4, 0
	rsub	%d5, %d15, 63
	call	VStdLib_MemSet
.LVL95:
	.loc 1 502 0
	lt.u	%d15, %d8, 57
	jnz	%d15, .L27
	.loc 1 504 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	call	actSHATransform
.LVL96:
	.loc 1 505 0
	mov.aa	%a4, %a12
	mov	%d4, 0
	mov	%d5, 56
	call	VStdLib_MemSet
.LVL97:
.L27:
	.loc 1 509 0
	lea	%a4, [%a15] 88
	mov	%d4, %d10
	call	actU32toBE
.LVL98:
	.loc 1 510 0
	lea	%a4, [%a15] 92
	mov	%d4, %d9
	call	actU32toBE
.LVL99:
	.loc 1 513 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	call	actSHATransform
.LVL100:
	.loc 1 516 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a15
	mov	%d4, 5
	call	actCpyU32toBE
.LVL101:
	.loc 1 519 0
	mov.aa	%a4, %a12
	mov	%d4, 0
	mov	%d5, 64
	call	VStdLib_MemSet
.LVL102:
	.loc 1 521 0
	mov.aa	%a4, %a13
	call	actWatchdogTriggerFunction
.LVL103:
	.loc 1 524 0
	mov	%d2, 0
	ret
.LFE19:
	.size	actSHAFinalize, .-actSHAFinalize
.section .text.actSHAGetDigest,"ax",@progbits
	.align 1
	.global	actSHAGetDigest
	.type	actSHAGetDigest, @function
actSHAGetDigest:
.LFB20:
	.loc 1 538 0
.LVL104:
	mov.aa	%a2, %a4
	mov.aa	%a15, %a6
	.loc 1 540 0
	mov.aa	%a4, %a5
.LVL105:
	mov.aa	%a5, %a2
.LVL106:
	mov	%d4, 5
	call	actCpyU32toBE
.LVL107:
	.loc 1 542 0
	mov.aa	%a4, %a15
	call	actWatchdogTriggerFunction
.LVL108:
	ret
.LFE20:
	.size	actSHAGetDigest, .-actSHAGetDigest
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.byte	0x4
	.uaword	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../BSW/VStdLib/vstdlib.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb51
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actSHA.c"
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
	.uaword	0x149
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x191
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
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1c1
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
	.uaword	0x169
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x183
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b3
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x228
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x240
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x259
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x28d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b6
	.uleb128 0x5
	.uaword	0x272
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x28d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x60
	.byte	0x4
	.uahalf	0x250
	.uaword	0x33b
	.uleb128 0x7
	.string	"H"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x33b
	.byte	0
	.uleb128 0x7
	.string	"low_count"
	.byte	0x4
	.uahalf	0x253
	.uaword	0x28d
	.byte	0x14
	.uleb128 0x7
	.string	"hi_count"
	.byte	0x4
	.uahalf	0x253
	.uaword	0x28d
	.byte	0x18
	.uleb128 0x7
	.string	"buffer_used"
	.byte	0x4
	.uahalf	0x254
	.uaword	0x29b
	.byte	0x1c
	.uleb128 0x7
	.string	"buffer"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x34b
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.uaword	0x28d
	.uaword	0x34b
	.uleb128 0x9
	.uaword	0x2d0
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.uaword	0x272
	.uaword	0x35b
	.uleb128 0x9
	.uaword	0x2d0
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.string	"actSHASTRUCT"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x2dc
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x5
	.byte	0x81
	.uaword	0x1d6
	.uleb128 0xb
	.string	"blk1"
	.byte	0x1
	.uahalf	0x141
	.byte	0x1
	.uaword	0x28d
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3cf
	.uleb128 0xc
	.string	"W"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x3cf
	.uaword	.LLST0
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x28d
	.uaword	.LLST1
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x28d
	.uaword	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3d5
	.uleb128 0x5
	.uaword	0x28d
	.uleb128 0xe
	.string	"actSHATransform"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ea
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.byte	0xaf
	.uaword	0x2b0
	.uaword	.LLST3
	.uleb128 0xf
	.string	"H"
	.byte	0x1
	.byte	0xb0
	.uaword	0x5ea
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb1
	.uaword	0x5f2
	.uaword	.LLST5
	.uleb128 0x11
	.string	"W"
	.byte	0x1
	.byte	0xb3
	.uaword	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0xb5
	.uaword	0x28d
	.uaword	.LLST6
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.uaword	0x29b
	.uaword	.LLST7
	.uleb128 0x12
	.string	"Aval"
	.byte	0x1
	.byte	0xba
	.uaword	0x28d
	.uaword	.LLST8
	.uleb128 0x12
	.string	"Bval"
	.byte	0x1
	.byte	0xbb
	.uaword	0x28d
	.uaword	.LLST9
	.uleb128 0x12
	.string	"Cval"
	.byte	0x1
	.byte	0xbc
	.uaword	0x28d
	.uaword	.LLST10
	.uleb128 0x12
	.string	"Dval"
	.byte	0x1
	.byte	0xbd
	.uaword	0x28d
	.uaword	.LLST11
	.uleb128 0x12
	.string	"Eval"
	.byte	0x1
	.byte	0xbe
	.uaword	0x28d
	.uaword	.LLST12
	.uleb128 0x13
	.uaword	.LVL13
	.uaword	0xa5d
	.uaword	0x4b1
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL14
	.uaword	0xa88
	.uaword	0x4d1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL20
	.uaword	0xa5d
	.uaword	0x4e5
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL27
	.uaword	0x387
	.uaword	0x4ff
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL30
	.uaword	0xa5d
	.uaword	0x513
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL33
	.uaword	0xa5d
	.uaword	0x527
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL37
	.uaword	0x387
	.uaword	0x541
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL40
	.uaword	0xa5d
	.uaword	0x555
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL43
	.uaword	0xa5d
	.uaword	0x569
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL47
	.uaword	0x387
	.uaword	0x583
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL50
	.uaword	0xa5d
	.uaword	0x597
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL53
	.uaword	0xa5d
	.uaword	0x5ab
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL58
	.uaword	0x387
	.uaword	0x5c5
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL61
	.uaword	0xa5d
	.uaword	0x5d9
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL63
	.uaword	0xa5d
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28d
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5f0
	.uleb128 0x8
	.uaword	0x28d
	.uaword	0x608
	.uleb128 0x9
	.uaword	0x2d0
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"actSHAInit"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x63c
	.uleb128 0x18
	.string	"info"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x63c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x35b
	.uleb128 0x17
	.byte	0x1
	.string	"actSHAUpdate"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7d6
	.uleb128 0xc
	.string	"info"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x63c
	.uaword	.LLST13
	.uleb128 0xc
	.string	"dataIN"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x2b0
	.uaword	.LLST14
	.uleb128 0xc
	.string	"length"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x29b
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x197
	.uaword	0x5f2
	.uaword	.LLST16
	.uleb128 0xd
	.string	"H"
	.byte	0x1
	.uahalf	0x199
	.uaword	0x5ea
	.uaword	.LLST17
	.uleb128 0x1a
	.string	"buffer"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x7d6
	.byte	0x1
	.byte	0x6d
	.uleb128 0xd
	.string	"diff"
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x29b
	.uaword	.LLST18
	.uleb128 0x1b
	.string	"retVal"
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x2bb
	.byte	0
	.uleb128 0xd
	.string	"lastBlockEnd"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x29b
	.uaword	.LLST19
	.uleb128 0xd
	.string	"bcount"
	.byte	0x1
	.uahalf	0x19e
	.uaword	0x29b
	.uaword	.LLST20
	.uleb128 0x1b
	.string	"finished"
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x272
	.byte	0
	.uleb128 0x13
	.uaword	.LVL74
	.uaword	0xa5d
	.uaword	0x741
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL76
	.uaword	0xab1
	.uaword	0x75b
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL77
	.uaword	0x3da
	.uaword	0x77b
	.uleb128 0x14
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL79
	.uaword	0x3da
	.uaword	0x79f
	.uleb128 0x14
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.uaword	.LVL81
	.uaword	0xab1
	.uaword	0x7c5
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL82
	.uaword	0xa5d
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x272
	.uleb128 0x17
	.byte	0x1
	.string	"actSHAFinalize"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c9
	.uleb128 0xc
	.string	"info"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x63c
	.uaword	.LLST21
	.uleb128 0xc
	.string	"hash"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x7d6
	.uaword	.LLST22
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x5f2
	.uaword	.LLST23
	.uleb128 0x1a
	.string	"tempBuffer"
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x7d6
	.byte	0x1
	.byte	0x6c
	.uleb128 0xd
	.string	"digest"
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x5ea
	.uaword	.LLST24
	.uleb128 0x1a
	.string	"low_bitcount"
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x28d
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.string	"hi_bitcount"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x28d
	.byte	0x1
	.byte	0x5a
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x29b
	.uaword	.LLST25
	.uleb128 0x1b
	.string	"pad_len"
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x29b
	.byte	0x38
	.uleb128 0x13
	.uaword	.LVL93
	.uaword	0xa5d
	.uaword	0x8c0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL95
	.uaword	0xae4
	.uaword	0x8e5
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8
	.byte	0x3f
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.uaword	.LVL96
	.uaword	0x3da
	.uaword	0x905
	.uleb128 0x14
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL97
	.uaword	0xae4
	.uaword	0x924
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL98
	.uaword	0xb0e
	.uaword	0x93f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 88
	.byte	0
	.uleb128 0x13
	.uaword	.LVL99
	.uaword	0xb0e
	.uaword	0x95a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 92
	.byte	0
	.uleb128 0x13
	.uaword	.LVL100
	.uaword	0x3da
	.uaword	0x97a
	.uleb128 0x14
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL101
	.uaword	0xb2f
	.uaword	0x999
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL102
	.uaword	0xae4
	.uaword	0x9b8
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL103
	.uaword	0xa5d
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"actSHAGetDigest"
	.byte	0x1
	.uahalf	0x216
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa52
	.uleb128 0xc
	.string	"info"
	.byte	0x1
	.uahalf	0x217
	.uaword	0xa52
	.uaword	.LLST26
	.uleb128 0xc
	.string	"hash"
	.byte	0x1
	.uahalf	0x218
	.uaword	0x7d6
	.uaword	.LLST27
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x219
	.uaword	0x5f2
	.uaword	.LLST28
	.uleb128 0x13
	.uaword	.LVL107
	.uaword	0xb2f
	.uaword	0xa41
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.uaword	.LVL108
	.uaword	0xa5d
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa58
	.uleb128 0x5
	.uaword	0x35b
	.uleb128 0x1d
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xa88
	.uleb128 0x1e
	.uaword	0x5f2
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actCpyBEtoU32"
	.byte	0x6
	.uahalf	0x1e1
	.byte	0x1
	.byte	0x1
	.uaword	0xab1
	.uleb128 0x1e
	.uaword	0x5ea
	.uleb128 0x1e
	.uaword	0x2b0
	.uleb128 0x1e
	.uaword	0x3d5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x5
	.uahalf	0x445
	.byte	0x1
	.byte	0x1
	.uaword	0xadb
	.uleb128 0x1e
	.uaword	0xadb
	.uleb128 0x1e
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	0x370
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0xae3
	.uleb128 0x21
	.uleb128 0x1f
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x5
	.uahalf	0x431
	.byte	0x1
	.byte	0x1
	.uaword	0xb0e
	.uleb128 0x1e
	.uaword	0xadb
	.uleb128 0x1e
	.uaword	0x169
	.uleb128 0x1e
	.uaword	0x370
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actU32toBE"
	.byte	0x6
	.uahalf	0x1c1
	.byte	0x1
	.byte	0x1
	.uaword	0xb2f
	.uleb128 0x1e
	.uaword	0x7d6
	.uleb128 0x1e
	.uaword	0x3d5
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actCpyU32toBE"
	.byte	0x6
	.uahalf	0x209
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x7d6
	.uleb128 0x1e
	.uaword	0x3cf
	.uleb128 0x1e
	.uaword	0x3d5
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LFE16
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
	.uaword	.LVL2
	.uahalf	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0x17
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL13-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL38
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL48
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL59
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL29
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL49
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL60
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL23
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL39
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL64
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL29
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL49
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL60
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL38
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL48
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL59
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL28
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL59
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL68
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL70
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL74-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL70
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL70
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL74-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL78
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL78
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL87
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL87
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL93-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL87
	.uaword	.LVL93-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL93-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL88
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL105
	.uaword	.LVL107-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL107-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL106
	.uaword	.LVL107-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL107-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL104
	.uaword	.LVL107-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL107-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"watchdog"
	.extern	actCpyU32toBE,STT_FUNC,0
	.extern	actU32toBE,STT_FUNC,0
	.extern	VStdLib_MemSet,STT_FUNC,0
	.extern	VStdLib_MemCpy,STT_FUNC,0
	.extern	actCpyBEtoU32,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
