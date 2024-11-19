	.file	"fbl_nvpattern.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblNvPatternGetPatternItemState,"ax",@progbits
	.align 1
	.type	FblNvPatternGetPatternItemState, @function
FblNvPatternGetPatternItemState:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_nvpattern.c"
	.loc 1 221 0
.LVL0:
	.loc 1 233 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
	movh.a	%a15, hi:memDrvLst
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:memDrvLst
	madd	%d3, %d2, %d15, 28
	mov.a	%a15, %d3
	ld.bu	%d11, [%a15] 22
.LVL1:
	.loc 1 321 0
	mov	%d2, 0
	.loc 1 238 0
	jz	%d5, .L2
	mov.d	%d9, %a4
	mov.a	%a14, %d5
	mov.a	%a13, %d4
	mov	%d10, %d5
	mov	%d13, 0
	mov.a	%a12, 0
	mov	%d12, 0
	.loc 1 251 0
	movh.a	%a15, hi:pageBuffer+4
	lea	%a15, [%a15] lo:pageBuffer+4
	.loc 1 281 0
	movh	%d14, hi:pageBuffer
	addi	%d14, %d14, lo:pageBuffer
.LVL2:
.L12:
	min.u	%d8, %d10, 32
.LVL3:
	.loc 1 251 0
	mov.aa	%a4, %a15
	mov	%d4, %d8
	mov.d	%d5, %a13
	add	%d5, %d12
	call	MemDriver_RReadSync
.LVL4:
	jz	%d2, .L4
	eq	%d2, %d2, 229
	jnz	%d2, .L4
.LVL5:
	.loc 1 266 0
	mov	%d4, 80
	call	ApplFblFatalError
.LVL6:
	.loc 1 265 0
	mov	%d2, 1
	j	.L11
.LVL7:
.L4:
	.loc 1 274 0 discriminator 1
	mov	%d2, 2
	jz	%d8, .L6
	.loc 1 274 0 is_stmt 0
	mov	%d15, 0
	.loc 1 281 0 is_stmt 1
	nor	%d2, %d15, 0
	mov.a	%a3, %d2
	addsc.a	%a2, %a3, %d8, 0
.LVL8:
.L10:
	.loc 1 277 0
	jz	%d9, .L7
	.loc 1 277 0 is_stmt 0 discriminator 1
	mov.a	%a5, %d14
	addsc.a	%a4, %a5, %d15, 0
	mov.a	%a5, %d9
	addsc.a	%a3, %a5, %d15, 0
	addsc.a	%a3, %a3, %d12, 0
	ld.bu	%d3, [%a4] 4
	ld.bu	%d2, [%a3]0
	jne	%d3, %d2, .L7
	.loc 1 279 0 is_stmt 1
	add.a	%a12, 1
.LVL9:
	j	.L8
.L7:
	.loc 1 281 0
	mov.a	%a4, %d14
	addsc.a	%a3, %a4, %d15, 0
	ld.bu	%d2, [%a3] 4
	jne	%d2, %d11, .L9
	.loc 1 283 0
	add	%d13, 1
.LVL10:
	j	.L8
.L9:
.LVL11:
	.loc 1 289 0
	mov	%d4, 80
	call	ApplFblFatalError
.LVL12:
	mov	%d2, 3
	j	.L6
.LVL13:
.L8:
	.loc 1 274 0
	add	%d15, 1
.LVL14:
	loop	%a2, .L10
	mov	%d2, 2
.LVL15:
.L6:
	.loc 1 300 0
	mov.d	%d3, %a12
	ne	%d15, %d13, 0
	and.ne	%d15, %d3, 0
	jnz	%d15, .L16
.LVL16:
	.loc 1 308 0
	and	%d15, %d2, 253
	jeq	%d15, 1, .L11
.LVL17:
	.loc 1 314 0
	sub	%d10, %d8
.LVL18:
	.loc 1 315 0
	add	%d12, %d8
.LVL19:
	.loc 1 238 0
	jnz	%d10, .L12
	j	.L11
.LVL20:
.L16:
	.loc 1 303 0
	mov	%d2, 3
.LVL21:
.L11:
	.loc 1 323 0
	mov.d	%d15, %a14
	jeq	%d13, %d15, .L17
.LVL22:
	.loc 1 329 0
	ne.a	%d15, %a12, %a14
.LVL23:
	cmovn	%d2, %d15, 4
.LVL24:
	ret
.LVL25:
.L17:
	.loc 1 325 0
	mov	%d2, 2
.LVL26:
.L2:
	.loc 1 337 0
	ret
.LFE15:
	.size	FblNvPatternGetPatternItemState, .-FblNvPatternGetPatternItemState
.section .text.FblNvPatternWritePageAligned,"ax",@progbits
	.align 1
	.type	FblNvPatternWritePageAligned, @function
FblNvPatternWritePageAligned:
.LFB14:
	.loc 1 151 0
.LVL27:
	mov.aa	%a12, %a4
	mov	%d14, %d4
	mov	%d9, %d5
.LVL28:
	.loc 1 160 0
	mov	%d2, 0
	.loc 1 164 0
	jz	%d5, .L21
	mov	%d11, 0
	.loc 1 190 0
	movh	%d12, hi:pageBuffer
	addi	%d12, %d12, lo:pageBuffer
	mov	%d10, 0
	.loc 1 176 0
	movh	%d13, hi:memDrvLst
	addi	%d13, %d13, lo:memDrvLst
.LVL29:
.L27:
	.loc 1 166 0
	call	FblLookForWatchdog
.LVL30:
	.loc 1 169 0
	ge.u	%d15, %d9, 33
	jnz	%d15, .L29
	.loc 1 176 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
	madd	%d2, %d13, %d15, 28
	mov.a	%a15, %d2
	ld.hu	%d15, [%a15] 20
	add	%d4, %d15, -1
	add	%d2, %d4, %d9
	rsub	%d15
	and	%d4, %d2, %d15
.LVL31:
	.loc 1 181 0
	mov	%d8, %d9
	jnz	%d9, .L22
	j	.L30
.LVL32:
.L29:
	.loc 1 172 0
	mov	%d8, 32
	.loc 1 171 0
	mov	%d4, %d8
.L22:
.LVL33:
	.loc 1 183 0 discriminator 3
	mov	%d15, 0
	addi	%d2, %d8, -1
	sel	%d2, %d8, %d2, 0
	mov.a	%a15, %d2
.LVL34:
.L24:
	addsc.a	%a2, %a12, %d15, 0
	addsc.a	%a2, %a2, %d11, 0
	ld.bu	%d2, [%a2]0
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2] 4, %d2
	.loc 1 181 0 discriminator 3
	add	%d15, 1
.LVL35:
	loop	%a15, .L24
	.loc 1 186 0
	ge.u	%d15, %d8, 32
.LVL36:
	jnz	%d15, .L25
	j	.L23
.LVL37:
.L30:
	.loc 1 181 0
	mov	%d8, %d9
.LVL38:
.L23:
	.loc 1 188 0 discriminator 1
	jge.u	%d8, %d4, .L25
	.loc 1 188 0 is_stmt 0
	mov	%d15, %d8
	.loc 1 190 0 is_stmt 1
	nor	%d2, %d8, 0
	mov.a	%a2, %d2
	addsc.a	%a15, %a2, %d4, 0
.LVL39:
.L26:
	.loc 1 190 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d15, 0
	st.b	[%a2] 4, %d10
	.loc 1 188 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL40:
	loop	%a15, .L26
.LVL41:
.L25:
	.loc 1 195 0
	movh.a	%a4, hi:pageBuffer+4
	lea	%a4, [%a4] lo:pageBuffer+4
	add	%d5, %d11, %d14
	call	MemDriver_RWriteSync
.LVL42:
	jnz	%d2, .L31
	.loc 1 202 0
	sub	%d9, %d8
.LVL43:
	.loc 1 203 0
	add	%d11, %d8
.LVL44:
	.loc 1 164 0
	jnz	%d9, .L27
	ret
.L31:
	.loc 1 197 0
	mov	%d2, 1
.LVL45:
.L21:
	.loc 1 207 0
	ret
.LFE14:
	.size	FblNvPatternWritePageAligned, .-FblNvPatternWritePageAligned
.section .text.FblNvPatternGetBaseAddrByBlockDescriptor,"ax",@progbits
	.align 1
	.global	FblNvPatternGetBaseAddrByBlockDescriptor
	.type	FblNvPatternGetBaseAddrByBlockDescriptor, @function
FblNvPatternGetBaseAddrByBlockDescriptor:
.LFB18:
	.loc 1 476 0
.LVL46:
	mov.aa	%a12, %a4
	mov	%d8, %d4
	mov.aa	%a13, %a5
	mov.aa	%a14, %a6
	.loc 1 484 0
	ld.w	%d9, [%a4] 16
	ld.w	%d15, [%a4] 12
	add	%d9, %d15
.LVL47:
	.loc 1 487 0
	addi	%d4, %d9, -1
.LVL48:
	call	FblMemSegmentNrGet
.LVL49:
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d2
	.loc 1 490 0
	jltz	%d2, .L37
	.loc 1 493 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d15, %a15
	addi	%d3, %d15, lo:FlashBlock
	madd	%d15, %d3, %d2, 12
	mov.a	%a15, %d15
	ld.bu	%d2, [%a15] 8
	movh.a	%a15, hi:memDrvLst
	mov.d	%d15, %a15
	addi	%d3, %d15, lo:memDrvLst
	madd	%d15, %d3, %d2, 28
	mov.a	%a15, %d15
	ld.hu	%d2, [%a15] 20
	rsub	%d3, %d2, 0
	and	%d3, %d2
	jeq	%d2, %d3, .L38
	.loc 1 493 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL50:
.L38:
	.loc 1 496 0 is_stmt 1
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	movh.a	%a15, hi:FlashBlock
	mov.d	%d15, %a15
	addi	%d3, %d15, lo:FlashBlock
	madd	%d15, %d3, %d2, 12
	mov.a	%a15, %d15
	ld.bu	%d2, [%a15] 8
	movh.a	%a15, hi:memDrvLst
	mov.d	%d15, %a15
	addi	%d3, %d15, lo:memDrvLst
	madd	%d15, %d3, %d2, 28
	mov.a	%a15, %d15
	ld.hu	%d2, [%a15] 20
	rsub	%d3, %d2, 0
	add	%d2, 3
	and	%d3, %d2
.LVL51:
	.loc 1 504 0
	jge.u	%d8, 4, .L44
	.loc 1 504 0 is_stmt 0 discriminator 1
	mov	%d4, %d8
.LVL52:
	.loc 1 499 0 is_stmt 1 discriminator 1
	mov	%d15, 0
	.loc 1 506 0 discriminator 1
	jnz	%d8, .L39
.LVL53:
	j	.L40
.LVL54:
.L44:
	.loc 1 504 0
	mov	%d4, 2
.L39:
.LVL55:
	.loc 1 511 0 discriminator 3
	sh	%d2, %d3, 1
	mov	%d15, 0
	addi	%d5, %d4, -1
	sel	%d5, %d4, %d5, 0
	mov.a	%a15, %d5
.LVL56:
.L41:
	add	%d15, %d2
.LVL57:
	.loc 1 506 0 discriminator 3
	loop	%a15, .L41
.LVL58:
.L40:
	.loc 1 529 0
	st.w	[%a14]0, %d3
	.loc 1 530 0
	sub	%d15, %d9, %d15
	st.w	[%a13]0, %d15
	.loc 1 533 0
	ld.w	%d2, [%a12] 12
	jge.u	%d15, %d2, .L42
	.loc 1 533 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL59:
.L42:
	.loc 1 536 0 is_stmt 1
	ld.w	%d4, [%a13]0
	call	FblMemSegmentNrGet
.LVL60:
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	jeq	%d15, %d2, .L43
	.loc 1 536 0 is_stmt 0 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL61:
	j	.L43
.L37:
	.loc 1 541 0 is_stmt 1 discriminator 1
	mov	%d4, 80
	call	ApplFblFatalError
.LVL62:
.L43:
	.loc 1 545 0
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	ret
.LFE18:
	.size	FblNvPatternGetBaseAddrByBlockDescriptor, .-FblNvPatternGetBaseAddrByBlockDescriptor
.section .rodata,"a",@progbits
.LC0:
	.byte	115
	.byte	106
	.byte	41
	.byte	62
.LC1:
	.byte	-116
	.byte	-107
	.byte	-42
	.byte	-63
.section .text.FblNvPatternGetPatternState,"ax",@progbits
	.align 1
	.global	FblNvPatternGetPatternState
	.type	FblNvPatternGetPatternState, @function
FblNvPatternGetPatternState:
.LFB16:
	.loc 1 360 0
.LVL63:
	sub.a	%SP, 16
.LCFI0:
	mov.aa	%a12, %a5
	mov.aa	%a15, %a6
	.loc 1 364 0
	lea	%a2, [%SP] 4
	movh.a	%a3, hi:.LC0
	lea	%a3, [%a3] lo:.LC0
		# #chunks=4, chunksize=1, remains=0
	lea	%a5, 4-1
	0:
	ld.bu	%d15, [%a3+]1
	st.b	[%a2+]1, %d15
	loop	%a5, 0b
.LVL64:
	.loc 1 365 0
	mov.aa	%a2, %SP
	movh.a	%a3, hi:.LC1
	lea	%a3, [%a3] lo:.LC1
		# #chunks=4, chunksize=1, remains=0
	lea	%a5, 4-1
	0:
	ld.bu	%d15, [%a3+]1
	st.b	[%a2+]1, %d15
	loop	%a5, 0b
	.loc 1 372 0
	ld.w	%d2, [%a12]0
	st.w	[%SP] 8, %d2
.LVL65:
	.loc 1 375 0
	mov	%d15, -1
	movh.a	%a2, hi:memSegment
	st.h	[%a2] lo:memSegment, %d15
	.loc 1 378 0
	add	%d15, %d4, -1
	and	%d15, 255
	mov	%d2, 0
	mov	%d8, 0
	jge.u	%d15, 2, .L49
	.loc 1 380 0
	lea	%a5, [%SP] 8
	call	FblNvPatternGetBaseAddrByBlockDescriptor
.LVL66:
	movh.a	%a2, hi:memSegment
	st.h	[%a2] lo:memSegment, %d2
	.loc 1 383 0
	ge	%d15, %d2, 0
.LVL67:
	.loc 1 399 0
	mov	%d2, 0
	jz	%d15, .L49
.LVL68:
.L54:
	.loc 1 402 0
	call	FblLookForWatchdog
.LVL69:
	.loc 1 405 0
	ld.w	%d4, [%SP] 8
	mov	%d5, 4
	lea	%a4, [%SP] 4
	call	FblNvPatternGetPatternItemState
.LVL70:
	mov	%d8, %d2
.LVL71:
	.loc 1 406 0
	ld.w	%d4, [%a15]0
	ld.w	%d2, [%SP] 8
.LVL72:
	add	%d4, %d2
	mov	%d5, 4
	mov.aa	%a4, %SP
	call	FblNvPatternGetPatternItemState
.LVL73:
	.loc 1 408 0
	st.b	[%SP] 12, %d8
	st.b	[%SP] 13, %d2
	.loc 1 409 0
	ld.h	%d3, [%SP] 12
	addi	%d3, %d3, -514
	andn	%d3, %d3, ~(-3)
	.loc 1 408 0
	extr.u	%d3, %d3, 0, 16
	jz	%d3, .L49
	.loc 1 416 0
	ld.w	%d4, [%a15]0
	ld.w	%d3, [%SP] 8
	madd	%d3, %d3, %d4, 2
	st.w	[%SP] 8, %d3
	.loc 1 419 0
	add	%d15, -1
.LVL74:
	.loc 1 399 0
	jnz	%d15, .L54
.LVL75:
.L49:
	.loc 1 423 0
	ld.w	%d15, [%SP] 8
	st.w	[%a12]0, %d15
	.loc 1 425 0
	st.b	[%SP] 14, %d8
	st.b	[%SP] 15, %d2
	.loc 1 426 0
	ld.hu	%d2, [%SP] 14
.LVL76:
	ret
.LFE16:
	.size	FblNvPatternGetPatternState, .-FblNvPatternGetPatternState
.section .text.FblNvPatternGetBaseAddr,"ax",@progbits
	.align 1
	.global	FblNvPatternGetBaseAddr
	.type	FblNvPatternGetBaseAddr, @function
FblNvPatternGetBaseAddr:
.LFB17:
	.loc 1 443 0
.LVL77:
	sub.a	%SP, 32
.LCFI1:
	mov	%d15, %d5
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	.loc 1 447 0
	mov.aa	%a4, %SP
.LVL78:
	call	FblLbtGetBlockDescriptorByNr
.LVL79:
	.loc 1 449 0
	jnz	%d2, .L57
	.loc 1 451 0
	mov.aa	%a4, %SP
	mov	%d4, %d15
	mov.aa	%a5, %a12
	mov.aa	%a6, %a15
	call	FblNvPatternGetBaseAddrByBlockDescriptor
.LVL80:
	movh.a	%a15, hi:memSegment
.LVL81:
	st.h	[%a15] lo:memSegment, %d2
	j	.L58
.LVL82:
.L57:
	.loc 1 456 0
	mov	%d15, -1
	movh.a	%a15, hi:memSegment
.LVL83:
	st.h	[%a15] lo:memSegment, %d15
.LVL84:
.L58:
	.loc 1 460 0
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	ret
.LFE17:
	.size	FblNvPatternGetBaseAddr, .-FblNvPatternGetBaseAddr
.section .text.FblNvPatternSetByBlockDescriptor,"ax",@progbits
	.align 1
	.global	FblNvPatternSetByBlockDescriptor
	.type	FblNvPatternSetByBlockDescriptor, @function
FblNvPatternSetByBlockDescriptor:
.LFB20:
	.loc 1 582 0
.LVL85:
	sub.a	%SP, 16
.LCFI2:
	mov.aa	%a12, %a4
	mov	%d8, %d4
	.loc 1 587 0
	lea	%a15, [%SP] 2
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
		# #chunks=4, chunksize=1, remains=0
	lea	%a3, 4-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
.LVL86:
	.loc 1 596 0
	lea	%a5, [%SP] 12
	lea	%a6, [%SP] 8
	call	FblNvPatternGetPatternState
.LVL87:
	.loc 1 599 0
	and	%d15, %d2, 255
	.loc 1 612 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 593 0
	mov	%d3, 516
	ne	%d3, %d2, %d3
	.loc 1 599 0
	jne	%d15, 2, .L61
	.loc 1 602 0
	lea	%a4, [%SP] 2
	ld.w	%d4, [%SP] 12
	mov	%d5, 4
	call	FblNvPatternWritePageAligned
.LVL88:
	.loc 1 593 0
	mov	%d3, 1
	.loc 1 602 0
	jnz	%d2, .L61
	.loc 1 605 0
	mov.aa	%a4, %a12
	mov	%d4, %d8
	lea	%a5, [%SP] 12
	lea	%a6, [%SP] 8
	call	FblNvPatternGetPatternState
.LVL89:
	.loc 1 606 0
	and	%d2, %d2, 255
	.loc 1 593 0
	ne	%d3, %d2, 4
.L61:
.LVL90:
	.loc 1 623 0
	mov	%d2, %d3
	ret
.LFE20:
	.size	FblNvPatternSetByBlockDescriptor, .-FblNvPatternSetByBlockDescriptor
.section .text.FblNvPatternSet,"ax",@progbits
	.align 1
	.global	FblNvPatternSet
	.type	FblNvPatternSet, @function
FblNvPatternSet:
.LFB19:
	.loc 1 557 0
.LVL91:
	sub.a	%SP, 32
.LCFI3:
	mov	%d15, %d4
	.loc 1 561 0
	ld.bu	%d4, [%a4]0
.LVL92:
	mov.aa	%a4, %SP
.LVL93:
	call	FblLbtGetBlockDescriptorByNr
.LVL94:
	.loc 1 563 0
	jnz	%d2, .L64
	.loc 1 565 0
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	FblNvPatternSetByBlockDescriptor
.LVL95:
.L64:
	.loc 1 569 0
	ret
.LFE19:
	.size	FblNvPatternSet, .-FblNvPatternSet
.section .text.FblNvPatternClrByBlockDescriptor,"ax",@progbits
	.align 1
	.global	FblNvPatternClrByBlockDescriptor
	.type	FblNvPatternClrByBlockDescriptor, @function
FblNvPatternClrByBlockDescriptor:
.LFB22:
	.loc 1 660 0
.LVL96:
	sub.a	%SP, 16
.LCFI4:
	.loc 1 665 0
	lea	%a15, [%SP] 2
	movh.a	%a2, hi:.LC1
	lea	%a2, [%a2] lo:.LC1
		# #chunks=4, chunksize=1, remains=0
	lea	%a3, 4-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
	.loc 1 671 0
	lea	%a5, [%SP] 12
	lea	%a6, [%SP] 8
	call	FblNvPatternGetPatternState
.LVL97:
	.loc 1 674 0
	extr.u	%d15, %d2, 0, 16
	mov	%d3, 516
	.loc 1 682 0
	mov	%d2, 0
	.loc 1 674 0
	jne	%d15, %d3, .L66
	.loc 1 677 0
	lea	%a4, [%SP] 2
	ld.w	%d4, [%SP] 8
	ld.w	%d15, [%SP] 12
	add	%d4, %d15
	mov	%d5, 4
	call	FblNvPatternWritePageAligned
.LVL98:
.L66:
	.loc 1 686 0
	ret
.LFE22:
	.size	FblNvPatternClrByBlockDescriptor, .-FblNvPatternClrByBlockDescriptor
.section .text.FblNvPatternClr,"ax",@progbits
	.align 1
	.global	FblNvPatternClr
	.type	FblNvPatternClr, @function
FblNvPatternClr:
.LFB21:
	.loc 1 635 0
.LVL99:
	sub.a	%SP, 32
.LCFI5:
	mov	%d15, %d4
	.loc 1 639 0
	ld.bu	%d4, [%a4]0
.LVL100:
	mov.aa	%a4, %SP
.LVL101:
	call	FblLbtGetBlockDescriptorByNr
.LVL102:
	.loc 1 641 0
	jnz	%d2, .L69
	.loc 1 643 0
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	FblNvPatternClrByBlockDescriptor
.LVL103:
.L69:
	.loc 1 647 0
	ret
.LFE21:
	.size	FblNvPatternClr, .-FblNvPatternClr
.section .text.FblNvPatternGetByBlockDescriptor,"ax",@progbits
	.align 1
	.global	FblNvPatternGetByBlockDescriptor
	.type	FblNvPatternGetByBlockDescriptor, @function
FblNvPatternGetByBlockDescriptor:
.LFB24:
	.loc 1 725 0
.LVL104:
	sub.a	%SP, 16
.LCFI6:
.LVL105:
	.loc 1 735 0
	lea	%a5, [%SP] 12
	lea	%a6, [%SP] 8
	call	FblNvPatternGetPatternState
.LVL106:
	.loc 1 736 0
	extr.u	%d2, %d2, 0, 16
.LVL107:
	.loc 1 742 0
	mov	%d15, 516
	ne	%d2, %d2, %d15
.LVL108:
	ret
.LFE24:
	.size	FblNvPatternGetByBlockDescriptor, .-FblNvPatternGetByBlockDescriptor
.section .text.FblNvPatternGet,"ax",@progbits
	.align 1
	.global	FblNvPatternGet
	.type	FblNvPatternGet, @function
FblNvPatternGet:
.LFB23:
	.loc 1 699 0
.LVL109:
	sub.a	%SP, 32
.LCFI7:
	mov	%d15, %d4
	.loc 1 703 0
	ld.bu	%d4, [%a4]0
.LVL110:
	mov.aa	%a4, %SP
.LVL111:
	call	FblLbtGetBlockDescriptorByNr
.LVL112:
	.loc 1 705 0
	jnz	%d2, .L72
	.loc 1 707 0
	mov.aa	%a4, %SP
	mov	%d4, %d15
	call	FblNvPatternGetByBlockDescriptor
.LVL113:
.L72:
	.loc 1 711 0
	ret
.LFE23:
	.size	FblNvPatternGet, .-FblNvPatternGet
	.local	pageBuffer
.section .bss,"aw",@nobits
	.align 2
	.type		 pageBuffer,@object
	.size		 pageBuffer,36
pageBuffer:
	.space	36
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/Fbl_Lbt.h"
	.file 6 "../../../BSW/Fbl/iotypes.h"
	.file 7 "GenData/Fbl_Fbt.h"
	.file 8 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
	.file 9 "../../../BSW/Fbl/fbl_nvpattern.h"
	.file 10 "../../../BSW/Fbl/fbl_mio.h"
	.file 11 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 12 "Include/bm_ap.h"
	.file 13 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x14ae
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_nvpattern.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x159
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
	.uaword	0x159
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x186
	.uleb128 0x4
	.string	"vsint16"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x179
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1a8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1fb
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x22a
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x22a
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x25d
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x273
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x2c6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cc
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fb
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1fb
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x5
	.byte	0x5f
	.uaword	0x14a
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x5
	.byte	0x60
	.uaword	0x22a
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x5
	.byte	0x61
	.uaword	0x22a
	.uleb128 0x7
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x5
	.byte	0x68
	.uaword	0x41c
	.uleb128 0x8
	.string	"blockNr"
	.byte	0x5
	.byte	0x69
	.uaword	0x2e0
	.byte	0
	.uleb128 0x8
	.string	"mandatoryType"
	.byte	0x5
	.byte	0x6a
	.uaword	0x2f6
	.byte	0x1
	.uleb128 0x8
	.string	"blockIndex"
	.byte	0x5
	.byte	0x6b
	.uaword	0x312
	.byte	0x4
	.uleb128 0x8
	.string	"blockType"
	.byte	0x5
	.byte	0x6c
	.uaword	0x32b
	.byte	0x8
	.uleb128 0x8
	.string	"blockStartAddress"
	.byte	0x5
	.byte	0x6d
	.uaword	0x28c
	.byte	0xc
	.uleb128 0x8
	.string	"blockLength"
	.byte	0x5
	.byte	0x6e
	.uaword	0x2a0
	.byte	0x10
	.uleb128 0x8
	.string	"headerAddress"
	.byte	0x5
	.byte	0x6f
	.uaword	0x28c
	.byte	0x14
	.uleb128 0x8
	.string	"bmHeaderAddress"
	.byte	0x5
	.byte	0x70
	.uaword	0x28c
	.byte	0x18
	.uleb128 0x8
	.string	"verifyOutput"
	.byte	0x5
	.byte	0x71
	.uaword	0x2b3
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x5
	.byte	0x72
	.uaword	0x343
	.uleb128 0x2
	.string	"IO_SizeType"
	.byte	0x6
	.byte	0x42
	.uaword	0x22a
	.uleb128 0x2
	.string	"IO_PositionType"
	.byte	0x6
	.byte	0x43
	.uaword	0x22a
	.uleb128 0x2
	.string	"IO_ErrorType"
	.byte	0x6
	.byte	0x49
	.uaword	0x20a
	.uleb128 0x2
	.string	"IO_MemPtrType"
	.byte	0x6
	.byte	0x4a
	.uaword	0x2ce
	.uleb128 0x7
	.string	"tFlashBlockTag"
	.byte	0xc
	.byte	0x7
	.byte	0x40
	.uaword	0x4c8
	.uleb128 0x8
	.string	"begin"
	.byte	0x7
	.byte	0x41
	.uaword	0x28c
	.byte	0
	.uleb128 0x8
	.string	"end"
	.byte	0x7
	.byte	0x42
	.uaword	0x28c
	.byte	0x4
	.uleb128 0x8
	.string	"device"
	.byte	0x7
	.byte	0x43
	.uaword	0x1fb
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"tFlashBlock"
	.byte	0x7
	.byte	0x44
	.uaword	0x487
	.uleb128 0x2
	.string	"tMemDrvFctInit"
	.byte	0x7
	.byte	0x46
	.uaword	0x4f1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4f7
	.uleb128 0x9
	.byte	0x1
	.uaword	0x45e
	.uaword	0x507
	.uleb128 0xa
	.uaword	0x507
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.string	"tMemDrvFctDeinit"
	.byte	0x7
	.byte	0x47
	.uaword	0x4f1
	.uleb128 0x2
	.string	"tMemDrvFctErase"
	.byte	0x7
	.byte	0x48
	.uaword	0x538
	.uleb128 0x5
	.byte	0x4
	.uaword	0x53e
	.uleb128 0x9
	.byte	0x1
	.uaword	0x45e
	.uaword	0x553
	.uleb128 0xa
	.uaword	0x434
	.uleb128 0xa
	.uaword	0x447
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctWrite"
	.byte	0x7
	.byte	0x49
	.uaword	0x56a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x570
	.uleb128 0x9
	.byte	0x1
	.uaword	0x45e
	.uaword	0x58a
	.uleb128 0xa
	.uaword	0x472
	.uleb128 0xa
	.uaword	0x434
	.uleb128 0xa
	.uaword	0x447
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctRead"
	.byte	0x7
	.byte	0x4a
	.uaword	0x56a
	.uleb128 0x7
	.string	"tMemDrvTag"
	.byte	0x1c
	.byte	0x7
	.byte	0x4c
	.uaword	0x67a
	.uleb128 0x8
	.string	"init"
	.byte	0x7
	.byte	0x4d
	.uaword	0x4db
	.byte	0
	.uleb128 0x8
	.string	"deinit"
	.byte	0x7
	.byte	0x4e
	.uaword	0x509
	.byte	0x4
	.uleb128 0x8
	.string	"erase"
	.byte	0x7
	.byte	0x4f
	.uaword	0x521
	.byte	0x8
	.uleb128 0x8
	.string	"write"
	.byte	0x7
	.byte	0x50
	.uaword	0x553
	.byte	0xc
	.uleb128 0x8
	.string	"read"
	.byte	0x7
	.byte	0x51
	.uaword	0x58a
	.byte	0x10
	.uleb128 0x8
	.string	"segmentSize"
	.byte	0x7
	.byte	0x52
	.uaword	0x20a
	.byte	0x14
	.uleb128 0x8
	.string	"erasedValue"
	.byte	0x7
	.byte	0x53
	.uaword	0x1fb
	.byte	0x16
	.uleb128 0x8
	.string	"initHook"
	.byte	0x7
	.byte	0x54
	.uaword	0x14a
	.byte	0x17
	.uleb128 0x8
	.string	"deinitHook"
	.byte	0x7
	.byte	0x55
	.uaword	0x14a
	.byte	0x18
	.uleb128 0x8
	.string	"eraseHook"
	.byte	0x7
	.byte	0x56
	.uaword	0x14a
	.byte	0x19
	.uleb128 0x8
	.string	"writeHook"
	.byte	0x7
	.byte	0x57
	.uaword	0x14a
	.byte	0x1a
	.uleb128 0x8
	.string	"readHook"
	.byte	0x7
	.byte	0x58
	.uaword	0x14a
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.string	"tMemDrv"
	.byte	0x7
	.byte	0x59
	.uaword	0x5a0
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
	.byte	0x8
	.byte	0xa9
	.uaword	0x756
	.uleb128 0xd
	.string	"kFblNvPatternId_Invalid"
	.sleb128 0
	.uleb128 0xd
	.string	"kFblNvPatternId_PartitionValidity"
	.sleb128 1
	.uleb128 0xd
	.string	"kFblNvPatternId_ApplValidity"
	.sleb128 1
	.uleb128 0xd
	.string	"kFblNvPatternId_ModuleValidity"
	.sleb128 2
	.uleb128 0xd
	.string	"kFblNvPatternId_BlockValidity"
	.sleb128 2
	.uleb128 0xd
	.string	"kFblNvPatternId_Last"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternId"
	.byte	0x8
	.byte	0xbe
	.uaword	0x698
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x4e
	.uaword	0x820
	.uleb128 0xd
	.string	"FBL_NVPATTERN_STATE_NOMEMSEGMENT"
	.sleb128 0
	.uleb128 0xd
	.string	"FBL_NVPATTERN_STATE_READERROR"
	.sleb128 1
	.uleb128 0xd
	.string	"FBL_NVPATTERN_STATE_ERASED"
	.sleb128 2
	.uleb128 0xd
	.string	"FBL_NVPATTERN_STATE_UNEXPECTEDVALUE"
	.sleb128 3
	.uleb128 0xd
	.string	"FBL_NVPATTERN_STATE_EXPECTEDVALUE"
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternItemState"
	.byte	0x9
	.byte	0x54
	.uaword	0x76d
	.uleb128 0xe
	.byte	0x2
	.byte	0x9
	.byte	0x57
	.uaword	0x86d
	.uleb128 0x8
	.string	"markerState"
	.byte	0x9
	.byte	0x59
	.uaword	0x820
	.byte	0
	.uleb128 0x8
	.string	"maskState"
	.byte	0x9
	.byte	0x5a
	.uaword	0x820
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternState"
	.byte	0x9
	.byte	0x5b
	.uaword	0x83e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x88d
	.uleb128 0xf
	.uaword	0x1fb
	.uleb128 0xe
	.byte	0x24
	.byte	0x1
	.byte	0x6f
	.uaword	0x8bb
	.uleb128 0x8
	.string	"alignDummy"
	.byte	0x1
	.byte	0x71
	.uaword	0x22a
	.byte	0
	.uleb128 0x8
	.string	"data"
	.byte	0x1
	.byte	0x72
	.uaword	0x8bb
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	0x1fb
	.uaword	0x8cb
	.uleb128 0x11
	.uaword	0x2d4
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternAlignedBuffer"
	.byte	0x1
	.byte	0x73
	.uaword	0x892
	.uleb128 0x12
	.string	"FblNvPatternGetPatternItemState"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	0x820
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa5d
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdc
	.uaword	0x447
	.uaword	.LLST0
	.uleb128 0x14
	.string	"length"
	.byte	0x1
	.byte	0xdc
	.uaword	0x434
	.uaword	.LLST1
	.uleb128 0x14
	.string	"compareValue"
	.byte	0x1
	.byte	0xdc
	.uaword	0x887
	.uaword	.LLST2
	.uleb128 0x15
	.string	"itemState"
	.byte	0x1
	.byte	0xde
	.uaword	0x820
	.uaword	.LLST3
	.uleb128 0x15
	.string	"memErasedValue"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1fb
	.uaword	.LLST4
	.uleb128 0x15
	.string	"currentReadLength"
	.byte	0x1
	.byte	0xe0
	.uaword	0x434
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe1
	.uaword	0x434
	.uaword	.LLST6
	.uleb128 0x15
	.string	"readOffset"
	.byte	0x1
	.byte	0xe2
	.uaword	0x447
	.uaword	.LLST7
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.uaword	0x22a
	.uaword	.LLST8
	.uleb128 0x15
	.string	"countExpectedValue"
	.byte	0x1
	.byte	0xe4
	.uaword	0x22a
	.uaword	.LLST9
	.uleb128 0x15
	.string	"countErasedValue"
	.byte	0x1
	.byte	0xe5
	.uaword	0x22a
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	.LVL4
	.uaword	0x13aa
	.uaword	0xa38
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL6
	.uaword	0x13dc
	.uaword	0xa4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x13dc
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"FblNvPatternWritePageAligned"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb68
	.uleb128 0x14
	.string	"pSrcBuffer"
	.byte	0x1
	.byte	0x96
	.uaword	0x887
	.uaword	.LLST11
	.uleb128 0x14
	.string	"address"
	.byte	0x1
	.byte	0x96
	.uaword	0x447
	.uaword	.LLST12
	.uleb128 0x14
	.string	"length"
	.byte	0x1
	.byte	0x96
	.uaword	0x434
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0x98
	.uaword	0x24a
	.uaword	.LLST14
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x99
	.uaword	0x434
	.uaword	.LLST15
	.uleb128 0x15
	.string	"writeGranularity"
	.byte	0x1
	.byte	0x9a
	.uaword	0x434
	.uaword	.LLST16
	.uleb128 0x15
	.string	"actualWriteLength"
	.byte	0x1
	.byte	0x9b
	.uaword	0x434
	.uaword	.LLST17
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0x9c
	.uaword	0x434
	.uaword	.LLST18
	.uleb128 0x15
	.string	"offset"
	.byte	0x1
	.byte	0x9d
	.uaword	0x447
	.uaword	.LLST19
	.uleb128 0x1a
	.uaword	.LVL30
	.uaword	0x13fe
	.uleb128 0x19
	.uaword	.LVL42
	.uaword	0x141b
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	pageBuffer+4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternGetBaseAddrByBlockDescriptor"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	0x21a
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcbf
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0xcbf
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x756
	.uaword	.LLST21
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1da
	.uaword	0xcca
	.uaword	.LLST22
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1db
	.uaword	0xcd0
	.uaword	.LLST23
	.uleb128 0x1d
	.string	"lastBlockAddress"
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x447
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x434
	.uaword	.LLST25
	.uleb128 0x1d
	.string	"offsetLength"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x434
	.uaword	.LLST26
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0x22a
	.uaword	.LLST27
	.uleb128 0x1d
	.string	"upperBound"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x22a
	.uaword	.LLST28
	.uleb128 0x17
	.uaword	.LVL49
	.uaword	0x144e
	.uaword	0xc69
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 -1
	.byte	0
	.uleb128 0x17
	.uaword	.LVL50
	.uaword	0x13dc
	.uaword	0xc7d
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.uaword	.LVL59
	.uaword	0x13dc
	.uaword	0xc91
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL60
	.uaword	0x144e
	.uleb128 0x17
	.uaword	.LVL61
	.uaword	0x13dc
	.uaword	0xcae
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.uaword	.LVL62
	.uaword	0x13dc
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcc5
	.uleb128 0xf
	.uaword	0x41c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x447
	.uleb128 0x5
	.byte	0x4
	.uaword	0x434
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternGetPatternState"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	0x86d
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe07
	.uleb128 0x1f
	.string	"pBlockDescriptor"
	.byte	0x1
	.uahalf	0x164
	.uaword	0xcbf
	.uaword	.LLST29
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x165
	.uaword	0x756
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x166
	.uaword	0xcca
	.uaword	.LLST31
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x167
	.uaword	0xcd0
	.uaword	.LLST32
	.uleb128 0x1d
	.string	"multiplicity"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x22a
	.uaword	.LLST33
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x86d
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x447
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x16c
	.uaword	0xe07
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x16d
	.uaword	0xe07
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.uaword	.LVL66
	.uaword	0xb68
	.uaword	0xdcf
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL69
	.uaword	0x13fe
	.uleb128 0x17
	.uaword	.LVL70
	.uaword	0x8ed
	.uaword	0xdf1
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.uaword	.LVL73
	.uaword	0x8ed
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x1fb
	.uaword	0xe17
	.uleb128 0x11
	.uaword	0x2d4
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternGetBaseAddr"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x21a
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xee2
	.uleb128 0x1f
	.string	"blockNr"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x1fb
	.uaword	.LLST35
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x756
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0xcca
	.uaword	.LLST37
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0xcd0
	.uaword	.LLST38
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x24a
	.uaword	.LLST39
	.uleb128 0x17
	.uaword	.LVL79
	.uaword	0x1475
	.uaword	0xebf
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL80
	.uaword	0xb68
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternSetByBlockDescriptor"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfee
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x244
	.uaword	0xcbf
	.uaword	.LLST40
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x245
	.uaword	0x756
	.uaword	.LLST41
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x247
	.uaword	0x447
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x248
	.uaword	0x434
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x249
	.uaword	0x24a
	.uaword	.LLST42
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x86d
	.byte	0x6
	.byte	0x91
	.sleb128 -10
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x24b
	.uaword	0xe07
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x17
	.uaword	.LVL87
	.uaword	0xcd6
	.uaword	0xfb2
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL88
	.uaword	0xa5d
	.uaword	0xfcb
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x19
	.uaword	.LVL89
	.uaword	0xcd6
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternSet"
	.byte	0x1
	.uahalf	0x22c
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1081
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22c
	.uaword	0xcbf
	.uaword	.LLST43
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x756
	.uaword	.LLST44
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x24a
	.uaword	.LLST45
	.uleb128 0x17
	.uaword	.LVL94
	.uaword	0x1475
	.uaword	0x106a
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL95
	.uaword	0xee2
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternClrByBlockDescriptor"
	.byte	0x1
	.uahalf	0x292
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x115c
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x292
	.uaword	0xcbf
	.uaword	.LLST46
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x293
	.uaword	0x756
	.uaword	.LLST47
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x295
	.uaword	0x24a
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x296
	.uaword	0x447
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x297
	.uaword	0x434
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x298
	.uaword	0x86d
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x299
	.uaword	0xe07
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x17
	.uaword	.LVL97
	.uaword	0xcd6
	.uaword	0x1146
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x19
	.uaword	.LVL98
	.uaword	0xa5d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternClr"
	.byte	0x1
	.uahalf	0x27a
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11ef
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x27a
	.uaword	0xcbf
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x756
	.uaword	.LLST49
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x27d
	.uaword	0x24a
	.uaword	.LLST50
	.uleb128 0x17
	.uaword	.LVL102
	.uaword	0x1475
	.uaword	0x11d8
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL103
	.uaword	0x1081
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternGetByBlockDescriptor"
	.byte	0x1
	.uahalf	0x2d3
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12a4
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2d3
	.uaword	0xcbf
	.uaword	.LLST51
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x756
	.uaword	.LLST52
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2d6
	.uaword	0x447
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2d7
	.uaword	0x434
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x86d
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2d9
	.uaword	0x24a
	.uaword	.LLST53
	.uleb128 0x19
	.uaword	.LVL106
	.uaword	0xcd6
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FblNvPatternGet"
	.byte	0x1
	.uahalf	0x2ba
	.byte	0x1
	.uaword	0x24a
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1337
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0xcbf
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0x756
	.uaword	.LLST55
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0x24a
	.uaword	.LLST56
	.uleb128 0x17
	.uaword	.LVL112
	.uaword	0x1475
	.uaword	0x1320
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL113
	.uaword	0x11ef
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"pageBuffer"
	.byte	0x1
	.byte	0x7b
	.uaword	0x8cb
	.byte	0x5
	.byte	0x3
	.uaword	pageBuffer
	.uleb128 0x10
	.uaword	0x4c8
	.uaword	0x135a
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"FlashBlock"
	.byte	0x7
	.byte	0x5d
	.uaword	0x136e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x134f
	.uleb128 0x10
	.uaword	0x67a
	.uaword	0x137e
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"memDrvLst"
	.byte	0x7
	.byte	0x5e
	.uaword	0x1391
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1373
	.uleb128 0x23
	.string	"memSegment"
	.byte	0xa
	.byte	0x8b
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"MemDriver_RReadSync"
	.byte	0xa
	.byte	0x75
	.byte	0x1
	.uaword	0x45e
	.byte	0x1
	.uaword	0x13dc
	.uleb128 0xa
	.uaword	0x472
	.uleb128 0xa
	.uaword	0x434
	.uleb128 0xa
	.uaword	0x447
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0xc
	.byte	0xa8
	.byte	0x1
	.byte	0x1
	.uaword	0x13fe
	.uleb128 0xa
	.uaword	0x1fb
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0xd
	.byte	0x6c
	.byte	0x1
	.uaword	0x1fb
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"MemDriver_RWriteSync"
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.uaword	0x45e
	.byte	0x1
	.uaword	0x144e
	.uleb128 0xa
	.uaword	0x472
	.uleb128 0xa
	.uaword	0x434
	.uleb128 0xa
	.uaword	0x447
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"FblMemSegmentNrGet"
	.byte	0xa
	.byte	0x6b
	.byte	0x1
	.uaword	0x21a
	.byte	0x1
	.uaword	0x1475
	.uleb128 0xa
	.uaword	0x28c
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByNr"
	.byte	0xb
	.byte	0x66
	.byte	0x1
	.uaword	0x24a
	.byte	0x1
	.uaword	0x14ab
	.uleb128 0xa
	.uaword	0x2e0
	.uleb128 0xa
	.uaword	0x14ab
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x41c
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL26
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
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
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
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL26
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x73
	.sleb128 22
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL33
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL38
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL49-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1
	.uaword	.LFE18
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL63
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL66-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL63
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL64
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL63
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL66-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL67
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL68
	.uaword	.LVL71
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x7
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL76
	.uaword	.LFE16
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL77
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL77
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
.LLST37:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL77
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL79-1
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL83
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL79
	.uaword	.LVL80-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL85
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL87-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL85
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL86
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL93
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL94
	.uaword	.LVL95-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL100
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL102
	.uaword	.LVL103-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL104
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL106-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL104
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0x204
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL111
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL110
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"localLength"
.LASF3:
	.string	"blockDescriptor"
.LASF10:
	.string	"fblMaskValue"
.LASF6:
	.string	"pPatternLength"
.LASF4:
	.string	"patternId"
.LASF7:
	.string	"patternLength"
.LASF2:
	.string	"result"
.LASF9:
	.string	"fblMarkerValue"
.LASF11:
	.string	"localBlockDescriptor"
.LASF0:
	.string	"patternAddress"
.LASF8:
	.string	"patternState"
.LASF5:
	.string	"pPatternAddress"
	.extern	FblLbtGetBlockDescriptorByNr,STT_FUNC,0
	.extern	FblMemSegmentNrGet,STT_FUNC,0
	.extern	MemDriver_RWriteSync,STT_FUNC,0
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.extern	MemDriver_RReadSync,STT_FUNC,0
	.extern	memDrvLst,STT_OBJECT,-1
	.extern	FlashBlock,STT_OBJECT,-1
	.extern	memSegment,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
