	.file	"PduR_Lock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	PduR_Lock_LockRoutingPathBySrcPdu
	.type	PduR_Lock_LockRoutingPathBySrcPdu, @function
PduR_Lock_LockRoutingPathBySrcPdu:
.LFB17:
	.file 1 "../../../../CBD2300515_D00/BSW/PduR/PduR_Lock.c"
	.loc 1 235 0
.LVL0:
	.loc 1 236 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
.LBB14:
.LBB15:
	.loc 1 173 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL1:
	ret
.LBE15:
.LBE14:
.LFE17:
	.size	PduR_Lock_LockRoutingPathBySrcPdu, .-PduR_Lock_LockRoutingPathBySrcPdu
	.align 1
	.global	PduR_Lock_UnlockRoutingPathBySrcPdu
	.type	PduR_Lock_UnlockRoutingPathBySrcPdu, @function
PduR_Lock_UnlockRoutingPathBySrcPdu:
.LFB18:
	.loc 1 250 0
.LVL2:
	.loc 1 251 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
.LBB16:
.LBB17:
	.loc 1 217 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15] 4
	calli	%a15
.LVL3:
	ret
.LBE17:
.LBE16:
.LFE18:
	.size	PduR_Lock_UnlockRoutingPathBySrcPdu, .-PduR_Lock_UnlockRoutingPathBySrcPdu
	.align 1
	.global	PduR_Lock_LockRoutingPathByDestPdu
	.type	PduR_Lock_LockRoutingPathByDestPdu, @function
PduR_Lock_LockRoutingPathByDestPdu:
.LFB19:
	.loc 1 265 0
.LVL4:
	.loc 1 266 0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d3, %d2, %d15, 6
	mov.a	%a15, %d3
.LBB18:
.LBB19:
	.loc 1 173 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL5:
	ret
.LBE19:
.LBE18:
.LFE19:
	.size	PduR_Lock_LockRoutingPathByDestPdu, .-PduR_Lock_LockRoutingPathByDestPdu
	.align 1
	.global	PduR_Lock_UnlockRoutingPathByDestPdu
	.type	PduR_Lock_UnlockRoutingPathByDestPdu, @function
PduR_Lock_UnlockRoutingPathByDestPdu:
.LFB20:
	.loc 1 280 0
.LVL6:
	.loc 1 281 0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d3, %d2, %d15, 6
	mov.a	%a15, %d3
.LBB20:
.LBB21:
	.loc 1 217 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15] 4
	calli	%a15
.LVL7:
	ret
.LBE21:
.LBE20:
.LFE20:
	.size	PduR_Lock_UnlockRoutingPathByDestPdu, .-PduR_Lock_UnlockRoutingPathByDestPdu
	.align 1
	.global	PduR_Lock_LockRoutingPathByGDestPdu
	.type	PduR_Lock_LockRoutingPathByGDestPdu, @function
PduR_Lock_LockRoutingPathByGDestPdu:
.LFB21:
	.loc 1 295 0
.LVL8:
	.loc 1 296 0
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_RmGDestRom
	madd	%d2, %d15, %d4, 6
	mov.a	%a15, %d2
.LBB22:
.LBB23:
	.loc 1 173 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL9:
	ret
.LBE23:
.LBE22:
.LFE21:
	.size	PduR_Lock_LockRoutingPathByGDestPdu, .-PduR_Lock_LockRoutingPathByGDestPdu
	.align 1
	.global	PduR_Lock_UnlockRoutingPathByGDestPdu
	.type	PduR_Lock_UnlockRoutingPathByGDestPdu, @function
PduR_Lock_UnlockRoutingPathByGDestPdu:
.LFB22:
	.loc 1 310 0
.LVL10:
	.loc 1 311 0
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_RmGDestRom
	madd	%d2, %d15, %d4, 6
	mov.a	%a15, %d2
.LBB24:
.LBB25:
	.loc 1 217 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_LockRom
	lea	%a15, [%a15] lo:PduR_LockRom
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_ExclusiveAreaRom
	lea	%a15, [%a15] lo:PduR_ExclusiveAreaRom
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15] 4
	calli	%a15
.LVL11:
	ret
.LBE25:
.LBE24:
.LFE22:
	.size	PduR_Lock_UnlockRoutingPathByGDestPdu, .-PduR_Lock_UnlockRoutingPathByGDestPdu
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "GenData/PduR_Lcfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc25
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/PduR/PduR_Lock.c"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x6f
	.uaword	0x148
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"PduR_LockFunctionType"
	.byte	0x3
	.uahalf	0x431
	.uaword	0x244
	.uleb128 0x5
	.byte	0x4
	.uaword	0x24a
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.string	"PduR_LockRomIterType"
	.byte	0x3
	.uahalf	0x464
	.uaword	0x1b9
	.uleb128 0x4
	.string	"PduR_RmDestRomIterType"
	.byte	0x3
	.uahalf	0x46d
	.uaword	0x1b9
	.uleb128 0x4
	.string	"PduR_RmGDestRomIterType"
	.byte	0x3
	.uahalf	0x470
	.uaword	0x1b9
	.uleb128 0x4
	.string	"PduR_RmSrcRomIterType"
	.byte	0x3
	.uahalf	0x473
	.uaword	0x1b9
	.uleb128 0x4
	.string	"PduR_ExclusiveAreaRomIdxOfLockRomType"
	.byte	0x3
	.uahalf	0x4af
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_PduLengthHandlingStrategyOfRmDestRomType"
	.byte	0x3
	.uahalf	0x4c7
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_RmGDestRomIdxOfRmDestRomType"
	.byte	0x3
	.uahalf	0x4ca
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_RmSrcRomIdxOfRmDestRomType"
	.byte	0x3
	.uahalf	0x4cd
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_RoutingTypeOfRmDestRomType"
	.byte	0x3
	.uahalf	0x4d0
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_DestHndOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4d6
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_DirectionOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4d9
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_LockRomIdxOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4dc
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_MaxPduLengthOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4df
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_MmRomIdxOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4e2
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_RmDestRomIdxOfRmGDestRomType"
	.byte	0x3
	.uahalf	0x4e8
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_LockRomIdxOfRmSrcRomType"
	.byte	0x3
	.uahalf	0x4f1
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_MmRomIdxOfRmSrcRomType"
	.byte	0x3
	.uahalf	0x4f4
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_RmDestRomStartIdxOfRmSrcRomType"
	.byte	0x3
	.uahalf	0x4fd
	.uaword	0x168
	.uleb128 0x4
	.string	"PduR_SrcHndOfRmSrcRomType"
	.byte	0x3
	.uahalf	0x500
	.uaword	0x168
	.uleb128 0x7
	.string	"sPduR_ExclusiveAreaRomType"
	.byte	0x8
	.byte	0x3
	.uahalf	0x57b
	.uaword	0x592
	.uleb128 0x8
	.string	"LockOfExclusiveAreaRom"
	.byte	0x3
	.uahalf	0x57d
	.uaword	0x226
	.byte	0
	.uleb128 0x8
	.string	"UnlockOfExclusiveAreaRom"
	.byte	0x3
	.uahalf	0x57e
	.uaword	0x226
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"PduR_ExclusiveAreaRomType"
	.byte	0x3
	.uahalf	0x57f
	.uaword	0x52b
	.uleb128 0x7
	.string	"sPduR_LockRomType"
	.byte	0x1
	.byte	0x3
	.uahalf	0x582
	.uaword	0x5f6
	.uleb128 0x8
	.string	"ExclusiveAreaRomIdxOfLockRom"
	.byte	0x3
	.uahalf	0x584
	.uaword	0x2c6
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"PduR_LockRomType"
	.byte	0x3
	.uahalf	0x585
	.uaword	0x5b4
	.uleb128 0x7
	.string	"sPduR_RmDestRomType"
	.byte	0x4
	.byte	0x3
	.uahalf	0x59b
	.uaword	0x6bd
	.uleb128 0x8
	.string	"PduLengthHandlingStrategyOfRmDestRom"
	.byte	0x3
	.uahalf	0x59d
	.uaword	0x2f4
	.byte	0
	.uleb128 0x8
	.string	"RmGDestRomIdxOfRmDestRom"
	.byte	0x3
	.uahalf	0x59e
	.uaword	0x32a
	.byte	0x1
	.uleb128 0x8
	.string	"RmSrcRomIdxOfRmDestRom"
	.byte	0x3
	.uahalf	0x59f
	.uaword	0x354
	.byte	0x2
	.uleb128 0x8
	.string	"RoutingTypeOfRmDestRom"
	.byte	0x3
	.uahalf	0x5a0
	.uaword	0x37c
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"PduR_RmDestRomType"
	.byte	0x3
	.uahalf	0x5a1
	.uaword	0x60f
	.uleb128 0x7
	.string	"sPduR_RmGDestRomType"
	.byte	0x6
	.byte	0x3
	.uahalf	0x5a4
	.uaword	0x7b5
	.uleb128 0x8
	.string	"DestHndOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5a6
	.uaword	0x3a4
	.byte	0
	.uleb128 0x8
	.string	"DirectionOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5a7
	.uaword	0x3c9
	.byte	0x1
	.uleb128 0x8
	.string	"LockRomIdxOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5a8
	.uaword	0x3f0
	.byte	0x2
	.uleb128 0x8
	.string	"MaxPduLengthOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5a9
	.uaword	0x418
	.byte	0x3
	.uleb128 0x8
	.string	"MmRomIdxOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5aa
	.uaword	0x442
	.byte	0x4
	.uleb128 0x8
	.string	"RmDestRomIdxOfRmGDestRom"
	.byte	0x3
	.uahalf	0x5ab
	.uaword	0x468
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.string	"PduR_RmGDestRomType"
	.byte	0x3
	.uahalf	0x5ac
	.uaword	0x6d8
	.uleb128 0x7
	.string	"sPduR_RmSrcRomType"
	.byte	0x4
	.byte	0x3
	.uahalf	0x5af
	.uaword	0x867
	.uleb128 0x8
	.string	"LockRomIdxOfRmSrcRom"
	.byte	0x3
	.uahalf	0x5b1
	.uaword	0x492
	.byte	0
	.uleb128 0x8
	.string	"MmRomIdxOfRmSrcRom"
	.byte	0x3
	.uahalf	0x5b2
	.uaword	0x4b8
	.byte	0x1
	.uleb128 0x8
	.string	"RmDestRomStartIdxOfRmSrcRom"
	.byte	0x3
	.uahalf	0x5b3
	.uaword	0x4dc
	.byte	0x2
	.uleb128 0x8
	.string	"SrcHndOfRmSrcRom"
	.byte	0x3
	.uahalf	0x5b4
	.uaword	0x509
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"PduR_RmSrcRomType"
	.byte	0x3
	.uahalf	0x5b5
	.uaword	0x7d1
	.uleb128 0x9
	.string	"PduR_Lock_Lock"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uaword	0x8a9
	.uleb128 0xa
	.string	"lockIdx"
	.byte	0x1
	.byte	0x86
	.uaword	0x24c
	.byte	0
	.uleb128 0x9
	.string	"PduR_Lock_Unlock"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.byte	0x3
	.uaword	0x8d3
	.uleb128 0xa
	.string	"lockIdx"
	.byte	0x1
	.byte	0xba
	.uaword	0x24c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"PduR_Lock_LockRoutingPathBySrcPdu"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x936
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xea
	.uaword	0x2a8
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	0x881
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0xec
	.uleb128 0xe
	.uaword	0x899
	.uleb128 0xf
	.uaword	.LVL1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"PduR_Lock_UnlockRoutingPathBySrcPdu"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x99b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf9
	.uaword	0x2a8
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	0x8a9
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0xfb
	.uleb128 0xe
	.uaword	0x8c3
	.uleb128 0xf
	.uaword	.LVL3
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"PduR_Lock_LockRoutingPathByDestPdu"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa02
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x108
	.uaword	0x269
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	0x881
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.uahalf	0x10a
	.uleb128 0xe
	.uaword	0x899
	.uleb128 0xf
	.uaword	.LVL5
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"PduR_Lock_UnlockRoutingPathByDestPdu"
	.byte	0x1
	.uahalf	0x117
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa6b
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x117
	.uaword	0x269
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	0x8a9
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.uahalf	0x119
	.uleb128 0xe
	.uaword	0x8c3
	.uleb128 0xf
	.uaword	.LVL7
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"PduR_Lock_LockRoutingPathByGDestPdu"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xad3
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x126
	.uaword	0x288
	.uaword	.LLST4
	.uleb128 0x12
	.uaword	0x881
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.uahalf	0x128
	.uleb128 0xe
	.uaword	0x899
	.uleb128 0xf
	.uaword	.LVL9
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"PduR_Lock_UnlockRoutingPathByGDestPdu"
	.byte	0x1
	.uahalf	0x135
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb3d
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x135
	.uaword	0x288
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	0x8a9
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x137
	.uleb128 0xe
	.uaword	0x8c3
	.uleb128 0xf
	.uaword	.LVL11
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x592
	.uaword	0xb4d
	.uleb128 0x14
	.uaword	0x20a
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"PduR_ExclusiveAreaRom"
	.byte	0x3
	.uahalf	0x683
	.uaword	0xb6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xb3d
	.uleb128 0x13
	.uaword	0x5f6
	.uaword	0xb82
	.uleb128 0x14
	.uaword	0x20a
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"PduR_LockRom"
	.byte	0x3
	.uahalf	0x697
	.uaword	0xb99
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xb72
	.uleb128 0x13
	.uaword	0x6bd
	.uaword	0xbae
	.uleb128 0x14
	.uaword	0x20a
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"PduR_RmDestRom"
	.byte	0x3
	.uahalf	0x6dd
	.uaword	0xbc7
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xb9e
	.uleb128 0x13
	.uaword	0x7b5
	.uaword	0xbdc
	.uleb128 0x14
	.uaword	0x20a
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"PduR_RmGDestRom"
	.byte	0x3
	.uahalf	0x6f6
	.uaword	0xbf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xbcc
	.uleb128 0x13
	.uaword	0x867
	.uaword	0xc0b
	.uleb128 0x14
	.uaword	0x20a
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"PduR_RmSrcRom"
	.byte	0x3
	.uahalf	0x70d
	.uaword	0xc23
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xbfb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"rmGDestIdx"
.LASF0:
	.string	"rmSrcIdx"
.LASF1:
	.string	"rmDestIdx"
	.extern	PduR_RmGDestRom,STT_OBJECT,36
	.extern	PduR_RmDestRom,STT_OBJECT,24
	.extern	PduR_ExclusiveAreaRom,STT_OBJECT,8
	.extern	PduR_LockRom,STT_OBJECT,1
	.extern	PduR_RmSrcRom,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
