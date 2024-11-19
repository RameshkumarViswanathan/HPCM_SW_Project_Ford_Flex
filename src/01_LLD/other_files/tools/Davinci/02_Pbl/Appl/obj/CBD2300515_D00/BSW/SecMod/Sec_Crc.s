	.file	"Sec_Crc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SecM_InitPowerOnCRC,"ax",@progbits
	.align 1
	.global	SecM_InitPowerOnCRC
	.type	SecM_InitPowerOnCRC, @function
SecM_InitPowerOnCRC:
.LFB2:
	.file 1 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.c"
	.loc 1 808 0
	.loc 1 821 0
	mov	%d15, -23131
	movh.a	%a15, hi:lookupCrc16
	lea	%a15, [%a15] lo:lookupCrc16
	st.h	[%a15] 512, %d15
	ret
.LFE2:
	.size	SecM_InitPowerOnCRC, .-SecM_InitPowerOnCRC
.section .text.SecM_ComputeCrc16,"ax",@progbits
	.align 1
	.global	SecM_ComputeCrc16
	.type	SecM_ComputeCrc16, @function
SecM_ComputeCrc16:
.LFB4:
	.loc 1 869 0
.LVL0:
	.loc 1 875 0
	ld.bu	%d15, [%a4] 2
	add	%d15, -1
	.loc 1 873 0
	mov	%d2, 255
	.loc 1 875 0
	jge.u	%d15, 5, .L3
	mov.aa	%a12, %a4
	movh.a	%a15, hi:.L5
	lea	%a15, [%a15] lo:.L5
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
.L7:
	.loc 1 909 0
	mov	%d2, 0
	ret
.L4:
	.loc 1 881 0
	movh.a	%a15, hi:lookupCrc16
	lea	%a15, [%a15] lo:lookupCrc16
	ld.hu	%d15, [%a15] 512
	mov.u	%d2, 49863
	jeq	%d15, %d2, .L10
	.loc 1 884 0
	ld.a	%a13, [%a4] 16
.LVL1:
.LBB6:
.LBB7:
	.loc 1 406 0
	mov	%d8, 0
	.loc 1 409 0
	nez.a	%d10, %a13
	.loc 1 428 0
	mov	%d9, 4129
	.loc 1 449 0
	movh	%d12, hi:lookupCrc16
	addi	%d12, %d12, lo:lookupCrc16
	.loc 1 406 0
	mov	%d11, 256
.LVL2:
.L15:
	.loc 1 409 0
	and	%d15, %d8, 31
	eq	%d15, %d15, 0
	and	%d15, %d10
	jz	%d15, .L11
	calli	%a13
.LVL3:
.L11:
	.loc 1 414 0
	sh	%d15, %d8, 8
	extr.u	%d15, %d15, 0, 16
.LVL4:
	.loc 1 428 0
	mov.a	%a15, 7
.LVL5:
.L14:
	.loc 1 425 0
	extr	%d2, %d15, 0, 16
	jgez	%d2, .L12
	.loc 1 427 0
	sh	%d15, 1
.LVL6:
	extr.u	%d15, %d15, 0, 16
.LVL7:
	.loc 1 428 0
	xor	%d15, %d9
.LVL8:
	j	.L13
.L12:
	.loc 1 432 0
	sh	%d15, 1
.LVL9:
	extr.u	%d15, %d15, 0, 16
.LVL10:
.L13:
	loop	%a15, .L14
	.loc 1 449 0
	mov.a	%a2, %d12
	addsc.a	%a15, %a2, %d8, 1
	st.h	[%a15]0, %d15
	.loc 1 406 0
	add	%d8, 1
.LVL11:
	jne	%d8, %d11, .L15
	.loc 1 453 0
	mov	%d15, -15673
.LVL12:
	movh.a	%a15, hi:lookupCrc16
	lea	%a15, [%a15] lo:lookupCrc16
	st.h	[%a15] 512, %d15
.LVL13:
.L10:
.LBE7:
.LBE6:
	.loc 1 889 0
	mov	%d15, -1
	st.h	[%a12]0, %d15
.LVL14:
	.loc 1 891 0
	mov	%d2, 0
	.loc 1 893 0
	ret
.LVL15:
.L6:
.LBB8:
.LBB9:
	.loc 1 631 0
	ld.hu	%d15, [%a4]0
.LVL16:
	.loc 1 632 0
	ld.hu	%d9, [%a4] 12
.LVL17:
	.loc 1 633 0
	ld.a	%a13, [%a4] 16
.LVL18:
	.loc 1 636 0
	jz	%d9, .L16
	mov	%d8, 0
	.loc 1 639 0
	nez.a	%d10, %a13
	.loc 1 654 0
	movh	%d11, hi:lookupCrc16
	addi	%d11, %d11, lo:lookupCrc16
.LVL19:
.L18:
	.loc 1 639 0
	and	%d2, %d8, 31
	eq	%d2, %d2, 0
	and	%d2, %d10
	jz	%d2, .L17
	calli	%a13
.LVL20:
.L17:
	.loc 1 642 0
	ld.a	%a2, [%a12] 4
	addsc.a	%a15, %a2, %d8, 0
.LVL21:
	.loc 1 653 0
	ld.bu	%d3, [%a15]0
	sh	%d2, %d15, -8
	xor	%d2, %d3
	.loc 1 654 0
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d2, 1
.LVL22:
	sh	%d15, %d15, 8
.LVL23:
	ld.h	%d2, [%a15]0
	xor	%d15, %d2
	extr.u	%d15, %d15, 0, 16
.LVL24:
	.loc 1 636 0
	add	%d8, 1
.LVL25:
	jne	%d9, %d8, .L18
.LVL26:
.L16:
	.loc 1 670 0
	st.h	[%a12]0, %d15
.LBE9:
.LBE8:
	.loc 1 900 0
	mov	%d2, 0
	ret
.LVL27:
.L8:
	.loc 1 915 0
	ld.hu	%d15, [%a4] 12
	jne	%d15, 2, .L3
	.loc 1 918 0
	mov	%d4, 2
	ld.a	%a4, [%a4] 4
.LVL28:
	call	SecM_GetInteger
.LVL29:
	.loc 1 921 0
	ld.hu	%d15, [%a12]0
	.loc 1 929 0
	extr.u	%d2, %d2, 0, 16
	eq	%d2, %d15, %d2
.LVL30:
	mov	%d3, 0
	sel	%d2, %d2, %d3, 2
	ret
.LVL31:
.L9:
	.loc 1 937 0
	ld.hu	%d15, [%a4] 12
	jlt.u	%d15, 2, .L3
	.loc 1 939 0
	mov	%d4, 2
	ld.hu	%d5, [%a4]0
	ld.a	%a4, [%a4] 8
.LVL32:
	call	SecM_SetInteger
.LVL33:
	.loc 1 941 0
	mov	%d15, 2
	st.h	[%a12] 12, %d15
.LVL34:
	.loc 1 943 0
	mov	%d2, 0
.LVL35:
.L3:
	.loc 1 956 0
	ret
.LFE4:
	.size	SecM_ComputeCrc16, .-SecM_ComputeCrc16
.section .text.SecM_ComputeCRC,"ax",@progbits
	.align 1
	.global	SecM_ComputeCRC
	.type	SecM_ComputeCRC, @function
SecM_ComputeCRC:
.LFB3:
	.loc 1 846 0
.LVL36:
	.loc 1 848 0
	call	SecM_ComputeCrc16
.LVL37:
	.loc 1 856 0
	ret
.LFE3:
	.size	SecM_ComputeCRC, .-SecM_ComputeCRC
	.local	lookupCrc16
.section .bss,"aw",@nobits
	.align 1
	.type		 lookupCrc16,@object
	.size		 lookupCrc16,514
lookupCrc16:
	.space	514
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
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Types.h"
	.file 4 "../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.h"
	.file 5 "../../../../CBD2300515_D00/BSW/SecMod/Sec.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x76d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/SecMod/Sec_Crc.c"
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
	.uaword	0x148
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x175
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x197
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"SecM_WordType"
	.byte	0x3
	.byte	0x87
	.uaword	0x209
	.uleb128 0x4
	.string	"SecM_ByteType"
	.byte	0x3
	.byte	0x8c
	.uaword	0x1ea
	.uleb128 0x4
	.string	"SecM_ShortType"
	.byte	0x3
	.byte	0x8e
	.uaword	0x1f9
	.uleb128 0x4
	.string	"SecM_RamDataType"
	.byte	0x3
	.byte	0x91
	.uaword	0x281
	.uleb128 0x5
	.byte	0x4
	.uaword	0x23e
	.uleb128 0x4
	.string	"SecM_ConstRamDataType"
	.byte	0x3
	.byte	0x97
	.uaword	0x2a4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2aa
	.uleb128 0x6
	.uaword	0x23e
	.uleb128 0x4
	.string	"SecM_StatusType"
	.byte	0x3
	.byte	0xa8
	.uaword	0x23e
	.uleb128 0x4
	.string	"SecM_LengthType"
	.byte	0x3
	.byte	0xaa
	.uaword	0x253
	.uleb128 0x4
	.string	"FL_WDTriggerFctType"
	.byte	0x3
	.byte	0xc4
	.uaword	0x2f8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2fe
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.string	"SecM_ByteFastType"
	.byte	0x3
	.byte	0xd5
	.uaword	0x229
	.uleb128 0x4
	.string	"SecM_ShortFastType"
	.byte	0x3
	.byte	0xd6
	.uaword	0x229
	.uleb128 0x4
	.string	"SecM_LengthFastType"
	.byte	0x3
	.byte	0xda
	.uaword	0x319
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"SecM_Crc16Type"
	.byte	0x3
	.uahalf	0x1e8
	.uaword	0x253
	.uleb128 0x8
	.byte	0x14
	.byte	0x4
	.byte	0x5a
	.uaword	0x3f8
	.uleb128 0x9
	.string	"currentCRC"
	.byte	0x4
	.byte	0x5c
	.uaword	0x35a
	.byte	0
	.uleb128 0x9
	.string	"crcState"
	.byte	0x4
	.byte	0x5d
	.uaword	0x23e
	.byte	0x2
	.uleb128 0x9
	.string	"crcSourceBuffer"
	.byte	0x4
	.byte	0x5e
	.uaword	0x287
	.byte	0x4
	.uleb128 0x9
	.string	"crcOutputBuffer"
	.byte	0x4
	.byte	0x5f
	.uaword	0x269
	.byte	0x8
	.uleb128 0x9
	.string	"crcByteCount"
	.byte	0x4
	.byte	0x60
	.uaword	0x2c6
	.byte	0xc
	.uleb128 0x9
	.string	"wdTriggerFct"
	.byte	0x4
	.byte	0x61
	.uaword	0x2dd
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"SecM_CRC16ParamType"
	.byte	0x4
	.byte	0x62
	.uaword	0x371
	.uleb128 0x4
	.string	"SecM_CRCParamType"
	.byte	0x4
	.byte	0x77
	.uaword	0x3f8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x413
	.uleb128 0xa
	.byte	0x1
	.string	"SecM_InitPowerOnCRC"
	.byte	0x1
	.uahalf	0x327
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xb
	.string	"SecM_GenerateLookupCrc16"
	.byte	0x1
	.uahalf	0x18e
	.byte	0x1
	.byte	0x1
	.uaword	0x4b0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2dd
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x191
	.uaword	0x319
	.uleb128 0xe
	.string	"bitIndex"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x300
	.uleb128 0xe
	.string	"crc"
	.byte	0x1
	.uahalf	0x193
	.uaword	0x35a
	.byte	0
	.uleb128 0xb
	.string	"SecM_UpdateCrc16"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.byte	0x1
	.uaword	0x53f
	.uleb128 0xf
	.string	"pCrcParam"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x53f
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x319
	.uleb128 0xe
	.string	"sourceIndex"
	.byte	0x1
	.uahalf	0x270
	.uaword	0x333
	.uleb128 0xe
	.string	"byteCount"
	.byte	0x1
	.uahalf	0x271
	.uaword	0x333
	.uleb128 0xe
	.string	"tmpCrc"
	.byte	0x1
	.uahalf	0x272
	.uaword	0x35a
	.uleb128 0xe
	.string	"currentData"
	.byte	0x1
	.uahalf	0x273
	.uaword	0x23e
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x274
	.uaword	0x2dd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3f8
	.uleb128 0x10
	.byte	0x1
	.string	"SecM_ComputeCrc16"
	.byte	0x1
	.uahalf	0x364
	.byte	0x1
	.uaword	0x2af
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x672
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x364
	.uaword	0x53f
	.uaword	.LLST0
	.uleb128 0x12
	.string	"result"
	.byte	0x1
	.uahalf	0x366
	.uaword	0x2af
	.uaword	.LLST1
	.uleb128 0x12
	.string	"crcTransferred"
	.byte	0x1
	.uahalf	0x367
	.uaword	0x35a
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	0x457
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x374
	.uaword	0x5f1
	.uleb128 0x14
	.uaword	0x47a
	.uaword	.LLST3
	.uleb128 0x15
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x16
	.uaword	0x486
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x492
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	0x4a3
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x4b0
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x382
	.uaword	0x64f
	.uleb128 0x14
	.uaword	0x4cb
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x16
	.uaword	0x4dd
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	0x4e9
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	0x4fd
	.uaword	.LLST10
	.uleb128 0x16
	.uaword	0x50f
	.uaword	.LLST11
	.uleb128 0x16
	.uaword	0x51e
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	0x532
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL29
	.uaword	0x721
	.uaword	0x662
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.uaword	.LVL33
	.uaword	0x74a
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"SecM_ComputeCRC"
	.byte	0x1
	.uahalf	0x34d
	.byte	0x1
	.uaword	0x2af
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6bd
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x34d
	.uaword	0x42c
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	.LVL37
	.uaword	0x545
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
	.uaword	0x35a
	.uaword	0x6ce
	.uleb128 0x1c
	.uaword	0x34e
	.uahalf	0x100
	.byte	0
	.uleb128 0x1d
	.string	"lookupCrc16"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x6bd
	.byte	0x5
	.byte	0x3
	.uaword	lookupCrc16
	.uleb128 0x1e
	.string	"initialValueCrc16"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x703
	.sleb128 -1
	.uleb128 0x6
	.uaword	0x35a
	.uleb128 0x1f
	.string	"finalValueCrc16"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x703
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"SecM_GetInteger"
	.byte	0x5
	.byte	0x99
	.byte	0x1
	.uaword	0x229
	.byte	0x1
	.uaword	0x74a
	.uleb128 0x21
	.uaword	0x300
	.uleb128 0x21
	.uaword	0x287
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"SecM_SetInteger"
	.byte	0x5
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x300
	.uleb128 0x21
	.uaword	0x229
	.uleb128 0x21
	.uaword	0x269
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2116
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL35
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x15
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL17
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x8
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"pWatchdog"
.LASF0:
	.string	"tableIndex"
.LASF2:
	.string	"crcParam"
	.extern	SecM_SetInteger,STT_FUNC,0
	.extern	SecM_GetInteger,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
