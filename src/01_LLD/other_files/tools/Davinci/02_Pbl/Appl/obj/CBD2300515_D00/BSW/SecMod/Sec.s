	.file	"Sec.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SecM_InitPowerOn,"ax",@progbits
	.align 1
	.global	SecM_InitPowerOn
	.type	SecM_InitPowerOn, @function
SecM_InitPowerOn:
.LFB1:
	.file 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec.c"
	.loc 1 107 0
.LVL0:
	.loc 1 117 0
	call	SecM_InitPowerOnCRC
.LVL1:
	.loc 1 118 0
	call	SecM_InitPowerOnVerification
.LVL2:
	.loc 1 121 0
	mov	%d2, 0
	ret
.LFE1:
	.size	SecM_InitPowerOn, .-SecM_InitPowerOn
.section .text.SecM_Init,"ax",@progbits
	.align 1
	.global	SecM_Init
	.type	SecM_Init, @function
SecM_Init:
.LFB2:
	.loc 1 129 0
	.loc 1 130 0
	call	SecM_InitCert
.LVL3:
	ret
.LFE2:
	.size	SecM_Init, .-SecM_Init
.section .text.SecM_Task,"ax",@progbits
	.align 1
	.global	SecM_Task
	.type	SecM_Task, @function
SecM_Task:
.LFB3:
	.loc 1 140 0
.LBB4:
.LBB5:
	.loc 1 91 0
	movh.a	%a15, hi:secTimer
	ld.hu	%d15, [%a15] lo:secTimer
	jz	%d15, .L3
	add	%d15, -1
	st.h	[%a15] lo:secTimer, %d15
.L3:
	ret
.LBE5:
.LBE4:
.LFE3:
	.size	SecM_Task, .-SecM_Task
.section .text.SecM_GetInteger,"ax",@progbits
	.align 1
	.global	SecM_GetInteger
	.type	SecM_GetInteger, @function
SecM_GetInteger:
.LFB4:
	.loc 1 154 0
.LVL4:
	.loc 1 158 0
	mov	%d2, 0
	.loc 1 162 0
	jz	%d4, .L6
	mov.aa	%a15, %a4
	addsc.a	%a4, %a4, %d4, 0
.LVL5:
	mov.d	%d15, %a15
	not	%d15
	addsc.a	%a4, %a4, %d15, 0
.LVL6:
.L7:
	.loc 1 165 0
	sh	%d2, %d2, 8
.LVL7:
	.loc 1 167 0
	ld.bu	%d15, [%a15+]1
.LVL8:
	or	%d2, %d15
.LVL9:
	loop	%a4, .L7
.LVL10:
.L6:
	.loc 1 173 0
	ret
.LFE4:
	.size	SecM_GetInteger, .-SecM_GetInteger
.section .text.SecM_SetInteger,"ax",@progbits
	.align 1
	.global	SecM_SetInteger
	.type	SecM_SetInteger, @function
SecM_SetInteger:
.LFB5:
	.loc 1 184 0
.LVL11:
	.loc 1 191 0
	jz	%d4, .L10
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL12:
.L13:
	.loc 1 193 0
	add	%d4, -1
.LVL13:
	.loc 1 195 0
	addsc.a	%a2, %a4, %d4, 0
	st.b	[%a2]0, %d5
	.loc 1 197 0
	sh	%d5, -8
.LVL14:
	loop	%a15, .L13
.L10:
	ret
.LFE5:
	.size	SecM_SetInteger, .-SecM_SetInteger
.section .text.SecM_CopyBuffer,"ax",@progbits
	.align 1
	.global	SecM_CopyBuffer
	.type	SecM_CopyBuffer, @function
SecM_CopyBuffer:
.LFB6:
	.loc 1 210 0
.LVL15:
	.loc 1 214 0
	jz	%d4, .L15
	mov	%d2, 0
.LVL16:
.L17:
	.loc 1 216 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	ld.bu	%d15, [%a15]0
	addsc.a	%a15, %a5, %d2, 0
	st.b	[%a15]0, %d15
.LVL17:
	add	%d2, 1
.LVL18:
	.loc 1 214 0 discriminator 3
	extr.u	%d15, %d2, 0, 16
	jlt.u	%d15, %d4, .L17
.LVL19:
.L15:
	ret
.LFE6:
	.size	SecM_CopyBuffer, .-SecM_CopyBuffer
.section .text.SecM_InitBuffer,"ax",@progbits
	.align 1
	.global	SecM_InitBuffer
	.type	SecM_InitBuffer, @function
SecM_InitBuffer:
.LFB7:
	.loc 1 228 0
.LVL20:
	.loc 1 229 0
	mov	%d15, 0
	st.h	[%a4] 4, %d15
	.loc 1 230 0
	st.h	[%a4] 6, %d4
	ret
.LFE7:
	.size	SecM_InitBuffer, .-SecM_InitBuffer
.section .text.SecM_AccumulateBufferStore,"ax",@progbits
	.align 1
	.global	SecM_AccumulateBufferStore
	.type	SecM_AccumulateBufferStore, @function
SecM_AccumulateBufferStore:
.LFB8:
	.loc 1 244 0
.LVL21:
	.loc 1 247 0
	ld.hu	%d3, [%a4] 6
	ld.hu	%d15, [%a4] 4
	jne	%d3, %d15, .L21
.LVL22:
	.loc 1 251 0
	mov	%d15, 0
	st.h	[%a6]0, %d15
	.loc 1 250 0
	mov	%d8, 1
	j	.L22
.LVL23:
.L21:
	mov.aa	%a12, %a6
	mov.aa	%a15, %a4
	.loc 1 253 0
	ld.hu	%d4, [%a6]0
	sub	%d2, %d3, %d15
	jge	%d2, %d4, .L23
	.loc 1 256 0
	extr.u	%d4, %d2, 0, 16
	st.h	[%a6]0, %d4
	.loc 1 257 0
	ld.hu	%d15, [%a4] 4
	mov.aa	%a4, %a5
.LVL24:
	ld.a	%a2, [%a15]0
	addsc.a	%a5, %a2, %d15, 0
.LVL25:
	call	SecM_CopyBuffer
.LVL26:
	.loc 1 258 0
	ld.h	%d2, [%a12]0
	ld.h	%d15, [%a15] 4
	add	%d15, %d2
	st.h	[%a15] 4, %d15
.LVL27:
	.loc 1 259 0
	mov	%d8, 1
	j	.L22
.LVL28:
.L23:
	.loc 1 245 0
	eq	%d8, %d4, %d2
.LVL29:
	.loc 1 268 0
	mov.aa	%a4, %a5
.LVL30:
	ld.a	%a2, [%a15]0
	addsc.a	%a5, %a2, %d15, 0
.LVL31:
	call	SecM_CopyBuffer
.LVL32:
	.loc 1 269 0
	ld.h	%d3, [%a12]0
	ld.h	%d15, [%a15] 4
	add	%d15, %d3
	st.h	[%a15] 4, %d15
.LVL33:
.L22:
	.loc 1 273 0
	mov	%d2, %d8
	ret
.LFE8:
	.size	SecM_AccumulateBufferStore, .-SecM_AccumulateBufferStore
.section .text.SecM_FifoBufferStore,"ax",@progbits
	.align 1
	.global	SecM_FifoBufferStore
	.type	SecM_FifoBufferStore, @function
SecM_FifoBufferStore:
.LFB9:
	.loc 1 289 0
.LVL34:
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
	mov.aa	%a12, %a6
.LVL35:
	.loc 1 292 0
	ld.hu	%d15, [%a4] 6
	ld.hu	%d2, [%a4] 4
	ld.hu	%d4, [%a6]0
	sub	%d3, %d15, %d2
	jlt	%d3, %d4, .L25
	.loc 1 295 0
	mov.aa	%a4, %a5
.LVL36:
	ld.a	%a2, [%a15]0
	addsc.a	%a5, %a2, %d2, 0
.LVL37:
	call	SecM_CopyBuffer
.LVL38:
	.loc 1 296 0
	ld.h	%d2, [%a12]0
	ld.h	%d15, [%a15] 4
	add	%d15, %d2
	st.h	[%a15] 4, %d15
	.loc 1 297 0
	mov	%d15, 0
	ld.a	%a15, [%SP]0
.LVL39:
	st.h	[%a15]0, %d15
	j	.L26
.LVL40:
.L25:
.LBB6:
	.loc 1 306 0
	min.u	%d8, %d4, %d15
.LVL41:
	.loc 1 307 0
	mov	%d9, 0
	jge.u	%d15, %d4, .L27
	.loc 1 307 0 is_stmt 0 discriminator 1
	sub	%d4, %d15
	extr.u	%d9, %d4, 0, 16
.L27:
.LVL42:
	.loc 1 309 0 is_stmt 1 discriminator 4
	jge.u	%d8, %d15, .L28
	.loc 1 311 0
	sub	%d15, %d2, %d15
	add	%d4, %d15, %d8
	ld.a	%a4, [%a15]0
.LVL43:
	mov.aa	%a5, %a7
.LVL44:
	extr.u	%d4, %d4, 0, 16
	call	SecM_CopyBuffer
.LVL45:
	.loc 1 312 0
	ld.h	%d2, [%a15] 4
	ld.h	%d15, [%a15] 6
	sub	%d15, %d2, %d15
	add	%d15, %d8
	ld.a	%a2, [%SP]0
	st.h	[%a2]0, %d15
	.loc 1 313 0
	ld.hu	%d2, [%a15] 4
	ld.hu	%d3, [%a15] 6
	sub	%d15, %d2, %d3
	mov.a	%a4, %d15
	addsc.a	%a4, %a4, %d8, 0
	sh	%d15, %d3, 1
	sub	%d15, %d2
	sub	%d4, %d15, %d8
	ld.a	%a2, [%a15]0
	add.a	%a4, %a2
	mov.aa	%a5, %a2
	extr.u	%d4, %d4, 0, 16
	call	SecM_CopyBuffer
.LVL46:
	.loc 1 314 0
	ld.h	%d15, [%a15] 6
	sub	%d15, %d8
	st.h	[%a15] 4, %d15
	j	.L29
.LVL47:
.L28:
	.loc 1 318 0
	ld.a	%a4, [%a15]0
.LVL48:
	mov.aa	%a5, %a7
.LVL49:
	mov	%d4, %d15
	call	SecM_CopyBuffer
.LVL50:
	.loc 1 319 0
	ld.hu	%d15, [%a15] 4
	ld.a	%a2, [%SP]0
	st.h	[%a2]0, %d15
	.loc 1 320 0
	mov	%d15, 0
	st.h	[%a15] 4, %d15
.L29:
	.loc 1 323 0
	ld.hu	%d15, [%a15] 4
	addsc.a	%a4, %a13, %d9, 0
	ld.a	%a2, [%a15]0
	addsc.a	%a5, %a2, %d15, 0
	mov	%d4, %d8
	call	SecM_CopyBuffer
.LVL51:
	.loc 1 324 0
	ld.h	%d15, [%a15] 4
	add	%d15, %d8
	st.h	[%a15] 4, %d15
	.loc 1 325 0
	st.h	[%a12]0, %d8
.LVL52:
.L26:
.LBE6:
	.loc 1 329 0
	mov	%d2, 0
	ret
.LFE9:
	.size	SecM_FifoBufferStore, .-SecM_FifoBufferStore
	.global	secTimer
.section .bss,"aw",@nobits
	.align 1
	.type	secTimer, @object
	.size	secTimer, 2
secTimer:
	.zero	2
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
	.file 4 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
	.file 5 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
	.file 6 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Verification.h"
	.file 7 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Cert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8b6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/SecMod/Sec.c"
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
	.uaword	0x144
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x171
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x193
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"SecM_WordType"
	.byte	0x3
	.byte	0x87
	.uaword	0x205
	.uleb128 0x4
	.string	"SecM_ByteType"
	.byte	0x3
	.byte	0x8c
	.uaword	0x1e6
	.uleb128 0x4
	.string	"SecM_ShortType"
	.byte	0x3
	.byte	0x8e
	.uaword	0x1f5
	.uleb128 0x4
	.string	"SecM_RamDataType"
	.byte	0x3
	.byte	0x91
	.uaword	0x27d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x23a
	.uleb128 0x4
	.string	"SecM_RamShortType"
	.byte	0x3
	.byte	0x93
	.uaword	0x29c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x24f
	.uleb128 0x4
	.string	"SecM_ConstRamDataType"
	.byte	0x3
	.byte	0x97
	.uaword	0x2bf
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c5
	.uleb128 0x6
	.uaword	0x23a
	.uleb128 0x4
	.string	"SecM_ConstVoidPtrType"
	.byte	0x3
	.byte	0x9f
	.uaword	0x2e7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ed
	.uleb128 0x7
	.uleb128 0x4
	.string	"SecM_StatusType"
	.byte	0x3
	.byte	0xa8
	.uaword	0x23a
	.uleb128 0x4
	.string	"SecM_LengthType"
	.byte	0x3
	.byte	0xaa
	.uaword	0x24f
	.uleb128 0x4
	.string	"SecM_ByteFastType"
	.byte	0x3
	.byte	0xd5
	.uaword	0x225
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xf3
	.uaword	0x363
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.byte	0xf6
	.uaword	0x265
	.byte	0
	.uleb128 0xa
	.string	"pos"
	.byte	0x3
	.byte	0xf8
	.uaword	0x24f
	.byte	0x4
	.uleb128 0xa
	.string	"size"
	.byte	0x3
	.byte	0xfa
	.uaword	0x305
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"SecM_RamBufferProcessingType"
	.byte	0x3
	.byte	0xfb
	.uaword	0x335
	.uleb128 0x4
	.string	"SecM_RamBufferProcessingPtrType"
	.byte	0x3
	.byte	0xfe
	.uaword	0x3ae
	.uleb128 0x5
	.byte	0x4
	.uaword	0x363
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.uahalf	0x187
	.uaword	0x3e8
	.uleb128 0xc
	.string	"SEC_BUFF_OK"
	.sleb128 0
	.uleb128 0xc
	.string	"SEC_BUFF_FULL"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"SecM_BufferRetType"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0x3c0
	.uleb128 0x4
	.string	"SecM_InitType"
	.byte	0x4
	.byte	0x78
	.uaword	0x2ca
	.uleb128 0xd
	.byte	0x1
	.string	"SecM_InitPowerOn"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	0x2ee
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x475
	.uleb128 0xe
	.string	"initParam"
	.byte	0x1
	.byte	0x6a
	.uaword	0x403
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6c
	.uaword	0x2ee
	.byte	0
	.uleb128 0x10
	.uaword	.LVL1
	.uaword	0x868
	.uleb128 0x10
	.uaword	.LVL2
	.uaword	0x882
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"SecM_Init"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x49d
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0x8a5
	.byte	0
	.uleb128 0x12
	.string	"SecM_TimerTask"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"SecM_Task"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4df
	.uleb128 0x13
	.uaword	0x49d
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x8e
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"SecM_GetInteger"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	0x225
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x549
	.uleb128 0x14
	.string	"count"
	.byte	0x1
	.byte	0x99
	.uaword	0x31c
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x2a2
	.uaword	.LLST1
	.uleb128 0x16
	.string	"output"
	.byte	0x1
	.byte	0x9b
	.uaword	0x225
	.uaword	.LLST2
	.uleb128 0x16
	.string	"index"
	.byte	0x1
	.byte	0x9c
	.uaword	0x31c
	.uaword	.LLST3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"SecM_SetInteger"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c0
	.uleb128 0xe
	.string	"count"
	.byte	0x1
	.byte	0xb7
	.uaword	0x31c
	.uaword	.LLST4
	.uleb128 0xe
	.string	"input"
	.byte	0x1
	.byte	0xb7
	.uaword	0x225
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb7
	.uaword	0x265
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.string	"index"
	.byte	0x1
	.byte	0xb9
	.uaword	0x31c
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"localInput"
	.byte	0x1
	.byte	0xba
	.uaword	0x225
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"SecM_CopyBuffer"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x624
	.uleb128 0x14
	.string	"input"
	.byte	0x1
	.byte	0xd1
	.uaword	0x2a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.string	"output"
	.byte	0x1
	.byte	0xd1
	.uaword	0x265
	.byte	0x1
	.byte	0x65
	.uleb128 0x14
	.string	"count"
	.byte	0x1
	.byte	0xd1
	.uaword	0x24f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"index"
	.byte	0x1
	.byte	0xd3
	.uaword	0x24f
	.uaword	.LLST6
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"SecM_InitBuffer"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x665
	.uleb128 0x14
	.string	"buff"
	.byte	0x1
	.byte	0xe3
	.uaword	0x387
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.string	"size"
	.byte	0x1
	.byte	0xe3
	.uaword	0x24f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"SecM_AccumulateBufferStore"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	0x3e8
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fd
	.uleb128 0xe
	.string	"buff"
	.byte	0x1
	.byte	0xf2
	.uaword	0x387
	.uaword	.LLST7
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.byte	0xf2
	.uaword	0x2a2
	.uaword	.LLST8
	.uleb128 0xe
	.string	"size"
	.byte	0x1
	.byte	0xf3
	.uaword	0x283
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf5
	.uaword	0x3e8
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	.LVL26
	.uaword	0x5c0
	.uaword	0x6eb
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL32
	.uaword	0x5c0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"SecM_FifoBufferStore"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.uaword	0x3e8
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x851
	.uleb128 0x1e
	.string	"buff"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x387
	.uaword	.LLST11
	.uleb128 0x1e
	.string	"src"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x2a2
	.uaword	.LLST12
	.uleb128 0x1e
	.string	"srcSize"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x283
	.uaword	.LLST13
	.uleb128 0x1e
	.string	"flushBuff"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x265
	.uaword	.LLST14
	.uleb128 0x1f
	.string	"flushSize"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x283
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x122
	.uaword	0x3e8
	.byte	0
	.uleb128 0x21
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0x840
	.uleb128 0x22
	.string	"localTransferSize"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x24f
	.uaword	.LLST15
	.uleb128 0x22
	.string	"srcIdx"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x24f
	.uaword	.LLST16
	.uleb128 0x1a
	.uaword	.LVL45
	.uaword	0x5c0
	.uaword	0x7f4
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL46
	.uaword	0x5c0
	.uaword	0x80b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL50
	.uaword	0x5c0
	.uaword	0x826
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL51
	.uaword	0x5c0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL38
	.uaword	0x5c0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"secTimer"
	.byte	0x1
	.byte	0x3f
	.uaword	0x24f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	secTimer
	.uleb128 0x24
	.byte	0x1
	.string	"SecM_InitPowerOnCRC"
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"SecM_InitPowerOnVerification"
	.byte	0x6
	.byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"SecM_InitCert"
	.byte	0x7
	.byte	0x4d
	.byte	0x1
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1e
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
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL6
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL33
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL21
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL28
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL32-1
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL33
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL52
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL40
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL45-1
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL47
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL50-1
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL34
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL45-1
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL50-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL42
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
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
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB1
	.uaword	.LFE1
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
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"buffer"
.LASF1:
	.string	"result"
	.extern	SecM_InitCert,STT_FUNC,0
	.extern	SecM_InitPowerOnVerification,STT_FUNC,0
	.extern	SecM_InitPowerOnCRC,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
