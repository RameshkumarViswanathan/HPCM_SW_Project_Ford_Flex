	.file	"fbl_main.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FblMainInternal,"ax",@progbits
	.align 1
	.global	FblMainInternal
	.type	FblMainInternal, @function
FblMainInternal:
.LFB22:
	.file 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_main.c"
	.loc 1 501 0
.LBB26:
.LBB27:
	.loc 1 284 0
	movh	%d2, hi:FblHeader
	addi	%d2, %d2, lo:FblHeader
	movh	%d15, 40962
	jeq	%d2, %d15, .L2
	mov	%d4, 80
	call	ApplFblFatalError
.LVL0:
	j	.L2
.LVL1:
.L3:
.LBE27:
.LBE26:
.LBB29:
.LBB30:
	.loc 1 192 0
	imask	%e2, 1, 1, 1
	movh.a	%a15, hi:fblMainStates
	lea	%a15, [%a15] lo:fblMainStates
	ldmst	[%a15]0, %e2
	j	.L4
.L5:
	.loc 1 199 0
	imask	%e2, 1, 5, 1
	movh.a	%a15, hi:fblMainStates
	lea	%a15, [%a15] lo:fblMainStates
	ldmst	[%a15]0, %e2
	mov	%d15, 21
	movh.a	%a15, hi:startMessageDelay
	st.h	[%a15] lo:startMessageDelay, %d15
	j	.L4
.L18:
	.loc 1 215 0
	imask	%e2, 1, 0, 1
	movh.a	%a15, hi:fblMainStates
	lea	%a15, [%a15] lo:fblMainStates
	ldmst	[%a15]0, %e2
.L4:
.LVL2:
.LBE30:
.LBE29:
.LBB32:
.LBB33:
	.loc 1 325 0
	mov	%d4, 2
	call	ApplFblStartup
.LVL3:
	.loc 1 343 0
	call	EcuM_StartupTwo
.LVL4:
	.loc 1 346 0
	call	FblDiagInit
.LVL5:
	.loc 1 372 0
	mov	%d4, 130
	call	ApplFblStartup
.LVL6:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 406 0
	movh.a	%a15, hi:fblCwStateStartMsg
	ld.bu	%d15, [%a15] lo:fblCwStateStartMsg
	or	%d15, %d15, 1
	st.b	[%a15] lo:fblCwStateStartMsg, %d15
	.loc 1 407 0
	movh.a	%a15, hi:fblMainStates
	lea	%a15, [%a15] lo:fblMainStates
	.loc 1 413 0
	movh.a	%a12, hi:startMessageDelay
	lea	%a12, [%a12] lo:startMessageDelay
.LBB36:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 393 0
	lea	%a14, -268431312
	j	.L7
.L10:
.LBE39:
.LBE38:
.LBE37:
.LBE36:
	.loc 1 410 0
	call	FblLookForWatchdog
.LVL7:
	jz.t	%d2, 1, .L8
	.loc 1 413 0
	ld.h	%d15, [%a12]0
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a12]0, %d15
	.loc 1 414 0
	jnz	%d15, .L8
.LVL8:
	.loc 1 417 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-33)
.LBB46:
.LBB44:
	.loc 1 244 0
	or	%d15, %d15, 128
	st.w	[%a15]0, %d15
.LBB42:
.LBB40:
	.loc 1 384 0
	call	FblCw_Deinit
.LVL9:
	.loc 1 391 0
	call	ApplFblWDLong
.LVL10:
	.loc 1 393 0
	st.w	[%a14]0, %d8
.LBE40:
.LBE42:
	.loc 1 252 0
	ld.a	%a2, [%a13] 16
	calli	%a2
.LVL11:
.L8:
.LBE44:
.LBE46:
	.loc 1 422 0
	call	FblCwCheckStartMessage
.LVL12:
	jnz	%d2, .L9
.LVL13:
	.loc 1 425 0
	ld.w	%d15, [%a15]0
.LBB47:
.LBB48:
	.loc 1 236 0
	insert	%d15, %d15, 2, 5, 2
	st.w	[%a15]0, %d15
.LVL14:
.L7:
.LBE48:
.LBE47:
.LBB49:
.LBB45:
.LBB43:
.LBB41:
	.loc 1 393 0
	mov	%d8, 0
.LBE41:
.LBE43:
	.loc 1 252 0
	movh.a	%a13, 40962
	lea	%a13, [%a13] -32
.L9:
.LBE45:
.LBE49:
	.loc 1 407 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 5, .L10
	.loc 1 430 0
	movh.a	%a15, hi:fblCwStateStartMsg
	ld.bu	%d15, [%a15] lo:fblCwStateStartMsg
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] lo:fblCwStateStartMsg, %d15
.LVL15:
.LBE35:
.LBE34:
.LBB50:
.LBB51:
	.loc 1 325 0
	mov	%d4, 3
	call	ApplFblStartup
.LVL16:
	.loc 1 360 0
	call	FblDiagPostInit
.LVL17:
	.loc 1 372 0
	mov	%d4, 131
	call	ApplFblStartup
.LVL18:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	.loc 1 446 0
	movh.a	%a15, hi:fblMainStates
	lea	%a15, [%a15] lo:fblMainStates
	.loc 1 464 0
	movh.a	%a12, hi:fblMemProgState
	lea	%a12, [%a12] lo:fblMemProgState
	j	.L13
.L14:
	.loc 1 449 0
	call	FblLookForWatchdog
.LVL19:
	jz.t	%d2, 1, .L12
	.loc 1 452 0
	call	FblDiagTimerTask
.LVL20:
	.loc 1 456 0
	call	ApplFblTask
.LVL21:
.L12:
	.loc 1 460 0
	call	FblDiagStateTask
.LVL22:
	.loc 1 461 0
	call	FblCwIdleTask
.LVL23:
	.loc 1 464 0
	ld.bu	%d15, [%a12]0
	jlt.u	%d15, 2, .L13
	.loc 1 466 0
	call	FblMemTask
.LVL24:
.L13:
	.loc 1 446 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 7, .L14
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 1 384 0
	call	FblCw_Deinit
.LVL25:
	.loc 1 391 0
	call	ApplFblWDLong
.LVL26:
	.loc 1 393 0
	mov	%d15, 0
	st.w	0xf0001030, %d15
.LBE55:
.LBE54:
	.loc 1 527 0
	call	ApplFblReset
.LVL27:
	ret
.LVL28:
.L2:
.LBB56:
.LBB28:
	.loc 1 290 0
	mov	%d15, 0
	movh.a	%a15, hi:fblMainStates
	st.w	[%a15] lo:fblMainStates, %d15
.LVL29:
	.loc 1 293 0
	movh.a	%a15, hi:startMessageDelay
	st.h	[%a15] lo:startMessageDelay, %d15
	.loc 1 297 0
	movh.a	%a15, hi:WDInitFlag
	mov	%d15, 0
	st.b	[%a15] lo:WDInitFlag, %d15
	.loc 1 299 0
	call	FblDiagInitPowerOn
.LVL30:
	.loc 1 301 0
	call	MemDriver_InitPowerOn
.LVL31:
	.loc 1 303 0
	call	FblLbtInitPowerOn
.LVL32:
.LBE28:
.LBE56:
.LBB57:
.LBB58:
	.loc 1 325 0
	mov	%d4, 1
	call	ApplFblStartup
.LVL33:
	.loc 1 333 0
	call	FblInitWatchdog
.LVL34:
	.loc 1 335 0
	call	FblTimerInit
.LVL35:
	.loc 1 372 0
	mov	%d4, 129
	call	ApplFblStartup
.LVL36:
.LBE58:
.LBE57:
.LBB59:
.LBB31:
	.loc 1 188 0
	call	ApplFblExtProgRequest
.LVL37:
	jz	%d2, .L3
	eq	%d2, %d2, 16
	jnz	%d2, .L5
	j	.L18
.LBE31:
.LBE59:
.LFE22:
	.size	FblMainInternal, .-FblMainInternal
.section .text.FblMain,"ax",@progbits
	.align 1
	.global	FblMain
	.type	FblMain, @function
FblMain:
.LFB21:
	.loc 1 489 0
	.loc 1 490 0
	call	FblMainInternal
.LVL38:
	ret
.LFE21:
	.size	FblMain, .-FblMain
	.global	fblMainStates
.section .bss,"aw",@nobits
	.align 2
	.type	fblMainStates, @object
	.size	fblMainStates, 4
fblMainStates:
	.zero	4
	.local	startMessageDelay
	.align 1
	.type		 startMessageDelay,@object
	.size		 startMessageDelay,2
startMessageDelay:
	.space	2
	.global	FblHeader
.section .FblHeaderSection,"a",@progbits
	.align 2
	.type	FblHeader, @object
	.size	FblHeader, 28
FblHeader:
	.word	1480993048
	.word	FblLogicalBlockTable
	.word	136
	.word	fblCommonData
	.word	-1610481664
	.word	393216
	.word	FblBmHdrHeader
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/Fbl_Lbt.h"
	.file 6 "../../../BSW/Fbl/fbl_mem.h"
	.file 7 "Include/comdat.h"
	.file 8 "GenData/FblBmHdr_Cfg.h"
	.file 9 "../../../BSW/FblBm/bm_types_header.h"
	.file 10 "../../../BSW/Fbl/fbl_main_types.h"
	.file 11 "../../../BSW/Fbl/fbl_wd.h"
	.file 12 "../../../BSW/FblCw/fbl_cw.h"
	.file 13 "Include/fbl_ap.h"
	.file 14 "../../../BSW/Fbl/fbl_diag.h"
	.file 15 "../../../BSW/Fbl/fbl_mio.h"
	.file 16 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 17 "Include/EcuM.h"
	.file 18 "Include/fbl_apwd.h"
	.file 19 "Include/fbl_apnv.h"
	.file 20 "../../../BSW/Fbl/fbl_hw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x121e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/Fbl/fbl_main.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x70
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x155
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
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x190
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
	.uaword	0x1c0
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
	.uaword	0x155
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x190
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1c0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.byte	0x4
	.uaword	0x258
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x25f
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"tFblStateBitmap"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x232
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x213
	.uleb128 0x4
	.string	"tFblProgStatus"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x213
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x232
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x232
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x2af
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x2c5
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x259
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x5
	.byte	0x5e
	.uaword	0x213
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x5
	.byte	0x5f
	.uaword	0x146
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x5
	.byte	0x60
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x5
	.byte	0x61
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtMagicFlag"
	.byte	0x5
	.byte	0x62
	.uaword	0x232
	.uleb128 0x2
	.string	"tFblLbtAssignFlags"
	.byte	0x5
	.byte	0x63
	.uaword	0x213
	.uleb128 0x2
	.string	"tFblLbtBlockCount"
	.byte	0x5
	.byte	0x64
	.uaword	0x213
	.uleb128 0x8
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x5
	.byte	0x68
	.uaword	0x49f
	.uleb128 0x9
	.string	"blockNr"
	.byte	0x5
	.byte	0x69
	.uaword	0x318
	.byte	0
	.uleb128 0x9
	.string	"mandatoryType"
	.byte	0x5
	.byte	0x6a
	.uaword	0x32e
	.byte	0x1
	.uleb128 0x9
	.string	"blockIndex"
	.byte	0x5
	.byte	0x6b
	.uaword	0x34a
	.byte	0x4
	.uleb128 0x9
	.string	"blockType"
	.byte	0x5
	.byte	0x6c
	.uaword	0x363
	.byte	0x8
	.uleb128 0x9
	.string	"blockStartAddress"
	.byte	0x5
	.byte	0x6d
	.uaword	0x2de
	.byte	0xc
	.uleb128 0x9
	.string	"blockLength"
	.byte	0x5
	.byte	0x6e
	.uaword	0x2f2
	.byte	0x10
	.uleb128 0x9
	.string	"headerAddress"
	.byte	0x5
	.byte	0x6f
	.uaword	0x2de
	.byte	0x14
	.uleb128 0x9
	.string	"bmHeaderAddress"
	.byte	0x5
	.byte	0x70
	.uaword	0x2de
	.byte	0x18
	.uleb128 0x9
	.string	"verifyOutput"
	.byte	0x5
	.byte	0x71
	.uaword	0x305
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x5
	.byte	0x72
	.uaword	0x3c6
	.uleb128 0x8
	.string	"tLogicalBlockTableTag"
	.byte	0x88
	.byte	0x5
	.byte	0x75
	.uaword	0x51e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x76
	.uaword	0x37b
	.byte	0
	.uleb128 0x9
	.string	"assignFlags"
	.byte	0x5
	.byte	0x77
	.uaword	0x51e
	.byte	0x4
	.uleb128 0x9
	.string	"noOfBlocks"
	.byte	0x5
	.byte	0x78
	.uaword	0x3ad
	.byte	0x5
	.uleb128 0x9
	.string	"logicalBlock"
	.byte	0x5
	.byte	0x79
	.uaword	0x52e
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x393
	.uaword	0x52e
	.uleb128 0xc
	.uaword	0x261
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x49f
	.uaword	0x53e
	.uleb128 0xc
	.uaword	0x261
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.string	"tLogicalBlockTable"
	.byte	0x5
	.byte	0x7a
	.uaword	0x4b7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x303
	.uaword	0x61a
	.uleb128 0xe
	.string	"kFblMemProgState_Idle"
	.sleb128 0
	.uleb128 0xe
	.string	"kFblMemProgState_Error"
	.sleb128 1
	.uleb128 0xe
	.string	"kFblMemProgState_Suspended"
	.sleb128 2
	.uleb128 0xe
	.string	"kFblMemProgState_SuspendPending"
	.sleb128 3
	.uleb128 0xe
	.string	"kFblMemProgState_Checkpoint"
	.sleb128 4
	.uleb128 0xe
	.string	"kFblMemProgState_Pending"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.string	"tFblMemProgState"
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x567
	.uleb128 0x8
	.string	"tBootSwId_tag"
	.byte	0x1a
	.byte	0x7
	.byte	0x35
	.uaword	0x688
	.uleb128 0x9
	.string	"NumberOfModules"
	.byte	0x7
	.byte	0x37
	.uaword	0x155
	.byte	0
	.uleb128 0x9
	.string	"IdentificationParameterRecord"
	.byte	0x7
	.byte	0x39
	.uaword	0x688
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x155
	.uaword	0x698
	.uleb128 0xc
	.uaword	0x261
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.string	"tBootSwId"
	.byte	0x7
	.byte	0x3a
	.uaword	0x633
	.uleb128 0x8
	.string	"tBootGenToolVer_tag"
	.byte	0xc
	.byte	0x7
	.byte	0x3c
	.uaword	0x709
	.uleb128 0x9
	.string	"GenerationToolSupplier"
	.byte	0x7
	.byte	0x3e
	.uaword	0x155
	.byte	0
	.uleb128 0x9
	.string	"GenerationToolVersionNumber"
	.byte	0x7
	.byte	0x3f
	.uaword	0x709
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x155
	.uaword	0x719
	.uleb128 0xc
	.uaword	0x261
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.string	"tBootGenToolVer"
	.byte	0x7
	.byte	0x40
	.uaword	0x6a9
	.uleb128 0x8
	.string	"tFblCommonData_tag"
	.byte	0x74
	.byte	0x7
	.byte	0x42
	.uaword	0x811
	.uleb128 0x9
	.string	"EcuCoreAssemblyNumber"
	.byte	0x7
	.byte	0x45
	.uaword	0x688
	.byte	0
	.uleb128 0x9
	.string	"EcuDeliveryAssemblyNumber"
	.byte	0x7
	.byte	0x46
	.uaword	0x688
	.byte	0x19
	.uleb128 0x9
	.string	"EcuSerialNumber"
	.byte	0x7
	.byte	0x47
	.uaword	0x811
	.byte	0x32
	.uleb128 0x9
	.string	"BootSoftwareIdentification"
	.byte	0x7
	.byte	0x48
	.uaword	0x698
	.byte	0x44
	.uleb128 0x9
	.string	"BootloaderGenToolVersionNumber"
	.byte	0x7
	.byte	0x49
	.uaword	0x719
	.byte	0x5e
	.uleb128 0x9
	.string	"FordElectronicSerialNumber"
	.byte	0x7
	.byte	0x4a
	.uaword	0x821
	.byte	0x6a
	.byte	0
	.uleb128 0xb
	.uaword	0x155
	.uaword	0x821
	.uleb128 0xc
	.uaword	0x261
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	0x155
	.uaword	0x831
	.uleb128 0xc
	.uaword	0x261
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"tFblCommonData"
	.byte	0x7
	.byte	0x4b
	.uaword	0x730
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.byte	0x82
	.uaword	0x8b1
	.uleb128 0xe
	.string	"FBLBMHDR_TARGET_FBL"
	.sleb128 0
	.uleb128 0xe
	.string	"FBLBMHDR_TARGET_FBLUPDATER"
	.sleb128 1
	.uleb128 0xe
	.string	"FBLBMHDR_TARGET_APPL"
	.sleb128 2
	.uleb128 0xe
	.string	"FBLBMHDR_TARGET_DATA"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrTargetHandle"
	.byte	0x8
	.byte	0x87
	.uaword	0x847
	.uleb128 0x10
	.byte	0x18
	.byte	0x8
	.byte	0x91
	.uaword	0x971
	.uleb128 0x9
	.string	"bmMagicFlag"
	.byte	0x8
	.byte	0x93
	.uaword	0x1b2
	.byte	0
	.uleb128 0x9
	.string	"bmEntryAddress"
	.byte	0x8
	.byte	0x94
	.uaword	0x1b2
	.byte	0x4
	.uleb128 0x9
	.string	"bmTargetHandle"
	.byte	0x8
	.byte	0x95
	.uaword	0x8b1
	.byte	0x8
	.uleb128 0x9
	.string	"bmBlockStartAddress"
	.byte	0x8
	.byte	0x96
	.uaword	0x1b2
	.byte	0xc
	.uleb128 0x9
	.string	"bmBlockLength"
	.byte	0x8
	.byte	0x97
	.uaword	0x1b2
	.byte	0x10
	.uleb128 0x9
	.string	"bmAuthenticationHeaderAddress"
	.byte	0x8
	.byte	0x98
	.uaword	0x1b2
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrHeader"
	.byte	0x8
	.byte	0x99
	.uaword	0x8ce
	.uleb128 0x2
	.string	"tFblStrtFct"
	.byte	0x9
	.byte	0x6e
	.uaword	0x259
	.uleb128 0x2
	.string	"tApplStrtFct"
	.byte	0x9
	.byte	0x76
	.uaword	0x259
	.uleb128 0x10
	.byte	0x1c
	.byte	0x9
	.byte	0x7a
	.uaword	0xa57
	.uleb128 0x9
	.string	"magic"
	.byte	0x9
	.byte	0x7c
	.uaword	0x1b2
	.byte	0
	.uleb128 0x9
	.string	"majorVersion"
	.byte	0x9
	.byte	0x7d
	.uaword	0x182
	.byte	0x4
	.uleb128 0x9
	.string	"minorVersion"
	.byte	0x9
	.byte	0x7e
	.uaword	0x182
	.byte	0x6
	.uleb128 0x9
	.string	"fblHeaderAddress"
	.byte	0x9
	.byte	0x7f
	.uaword	0x1b2
	.byte	0x8
	.uleb128 0x9
	.string	"pFblStartFct"
	.byte	0x9
	.byte	0x80
	.uaword	0x988
	.byte	0xc
	.uleb128 0x9
	.string	"pApplStartFct"
	.byte	0x9
	.byte	0x81
	.uaword	0x99b
	.byte	0x10
	.uleb128 0x9
	.string	"checksum"
	.byte	0x9
	.byte	0x82
	.uaword	0x1b2
	.byte	0x14
	.uleb128 0x9
	.string	"end_magic"
	.byte	0x9
	.byte	0x83
	.uaword	0x1b2
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHeader"
	.byte	0x9
	.byte	0x84
	.uaword	0x9af
	.uleb128 0x2
	.string	"tFblCommonDataPtr"
	.byte	0xa
	.byte	0x4b
	.uaword	0x252
	.uleb128 0x2
	.string	"tFblHeaderLogicalBlockTablePtr"
	.byte	0xa
	.byte	0x4f
	.uaword	0xaaa
	.uleb128 0x5
	.byte	0x4
	.uaword	0xab0
	.uleb128 0x11
	.uaword	0x53e
	.uleb128 0x2
	.string	"tFblHeaderBmHeaderPtr"
	.byte	0xa
	.byte	0x51
	.uaword	0xad2
	.uleb128 0x5
	.byte	0x4
	.uaword	0xad8
	.uleb128 0x11
	.uaword	0x971
	.uleb128 0x10
	.byte	0x1c
	.byte	0xa
	.byte	0x54
	.uaword	0xb7d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x56
	.uaword	0x232
	.byte	0
	.uleb128 0x9
	.string	"pLogicalBlockTable"
	.byte	0xa
	.byte	0x57
	.uaword	0xa84
	.byte	0x4
	.uleb128 0x9
	.string	"logicalBlockTableSize"
	.byte	0xa
	.byte	0x58
	.uaword	0x2f2
	.byte	0x8
	.uleb128 0x9
	.string	"pFblCommonData"
	.byte	0xa
	.byte	0x5a
	.uaword	0xa6b
	.byte	0xc
	.uleb128 0x9
	.string	"fblStartAddress"
	.byte	0xa
	.byte	0x5c
	.uaword	0x2de
	.byte	0x10
	.uleb128 0x9
	.string	"fblLength"
	.byte	0xa
	.byte	0x5d
	.uaword	0x2f2
	.byte	0x14
	.uleb128 0x9
	.string	"bmHeader"
	.byte	0xa
	.byte	0x5e
	.uaword	0xab5
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.string	"tFblHeader"
	.byte	0xa
	.byte	0x5f
	.uaword	0xadd
	.uleb128 0x12
	.string	"FblInitPowerOn"
	.byte	0x1
	.uahalf	0x10f
	.byte	0x1
	.byte	0x1
	.uaword	0xbb3
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x232
	.byte	0
	.uleb128 0x12
	.string	"FblInit"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.byte	0x1
	.uaword	0xbdb
	.uleb128 0x14
	.string	"initposition"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x213
	.byte	0
	.uleb128 0x15
	.string	"FblCheckProgrammingRequest"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"FblRepeatCheckForStartMsg"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"FblPostProcessStartMsg"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.byte	0x1
	.uaword	0xc52
	.uleb128 0x18
	.string	"startMsgResult"
	.byte	0x1
	.byte	0xe6
	.uaword	0x232
	.byte	0
	.uleb128 0x16
	.string	"FblDeinit"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"FblRepeat"
	.byte	0x1
	.uahalf	0x1bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"FblMainInternal"
	.byte	0x1
	.uahalf	0x1f4
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xef9
	.uleb128 0x1a
	.uaword	0xb8f
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1f7
	.uaword	0xcea
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1c
	.uaword	0xba8
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	.LVL0
	.uaword	0x1025
	.uaword	0xccd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL30
	.uaword	0x1047
	.uleb128 0x1f
	.uaword	.LVL31
	.uaword	0x1061
	.uleb128 0x1f
	.uaword	.LVL32
	.uaword	0x107d
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0xbdb
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0xd08
	.uleb128 0x1f
	.uaword	.LVL37
	.uaword	0x1095
	.byte	0
	.uleb128 0x20
	.uaword	0xbb3
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x200
	.uaword	0xd5b
	.uleb128 0x21
	.uaword	0xbc5
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0x10b5
	.uaword	0xd38
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL4
	.uaword	0x10d4
	.uleb128 0x1f
	.uaword	.LVL5
	.uaword	0x10ea
	.uleb128 0x22
	.uaword	.LVL6
	.uaword	0x10b5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0x82
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbfb
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x203
	.uaword	0xde0
	.uleb128 0x1a
	.uaword	0xc1b
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0xdaf
	.uleb128 0x21
	.uaword	0xc3b
	.uaword	.LLST2
	.uleb128 0x23
	.uaword	0xc52
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xfb
	.uleb128 0x1f
	.uaword	.LVL9
	.uaword	0x10fd
	.uleb128 0x1f
	.uaword	.LVL10
	.uaword	0x1111
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xc1b
	.uaword	.LBB47
	.uaword	.LBE47
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0xdcd
	.uleb128 0x21
	.uaword	0xc3b
	.uaword	.LLST3
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL7
	.uaword	0x1125
	.uleb128 0x1f
	.uaword	.LVL12
	.uaword	0x1142
	.byte	0
	.uleb128 0x20
	.uaword	0xbb3
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x208
	.uaword	0xe2a
	.uleb128 0x21
	.uaword	0xbc5
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	.LVL16
	.uaword	0x10b5
	.uaword	0xe10
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL17
	.uaword	0x1164
	.uleb128 0x22
	.uaword	.LVL18
	.uaword	0x10b5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xc62
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x20b
	.uaword	0xe75
	.uleb128 0x1f
	.uaword	.LVL19
	.uaword	0x1125
	.uleb128 0x1f
	.uaword	.LVL20
	.uaword	0x117b
	.uleb128 0x1f
	.uaword	.LVL21
	.uaword	0x1193
	.uleb128 0x1f
	.uaword	.LVL22
	.uaword	0x11a5
	.uleb128 0x1f
	.uaword	.LVL23
	.uaword	0x11bd
	.uleb128 0x1f
	.uaword	.LVL24
	.uaword	0x11d2
	.byte	0
	.uleb128 0x20
	.uaword	0xc52
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x20e
	.uaword	0xe9c
	.uleb128 0x1f
	.uaword	.LVL25
	.uaword	0x10fd
	.uleb128 0x1f
	.uaword	.LVL26
	.uaword	0x1111
	.byte	0
	.uleb128 0x20
	.uaword	0xbb3
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0xeef
	.uleb128 0x21
	.uaword	0xbc5
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x10b5
	.uaword	0xecc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL34
	.uaword	0x11e4
	.uleb128 0x1f
	.uaword	.LVL35
	.uaword	0x11fa
	.uleb128 0x22
	.uaword	.LVL36
	.uaword	0x10b5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL27
	.uaword	0x120e
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"FblMain"
	.byte	0x1
	.uahalf	0x1e8
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf20
	.uleb128 0x1f
	.uaword	.LVL38
	.uaword	0xc72
	.byte	0
	.uleb128 0x25
	.string	"startMessageDelay"
	.byte	0x1
	.byte	0x93
	.uaword	0x222
	.byte	0x5
	.byte	0x3
	.uaword	startMessageDelay
	.uleb128 0x26
	.string	"FblLogicalBlockTable"
	.byte	0x5
	.byte	0x7d
	.uaword	0xab0
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"WDInitFlag"
	.byte	0xb
	.byte	0x4b
	.uaword	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"fblCwStateStartMsg"
	.byte	0xc
	.uahalf	0x255
	.uaword	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"fblMemProgState"
	.byte	0x6
	.uahalf	0x3cc
	.uaword	0x61a
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"fblCommonData"
	.byte	0xd
	.byte	0xe4
	.uaword	0xfbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x831
	.uleb128 0x26
	.string	"FblBmHdrHeader"
	.byte	0x8
	.byte	0xa2
	.uaword	0xad8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x26d
	.uaword	0xfec
	.uleb128 0xc
	.uaword	0x261
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"fblMainStates"
	.byte	0x1
	.byte	0x96
	.uaword	0xfdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fblMainStates
	.uleb128 0x28
	.string	"FblHeader"
	.byte	0x1
	.byte	0x78
	.uaword	0x1020
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FblHeader
	.uleb128 0x11
	.uaword	0xb7d
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0xd
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.uaword	0x1047
	.uleb128 0x2a
	.uaword	0x213
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"FblDiagInitPowerOn"
	.byte	0xe
	.uahalf	0x389
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"MemDriver_InitPowerOn"
	.byte	0xf
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"FblLbtInitPowerOn"
	.byte	0x10
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"ApplFblExtProgRequest"
	.byte	0x13
	.byte	0xc1
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"ApplFblStartup"
	.byte	0xd
	.byte	0xa6
	.byte	0x1
	.byte	0x1
	.uaword	0x10d4
	.uleb128 0x2a
	.uaword	0x213
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"EcuM_StartupTwo"
	.byte	0x11
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblDiagInit"
	.byte	0xe
	.uahalf	0x38a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblCw_Deinit"
	.byte	0xc
	.uahalf	0x176
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"ApplFblWDLong"
	.byte	0x12
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0xb
	.byte	0x6c
	.byte	0x1
	.uaword	0x213
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"FblCwCheckStartMessage"
	.byte	0xc
	.uahalf	0x1c3
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblDiagPostInit"
	.byte	0xe
	.uahalf	0x387
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblDiagTimerTask"
	.byte	0xe
	.uahalf	0x383
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"ApplFblTask"
	.byte	0xd
	.byte	0xad
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblDiagStateTask"
	.byte	0xe
	.uahalf	0x384
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblCwIdleTask"
	.byte	0xc
	.uahalf	0x181
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblMemTask"
	.byte	0x6
	.uahalf	0x3a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"FblInitWatchdog"
	.byte	0xb
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"FblTimerInit"
	.byte	0x14
	.uahalf	0x150
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"ApplFblReset"
	.byte	0xd
	.byte	0xaa
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uaword	.LVL1
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
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"magicFlag"
	.extern	FblBmHdrHeader,STT_OBJECT,24
	.extern	fblCommonData,STT_OBJECT,116
	.extern	FblLogicalBlockTable,STT_OBJECT,136
	.extern	ApplFblExtProgRequest,STT_FUNC,0
	.extern	FblTimerInit,STT_FUNC,0
	.extern	FblInitWatchdog,STT_FUNC,0
	.extern	FblLbtInitPowerOn,STT_FUNC,0
	.extern	MemDriver_InitPowerOn,STT_FUNC,0
	.extern	FblDiagInitPowerOn,STT_FUNC,0
	.extern	WDInitFlag,STT_OBJECT,1
	.extern	ApplFblReset,STT_FUNC,0
	.extern	FblMemTask,STT_FUNC,0
	.extern	FblCwIdleTask,STT_FUNC,0
	.extern	FblDiagStateTask,STT_FUNC,0
	.extern	ApplFblTask,STT_FUNC,0
	.extern	FblDiagTimerTask,STT_FUNC,0
	.extern	fblMemProgState,STT_OBJECT,1
	.extern	FblDiagPostInit,STT_FUNC,0
	.extern	FblCwCheckStartMessage,STT_FUNC,0
	.extern	ApplFblWDLong,STT_FUNC,0
	.extern	FblCw_Deinit,STT_FUNC,0
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	fblCwStateStartMsg,STT_OBJECT,1
	.extern	FblDiagInit,STT_FUNC,0
	.extern	EcuM_StartupTwo,STT_FUNC,0
	.extern	ApplFblStartup,STT_FUNC,0
	.extern	ApplFblFatalError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
