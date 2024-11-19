	.file	"bm_ap.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ApplFblBmPowerOnPre,"ax",@progbits
	.align 1
	.global	ApplFblBmPowerOnPre
	.type	ApplFblBmPowerOnPre, @function
ApplFblBmPowerOnPre:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/bm_ap.c"
	.loc 1 157 0
	ret
.LFE14:
	.size	ApplFblBmPowerOnPre, .-ApplFblBmPowerOnPre
.section .text.ApplFblBmPowerOnPost,"ax",@progbits
	.align 1
	.global	ApplFblBmPowerOnPost
	.type	ApplFblBmPowerOnPost, @function
ApplFblBmPowerOnPost:
.LFB15:
	.loc 1 167 0
	ret
.LFE15:
	.size	ApplFblBmPowerOnPost, .-ApplFblBmPowerOnPost
.section .text.ApplFblBmInitPre,"ax",@progbits
	.align 1
	.global	ApplFblBmInitPre
	.type	ApplFblBmInitPre, @function
ApplFblBmInitPre:
.LFB16:
	.loc 1 177 0
	ret
.LFE16:
	.size	ApplFblBmInitPre, .-ApplFblBmInitPre
.section .text.ApplFblBmInitPost,"ax",@progbits
	.align 1
	.global	ApplFblBmInitPost
	.type	ApplFblBmInitPost, @function
ApplFblBmInitPost:
.LFB17:
	.loc 1 212 0
	ret
.LFE17:
	.size	ApplFblBmInitPost, .-ApplFblBmInitPost
.section .text.ApplFblBmReset,"ax",@progbits
	.align 1
	.global	ApplFblBmReset
	.type	ApplFblBmReset, @function
ApplFblBmReset:
.LFB18:
	.loc 1 224 0
	.loc 1 226 0
	call	BrsHwSoftwareResetECU
.LVL0:
	ret
.LFE18:
	.size	ApplFblBmReset, .-ApplFblBmReset
.section .text.ApplFblBmCheckTargetValidity,"ax",@progbits
	.align 1
	.global	ApplFblBmCheckTargetValidity
	.type	ApplFblBmCheckTargetValidity, @function
ApplFblBmCheckTargetValidity:
.LFB19:
	.loc 1 242 0
.LVL1:
	sub.a	%SP, 40
.LCFI0:
	.loc 1 294 0
	mov	%d8, 0
	.loc 1 253 0
	jne	%d4, 2, .L8
	j	.L11
.LVL2:
.L10:
	.loc 1 263 0
	mov	%d4, %d9
	lea	%a4, [%SP] 8
	call	FblLbtGetBlockDescriptorByNr
.LVL3:
	jnz	%d2, .L9
	.loc 1 265 0
	ld.w	%d4, [%SP] 20
	ld.w	%d5, [%SP] 24
	lea	%a4, [%SP] 7
	call	FblMemGetDeviceByRange
.LVL4:
	jnz	%d2, .L9
	.loc 1 269 0
	ld.bu	%d15, [%SP] 7
	jeq	%d15, 1, .L9
	.loc 1 272 0
	lea	%a4, [%SP] 8
	mov	%d4, 1
	call	FblNvPatternGet
.LVL5:
	mov	%d8, %d2
.LVL6:
.L9:
	add	%d10, 1
.LVL7:
	j	.L7
.LVL8:
.L11:
	mov	%d10, 0
	mov	%d8, 1
.LVL9:
.L7:
	and	%d9, %d10, 255
.LVL10:
	.loc 1 261 0
	call	FblLbtGetBlockCount
.LVL11:
	ne	%d15, %d8, 0
	and.lt.u	%d15, %d9, %d2
	jnz	%d15, .L10
.LVL12:
.L8:
	.loc 1 298 0
	mov	%d2, %d8
	ret
.LFE19:
	.size	ApplFblBmCheckTargetValidity, .-ApplFblBmCheckTargetValidity
.section .text.ApplFblBmIsValidBlock,"ax",@progbits
	.align 1
	.global	ApplFblBmIsValidBlock
	.type	ApplFblBmIsValidBlock, @function
ApplFblBmIsValidBlock:
.LFB20:
	.loc 1 315 0
.LVL13:
	sub.a	%SP, 8
.LCFI1:
	mov.aa	%a15, %a4
.LVL14:
	.loc 1 343 0
	ld.w	%d4, [%a4] 12
.LVL15:
	ld.w	%d5, [%a4] 16
	lea	%a4, [%SP] 7
.LVL16:
	call	FblMemGetDeviceByRange
.LVL17:
	.loc 1 332 0
	mov	%d15, 1
	.loc 1 343 0
	jnz	%d2, .L13
	.loc 1 347 0
	ld.bu	%d2, [%SP] 7
	jeq	%d2, 1, .L13
	.loc 1 350 0
	mov.aa	%a4, %a15
	mov	%d4, 2
	call	FblNvPatternGetByBlockDescriptor
.LVL18:
	mov	%d15, %d2
.LVL19:
.L13:
	.loc 1 378 0
	mov	%d2, %d15
	ret
.LFE20:
	.size	ApplFblBmIsValidBlock, .-ApplFblBmIsValidBlock
.section .text.ApplFblBmIsOptionalBlock,"ax",@progbits
	.align 1
	.global	ApplFblBmIsOptionalBlock
	.type	ApplFblBmIsOptionalBlock, @function
ApplFblBmIsOptionalBlock:
.LFB21:
	.loc 1 391 0
.LVL20:
	ret
.LFE21:
	.size	ApplFblBmIsOptionalBlock, .-ApplFblBmIsOptionalBlock
.section .text.ApplFblBmStartSoftware,"ax",@progbits
	.align 1
	.global	ApplFblBmStartSoftware
	.type	ApplFblBmStartSoftware, @function
ApplFblBmStartSoftware:
.LFB22:
	.loc 1 408 0
.LVL21:
	.loc 1 412 0
	ld.a	%a15, [%a4] 4
	calli	%a15
.LVL22:
.L18:
	.loc 1 420 0 discriminator 1
	j	.L18
.LFE22:
	.size	ApplFblBmStartSoftware, .-ApplFblBmStartSoftware
.section .text.ApplFblBmCheckReprogFlag,"ax",@progbits
	.align 1
	.global	ApplFblBmCheckReprogFlag
	.type	ApplFblBmCheckReprogFlag, @function
ApplFblBmCheckReprogFlag:
.LFB23:
	.loc 1 489 0
.LVL23:
	.loc 1 496 0
	movh.a	%a15, hi:fblBmMagicFlag
	ld.bu	%d15, [%a15] lo:fblBmMagicFlag
	ne	%d15, %d15, 80
	.loc 1 490 0
	mov	%d2, 1
	.loc 1 496 0
	jnz	%d15, .L20
	.loc 1 496 0 is_stmt 0 discriminator 1
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 1
	ne	%d15, %d15, 114
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 2
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 2
	ne	%d15, %d15, 111
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 3
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 3
	ne	%d15, %d15, 103
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 4
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 4
	ne	%d15, %d15, 83
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 5
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 5
	ne	%d15, %d15, 105
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 6
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d15, [%a15] 6
	ne	%d15, %d15, 103
	jnz	%d15, .L20
	.loc 1 496 0 discriminator 7
	movh.a	%a15, hi:fblBmMagicFlag
	lea	%a15, [%a15] lo:fblBmMagicFlag
	ld.bu	%d2, [%a15] 7
	.loc 1 490 0 is_stmt 1 discriminator 7
	ne	%d2, %d2, 110
.L20:
.LVL24:
	.loc 1 542 0
	ret
.LFE23:
	.size	ApplFblBmCheckReprogFlag, .-ApplFblBmCheckReprogFlag
.section .text.ApplFblBmFatalError,"ax",@progbits
	.align 1
	.global	ApplFblBmFatalError
	.type	ApplFblBmFatalError, @function
ApplFblBmFatalError:
.LFB24:
	.loc 1 617 0
.LVL25:
.L29:
	.loc 1 627 0 discriminator 1
	j	.L29
.LFE24:
	.size	ApplFblBmFatalError, .-ApplFblBmFatalError
.section .text.ApplFblFatalError,"ax",@progbits
	.align 1
	.global	ApplFblFatalError
	.type	ApplFblFatalError, @function
ApplFblFatalError:
.LFB25:
	.loc 1 642 0
.LVL26:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 644 0
	mov	%d15, 1
	st.b	[%SP] 7, %d15
	.loc 1 650 0
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L30
.LVL27:
.L33:
	.loc 1 652 0
	call	FblLookForWatchdogVoid
.LVL28:
	.loc 1 650 0
	ld.bu	%d15, [%SP] 7
	jnz	%d15, .L33
.L30:
	ret
.LFE25:
	.size	ApplFblFatalError, .-ApplFblFatalError
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
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x28
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/v_def.h"
	.file 4 "../../../BSW/Fbl/fbl_def.h"
	.file 5 "GenData/Fbl_Lbt.h"
	.file 6 "GenData/FblBmHdr_Cfg.h"
	.file 7 "../../../BSW/FblBm/bm_types.h"
	.file 8 "../../../BSW/Fbl/fbl_nvpattern_oem.h"
	.file 9 "../../../BSW/Fbl/fbl_lbt_access.h"
	.file 10 "../../../BSW/Fbl/fbl_mio.h"
	.file 11 "../../../BSW/Fbl/fbl_nvpattern.h"
	.file 12 "Include/BrsHw.h"
	.file 13 "../../../BSW/Fbl/fbl_wd.h"
	.file 14 "../../../BSW/FblBm/bm_shared.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1172
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/bm_ap.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x161
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
	.uaword	0x1be
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
	.uaword	0x161
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1be
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"tFblResult"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x211
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x220
	.uleb128 0x4
	.string	"FBL_MEMSIZE_TYPE"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x220
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x253
	.uleb128 0x4
	.string	"tFblLength"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x269
	.uleb128 0x4
	.string	"tExportFct"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x2bc
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c2
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x211
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"tFblLbtBlockNr"
	.byte	0x5
	.byte	0x5e
	.uaword	0x211
	.uleb128 0x2
	.string	"tFblLbtMandatoryType"
	.byte	0x5
	.byte	0x5f
	.uaword	0x152
	.uleb128 0x2
	.string	"tFblLbtBlockIndex"
	.byte	0x5
	.byte	0x60
	.uaword	0x220
	.uleb128 0x2
	.string	"tFblLbtBlockType"
	.byte	0x5
	.byte	0x61
	.uaword	0x220
	.uleb128 0x2
	.string	"tFblLbtBlockCount"
	.byte	0x5
	.byte	0x64
	.uaword	0x211
	.uleb128 0x7
	.string	"tBlockDescriptorTag"
	.byte	0x20
	.byte	0x5
	.byte	0x68
	.uaword	0x42b
	.uleb128 0x8
	.string	"blockNr"
	.byte	0x5
	.byte	0x69
	.uaword	0x2d6
	.byte	0
	.uleb128 0x8
	.string	"mandatoryType"
	.byte	0x5
	.byte	0x6a
	.uaword	0x2ec
	.byte	0x1
	.uleb128 0x8
	.string	"blockIndex"
	.byte	0x5
	.byte	0x6b
	.uaword	0x308
	.byte	0x4
	.uleb128 0x8
	.string	"blockType"
	.byte	0x5
	.byte	0x6c
	.uaword	0x321
	.byte	0x8
	.uleb128 0x8
	.string	"blockStartAddress"
	.byte	0x5
	.byte	0x6d
	.uaword	0x282
	.byte	0xc
	.uleb128 0x8
	.string	"blockLength"
	.byte	0x5
	.byte	0x6e
	.uaword	0x296
	.byte	0x10
	.uleb128 0x8
	.string	"headerAddress"
	.byte	0x5
	.byte	0x6f
	.uaword	0x282
	.byte	0x14
	.uleb128 0x8
	.string	"bmHeaderAddress"
	.byte	0x5
	.byte	0x70
	.uaword	0x282
	.byte	0x18
	.uleb128 0x8
	.string	"verifyOutput"
	.byte	0x5
	.byte	0x71
	.uaword	0x2a9
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.string	"tBlockDescriptor"
	.byte	0x5
	.byte	0x72
	.uaword	0x352
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x82
	.uaword	0x4ad
	.uleb128 0xa
	.string	"FBLBMHDR_TARGET_FBL"
	.sleb128 0
	.uleb128 0xa
	.string	"FBLBMHDR_TARGET_FBLUPDATER"
	.sleb128 1
	.uleb128 0xa
	.string	"FBLBMHDR_TARGET_APPL"
	.sleb128 2
	.uleb128 0xa
	.string	"FBLBMHDR_TARGET_DATA"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrTargetHandle"
	.byte	0x6
	.byte	0x87
	.uaword	0x443
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.byte	0x91
	.uaword	0x56d
	.uleb128 0x8
	.string	"bmMagicFlag"
	.byte	0x6
	.byte	0x93
	.uaword	0x1b0
	.byte	0
	.uleb128 0x8
	.string	"bmEntryAddress"
	.byte	0x6
	.byte	0x94
	.uaword	0x1b0
	.byte	0x4
	.uleb128 0x8
	.string	"bmTargetHandle"
	.byte	0x6
	.byte	0x95
	.uaword	0x4ad
	.byte	0x8
	.uleb128 0x8
	.string	"bmBlockStartAddress"
	.byte	0x6
	.byte	0x96
	.uaword	0x1b0
	.byte	0xc
	.uleb128 0x8
	.string	"bmBlockLength"
	.byte	0x6
	.byte	0x97
	.uaword	0x1b0
	.byte	0x10
	.uleb128 0x8
	.string	"bmAuthenticationHeaderAddress"
	.byte	0x6
	.byte	0x98
	.uaword	0x1b0
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.string	"tFblBmHdrHeader"
	.byte	0x6
	.byte	0x99
	.uaword	0x4ca
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x63
	.uaword	0xb64
	.uleb128 0xa
	.string	"FBLBM_ERROR_NO_ERROR"
	.sleb128 0
	.uleb128 0xa
	.string	"FBLBM_ERROR_HEADER_READ_FAILED"
	.sleb128 1
	.uleb128 0xa
	.string	"FBLBM_ERROR_HEADER_MAGIC_FAILED"
	.sleb128 2
	.uleb128 0xa
	.string	"FBLBM_ERROR_HEADER_VERSION_FAILED"
	.sleb128 3
	.uleb128 0xa
	.string	"FBLBM_ERROR_HEADER_LENGTH_FAILED"
	.sleb128 4
	.uleb128 0xa
	.string	"FBLBM_ERROR_VALIDITY_FAILED"
	.sleb128 5
	.uleb128 0xa
	.string	"FBLBM_ERROR_FBL_BMHEADER_INCORRECT"
	.sleb128 6
	.uleb128 0xa
	.string	"FBLBM_ERROR_FBL_VERIFICATION_FAILED"
	.sleb128 7
	.uleb128 0xa
	.string	"FBLBM_ERROR_FBL_FBLHEADER_FAILED"
	.sleb128 8
	.uleb128 0xa
	.string	"FBLBM_ERROR_KEY_NOT_AVAILABLE"
	.sleb128 9
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_SEARCH_INIT_FAILED"
	.sleb128 10
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_SEARCH_NEXT_FINISHED"
	.sleb128 11
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_HEADER_ADDRESS"
	.sleb128 12
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_HEADER_READ_ERROR"
	.sleb128 13
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_HEADER_CONSISTENCY"
	.sleb128 14
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_HEADER_TYPE"
	.sleb128 15
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_BLOCK_VALIDITY"
	.sleb128 16
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_HEADER_CMAC_VERIFY"
	.sleb128 17
	.uleb128 0xa
	.string	"FBLBM_ERROR_UPDATER_VERIFY"
	.sleb128 18
	.uleb128 0xa
	.string	"FBLBM_ERROR_LBT_POINTER_NULL"
	.sleb128 19
	.uleb128 0xa
	.string	"FBLBM_ERROR_LBT_TOO_LARGE"
	.sleb128 20
	.uleb128 0xa
	.string	"FBLBM_ERROR_LBT_SIZE"
	.sleb128 21
	.uleb128 0xa
	.string	"FBLBM_ERROR_LBT_VERIFY"
	.sleb128 22
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_DESCR"
	.sleb128 23
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_INVALID"
	.sleb128 24
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_BMHEADER_INCORRECT"
	.sleb128 25
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_VERIFY_HEADER"
	.sleb128 26
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_VERIFY_SEGMENTS"
	.sleb128 27
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_MAGIC_FLAG"
	.sleb128 28
	.uleb128 0xa
	.string	"FBLBM_ERROR_REPROG_LBT_BLOCK_COUNT"
	.sleb128 29
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_LIST_INIT"
	.sleb128 30
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_INVALID"
	.sleb128 31
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_NO_VALID_HEADER"
	.sleb128 32
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_VERIFICATION_FAILED"
	.sleb128 33
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_INVALID_ADDRESS"
	.sleb128 34
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_DEP_MANDATORY_MISSING"
	.sleb128 35
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_DEP_NO_VALID_HEADER"
	.sleb128 36
	.uleb128 0xa
	.string	"FBLBM_ERROR_TARGET_DEP_VERIFY_FAILED"
	.sleb128 37
	.uleb128 0xa
	.string	"FBLBM_ERROR_END_OF_MAIN_REACHED"
	.sleb128 38
	.uleb128 0xa
	.string	"FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL"
	.sleb128 39
	.uleb128 0xa
	.string	"FBLBM_ERROR_AP_CHECK_MAC_BUF_LENGTH"
	.sleb128 40
	.uleb128 0xa
	.string	"FBLBM_ERROR_AP_CHECK_MAC_READ_FAIL_LENGTH"
	.sleb128 41
	.byte	0
	.uleb128 0x2
	.string	"tFblBmError"
	.byte	0x7
	.byte	0x8e
	.uaword	0x584
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0xa9
	.uaword	0xc44
	.uleb128 0xa
	.string	"kFblNvPatternId_Invalid"
	.sleb128 0
	.uleb128 0xa
	.string	"kFblNvPatternId_PartitionValidity"
	.sleb128 1
	.uleb128 0xa
	.string	"kFblNvPatternId_ApplValidity"
	.sleb128 1
	.uleb128 0xa
	.string	"kFblNvPatternId_ModuleValidity"
	.sleb128 2
	.uleb128 0xa
	.string	"kFblNvPatternId_BlockValidity"
	.sleb128 2
	.uleb128 0xa
	.string	"kFblNvPatternId_Last"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"tFblNvPatternId"
	.byte	0x8
	.byte	0xbe
	.uaword	0xb86
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc61
	.uleb128 0xc
	.uaword	0x56d
	.uleb128 0xd
	.byte	0x1
	.string	"ApplFblBmPowerOnPre"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"ApplFblBmPowerOnPost"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"ApplFblBmInitPre"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"ApplFblBmInitPost"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"ApplFblBmReset"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd1f
	.uleb128 0xf
	.uaword	.LVL0
	.uaword	0x1049
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"ApplFblBmCheckTargetValidity"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe01
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf1
	.uaword	0x4ad
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf3
	.uaword	0x240
	.uaword	.LLST1
	.uleb128 0x13
	.string	"blockNo"
	.byte	0x1
	.byte	0xf5
	.uaword	0x211
	.uaword	.LLST2
	.uleb128 0x14
	.string	"blockDescriptor"
	.byte	0x1
	.byte	0xf6
	.uaword	0x42b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"device"
	.byte	0x1
	.byte	0xf7
	.uaword	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.uaword	.LVL3
	.uaword	0x1066
	.uaword	0xdca
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL4
	.uaword	0x10a2
	.uaword	0xdde
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x15
	.uaword	.LVL5
	.uaword	0x10d7
	.uaword	0xdf7
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.uaword	.LVL11
	.uaword	0x1100
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"ApplFblBmIsValidBlock"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe9c
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x139
	.uaword	0x4ad
	.uaword	.LLST3
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x13a
	.uaword	0xe9c
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x240
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"device"
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x15
	.uaword	.LVL17
	.uaword	0x10a2
	.uaword	0xe86
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL18
	.uaword	0x111e
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xea2
	.uleb128 0xc
	.uaword	0x42b
	.uleb128 0x1c
	.byte	0x1
	.string	"ApplFblBmIsOptionalBlock"
	.byte	0x1
	.uahalf	0x185
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xef2
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x185
	.uaword	0x4ad
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x186
	.uaword	0xe9c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"ApplFblBmStartSoftware"
	.byte	0x1
	.uahalf	0x197
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf3c
	.uleb128 0x1e
	.string	"bmHeader"
	.byte	0x1
	.uahalf	0x197
	.uaword	0xc5b
	.uaword	.LLST6
	.uleb128 0x1f
	.uaword	.LVL22
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"ApplFblBmCheckReprogFlag"
	.byte	0x1
	.uahalf	0x1e8
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf7f
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x240
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"ApplFblBmFatalError"
	.byte	0x1
	.uahalf	0x268
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfb9
	.uleb128 0x20
	.string	"error"
	.byte	0x1
	.uahalf	0x268
	.uaword	0xb64
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"ApplFblFatalError"
	.byte	0x1
	.uahalf	0x281
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1017
	.uleb128 0x1e
	.string	"errorCode"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x211
	.uaword	.LLST8
	.uleb128 0x1a
	.string	"stayInWhile"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x1017
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0xf
	.uaword	.LVL28
	.uaword	0x1158
	.byte	0
	.uleb128 0x21
	.uaword	0x211
	.uleb128 0x22
	.uaword	0x211
	.uaword	0x102c
	.uleb128 0x23
	.uaword	0x2ca
	.byte	0x7
	.byte	0
	.uleb128 0x24
	.string	"fblBmMagicFlag"
	.byte	0xe
	.byte	0xeb
	.uaword	0x1044
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x101c
	.uleb128 0x25
	.byte	0x1
	.string	"BrsHwSoftwareResetECU"
	.byte	0xc
	.uahalf	0x25c
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"FblLbtGetBlockDescriptorByNr"
	.byte	0x9
	.byte	0x66
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x109c
	.uleb128 0x27
	.uaword	0x2d6
	.uleb128 0x27
	.uaword	0x109c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x42b
	.uleb128 0x26
	.byte	0x1
	.string	"FblMemGetDeviceByRange"
	.byte	0xa
	.byte	0x6d
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x10d7
	.uleb128 0x27
	.uaword	0x282
	.uleb128 0x27
	.uaword	0x296
	.uleb128 0x27
	.uaword	0x2c4
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FblNvPatternGet"
	.byte	0xb
	.byte	0x77
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x1100
	.uleb128 0x27
	.uaword	0xe9c
	.uleb128 0x27
	.uaword	0xc44
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"FblLbtGetBlockCount"
	.byte	0x9
	.byte	0x62
	.byte	0x1
	.uaword	0x339
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"FblNvPatternGetByBlockDescriptor"
	.byte	0xb
	.byte	0x78
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x1158
	.uleb128 0x27
	.uaword	0xe9c
	.uleb128 0x27
	.uaword	0xc44
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"FblLookForWatchdogVoid"
	.byte	0xd
	.byte	0x66
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL10
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x7a
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
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
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"pLogicalBlock"
.LASF1:
	.string	"targetHandle"
.LASF0:
	.string	"result"
	.extern	FblLookForWatchdogVoid,STT_FUNC,0
	.extern	fblBmMagicFlag,STT_OBJECT,8
	.extern	FblNvPatternGetByBlockDescriptor,STT_FUNC,0
	.extern	FblLbtGetBlockCount,STT_FUNC,0
	.extern	FblNvPatternGet,STT_FUNC,0
	.extern	FblMemGetDeviceByRange,STT_FUNC,0
	.extern	FblLbtGetBlockDescriptorByNr,STT_FUNC,0
	.extern	BrsHwSoftwareResetECU,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
