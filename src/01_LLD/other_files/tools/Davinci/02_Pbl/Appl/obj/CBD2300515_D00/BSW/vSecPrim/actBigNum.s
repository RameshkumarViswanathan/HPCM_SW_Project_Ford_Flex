	.file	"actBigNum.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actBNLoadLE,"ax",@progbits
	.align 1
	.global	actBNLoadLE
	.type	actBNLoadLE, @function
actBNLoadLE:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.c"
	.loc 1 64 0
.LVL0:
	.loc 1 68 0
	sh	%d4, -2
.LVL1:
	jz	%d4, .L1
	mov	%d15, 0
	mov.a	%a2, %d4
	add.a	%a2, -1
.LVL2:
.L3:
.LBB2:
	.loc 1 73 0 discriminator 3
	addsc.a	%a15, %a5, %d15, 0
	ld.bu	%d7, [%a15]0
.LVL3:
	.loc 1 74 0 discriminator 3
	ld.bu	%d3, [%a15] 1
	sh	%d6, %d3, 8
	.loc 1 75 0 discriminator 3
	ld.bu	%d3, [%a15] 2
	sh	%d5, %d3, 16
	add	%d3, %d6, %d5
	add	%d7, %d3
.LVL4:
	.loc 1 76 0 discriminator 3
	ld.bu	%d2, [%a15] 3
	sh	%d2, %d2, 24
	add	%d2, %d7
.LVL5:
	.loc 1 90 0 discriminator 3
	addsc.a	%a15, %a4, %d15, 0
	st.w	[%a15]0, %d2
.LBE2:
	.loc 1 68 0 discriminator 3
	add	%d4, -1
.LVL6:
.LBB3:
	.loc 1 77 0 discriminator 3
	add	%d15, 4
.LVL7:
	loop	%a2, .L3
.LVL8:
.L1:
	ret
.LBE3:
.LFE15:
	.size	actBNLoadLE, .-actBNLoadLE
.section .text.actBNStoreLE,"ax",@progbits
	.align 1
	.global	actBNStoreLE
	.type	actBNStoreLE, @function
actBNStoreLE:
.LFB16:
	.loc 1 106 0
.LVL9:
	.loc 1 110 0
	jz	%d4, .L5
	mov	%d3, 0
	mov.a	%a2, %d4
	add.a	%a2, -1
.LVL10:
.L7:
	addsc.a	%a15, %a4, %d3, 0
.LVL11:
.LBB4:
	.loc 1 112 0 discriminator 3
	addsc.a	%a3, %a5, %d3, 0
	ld.w	%d15, [%a3]0
.LVL12:
	.loc 1 115 0 discriminator 3
	st.b	[%a15]0, %d15
	.loc 1 116 0 discriminator 3
	sh	%d2, %d15, -8
	st.b	[%a15] 1, %d2
	.loc 1 117 0 discriminator 3
	sh	%d2, %d15, -16
	st.b	[%a15] 2, %d2
	.loc 1 118 0 discriminator 3
	sh	%d15, %d15, -24
.LVL13:
	st.b	[%a15] 3, %d15
.LVL14:
.LBE4:
	.loc 1 110 0 discriminator 3
	add	%d4, -1
.LVL15:
	add	%d3, 4
.LVL16:
	loop	%a2, .L7
.LVL17:
.L5:
	ret
.LFE16:
	.size	actBNStoreLE, .-actBNStoreLE
.section .text.actBNCopy,"ax",@progbits
	.align 1
	.global	actBNCopy
	.type	actBNCopy, @function
actBNCopy:
.LFB17:
	.loc 1 141 0
.LVL18:
	.loc 1 144 0
	jz	%d4, .L9
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL19:
.L11:
	.loc 1 146 0 discriminator 3
	ld.w	%d15, [%a5+]4
	st.w	[%a4+]4, %d15
	loop	%a15, .L11
.L9:
	ret
.LFE17:
	.size	actBNCopy, .-actBNCopy
.section .text.actBNGetBitLength,"ax",@progbits
	.align 1
	.global	actBNGetBitLength
	.type	actBNGetBitLength, @function
actBNGetBitLength:
.LFB18:
	.loc 1 161 0
.LVL20:
	.loc 1 162 0
	mov	%d2, 0
	.loc 1 164 0
	jz	%d4, .L14
.LBB5:
	.loc 1 167 0
	add	%d4, -1
.LVL21:
	.loc 1 168 0
	sh	%d3, %d4, 2
	addsc.a	%a15, %a4, %d3, 0
	ld.w	%d15, [%a15]0
	ne	%d2, %d4, 0
	and.eq	%d2, %d15, 0
	jz	%d2, .L15
	add	%d3, -4
	addsc.a	%a4, %a4, %d3, 0
.LVL22:
.L16:
	.loc 1 170 0
	add	%d4, -1
.LVL23:
	.loc 1 168 0
	ld.w	%d15, [%a4+]-4
	ne	%d2, %d4, 0
	and.eq	%d2, %d15, 0
	jnz	%d2, .L16
.L15:
.LVL24:
	.loc 1 173 0
	sh	%d2, %d4, 5
.LVL25:
	.loc 1 174 0
	jz	%d15, .L14
.L19:
	.loc 1 176 0
	add	%d2, 1
.LVL26:
	.loc 1 177 0
	sh	%d15, -1
.LVL27:
	.loc 1 174 0
	jnz	%d15, .L19
.LVL28:
.L14:
.LBE5:
	.loc 1 182 0
	ret
.LFE18:
	.size	actBNGetBitLength, .-actBNGetBitLength
.section .text.actBNSetBit,"ax",@progbits
	.align 1
	.global	actBNSetBit
	.type	actBNSetBit, @function
actBNSetBit:
.LFB19:
	.loc 1 196 0
.LVL29:
	.loc 1 198 0
	sh	%d4, 5
.LVL30:
	.loc 1 197 0
	mov	%d2, 1
	.loc 1 198 0
	jge.u	%d5, %d4, .L23
	.loc 1 204 0
	sh	%d15, %d5, -5
	addsc.a	%a4, %a4, %d15, 2
.LVL31:
	and	%d5, %d5, 31
.LVL32:
	ld.w	%d15, [%a4]0
	insert	%d5, %d15, 1, %d5, 1
	st.w	[%a4]0, %d5
.LVL33:
	.loc 1 205 0
	mov	%d2, 0
.LVL34:
.L23:
	.loc 1 209 0
	ret
.LFE19:
	.size	actBNSetBit, .-actBNSetBit
.section .text.actBNSet,"ax",@progbits
	.align 1
	.global	actBNSet
	.type	actBNSet, @function
actBNSet:
.LFB20:
	.loc 1 224 0
.LVL35:
	.loc 1 229 0
	st.w	[%a4]0, %d5
.LVL36:
	.loc 1 230 0
	jlt.u	%d4, 2, .L25
	add.a	%a4, 4
.LVL37:
	.loc 1 232 0
	mov	%d15, 0
	mov.a	%a15, %d4
	add.a	%a15, -2
.LVL38:
.L27:
	.loc 1 232 0 is_stmt 0 discriminator 3
	st.w	[%a4+]4, %d15
	loop	%a15, .L27
.L25:
	ret
.LFE20:
	.size	actBNSet, .-actBNSet
.section .text.actBNIsZero,"ax",@progbits
	.align 1
	.global	actBNIsZero
	.type	actBNIsZero, @function
actBNIsZero:
.LFB21:
	.loc 1 247 0 is_stmt 1
.LVL39:
	.loc 1 248 0
	mov	%d2, 1
	.loc 1 251 0
	jz	%d4, .L30
	.loc 1 253 0
	ld.w	%d15, [%a4]0
	.loc 1 255 0
	mov	%d2, 0
	add.a	%a4, 4
.LVL40:
	.loc 1 253 0
	mov.a	%a15, %d4
	add.a	%a15, -1
	jz	%d15, .L31
	j	.L30
.LVL41:
.L32:
	ld.w	%d15, [%a4+]4
	jnz	%d15, .L35
.L31:
	.loc 1 251 0 discriminator 2
	loop	%a15, .L32
	.loc 1 248 0
	mov	%d2, 1
	ret
.L35:
	.loc 1 255 0
	mov	%d2, 0
.L30:
.LVL42:
	.loc 1 260 0
	ret
.LFE21:
	.size	actBNIsZero, .-actBNIsZero
.section .text.actBNCompare,"ax",@progbits
	.align 1
	.global	actBNCompare
	.type	actBNCompare, @function
actBNCompare:
.LFB22:
	.loc 1 274 0
.LVL43:
	.loc 1 275 0
	mov	%d2, 17
	.loc 1 278 0
	jz	%d4, .L37
	.loc 1 280 0
	add	%d15, %d4, -1
	sh	%d15, 2
	addsc.a	%a15, %a4, %d15, 0
	ld.w	%d3, [%a15]0
	addsc.a	%a15, %a5, %d15, 0
	ld.w	%d5, [%a15]0
	.loc 1 282 0
	mov	%d2, 16
	.loc 1 280 0
	jlt.u	%d3, %d5, .L37
	.loc 1 287 0
	mov	%d2, 18
	add	%d15, -4
	addsc.a	%a4, %a4, %d15, 0
.LVL44:
	addsc.a	%a5, %a5, %d15, 0
.LVL45:
	.loc 1 285 0
	mov.a	%a15, %d4
	add.a	%a15, -1
	jge.u	%d5, %d3, .L38
	j	.L37
.LVL46:
.L39:
	.loc 1 280 0
	ld.w	%d15, [%a4]0
	ld.w	%d2, [%a5]0
	jlt.u	%d15, %d2, .L43
	add.a	%a4, -4
	add.a	%a5, -4
	.loc 1 285 0
	jlt.u	%d2, %d15, .L44
.L38:
	.loc 1 278 0 discriminator 2
	loop	%a15, .L39
	.loc 1 275 0
	mov	%d2, 17
	ret
.L43:
	.loc 1 282 0
	mov	%d2, 16
	ret
.L44:
	.loc 1 287 0
	mov	%d2, 18
.L37:
.LVL47:
	.loc 1 297 0
	ret
.LFE22:
	.size	actBNCompare, .-actBNCompare
.section .text.actBNSetOctetString,"ax",@progbits
	.align 1
	.global	actBNSetOctetString
	.type	actBNSetOctetString, @function
actBNSetOctetString:
.LFB23:
	.loc 1 312 0
.LVL48:
	mov.aa	%a13, %a4
	mov	%d9, %d4
	mov.aa	%a12, %a5
	mov	%d8, %d5
	.loc 1 313 0
	sh	%d15, %d5, -2
.LVL49:
	.loc 1 314 0
	addi	%d10, %d5, -1
.LVL50:
	.loc 1 316 0
	mov	%d5, 0
.LVL51:
	call	actBNSet
.LVL52:
	.loc 1 317 0
	min.u	%d6, %d15, %d9
.LVL53:
	.loc 1 320 0
	jz	%d6, .L46
	mov.a	%a15, %d8
	add.a	%a15, -4
	add.a	%a15, %a12
	mov.aa	%a3, %a13
	mov.a	%a2, %d6
	add.a	%a2, -1
.LVL54:
.L47:
	.loc 1 328 0 discriminator 3
	ld.bu	%d3, [%a15] 3
	ld.bu	%d2, [%a15]0
	sh	%d2, %d2, 24
	or	%d15, %d3, %d2
	ld.bu	%d2, [%a15] 1
	sh	%d3, %d2, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 8
	or	%d15, %d2
	st.w	[%a3+]4, %d15
.LVL55:
	add.a	%a15, -4
.LVL56:
	loop	%a2, .L47
	mul	%d15, %d6, -4
	add	%d10, %d15
.LVL57:
.L46:
	.loc 1 337 0
	sh	%d9, 2
.LVL58:
	jlt.u	%d9, %d8, .L45
	.loc 1 339 0
	and	%d8, %d8, 3
.LVL59:
	jz	%d8, .L45
	.loc 1 341 0
	addsc.a	%a4, %a13, %d6, 2
	rsub	%d8, %d8, 1
.LVL60:
	add	%d8, %d10
	addsc.a	%a15, %a12, %d8, 0
	mov.a	%a5, %d10
	add.a	%a5, 1
	add.a	%a5, %a12
	mov.d	%d15, %a15
	not	%d15
	addsc.a	%a5, %a5, %d15, 0
.LVL61:
.L49:
	.loc 1 341 0 is_stmt 0 discriminator 3
	ld.w	%d15, [%a4]0
	sh	%d15, %d15, 8
	st.w	[%a4]0, %d15
	.loc 1 342 0 is_stmt 1 discriminator 3
	ld.bu	%d2, [%a15+]1
.LVL62:
	or	%d15, %d2
	st.w	[%a4]0, %d15
.LVL63:
	loop	%a5, .L49
.LVL64:
.L45:
	ret
.LFE23:
	.size	actBNSetOctetString, .-actBNSetOctetString
.section .text.actBNSetOctetStringROM,"ax",@progbits
	.align 1
	.global	actBNSetOctetStringROM
	.type	actBNSetOctetStringROM, @function
actBNSetOctetStringROM:
.LFB24:
	.loc 1 359 0
.LVL65:
	mov.aa	%a13, %a4
	mov	%d9, %d4
	mov.aa	%a12, %a5
	mov	%d8, %d5
	.loc 1 360 0
	sh	%d15, %d5, -2
.LVL66:
	.loc 1 361 0
	addi	%d10, %d5, -1
.LVL67:
	.loc 1 363 0
	mov	%d5, 0
.LVL68:
	call	actBNSet
.LVL69:
	.loc 1 364 0
	min.u	%d6, %d15, %d9
.LVL70:
	.loc 1 367 0
	jz	%d6, .L53
	mov.a	%a15, %d8
	add.a	%a15, -4
	add.a	%a15, %a12
	mov.aa	%a3, %a13
	mov.a	%a2, %d6
	add.a	%a2, -1
.LVL71:
.L54:
	.loc 1 375 0 discriminator 3
	ld.bu	%d3, [%a15] 3
	ld.bu	%d2, [%a15]0
	sh	%d2, %d2, 24
	or	%d15, %d3, %d2
	ld.bu	%d2, [%a15] 1
	sh	%d3, %d2, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 8
	or	%d15, %d2
	st.w	[%a3+]4, %d15
.LVL72:
	add.a	%a15, -4
.LVL73:
	loop	%a2, .L54
	mul	%d15, %d6, -4
	add	%d10, %d15
.LVL74:
.L53:
	.loc 1 384 0
	sh	%d9, 2
.LVL75:
	jlt.u	%d9, %d8, .L52
	.loc 1 386 0
	and	%d8, %d8, 3
.LVL76:
	jz	%d8, .L52
	.loc 1 388 0
	addsc.a	%a4, %a13, %d6, 2
	rsub	%d8, %d8, 1
.LVL77:
	add	%d8, %d10
	addsc.a	%a15, %a12, %d8, 0
	mov.a	%a5, %d10
	add.a	%a5, 1
	add.a	%a5, %a12
	mov.d	%d15, %a15
	not	%d15
	addsc.a	%a5, %a5, %d15, 0
.LVL78:
.L56:
	.loc 1 388 0 is_stmt 0 discriminator 3
	ld.w	%d15, [%a4]0
	sh	%d15, %d15, 8
	st.w	[%a4]0, %d15
	.loc 1 389 0 is_stmt 1 discriminator 3
	ld.bu	%d2, [%a15+]1
.LVL79:
	or	%d15, %d2
	st.w	[%a4]0, %d15
.LVL80:
	loop	%a5, .L56
.LVL81:
.L52:
	ret
.LFE24:
	.size	actBNSetOctetStringROM, .-actBNSetOctetStringROM
.section .text.actBNOctetString,"ax",@progbits
	.align 1
	.global	actBNOctetString
	.type	actBNOctetString, @function
actBNOctetString:
.LFB25:
	.loc 1 407 0
.LVL82:
	mov.aa	%a12, %a4
	mov	%d8, %d4
	mov.aa	%a13, %a5
	mov	%d9, %d5
.LVL83:
	.loc 1 414 0
	mov	%d4, 0
.LVL84:
	mov	%d5, %d8
.LVL85:
	call	VStdLib_MemSet
.LVL86:
	.loc 1 408 0
	sh	%d4, %d8, -2
.LVL87:
	.loc 1 415 0
	min.u	%d4, %d4, %d9
.LVL88:
	.loc 1 412 0
	mov	%d3, %d8
	.loc 1 418 0
	jz	%d4, .L60
	mov	%d2, 0
	mov.a	%a2, %d4
	add.a	%a2, -1
.LVL89:
.L61:
	mov.a	%a3, %d2
	sub.a	%a15, %a13, %a3
	.loc 1 431 0 discriminator 3
	ld.w	%d15, [%a15]0
.LVL90:
	.loc 1 433 0 discriminator 3
	addsc.a	%a15, %a12, %d2, 0
	addsc.a	%a15, %a15, %d8, 0
	st.b	[%a15] -1, %d15
	.loc 1 434 0 discriminator 3
	sh	%d3, %d15, -8
.LVL91:
	.loc 1 436 0 discriminator 3
	st.b	[%a15] -2, %d3
	.loc 1 437 0 discriminator 3
	sh	%d3, %d15, -16
.LVL92:
	.loc 1 439 0 discriminator 3
	st.b	[%a15] -3, %d3
.LVL93:
	.loc 1 440 0 discriminator 3
	sh	%d15, %d15, -24
	.loc 1 442 0 discriminator 3
	st.b	[%a15] -4, %d15
	add	%d2, -4
.LVL94:
	loop	%a2, .L61
	mul	%d3, %d4, -4
.LVL95:
	add	%d3, %d8
.LVL96:
.L60:
	.loc 1 450 0
	sh	%d9, 2
.LVL97:
	jlt.u	%d9, %d8, .L59
	.loc 1 452 0
	and	%d8, %d8, 3
.LVL98:
	jz	%d8, .L59
	.loc 1 454 0
	addsc.a	%a13, %a13, %d4, 2
.LVL99:
	ld.w	%d15, [%a13]0
.LVL100:
	mov	%d2, %d8
	not	%d8
.LVL101:
	mov.a	%a15, %d2
	add.a	%a15, -1
.LVL102:
.L63:
	.loc 1 459 0 discriminator 3
	addsc.a	%a2, %a12, %d2, 0
	addsc.a	%a2, %a2, %d3, 0
	addsc.a	%a2, %a2, %d8, 0
	st.b	[%a2]0, %d15
	.loc 1 460 0 discriminator 3
	sh	%d15, -8
.LVL103:
	.loc 1 456 0 discriminator 3
	add	%d2, -1
.LVL104:
	loop	%a15, .L63
.LVL105:
.L59:
	ret
.LFE25:
	.size	actBNOctetString, .-actBNOctetString
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
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../BSW/VStdLib/vstdlib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8b2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x14c
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
	.uaword	0x1b6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x1b6
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
	.uaword	0x16c
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1a8
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21d
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x235
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x25b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x284
	.uleb128 0x5
	.uaword	0x24e
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x25b
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x25b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x289
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x5
	.byte	0x81
	.uaword	0x1cb
	.uleb128 0x6
	.byte	0x1
	.string	"actBNLoadLE"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35e
	.uleb128 0x7
	.string	"bigNum"
	.byte	0x1
	.byte	0x3d
	.uaword	0x2bc
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"bytes"
	.byte	0x1
	.byte	0x3e
	.uaword	0x27e
	.byte	0x1
	.byte	0x65
	.uleb128 0x8
	.string	"byteLength"
	.byte	0x1
	.byte	0x3f
	.uaword	0x35e
	.uaword	.LLST0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x41
	.uaword	0x269
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x42
	.uaword	0x269
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x46
	.uaword	0x289
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x5
	.uaword	0x25b
	.uleb128 0x6
	.byte	0x1
	.string	"actBNStoreLE"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3f0
	.uleb128 0x7
	.string	"bytes"
	.byte	0x1
	.byte	0x67
	.uaword	0x3f0
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"bigNum"
	.byte	0x1
	.byte	0x68
	.uaword	0x3f6
	.byte	0x1
	.byte	0x65
	.uleb128 0x8
	.string	"bnLength"
	.byte	0x1
	.byte	0x69
	.uaword	0x401
	.uaword	.LLST3
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x6b
	.uaword	0x25b
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"bytesPtr"
	.byte	0x1
	.byte	0x6c
	.uaword	0x3f0
	.uaword	.LLST4
	.uleb128 0xd
	.uaword	.LBB4
	.uaword	.LBE4
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x70
	.uaword	0x289
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x24e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3fc
	.uleb128 0x5
	.uaword	0x289
	.uleb128 0x5
	.uaword	0x269
	.uleb128 0x6
	.byte	0x1
	.string	"actBNCopy"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x459
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x8c
	.uaword	0x2bc
	.uaword	.LLST6
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x8c
	.uaword	0x3f6
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8c
	.uaword	0x401
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x8e
	.uaword	0x269
	.uaword	.LLST8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"actBNGetBitLength"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x269
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4dd
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x9f
	.uaword	0x3f6
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa0
	.uaword	0x401
	.uaword	.LLST10
	.uleb128 0xc
	.string	"bits"
	.byte	0x1
	.byte	0xa2
	.uaword	0x269
	.uaword	.LLST11
	.uleb128 0xd
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0xc
	.string	"high_digit"
	.byte	0x1
	.byte	0xa6
	.uaword	0x289
	.uaword	.LLST12
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.uaword	0x269
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"actBNSetBit"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x29b
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x540
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0xc1
	.uaword	0x2bc
	.uaword	.LLST14
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc2
	.uaword	0x401
	.uaword	.LLST15
	.uleb128 0x8
	.string	"bit_pos"
	.byte	0x1
	.byte	0xc3
	.uaword	0x401
	.uaword	.LLST16
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc5
	.uaword	0x29b
	.uaword	.LLST17
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"actBNSet"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x594
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0xdd
	.uaword	0x2bc
	.uaword	.LLST18
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xde
	.uaword	0x401
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.string	"value"
	.byte	0x1
	.byte	0xdf
	.uaword	0x3fc
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xe1
	.uaword	0x269
	.uaword	.LLST19
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"actBNIsZero"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	0x24e
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ef
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0xf5
	.uaword	0x3f6
	.uaword	.LLST20
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf6
	.uaword	0x401
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf8
	.uaword	0x24e
	.uaword	.LLST21
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.uaword	0x269
	.uaword	.LLST22
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"actBNCompare"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	0x29b
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x3f6
	.uaword	.LLST23
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x3f6
	.uaword	.LLST24
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x111
	.uaword	0x401
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x113
	.uaword	0x29b
	.uaword	.LLST25
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x269
	.uaword	.LLST26
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"actBNSetOctetString"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x711
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x2bc
	.uaword	.LLST27
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x135
	.uaword	0x269
	.uaword	.LLST28
	.uleb128 0x12
	.string	"in"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x27e
	.uaword	.LLST29
	.uleb128 0x12
	.string	"in_len"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x401
	.uaword	.LLST30
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x269
	.uaword	.LLST31
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x139
	.uaword	0x269
	.uaword	.LLST32
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x269
	.uaword	.LLST33
	.uleb128 0x18
	.uaword	.LVL52
	.uaword	0x540
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"actBNSetOctetStringROM"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7c7
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x2bc
	.uaword	.LLST34
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x165
	.uaword	0x269
	.uaword	.LLST35
	.uleb128 0x12
	.string	"in"
	.byte	0x1
	.uahalf	0x166
	.uaword	0x27e
	.uaword	.LLST36
	.uleb128 0x12
	.string	"in_len"
	.byte	0x1
	.uahalf	0x166
	.uaword	0x401
	.uaword	.LLST37
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x168
	.uaword	0x269
	.uaword	.LLST38
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x168
	.uaword	0x269
	.uaword	.LLST39
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x169
	.uaword	0x269
	.uaword	.LLST40
	.uleb128 0x18
	.uaword	.LVL69
	.uaword	0x540
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"actBNOctetString"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x889
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x3f0
	.uaword	.LLST41
	.uleb128 0x12
	.string	"out_len"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x269
	.uaword	.LLST42
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x3f6
	.uaword	.LLST43
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x196
	.uaword	0x401
	.uaword	.LLST44
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x269
	.uaword	.LLST45
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x198
	.uaword	0x269
	.uaword	.LLST46
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x289
	.uaword	.LLST47
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x269
	.uaword	.LLST48
	.uleb128 0x18
	.uaword	.LVL86
	.uaword	0x889
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x5
	.uahalf	0x431
	.byte	0x1
	.byte	0x1
	.uaword	0x8b3
	.uleb128 0x1b
	.uaword	0x8b3
	.uleb128 0x1b
	.uaword	0x16c
	.uleb128 0x1b
	.uaword	0x2c2
	.byte	0
	.uleb128 0x1c
	.byte	0x4
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
	.uleb128 0x7
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x12
	.byte	0x7f
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
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
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LFE17
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
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL43
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL48
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52-1
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL58
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL52-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL59
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL65
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL65
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL75
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL65
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL68
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL76
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL70
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL67
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL82
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL98
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL82
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL86-1
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL99
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL85
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL97
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL101
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL87
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x53
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0
	.uaword	0
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
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"offset"
.LASF1:
	.string	"length"
.LASF2:
	.string	"retVal"
.LASF3:
	.string	"digits"
	.extern	VStdLib_MemSet,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
