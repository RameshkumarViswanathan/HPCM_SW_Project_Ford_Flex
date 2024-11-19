	.file	"fbl_mio.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	MemDriver_InitPowerOn
	.type	MemDriver_InitPowerOn, @function
MemDriver_InitPowerOn:
.LFB14:
	.file 1 "../../../../external/BSW/Fbl/fbl_mio.c"
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
	call	FblLookForWatchdog
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
	ret
.LFE20:
	.size	MemDriver_Begin, .-MemDriver_Begin
	.align 1
	.global	MemDriver_End
	.type	MemDriver_End, @function
MemDriver_End:
.LFB21:
	.loc 1 523 0
.LVL42:
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
.LVL43:
	.loc 1 559 0
	movh.a	%a15, hi:kNrOfMemDrv
	ld.bu	%d15, [%a15] lo:kNrOfMemDrv
	.loc 1 555 0
	mov	%d2, 0
	.loc 1 559 0
	jz	%d15, .L32
	mov.aa	%a14, %a4
	mov	%d15, 0
.LBB6:
.LBB7:
	.loc 1 504 0
	movh.a	%a12, hi:memDrvDeviceActive
	lea	%a12, [%a12] lo:memDrvDeviceActive
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	lea	%a15, [%a15] lo:memDrvFunctionActive
	mov	%d10, 1
.LBE7:
.LBE6:
	.loc 1 562 0
	movh	%d11, hi:memDrvLst
	addi	%d11, %d11, lo:memDrvLst
.LBB9:
.LBB10:
	.loc 1 540 0
	mov	%d9, -1
.LBE10:
.LBE9:
	.loc 1 559 0
	movh.a	%a13, hi:kNrOfMemDrv
	lea	%a13, [%a13] lo:kNrOfMemDrv
.LVL44:
.L33:
	and	%d8, %d15, 255
.LVL45:
.LBB12:
.LBB8:
	.loc 1 504 0
	st.b	[%a12]0, %d8
	.loc 1 505 0
	st.b	[%a15]0, %d10
	and	%d2, %d15, 255
.LBE8:
.LBE12:
	.loc 1 562 0
	madd	%d3, %d11, %d2, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2]0
	mov.aa	%a4, %a14
	calli	%a2
.LVL46:
.LBB13:
.LBB11:
	.loc 1 540 0
	st.b	[%a12]0, %d9
	.loc 1 541 0
	mov	%d3, 0
	st.b	[%a15]0, %d3
.LBE11:
.LBE13:
	.loc 1 565 0
	jnz	%d2, .L32
.LVL47:
	add	%d15, 1
.LVL48:
	add	%d8, 1
.LVL49:
	.loc 1 559 0 discriminator 2
	ld.bu	%d3, [%a13]0
	and	%d8, %d8, 255
.LVL50:
	jlt.u	%d8, %d3, .L33
.LVL51:
.L32:
	.loc 1 574 0
	ret
.LFE22:
	.size	MemDriver_InitSync, .-MemDriver_InitSync
	.align 1
	.global	MemDriver_DeinitSync
	.type	MemDriver_DeinitSync, @function
MemDriver_DeinitSync:
.LFB23:
	.loc 1 585 0
.LVL52:
	.loc 1 589 0
	movh.a	%a15, hi:kNrOfMemDrv
	ld.bu	%d15, [%a15] lo:kNrOfMemDrv
	.loc 1 587 0
	mov	%d2, 0
	.loc 1 589 0
	jz	%d15, .L37
	mov.aa	%a14, %a4
	mov	%d15, 0
.LBB18:
.LBB19:
	.loc 1 504 0
	movh.a	%a12, hi:memDrvDeviceActive
	lea	%a12, [%a12] lo:memDrvDeviceActive
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	lea	%a15, [%a15] lo:memDrvFunctionActive
	mov	%d10, 2
.LBE19:
.LBE18:
	.loc 1 592 0
	movh	%d11, hi:memDrvLst
	addi	%d11, %d11, lo:memDrvLst
.LBB21:
.LBB22:
	.loc 1 540 0
	mov	%d9, -1
.LBE22:
.LBE21:
	.loc 1 589 0
	movh.a	%a13, hi:kNrOfMemDrv
	lea	%a13, [%a13] lo:kNrOfMemDrv
.LVL53:
.L38:
	and	%d8, %d15, 255
.LVL54:
.LBB24:
.LBB20:
	.loc 1 504 0
	st.b	[%a12]0, %d8
	.loc 1 505 0
	st.b	[%a15]0, %d10
	and	%d2, %d15, 255
.LBE20:
.LBE24:
	.loc 1 592 0
	madd	%d3, %d11, %d2, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 4
	mov.aa	%a4, %a14
	calli	%a2
.LVL55:
.LBB25:
.LBB23:
	.loc 1 540 0
	st.b	[%a12]0, %d9
	.loc 1 541 0
	mov	%d3, 0
	st.b	[%a15]0, %d3
.LBE23:
.LBE25:
	.loc 1 594 0
	jnz	%d2, .L37
.LVL56:
	add	%d15, 1
.LVL57:
	add	%d8, 1
.LVL58:
	.loc 1 589 0 discriminator 2
	ld.bu	%d3, [%a13]0
	and	%d8, %d8, 255
.LVL59:
	jlt.u	%d8, %d3, .L38
.LVL60:
.L37:
	.loc 1 600 0
	ret
.LFE23:
	.size	MemDriver_DeinitSync, .-MemDriver_DeinitSync
	.align 1
	.global	MemDriver_RReadSync
	.type	MemDriver_RReadSync, @function
MemDriver_RReadSync:
.LFB24:
	.loc 1 614 0
.LVL61:
	.loc 1 619 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 617 0
	mov	%d2, 1
	.loc 1 619 0
	jltz	%d15, .L42
	.loc 1 619 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L42
	.loc 1 621 0 is_stmt 1
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
.LVL62:
.LBB30:
.LBB31:
	.loc 1 504 0
	movh.a	%a12, hi:memDrvDeviceActive
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	mov	%d2, 6
	st.b	[%a15] lo:memDrvFunctionActive, %d2
.LBE31:
.LBE30:
	.loc 1 622 0
	movh.a	%a2, hi:memDrvLst
	mov.d	%d3, %a2
.LVL63:
	addi	%d2, %d3, lo:memDrvLst
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 16
	calli	%a2
.LVL64:
.LBB32:
.LBB33:
	.loc 1 540 0
	mov	%d15, -1
.LVL65:
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 541 0
	mov	%d15, 0
	st.b	[%a15] lo:memDrvFunctionActive, %d15
.LVL66:
.L42:
.LBE33:
.LBE32:
	.loc 1 627 0
	ret
.LFE24:
	.size	MemDriver_RReadSync, .-MemDriver_RReadSync
	.align 1
	.global	FblReadPromExt
	.type	FblReadPromExt, @function
FblReadPromExt:
.LFB19:
	.loc 1 369 0
.LVL67:
	mov	%d9, %d4
	mov.aa	%a13, %a4
	mov	%d8, %d5
	mov.d	%d14, %a5
.LVL68:
	.loc 1 385 0
	call	FblLookForWatchdog
.LVL69:
	.loc 1 388 0
	mov	%d4, %d9
	call	FblMemSegmentNrGet
.LVL70:
	mov	%d15, %d2
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d2
	.loc 1 390 0
	jgez	%d2, .L46
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
	jge	%d15, %d2, .L47
	.loc 1 402 0
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d2, [%a15]0
	.loc 1 401 0
	jge.u	%d9, %d2, .L47
	.loc 1 403 0
	sub	%d3, %d2, %d9
	.loc 1 402 0
	jge.u	%d3, %d8, .L47
	.loc 1 407 0
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d15
	sub	%d8, %d2
.LVL71:
	.loc 1 410 0
	add	%d8, %d9
.LVL72:
	.loc 1 421 0
	jltz	%d15, .L47
	.loc 1 412 0
	mov	%d9, %d2
.LVL73:
.L46:
	.loc 1 423 0
	mov	%d12, 0
	mov	%d13, 0
	jz	%d8, .L47
	.loc 1 426 0
	movh	%d10, hi:FlashBlock
	addi	%d10, %d10, lo:FlashBlock
	movh.a	%a12, hi:memSegment
	lea	%a12, [%a12] lo:memSegment
	.loc 1 432 0
	movh.a	%a14, hi:kNrOfFlashBlock
	lea	%a14, [%a14] lo:kNrOfFlashBlock
.LVL74:
.L52:
	.loc 1 426 0
	add	%d5, %d9, %d8
	ld.h	%d3, [%a12]0
	madd	%d2, %d10, %d3, 12
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
	addi	%d3, %d5, -1
	jge.u	%d4, %d3, .L48
	add	%d4, 1
	.loc 1 428 0
	sub	%d11, %d4, %d9
.LVL75:
	.loc 1 430 0
	add	%d15, 1
.LVL76:
	extr	%d15, %d15, 0, 16
.LVL77:
	.loc 1 432 0
	ld.bu	%d3, [%a14]0
	jge	%d15, %d3, .L60
	.loc 1 434 0
	madd	%d3, %d10, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d2, [%a15]0
	sub	%d3, %d2, %d9
	.loc 1 435 0
	jge.u	%d3, %d8, .L61
	.loc 1 435 0 is_stmt 0 discriminator 1
	sub	%d8, %d5, %d2
.LVL78:
	.loc 1 449 0 is_stmt 1 discriminator 1
	mov.aa	%a4, %a13
	mov	%d4, %d11
	mov	%d5, %d9
	call	MemDriver_RReadSync
.LVL79:
	jz	%d2, .L62
	eq	%d2, %d2, 229
	jz	%d2, .L49
	.loc 1 454 0
	mov	%d13, 229
.LVL80:
.L51:
	.loc 1 458 0
	st.h	[%a12]0, %d15
.LVL81:
	.loc 1 459 0
	addsc.a	%a13, %a13, %d11, 0
.LVL82:
	.loc 1 460 0
	madd	%d2, %d10, %d15, 12
	mov.a	%a15, %d2
.LVL83:
	ld.w	%d9, [%a15]0
	.loc 1 461 0
	add	%d12, %d11
.LVL84:
	.loc 1 473 0
	call	FblLookForWatchdog
.LVL85:
	.loc 1 423 0
	jnz	%d8, .L52
	j	.L47
.LVL86:
.L49:
	.loc 1 473 0
	call	FblLookForWatchdog
.LVL87:
	.loc 1 468 0
	mov	%d13, 1
	j	.L47
.LVL88:
.L62:
	.loc 1 435 0
	mov	%d2, %d8
	.loc 1 428 0
	mov	%d8, %d11
.LVL89:
	j	.L50
.LVL90:
.L64:
	.loc 1 449 0
	mov	%d2, 0
.LVL91:
.L50:
	.loc 1 423 0
	mov	%d11, %d8
	mov	%d8, %d2
.LVL92:
	j	.L51
.LVL93:
.L53:
	.loc 1 458 0
	movh.a	%a15, hi:memSegment
	st.h	[%a15] lo:memSegment, %d15
.LVL94:
	.loc 1 461 0
	add	%d12, %d8
.LVL95:
	.loc 1 473 0
	call	FblLookForWatchdog
.LVL96:
	.loc 1 454 0
	mov	%d13, 229
	j	.L47
.LVL97:
.L60:
	.loc 1 428 0
	mov	%d8, %d11
.LVL98:
	j	.L48
.LVL99:
.L61:
	mov	%d8, %d11
.LVL100:
.L48:
	.loc 1 449 0
	mov.aa	%a4, %a13
	mov	%d4, %d8
	mov	%d5, %d9
	call	MemDriver_RReadSync
.LVL101:
	jz	%d2, .L64
	eq	%d2, %d2, 229
	jnz	%d2, .L53
	j	.L49
.LVL102:
.L47:
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
.LVL103:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 348 0
	lea	%a5, [%SP] 4
	call	FblReadPromExt
.LVL104:
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
.LVL105:
	.loc 1 647 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 645 0
	mov	%d2, 1
	.loc 1 647 0
	jltz	%d15, .L69
	.loc 1 647 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L69
	.loc 1 649 0 is_stmt 1
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
.LVL106:
.LBB38:
.LBB39:
	.loc 1 504 0
	movh.a	%a12, hi:memDrvDeviceActive
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	mov	%d2, 3
	st.b	[%a15] lo:memDrvFunctionActive, %d2
.LBE39:
.LBE38:
	.loc 1 650 0
	movh.a	%a2, hi:memDrvLst
	mov.d	%d3, %a2
.LVL107:
	addi	%d2, %d3, lo:memDrvLst
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 12
	calli	%a2
.LVL108:
.LBB40:
.LBB41:
	.loc 1 540 0
	mov	%d15, -1
.LVL109:
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 541 0
	mov	%d15, 0
	st.b	[%a15] lo:memDrvFunctionActive, %d15
.LVL110:
.L69:
.LBE41:
.LBE40:
	.loc 1 655 0
	ret
.LFE25:
	.size	MemDriver_RWriteSync, .-MemDriver_RWriteSync
	.align 1
	.global	MemDriver_REraseSync
	.type	MemDriver_REraseSync, @function
MemDriver_REraseSync:
.LFB26:
	.loc 1 670 0
.LVL111:
	.loc 1 675 0
	movh.a	%a15, hi:memSegment
	ld.h	%d15, [%a15] lo:memSegment
	.loc 1 673 0
	mov	%d2, 1
	.loc 1 675 0
	jltz	%d15, .L73
	.loc 1 675 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:kNrOfFlashBlock
	ld.bu	%d3, [%a15] lo:kNrOfFlashBlock
	jge	%d15, %d3, .L73
	.loc 1 677 0 is_stmt 1
	movh.a	%a15, hi:FlashBlock
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:FlashBlock
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
.LVL112:
.LBB46:
.LBB47:
	.loc 1 504 0
	movh.a	%a12, hi:memDrvDeviceActive
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 505 0
	movh.a	%a15, hi:memDrvFunctionActive
	mov	%d2, 4
	st.b	[%a15] lo:memDrvFunctionActive, %d2
.LBE47:
.LBE46:
	.loc 1 678 0
	movh.a	%a2, hi:memDrvLst
	mov.d	%d3, %a2
.LVL113:
	addi	%d2, %d3, lo:memDrvLst
	madd	%d3, %d2, %d15, 28
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 8
	calli	%a2
.LVL114:
.LBB48:
.LBB49:
	.loc 1 540 0
	mov	%d15, -1
.LVL115:
	st.b	[%a12] lo:memDrvDeviceActive, %d15
	.loc 1 541 0
	mov	%d15, 0
	st.b	[%a15] lo:memDrvFunctionActive, %d15
.LVL116:
.L73:
.LBE49:
.LBE48:
	.loc 1 683 0
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
	.file 7 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf5f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../external/BSW/Fbl/fbl_mio.c"
	.string	"D:\\\\usr\\\\usage\\\\Delivery\\\\CBD23x\\\\CBD2300515\\\\D00\\\\external\\\\Demo\\\\DemoUpdater\\\\Appl"
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x188
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
	.uaword	0x188
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x1b5
	.uleb128 0x4
	.string	"vsint16"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x1a8
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1d7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x22a
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x259
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x259
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x28c
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x2a2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x22a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"IO_SizeType"
	.byte	0x5
	.byte	0x42
	.uaword	0x259
	.uleb128 0x2
	.string	"IO_PositionType"
	.byte	0x5
	.byte	0x43
	.uaword	0x259
	.uleb128 0x2
	.string	"IO_ErrorType"
	.byte	0x5
	.byte	0x49
	.uaword	0x239
	.uleb128 0x2
	.string	"IO_MemPtrType"
	.byte	0x5
	.byte	0x4a
	.uaword	0x2e2
	.uleb128 0x6
	.string	"tFlashBlockTag"
	.byte	0xc
	.byte	0x6
	.byte	0x40
	.uaword	0x385
	.uleb128 0x7
	.string	"begin"
	.byte	0x6
	.byte	0x41
	.uaword	0x2bb
	.byte	0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0x42
	.uaword	0x2bb
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x43
	.uaword	0x22a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"tFlashBlock"
	.byte	0x6
	.byte	0x44
	.uaword	0x347
	.uleb128 0x2
	.string	"tMemDrvFctInit"
	.byte	0x6
	.byte	0x46
	.uaword	0x3ae
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b4
	.uleb128 0x9
	.byte	0x1
	.uaword	0x31e
	.uaword	0x3c4
	.uleb128 0xa
	.uaword	0x3c4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.string	"tMemDrvFctDeinit"
	.byte	0x6
	.byte	0x47
	.uaword	0x3ae
	.uleb128 0x2
	.string	"tMemDrvFctErase"
	.byte	0x6
	.byte	0x48
	.uaword	0x3f5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3fb
	.uleb128 0x9
	.byte	0x1
	.uaword	0x31e
	.uaword	0x410
	.uleb128 0xa
	.uaword	0x2f4
	.uleb128 0xa
	.uaword	0x307
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctWrite"
	.byte	0x6
	.byte	0x49
	.uaword	0x427
	.uleb128 0x5
	.byte	0x4
	.uaword	0x42d
	.uleb128 0x9
	.byte	0x1
	.uaword	0x31e
	.uaword	0x447
	.uleb128 0xa
	.uaword	0x332
	.uleb128 0xa
	.uaword	0x2f4
	.uleb128 0xa
	.uaword	0x307
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctRead"
	.byte	0x6
	.byte	0x4a
	.uaword	0x427
	.uleb128 0x6
	.string	"tMemDrvTag"
	.byte	0x1c
	.byte	0x6
	.byte	0x4c
	.uaword	0x537
	.uleb128 0x7
	.string	"init"
	.byte	0x6
	.byte	0x4d
	.uaword	0x398
	.byte	0
	.uleb128 0x7
	.string	"deinit"
	.byte	0x6
	.byte	0x4e
	.uaword	0x3c6
	.byte	0x4
	.uleb128 0x7
	.string	"erase"
	.byte	0x6
	.byte	0x4f
	.uaword	0x3de
	.byte	0x8
	.uleb128 0x7
	.string	"write"
	.byte	0x6
	.byte	0x50
	.uaword	0x410
	.byte	0xc
	.uleb128 0x7
	.string	"read"
	.byte	0x6
	.byte	0x51
	.uaword	0x447
	.byte	0x10
	.uleb128 0x7
	.string	"segmentSize"
	.byte	0x6
	.byte	0x52
	.uaword	0x239
	.byte	0x14
	.uleb128 0x7
	.string	"erasedValue"
	.byte	0x6
	.byte	0x53
	.uaword	0x22a
	.byte	0x16
	.uleb128 0x7
	.string	"initHook"
	.byte	0x6
	.byte	0x54
	.uaword	0x179
	.byte	0x17
	.uleb128 0x7
	.string	"deinitHook"
	.byte	0x6
	.byte	0x55
	.uaword	0x179
	.byte	0x18
	.uleb128 0x7
	.string	"eraseHook"
	.byte	0x6
	.byte	0x56
	.uaword	0x179
	.byte	0x19
	.uleb128 0x7
	.string	"writeHook"
	.byte	0x6
	.byte	0x57
	.uaword	0x179
	.byte	0x1a
	.uleb128 0x7
	.string	"readHook"
	.byte	0x6
	.byte	0x58
	.uaword	0x179
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.string	"tMemDrv"
	.byte	0x6
	.byte	0x59
	.uaword	0x45d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xc
	.uaword	0x22a
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
	.uaword	0x249
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e6
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.byte	0x85
	.uaword	0x2bb
	.uaword	.LLST0
	.uleb128 0x10
	.string	"segment"
	.byte	0x1
	.byte	0x87
	.uaword	0x249
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0x88
	.uaword	0x2bb
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0xf45
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblMemGetDeviceByAddr"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	0x279
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x667
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x100
	.uaword	0x2bb
	.uaword	.LLST3
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x100
	.uaword	0x2e2
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x102
	.uaword	0x279
	.uaword	.LLST5
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x103
	.uaword	0x249
	.uaword	.LLST6
	.uleb128 0x16
	.uaword	.LVL11
	.uaword	0x580
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
	.uaword	0x279
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x774
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2bb
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2cf
	.uaword	.LLST8
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2e2
	.uaword	.LLST9
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x279
	.uaword	.LLST10
	.uleb128 0x18
	.string	"localDevice"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x22a
	.uaword	.LLST11
	.uleb128 0x19
	.string	"localMemSegmentStart"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x249
	.uleb128 0x18
	.string	"localMemSegmentEnd"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x249
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x123
	.uaword	0x249
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	.LVL19
	.uaword	0x5e6
	.uaword	0x755
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
	.uaword	0x580
	.uleb128 0x16
	.uaword	.LVL23
	.uaword	0x580
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
	.byte	0x1
	.uaword	0x7b9
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x22a
	.uleb128 0x1d
	.string	"function"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x22a
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x179
	.byte	0
	.uleb128 0x1e
	.uaword	0x774
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7e3
	.uleb128 0x1f
	.uaword	0x78f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x79b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.uaword	0x7ac
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"MemDriver_End"
	.byte	0x1
	.uahalf	0x20a
	.byte	0x1
	.byte	0x1
	.uaword	0x809
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x179
	.byte	0
	.uleb128 0x1e
	.uaword	0x7e3
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x825
	.uleb128 0x1f
	.uaword	0x7fc
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_InitSync"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	0x31e
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8ed
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x228
	.uaword	0x3c4
	.uaword	.LLST14
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x22a
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x31e
	.uaword	.LLST16
	.uleb128 0x18
	.string	"rc"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x31e
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	0x774
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x231
	.uaword	0x8ba
	.uleb128 0x21
	.uaword	0x7ac
	.uleb128 0x22
	.uaword	0x79b
	.uaword	.LLST18
	.uleb128 0x22
	.uaword	0x78f
	.uaword	.LLST19
	.byte	0
	.uleb128 0x20
	.uaword	0x7e3
	.uaword	.LBB9
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x233
	.uaword	0x8d4
	.uleb128 0x21
	.uaword	0x7fc
	.byte	0
	.uleb128 0x23
	.uaword	.LVL46
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_DeinitSync"
	.byte	0x1
	.uahalf	0x248
	.byte	0x1
	.uaword	0x31e
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9aa
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x248
	.uaword	0x3c4
	.uaword	.LLST20
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x22a
	.uaword	.LLST21
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x31e
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	0x774
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x24f
	.uaword	0x975
	.uleb128 0x21
	.uaword	0x7ac
	.uleb128 0x22
	.uaword	0x79b
	.uaword	.LLST23
	.uleb128 0x22
	.uaword	0x78f
	.uaword	.LLST24
	.byte	0
	.uleb128 0x20
	.uaword	0x7e3
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x251
	.uaword	0x98f
	.uleb128 0x21
	.uaword	0x7fc
	.byte	0
	.uleb128 0x23
	.uaword	.LVL55
	.byte	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_RReadSync"
	.byte	0x1
	.uahalf	0x265
	.byte	0x1
	.uaword	0x31e
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa7a
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x332
	.uaword	.LLST25
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x2f4
	.uaword	.LLST26
	.uleb128 0x24
	.string	"addr"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x307
	.uaword	.LLST27
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x267
	.uaword	0x31e
	.uaword	.LLST28
	.uleb128 0x25
	.uaword	0x774
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x26d
	.uaword	0xa44
	.uleb128 0x21
	.uaword	0x7ac
	.uleb128 0x22
	.uaword	0x79b
	.uaword	.LLST29
	.uleb128 0x22
	.uaword	0x78f
	.uaword	.LLST30
	.byte	0
	.uleb128 0x25
	.uaword	0x7e3
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x26f
	.uaword	0xa5e
	.uleb128 0x21
	.uaword	0x7fc
	.byte	0
	.uleb128 0x26
	.uaword	.LVL64
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"FblReadPromExt"
	.byte	0x1
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x31e
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc03
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2bb
	.uaword	.LLST31
	.uleb128 0x24
	.string	"buffer"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2e2
	.uaword	.LLST32
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2cf
	.uaword	.LLST33
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x170
	.uaword	0xc03
	.uaword	.LLST34
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x172
	.uaword	0x31e
	.uaword	.LLST35
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x173
	.uaword	0x2bb
	.uaword	.LLST36
	.uleb128 0x18
	.string	"localBuffer"
	.byte	0x1
	.uahalf	0x174
	.uaword	0x2e2
	.uaword	.LLST37
	.uleb128 0x18
	.string	"localLength"
	.byte	0x1
	.uahalf	0x175
	.uaword	0x2cf
	.uaword	.LLST38
	.uleb128 0x18
	.string	"localActualReadCount"
	.byte	0x1
	.uahalf	0x176
	.uaword	0x2cf
	.uaword	.LLST39
	.uleb128 0x18
	.string	"currentReadCount"
	.byte	0x1
	.uahalf	0x177
	.uaword	0x2cf
	.uaword	.LLST40
	.uleb128 0x18
	.string	"nextMemSegment"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x249
	.uaword	.LLST41
	.uleb128 0x12
	.uaword	.LVL69
	.uaword	0xf45
	.uleb128 0x1a
	.uaword	.LVL70
	.uaword	0x580
	.uaword	0xbab
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL79
	.uaword	0x9aa
	.uaword	0xbcb
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
	.uaword	.LVL85
	.uaword	0xf45
	.uleb128 0x12
	.uaword	.LVL87
	.uaword	0xf45
	.uleb128 0x12
	.uaword	.LVL96
	.uaword	0xf45
	.uleb128 0x16
	.uaword	.LVL101
	.uaword	0x9aa
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
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cf
	.uleb128 0x13
	.byte	0x1
	.string	"FblReadProm"
	.byte	0x1
	.uahalf	0x158
	.byte	0x1
	.uaword	0x2cf
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc96
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x158
	.uaword	0x2bb
	.uaword	.LLST42
	.uleb128 0x24
	.string	"buffer"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x2e2
	.uaword	.LLST43
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x158
	.uaword	0x2cf
	.uaword	.LLST44
	.uleb128 0x27
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.uaword	.LVL104
	.uaword	0xa7a
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
	.uaword	0x31e
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd67
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x332
	.uaword	.LLST45
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x2f4
	.uaword	.LLST46
	.uleb128 0x24
	.string	"addr"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x307
	.uaword	.LLST47
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x283
	.uaword	0x31e
	.uaword	.LLST48
	.uleb128 0x25
	.uaword	0x774
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x289
	.uaword	0xd31
	.uleb128 0x21
	.uaword	0x7ac
	.uleb128 0x22
	.uaword	0x79b
	.uaword	.LLST49
	.uleb128 0x22
	.uaword	0x78f
	.uaword	.LLST50
	.byte	0
	.uleb128 0x25
	.uaword	0x7e3
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x28b
	.uaword	0xd4b
	.uleb128 0x21
	.uaword	0x7fc
	.byte	0
	.uleb128 0x26
	.uaword	.LVL108
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MemDriver_REraseSync"
	.byte	0x1
	.uahalf	0x29d
	.byte	0x1
	.uaword	0x31e
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe21
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x2f4
	.uaword	.LLST51
	.uleb128 0x24
	.string	"addr"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x307
	.uaword	.LLST52
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x31e
	.uaword	.LLST53
	.uleb128 0x25
	.uaword	0x774
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0xdf2
	.uleb128 0x21
	.uaword	0x7ac
	.uleb128 0x22
	.uaword	0x79b
	.uaword	.LLST54
	.uleb128 0x22
	.uaword	0x78f
	.uaword	.LLST55
	.byte	0
	.uleb128 0x25
	.uaword	0x7e3
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0xe0c
	.uleb128 0x21
	.uaword	0x7fc
	.byte	0
	.uleb128 0x26
	.uaword	.LVL114
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"cachedSegment"
	.byte	0x1
	.byte	0x59
	.uaword	0x249
	.byte	0x5
	.byte	0x3
	.uaword	cachedSegment
	.uleb128 0x28
	.string	"cachedBlock"
	.byte	0x1
	.byte	0x5a
	.uaword	0x385
	.byte	0x5
	.byte	0x3
	.uaword	cachedBlock
	.uleb128 0x28
	.string	"nextValidSegment"
	.byte	0x1
	.byte	0x5c
	.uaword	0x249
	.byte	0x5
	.byte	0x3
	.uaword	nextValidSegment
	.uleb128 0x29
	.string	"kNrOfFlashBlock"
	.byte	0x6
	.byte	0x5c
	.uaword	0x555
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x385
	.uaword	0xe97
	.uleb128 0x2b
	.byte	0
	.uleb128 0x29
	.string	"FlashBlock"
	.byte	0x6
	.byte	0x5d
	.uaword	0xeab
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xe8c
	.uleb128 0x2a
	.uaword	0x537
	.uaword	0xebb
	.uleb128 0x2b
	.byte	0
	.uleb128 0x29
	.string	"memDrvLst"
	.byte	0x6
	.byte	0x5e
	.uaword	0xece
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xeb0
	.uleb128 0x29
	.string	"kNrOfMemDrv"
	.byte	0x6
	.byte	0x5f
	.uaword	0x555
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"memDrvDeviceActive"
	.byte	0x1
	.byte	0x4d
	.uaword	0x22a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memDrvDeviceActive
	.uleb128 0x2c
	.string	"memDrvFunctionActive"
	.byte	0x1
	.byte	0x4e
	.uaword	0x22a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memDrvFunctionActive
	.uleb128 0x2c
	.string	"memSegment"
	.byte	0x1
	.byte	0x51
	.uaword	0x249
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memSegment
	.uleb128 0x2d
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x22a
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL51
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL43
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL45
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL60
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL54
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL61
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL61
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL61
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL62
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x73
	.sleb128 8
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL67
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL73
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL67
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL74
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL67
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69-1
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL71
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL67
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x8
	.byte	0xe5
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL83
	.uaword	.LVL85-1
	.uahalf	0x2
	.byte	0x72
	.sleb128 0
	.uaword	.LVL85-1
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL97
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL94
	.uaword	.LVL97
	.uahalf	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69-1
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL75
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL93
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL104-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL104-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL105
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL108-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL105
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL105
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL108-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x73
	.sleb128 8
	.uaword	.LVL108-1
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL111
	.uaword	.LVL114-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL111
	.uaword	.LVL114-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL114-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL112
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x73
	.sleb128 8
	.uaword	.LVL114-1
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0
	.uaword	0
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
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
.LASF0:
	.string	"device"
.LASF6:
	.string	"hookEnabled"
.LASF3:
	.string	"result"
.LASF1:
	.string	"localAddress"
.LASF2:
	.string	"address"
.LASF7:
	.string	"actualReadCount"
.LASF4:
	.string	"localMemSegment"
.LASF5:
	.string	"length"
	.extern	memDrvLst,STT_OBJECT,-1
	.extern	kNrOfMemDrv,STT_OBJECT,1
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	kNrOfFlashBlock,STT_OBJECT,1
	.extern	FlashBlock,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
