	.file	"actIRSAPrivateCRT.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.actRSAInitPrivateKeyOperationCRT,"ax",@progbits
	.align 1
	.global	actRSAInitPrivateKeyOperationCRT
	.type	actRSAInitPrivateKeyOperationCRT, @function
actRSAInitPrivateKeyOperationCRT:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
	.loc 1 79 0
.LVL0:
	sub.a	%SP, 24
.LCFI0:
	mov.aa	%a14, %a4
	mov	%d15, %d4
	mov.aa	%a15, %a5
	mov	%d8, %d5
	mov.aa	%a13, %a6
	mov	%d10, %d6
	mov.aa	%a12, %a7
	mov	%d9, %d7
.LVL1:
	.loc 1 92 0
	ld.a	%a4, [%SP] 36
.LVL2:
	call	actWatchdogTriggerFunction
.LVL3:
	ld.w	%d2, [%SP] 28
	lt.u	%d3, %d15, %d10
	or.lt.u	%d3, %d15, %d2
	.loc 1 95 0
	or.lt.u	%d3, %d8, %d9
	.loc 1 97 0
	mov	%d11, 251
	.loc 1 95 0
	jnz	%d3, .L2
	.loc 1 81 0
	add	%d12, %d15, 3
.LVL4:
	sh	%d12, -2
.LVL5:
	.loc 1 82 0
	addi	%d13, %d8, 3
.LVL6:
	sh	%d13, -2
.LVL7:
	.loc 1 104 0
	ge.u	%d2, %d12, 34
	or.ge.u	%d2, %d13, 34
	.loc 1 106 0
	mov	%d11, 244
	.loc 1 104 0
	jnz	%d2, .L2
	.loc 1 104 0 is_stmt 0 discriminator 1
	add	%d14, %d12, %d13
	ge.u	%d2, %d14, 66
	jnz	%d2, .L2
	.loc 1 85 0 is_stmt 1
	ld.a	%a2, [%SP] 32
	lea	%a2, [%a2] 132
	st.a	[%SP] 8, %a2
	.loc 1 86 0
	ld.a	%a3, [%SP] 32
	lea	%a3, [%a3] 264
	st.a	[%SP] 16, %a3
	.loc 1 87 0
	ld.a	%a2, [%SP] 32
	lea	%a2, [%a2] 396
	st.a	[%SP] 20, %a2
	.loc 1 88 0
	ld.a	%a3, [%SP] 32
	lea	%a3, [%a3] 528
	st.a	[%SP] 4, %a3
	.loc 1 90 0
	ld.w	%d2, [%SP] 32
	addi	%d11, %d2, 2380
	.loc 1 111 0
	mov.a	%a4, %d2
	mov	%d4, %d12
	mov.aa	%a5, %a14
	mov	%d5, %d15
	call	actBNSetOctetStringROM
.LVL8:
	.loc 1 112 0
	ld.a	%a4, [%SP] 8
	mov	%d4, %d13
	mov.aa	%a5, %a15
	mov	%d5, %d8
	call	actBNSetOctetStringROM
.LVL9:
	.loc 1 113 0
	ld.a	%a4, [%SP] 16
	mov	%d4, %d12
	mov.aa	%a5, %a13
	mov	%d5, %d10
	call	actBNSetOctetStringROM
.LVL10:
	.loc 1 114 0
	ld.a	%a4, [%SP] 20
	mov	%d4, %d13
	mov.aa	%a5, %a12
	mov	%d5, %d9
	call	actBNSetOctetStringROM
.LVL11:
	.loc 1 115 0
	ld.a	%a4, [%SP] 4
	mov	%d4, %d12
	ld.a	%a5, [%SP] 24
	ld.w	%d5, [%SP] 28
	call	actBNSetOctetStringROM
.LVL12:
	.loc 1 117 0
	ld.a	%a4, [%SP] 36
	call	actWatchdogTriggerFunction
.LVL13:
	.loc 1 121 0
	ld.a	%a4, [%SP] 32
	mov	%d4, %d12
	ld.a	%a5, [%SP] 8
	mov	%d5, %d13
	st.w	[%SP] 12, %d11
	mov.a	%a6, %d11
	mov.a	%a7, 0
	call	actBNMult
.LVL14:
	.loc 1 123 0
	ld.a	%a4, [%SP] 12
	mov	%d4, %d14
	call	actBNGetBitLength
.LVL15:
	add	%d2, 7
	sh	%d2, -3
	ld.a	%a2, [%SP] 32
	st.w	[%a2] 2668, %d2
	.loc 1 126 0
	ld.a	%a4, [%SP] 4
	mov	%d4, %d12
	call	actBNIsZero
.LVL16:
	.loc 1 128 0
	mov	%d11, 251
	.loc 1 126 0
	jeq	%d2, 1, .L2
	.loc 1 130 0
	ld.a	%a4, [%SP] 4
	ld.a	%a5, [%SP] 32
	mov	%d4, %d12
	call	actBNCompare
.LVL17:
	ge.u	%d2, %d2, 17
	jnz	%d2, .L2
	.loc 1 89 0
	ld.a	%a3, [%SP] 32
	lea	%a3, [%a3] 660
	st.a	[%SP] 4, %a3
	.loc 1 136 0
	mov.aa	%a4, %a3
	max.u	%d4, %d12, %d13
	mov	%d5, 0
	call	actBNSet
.LVL18:
	.loc 1 137 0
	mov	%d3, 1
	ld.a	%a2, [%SP] 32
	st.w	[%a2] 660, %d3
	.loc 1 140 0
	mov.aa	%a4, %a2
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a2
	mov	%d4, %d12
	call	actBNSub
.LVL19:
	.loc 1 141 0
	ld.a	%a4, [%SP] 8
	ld.a	%a5, [%SP] 4
	mov.aa	%a6, %a4
	mov	%d4, %d13
	call	actBNSub
.LVL20:
	.loc 1 143 0
	ld.a	%a4, [%SP] 16
	mov	%d4, %d12
	call	actBNIsZero
.LVL21:
	jeq	%d2, 1, .L2
	.loc 1 147 0
	ld.a	%a4, [%SP] 16
	ld.a	%a5, [%SP] 32
	mov	%d4, %d12
	call	actBNCompare
.LVL22:
	ge.u	%d2, %d2, 17
	jnz	%d2, .L2
	.loc 1 151 0
	ld.a	%a4, [%SP] 20
	mov	%d4, %d13
	call	actBNIsZero
.LVL23:
	jeq	%d2, 1, .L2
	.loc 1 155 0
	ld.a	%a4, [%SP] 20
	ld.a	%a5, [%SP] 8
	mov	%d4, %d13
	call	actBNCompare
.LVL24:
	ge.u	%d2, %d2, 17
	jnz	%d2, .L2
	.loc 1 161 0
	ld.a	%a3, [%SP] 32
	st.a	[%a3] 2672, %a14
	.loc 1 162 0
	st.w	[%a3] 2648, %d15
	.loc 1 163 0
	st.a	[%a3] 2676, %a15
	.loc 1 164 0
	st.w	[%a3] 2652, %d8
	.loc 1 165 0
	st.a	[%a3] 2680, %a13
	.loc 1 166 0
	st.w	[%a3] 2656, %d10
	.loc 1 167 0
	st.a	[%a3] 2684, %a12
	.loc 1 168 0
	st.w	[%a3] 2660, %d9
	.loc 1 169 0
	ld.w	%d3, [%SP] 24
	st.w	[%a3] 2688, %d3
	.loc 1 170 0
	ld.w	%d15, [%SP] 28
.LVL25:
	st.w	[%a3] 2664, %d15
.LVL26:
	.loc 1 172 0
	mov	%d11, 0
.LVL27:
.L2:
	.loc 1 177 0
	ld.a	%a4, [%SP] 36
	call	actWatchdogTriggerFunction
.LVL28:
	.loc 1 179 0
	mov	%d2, %d11
	ret
.LFE15:
	.size	actRSAInitPrivateKeyOperationCRT, .-actRSAInitPrivateKeyOperationCRT
.section .text.actRSAPrivateKeyOperationCRT,"ax",@progbits
	.align 1
	.global	actRSAPrivateKeyOperationCRT
	.type	actRSAPrivateKeyOperationCRT, @function
actRSAPrivateKeyOperationCRT:
.LFB16:
	.loc 1 200 0
.LVL29:
	sub.a	%SP, 32
.LCFI1:
	mov.aa	%a13, %a4
	mov	%d8, %d4
	mov.aa	%a14, %a5
	mov.aa	%a12, %a6
	mov.aa	%a15, %a7
	.loc 1 228 0
	ld.w	%d10, [%a7] 2648
.LVL30:
	.loc 1 229 0
	ld.w	%d9, [%a7] 2652
.LVL31:
	.loc 1 230 0
	ld.w	%d15, [%a7] 2668
.LVL32:
	.loc 1 237 0
	ld.a	%a4, [%SP] 32
.LVL33:
	call	actWatchdogTriggerFunction
.LVL34:
	.loc 1 242 0
	mov	%d3, 144
	.loc 1 240 0
	jlt.u	%d15, %d8, .L13
	.loc 1 246 0
	ld.w	%d2, [%a12]0
	.loc 1 248 0
	mov	%d3, 244
	.loc 1 246 0
	jlt.u	%d2, %d15, .L13
	.loc 1 235 0
	add	%d11, %d15, 3
.LVL35:
	sh	%d11, -2
.LVL36:
	.loc 1 253 0
	mov.d	%d2, %a15
	addi	%d12, %d2, 1572
.LVL37:
	.loc 1 259 0
	mov.a	%a4, %d12
	mov	%d4, %d11
	mov.aa	%a5, %a13
	mov	%d5, %d8
	call	actBNSetOctetString
.LVL38:
	.loc 1 261 0
	mov.a	%a4, %d12
	mov	%d4, %d11
	call	actBNIsZero
.LVL39:
	.loc 1 263 0
	mov	%d3, 144
	.loc 1 261 0
	jeq	%d2, 1, .L13
	.loc 1 252 0
	mov.d	%d2, %a15
	addi	%d13, %d2, 2380
.LVL40:
	.loc 1 266 0
	mov.a	%a4, %d12
	mov.a	%a5, %d13
	mov	%d4, %d11
	call	actBNCompare
.LVL41:
	ge.u	%d2, %d2, 17
	.loc 1 268 0
	mov	%d3, 144
	.loc 1 266 0
	jnz	%d2, .L13
.LVL42:
	.loc 1 286 0
	ld.a	%a4, [%a15] 2676
	mov	%d4, %d9
	ld.a	%a5, [%a15] 2684
	ld.w	%d5, [%a15] 2660
	mov.aa	%a6, %a15
	mov	%d6, 1
	ld.a	%a7, [%SP] 32
	call	actRSAInitExponentiation
.LVL43:
	.loc 1 290 0
	mov	%d3, %d2
	.loc 1 288 0
	jnz	%d2, .L13
	.loc 1 234 0
	addi	%d14, %d9, 3
.LVL44:
	sh	%d14, -2
.LVL45:
	.loc 1 254 0
	lea	%a2, [%a15] 1832
.LVL46:
	st.a	[%SP] 12, %a2
	.loc 1 255 0
	lea	%a2, [%a15] 1964
.LVL47:
	st.a	[%SP] 16, %a2
	.loc 1 276 0
	lea	%a2, [%a15] 2512
.LVL48:
	st.a	[%SP] 20, %a2
	.loc 1 295 0
	mov.a	%a4, %d12
	mov	%d4, %d11
	ld.a	%a5, [%a15]0
	mov	%d5, %d14
	ld.a	%a6, [%SP] 16
	ld.a	%a7, [%SP] 32
	call	actBNReduce
.LVL49:
	.loc 1 298 0
	ld.a	%a4, [%SP] 12
	mov	%d4, %d9
	ld.a	%a5, [%SP] 16
	mov	%d5, %d14
	call	actBNOctetString
.LVL50:
	.loc 1 301 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	ld.a	%a4, [%SP] 12
	mov	%d4, %d9
	mov.a	%a5, 0
	mov.a	%a6, 0
	mov.aa	%a7, %a15
	call	actRSAExponentiation
.LVL51:
	.loc 1 305 0
	lea	%a2, [%a15] 276
	st.a	[%SP] 28, %a2
	ld.a	%a4, [%SP] 20
	mov.aa	%a5, %a2
	mov	%d4, %d14
	call	actBNCopy
.LVL52:
	.loc 1 314 0
	ld.a	%a4, [%a15] 2672
	mov	%d4, %d10
	ld.a	%a5, [%a15] 2680
	ld.w	%d5, [%a15] 2656
	mov.aa	%a6, %a15
	mov	%d6, 1
	ld.a	%a7, [%SP] 32
	call	actRSAInitExponentiation
.LVL53:
	st.w	[%SP] 24, %d2
.LVL54:
	.loc 1 318 0
	mov	%d3, %d2
	.loc 1 316 0
	jnz	%d2, .L13
	.loc 1 233 0
	addi	%d9, %d10, 3
.LVL55:
	sh	%d9, -2
.LVL56:
	.loc 1 323 0
	mov.a	%a4, %d12
	mov	%d4, %d11
	mov.aa	%a5, %a13
	mov	%d5, %d8
	call	actBNSetOctetString
.LVL57:
	.loc 1 327 0
	mov.a	%a4, %d12
	mov	%d4, %d11
	ld.a	%a5, [%a15]0
	mov	%d5, %d9
	ld.a	%a6, [%SP] 16
	ld.a	%a7, [%SP] 32
	call	actBNReduce
.LVL58:
	.loc 1 330 0
	ld.a	%a4, [%SP] 12
	mov	%d4, %d10
	ld.a	%a5, [%SP] 16
	mov	%d5, %d9
	call	actBNOctetString
.LVL59:
	.loc 1 333 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	ld.a	%a4, [%SP] 12
	mov	%d4, %d10
	mov.a	%a5, 0
	mov.a	%a6, 0
	mov.aa	%a7, %a15
	call	actRSAExponentiation
.LVL60:
	.loc 1 337 0
	mov.a	%a4, %d13
	ld.a	%a5, [%SP] 28
	mov	%d4, %d9
	call	actBNCopy
.LVL61:
	.loc 1 339 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL62:
	.loc 1 347 0
	lea	%a2, [%a15] 1708
	st.a	[%SP] 12, %a2
.LVL63:
	.loc 1 348 0
	mov.d	%d2, %a15
	addi	%d10, %d2, 1844
.LVL64:
	.loc 1 349 0
	addi	%d8, %d2, 1976
.LVL65:
	.loc 1 350 0
	lea	%a13, [%a15] 2108
.LVL66:
	.loc 1 351 0
	lea	%a2, [%a15] 2244
.LVL67:
	st.a	[%SP] 16, %a2
.LVL68:
	.loc 1 355 0
	mov.a	%a4, %d12
	ld.a	%a5, [%SP] 20
	mov	%d4, %d14
	call	actBNCopy
.LVL69:
	.loc 1 357 0
	ld.a	%a4, [%SP] 20
	mov	%d4, %d14
	ld.a	%a5, [%a15]0
	mov	%d5, %d9
	ld.a	%a6, [%SP] 12
	ld.a	%a7, [%SP] 32
	call	actBNReduce
.LVL70:
	.loc 1 361 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	mov.a	%a4, %d13
	ld.a	%a5, [%SP] 12
	mov.a	%a6, %d10
	mov.aa	%a7, %a15
	call	actBNModSub
.LVL71:
	.loc 1 365 0
	mov.a	%a4, %d8
	mov	%d4, %d9
	ld.a	%a5, [%a15] 2688
	ld.w	%d5, [%a15] 2664
	call	actBNSetOctetStringROM
.LVL72:
	.loc 1 368 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	mov.a	%a4, %d10
	mov.a	%a5, %d8
	mov.aa	%a6, %a13
	mov.aa	%a7, %a15
	call	actBNMontMul
.LVL73:
	.loc 1 370 0
	ld.w	%d2, [%SP] 32
	st.w	[%SP]0, %d2
	mov.aa	%a4, %a13
	ld.a	%a5, [%a15] 12
	ld.a	%a6, [%SP] 16
	mov.aa	%a7, %a15
	call	actBNMontMul
.LVL74:
	.loc 1 378 0
	lea	%a13, [%a15] 256
.LVL75:
	.loc 1 379 0
	mov.d	%d2, %a15
	addi	%d10, %d2, 388
.LVL76:
	.loc 1 380 0
	addi	%d8, %d2, 652
.LVL77:
	.loc 1 383 0
	mov.aa	%a4, %a13
	mov	%d4, %d14
	ld.a	%a5, [%a15] 2676
	ld.w	%d5, [%a15] 2652
	call	actBNSetOctetStringROM
.LVL78:
	.loc 1 385 0
	mov.aa	%a4, %a13
	mov	%d4, %d14
	ld.a	%a5, [%SP] 16
	mov	%d5, %d9
	mov.a	%a6, %d10
	ld.a	%a7, [%SP] 32
	call	actBNMult
.LVL79:
	.loc 1 388 0
	mov.aa	%a4, %a15
	mov.a	%a5, %d12
	mov	%d4, %d14
	call	actBNCopy
.LVL80:
	.loc 1 389 0
	addsc.a	%a4, %a15, %d14, 2
	sub	%d4, %d11, %d14
	mov	%d5, 0
	call	actBNSet
.LVL81:
	.loc 1 391 0
	mov.a	%a4, %d10
	mov.aa	%a5, %a15
	mov.a	%a6, %d8
	mov	%d4, %d11
	call	actBNAdd
.LVL82:
	.loc 1 394 0
	mov.aa	%a4, %a14
	mov	%d4, %d15
	mov.a	%a5, %d8
	mov	%d5, %d11
	call	actBNOctetString
.LVL83:
	.loc 1 395 0
	st.w	[%a12]0, %d15
	.loc 1 397 0
	ld.a	%a4, [%SP] 32
	call	actWatchdogTriggerFunction
.LVL84:
	.loc 1 399 0
	ld.w	%d3, [%SP] 24
.LVL85:
.L13:
	.loc 1 400 0
	mov	%d2, %d3
	ret
.LFE16:
	.size	actRSAPrivateKeyOperationCRT, .-actRSAPrivateKeyOperationCRT
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
	.uleb128 0x18
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
	.uleb128 0x20
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/actUtilities.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/actBigNum.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAExp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x16e4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/actIRSAPrivateCRT.c"
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
	.uaword	0x154
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19c
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
	.uaword	0x1cc
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
	.uaword	0x174
	.uleb128 0x3
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x18e
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1be
	.uleb128 0x3
	.string	"actU8"
	.byte	0x4
	.byte	0x30
	.uaword	0x21f
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x237
	.uleb128 0x3
	.string	"actU32"
	.byte	0x4
	.byte	0x32
	.uaword	0x250
	.uleb128 0x3
	.string	"actLengthType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x284
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ad
	.uleb128 0x5
	.uaword	0x269
	.uleb128 0x3
	.string	"actBNDIGIT"
	.byte	0x4
	.byte	0x84
	.uaword	0x284
	.uleb128 0x3
	.string	"actRETURNCODE"
	.byte	0x4
	.byte	0x93
	.uaword	0x284
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x14
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x33e
	.uleb128 0x7
	.string	"m"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x33e
	.byte	0
	.uleb128 0x7
	.string	"m_length"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x292
	.byte	0x4
	.uleb128 0x7
	.string	"m_byte_length"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x292
	.byte	0x8
	.uleb128 0x7
	.string	"RR"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x33e
	.byte	0xc
	.uleb128 0x7
	.string	"m_bar"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x2b2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b2
	.uleb128 0x8
	.string	"actBNRING"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x2e5
	.uleb128 0x9
	.uahalf	0x204
	.byte	0x4
	.uahalf	0x495
	.uaword	0x383
	.uleb128 0x7
	.string	"cipher"
	.byte	0x4
	.uahalf	0x497
	.uaword	0x383
	.byte	0
	.uleb128 0xa
	.string	"message"
	.byte	0x4
	.uahalf	0x498
	.uaword	0x393
	.uahalf	0x100
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x393
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x3a3
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.string	"actRSACipherAndMSgStruct"
	.byte	0x4
	.uahalf	0x499
	.uaword	0x356
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x4
	.uahalf	0x49f
	.uaword	0x3f4
	.uleb128 0xe
	.string	"tmpInit"
	.byte	0x4
	.uahalf	0x4a1
	.uaword	0x3f4
	.uleb128 0xe
	.string	"cipherAndMsg"
	.byte	0x4
	.uahalf	0x4a2
	.uaword	0x3a3
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x404
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x81
	.byte	0
	.uleb128 0x9
	.uahalf	0x624
	.byte	0x4
	.uahalf	0x49b
	.uaword	0x47e
	.uleb128 0x7
	.string	"wsRSARing"
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x344
	.byte	0
	.uleb128 0x7
	.string	"tmp"
	.byte	0x4
	.uahalf	0x4a3
	.uaword	0x3c4
	.byte	0x14
	.uleb128 0xa
	.string	"RRBuffer"
	.byte	0x4
	.uahalf	0x4a5
	.uaword	0x393
	.uahalf	0x21c
	.uleb128 0xa
	.string	"exponent"
	.byte	0x4
	.uahalf	0x4a6
	.uaword	0x383
	.uahalf	0x320
	.uleb128 0xa
	.string	"modulusBuffer"
	.byte	0x4
	.uahalf	0x4a7
	.uaword	0x383
	.uahalf	0x420
	.uleb128 0xa
	.string	"tmpExp"
	.byte	0x4
	.uahalf	0x4a8
	.uaword	0x393
	.uahalf	0x520
	.byte	0
	.uleb128 0x8
	.string	"actRSAPRIMSTRUCT"
	.byte	0x4
	.uahalf	0x4aa
	.uaword	0x404
	.uleb128 0x9
	.uahalf	0x318
	.byte	0x4
	.uahalf	0x4f1
	.uaword	0x500
	.uleb128 0x7
	.string	"primeP"
	.byte	0x4
	.uahalf	0x4f3
	.uaword	0x500
	.byte	0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x4f4
	.uaword	0x500
	.byte	0x84
	.uleb128 0xa
	.string	"primeDP"
	.byte	0x4
	.uahalf	0x4f5
	.uaword	0x500
	.uahalf	0x108
	.uleb128 0xa
	.string	"primeDQ"
	.byte	0x4
	.uahalf	0x4f6
	.uaword	0x500
	.uahalf	0x18c
	.uleb128 0xa
	.string	"qInv"
	.byte	0x4
	.uahalf	0x4f7
	.uaword	0x500
	.uahalf	0x210
	.uleb128 0xa
	.string	"one"
	.byte	0x4
	.uahalf	0x4f8
	.uaword	0x500
	.uahalf	0x294
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x510
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.string	"actCRTINITSTRUCT"
	.byte	0x4
	.uahalf	0x4f9
	.uaword	0x497
	.uleb128 0x9
	.uahalf	0x210
	.byte	0x4
	.uahalf	0x4fb
	.uaword	0x55d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x4fd
	.uaword	0x393
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x4fe
	.uaword	0x55d
	.uahalf	0x104
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x4ff
	.uaword	0x56d
	.uahalf	0x188
	.byte	0
	.uleb128 0xb
	.uaword	0x269
	.uaword	0x56d
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x83
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x57d
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.string	"actCRTCIPHERSTRUCT"
	.byte	0x4
	.uahalf	0x500
	.uaword	0x529
	.uleb128 0x9
	.uahalf	0x10c
	.byte	0x4
	.uahalf	0x502
	.uaword	0x5bb
	.uleb128 0x7
	.string	"m1"
	.byte	0x4
	.uahalf	0x504
	.uaword	0x500
	.byte	0
	.uleb128 0x7
	.string	"m2"
	.byte	0x4
	.uahalf	0x505
	.uaword	0x56d
	.byte	0x84
	.byte	0
	.uleb128 0x8
	.string	"actCRTMSGSTRUCT"
	.byte	0x4
	.uahalf	0x506
	.uaword	0x598
	.uleb128 0x9
	.uahalf	0x328
	.byte	0x4
	.uahalf	0x508
	.uaword	0x638
	.uleb128 0x7
	.string	"m2Copy"
	.byte	0x4
	.uahalf	0x50a
	.uaword	0x56d
	.byte	0
	.uleb128 0x7
	.string	"m2ModP"
	.byte	0x4
	.uahalf	0x50b
	.uaword	0x56d
	.byte	0x88
	.uleb128 0xa
	.string	"m1m2"
	.byte	0x4
	.uahalf	0x50c
	.uaword	0x500
	.uahalf	0x110
	.uleb128 0xa
	.string	"qInv"
	.byte	0x4
	.uahalf	0x50d
	.uaword	0x500
	.uahalf	0x194
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x50e
	.uaword	0x56d
	.uahalf	0x218
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x50f
	.uaword	0x56d
	.uahalf	0x2a0
	.byte	0
	.uleb128 0x8
	.string	"actCRTSTEP3STRUCT"
	.byte	0x4
	.uahalf	0x510
	.uaword	0x5d3
	.uleb128 0x9
	.uahalf	0x38c
	.byte	0x4
	.uahalf	0x512
	.uaword	0x694
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x514
	.uaword	0x383
	.byte	0
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x515
	.uaword	0x500
	.uahalf	0x100
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x516
	.uaword	0x694
	.uahalf	0x184
	.uleb128 0xa
	.string	"msg"
	.byte	0x4
	.uahalf	0x517
	.uaword	0x383
	.uahalf	0x28c
	.byte	0
	.uleb128 0xb
	.uaword	0x2b2
	.uaword	0x6a4
	.uleb128 0xc
	.uaword	0x2d9
	.byte	0x41
	.byte	0
	.uleb128 0x8
	.string	"actCRTSTEP4STRUCT"
	.byte	0x4
	.uahalf	0x518
	.uaword	0x652
	.uleb128 0xd
	.uahalf	0x624
	.byte	0x4
	.uahalf	0x51c
	.uaword	0x700
	.uleb128 0xe
	.string	"wsRSAPrim"
	.byte	0x4
	.uahalf	0x51e
	.uaword	0x47e
	.uleb128 0xe
	.string	"wsCRTInit"
	.byte	0x4
	.uahalf	0x51f
	.uaword	0x510
	.uleb128 0xe
	.string	"wsCRTSTEP4"
	.byte	0x4
	.uahalf	0x520
	.uaword	0x6a4
	.byte	0
	.uleb128 0xd
	.uahalf	0x328
	.byte	0x4
	.uahalf	0x523
	.uaword	0x73c
	.uleb128 0xe
	.string	"wsCRTCipherOperations"
	.byte	0x4
	.uahalf	0x525
	.uaword	0x57d
	.uleb128 0xe
	.string	"wsCRTStep3"
	.byte	0x4
	.uahalf	0x526
	.uaword	0x638
	.byte	0
	.uleb128 0xd
	.uahalf	0x10c
	.byte	0x4
	.uahalf	0x529
	.uaword	0x764
	.uleb128 0xe
	.string	"messages"
	.byte	0x4
	.uahalf	0x52b
	.uaword	0x5bb
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x52c
	.uaword	0x694
	.byte	0
	.uleb128 0x9
	.uahalf	0xa84
	.byte	0x4
	.uahalf	0x51a
	.uaword	0x860
	.uleb128 0x7
	.string	"wsUnion1"
	.byte	0x4
	.uahalf	0x521
	.uaword	0x6be
	.byte	0
	.uleb128 0xa
	.string	"wsUnion2"
	.byte	0x4
	.uahalf	0x527
	.uaword	0x700
	.uahalf	0x624
	.uleb128 0xa
	.string	"keySizeBuffer"
	.byte	0x4
	.uahalf	0x52d
	.uaword	0x73c
	.uahalf	0x94c
	.uleb128 0xa
	.string	"p_bytes"
	.byte	0x4
	.uahalf	0x52f
	.uaword	0x292
	.uahalf	0xa58
	.uleb128 0xa
	.string	"q_bytes"
	.byte	0x4
	.uahalf	0x530
	.uaword	0x292
	.uahalf	0xa5c
	.uleb128 0xa
	.string	"dp_bytes"
	.byte	0x4
	.uahalf	0x531
	.uaword	0x292
	.uahalf	0xa60
	.uleb128 0xa
	.string	"dq_bytes"
	.byte	0x4
	.uahalf	0x532
	.uaword	0x292
	.uahalf	0xa64
	.uleb128 0xa
	.string	"q_inv_bytes"
	.byte	0x4
	.uahalf	0x533
	.uaword	0x292
	.uahalf	0xa68
	.uleb128 0xa
	.string	"n_bytes"
	.byte	0x4
	.uahalf	0x534
	.uaword	0x292
	.uahalf	0xa6c
	.uleb128 0xa
	.string	"p"
	.byte	0x4
	.uahalf	0x537
	.uaword	0x2a7
	.uahalf	0xa70
	.uleb128 0xa
	.string	"q"
	.byte	0x4
	.uahalf	0x538
	.uaword	0x2a7
	.uahalf	0xa74
	.uleb128 0xa
	.string	"dp"
	.byte	0x4
	.uahalf	0x539
	.uaword	0x2a7
	.uahalf	0xa78
	.uleb128 0xa
	.string	"dq"
	.byte	0x4
	.uahalf	0x53a
	.uaword	0x2a7
	.uahalf	0xa7c
	.uleb128 0xa
	.string	"q_inv"
	.byte	0x4
	.uahalf	0x53b
	.uaword	0x2a7
	.uahalf	0xa80
	.byte	0
	.uleb128 0x8
	.string	"actRSACRTSTRUCT"
	.byte	0x4
	.uahalf	0x53d
	.uaword	0x764
	.uleb128 0x12
	.byte	0x1
	.string	"actRSAInitPrivateKeyOperationCRT"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd14
	.uleb128 0x13
	.string	"prime_p"
	.byte	0x1
	.byte	0x43
	.uaword	0x2a7
	.uaword	.LLST0
	.uleb128 0x13
	.string	"prime_p_len"
	.byte	0x1
	.byte	0x44
	.uaword	0x292
	.uaword	.LLST1
	.uleb128 0x13
	.string	"prime_q"
	.byte	0x1
	.byte	0x45
	.uaword	0x2a7
	.uaword	.LLST2
	.uleb128 0x13
	.string	"prime_q_len"
	.byte	0x1
	.byte	0x46
	.uaword	0x292
	.uaword	.LLST3
	.uleb128 0x13
	.string	"private_exponent_dp"
	.byte	0x1
	.byte	0x47
	.uaword	0x2a7
	.uaword	.LLST4
	.uleb128 0x13
	.string	"private_exponent_dp_len"
	.byte	0x1
	.byte	0x48
	.uaword	0x292
	.uaword	.LLST5
	.uleb128 0x13
	.string	"private_exponent_dq"
	.byte	0x1
	.byte	0x49
	.uaword	0x2a7
	.uaword	.LLST6
	.uleb128 0x13
	.string	"private_exponent_dq_len"
	.byte	0x1
	.byte	0x4a
	.uaword	0x292
	.uaword	.LLST7
	.uleb128 0x14
	.string	"q_inverse_mod_p"
	.byte	0x1
	.byte	0x4b
	.uaword	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"q_inverse_mod_p_len"
	.byte	0x1
	.byte	0x4c
	.uaword	0x292
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"wsCRT"
	.byte	0x1
	.byte	0x4d
	.uaword	0xd14
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.byte	0x4e
	.uaword	0xd1c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.string	"retVal"
	.byte	0x1
	.byte	0x50
	.uaword	0x2c4
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.byte	0x51
	.uaword	0x292
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LASF11
	.byte	0x1
	.byte	0x52
	.uaword	0x292
	.uaword	.LLST10
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x54
	.uaword	0x33e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.byte	0x55
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x84
	.byte	0x9f
	.uleb128 0x18
	.string	"dp"
	.byte	0x1
	.byte	0x56
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x108
	.byte	0x9f
	.uleb128 0x18
	.string	"dq"
	.byte	0x1
	.byte	0x57
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x18c
	.byte	0x9f
	.uleb128 0x18
	.string	"qInv"
	.byte	0x1
	.byte	0x58
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x210
	.byte	0x9f
	.uleb128 0x18
	.string	"one"
	.byte	0x1
	.byte	0x59
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x294
	.byte	0x9f
	.uleb128 0x18
	.string	"t6"
	.byte	0x1
	.byte	0x5a
	.uaword	0x33e
	.byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x94c
	.byte	0x9f
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x1396
	.uaword	0xa9e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0x13c1
	.uaword	0xac5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL9
	.uaword	0x13c1
	.uaword	0xaec
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x13c1
	.uaword	0xb13
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL11
	.uaword	0x13c1
	.uaword	0xb3a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x13c1
	.uaword	0xb63
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL13
	.uaword	0x1396
	.uaword	0xb78
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x13fd
	.uaword	0xbab
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL15
	.uaword	0x1431
	.uaword	0xbc6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL16
	.uaword	0x145c
	.uaword	0xbe1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x1482
	.uaword	0xc03
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL18
	.uaword	0x14ae
	.uaword	0xc36
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x15
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7d
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL19
	.uaword	0x14d1
	.uaword	0xc5f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL20
	.uaword	0x14d1
	.uaword	0xc88
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL21
	.uaword	0x145c
	.uaword	0xca3
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL22
	.uaword	0x1482
	.uaword	0xcc5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL23
	.uaword	0x145c
	.uaword	0xce0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL24
	.uaword	0x1482
	.uaword	0xd02
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL28
	.uaword	0x1396
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x860
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd1a
	.uleb128 0x12
	.byte	0x1
	.string	"actRSAPrivateKeyOperationCRT"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1379
	.uleb128 0x13
	.string	"cipher"
	.byte	0x1
	.byte	0xc2
	.uaword	0x2a7
	.uaword	.LLST11
	.uleb128 0x13
	.string	"cipher_len"
	.byte	0x1
	.byte	0xc3
	.uaword	0x292
	.uaword	.LLST12
	.uleb128 0x13
	.string	"message"
	.byte	0x1
	.byte	0xc4
	.uaword	0x1379
	.uaword	.LLST13
	.uleb128 0x13
	.string	"message_len"
	.byte	0x1
	.byte	0xc5
	.uaword	0x137f
	.uaword	.LLST14
	.uleb128 0x13
	.string	"wsCRT"
	.byte	0x1
	.byte	0xc6
	.uaword	0xd14
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.byte	0xc7
	.uaword	0xd1c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"rc"
	.byte	0x1
	.byte	0xc9
	.uaword	0x2c4
	.uaword	.LLST16
	.uleb128 0x16
	.string	"ring"
	.byte	0x1
	.byte	0xca
	.uaword	0x1385
	.uaword	.LLST17
	.uleb128 0x16
	.string	"m1"
	.byte	0x1
	.byte	0xcd
	.uaword	0x33e
	.uaword	.LLST18
	.uleb128 0x16
	.string	"m2"
	.byte	0x1
	.byte	0xce
	.uaword	0x33e
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.byte	0xd0
	.uaword	0x138b
	.uaword	.LLST20
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd1
	.uaword	0x33e
	.uaword	.LLST21
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd2
	.uaword	0x33e
	.uaword	.LLST22
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd3
	.uaword	0x1379
	.uaword	.LLST23
	.uleb128 0x16
	.string	"m2Copy"
	.byte	0x1
	.byte	0xd6
	.uaword	0x33e
	.uaword	.LLST24
	.uleb128 0x16
	.string	"m2ModP"
	.byte	0x1
	.byte	0xd7
	.uaword	0x33e
	.uaword	.LLST25
	.uleb128 0x16
	.string	"m1m2"
	.byte	0x1
	.byte	0xd8
	.uaword	0x33e
	.uaword	.LLST26
	.uleb128 0x16
	.string	"qInv"
	.byte	0x1
	.byte	0xd9
	.uaword	0x33e
	.uaword	.LLST27
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.byte	0xda
	.uaword	0x33e
	.uaword	.LLST28
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xdb
	.uaword	0x33e
	.uaword	.LLST29
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0xde
	.uaword	0x33e
	.uaword	.LLST30
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.byte	0xdf
	.uaword	0x33e
	.uaword	.LLST31
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe0
	.uaword	0x33e
	.uaword	.LLST32
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.byte	0xe1
	.uaword	0x33e
	.uaword	.LLST33
	.uleb128 0x16
	.string	"p_bytes"
	.byte	0x1
	.byte	0xe4
	.uaword	0x292
	.uaword	.LLST34
	.uleb128 0x16
	.string	"q_bytes"
	.byte	0x1
	.byte	0xe5
	.uaword	0x292
	.uaword	.LLST35
	.uleb128 0x18
	.string	"n_bytes"
	.byte	0x1
	.byte	0xe6
	.uaword	0x292
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.byte	0xe9
	.uaword	0x292
	.uaword	.LLST36
	.uleb128 0x17
	.uaword	.LASF11
	.byte	0x1
	.byte	0xea
	.uaword	0x292
	.uaword	.LLST37
	.uleb128 0x16
	.string	"n_length"
	.byte	0x1
	.byte	0xeb
	.uaword	0x292
	.uaword	.LLST38
	.uleb128 0x19
	.uaword	.LVL34
	.uaword	0x1396
	.uaword	0xf5a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL38
	.uaword	0x14fa
	.uaword	0xf80
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL39
	.uaword	0x145c
	.uaword	0xf9a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL41
	.uaword	0x1482
	.uaword	0xfba
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL43
	.uaword	0x152e
	.uaword	0xfe0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL49
	.uaword	0x157f
	.uaword	0x100e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL50
	.uaword	0x15b9
	.uaword	0x1036
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL51
	.uaword	0x15ea
	.uaword	0x1069
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL52
	.uaword	0x162c
	.uaword	0x108b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL53
	.uaword	0x152e
	.uaword	0x10b1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL57
	.uaword	0x14fa
	.uaword	0x10d7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL58
	.uaword	0x157f
	.uaword	0x1105
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL59
	.uaword	0x15b9
	.uaword	0x112d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL60
	.uaword	0x15ea
	.uaword	0x1160
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL61
	.uaword	0x162c
	.uaword	0x1181
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL62
	.uaword	0x1396
	.uaword	0x1196
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL69
	.uaword	0x162c
	.uaword	0x11b7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL70
	.uaword	0x157f
	.uaword	0x11e6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL71
	.uaword	0x1650
	.uaword	0x1215
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL72
	.uaword	0x13c1
	.uaword	0x122f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL73
	.uaword	0x168c
	.uaword	0x125d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL74
	.uaword	0x168c
	.uaword	0x1286
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LVL78
	.uaword	0x13c1
	.uaword	0x12a0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL79
	.uaword	0x13fd
	.uaword	0x12d4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL80
	.uaword	0x162c
	.uaword	0x12f4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL81
	.uaword	0x14ae
	.uaword	0x131b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x19
	.uaword	.LVL82
	.uaword	0x16be
	.uaword	0x1341
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL83
	.uaword	0x15b9
	.uaword	0x1367
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL84
	.uaword	0x1396
	.uleb128 0x1a
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
	.uaword	0x269
	.uleb128 0x4
	.byte	0x4
	.uaword	0x292
	.uleb128 0x4
	.byte	0x4
	.uaword	0x344
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1391
	.uleb128 0x5
	.uaword	0x2b2
	.uleb128 0x1d
	.byte	0x1
	.string	"actWatchdogTriggerFunction"
	.byte	0x5
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x13c1
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNSetOctetStringROM"
	.byte	0x6
	.uahalf	0x13e
	.byte	0x1
	.byte	0x1
	.uaword	0x13f8
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x2a7
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x5
	.uaword	0x292
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNMult"
	.byte	0x6
	.uahalf	0x1b4
	.byte	0x1
	.byte	0x1
	.uaword	0x1431
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"actBNGetBitLength"
	.byte	0x6
	.byte	0xc7
	.byte	0x1
	.uaword	0x292
	.byte	0x1
	.uaword	0x145c
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actBNIsZero"
	.byte	0x6
	.uahalf	0x100
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uaword	0x1482
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"actBNCompare"
	.byte	0x6
	.uahalf	0x115
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x14ae
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"actBNSet"
	.byte	0x6
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uaword	0x14d1
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x13f8
	.uleb128 0x1e
	.uaword	0x1391
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNSub"
	.byte	0x6
	.uahalf	0x183
	.byte	0x1
	.byte	0x1
	.uaword	0x14fa
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNSetOctetString"
	.byte	0x6
	.uahalf	0x129
	.byte	0x1
	.byte	0x1
	.uaword	0x152e
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x2a7
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"actRSAInitExponentiation"
	.byte	0x7
	.byte	0x53
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x1579
	.uleb128 0x1e
	.uaword	0x2a7
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x2a7
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x1579
	.uleb128 0x1e
	.uaword	0x276
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x47e
	.uleb128 0x21
	.byte	0x1
	.string	"actBNReduce"
	.byte	0x6
	.uahalf	0x1e8
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x15b9
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNOctetString"
	.byte	0x6
	.uahalf	0x153
	.byte	0x1
	.byte	0x1
	.uaword	0x15ea
	.uleb128 0x1e
	.uaword	0x1379
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"actRSAExponentiation"
	.byte	0x7
	.byte	0x76
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x162c
	.uleb128 0x1e
	.uaword	0x2a7
	.uleb128 0x1e
	.uaword	0x292
	.uleb128 0x1e
	.uaword	0x1379
	.uleb128 0x1e
	.uaword	0x137f
	.uleb128 0x1e
	.uaword	0x1579
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"actBNCopy"
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.byte	0x1
	.uaword	0x1650
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x13f8
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNModSub"
	.byte	0x6
	.uahalf	0x225
	.byte	0x1
	.byte	0x1
	.uaword	0x1681
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x1681
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1687
	.uleb128 0x5
	.uaword	0x344
	.uleb128 0x1f
	.byte	0x1
	.string	"actBNMontMul"
	.byte	0x6
	.uahalf	0x267
	.byte	0x1
	.byte	0x1
	.uaword	0x16be
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x1681
	.uleb128 0x1e
	.uaword	0xd1c
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"actBNAdd"
	.byte	0x6
	.uahalf	0x16b
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x138b
	.uleb128 0x1e
	.uaword	0x33e
	.uleb128 0x1e
	.uaword	0x13f8
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
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x83
	.sleb128 2648
	.uaword	.LVL27
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL3-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x5
	.byte	0x74
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x7f
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL25
	.uahalf	0x5
	.byte	0x7f
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x9
	.byte	0x83
	.sleb128 2648
	.byte	0x6
	.byte	0x23
	.uleb128 0x3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE15
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x5
	.byte	0x75
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL3-1
	.uaword	.LVL6
	.uahalf	0x5
	.byte	0x78
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE15
	.uahalf	0x5
	.byte	0x78
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL66
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL29
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL65
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL34-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL34-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL43
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57-1
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL42
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL42
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2512
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL49-1
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2380
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL37
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1964
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL48
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL68
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1964
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL37
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1832
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL47
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL63
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1832
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL62
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL63
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL67
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL64
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL76
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1844
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL65
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL77
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1976
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL66
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL75
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2108
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL69-1
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL75
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL76
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL74
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL77
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL31
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL32
	.uaword	.LVL55
	.uahalf	0x5
	.byte	0x7a
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL64
	.uahalf	0x5
	.byte	0x7a
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL32
	.uaword	.LVL44
	.uahalf	0x5
	.byte	0x79
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL55
	.uahalf	0x5
	.byte	0x79
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x5
	.byte	0x7f
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE16
	.uahalf	0x5
	.byte	0x7f
	.sleb128 3
	.byte	0x32
	.byte	0x25
	.byte	0x9f
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
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF9:
	.string	"watchdog"
.LASF6:
	.string	"m2Padded"
.LASF0:
	.string	"primeQ"
.LASF10:
	.string	"p_length"
.LASF2:
	.string	"reducedCipherInBytes"
.LASF4:
	.string	"qInvM1M2R"
.LASF5:
	.string	"qInvM1M2"
.LASF1:
	.string	"origCipherBeforeReduction"
.LASF3:
	.string	"reducedCipherInDigits"
.LASF8:
	.string	"fullModulus"
.LASF7:
	.string	"qInvM1M2q"
.LASF11:
	.string	"q_length"
	.extern	actBNAdd,STT_FUNC,0
	.extern	actBNMontMul,STT_FUNC,0
	.extern	actBNModSub,STT_FUNC,0
	.extern	actBNCopy,STT_FUNC,0
	.extern	actRSAExponentiation,STT_FUNC,0
	.extern	actBNOctetString,STT_FUNC,0
	.extern	actBNReduce,STT_FUNC,0
	.extern	actRSAInitExponentiation,STT_FUNC,0
	.extern	actBNSetOctetString,STT_FUNC,0
	.extern	actBNSub,STT_FUNC,0
	.extern	actBNSet,STT_FUNC,0
	.extern	actBNCompare,STT_FUNC,0
	.extern	actBNIsZero,STT_FUNC,0
	.extern	actBNGetBitLength,STT_FUNC,0
	.extern	actBNMult,STT_FUNC,0
	.extern	actBNSetOctetStringROM,STT_FUNC,0
	.extern	actWatchdogTriggerFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
