	.file	"ESLib_Helper.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.esl_ResetAndClearWorkspace,"ax",@progbits
	.align 1
	.global	esl_ResetAndClearWorkspace
	.type	esl_ResetAndClearWorkspace, @function
esl_ResetAndClearWorkspace:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.c"
	.loc 1 65 0
.LVL0:
	.loc 1 67 0
	mov	%d15, 127
	st.h	[%a4] 4, %d15
	ret
.LFE15:
	.size	esl_ResetAndClearWorkspace, .-esl_ResetAndClearWorkspace
.section .text.esl_SetWorkspaceStatus,"ax",@progbits
	.align 1
	.global	esl_SetWorkspaceStatus
	.type	esl_SetWorkspaceStatus, @function
esl_SetWorkspaceStatus:
.LFB16:
	.loc 1 85 0
.LVL1:
	.loc 1 87 0
	mov	%d15, -16384
	or	%d4, %d15
.LVL2:
	st.h	[%a4] 4, %d4
	ret
.LFE16:
	.size	esl_SetWorkspaceStatus, .-esl_SetWorkspaceStatus
.section .text.esl_CheckWorkSpaceHeader,"ax",@progbits
	.align 1
	.global	esl_CheckWorkSpaceHeader
	.type	esl_CheckWorkSpaceHeader, @function
esl_CheckWorkSpaceHeader:
.LFB17:
	.loc 1 99 0
.LVL3:
	.loc 1 103 0
	ld.w	%d15, [%a4]0
	.loc 1 105 0
	ge.u	%d4, %d15, %d4
.LVL4:
	.loc 1 109 0
	mov	%d2, 8194
	seln	%d2, %d4, %d2, 0
	ret
.LFE17:
	.size	esl_CheckWorkSpaceHeader, .-esl_CheckWorkSpaceHeader
.section .text.esl_CheckWorkSpaceState,"ax",@progbits
	.align 1
	.global	esl_CheckWorkSpaceState
	.type	esl_CheckWorkSpaceState, @function
esl_CheckWorkSpaceState:
.LFB18:
	.loc 1 122 0
.LVL5:
	.loc 1 125 0
	ld.hu	%d15, [%a4] 4
	mov	%d3, 8064
	and	%d3, %d15
	extr.u	%d3, %d3, 0, 16
	.loc 1 127 0
	mov	%d2, 8193
	.loc 1 125 0
	jne	%d3, %d4, .L7
	.loc 1 125 0 is_stmt 0 discriminator 1
	mov	%d2, 16384
	and	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	.loc 1 127 0 is_stmt 1 discriminator 1
	mov	%d2, 8193
	cmov	%d2, %d15, 0
.L7:
.LVL6:
	.loc 1 131 0
	ret
.LFE18:
	.size	esl_CheckWorkSpaceState, .-esl_CheckWorkSpaceState
.section .text.esl_CheckWorkSpaceHeaderAndState,"ax",@progbits
	.align 1
	.global	esl_CheckWorkSpaceHeaderAndState
	.type	esl_CheckWorkSpaceHeaderAndState, @function
esl_CheckWorkSpaceHeaderAndState:
.LFB19:
	.loc 1 145 0
.LVL7:
.LBB4:
.LBB5:
	.loc 1 103 0
	ld.w	%d15, [%a4]0
	jge.u	%d15, %d4, .L11
	.loc 1 105 0
	mov	%d2, 8194
	ret
.L11:
	mov	%d4, %d5
.LVL8:
.LBE5:
.LBE4:
	.loc 1 155 0
	call	esl_CheckWorkSpaceState
.LVL9:
	.loc 1 159 0
	ret
.LFE19:
	.size	esl_CheckWorkSpaceHeaderAndState, .-esl_CheckWorkSpaceHeaderAndState
.section .text.esl_checkLengthRef,"ax",@progbits
	.align 1
	.global	esl_checkLengthRef
	.type	esl_checkLengthRef, @function
esl_checkLengthRef:
.LFB20:
	.loc 1 171 0
.LVL10:
	.loc 1 176 0
	mov	%d2, 8195
	.loc 1 174 0
	jz.a	%a4, .L15
	.loc 1 178 0
	ld.w	%d2, [%a4]0
	.loc 1 180 0
	ge.u	%d4, %d2, %d4
.LVL11:
	mov	%d2, 8199
	seln	%d2, %d4, %d2, 0
.L15:
.LVL12:
	.loc 1 188 0
	ret
.LFE20:
	.size	esl_checkLengthRef, .-esl_checkLengthRef
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../CBD2300515_D00/BSW/vSecPrim/actPlatformTypes.h"
	.file 4 "../../../../CBD2300515_D00/BSW/vSecPrim/actITypes.h"
	.file 5 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_t.h"
	.file 6 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_ERC.h"
	.file 7 "../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x62a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/vSecPrim/ESLib_Helper.c"
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x18a
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
	.uaword	0x1ba
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
	.string	"actPlatformUint16"
	.byte	0x3
	.byte	0x4e
	.uaword	0x17c
	.uleb128 0x3
	.string	"actPlatformUint32"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1ac
	.uleb128 0x3
	.string	"actU16"
	.byte	0x4
	.byte	0x31
	.uaword	0x20d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"eslt_Size16"
	.byte	0x5
	.byte	0x40
	.uaword	0x20d
	.uleb128 0x3
	.string	"eslt_Size32"
	.byte	0x5
	.byte	0x41
	.uaword	0x226
	.uleb128 0x3
	.string	"eslt_Length"
	.byte	0x5
	.byte	0x48
	.uaword	0x26c
	.uleb128 0x3
	.string	"eslt_WSStatus"
	.byte	0x5
	.byte	0x4d
	.uaword	0x259
	.uleb128 0x3
	.string	"eslt_WSCheckSum"
	.byte	0x5
	.byte	0x4e
	.uaword	0x26c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"esl_WatchdogFuncPtr"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x2e2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e8
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x336
	.uleb128 0x8
	.string	"size"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x27f
	.byte	0
	.uleb128 0x8
	.string	"status"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x292
	.byte	0x4
	.uleb128 0x8
	.string	"watchdog"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x2c6
	.byte	0x8
	.uleb128 0x8
	.string	"checkSum"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x2a7
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"eslt_WorkSpaceHeader"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x2ea
	.uleb128 0x3
	.string	"eslt_ErrorCode"
	.byte	0x6
	.byte	0xf3
	.uaword	0x23f
	.uleb128 0x3
	.string	"eslt_LengthConstRef"
	.byte	0x7
	.byte	0x3c
	.uaword	0x384
	.uleb128 0x5
	.byte	0x4
	.uaword	0x38a
	.uleb128 0x9
	.uaword	0x27f
	.uleb128 0xa
	.byte	0x1
	.string	"esl_ResetAndClearWorkspace"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3e5
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x40
	.uaword	0x3e5
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"workSpaceBuffer"
	.byte	0x1
	.byte	0x40
	.uaword	0x3eb
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x336
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.string	"esl_SetWorkspaceStatus"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x436
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x3e5
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"algo"
	.byte	0x1
	.byte	0x54
	.uaword	0x292
	.uaword	.LLST0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeader"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	0x353
	.byte	0x1
	.uaword	0x483
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0x62
	.uaword	0x483
	.uleb128 0x11
	.string	"minSize"
	.byte	0x1
	.byte	0x62
	.uaword	0x27f
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.byte	0x64
	.uaword	0x353
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x489
	.uleb128 0x9
	.uaword	0x336
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bc
	.uleb128 0x14
	.uaword	0x45d
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	0x468
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	0x477
	.uaword	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"esl_CheckWorkSpaceState"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	0x353
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x517
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x78
	.uaword	0x483
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"algo"
	.byte	0x1
	.byte	0x79
	.uaword	0x292
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7b
	.uaword	0x353
	.uaword	.LLST3
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"esl_CheckWorkSpaceHeaderAndState"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x353
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5cf
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8f
	.uaword	0x483
	.uaword	.LLST4
	.uleb128 0xe
	.string	"minSize"
	.byte	0x1
	.byte	0x90
	.uaword	0x27f
	.uaword	.LLST5
	.uleb128 0xe
	.string	"algo"
	.byte	0x1
	.byte	0x90
	.uaword	0x292
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x1
	.byte	0x92
	.uaword	0x353
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.uaword	0x436
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x92
	.uaword	0x5c5
	.uleb128 0x15
	.uaword	0x468
	.uaword	.LLST5
	.uleb128 0x15
	.uaword	0x45d
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x1d
	.uaword	0x477
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL9
	.uaword	0x4bc
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"esl_checkLengthRef"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	0x353
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.string	"lenRef"
	.byte	0x1
	.byte	0xaa
	.uaword	0x369
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"lengthValue"
	.byte	0x1
	.byte	0xaa
	.uaword	0x27f
	.uaword	.LLST9
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.byte	0xac
	.uaword	0x353
	.uaword	.LLST10
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE17
	.uahalf	0xe
	.byte	0xa
	.uahalf	0x2002
	.byte	0x30
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"retVal"
.LASF0:
	.string	"workSpaceHeader"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
