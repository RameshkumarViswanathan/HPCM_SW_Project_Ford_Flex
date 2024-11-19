	.file	"PduR_RmTp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	PduR_RmTp_MultipleSourceHandler_TpTxConfirmation
	.type	PduR_RmTp_MultipleSourceHandler_TpTxConfirmation, @function
PduR_RmTp_MultipleSourceHandler_TpTxConfirmation:
.LFB16:
	.file 1 "../../../../CBD2300515_D00/BSW/PduR/PduR_RmTp.c"
	.loc 1 856 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	mov	%d8, %d4
	mov	%d9, %d5
	.loc 1 857 0
	call	PduR_Lock_LockRoutingPathByGDestPdu
.LVL1:
.LBB2:
	.loc 1 861 0
	mov	%d4, %d8
	lea	%a4, [%SP] 7
	call	PduR_Rm_GetSrcDestPdu
.LVL2:
	jnz	%d2, .L2
	.loc 1 867 0
	ld.bu	%d15, [%SP] 7
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d2, [%a15] 3
	jne	%d2, 6, .L3
.LVL3:
.LBB3:
	.loc 1 877 0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 878 0
	ld.bu	%d15, [%a15] 2
.LVL4:
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 1
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:PduR_MmRom
	madd	%d3, %d2, %d15, 32
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 24
	ld.bu	%d4, [%a15] 3
	mov	%d5, %d9
	calli	%a2
.LVL5:
.LBE3:
	.loc 1 880 0
	j	.L3
.L2:
	.loc 1 888 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 169
	mov	%d7, 161
	call	Det_ReportError
.LVL6:
.L3:
.LBE2:
	.loc 1 891 0 discriminator 2
	mov	%d4, %d8
	call	PduR_Lock_UnlockRoutingPathByGDestPdu
.LVL7:
	ret
.LFE16:
	.size	PduR_RmTp_MultipleSourceHandler_TpTxConfirmation, .-PduR_RmTp_MultipleSourceHandler_TpTxConfirmation
	.align 1
	.global	PduR_RmTp_MultipleSourceHandler_CopyTxData
	.type	PduR_RmTp_MultipleSourceHandler_CopyTxData, @function
PduR_RmTp_MultipleSourceHandler_CopyTxData:
.LFB17:
	.loc 1 909 0
.LVL8:
	sub.a	%SP, 8
.LCFI1:
	mov	%d8, %d4
	mov.aa	%a12, %a4
	mov.aa	%a14, %a5
	mov.aa	%a13, %a6
.LVL9:
	.loc 1 911 0
	call	PduR_Lock_LockRoutingPathByGDestPdu
.LVL10:
.LBB4:
	.loc 1 915 0
	mov	%d4, %d8
	lea	%a4, [%SP] 7
	call	PduR_Rm_GetSrcDestPdu
.LVL11:
	jnz	%d2, .L6
	.loc 1 921 0
	ld.bu	%d15, [%SP] 7
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d2, [%a15] 3
	jne	%d2, 6, .L10
.LVL12:
.LBB5:
	.loc 1 934 0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 935 0
	ld.bu	%d15, [%a15] 2
.LVL13:
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 1
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:PduR_MmRom
	madd	%d3, %d2, %d15, 32
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 12
	ld.bu	%d4, [%a15] 3
	mov.aa	%a4, %a12
	mov.aa	%a5, %a14
	mov.aa	%a6, %a13
	calli	%a2
.LVL14:
	mov	%d15, %d2
.LVL15:
.LBE5:
	.loc 1 937 0
	j	.L7
.LVL16:
.L6:
	.loc 1 946 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 171
	mov	%d7, 161
	call	Det_ReportError
.LVL17:
.LBE4:
	.loc 1 910 0
	mov	%d15, 1
	j	.L7
.L10:
	mov	%d15, 1
.LVL18:
.L7:
	.loc 1 949 0 discriminator 2
	mov	%d4, %d8
	call	PduR_Lock_UnlockRoutingPathByGDestPdu
.LVL19:
	.loc 1 951 0 discriminator 2
	mov	%d2, %d15
	ret
.LFE17:
	.size	PduR_RmTp_MultipleSourceHandler_CopyTxData, .-PduR_RmTp_MultipleSourceHandler_CopyTxData
	.align 1
	.global	PduR_RmTp_Transmit_MultiDest
	.type	PduR_RmTp_Transmit_MultiDest, @function
PduR_RmTp_Transmit_MultiDest:
.LFB18:
	.loc 1 1015 0
.LVL20:
	.loc 1 1019 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15] 2
.LVL21:
	add	%d3, %d15, 1
	and	%d3, %d3, 255
	.loc 1 1016 0
	mov	%d2, 1
	.loc 1 1019 0
	jge.u	%d15, %d3, .L12
.LVL22:
.LBB10:
	.loc 1 1021 0
	movh.a	%a15, hi:PduR_RmDestRom
.LVL23:
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 1022 0
	ld.bu	%d8, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d4, %d2, %d8, 6
.LVL24:
	mov.a	%a15, %d4
	ld.bu	%d3, [%a15] 1
	mov	%d2, 1
	jne	%d3, 1, .L12
	mov.aa	%a12, %a4
.LVL25:
.LBB11:
.LBB12:
	.loc 1 808 0
	mov	%d4, %d15
	call	PduR_Lock_LockRoutingPathByDestPdu
.LVL26:
.LBB13:
	.loc 1 834 0
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d4, %d2, %d8, 6
	mov.a	%a15, %d4
	ld.bu	%d2, [%a15] 4
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d4, %a2
	addi	%d3, %d4, lo:PduR_MmRom
	madd	%d4, %d3, %d2, 32
	mov.a	%a2, %d4
	ld.a	%a2, [%a2] 28
	ld.bu	%d4, [%a15]0
	mov.aa	%a4, %a12
	calli	%a2
.LVL27:
	mov	%d8, %d2
.LVL28:
.LBE13:
	.loc 1 837 0
	mov	%d4, %d15
	call	PduR_Lock_UnlockRoutingPathByDestPdu
.LVL29:
.LBE12:
.LBE11:
	.loc 1 1028 0
	and	%d2, %d8, 1
.LVL30:
.L12:
.LBE10:
	.loc 1 1036 0
	ret
.LFE18:
	.size	PduR_RmTp_Transmit_MultiDest, .-PduR_RmTp_Transmit_MultiDest
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/Std_Types.h"
	.file 4 "GenData/ComStack_Cfg.h"
	.file 5 "../../../BSW/_Common/ComStack_Types.h"
	.file 6 "GenData/PduR_Lcfg.h"
	.file 7 "../../../../CBD2300515_D00/BSW/PduR/PduR.h"
	.file 8 "../../../BSW/Det/Det.h"
	.file 9 "../../../../CBD2300515_D00/BSW/PduR/PduR_Lock.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1292
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/PduR/PduR_RmTp.c"
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x190
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
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x78
	.uaword	0x168
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x168
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x41
	.uaword	0x182
	.uleb128 0x3
	.string	"SduDataPtrType"
	.byte	0x5
	.byte	0xb2
	.uaword	0x26a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x168
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0xb3
	.uaword	0x29e
	.uleb128 0x6
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0xb5
	.uaword	0x254
	.byte	0
	.uleb128 0x6
	.string	"SduLength"
	.byte	0x5
	.byte	0xb6
	.uaword	0x23f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0xb7
	.uaword	0x270
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xba
	.uaword	0x2f8
	.uleb128 0x8
	.string	"BUFREQ_OK"
	.sleb128 0
	.uleb128 0x8
	.string	"BUFREQ_E_NOT_OK"
	.sleb128 1
	.uleb128 0x8
	.string	"BUFREQ_E_BUSY"
	.sleb128 2
	.uleb128 0x8
	.string	"BUFREQ_E_OVFL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"BufReq_ReturnType"
	.byte	0x5
	.byte	0xbf
	.uaword	0x2b1
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xca
	.uaword	0x348
	.uleb128 0x8
	.string	"TP_DATACONF"
	.sleb128 0
	.uleb128 0x8
	.string	"TP_DATARETRY"
	.sleb128 1
	.uleb128 0x8
	.string	"TP_CONFPENDING"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"TpDataStateType"
	.byte	0x5
	.byte	0xd0
	.uaword	0x311
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xd2
	.uaword	0x390
	.uleb128 0x6
	.string	"TpDataState"
	.byte	0x5
	.byte	0xd4
	.uaword	0x348
	.byte	0
	.uleb128 0x6
	.string	"TxTpDataCnt"
	.byte	0x5
	.byte	0xd5
	.uaword	0x23f
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"RetryInfoType"
	.byte	0x5
	.byte	0xd6
	.uaword	0x35f
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xd9
	.uaword	0x3c9
	.uleb128 0x8
	.string	"TP_STMIN"
	.sleb128 0
	.uleb128 0x8
	.string	"TP_BS"
	.sleb128 1
	.uleb128 0x8
	.string	"TP_BC"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"TPParameterType"
	.byte	0x5
	.byte	0xdd
	.uaword	0x3a5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"PduR_TransmitFctPtrType"
	.byte	0x6
	.uahalf	0x435
	.uaword	0x422
	.uleb128 0x4
	.byte	0x4
	.uaword	0x428
	.uleb128 0xa
	.byte	0x1
	.uaword	0x218
	.uaword	0x43d
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x43d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x443
	.uleb128 0xc
	.uaword	0x29e
	.uleb128 0x9
	.string	"PduR_StartOfReceptionFctPtrType"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x470
	.uleb128 0x4
	.byte	0x4
	.uaword	0x476
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2f8
	.uaword	0x495
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x3e0
	.uleb128 0xb
	.uaword	0x23f
	.uleb128 0xb
	.uaword	0x495
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23f
	.uleb128 0x9
	.string	"PduR_CopyRxDataFctPtrType"
	.byte	0x6
	.uahalf	0x43d
	.uaword	0x4bd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4c3
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2f8
	.uaword	0x4dd
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x3e0
	.uleb128 0xb
	.uaword	0x495
	.byte	0
	.uleb128 0x9
	.string	"PduR_CopyTxDataFctPtrType"
	.byte	0x6
	.uahalf	0x43f
	.uaword	0x4ff
	.uleb128 0x4
	.byte	0x4
	.uaword	0x505
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2f8
	.uaword	0x524
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x3e0
	.uleb128 0xb
	.uaword	0x524
	.uleb128 0xb
	.uaword	0x495
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x390
	.uleb128 0x9
	.string	"PduR_TpRxIndicationFctPtrType"
	.byte	0x6
	.uahalf	0x441
	.uaword	0x550
	.uleb128 0x4
	.byte	0x4
	.uaword	0x556
	.uleb128 0xd
	.byte	0x1
	.uaword	0x567
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x218
	.byte	0
	.uleb128 0x9
	.string	"PduR_TpTxConfirmationFctPtrType"
	.byte	0x6
	.uahalf	0x443
	.uaword	0x550
	.uleb128 0x9
	.string	"PduR_ChangeParameterFctPtrType"
	.byte	0x6
	.uahalf	0x44d
	.uaword	0x5b6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5bc
	.uleb128 0xa
	.byte	0x1
	.uaword	0x218
	.uaword	0x5d6
	.uleb128 0xb
	.uaword	0x22e
	.uleb128 0xb
	.uaword	0x3c9
	.uleb128 0xb
	.uaword	0x182
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmDestRomIterType"
	.byte	0x6
	.uahalf	0x46d
	.uaword	0x1c7
	.uleb128 0x9
	.string	"PduR_RmGDestRomIterType"
	.byte	0x6
	.uahalf	0x470
	.uaword	0x1c7
	.uleb128 0x9
	.string	"PduR_RmSrcRomIterType"
	.byte	0x6
	.uahalf	0x473
	.uaword	0x1c7
	.uleb128 0x9
	.string	"PduR_MaskedBitsOfMmRomType"
	.byte	0x6
	.uahalf	0x4bb
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_PduLengthHandlingStrategyOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4c7
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmGDestRomIdxOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4ca
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmSrcRomIdxOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4cd
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RoutingTypeOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4d0
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_DestHndOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4d6
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_DirectionOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4d9
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_LockRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4dc
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_MaxPduLengthOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4df
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_MmRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmDestRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4e8
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_LockRomIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4f1
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_MmRomIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4f4
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmDestRomEndIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4f7
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmDestRomStartIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4fd
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_SrcHndOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x500
	.uaword	0x168
	.uleb128 0x9
	.string	"PduR_RmGDestRomIdxOfTxTp2SrcType"
	.byte	0x6
	.uahalf	0x542
	.uaword	0x168
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5d6
	.uleb128 0xe
	.string	"sPduR_MmRomType"
	.byte	0x20
	.byte	0x6
	.uahalf	0x588
	.uaword	0xa32
	.uleb128 0xf
	.string	"MaskedBitsOfMmRom"
	.byte	0x6
	.uahalf	0x58a
	.uaword	0x633
	.byte	0
	.uleb128 0xf
	.string	"LoTpChangeParameterFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58b
	.uaword	0x58f
	.byte	0x4
	.uleb128 0xf
	.string	"UpTpCopyRxDataFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58c
	.uaword	0x49b
	.byte	0x8
	.uleb128 0xf
	.string	"UpTpCopyTxDataFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58d
	.uaword	0x4dd
	.byte	0xc
	.uleb128 0xf
	.string	"UpTpStartOfReceptionFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58e
	.uaword	0x448
	.byte	0x10
	.uleb128 0xf
	.string	"UpTpTpRxIndicationFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58f
	.uaword	0x52a
	.byte	0x14
	.uleb128 0xf
	.string	"UpTpTpTxConfirmationFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x590
	.uaword	0x567
	.byte	0x18
	.uleb128 0xf
	.string	"LoTpTransmitFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x402
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PduR_MmRomType"
	.byte	0x6
	.uahalf	0x592
	.uaword	0x8e7
	.uleb128 0xe
	.string	"sPduR_RmDestRomType"
	.byte	0x4
	.byte	0x6
	.uahalf	0x59b
	.uaword	0xaf7
	.uleb128 0xf
	.string	"PduLengthHandlingStrategyOfRmDestRom"
	.byte	0x6
	.uahalf	0x59d
	.uaword	0x656
	.byte	0
	.uleb128 0xf
	.string	"RmGDestRomIdxOfRmDestRom"
	.byte	0x6
	.uahalf	0x59e
	.uaword	0x68c
	.byte	0x1
	.uleb128 0xf
	.string	"RmSrcRomIdxOfRmDestRom"
	.byte	0x6
	.uahalf	0x59f
	.uaword	0x6b6
	.byte	0x2
	.uleb128 0xf
	.string	"RoutingTypeOfRmDestRom"
	.byte	0x6
	.uahalf	0x5a0
	.uaword	0x6de
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmDestRomType"
	.byte	0x6
	.uahalf	0x5a1
	.uaword	0xa49
	.uleb128 0xe
	.string	"sPduR_RmGDestRomType"
	.byte	0x6
	.byte	0x6
	.uahalf	0x5a4
	.uaword	0xbef
	.uleb128 0xf
	.string	"DestHndOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a6
	.uaword	0x706
	.byte	0
	.uleb128 0xf
	.string	"DirectionOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a7
	.uaword	0x72b
	.byte	0x1
	.uleb128 0xf
	.string	"LockRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a8
	.uaword	0x752
	.byte	0x2
	.uleb128 0xf
	.string	"MaxPduLengthOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a9
	.uaword	0x77a
	.byte	0x3
	.uleb128 0xf
	.string	"MmRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5aa
	.uaword	0x7a4
	.byte	0x4
	.uleb128 0xf
	.string	"RmDestRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5ab
	.uaword	0x7ca
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmGDestRomType"
	.byte	0x6
	.uahalf	0x5ac
	.uaword	0xb12
	.uleb128 0xe
	.string	"sPduR_RmSrcRomType"
	.byte	0x4
	.byte	0x6
	.uahalf	0x5af
	.uaword	0xca1
	.uleb128 0xf
	.string	"LockRomIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b1
	.uaword	0x7f4
	.byte	0
	.uleb128 0xf
	.string	"MmRomIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b2
	.uaword	0x81a
	.byte	0x1
	.uleb128 0xf
	.string	"RmDestRomStartIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b3
	.uaword	0x869
	.byte	0x2
	.uleb128 0xf
	.string	"SrcHndOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b4
	.uaword	0x896
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmSrcRomType"
	.byte	0x6
	.uahalf	0x5b5
	.uaword	0xc0b
	.uleb128 0x10
	.byte	0x1
	.string	"PduR_RmTp_MultipleSourceHandler_TpTxConfirmation"
	.byte	0x1
	.uahalf	0x357
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdcf
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x357
	.uaword	0x8b8
	.uaword	.LLST0
	.uleb128 0x12
	.string	"result"
	.byte	0x1
	.uahalf	0x357
	.uaword	0x218
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0xdaa
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x35b
	.uaword	0x5d6
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x13
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0xd6e
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x36d
	.uaword	0x6b6
	.uleb128 0x16
	.uaword	.LVL5
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL2
	.uaword	0x1163
	.uaword	0xd88
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL6
	.uaword	0x1193
	.uleb128 0x17
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xa9
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL1
	.uaword	0x11c7
	.uaword	0xdbe
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL7
	.uaword	0x11fb
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"PduR_RmTp_MultipleSourceHandler_CopyTxData"
	.byte	0x1
	.uahalf	0x38b
	.byte	0x1
	.uaword	0x2f8
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf2a
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x38b
	.uaword	0x8b8
	.uaword	.LLST2
	.uleb128 0x12
	.string	"info"
	.byte	0x1
	.uahalf	0x38b
	.uaword	0x3e0
	.uaword	.LLST3
	.uleb128 0x12
	.string	"retry"
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x524
	.uaword	.LLST4
	.uleb128 0x12
	.string	"availableDataPtr"
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x495
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x38e
	.uaword	0x2f8
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0xf05
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x391
	.uaword	0x5d6
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x13
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	0xec9
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3a6
	.uaword	0x6b6
	.uleb128 0x16
	.uaword	.LVL14
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL11
	.uaword	0x1163
	.uaword	0xee3
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x1193
	.uleb128 0x17
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xab
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL10
	.uaword	0x11c7
	.uaword	0xf19
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL19
	.uaword	0x11fb
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"PduR_RmTp_MultipleSourceHandler_Transmit"
	.byte	0x1
	.uahalf	0x325
	.byte	0x1
	.uaword	0x218
	.byte	0x3
	.uaword	0xf95
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x325
	.uaword	0x5d6
	.uleb128 0x1e
	.string	"info"
	.byte	0x1
	.uahalf	0x325
	.uaword	0x43d
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x327
	.uaword	0x218
	.uleb128 0x1f
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x32a
	.uaword	0x68c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"PduR_RmTp_Transmit_MultiDest"
	.byte	0x1
	.uahalf	0x3f6
	.byte	0x1
	.uaword	0x218
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10af
	.uleb128 0x12
	.string	"rmSrcIdx"
	.byte	0x1
	.uahalf	0x3f6
	.uaword	0x615
	.uaword	.LLST7
	.uleb128 0x12
	.string	"info"
	.byte	0x1
	.uahalf	0x3f6
	.uaword	0x43d
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x218
	.uaword	.LLST9
	.uleb128 0x20
	.string	"rmDestIdx"
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x5d6
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	.LBB10
	.uaword	.LBE10
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x3fd
	.uaword	0x5f5
	.uleb128 0x22
	.uaword	0xf2a
	.uaword	.LBB11
	.uaword	.LBE11
	.byte	0x1
	.uahalf	0x404
	.uleb128 0x23
	.uaword	0xf6d
	.uaword	.LLST11
	.uleb128 0x23
	.uaword	0xf61
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	.LBB12
	.uaword	.LBE12
	.uleb128 0x24
	.uaword	0xf7a
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0x1087
	.uleb128 0x25
	.uaword	0xf87
	.uleb128 0x16
	.uaword	.LVL27
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL26
	.uaword	0x1231
	.uaword	0x109b
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL29
	.uaword	0x1264
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xa32
	.uaword	0x10bf
	.uleb128 0x27
	.uaword	0x3e6
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"PduR_MmRom"
	.byte	0x6
	.uahalf	0x6b2
	.uaword	0x10d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x10af
	.uleb128 0x26
	.uaword	0xaf7
	.uaword	0x10e9
	.uleb128 0x27
	.uaword	0x3e6
	.byte	0x5
	.byte	0
	.uleb128 0x28
	.string	"PduR_RmDestRom"
	.byte	0x6
	.uahalf	0x6dd
	.uaword	0x1102
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x10d9
	.uleb128 0x26
	.uaword	0xbef
	.uaword	0x1117
	.uleb128 0x27
	.uaword	0x3e6
	.byte	0x5
	.byte	0
	.uleb128 0x28
	.string	"PduR_RmGDestRom"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1131
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1107
	.uleb128 0x26
	.uaword	0xca1
	.uaword	0x1146
	.uleb128 0x27
	.uaword	0x3e6
	.byte	0x5
	.byte	0
	.uleb128 0x28
	.string	"PduR_RmSrcRom"
	.byte	0x6
	.uahalf	0x70d
	.uaword	0x115e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1136
	.uleb128 0x29
	.byte	0x1
	.string	"PduR_Rm_GetSrcDestPdu"
	.byte	0x7
	.uahalf	0x409
	.byte	0x1
	.uaword	0x218
	.byte	0x1
	.uaword	0x1193
	.uleb128 0xb
	.uaword	0x5f5
	.uleb128 0xb
	.uaword	0x8e1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.uahalf	0x116
	.byte	0x1
	.uaword	0x218
	.byte	0x1
	.uaword	0x11c7
	.uleb128 0xb
	.uaword	0x182
	.uleb128 0xb
	.uaword	0x168
	.uleb128 0xb
	.uaword	0x168
	.uleb128 0xb
	.uaword	0x168
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"PduR_Lock_LockRoutingPathByGDestPdu"
	.byte	0x9
	.byte	0x93
	.byte	0x1
	.byte	0x1
	.uaword	0x11fb
	.uleb128 0xb
	.uaword	0x5f5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"PduR_Lock_UnlockRoutingPathByGDestPdu"
	.byte	0x9
	.byte	0xa0
	.byte	0x1
	.byte	0x1
	.uaword	0x1231
	.uleb128 0xb
	.uaword	0x5f5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"PduR_Lock_LockRoutingPathByDestPdu"
	.byte	0x9
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uaword	0x1264
	.uleb128 0xb
	.uaword	0x5d6
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"PduR_Lock_UnlockRoutingPathByDestPdu"
	.byte	0x9
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x5d6
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
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
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL10-1
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL30
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL24
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-1
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x58
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"retVal"
.LASF0:
	.string	"rmGDestRomIdx"
.LASF1:
	.string	"rmDestRomIdx"
.LASF3:
	.string	"rmSrcRomIdx"
	.extern	PduR_Lock_UnlockRoutingPathByDestPdu,STT_FUNC,0
	.extern	PduR_Lock_LockRoutingPathByDestPdu,STT_FUNC,0
	.extern	PduR_RmGDestRom,STT_OBJECT,36
	.extern	PduR_Lock_UnlockRoutingPathByGDestPdu,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	PduR_MmRom,STT_OBJECT,64
	.extern	PduR_RmSrcRom,STT_OBJECT,24
	.extern	PduR_RmDestRom,STT_OBJECT,24
	.extern	PduR_Rm_GetSrcDestPdu,STT_FUNC,0
	.extern	PduR_Lock_LockRoutingPathByGDestPdu,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
