	.file	"fbl_mio.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	MemDriver_InitPowerOn
	.type	MemDriver_InitPowerOn, @function
MemDriver_InitPowerOn:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_mio.c"
	.loc 1 110 0
	.loc 1 112 0
	mov	%d15, -1
	movh.a	%a15, hi:memDrvDeviceActive
	st.b	[%a15] lo:memDrvDeviceActive, %d15
	.loc 1 113 0
	mov	%d15, 0
	movh.a	%a15, hi:memDrvFunctionActive
	st.b	[%a15] lo:memDrvFunctionActive, %d15
	.loc 1 115 0
	mov	%d15, -1
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d15
	.loc 1 116 0
	movh.a	%a15, hi:nextValidSegment
	st.h	[%a15] lo:nextValidSegment, %d15
	.loc 1 120 0
	mov	%d15, 0
	movh.a	%a15, hi:cachedSegment
	st.h	[%a15] lo:cachedSegment, %d15
	.loc 1 121 0
	movh.a	%a4, hi:cachedBlock
	lea	%a3, [%a4] lo:cachedBlock
	movh.a	%a2, hi:FlashBlock
	lea	%a15, [%a2] lo:FlashBlock
	ld.w	%d15, [%a2] lo:FlashBlock
	st.w	[%a4] lo:cachedBlock, %d15
	.loc 1 122 0
	ld.w	%d15, [%a15] 4
	st.w	[%a3] 4, %d15
	ret
.LFE14:
	.size	MemDriver_InitPowerOn, .-MemDriver_InitPowerOn
	.align 1
	.global	FblMemSegmentNrGet
	.type	FblMemSegmentNrGet, @function
FblMemSegmentNrGet:
.LFB15:
	.loc 1 134 0
.LVL0:
	.loc 1 143 0
	movh.a	%a15, hi:cachedBlock
	ld.w	%d15, [%a15] lo:cachedBlock
	jlt.u	%d4, %d15, .L3
	.loc 1 144 0
	lea	%a15, [%a15] lo:cachedBlock
	ld.w	%d15, [%a15] 4
	jlt.u	%d15, %d4, .L3
	.loc 1 148 0
	movh.a	%a15, hi:cachedSegment
	ld.h	%d2, [%a15] lo:cachedSegment
.LVL1:
	ret
.LVL2:
.L3:
	.loc 1 153 0
	mov	%d15, 0
	movh.a	%a15, hi:nextValidSegment
	st.h	[%a15] lo:nextValidSegment, %d15
	.loc 1 154 0
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d15, [%a15] lo:kNrOfFlashBlock
	mov	%d10, %d15
	jlez	%d15, .L9
	mov	%d8, %d4
	mov	%d2, 0
	.loc 1 163 0
	movh.a	%a15, hi:nextValidSegment
	lea	%a15, [%a15] lo:nextValidSegment
	movh	%d9, hi:FlashBlock
	addi	%d9, %d9, lo:FlashBlock
	.loc 1 154 0
	movh.a	%a12, hi:kNrOfFlashBlock
	lea	%a12, [%a12] lo:kNrOfFlashBlock
.LVL3:
.L8:
	.loc 1 157 0
	and	%d2, %d2, 15
	jnz	%d2, .L6
	.loc 1 159 0
	call	FblRealTimeSupport
.LVL4:
.L6:
	.loc 1 163 0
	ld.h	%d2, [%a15]0
	madd	%d3, %d9, %d2, 12
	mov.a	%a2, %d3
	ld.w	%d3, [%a2] 4
	jge.u	%d3, %d8, .L7
	.loc 1 168 0
	add	%d2, 1
	extr	%d2, %d2, 0, 16
	st.h	[%a15]0, %d2
	.loc 1 154 0
	ld.bu	%d15, [%a12]0
	mov	%d10, %d15
	jlt	%d2, %d15, .L8
	j	.L9
.L7:
	.loc 1 172 0
	mov	%d3, %d2
	jge	%d2, %d10, .L9
	.loc 1 174 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d4, %a15
	addi	%d15, %d4, lo:FlashBlock
	madd	%d4, %d15, %d2, 12
	mov.a	%a15, %d4
	ld.w	%d15, [%a15]0
	jlt.u	%d8, %d15, .L10
.LVL5:
	.loc 1 180 0
	movh.a	%a15, hi:cachedBlock
	lea	%a2, [%a15] lo:cachedBlock
	st.w	[%a15] lo:cachedBlock, %d15
	.loc 1 181 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d4, %a15
	addi	%d15, %d4, lo:FlashBlock
	madd	%d4, %d15, %d2, 12
	mov.a	%a15, %d4
	ld.w	%d15, [%a15] 4
	st.w	[%a2] 4, %d15
	j	.L11
.LVL6:
.L10:
	.loc 1 189 0
	jgtz	%d2, .L12
	.loc 1 192 0
	mov	%d2, 0
	movh.a	%a15, hi:cachedBlock
	st.w	[%a15] lo:cachedBlock, %d2
	j	.L13
.L12:
	.loc 1 197 0
	add	%d3, -1
	movh.a	%a15, hi:FlashBlock
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:FlashBlock
	madd	%d4, %d2, %d3, 12
	mov.a	%a15, %d4
	ld.w	%d2, [%a15] 4
	add	%d2, 1
	movh.a	%a15, hi:cachedBlock
	st.w	[%a15] lo:cachedBlock, %d2
.L13:
	.loc 1 200 0
	add	%d15, -1
	movh.a	%a15, hi:cachedBlock
	lea	%a15, [%a15] lo:cachedBlock
	st.w	[%a15] 4, %d15
	.loc 1 186 0
	mov	%d2, -1
	j	.L11
.LVL7:
.L9:
	.loc 1 210 0
	movh.a	%a3, hi:cachedBlock
	lea	%a2, [%a3] lo:cachedBlock
	add	%d15, -1
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d4, %d2, %d15, 12
	mov.a	%a15, %d4
	ld.w	%d15, [%a15] 4
	add	%d15, 1
	st.w	[%a3] lo:cachedBlock, %d15
	.loc 1 212 0
	mov	%d15, -1
	st.w	[%a2] 4, %d15
	.loc 1 206 0
	mov	%d2, -1
.LVL8:
.L11:
	.loc 1 216 0
	movh.a	%a15, hi:cachedSegment
	st.h	[%a15] lo:cachedSegment, %d2
	.loc 1 244 0
	ret
.LFE15:
	.size	FblMemSegmentNrGet, .-FblMemSegmentNrGet
	.align 1
	.global	FblMemGetDeviceByAddr
	.type	FblMemGetDeviceByAddr, @function
FblMemGetDeviceByAddr:
.LFB16:
	.loc 1 257 0
.LVL9:
	mov.aa	%a12, %a4
.LVL10:
	.loc 1 263 0
	call	FblMemSegmentNrGet
.LVL11:
	mov	%d15, %d2
.LVL12:
	.loc 1 261 0
	mov	%d2, 1
.LVL13:
	.loc 1 264 0
	jltz	%d15, .L16
	.loc 1 266 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
.LVL14:
	st.b	[%a12]0, %d15
.LVL15:
	.loc 1 267 0
	mov	%d2, 0
.LVL16:
.L16:
	.loc 1 271 0
	ret
.LFE16:
	.size	FblMemGetDeviceByAddr, .-FblMemGetDeviceByAddr
	.align 1
	.global	FblMemGetDeviceByRange
	.type	FblMemGetDeviceByRange, @function
FblMemGetDeviceByRange:
.LFB17:
	.loc 1 286 0
.LVL17:
	mov	%d9, %d4
	mov	%d8, %d5
	mov.aa	%a12, %a4
.LVL18:
	.loc 1 295 0
	jnz	%d5, .L19
	.loc 1 298 0
	call	FblMemGetDeviceByAddr
.LVL19:
	ret
.LVL20:
.L19:
	.loc 1 302 0
	call	FblMemSegmentNrGet
.LVL21:
	mov	%d15, %d2
.LVL22:
	addi	%d4, %d9, -1
	.loc 1 303 0
	add	%d4, %d8
	call	FblMemSegmentNrGet
.LVL23:
	mov	%d3, %d2
.LVL24:
	.loc 1 306 0
	nand.t	%d4, %d2,15, %d2,15
	.loc 1 305 0
	nand.t	%d2, %d15,15, %d15,15
.LVL25:
	and	%d4, %d2
	mov	%d2, 1
	jz	%d4, .L28
.LVL26:
	.loc 1 311 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:FlashBlock
	madd	%d6, %d2, %d15, 12
	mov.a	%a15, %d6
	ld.bu	%d5, [%a15] 8
.LVL27:
	.loc 1 314 0
	extr.u	%d15, %d15, 0, 16
	add	%d2, %d15, 1
	extr	%d2, %d2, 0, 16
.LVL28:
	jlt	%d3, %d2, .L25
	.loc 1 316 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d7, %a15
	addi	%d4, %d7, lo:FlashBlock
	madd	%d6, %d4, %d2, 12
.LVL29:
	mov.a	%a15, %d6
	ld.bu	%d4, [%a15] 8
	mov	%d2, 1
.LVL30:
	jne	%d4, %d5, .L28
	mov	%d5, 0
.LVL31:
	add	%d2, %d15, 2
	addi	%d6, %d7, lo:FlashBlock
	j	.L22
.LVL32:
.L23:
	add	%d5, 1
	madd	%d7, %d6, %d15, 12
	mov.a	%a15, %d7
	ld.bu	%d15, [%a15] 8
.LVL33:
	jne	%d15, %d4, .L27
.LVL34:
.L22:
	add	%d15, %d2, %d5
	extr	%d15, %d15, 0, 16
.LVL35:
	.loc 1 314 0 discriminator 2
	jge	%d3, %d15, .L23
	j	.L21
.LVL36:
.L27:
	mov	%d2, 1
.LVL37:
	ret
.LVL38:
.L25:
	.loc 1 311 0
	mov	%d4, %d5
.LVL39:
.L21:
	.loc 1 327 0
	st.b	[%a12]0, %d4
	mov	%d2, 0
.LVL40:
.L28:
	.loc 1 332 0
	ret
.LFE17:
	.size	FblMemGetDeviceByRange, .-FblMemGetDeviceByRange
	.align 1
	.global	MemDriver_Begin
	.type	MemDriver_Begin, @function
MemDriver_Begin:
.LFB20:
	.loc 1 495 0
.LVL41:
	.loc 1 504 0
	movh.a	%a15, hi:memDrvDeviceActive
	st.b	[%a15] lo:memDrvDeviceActive, %d4
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	st.b	[%a15] lo:memDrvFunctionActive, %d5
	.loc 1 509 0
	jne	%d6, 1, .L29
	.loc 1 511 0
	call	ApplFblPreMemDriver
.LVL42:
.L29:
	ret
.LFE20:
	.size	MemDriver_Begin, .-MemDriver_Begin
	.align 1
	.global	MemDriver_End
	.type	MemDriver_End, @function
MemDriver_End:
.LFB21:
	.loc 1 523 0
.LVL43:
	.loc 1 534 0
	jne	%d4, 1, .L32
	.loc 1 536 0
	movh.a	%a15, hi:memDrvDeviceActive
	ld.bu	%d4, [%a15] lo:memDrvDeviceActive
.LVL44:
	movh.a	%a15, hi:memDrvFunctionActive
	ld.bu	%d5, [%a15] lo:memDrvFunctionActive
	call	ApplFblPostMemDriver
.LVL45:
.L32:
	.loc 1 540 0
	mov	%d15, -1
	movh.a	%a15, hi:memDrvDeviceActive
	st.b	[%a15] lo:memDrvDeviceActive, %d15
	.loc 1 541 0
	mov	%d15, 0
	movh.a	%a15, hi:memDrvFunctionActive
	st.b	[%a15] lo:memDrvFunctionActive, %d15
	ret
.LFE21:
	.size	MemDriver_End, .-MemDriver_End
	.align 1
	.global	MemDriver_InitSync
	.type	MemDriver_InitSync, @function
MemDriver_InitSync:
.LFB22:
	.loc 1 553 0
.LVL46:
	.loc 1 559 0
	movh.a	%a15, hi:kNrOfMemDrv
	ld.bu	%d15, [%a15] lo:kNrOfMemDrv
	.loc 1 555 0
	mov	%d8, 0
	.loc 1 559 0
	jz	%d15, .L34
	mov.aa	%a13, %a4
	mov	%d15, 0
	.loc 1 561 0
	movh	%d9, hi:memDrvLst
	addi	%d9, %d9, lo:memDrvLst
	.loc 1 559 0
	lea	%a12, [%a15] lo:kNrOfMemDrv
.LVL47:
.L35:
	and	%d11, %d15, 255
.LVL48:
	and	%d2, %d15, 255
	.loc 1 561 0
	madd	%d3, %d9, %d2, 28
	mov.a	%a15, %d3
	ld.bu	%d10, [%a15] 23
	mov	%d4, %d11
	mov	%d5, 1
	mov	%d6, %d10
	call	MemDriver_Begin
.LVL49:
	.loc 1 562 0
	ld.a	%a15, [%a15]0
	mov.aa	%a4, %a13
	calli	%a15
.LVL50:
	mov	%d8, %d2
.LVL51:
	.loc 1 563 0
	mov	%d4, %d10
	call	MemDriver_End
.LVL52:
	.loc 1 565 0
	jnz	%d8, .L34
.LVL53:
	add	%d15, 1
	addi	%d4, %d11, 1
	.loc 1 559 0 discriminator 2
	ld.bu	%d2, [%a12]0
	and	%d4, %d4, 255
	jlt.u	%d4, %d2, .L35
.LVL54:
.L34:
	.loc 1 574 0
	mov	%d2, %d8
	ret
.LFE22:
	.size	MemDriver_InitSync, .-MemDriver_InitSync
	.align 1
	.global	MemDriver_DeinitSync
	.type	MemDriver_DeinitSync, @function
MemDriver_DeinitSync:
.LFB23:
	.loc 1 585 0
.LVL55:
	.loc 1 589 0
	movh.a	%a15, hi:kNrOfMemDrv
	ld.bu	%d15, [%a15] lo:kNrOfMemDrv
	.loc 1 587 0
	mov	%d8, 0
	.loc 1 589 0
	jz	%d15, .L39
	mov.aa	%a13, %a4
	mov	%d15, 0
	.loc 1 591 0
	movh	%d9, hi:memDrvLst
	addi	%d9, %d9, lo:memDrvLst
	.loc 1 589 0
	lea	%a12, [%a15] lo:kNrOfMemDrv
.LVL56:
.L40:
	and	%d11, %d15, 255
.LVL57:
	and	%d2, %d15, 255
	.loc 1 591 0
	madd	%d3, %d9, %d2, 28
	mov.a	%a15, %d3
	ld.bu	%d10, [%a15] 24
	mov	%d4, %d11
	mov	%d5, 2
	mov	%d6, %d10
	call	MemDriver_Begin
.LVL58:
	.loc 1 592 0
	ld.a	%a15, [%a15] 4
	mov.aa	%a4, %a13
	calli	%a15
.LVL59:
	mov	%d8, %d2
.LVL60:
	.loc 1 593 0
	mov	%d4, %d10
	call	MemDriver_End
.LVL61:
	.loc 1 594 0
	jnz	%d8, .L39
.LVL62:
	add	%d15, 1
	addi	%d4, %d11, 1
	.loc 1 589 0 discriminator 2
	ld.bu	%d2, [%a12]0
	and	%d4, %d4, 255
	jlt.u	%d4, %d2, .L40
.LVL63:
.L39:
	.loc 1 600 0
	mov	%d2, %d8
	ret
.LFE23:
	.size	MemDriver_DeinitSync, .-MemDriver_DeinitSync
	.align 1
	.global	MemDriver_RReadSync
	.type	MemDriver_RReadSync, @function
MemDriver_RReadSync:
.LFB24:
	.loc 1 614 0
.LVL64:
	.loc 1 619 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 617 0
	mov	%d9, 1
	.loc 1 619 0
	jltz	%d15, .L44
	.loc 1 619 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L44
	mov	%d9, %d5
	mov	%d10, %d4
	mov.aa	%a12, %a4
	.loc 1 621 0 is_stmt 1
	movh	%d8, hi:FlashBlock
	addi	%d8, %d8, lo:FlashBlock
	madd	%d2, %d8, %d15, 12
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 8
.LVL65:
	movh	%d15, hi:memDrvLst
	addi	%d15, %d15, lo:memDrvLst
	madd	%d3, %d15, %d4, 28
	mov.a	%a15, %d3
	mov	%d5, 6
.LVL66:
	ld.bu	%d6, [%a15] 27
	call	MemDriver_Begin
.LVL67:
	.loc 1 622 0
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	madd	%d3, %d8, %d2, 12
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 8
	madd	%d3, %d15, %d2, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 16
	mov.aa	%a4, %a12
	mov	%d4, %d10
	mov	%d5, %d9
	calli	%a2
.LVL68:
	mov	%d9, %d2
.LVL69:
	.loc 1 623 0
	ld.h	%d3, [%a15] lo:memSegment
	madd	%d2, %d8, %d3, 12
.LVL70:
	mov.a	%a15, %d2
	ld.bu	%d3, [%a15] 8
	madd	%d2, %d15, %d3, 28
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 27
	call	MemDriver_End
.LVL71:
.L44:
	.loc 1 627 0
	mov	%d2, %d9
	ret
.LFE24:
	.size	MemDriver_RReadSync, .-MemDriver_RReadSync
	.align 1
	.global	FblReadPromExt
	.type	FblReadPromExt, @function
FblReadPromExt:
.LFB19:
	.loc 1 369 0
.LVL72:
	mov	%d9, %d4
	mov.aa	%a13, %a4
	mov	%d8, %d5
	mov.d	%d14, %a5
.LVL73:
	.loc 1 385 0
	call	FblRealTimeSupport
.LVL74:
	.loc 1 388 0
	mov	%d4, %d9
	call	FblMemSegmentNrGet
.LVL75:
	mov	%d15, %d2
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d2
	.loc 1 390 0
	jgez	%d2, .L48
	.loc 1 398 0
	movh.a	%a15, hi:nextValidSegment
	ld.h	%d15, [%a15] lo:nextValidSegment
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d2, [%a15] lo:kNrOfFlashBlock
	.loc 1 478 0
	mov	%d12, 0
	.loc 1 383 0
	mov	%d13, 0
	.loc 1 398 0
	jge	%d15, %d2, .L49
	.loc 1 402 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d2, [%a15]0
	.loc 1 401 0
	jge.u	%d9, %d2, .L49
	.loc 1 403 0
	sub	%d3, %d2, %d9
	.loc 1 402 0
	jge.u	%d3, %d8, .L49
	.loc 1 407 0
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d15
	sub	%d8, %d2
.LVL76:
	.loc 1 410 0
	add	%d8, %d9
.LVL77:
	.loc 1 421 0
	jltz	%d15, .L49
	.loc 1 412 0
	mov	%d9, %d2
.LVL78:
.L48:
	.loc 1 423 0
	mov	%d12, 0
	mov	%d13, 0
	jz	%d8, .L49
	.loc 1 426 0
	movh	%d10, hi:FlashBlock
	addi	%d10, %d10, lo:FlashBlock
	movh.a	%a12, hi:memSegment
	lea	%a12, [%a12] lo:memSegment
	.loc 1 432 0
	movh.a	%a14, hi:kNrOfFlashBlock
	lea	%a14, [%a14] lo:kNrOfFlashBlock
.LVL79:
.L54:
	.loc 1 426 0
	add	%d5, %d9, %d8
	ld.h	%d3, [%a12]0
	madd	%d2, %d10, %d3, 12
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
	addi	%d3, %d5, -1
	jge.u	%d4, %d3, .L50
	add	%d4, 1
	.loc 1 428 0
	sub	%d11, %d4, %d9
.LVL80:
	.loc 1 430 0
	add	%d15, 1
.LVL81:
	extr	%d15, %d15, 0, 16
.LVL82:
	.loc 1 432 0
	ld.bu	%d3, [%a14]0
	jge	%d15, %d3, .L62
	.loc 1 434 0
	madd	%d3, %d10, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d2, [%a15]0
	sub	%d3, %d2, %d9
	.loc 1 435 0
	jge.u	%d3, %d8, .L63
	.loc 1 435 0 is_stmt 0 discriminator 1
	sub	%d8, %d5, %d2
.LVL83:
	.loc 1 449 0 is_stmt 1 discriminator 1
	mov.aa	%a4, %a13
	mov	%d4, %d11
	mov	%d5, %d9
	call	MemDriver_RReadSync
.LVL84:
	jz	%d2, .L64
	eq	%d2, %d2, 229
	jz	%d2, .L51
	.loc 1 454 0
	mov	%d13, 229
.LVL85:
.L53:
	.loc 1 458 0
	st.h	[%a12]0, %d15
.LVL86:
	.loc 1 459 0
	addsc.a	%a13, %a13, %d11, 0
.LVL87:
	.loc 1 460 0
	madd	%d2, %d10, %d15, 12
	mov.a	%a15, %d2
.LVL88:
	ld.w	%d9, [%a15]0
	.loc 1 461 0
	add	%d12, %d11
.LVL89:
	.loc 1 473 0
	call	FblRealTimeSupport
.LVL90:
	.loc 1 423 0
	jnz	%d8, .L54
	j	.L49
.LVL91:
.L51:
	.loc 1 473 0
	call	FblRealTimeSupport
.LVL92:
	.loc 1 468 0
	mov	%d13, 1
	j	.L49
.LVL93:
.L64:
	.loc 1 435 0
	mov	%d2, %d8
	.loc 1 428 0
	mov	%d8, %d11
.LVL94:
	j	.L52
.LVL95:
.L66:
	.loc 1 449 0
	mov	%d2, 0
.LVL96:
.L52:
	.loc 1 423 0
	mov	%d11, %d8
	mov	%d8, %d2
.LVL97:
	j	.L53
.LVL98:
.L55:
	.loc 1 458 0
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d15
.LVL99:
	.loc 1 461 0
	add	%d12, %d8
.LVL100:
	.loc 1 473 0
	call	FblRealTimeSupport
.LVL101:
	.loc 1 454 0
	mov	%d13, 229
	j	.L49
.LVL102:
.L62:
	.loc 1 428 0
	mov	%d8, %d11
.LVL103:
	j	.L50
.LVL104:
.L63:
	mov	%d8, %d11
.LVL105:
.L50:
	.loc 1 449 0
	mov.aa	%a4, %a13
	mov	%d4, %d8
	mov	%d5, %d9
	call	MemDriver_RReadSync
.LVL106:
	jz	%d2, .L66
	eq	%d2, %d2, 229
	jnz	%d2, .L55
	j	.L51
.LVL107:
.L49:
	.loc 1 481 0
	mov.a	%a15, %d14
	st.w	[%a15]0, %d12
	.loc 1 484 0
	mov	%d2, %d13
	ret
.LFE19:
	.size	FblReadPromExt, .-FblReadPromExt
	.align 1
	.global	FblReadProm
	.type	FblReadProm, @function
FblReadProm:
.LFB18:
	.loc 1 345 0
.LVL108:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 348 0
	lea	%a5, [%SP] 4
	call	FblReadPromExt
.LVL109:
	.loc 1 351 0
	ld.w	%d2, [%SP] 4
	ret
.LFE18:
	.size	FblReadProm, .-FblReadProm
	.align 1
	.global	MemDriver_RWriteSync
	.type	MemDriver_RWriteSync, @function
MemDriver_RWriteSync:
.LFB25:
	.loc 1 642 0
.LVL110:
	.loc 1 647 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 645 0
	mov	%d9, 1
	.loc 1 647 0
	jltz	%d15, .L71
	.loc 1 647 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L71
	mov	%d9, %d5
	mov	%d10, %d4
	mov.aa	%a12, %a4
	.loc 1 649 0 is_stmt 1
	movh	%d8, hi:FlashBlock
	addi	%d8, %d8, lo:FlashBlock
	madd	%d2, %d8, %d15, 12
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 8
.LVL111:
	movh	%d15, hi:memDrvLst
	addi	%d15, %d15, lo:memDrvLst
	madd	%d3, %d15, %d4, 28
	mov.a	%a15, %d3
	mov	%d5, 3
.LVL112:
	ld.bu	%d6, [%a15] 26
	call	MemDriver_Begin
.LVL113:
	.loc 1 650 0
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	madd	%d3, %d8, %d2, 12
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 8
	madd	%d3, %d15, %d2, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 12
	mov.aa	%a4, %a12
	mov	%d4, %d10
	mov	%d5, %d9
	calli	%a2
.LVL114:
	mov	%d9, %d2
.LVL115:
	.loc 1 651 0
	ld.h	%d3, [%a15] lo:memSegment
	madd	%d2, %d8, %d3, 12
.LVL116:
	mov.a	%a15, %d2
	ld.bu	%d3, [%a15] 8
	madd	%d2, %d15, %d3, 28
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 26
	call	MemDriver_End
.LVL117:
.L71:
	.loc 1 655 0
	mov	%d2, %d9
	ret
.LFE25:
	.size	MemDriver_RWriteSync, .-MemDriver_RWriteSync
	.align 1
	.global	MemDriver_REraseSync
	.type	MemDriver_REraseSync, @function
MemDriver_REraseSync:
.LFB26:
	.loc 1 670 0
.LVL118:
	.loc 1 675 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 673 0
	mov	%d9, 1
	.loc 1 675 0
	jltz	%d15, .L75
	.loc 1 675 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L75
	mov	%d9, %d5
	mov	%d10, %d4
	.loc 1 677 0 is_stmt 1
	movh	%d8, hi:FlashBlock
	addi	%d8, %d8, lo:FlashBlock
	madd	%d2, %d8, %d15, 12
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 8
.LVL119:
	movh	%d15, hi:memDrvLst
	addi	%d15, %d15, lo:memDrvLst
	madd	%d3, %d15, %d4, 28
	mov.a	%a15, %d3
	mov	%d5, 4
.LVL120:
	ld.bu	%d6, [%a15] 25
	call	MemDriver_Begin
.LVL121:
	.loc 1 678 0
	movh.a	%a15, hi:memSegment
	ld.h	%d2, [%a15] lo:memSegment
	madd	%d3, %d8, %d2, 12
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 8
	madd	%d3, %d15, %d2, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 8
	mov	%d4, %d10
	mov	%d5, %d9
	calli	%a2
.LVL122:
	mov	%d9, %d2
.LVL123:
	.loc 1 679 0
	ld.h	%d3, [%a15] lo:memSegment
	madd	%d2, %d8, %d3, 12
.LVL124:
	mov.a	%a15, %d2
	ld.bu	%d3, [%a15] 8
	madd	%d2, %d15, %d3, 28
	mov.a	%a15, %d2
	ld.bu	%d4, [%a15] 25
	call	MemDriver_End
.LVL125:
.L75:
	.loc 1 683 0
	mov	%d2, %d9
	ret
.LFE26:
	.size	MemDriver_REraseSync, .-MemDriver_REraseSync
	.local	nextValidSegment
.section .bss,"aw",@nobits
	.align 1
	.type		 nextValidSegment,@object
	.size		 nextValidSegment,2
nextValidSegment:
	.space	2
	.local	cachedBlock
	.align 2
	.type		 cachedBlock,@object
	.size		 cachedBlock,12
cachedBlock:
	.space	12
	.local	cachedSegment
	.align 1
	.type		 cachedSegment,@object
	.size		 cachedSegment,2
cachedSegment:
	.space	2
	.global	memSegment
	.align 1
	.type	memSegment, @object
	.size	memSegment, 2
memSegment:
	.zero	2
	.global	memDrvFunctionActive
	.type	memDrvFunctionActive, @object
	.size	memDrvFunctionActive, 1
memDrvFunctionActive:
	.zero	1
	.global	memDrvDeviceActive
	.type	memDrvDeviceActive, @object
	.size	memDrvDeviceActive, 1
memDrvDeviceActive:
	.zero	1
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "../../../BSW/Fbl/iotypes.h"
	.file 6 "GenData/Fbl_Fbt.h"
	.file 7 "../../../BSW/Fbl/fbl_diag.h"
	.file 8 "Include/fbl_ap.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xeea
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_mio.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x154
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
	.uaword	0x154
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x181
	.uleb128 0x4
	.string	"vsint16"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x174
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1a3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1f6
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x225
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x225
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x266
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x27c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1f6
	.uleb128 0x2
	.string	"IO_SizeType"
	.byte	0x5
	.byte	0x42
	.uaword	0x225
	.uleb128 0x2
	.string	"IO_PositionType"
	.byte	0x5
	.byte	0x43
	.uaword	0x225
	.uleb128 0x2
	.string	"IO_ErrorType"
	.byte	0x5
	.byte	0x49
	.uaword	0x205
	.uleb128 0x2
	.string	"IO_MemPtrType"
	.byte	0x5
	.byte	0x4a
	.uaword	0x2bc
	.uleb128 0x7
	.string	"tFlashBlockTag"
	.byte	0xc
	.byte	0x6
	.byte	0x40
	.uaword	0x353
	.uleb128 0x8
	.string	"begin"
	.byte	0x6
	.byte	0x41
	.uaword	0x295
	.byte	0
	.uleb128 0x8
	.string	"end"
	.byte	0x6
	.byte	0x42
	.uaword	0x295
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x43
	.uaword	0x1f6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"tFlashBlock"
	.byte	0x6
	.byte	0x44
	.uaword	0x315
	.uleb128 0x2
	.string	"tMemDrvFctInit"
	.byte	0x6
	.byte	0x46
	.uaword	0x37c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x382
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ec
	.uaword	0x392
	.uleb128 0xb
	.uaword	0x245
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctDeinit"
	.byte	0x6
	.byte	0x47
	.uaword	0x37c
	.uleb128 0x2
	.string	"tMemDrvFctErase"
	.byte	0x6
	.byte	0x48
	.uaword	0x3c1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3c7
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ec
	.uaword	0x3dc
	.uleb128 0xb
	.uaword	0x2c2
	.uleb128 0xb
	.uaword	0x2d5
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctWrite"
	.byte	0x6
	.byte	0x49
	.uaword	0x3f3
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3f9
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ec
	.uaword	0x413
	.uleb128 0xb
	.uaword	0x300
	.uleb128 0xb
	.uaword	0x2c2
	.uleb128 0xb
	.uaword	0x2d5
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctRead"
	.byte	0x6
	.byte	0x4a
	.uaword	0x3f3
	.uleb128 0x7
	.string	"tMemDrvTag"
	.byte	0x1c
	.byte	0x6
	.byte	0x4c
	.uaword	0x503
	.uleb128 0x8
	.string	"init"
	.byte	0x6
	.byte	0x4d
	.uaword	0x366
	.byte	0
	.uleb128 0x8
	.string	"deinit"
	.byte	0x6
	.byte	0x4e
	.uaword	0x392
	.byte	0x4
	.uleb128 0x8
	.string	"erase"
	.byte	0x6
	.byte	0x4f
	.uaword	0x3aa
	.byte	0x8
	.uleb128 0x8
	.string	"write"
	.byte	0x6
	.byte	0x50
	.uaword	0x3dc
	.byte	0xc
	.uleb128 0x8
	.string	"read"
	.byte	0x6
	.byte	0x51
	.uaword	0x413
	.byte	0x10
	.uleb128 0x8
	.string	"segmentSize"
	.byte	0x6
	.byte	0x52
	.uaword	0x205
	.byte	0x14
	.uleb128 0x8
	.string	"erasedValue"
	.byte	0x6
	.byte	0x53
	.uaword	0x1f6
	.byte	0x16
	.uleb128 0x8
	.string	"initHook"
	.byte	0x6
	.byte	0x54
	.uaword	0x145
	.byte	0x17
	.uleb128 0x8
	.string	"deinitHook"
	.byte	0x6
	.byte	0x55
	.uaword	0x145
	.byte	0x18
	.uleb128 0x8
	.string	"eraseHook"
	.byte	0x6
	.byte	0x56
	.uaword	0x145
	.byte	0x19
	.uleb128 0x8
	.string	"writeHook"
	.byte	0x6
	.byte	0x57
	.uaword	0x145
	.byte	0x1a
	.uleb128 0x8
	.string	"readHook"
	.byte	0x6
	.byte	0x58
	.uaword	0x145
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.string	"tMemDrv"
	.byte	0x6
	.byte	0x59
	.uaword	0x429
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xc
	.uaword	0x1f6
	.uleb128 0xd
	.byte	0x1
	.string	"MemDriver_InitPowerOn"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"FblMemSegmentNrGet"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	0x215
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b2
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.byte	0x85
	.uaword	0x295
	.uaword	.LLST0
	.uleb128 0x10
	.string	"segment"
	.byte	0x1
	.byte	0x87
	.uaword	0x215
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0x88
	.uaword	0x295
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0xe80
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblMemGetDeviceByAddr"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	0x253
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x633
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x100
	.uaword	0x295
	.uaword	.LLST3
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x100
	.uaword	0x2bc
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x102
	.uaword	0x253
	.uaword	.LLST5
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x103
	.uaword	0x215
	.uaword	.LLST6
	.uleb128 0x16
	.uaword	.LVL11
	.uaword	0x54c
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblMemGetDeviceByRange"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	0x253
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x740
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x295
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2a9
	.uaword	.LLST8
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2bc
	.uaword	.LLST9
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x253
	.uaword	.LLST10
	.uleb128 0x18
	.string	"localDevice"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1f6
	.uaword	.LLST11
	.uleb128 0x19
	.string	"localMemSegmentStart"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x215
	.uleb128 0x18
	.string	"localMemSegmentEnd"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x215
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x123
	.uaword	0x215
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	.LVL19
	.uaword	0x5b2
	.uaword	0x721
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0x54c
	.uleb128 0x16
	.uaword	.LVL23
	.uaword	0x54c
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"MemDriver_Begin"
	.byte	0x1
	.uahalf	0x1ee
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a4
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x1f6
	.uaword	.LLST14
	.uleb128 0x1c
	.string	"function"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x1f6
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x145
	.uaword	.LLST16
	.uleb128 0x12
	.uaword	.LVL42
	.uaword	0xe9e
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"MemDriver_End"
	.byte	0x1
	.uahalf	0x20a
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x145
	.uaword	.LLST17
	.uleb128 0x12
	.uaword	.LVL45
	.uaword	0xec7
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_InitSync"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x88d
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x228
	.uaword	0x245
	.uaword	.LLST18
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x1f6
	.uaword	.LLST19
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x2ec
	.uaword	.LLST20
	.uleb128 0x18
	.string	"rc"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x2ec
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	.LVL49
	.uaword	0x740
	.uaword	0x869
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL50
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x87c
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL52
	.uaword	0x7a4
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_DeinitSync"
	.byte	0x1
	.uahalf	0x248
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x92c
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x248
	.uaword	0x245
	.uaword	.LLST22
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x1f6
	.uaword	.LLST23
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x2ec
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LVL58
	.uaword	0x740
	.uaword	0x908
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL59
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x91b
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL61
	.uaword	0x7a4
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_RReadSync"
	.byte	0x1
	.uahalf	0x265
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9e4
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x300
	.uaword	.LLST25
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x2c2
	.uaword	.LLST26
	.uleb128 0x1c
	.string	"addr"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x2d5
	.uaword	.LLST27
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x267
	.uaword	0x2ec
	.uaword	.LLST28
	.uleb128 0x1a
	.uaword	.LVL67
	.uaword	0x740
	.uaword	0x9b5
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8f
	.sleb128 27
	.byte	0x94
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL68
	.uaword	0x9d1
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL71
	.uaword	0x7a4
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 27
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblReadPromExt"
	.byte	0x1
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb6d
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x295
	.uaword	.LLST29
	.uleb128 0x1c
	.string	"buffer"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2bc
	.uaword	.LLST30
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2a9
	.uaword	.LLST31
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x170
	.uaword	0xb6d
	.uaword	.LLST32
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x172
	.uaword	0x2ec
	.uaword	.LLST33
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x173
	.uaword	0x295
	.uaword	.LLST34
	.uleb128 0x18
	.string	"localBuffer"
	.byte	0x1
	.uahalf	0x174
	.uaword	0x2bc
	.uaword	.LLST35
	.uleb128 0x18
	.string	"localLength"
	.byte	0x1
	.uahalf	0x175
	.uaword	0x2a9
	.uaword	.LLST36
	.uleb128 0x18
	.string	"localActualReadCount"
	.byte	0x1
	.uahalf	0x176
	.uaword	0x2a9
	.uaword	.LLST37
	.uleb128 0x18
	.string	"currentReadCount"
	.byte	0x1
	.uahalf	0x177
	.uaword	0x2a9
	.uaword	.LLST38
	.uleb128 0x18
	.string	"nextMemSegment"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x215
	.uaword	.LLST39
	.uleb128 0x12
	.uaword	.LVL74
	.uaword	0xe80
	.uleb128 0x1a
	.uaword	.LVL75
	.uaword	0x54c
	.uaword	0xb15
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL84
	.uaword	0x92c
	.uaword	0xb35
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL90
	.uaword	0xe80
	.uleb128 0x12
	.uaword	.LVL92
	.uaword	0xe80
	.uleb128 0x12
	.uaword	.LVL101
	.uaword	0xe80
	.uleb128 0x16
	.uaword	.LVL106
	.uaword	0x92c
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2a9
	.uleb128 0x13
	.byte	0x1
	.string	"FblReadProm"
	.byte	0x1
	.uahalf	0x158
	.byte	0x1
	.uaword	0x2a9
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc00
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x158
	.uaword	0x295
	.uaword	.LLST40
	.uleb128 0x1c
	.string	"buffer"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x2bc
	.uaword	.LLST41
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x158
	.uaword	0x2a9
	.uaword	.LLST42
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x2a9
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.uaword	.LVL109
	.uaword	0x9e4
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_RWriteSync"
	.byte	0x1
	.uahalf	0x281
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcb9
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x300
	.uaword	.LLST43
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x2c2
	.uaword	.LLST44
	.uleb128 0x1c
	.string	"addr"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x2d5
	.uaword	.LLST45
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x283
	.uaword	0x2ec
	.uaword	.LLST46
	.uleb128 0x1a
	.uaword	.LVL113
	.uaword	0x740
	.uaword	0xc8a
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8f
	.sleb128 26
	.byte	0x94
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL114
	.uaword	0xca6
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL117
	.uaword	0x7a4
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 26
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_REraseSync"
	.byte	0x1
	.uahalf	0x29d
	.byte	0x1
	.uaword	0x2ec
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd5c
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x2c2
	.uaword	.LLST47
	.uleb128 0x1c
	.string	"addr"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x2d5
	.uaword	.LLST48
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x2ec
	.uaword	.LLST49
	.uleb128 0x1a
	.uaword	.LVL121
	.uaword	0x740
	.uaword	0xd33
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8f
	.sleb128 25
	.byte	0x94
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL122
	.uaword	0xd49
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL125
	.uaword	0x7a4
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 25
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"cachedSegment"
	.byte	0x1
	.byte	0x59
	.uaword	0x215
	.byte	0x5
	.byte	0x3
	.uaword	cachedSegment
	.uleb128 0x20
	.string	"cachedBlock"
	.byte	0x1
	.byte	0x5a
	.uaword	0x353
	.byte	0x5
	.byte	0x3
	.uaword	cachedBlock
	.uleb128 0x20
	.string	"nextValidSegment"
	.byte	0x1
	.byte	0x5c
	.uaword	0x215
	.byte	0x5
	.byte	0x3
	.uaword	nextValidSegment
	.uleb128 0x21
	.string	"kNrOfFlashBlock"
	.byte	0x6
	.byte	0x5c
	.uaword	0x521
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.uaword	0x353
	.uaword	0xdd2
	.uleb128 0x23
	.byte	0
	.uleb128 0x21
	.string	"FlashBlock"
	.byte	0x6
	.byte	0x5d
	.uaword	0xde6
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xdc7
	.uleb128 0x22
	.uaword	0x503
	.uaword	0xdf6
	.uleb128 0x23
	.byte	0
	.uleb128 0x21
	.string	"memDrvLst"
	.byte	0x6
	.byte	0x5e
	.uaword	0xe09
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xdeb
	.uleb128 0x21
	.string	"kNrOfMemDrv"
	.byte	0x6
	.byte	0x5f
	.uaword	0x521
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"memDrvDeviceActive"
	.byte	0x1
	.byte	0x4d
	.uaword	0x1f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memDrvDeviceActive
	.uleb128 0x24
	.string	"memDrvFunctionActive"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memDrvFunctionActive
	.uleb128 0x24
	.string	"memSegment"
	.byte	0x1
	.byte	0x51
	.uaword	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memSegment
	.uleb128 0x25
	.byte	0x1
	.string	"FblRealTimeSupport"
	.byte	0x7
	.uahalf	0x385
	.byte	0x1
	.uaword	0x1f6
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"ApplFblPreMemDriver"
	.byte	0x8
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uaword	0xec7
	.uleb128 0xb
	.uaword	0x1f6
	.uleb128 0xb
	.uaword	0x1f6
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"ApplFblPostMemDriver"
	.byte	0x8
	.byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1f6
	.uleb128 0xb
	.uaword	0x1f6
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x3
	.uaword	cachedSegment
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
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
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x76
	.sleb128 8
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x76
	.sleb128 8
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL42-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL42-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL54
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL46
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL63
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL55
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61-1
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL64
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL71
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL65
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL71
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL69
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL64
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-1
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL78
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL79
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL74-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL76
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL74-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL73
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x8
	.byte	0xe5
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL73
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-1
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x2
	.byte	0x72
	.sleb128 0
	.uaword	.LVL90-1
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL102
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL73
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL99
	.uaword	.LVL102
	.uahalf	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL73
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL74-1
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL73
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL80
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL102
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL109-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL110
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL113-1
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL117
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL117
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL115
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL110
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL116
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL119
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL125
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL120
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL123
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL118
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL124
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
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
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"actualReadCount"
.LASF4:
	.string	"localMemSegment"
.LASF5:
	.string	"length"
.LASF6:
	.string	"hookEnabled"
.LASF3:
	.string	"result"
.LASF0:
	.string	"device"
.LASF2:
	.string	"address"
.LASF1:
	.string	"localAddress"
	.extern	memDrvLst,STT_OBJECT,-1
	.extern	kNrOfMemDrv,STT_OBJECT,1
	.extern	ApplFblPostMemDriver,STT_FUNC,0
	.extern	ApplFblPreMemDriver,STT_FUNC,0
	.extern	FblRealTimeSupport,STT_FUNC,0
	.extern	kNrOfFlashBlock,STT_OBJECT,1
	.extern	FlashBlock,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
