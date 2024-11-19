	.file	"Sec_Job.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SecM_GetKeyValueByElementId,"ax",@progbits
	.align 1
	.global	SecM_GetKeyValueByElementId
	.type	SecM_GetKeyValueByElementId, @function
SecM_GetKeyValueByElementId:
.LFB2:
	.file 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.c"
	.loc 1 767 0
.LVL0:
	.loc 1 768 0
	mov.a	%a2, 0
	.loc 1 770 0
	jge.u	%d4, 3, .L2
.LVL1:
.LBB2:
	.loc 1 775 0 discriminator 1
	movh.a	%a15, hi:SecM_CryptographicKeys
	lea	%a15, [%a15] lo:SecM_CryptographicKeys
	addsc.a	%a15, %a15, %d4, 3
	ld.bu	%d2, [%a15]0
	jz	%d2, .L2
	.loc 1 777 0
	ld.a	%a2, [%a15] 4
	ld.w	%d15, [%a2] 8
	jne	%d15, %d5, .L10
	ret
.LVL2:
.L6:
	mov.a	%a2, %d15
	addi	%d15, %d15, 12
	ld.w	%d2, [%a2] 8
	jne	%d2, %d5, .L5
	ret
.LVL3:
.L10:
	mov.d	%d3, %a2
	addi	%d15, %d3, 12
	mov.a	%a15, %d2
	add.a	%a15, -1
.LVL4:
.L5:
	.loc 1 775 0 discriminator 2
	loop	%a15, .L6
.LBE2:
	.loc 1 768 0
	mov.a	%a2, 0
.L2:
.LVL5:
	.loc 1 786 0
	ret
.LFE2:
	.size	SecM_GetKeyValueByElementId, .-SecM_GetKeyValueByElementId
.section .text.SecM_HashJob,"ax",@progbits
	.align 1
	.global	SecM_HashJob
	.type	SecM_HashJob, @function
SecM_HashJob:
.LFB3:
	.loc 1 806 0
.LVL6:
	.loc 1 807 0
	mov	%d2, 255
	.loc 1 811 0
	jge.u	%d4, 5, .L12
.LVL7:
	.loc 1 815 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15]0
	.loc 1 807 0
	mov	%d2, 255
	.loc 1 815 0
	jnz	%d15, .L12
	.loc 1 817 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
.LVL8:
	call	Csm_Hash
.LVL9:
	seln	%d2, %d2, %d2, 255
.LVL10:
.L12:
	.loc 1 825 0
	ret
.LFE3:
	.size	SecM_HashJob, .-SecM_HashJob
.section .text.SecM_RandomGenerateJob,"ax",@progbits
	.align 1
	.global	SecM_RandomGenerateJob
	.type	SecM_RandomGenerateJob, @function
SecM_RandomGenerateJob:
.LFB4:
	.loc 1 1210 0
.LVL11:
	.loc 1 1211 0
	mov	%d2, 255
	.loc 1 1215 0
	jge.u	%d4, 5, .L16
.LVL12:
	.loc 1 1219 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15]0
	.loc 1 1211 0
	mov	%d2, 255
	.loc 1 1219 0
	jne	%d15, 5, .L16
	.loc 1 1221 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
.LVL13:
	call	Csm_RandomGenerate
.LVL14:
	seln	%d2, %d2, %d2, 255
.LVL15:
.L16:
	.loc 1 1229 0
	ret
.LFE4:
	.size	SecM_RandomGenerateJob, .-SecM_RandomGenerateJob
.section .text.SecM_RandomSeedJob,"ax",@progbits
	.align 1
	.global	SecM_RandomSeedJob
	.type	SecM_RandomSeedJob, @function
SecM_RandomSeedJob:
.LFB5:
	.loc 1 1244 0
.LVL16:
	.loc 1 1245 0
	mov	%d2, 255
	.loc 1 1249 0
	jge.u	%d4, 5, .L20
.LVL17:
	.loc 1 1253 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15]0
	.loc 1 1245 0
	mov	%d2, 255
	.loc 1 1253 0
	jne	%d15, 6, .L20
	.loc 1 1255 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 8
.LVL18:
	call	Csm_RandomSeed
.LVL19:
	seln	%d2, %d2, %d2, 255
.LVL20:
.L20:
	.loc 1 1263 0
	ret
.LFE5:
	.size	SecM_RandomSeedJob, .-SecM_RandomSeedJob
.section .text.SecM_SignatureVerifyJob,"ax",@progbits
	.align 1
	.global	SecM_SignatureVerifyJob
	.type	SecM_SignatureVerifyJob, @function
SecM_SignatureVerifyJob:
.LFB6:
	.loc 1 1285 0
.LVL21:
	sub.a	%SP, 16
.LCFI0:
.LVL22:
	.loc 1 1287 0
	mov	%d15, 1
	st.b	[%SP] 15, %d15
	.loc 1 1286 0
	mov	%d15, 255
	.loc 1 1291 0
	jge.u	%d4, 5, .L47
.LVL23:
	.loc 1 1295 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.bu	%d2, [%a15]0
	.loc 1 1286 0
	mov	%d15, 255
	.loc 1 1295 0
	jne	%d2, 7, .L47
	mov	%d13, %d7
	st.a	[%SP] 4, %a6
	mov	%d11, %d6
	st.a	[%SP]0, %a5
	mov.aa	%a12, %a4
	mov	%d8, %d5
	mov	%d9, %d4
	.loc 1 1297 0
	jz.t	%d5, 0, .L25
.LVL24:
.LBB7:
.LBB8:
	.loc 1 521 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d10, [%a15] 12
	jeq	%d10, -1, .L25
	.loc 1 523 0
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 16
	jz	%d15, .L42
	jne	%d15, 4, .L26
	.loc 1 554 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d12, [%a15] 8
.LVL25:
.LBB9:
.LBB10:
	.loc 1 304 0
	mov	%d15, 0
	.loc 1 310 0
	jge.u	%d10, 3, .L29
.LVL26:
	.loc 1 313 0
	mov	%d4, %d10
.LVL27:
	mov	%d5, 160
.LVL28:
	call	SecM_GetKeyValueByElementId
.LVL29:
	mov.aa	%a14, %a2
.LVL30:
	.loc 1 314 0
	mov	%d4, %d10
	mov	%d5, 161
	call	SecM_GetKeyValueByElementId
.LVL31:
	mov.aa	%a13, %a2
.LVL32:
	.loc 1 315 0
	mov	%d4, %d10
	mov	%d5, 162
	call	SecM_GetKeyValueByElementId
.LVL33:
	mov.aa	%a15, %a2
.LVL34:
	.loc 1 318 0
	jz.a	%a14, .L44
	.loc 1 320 0
	jz.a	%a12, .L31
	ld.hu	%d6, [%a12] 4
	ld.hu	%d15, [%a14] 4
	jne	%d15, %d6, .L31
	.loc 1 323 0
	mov	%d4, %d12
	ld.w	%d5, [%a14] 8
	ld.a	%a4, [%a12]0
	call	Csm_KeyElementSet
.LVL35:
	mov	%d15, %d2
.LVL36:
	.loc 1 336 0
	jnz.a	%a13, .L32
	j	.L48
.LVL37:
.L31:
	.loc 1 325 0
	ld.a	%a4, [%a14]0
	.loc 1 304 0
	mov	%d15, 0
	.loc 1 325 0
	jz.a	%a4, .L30
	.loc 1 328 0
	mov	%d4, %d12
	ld.w	%d5, [%a14] 8
	ld.hu	%d6, [%a14] 4
	call	Csm_KeyElementSet
.LVL38:
	mov	%d15, %d2
.LVL39:
	j	.L30
.LVL40:
.L44:
	.loc 1 304 0
	mov	%d15, 0
.LVL41:
.L30:
	.loc 1 336 0
	jz.a	%a13, .L34
	.loc 1 338 0
	jz.a	%a12, .L35
.LVL42:
.L32:
	ld.hu	%d6, [%a12] 12
	ld.hu	%d2, [%a13] 4
	jne	%d2, %d6, .L35
	.loc 1 341 0
	mov	%d4, %d12
	ld.w	%d5, [%a13] 8
	ld.a	%a4, [%a12] 8
	call	Csm_KeyElementSet
.LVL43:
	or	%d2, %d15
	and	%d15, %d2, 255
.LVL44:
	.loc 1 354 0
	jnz.a	%a15, .L36
	j	.L29
.LVL45:
.L35:
	.loc 1 343 0
	ld.a	%a4, [%a13]0
	jz.a	%a4, .L34
	.loc 1 346 0
	mov	%d4, %d12
	ld.w	%d5, [%a13] 8
	ld.hu	%d6, [%a13] 4
	call	Csm_KeyElementSet
.LVL46:
	or	%d2, %d15
	and	%d15, %d2, 255
.LVL47:
.L34:
	.loc 1 354 0
	jz.a	%a15, .L29
	.loc 1 356 0
	jz.a	%a12, .L37
.LVL48:
.L36:
	ld.hu	%d6, [%a12] 12
	ld.hu	%d2, [%a15] 4
	jne	%d2, %d6, .L37
	.loc 1 359 0
	mov	%d4, %d12
	ld.w	%d5, [%a15] 8
	ld.a	%a4, [%a12] 8
	call	Csm_KeyElementSet
.LVL49:
	or	%d2, %d15
	and	%d15, %d2, 255
.LVL50:
	j	.L29
.LVL51:
.L37:
	.loc 1 361 0
	ld.a	%a4, [%a15]0
	jz.a	%a4, .L29
	.loc 1 364 0
	mov	%d4, %d12
	ld.w	%d5, [%a15] 8
	ld.hu	%d6, [%a15] 4
	call	Csm_KeyElementSet
.LVL52:
	or	%d2, %d15
	and	%d15, %d2, 255
.LVL53:
.L29:
	.loc 1 373 0
	seln	%d15, %d15, %d15, 255
.LVL54:
	j	.L27
.LVL55:
.L42:
.LBE10:
.LBE9:
	.loc 1 509 0
	mov	%d15, 0
.LVL56:
.L27:
	.loc 1 573 0
	jnz	%d15, .L39
	.loc 1 576 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:SecM_JobInfo
.LVL57:
	madd	%d2, %d15, %d9, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 8
	call	Csm_KeySetValid
.LVL58:
	.loc 1 578 0
	mov	%d15, 255
	.loc 1 576 0
	jz	%d2, .L25
.LVL59:
.L39:
.LBE8:
.LBE7:
	.loc 1 1317 0
	eq	%d2, %d15, 0
	.loc 1 1314 0
	extr.u	%d8, %d8, 2, 1
	.loc 1 1317 0
	and	%d8, %d2
	jz	%d8, .L47
	.loc 1 1317 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%SP] 15
	.loc 1 1319 0 is_stmt 1 discriminator 1
	seln	%d15, %d2, %d15, 4
.LVL60:
	j	.L47
.LVL61:
.L25:
	.loc 1 1308 0
	movh.a	%a15, hi:SecM_JobInfo
	mov.d	%d15, %a15
	addi	%d4, %d15, lo:SecM_JobInfo
	madd	%d2, %d4, %d9, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
	mov	%d5, %d8
	ld.a	%a4, [%SP]0
	mov	%d6, %d11
	ld.a	%a5, [%SP] 4
	mov	%d7, %d13
	lea	%a6, [%SP] 15
	call	Csm_SignatureVerify
.LVL62:
	mov	%d15, 0
	jz	%d2, .L39
.LVL63:
.L26:
	.loc 1 1319 0
	mov	%d15, 255
.LVL64:
	j	.L47
.LVL65:
.L48:
.LBB14:
.LBB13:
.LBB12:
.LBB11:
	.loc 1 354 0
	jnz.a	%a15, .L36
	j	.L29
.LVL66:
.L47:
.LBE11:
.LBE12:
.LBE13:
.LBE14:
	.loc 1 1326 0
	mov	%d2, %d15
	ret
.LFE6:
	.size	SecM_SignatureVerifyJob, .-SecM_SignatureVerifyJob
.section .text.SecM_CancelAllJobs,"ax",@progbits
	.align 1
	.global	SecM_CancelAllJobs
	.type	SecM_CancelAllJobs, @function
SecM_CancelAllJobs:
.LFB7:
	.loc 1 1890 0
.LVL67:
	.loc 1 1893 0
	mov	%d15, 0
	.loc 1 1895 0
	movh	%d8, hi:SecM_JobInfo
	addi	%d8, %d8, lo:SecM_JobInfo
.LVL68:
.L51:
	madd	%d2, %d8, %d15, 24
	mov.a	%a15, %d2
	ld.w	%d4, [%a15] 4
	jeq	%d4, -1, .L50
	.loc 1 1897 0
	mov	%d5, 0
	call	Csm_CancelJob
.LVL69:
.L50:
	.loc 1 1893 0 discriminator 2
	add	%d15, 1
.LVL70:
	jne	%d15, 5, .L51
	.loc 1 1900 0
	ret
.LFE7:
	.size	SecM_CancelAllJobs, .-SecM_CancelAllJobs
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.byte	0x4
	.uaword	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/_Common/Std_Types.h"
	.file 5 "../../../BSW/Csm/Csm_Types.h"
	.file 6 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
	.file 7 "GenData/SecMPar.h"
	.file 8 "../../../BSW/Csm/Csm.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1077
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/SecMod/Sec_Job.c"
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
	.uaword	0x148
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
	.uaword	0x1b2
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
	.uleb128 0x4
	.string	"vuint8"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x148
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x182
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1b2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x78
	.uaword	0x168
	.uleb128 0x5
	.byte	0x4
	.uaword	0x260
	.uleb128 0x6
	.uaword	0x168
	.uleb128 0x4
	.string	"Crypto_OperationModeType"
	.byte	0x5
	.uahalf	0x262
	.uaword	0x168
	.uleb128 0x4
	.string	"Crypto_VerifyResultType"
	.byte	0x5
	.uahalf	0x289
	.uaword	0x168
	.uleb128 0x5
	.byte	0x4
	.uaword	0x168
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1a4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x286
	.uleb128 0x3
	.string	"SecM_WordType"
	.byte	0x6
	.byte	0x87
	.uaword	0x224
	.uleb128 0x3
	.string	"SecM_ByteType"
	.byte	0x6
	.byte	0x8c
	.uaword	0x205
	.uleb128 0x3
	.string	"SecM_ShortType"
	.byte	0x6
	.byte	0x8e
	.uaword	0x214
	.uleb128 0x3
	.string	"SecM_RamDataType"
	.byte	0x6
	.byte	0x91
	.uaword	0x310
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0x3
	.string	"SecM_ConstRamDataType"
	.byte	0x6
	.byte	0x97
	.uaword	0x339
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33f
	.uleb128 0x6
	.uaword	0x2cd
	.uleb128 0x3
	.string	"SecM_RomDataType"
	.byte	0x6
	.byte	0x9b
	.uaword	0x339
	.uleb128 0x3
	.string	"SecM_VoidPtrType"
	.byte	0x6
	.byte	0x9d
	.uaword	0x374
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x37c
	.uleb128 0x8
	.uleb128 0x3
	.string	"SecM_RomVoidPtrType"
	.byte	0x6
	.byte	0xa1
	.uaword	0x376
	.uleb128 0x3
	.string	"SecM_StatusType"
	.byte	0x6
	.byte	0xa8
	.uaword	0x2cd
	.uleb128 0x3
	.string	"SecM_LengthType"
	.byte	0x6
	.byte	0xaa
	.uaword	0x2e2
	.uleb128 0x3
	.string	"SecM_ByteFastType"
	.byte	0x6
	.byte	0xd5
	.uaword	0x2b8
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xea
	.uaword	0x402
	.uleb128 0xa
	.string	"data"
	.byte	0x6
	.byte	0xed
	.uaword	0x344
	.byte	0
	.uleb128 0xa
	.string	"size"
	.byte	0x6
	.byte	0xef
	.uaword	0x3af
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"SecM_RomBufferType"
	.byte	0x6
	.byte	0xf0
	.uaword	0x3df
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SecM_CryptKeyType"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x402
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x470
	.uleb128 0xc
	.string	"shared"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x428
	.byte	0
	.uleb128 0xc
	.string	"individual"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x428
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"SecM_AsymKeyType"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x442
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x4c8
	.uleb128 0xc
	.string	"data"
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x344
	.byte	0
	.uleb128 0xc
	.string	"size"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x3af
	.byte	0x4
	.uleb128 0xc
	.string	"cryptoElementId"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x1a4
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"SecM_CryptographicKeyValueType"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x489
	.uleb128 0x4
	.string	"SecM_CryptographicKeyValuePtrType"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x519
	.uleb128 0x5
	.byte	0x4
	.uaword	0x51f
	.uleb128 0x6
	.uaword	0x4c8
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.uahalf	0x158
	.uaword	0x550
	.uleb128 0xc
	.string	"count"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x2cd
	.byte	0
	.uleb128 0xc
	.string	"keyValues"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x4ef
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"SecM_CryptographicKeyType"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x524
	.uleb128 0x4
	.string	"SecM_CryptographicKeyPtrType"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x597
	.uleb128 0x5
	.byte	0x4
	.uaword	0x59d
	.uleb128 0x6
	.uaword	0x550
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x167
	.uaword	0x676
	.uleb128 0xe
	.string	"SECM_HASH"
	.sleb128 0
	.uleb128 0xe
	.string	"SECM_MACVERIFY"
	.sleb128 1
	.uleb128 0xe
	.string	"SECM_MACGENERATE"
	.sleb128 2
	.uleb128 0xe
	.string	"SECM_ENCRYPTION"
	.sleb128 3
	.uleb128 0xe
	.string	"SECM_DECRYPTION"
	.sleb128 4
	.uleb128 0xe
	.string	"SECM_RANDOMGENERATE"
	.sleb128 5
	.uleb128 0xe
	.string	"SECM_RANDOMSEED"
	.sleb128 6
	.uleb128 0xe
	.string	"SECM_SIGNATUREVERIFY"
	.sleb128 7
	.uleb128 0xe
	.string	"SECM_AEADENCRYPT"
	.sleb128 8
	.uleb128 0xe
	.string	"SECM_AEADDECRYPT"
	.sleb128 9
	.uleb128 0xe
	.string	"SECM_KEYDERIVE"
	.sleb128 10
	.byte	0
	.uleb128 0x4
	.string	"SecM_JobServiceType"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x5a2
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x177
	.uaword	0x71f
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_NONE"
	.sleb128 0
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_AES"
	.sleb128 1
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_MAC"
	.sleb128 2
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_SYMMETRIC"
	.sleb128 3
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_ASYMMETRIC"
	.sleb128 4
	.uleb128 0xe
	.string	"SEC_KEY_TYPE_PBKDF2"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.string	"SecM_JobKeyType"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x692
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x7a1
	.uleb128 0xc
	.string	"service"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x676
	.byte	0
	.uleb128 0xc
	.string	"csmJobId"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x1a4
	.byte	0x4
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x1a4
	.byte	0x8
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2b8
	.byte	0xc
	.uleb128 0xc
	.string	"keyType"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x71f
	.byte	0x10
	.uleb128 0xc
	.string	"jobParam"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x37d
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"SecM_JobInfoType"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x737
	.uleb128 0x4
	.string	"SecM_JobInfoPtrType"
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0x7d6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7dc
	.uleb128 0x6
	.uaword	0x7a1
	.uleb128 0x4
	.string	"SecM_OperationModeType"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x265
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_GetKeyValueByElementId"
	.byte	0x1
	.uahalf	0x2fe
	.byte	0x1
	.uaword	0x4ef
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x89a
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x2b8
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"keyElementId"
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x1a4
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"pKeyValue"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x4ef
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.uahalf	0x304
	.uaword	0x3c6
	.uaword	.LLST1
	.uleb128 0x15
	.string	"pKey"
	.byte	0x1
	.uahalf	0x305
	.uaword	0x572
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_HashJob"
	.byte	0x1
	.uahalf	0x324
	.byte	0x1
	.uaword	0x398
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x97d
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x324
	.uaword	0x2b8
	.uaword	.LLST2
	.uleb128 0x17
	.string	"mode"
	.byte	0x1
	.uahalf	0x324
	.uaword	0x7e1
	.uaword	.LLST3
	.uleb128 0x17
	.string	"dataPtr"
	.byte	0x1
	.uahalf	0x324
	.uaword	0x31c
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x325
	.uaword	0x2b8
	.uaword	.LLST5
	.uleb128 0x17
	.string	"hashPtr"
	.byte	0x1
	.uahalf	0x325
	.uaword	0x2f8
	.uaword	.LLST6
	.uleb128 0x17
	.string	"hashLengthPtr"
	.byte	0x1
	.uahalf	0x325
	.uaword	0x316
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x327
	.uaword	0x398
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x328
	.uaword	0x7ba
	.uleb128 0x1a
	.uaword	.LVL9
	.uaword	0xf1d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_RandomGenerateJob"
	.byte	0x1
	.uahalf	0x4b9
	.byte	0x1
	.uaword	0x398
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa2b
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x2b8
	.uaword	.LLST9
	.uleb128 0x17
	.string	"resultPtr"
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x2f8
	.uaword	.LLST10
	.uleb128 0x17
	.string	"resultLengthPtr"
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x316
	.uaword	.LLST11
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x4bb
	.uaword	0x398
	.uaword	.LLST12
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x4bc
	.uaword	0x7ba
	.uleb128 0x1a
	.uaword	.LVL14
	.uaword	0xf54
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_RandomSeedJob"
	.byte	0x1
	.uahalf	0x4db
	.byte	0x1
	.uaword	0x398
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xace
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x2b8
	.uaword	.LLST13
	.uleb128 0x17
	.string	"seedPtr"
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x31c
	.uaword	.LLST14
	.uleb128 0x17
	.string	"seedLength"
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x2b8
	.uaword	.LLST15
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x4dd
	.uaword	0x398
	.uaword	.LLST16
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x7ba
	.uleb128 0x1a
	.uaword	.LVL19
	.uaword	0xf86
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"SecM_InitKey"
	.byte	0x1
	.uahalf	0x1fb
	.byte	0x1
	.uaword	0x398
	.byte	0x1
	.uaword	0xb0e
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0x7ba
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0x35c
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x398
	.byte	0
	.uleb128 0x1c
	.string	"SecM_InitKeyAsymmetric"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x398
	.byte	0x1
	.uaword	0xbd2
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x1a4
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x2b8
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x35c
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x398
	.uleb128 0x15
	.string	"csmResult"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x244
	.uleb128 0x15
	.string	"asymKey"
	.byte	0x1
	.uahalf	0x131
	.uaword	0xbd2
	.uleb128 0x15
	.string	"sharedKeyElement"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x4ef
	.uleb128 0x15
	.string	"publicKeyElement"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x4ef
	.uleb128 0x15
	.string	"privateKeyElement"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x4ef
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x470
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_SignatureVerifyJob"
	.byte	0x1
	.uahalf	0x503
	.byte	0x1
	.uaword	0x398
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe70
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x503
	.uaword	0x2b8
	.uaword	.LLST17
	.uleb128 0x17
	.string	"mode"
	.byte	0x1
	.uahalf	0x503
	.uaword	0x7e1
	.uaword	.LLST18
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x503
	.uaword	0x35c
	.uaword	.LLST19
	.uleb128 0x17
	.string	"dataPtr"
	.byte	0x1
	.uahalf	0x504
	.uaword	0x31c
	.uaword	.LLST20
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x504
	.uaword	0x2b8
	.uaword	.LLST21
	.uleb128 0x17
	.string	"signaturePtr"
	.byte	0x1
	.uahalf	0x504
	.uaword	0x31c
	.uaword	.LLST22
	.uleb128 0x17
	.string	"signatureLength"
	.byte	0x1
	.uahalf	0x504
	.uaword	0x2b8
	.uaword	.LLST23
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x506
	.uaword	0x398
	.uaword	.LLST24
	.uleb128 0x1e
	.string	"verifyResult"
	.byte	0x1
	.uahalf	0x507
	.uaword	0x286
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x508
	.uaword	0x7ba
	.uleb128 0x1f
	.uaword	0xace
	.uaword	.LBB7
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x513
	.uaword	0xe38
	.uleb128 0x20
	.uaword	0xaf5
	.uaword	.LLST25
	.uleb128 0x21
	.uaword	0xae9
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x23
	.uaword	0xb01
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	0xb0e
	.uaword	.LBB9
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x22a
	.uaword	0xe25
	.uleb128 0x20
	.uaword	0xb4b
	.uaword	.LLST27
	.uleb128 0x20
	.uaword	0xb3f
	.uaword	.LLST28
	.uleb128 0x20
	.uaword	0xb33
	.uaword	.LLST29
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.uaword	0xb57
	.uaword	.LLST30
	.uleb128 0x23
	.uaword	0xb63
	.uaword	.LLST31
	.uleb128 0x23
	.uaword	0xb75
	.uaword	.LLST32
	.uleb128 0x23
	.uaword	0xb85
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	0xb9e
	.uaword	.LLST34
	.uleb128 0x23
	.uaword	0xbb7
	.uaword	.LLST35
	.uleb128 0x24
	.uaword	.LVL29
	.uaword	0x800
	.uaword	0xd7b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL31
	.uaword	0x800
	.uaword	0xd95
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL33
	.uaword	0x800
	.uaword	0xdaf
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xa2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL35
	.uaword	0xfb4
	.uaword	0xdc3
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL38
	.uaword	0xfb4
	.uaword	0xdd7
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL43
	.uaword	0xfb4
	.uaword	0xdeb
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL46
	.uaword	0xfb4
	.uaword	0xdff
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL49
	.uaword	0xfb4
	.uaword	0xe13
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL52
	.uaword	0xfb4
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL58
	.uaword	0xfea
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL62
	.uaword	0x100f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8a
	.sleb128 0
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"SecM_CancelAllJobs"
	.byte	0x1
	.uahalf	0x761
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xebd
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x763
	.uaword	0x3c6
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.LVL69
	.uaword	0x1056
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x550
	.uaword	0xecd
	.uleb128 0x27
	.uaword	0x41c
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.string	"SecM_CryptographicKeys"
	.byte	0x7
	.byte	0x65
	.uaword	0xeed
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xebd
	.uleb128 0x26
	.uaword	0x7a1
	.uaword	0xf02
	.uleb128 0x27
	.uaword	0x41c
	.byte	0x4
	.byte	0
	.uleb128 0x28
	.string	"SecM_JobInfo"
	.byte	0x7
	.byte	0x73
	.uaword	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xef2
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_Hash"
	.byte	0x8
	.uahalf	0x283
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0xf54
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x265
	.uleb128 0x2a
	.uaword	0x25a
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x2a6
	.uleb128 0x2a
	.uaword	0x2ac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_RandomGenerate"
	.byte	0x8
	.uahalf	0x3b5
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0xf86
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x2a6
	.uleb128 0x2a
	.uaword	0x2ac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_RandomSeed"
	.byte	0x8
	.uahalf	0x1e4
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0xfb4
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x25a
	.uleb128 0x2a
	.uaword	0x1a4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_KeyElementSet"
	.byte	0x8
	.uahalf	0x144
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0xfea
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x25a
	.uleb128 0x2a
	.uaword	0x1a4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_KeySetValid"
	.byte	0x8
	.uahalf	0x157
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0x100f
	.uleb128 0x2a
	.uaword	0x1a4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Csm_SignatureVerify"
	.byte	0x8
	.uahalf	0x395
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uaword	0x1056
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x265
	.uleb128 0x2a
	.uaword	0x25a
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x25a
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x2b2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Csm_CancelJob"
	.byte	0x8
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x244
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x1a4
	.uleb128 0x2a
	.uaword	0x265
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL9-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL21
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL56
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL21
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL56
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL66
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL22
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL24
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL24
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL25
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL25
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL25
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL25
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL26
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL31-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL33-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL35-1
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL41
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0
	.uaword	0
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0
	.uaword	0
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"smhKeyId"
.LASF5:
	.string	"pJobInfo"
.LASF3:
	.string	"dataLength"
.LASF4:
	.string	"result"
.LASF0:
	.string	"csmKeyId"
.LASF6:
	.string	"keyPtr"
.LASF2:
	.string	"jobId"
	.extern	Csm_CancelJob,STT_FUNC,0
	.extern	Csm_SignatureVerify,STT_FUNC,0
	.extern	Csm_KeySetValid,STT_FUNC,0
	.extern	Csm_KeyElementSet,STT_FUNC,0
	.extern	Csm_RandomSeed,STT_FUNC,0
	.extern	Csm_RandomGenerate,STT_FUNC,0
	.extern	Csm_Hash,STT_FUNC,0
	.extern	SecM_JobInfo,STT_OBJECT,120
	.extern	SecM_CryptographicKeys,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
