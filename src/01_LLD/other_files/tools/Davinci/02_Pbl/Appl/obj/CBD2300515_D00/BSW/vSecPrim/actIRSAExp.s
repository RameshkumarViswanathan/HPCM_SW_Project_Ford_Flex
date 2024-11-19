	.file	"actIRSAExp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actRSAInitExponentiation,"ax",@progbits
	.align 1
	.global	actRSAInitExponentiation
	.type	actRSAInitExponentiation, @function
actRSAInitExponentiation:
.LFB18:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.c"
	.loc 1 289 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
.LVL1:
	.loc 1 294 0
	add	%d15, %d4, 3
	sh	%d15, -2
.LVL2:
.LBB6:
.LBB7:
	.loc 1 144 0
	eq	%d8, %d6, 2
	mov	%d2, 249
	sel	%d8, %d8, %d2, 251
.LVL3:
	.loc 1 147 0
	jlt.u	%d4, %d5, .L19
	.loc 1 158 0
	ge.u	%d2, %d15, 65
	.loc 1 160 0
	mov	%d8, 244
.LVL4:
	.loc 1 158 0
	jnz	%d2, .L19
	j	.L20
.LVL5:
.L21:
.LBE7:
.LBE6:
	.loc 1 342 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL6:
	.loc 1 345 0
	lea	%a4, [%a15] 16
	ld.a	%a5, [%a15]0
	call	actBNOddInvModBase
.LVL7:
	.loc 1 348 0
	lea	%a12, [%a15] 800
.LVL8:
	.loc 1 349 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL9:
	.loc 1 352 0
	mov.aa	%a4, %a12
	mov	%d4, %d15
	mov.a	%a5, %d12
	mov	%d5, %d13
	call	actBNSetOctetStringROM
.LVL10:
	.loc 1 353 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL11:
.LBB8:
.LBB9:
	.loc 1 186 0
	jeq	%d10, 2, .L15
.LVL12:
	.loc 1 188 0
	jeq	%d10, 1, .L7
	.loc 1 186 0
	mov	%d9, 251
.LVL13:
	.loc 1 190 0
	jnz	%d10, .L6
	.loc 1 193 0
	mov.aa	%a4, %a12
	mov	%d4, %d15
	call	actBNIsZero
.LVL14:
	jeq	%d2, 1, .L8
	j	.L9
.LVL15:
.L15:
	.loc 1 186 0
	mov	%d9, 249
.LVL16:
.L6:
	.loc 1 201 0
	ld.w	%d2, [%a15] 800
	jge.u	%d2, 2, .L10
	.loc 1 203 0
	lea	%a4, [%a15] 804
	add	%d4, %d15, -1
	call	actBNIsZero
.LVL17:
	jne	%d2, 1, .L9
	j	.L8
.L10:
	.loc 1 208 0
	jnz.t	%d2, 0, .L9
.LVL18:
.L8:
	.loc 1 218 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL19:
	mov	%d8, %d9
.LVL20:
.L7:
.LBE9:
.LBE8:
	.loc 1 356 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL21:
	j	.L19
.LVL22:
.L18:
	.loc 1 338 0
	mov	%d8, 144
	j	.L19
.LVL23:
.L9:
.LBB11:
.LBB10:
	.loc 1 218 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL24:
	.loc 1 223 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a13
	mov	%d4, %d15
	call	actBNCompare
.LVL25:
	lt.u	%d2, %d2, 17
	sel	%d8, %d2, %d8, %d9
.LVL26:
	j	.L7
.LVL27:
.L20:
	st.a	[%SP] 4, %a7
	mov	%d10, %d6
	mov.aa	%a15, %a6
	mov	%d13, %d5
	mov.d	%d12, %a5
	mov	%d8, %d4
	mov.aa	%a12, %a4
.LVL28:
.LBE10:
.LBE11:
	.loc 1 303 0
	mov.aa	%a4, %a7
.LVL29:
	call	actWatchdogTriggerFunction
.LVL30:
	.loc 1 306 0
	lea	%a13, [%a15] 1056
	st.a	[%a15]0, %a13
	.loc 1 307 0
	lea	%a14, [%a15] 540
	st.a	[%a15] 12, %a14
	.loc 1 308 0
	st.w	[%a15] 4, %d15
	.loc 1 309 0
	st.w	[%a15] 8, %d8
	.loc 1 310 0
	mov.aa	%a4, %a13
	mov	%d4, %d15
	mov.aa	%a5, %a12
	mov	%d5, %d8
	call	actBNSetOctetStringROM
.LVL31:
	.loc 1 320 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL32:
	.loc 1 323 0
	lea	%a12, [%a15] 20
.LVL33:
	.loc 1 325 0
	sh	%d8, %d15, 1
.LVL34:
	addi	%d9, %d8, 1
.LVL35:
	.loc 1 326 0
	mov.aa	%a4, %a12
	mov	%d4, %d9
	mov	%d5, 0
	call	actBNSet
.LVL36:
	.loc 1 327 0
	addsc.a	%a2, %a12, %d8, 2
	mov	%d2, 1
	st.w	[%a2]0, %d2
	.loc 1 330 0
	ld.a	%a4, [%SP] 4
	call	actWatchdogTriggerFunction
.LVL37:
	.loc 1 333 0
	mov.aa	%a4, %a12
	mov	%d4, %d9
	ld.a	%a5, [%a15]0
	mov	%d5, %d15
	mov.aa	%a6, %a14
	ld.a	%a7, [%SP] 4
	call	actBNReduce
.LVL38:
	mov	%d8, %d2
.LVL39:
	.loc 1 335 0
	jnz	%d2, .L18
	j	.L21
.LVL40:
.L19:
	.loc 1 360 0
	mov	%d2, %d8
	ret
.LFE18:
	.size	actRSAInitExponentiation, .-actRSAInitExponentiation
.section .text.actRSAExponentiation,"ax",@progbits
	.align 1
	.global	actRSAExponentiation
	.type	actRSAExponentiation, @function
actRSAExponentiation:
.LFB19:
	.loc 1 387 0
.LVL41:
	sub.a	%SP, 32
.LCFI1:
	mov.aa	%a14, %a4
	mov	%d8, %d4
	mov.aa	%a12, %a5
	mov.aa	%a13, %a6
	mov.aa	%a15, %a7
.LVL42:
	.loc 1 390 0
	ld.w	%d9, [%a7] 4
.LVL43:
	.loc 1 391 0
	ld.w	%d15, [%a7] 8
.LVL44:
	.loc 1 399 0
	ld.a	%a4, [%SP] 32
.LVL45:
	call	actWatchdogTriggerFunction
.LVL46:
.LBB15:
.LBB16:
	.loc 1 253 0
	jz.a	%a12, .L23
	ld.w	%d4, [%a13]0
	.loc 1 258 0
	ge.u	%d2, %d15, %d8
	mov	%d3, 244
	sel	%d2, %d2, %d3, 144
	.loc 1 253 0
	jlt.u	%d4, %d15, .L33
	j	.L23
.LVL47:
.L28:
.LBE16:
.LBE15:
	.loc 1 461 0
	mov.aa	%a4, %a12
	mov	%d4, %d15
	ld.a	%a5, [%SP] 16
	mov	%d5, %d9
	call	actBNOctetString
.LVL48:
	.loc 1 462 0
	st.w	[%a13]0, %d15
.L29:
	.loc 1 464 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL49:
	mov	%d2, 0
	ret
.LVL50:
.L35:
	.loc 1 408 0
	lea	%a2, [%a15] 800
	st.a	[%SP] 12, %a2
.LVL51:
	.loc 1 409 0
	lea	%a2, [%a15] 20
.LVL52:
	st.a	[%SP] 20, %a2
.LVL53:
	.loc 1 410 0
	lea	%a2, [%a15] 276
.LVL54:
	st.a	[%SP] 16, %a2
.LVL55:
	.loc 1 414 0
	mov.d	%d3, %a15
	addi	%d2, %d3, 1312
	st.w	[%SP] 28, %d2
.LVL56:
	.loc 1 417 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL57:
	.loc 1 421 0
	ld.a	%a4, [%SP] 20
	mov	%d4, %d9
	mov.aa	%a5, %a14
	mov	%d5, %d8
	call	actBNSetOctetString
.LVL58:
	.loc 1 422 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL59:
	.loc 1 425 0
	ld.a	%a4, [%SP] 20
	ld.a	%a5, [%a15]0
	mov	%d4, %d9
	call	actBNCompare
.LVL60:
	ge.u	%d3, %d2, 17
	.loc 1 427 0
	mov	%d2, 144
	.loc 1 425 0
	jnz	%d3, .L33
	j	.L34
.LVL61:
.L23:
.LBB18:
.LBB17:
	.loc 1 258 0
	mov	%d2, 144
	jlt.u	%d15, %d8, .L33
	j	.L35
.LVL62:
.L34:
.LBE17:
.LBE18:
	.loc 1 433 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL63:
	.loc 1 437 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	ld.a	%a4, [%SP] 20
	ld.a	%a5, [%a15] 12
	lea	%a14, [%SP] 32
.LVL64:
	ld.a	%a6, [+%a14]-4
.LVL65:
	mov.aa	%a7, %a15
	call	actBNMontMulCopy
.LVL66:
	.loc 1 438 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL67:
	.loc 1 442 0
	st.a	[%SP]0, %a14
	ld.w	%d3, [%SP] 32
	st.w	[%SP] 4, %d3
	ld.a	%a4, [%SP] 20
	ld.a	%a5, [%SP] 12
	ld.a	%a6, [%SP] 16
	mov.aa	%a7, %a15
	call	actBNModExp
.LVL68:
	.loc 1 443 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL69:
.LBB19:
	.loc 1 450 0
	ld.a	%a4, [%SP] 12
	mov	%d4, %d9
	mov	%d5, 0
	call	actBNSet
.LVL70:
	.loc 1 451 0
	mov	%d2, 1
	st.w	[%a15] 800, %d2
	.loc 1 452 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	ld.a	%a4, [%SP] 16
	ld.a	%a5, [%SP] 12
	ld.a	%a6, [%SP] 28
	mov.aa	%a7, %a15
	call	actBNMontMulCopy
.LVL71:
.LBE19:
	.loc 1 454 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL72:
	.loc 1 457 0
	jnz.a	%a12, .L28
	j	.L29
.LVL73:
.L33:
	.loc 1 469 0
	ret
.LFE19:
	.size	actRSAExponentiation, .-actRSAExponentiation
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xedb
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x30
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
	.uaword	0x218
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x230
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x249
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x27d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a6
	.uleb128 0x5
	.uaword	0x262
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x27d
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x27d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x337
	.uleb128 0x7
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x337
	.byte	0
	.uleb128 0x7
	.string	"m_length"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x28b
	.byte	0x4
	.uleb128 0x7
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x28b
	.byte	0x8
	.uleb128 0x7
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x337
	.byte	0xc
	.uleb128 0x7
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x2ab
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ab
	.uleb128 0x8
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x2de
	.uleb128 0x9
	.uahalf	0x204
	.byte	0x4
	.uahalf	0x495
	.uaword	0x378
	.uleb128 0x7
	.string	"cipher"
	.byte	0x4
	.uahalf	0x497
	.uaword	0x378
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x498
	.uaword	0x388
	.uahalf	0x100
	.byte	0
	.uleb128 0xb
	.uaword	0x2ab
	.uaword	0x388
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x2ab
	.uaword	0x398
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.string	"actRSACipherAndMSgStruct"
	.byte	0x4
	.uahalf	0x499
	.uaword	0x34f
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x4
	.uahalf	0x49f
	.uaword	0x3e9
	.uleb128 0xe
	.string	"tmpInit"
	.byte	0x4
	.uahalf	0x4a1
	.uaword	0x3e9
	.uleb128 0xe
	.string	"cipherAndMsg"
	.byte	0x4
	.uahalf	0x4a2
	.uaword	0x398
	.byte	0
	.uleb128 0xb
	.uaword	0x2ab
	.uaword	0x3f9
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0x81
	.byte	0
	.uleb128 0x9
	.uahalf	0x624
	.byte	0x4
	.uahalf	0x49b
	.uaword	0x46e
	.uleb128 0x7
	.string	"wsRSARing"
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x33d
	.byte	0
	.uleb128 0x7
	.string	"tmp"
	.byte	0x4
	.uahalf	0x4a3
	.uaword	0x3b9
	.byte	0x14
	.uleb128 0xf
	.string	"RRBuffer"
	.byte	0x4
	.uahalf	0x4a5
	.uaword	0x388
	.uahalf	0x21c
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x4a6
	.uaword	0x378
	.uahalf	0x320
	.uleb128 0xf
	.string	"modulusBuffer"
	.byte	0x4
	.uahalf	0x4a7
	.uaword	0x378
	.uahalf	0x420
	.uleb128 0xf
	.string	"tmpExp"
	.byte	0x4
	.uahalf	0x4a8
	.uaword	0x388
	.uahalf	0x520
	.byte	0
	.uleb128 0x8
	.string	"actRSAPRIMSTRUCT"
	.byte	0x4
	.uahalf	0x4aa
	.uaword	0x3f9
	.uleb128 0x10
	.string	"actRSAInitExpCheckInputParameters"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0x4f9
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8a
	.uaword	0x28b
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8b
	.uaword	0x28b
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x1
	.byte	0x8c
	.uaword	0x28b
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8d
	.uaword	0x26f
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8f
	.uaword	0x2bd
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.byte	0x90
	.uaword	0x27d
	.byte	0
	.uleb128 0x10
	.string	"actRSAInitExpCheckExponent"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0x571
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0xb3
	.uaword	0x26f
	.uleb128 0x13
	.string	"e"
	.byte	0x1
	.byte	0xb4
	.uaword	0x571
	.uleb128 0x13
	.string	"modulus"
	.byte	0x1
	.byte	0xb5
	.uaword	0x571
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb6
	.uaword	0x28b
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.byte	0xb7
	.uaword	0x57e
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xb9
	.uaword	0x2bd
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.byte	0xba
	.uaword	0x27d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x577
	.uleb128 0x5
	.uaword	0x2ab
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x57c
	.uleb128 0x15
	.byte	0x1
	.string	"actRSAInitExponentiation"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	0x2bd
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x903
	.uleb128 0x16
	.string	"modulus"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x2a0
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x28b
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x2a0
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x28b
	.uaword	.LLST3
	.uleb128 0x16
	.string	"wksp"
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x903
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x26f
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x120
	.uaword	0x57e
	.uaword	.LLST6
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x122
	.uaword	0x2bd
	.uaword	.LLST7
	.uleb128 0x19
	.string	"n_ring"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x909
	.uaword	.LLST8
	.uleb128 0x19
	.string	"n_bytes"
	.byte	0x1
	.uahalf	0x125
	.uaword	0x28b
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x126
	.uaword	0x28b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.string	"tmp_len"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x28b
	.uaword	.LLST10
	.uleb128 0x19
	.string	"tmp"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x337
	.uaword	.LLST11
	.uleb128 0x19
	.string	"e"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x337
	.uaword	.LLST12
	.uleb128 0x1b
	.uaword	0x487
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x6f2
	.uleb128 0x1c
	.uaword	0x4d7
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	0x4cc
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.uaword	0x4c1
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	0x4b6
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x1f
	.uaword	0x4e2
	.byte	0
	.uleb128 0x20
	.uaword	0x4ed
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4f9
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x163
	.uaword	0x7c7
	.uleb128 0x1c
	.uaword	0x54f
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	0x544
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x535
	.uaword	.LLST19
	.uleb128 0x1c
	.uaword	0x52c
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	0x521
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x20
	.uaword	0x55a
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	0x565
	.uaword	.LLST23
	.uleb128 0x23
	.uaword	.LVL14
	.uaword	0xccd
	.uaword	0x764
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL17
	.uaword	0xccd
	.uaword	0x77f
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 -1
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 804
	.byte	0
	.uleb128 0x23
	.uaword	.LVL19
	.uaword	0xcf3
	.uaword	0x794
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL24
	.uaword	0xcf3
	.uaword	0x7a9
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.uaword	.LVL25
	.uaword	0xd1e
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL6
	.uaword	0xcf3
	.uaword	0x7dc
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL7
	.uaword	0xd4a
	.uaword	0x7f0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.uleb128 0x23
	.uaword	.LVL9
	.uaword	0xcf3
	.uaword	0x805
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL10
	.uaword	0xd73
	.uaword	0x82b
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL11
	.uaword	0xcf3
	.uaword	0x840
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL21
	.uaword	0xcf3
	.uaword	0x855
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL30
	.uaword	0xcf3
	.uaword	0x86a
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL31
	.uaword	0xd73
	.uaword	0x890
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL32
	.uaword	0xcf3
	.uaword	0x8a5
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL36
	.uaword	0xdaa
	.uaword	0x8c4
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL37
	.uaword	0xcf3
	.uaword	0x8d9
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.uaword	.LVL38
	.uaword	0xdcd
	.uleb128 0x24
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x46e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x33d
	.uleb128 0x10
	.string	"actRSAExpInputCheck"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0x977
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf6
	.uaword	0x2a0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf7
	.uaword	0x977
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x1
	.byte	0xf8
	.uaword	0x28b
	.uleb128 0x13
	.string	"modulusLengthBytes"
	.byte	0x1
	.byte	0xf9
	.uaword	0x28b
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfb
	.uaword	0x2bd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x97d
	.uleb128 0x5
	.uaword	0x28b
	.uleb128 0x15
	.byte	0x1
	.string	"actRSAExponentiation"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.uaword	0x2bd
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xca6
	.uleb128 0x16
	.string	"cipher"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x2a0
	.uaword	.LLST24
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x28b
	.uaword	.LLST25
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x17f
	.uaword	0xca6
	.uaword	.LLST26
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x180
	.uaword	0xcac
	.uaword	.LLST27
	.uleb128 0x16
	.string	"wksp"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x903
	.uaword	.LLST28
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x182
	.uaword	0x57e
	.uaword	.LLST29
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x184
	.uaword	0x2bd
	.uaword	.LLST30
	.uleb128 0x19
	.string	"n_ring"
	.byte	0x1
	.uahalf	0x185
	.uaword	0xcb2
	.uaword	.LLST31
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x186
	.uaword	0x28b
	.byte	0x1
	.byte	0x59
	.uleb128 0x26
	.string	"n_bytes"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x28b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.string	"e"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x337
	.uaword	.LLST32
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x337
	.uaword	.LLST33
	.uleb128 0x19
	.string	"m"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x337
	.uaword	.LLST34
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xcbd
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x262
	.uaword	.LLST35
	.uleb128 0x21
	.uaword	0x90f
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x192
	.uaword	0xad9
	.uleb128 0x1d
	.uaword	0x951
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.uaword	0x946
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.uaword	0x93b
	.byte	0x1
	.byte	0x6d
	.uleb128 0x1d
	.uaword	0x930
	.byte	0x1
	.byte	0x6c
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.uaword	0x96b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0xb3d
	.uleb128 0x19
	.string	"one"
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x337
	.uaword	.LLST36
	.uleb128 0x23
	.uaword	.LVL70
	.uaword	0xdaa
	.uaword	0xb16
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.uaword	.LVL71
	.uaword	0xe07
	.uleb128 0x24
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8e
	.sleb128 -16
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 -12
	.byte	0x6
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL46
	.uaword	0xcf3
	.uaword	0xb52
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL48
	.uaword	0xe3d
	.uaword	0xb79
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL49
	.uaword	0xcf3
	.uaword	0xb8e
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL57
	.uaword	0xcf3
	.uaword	0xba3
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL58
	.uaword	0xe6e
	.uaword	0xbca
	.uleb128 0x24
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL59
	.uaword	0xcf3
	.uaword	0xbdf
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL60
	.uaword	0xd1e
	.uaword	0xbfa
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL63
	.uaword	0xcf3
	.uaword	0xc0f
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL66
	.uaword	0xe07
	.uaword	0xc32
	.uleb128 0x24
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 -8
	.byte	0x6
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL67
	.uaword	0xcf3
	.uaword	0xc47
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL68
	.uaword	0xea2
	.uaword	0xc7f
	.uleb128 0x24
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x8e
	.sleb128 -12
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8e
	.sleb128 -16
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 -8
	.byte	0x6
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.uleb128 0x24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL69
	.uaword	0xcf3
	.uaword	0xc94
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.uaword	.LVL72
	.uaword	0xcf3
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x262
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28b
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcb8
	.uleb128 0x5
	.uaword	0x33d
	.uleb128 0xb
	.uaword	0x337
	.uaword	0xccd
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"actBNIsZero"
	.byte	0x5
	.uahalf	0x100
	.byte	0x1
	.uaword	0x262
	.byte	0x1
	.uaword	0xcf3
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x97d
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xd1e
	.uleb128 0x29
	.uaword	0x57e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"actBNCompare"
	.byte	0x5
	.uahalf	0x115
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0xd4a
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x97d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNOddInvModBase"
	.byte	0x5
	.uahalf	0x2f9
	.byte	0x1
	.byte	0x1
	.uaword	0xd73
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x571
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNSetOctetStringROM"
	.byte	0x5
	.uahalf	0x13e
	.byte	0x1
	.byte	0x1
	.uaword	0xdaa
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x28b
	.uleb128 0x29
	.uaword	0x2a0
	.uleb128 0x29
	.uaword	0x97d
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"actBNSet"
	.byte	0x5
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uaword	0xdcd
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x97d
	.uleb128 0x29
	.uaword	0x577
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"actBNReduce"
	.byte	0x5
	.uahalf	0x1e8
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0xe07
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x28b
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x28b
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x57e
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNMontMulCopy"
	.byte	0x5
	.uahalf	0x284
	.byte	0x1
	.byte	0x1
	.uaword	0xe3d
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0xcb2
	.uleb128 0x29
	.uaword	0x57e
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNOctetString"
	.byte	0x5
	.uahalf	0x153
	.byte	0x1
	.byte	0x1
	.uaword	0xe6e
	.uleb128 0x29
	.uaword	0xca6
	.uleb128 0x29
	.uaword	0x28b
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x97d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNSetOctetString"
	.byte	0x5
	.uahalf	0x129
	.byte	0x1
	.byte	0x1
	.uaword	0xea2
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0x28b
	.uleb128 0x29
	.uaword	0x2a0
	.uleb128 0x29
	.uaword	0x97d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"actBNModExp"
	.byte	0x5
	.uahalf	0x2a4
	.byte	0x1
	.byte	0x1
	.uaword	0xed8
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x571
	.uleb128 0x29
	.uaword	0x337
	.uleb128 0x29
	.uaword	0xcb2
	.uleb128 0x29
	.uaword	0xed8
	.uleb128 0x29
	.uaword	0x57e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x337
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL33
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL8
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL40
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xe
	.byte	0x8
	.byte	0xf9
	.byte	0x8
	.byte	0xfb
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL27
	.uahalf	0xe
	.byte	0x8
	.byte	0xf9
	.byte	0x8
	.byte	0xfb
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0xe
	.byte	0x8
	.byte	0xf9
	.byte	0x8
	.byte	0xfb
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0xe
	.byte	0x8
	.byte	0xf9
	.byte	0x8
	.byte	0xfb
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL11
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x8
	.byte	0xfb
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL64
	.uaword	.LVL73
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL41
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL46-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL41
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL46-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL41
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL46-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL41
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL65
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL73
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL42
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL42
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL46-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL52
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -20
	.uaword	.LVL65
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL54
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	.LVL65
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL57-1
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -16
	.uaword	.LVL65
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -16
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0
	.uaword	0
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"message"
.LASF6:
	.string	"returnValue"
.LASF9:
	.string	"message_len"
.LASF3:
	.string	"exponent_len"
.LASF7:
	.string	"key_out_of_range"
.LASF5:
	.string	"key_flag"
.LASF8:
	.string	"watchdog"
.LASF10:
	.string	"cipher_len"
.LASF2:
	.string	"modulus_len"
.LASF1:
	.string	"exponent"
.LASF4:
	.string	"n_length"
	.extern	actBNModExp,STT_FUNC,0
	.extern	actBNMontMulCopy,STT_FUNC,0
	.extern	actBNSetOctetString,STT_FUNC,0
	.extern	actBNOctetString,STT_FUNC,0
	.extern	actBNReduce,STT_FUNC,0
	.extern	actBNSet,STT_FUNC,0
	.extern	actBNCompare,STT_FUNC,0
	.extern	actBNIsZero,STT_FUNC,0
	.extern	actBNSetOctetStringROM,STT_FUNC,0
	.extern	actBNOddInvModBase,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
