	.file	"bm_hdr.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblBmHdrGetBmHeader,"ax",@progbits
	.align 1
	.global	FblBmHdrGetBmHeader
	.type	FblBmHdrGetBmHeader, @function
FblBmHdrGetBmHeader:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/BSW/FblBmHdr/bm_hdr.c"
	.loc 1 84 0
.LVL0:
	mov	%d8, %d4
	mov.aa	%a15, %a4
.LVL1:
	.loc 1 89 0
	mov	%d4, %d5
.LVL2:
	mov	%d5, 24
.LVL3:
	call	FblReadProm
.LVL4:
	ne	%d15, %d2, 24
	.loc 1 91 0
	mov	%d2, 2
	.loc 1 89 0
	jnz	%d15, .L8
	j	.L9
.L10:
.LVL5:
	.loc 1 106 0
	ld.w	%d15, [%a15]0
	.loc 1 108 0
	movh	%d2, 60649
	addi	%d2, %d2, 25930
	eq	%d2, %d15, %d2
	mov	%d3, 0
	sel	%d2, %d2, %d3, 3
	ret
.LVL6:
.L9:
	.loc 1 97 0
	ld.bu	%d15, [%a15] 8
	.loc 1 99 0
	mov	%d2, 4
	.loc 1 97 0
	jeq	%d15, %d8, .L10
.L8:
	.loc 1 113 0
	ret
.LFE14:
	.size	FblBmHdrGetBmHeader, .-FblBmHdrGetBmHeader
.section .text.FblBmHdrCheckConsistency,"ax",@progbits
	.align 1
	.global	FblBmHdrCheckConsistency
	.type	FblBmHdrCheckConsistency, @function
FblBmHdrCheckConsistency:
.LFB15:
	.loc 1 123 0
.LVL7:
	.loc 1 133 0
	ld.w	%d15, [%a4]0
	.loc 1 169 0
	movh	%d2, 60649
	addi	%d2, %d2, 25930
	ne	%d2, %d15, %d2
	ret
.LFE15:
	.size	FblBmHdrCheckConsistency, .-FblBmHdrCheckConsistency
.section .text.FblBmHdrFindValidHeader,"ax",@progbits
	.align 1
	.global	FblBmHdrFindValidHeader
	.type	FblBmHdrFindValidHeader, @function
FblBmHdrFindValidHeader:
.LFB16:
	.loc 1 188 0
.LVL8:
	sub.a	%SP, 48
.LCFI0:
	mov	%d8, %d4
	mov.aa	%a15, %a4
.LVL9:
	.loc 1 196 0
	lea	%a4, [%SP] 36
.LVL10:
	call	FblLbtBlockFilterInit
.LVL11:
	.loc 1 197 0
	mov.aa	%a12, %SP
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 36
	call	FblLbtBlockFirst
.LVL12:
	mov.aa	%a2, %a15
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e2, [%a12+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 193 0
	mov	%d15, 7
	.loc 1 207 0
	mov	%d9, 1
	.loc 1 203 0
	lea	%a13, [%a15] 32
	.loc 1 217 0
	mov.aa	%a12, %SP
	.loc 1 198 0
	j	.L13
.LVL13:
.L16:
	.loc 1 201 0
	mov	%d4, %d8
	mov.aa	%a4, %a15
	call	ApplFblBmIsValidBlock
.LVL14:
	.loc 1 207 0
	mov	%d15, %d9
	.loc 1 201 0
	jnz	%d2, .L14
	.loc 1 203 0
	mov	%d4, %d8
	ld.w	%d5, [%a15] 24
	mov.aa	%a4, %a13
	call	FblBmHdrGetBmHeader
.LVL15:
	mov	%d15, %d2
.LVL16:
	.loc 1 210 0
	jz	%d2, .L15
.LVL17:
.L14:
	.loc 1 217 0
	mov.aa	%a4, %SP
	call	FblLbtBlockNext
.LVL18:
	mov.aa	%a4, %a15
	mov.aa	%a2, %a12
		# #chunks=4, chunksize=8, remains=0
	lea	%a3, 4-1
	0:
	ld.d	%e6, [%a2+]8
	st.d	[%a4+]8, %e6
	loop	%a3, 0b
.L13:
	.loc 1 198 0
	call	FblLbtBlockDone
.LVL19:
	jz	%d2, .L16
.L15:
.LVL20:
	.loc 1 221 0
	mov	%d2, %d15
	ret
.LFE16:
	.size	FblBmHdrFindValidHeader, .-FblBmHdrFindValidHeader
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
	.byte	0x4
	.uaword	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/Fbl_Lbt.h"
	.file 6 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 7 "GenData/FblBmHdr_Cfg.h"
	.file 8 "../../../BSW/FblBmHdr/bm_hdr_types.h"
	.file 9 "../../../BSW/FblBm/bm_types.h"
	.file 10 "../../../BSW/Fbl/fbl_mio.h"
	.file 11 "Include/bm_ap.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa6c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/FblBmHdr/bm_hdr.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x157
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
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1b4
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
	.uaword	0x157
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1b4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x207
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x216
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x216
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x249
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x25f
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x2b2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x207
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x5
	.byte	0x5e
	.uaword	0x207
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x5
	.byte	0x5f
	.uaword	0x148
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x5
	.byte	0x60
	.uaword	0x216
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x5
	.byte	0x61
	.uaword	0x216
	.uleb128 0x7
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x5
	.byte	0x68
	.uaword	0x3ec
	.uleb128 0x8
	.string	"blockNr"
	.byte	0x5
	.byte	0x69
	.uaword	0x2cc
	.byte	0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x5
	.byte	0x6a
	.uaword	0x2e2
	.byte	0x1
	.uleb128 0x8
	.string	"blockIndex"
	.byte	0x5
	.byte	0x6b
	.uaword	0x2fe
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x5
	.byte	0x6c
	.uaword	0x317
	.byte	0x8
	.uleb128 0x8
	.string	"blockStartAddress"
	.byte	0x5
	.byte	0x6d
	.uaword	0x278
	.byte	0xc
	.uleb128 0x8
	.string	"blockLength"
	.byte	0x5
	.byte	0x6e
	.uaword	0x28c
	.byte	0x10
	.uleb128 0x8
	.string	"headerAddress"
	.byte	0x5
	.byte	0x6f
	.uaword	0x278
	.byte	0x14
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x5
	.byte	0x70
	.uaword	0x278
	.byte	0x18
	.uleb128 0x8
	.string	"verifyOutput"
	.byte	0x5
	.byte	0x71
	.uaword	0x29f
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x5
	.byte	0x72
	.uaword	0x32f
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
	.byte	0x3a
	.uaword	0x42b
	.uleb128 0x8
	.string	"value"
	.byte	0x6
	.byte	0x3c
	.uaword	0x2e2
	.byte	0
	.uleb128 0x8
	.string	"enabled"
	.byte	0x6
	.byte	0x3d
	.uaword	0x148
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtMandatoryFilter"
	.byte	0x6
	.byte	0x3e
	.uaword	0x404
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0x42
	.uaword	0x470
	.uleb128 0x8
	.string	"value"
	.byte	0x6
	.byte	0x44
	.uaword	0x317
	.byte	0
	.uleb128 0x8
	.string	"enabled"
	.byte	0x6
	.byte	0x45
	.uaword	0x148
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtTypeFilter"
	.byte	0x6
	.byte	0x46
	.uaword	0x449
	.uleb128 0xa
	.byte	0xc
	.byte	0x6
	.byte	0x4a
	.uaword	0x4aa
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x4c
	.uaword	0x42b
	.byte	0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x6
	.byte	0x4e
	.uaword	0x470
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"tFblLbtBlockFilter"
	.byte	0x6
	.byte	0x50
	.uaword	0x489
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x82
	.uaword	0x53d
	.uleb128 0xc
	.string	"FBLBMHDR_TARGET_FBL"
	.sleb128 0
	.uleb128 0xc
	.string	"FBLBMHDR_TARGET_FBLUPDATER"
	.sleb128 1
	.uleb128 0xc
	.string	"FBLBMHDR_TARGET_APPL"
	.sleb128 2
	.uleb128 0xc
	.string	"FBLBMHDR_TARGET_DATA"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrTargetHandle"
	.byte	0x7
	.byte	0x87
	.uaword	0x4d3
	.uleb128 0xa
	.byte	0x18
	.byte	0x7
	.byte	0x91
	.uaword	0x5fd
	.uleb128 0x8
	.string	"bmMagicFlag"
	.byte	0x7
	.byte	0x93
	.uaword	0x1a6
	.byte	0
	.uleb128 0x8
	.string	"bmEntryAddress"
	.byte	0x7
	.byte	0x94
	.uaword	0x1a6
	.byte	0x4
	.uleb128 0x8
	.string	"bmTargetHandle"
	.byte	0x7
	.byte	0x95
	.uaword	0x53d
	.byte	0x8
	.uleb128 0x8
	.string	"bmBlockStartAddress"
	.byte	0x7
	.byte	0x96
	.uaword	0x1a6
	.byte	0xc
	.uleb128 0x8
	.string	"bmBlockLength"
	.byte	0x7
	.byte	0x97
	.uaword	0x1a6
	.byte	0x10
	.uleb128 0x8
	.string	"bmAuthenticationHeaderAddress"
	.byte	0x7
	.byte	0x98
	.uaword	0x1a6
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrHeader"
	.byte	0x7
	.byte	0x99
	.uaword	0x55a
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.uaword	0x712
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_OK"
	.sleb128 0
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_BLOCK_INVALID"
	.sleb128 1
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_READ_FAIL"
	.sleb128 2
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_HEADER_INCONSISTENT"
	.sleb128 3
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_WRONG_TARGET"
	.sleb128 4
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_GET_MAC_FAIL"
	.sleb128 5
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_VERIFICATION_FAIL"
	.sleb128 6
	.uleb128 0xc
	.string	"FBLBMHDR_CHKHDR_NOT_FOUND"
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrCheckBmHeaderResult"
	.byte	0x8
	.byte	0x3c
	.uaword	0x614
	.uleb128 0xa
	.byte	0x38
	.byte	0x9
	.byte	0x5b
	.uaword	0x760
	.uleb128 0x8
	.string	"logicalBlock"
	.byte	0x9
	.byte	0x5d
	.uaword	0x3ec
	.byte	0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x9
	.byte	0x5e
	.uaword	0x5fd
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.string	"tFblBmBlockInfo"
	.byte	0x9
	.byte	0x5f
	.uaword	0x736
	.uleb128 0xd
	.byte	0x1
	.string	"FblBmHdrCheckConsistency"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x236
	.byte	0x1
	.uaword	0x7bb
	.uleb128 0xe
	.string	"pBmHeader"
	.byte	0x1
	.byte	0x7a
	.uaword	0x7bb
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.byte	0x7c
	.uaword	0x236
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7c1
	.uleb128 0x10
	.uaword	0x5fd
	.uleb128 0x11
	.byte	0x1
	.string	"FblBmHdrGetBmHeader"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x712
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x848
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0x52
	.uaword	0x53d
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.byte	0x52
	.uaword	0x278
	.uaword	.LLST1
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0x53
	.uaword	0x848
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.byte	0x55
	.uaword	0x712
	.byte	0
	.uleb128 0x14
	.uaword	.LVL4
	.uaword	0x97b
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x48
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5fd
	.uleb128 0x16
	.uaword	0x777
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x87b
	.uleb128 0x17
	.uaword	0x79e
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	0x7af
	.byte	0xb
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x11
	.sleb128 -320248502
	.byte	0x2e
	.byte	0x9f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"FblBmHdrFindValidHeader"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	0x712
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x975
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0xba
	.uaword	0x53d
	.uaword	.LLST3
	.uleb128 0x19
	.string	"pBlockInfo"
	.byte	0x1
	.byte	0xbb
	.uaword	0x975
	.uaword	.LLST4
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.byte	0xbd
	.uaword	0x712
	.uaword	.LLST5
	.uleb128 0x1b
	.string	"blockFilter"
	.byte	0x1
	.byte	0xbe
	.uaword	0x4aa
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.uaword	.LVL11
	.uaword	0x9a5
	.uaword	0x909
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL12
	.uaword	0x9d1
	.uaword	0x923
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL14
	.uaword	0xa01
	.uaword	0x93d
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL15
	.uaword	0x7c6
	.uaword	0x957
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL18
	.uaword	0xa3b
	.uaword	0x96b
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0xa55
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x760
	.uleb128 0x1e
	.byte	0x1
	.string	"FblReadProm"
	.byte	0xa
	.byte	0x6e
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x9a5
	.uleb128 0x1f
	.uaword	0x278
	.uleb128 0x1f
	.uaword	0x2ba
	.uleb128 0x1f
	.uaword	0x28c
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"FblLbtBlockFilterInit"
	.byte	0x6
	.byte	0x5b
	.byte	0x1
	.byte	0x1
	.uaword	0x9cb
	.uleb128 0x1f
	.uaword	0x9cb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4aa
	.uleb128 0x1e
	.byte	0x1
	.string	"FblLbtBlockFirst"
	.byte	0x6
	.byte	0xa5
	.byte	0x1
	.uaword	0x3ec
	.byte	0x1
	.uaword	0x9f6
	.uleb128 0x1f
	.uaword	0x9f6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9fc
	.uleb128 0x10
	.uaword	0x4aa
	.uleb128 0x1e
	.byte	0x1
	.string	"ApplFblBmIsValidBlock"
	.byte	0xb
	.byte	0x78
	.byte	0x1
	.uaword	0x236
	.byte	0x1
	.uaword	0xa30
	.uleb128 0x1f
	.uaword	0x53d
	.uleb128 0x1f
	.uaword	0xa30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa36
	.uleb128 0x10
	.uaword	0x3ec
	.uleb128 0x21
	.byte	0x1
	.string	"FblLbtBlockNext"
	.byte	0x6
	.byte	0xa6
	.byte	0x1
	.uaword	0x3ec
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"FblLbtBlockDone"
	.byte	0x6
	.byte	0xa7
	.byte	0x1
	.uaword	0x148
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
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
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
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"bmHeaderAddress"
.LASF3:
	.string	"bmHeader"
.LASF0:
	.string	"mandatoryType"
.LASF5:
	.string	"result"
.LASF4:
	.string	"targetHandle"
.LASF1:
	.string	"blockType"
	.extern	FblLbtBlockDone,STT_FUNC,0
	.extern	FblLbtBlockNext,STT_FUNC,0
	.extern	ApplFblBmIsValidBlock,STT_FUNC,0
	.extern	FblLbtBlockFirst,STT_FUNC,0
	.extern	FblLbtBlockFilterInit,STT_FUNC,0
	.extern	FblReadProm,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
