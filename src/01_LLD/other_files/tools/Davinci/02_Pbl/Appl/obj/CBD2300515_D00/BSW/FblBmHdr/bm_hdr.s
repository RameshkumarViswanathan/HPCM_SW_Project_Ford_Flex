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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/FblBmHdr_Cfg.h"
	.file 6 "../../../BSW/FblBmHdr/bm_hdr_types.h"
	.file 7 "../../../BSW/Fbl/fbl_mio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x65c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/FblBmHdr/bm_hdr.c"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1a6
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
	.uaword	0x149
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1a6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1f9
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x208
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x208
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x247
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x25d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x82
	.uaword	0x31c
	.uleb128 0x7
	.string	"FBLBMHDR_TARGET_FBL"
	.sleb128 0
	.uleb128 0x7
	.string	"FBLBMHDR_TARGET_FBLUPDATER"
	.sleb128 1
	.uleb128 0x7
	.string	"FBLBMHDR_TARGET_APPL"
	.sleb128 2
	.uleb128 0x7
	.string	"FBLBMHDR_TARGET_DATA"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"tFblBmHdrTargetHandle"
	.byte	0x5
	.byte	0x87
	.uaword	0x2b2
	.uleb128 0x8
	.byte	0x18
	.byte	0x5
	.byte	0x91
	.uaword	0x3dc
	.uleb128 0x9
	.string	"bmMagicFlag"
	.byte	0x5
	.byte	0x93
	.uaword	0x198
	.byte	0
	.uleb128 0x9
	.string	"bmEntryAddress"
	.byte	0x5
	.byte	0x94
	.uaword	0x198
	.byte	0x4
	.uleb128 0x9
	.string	"bmTargetHandle"
	.byte	0x5
	.byte	0x95
	.uaword	0x31c
	.byte	0x8
	.uleb128 0x9
	.string	"bmBlockStartAddress"
	.byte	0x5
	.byte	0x96
	.uaword	0x198
	.byte	0xc
	.uleb128 0x9
	.string	"bmBlockLength"
	.byte	0x5
	.byte	0x97
	.uaword	0x198
	.byte	0x10
	.uleb128 0x9
	.string	"bmAuthenticationHeaderAddress"
	.byte	0x5
	.byte	0x98
	.uaword	0x198
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"tFblBmHdrHeader"
	.byte	0x5
	.byte	0x99
	.uaword	0x339
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x33
	.uaword	0x4f1
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_OK"
	.sleb128 0
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_BLOCK_INVALID"
	.sleb128 1
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_READ_FAIL"
	.sleb128 2
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_HEADER_INCONSISTENT"
	.sleb128 3
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_WRONG_TARGET"
	.sleb128 4
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_GET_MAC_FAIL"
	.sleb128 5
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_VERIFICATION_FAIL"
	.sleb128 6
	.uleb128 0x7
	.string	"FBLBMHDR_CHKHDR_NOT_FOUND"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"tFblBmHdrCheckBmHeaderResult"
	.byte	0x6
	.byte	0x3c
	.uaword	0x3f3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x51b
	.uleb128 0xa
	.uaword	0x3dc
	.uleb128 0xb
	.byte	0x1
	.string	"FblBmHdrCheckConsistency"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x567
	.uleb128 0xc
	.string	"pBmHeader"
	.byte	0x1
	.byte	0x7a
	.uaword	0x515
	.uleb128 0xd
	.string	"result"
	.byte	0x1
	.byte	0x7c
	.uaword	0x234
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"FblBmHdrGetBmHeader"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x4f1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x606
	.uleb128 0xf
	.string	"targetHandle"
	.byte	0x1
	.byte	0x52
	.uaword	0x31c
	.uaword	.LLST0
	.uleb128 0xf
	.string	"bmHeaderAddress"
	.byte	0x1
	.byte	0x52
	.uaword	0x276
	.uaword	.LLST1
	.uleb128 0xf
	.string	"bmHeader"
	.byte	0x1
	.byte	0x53
	.uaword	0x606
	.uaword	.LLST2
	.uleb128 0x10
	.string	"result"
	.byte	0x1
	.byte	0x55
	.uaword	0x4f1
	.byte	0
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0x639
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x48
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x12
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
	.uaword	0x3dc
	.uleb128 0x13
	.uaword	0x520
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x639
	.uleb128 0x14
	.uaword	0x547
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	0x558
	.byte	0xb
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x11
	.sleb128 -320248502
	.byte	0x2e
	.byte	0x9f
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"FblReadProm"
	.byte	0x7
	.byte	0x6e
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
	.uleb128 0x17
	.uaword	0x276
	.uleb128 0x17
	.uaword	0x29d
	.uleb128 0x17
	.uaword	0x28a
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	FblReadProm,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
