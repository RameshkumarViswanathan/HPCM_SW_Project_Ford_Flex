	.file	"EcuM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_Init,"ax",@progbits
	.align 1
	.global	EcuM_Init
	.type	EcuM_Init, @function
EcuM_Init:
.LFB29:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
	.loc 1 85 0
	.loc 1 87 0
	call	CanIf_InitMemory
.LVL0:
	.loc 1 89 0
	call	CanTp_InitMemory
.LVL1:
	.loc 1 91 0
	call	Can_InitMemory
.LVL2:
	.loc 1 93 0
	call	CryIf_InitMemory
.LVL3:
	.loc 1 95 0
	call	Crypto_30_LibCv_InitMemory
.LVL4:
	.loc 1 97 0
	call	Csm_InitMemory
.LVL5:
	.loc 1 99 0
	call	FblCw_InitMemory
.LVL6:
	.loc 1 101 0
	call	Det_InitMemory
.LVL7:
	.loc 1 103 0
	call	PduR_InitMemory
.LVL8:
	.loc 1 105 0
	mov.a	%a4, 0
	call	Det_Init
.LVL9:
	.loc 1 107 0
	mov.a	%a4, 0
	call	PduR_PreInit
.LVL10:
	.loc 1 109 0
	call	FblMain
.LVL11:
	ret
.LFE29:
	.size	EcuM_Init, .-EcuM_Init
.section .text.EcuM_StartupTwo,"ax",@progbits
	.align 1
	.global	EcuM_StartupTwo
	.type	EcuM_StartupTwo, @function
EcuM_StartupTwo:
.LFB30:
	.loc 1 113 0
	.loc 1 115 0
	mov.a	%a4, 0
	call	Can_Init
.LVL12:
	.loc 1 117 0
	call	Crypto_30_LibCv_Init
.LVL13:
	.loc 1 119 0
	mov.a	%a4, 0
	call	CanIf_Init
.LVL14:
	.loc 1 121 0
	call	CryIf_Init
.LVL15:
	.loc 1 123 0
	mov.a	%a4, 0
	call	PduR_Init
.LVL16:
	.loc 1 125 0
	mov.a	%a4, 0
	call	CanTp_Init
.LVL17:
	.loc 1 127 0
	call	Csm_Init
.LVL18:
	.loc 1 129 0
	call	SecM_Init
.LVL19:
	.loc 1 131 0
	call	WrapNv_Init
.LVL20:
	.loc 1 133 0
	mov.a	%a4, 0
	call	FblCw_Init
.LVL21:
	ret
.LFE30:
	.size	EcuM_StartupTwo, .-EcuM_StartupTwo
.section .text.EcuM_Shutdown,"ax",@progbits
	.align 1
	.global	EcuM_Shutdown
	.type	EcuM_Shutdown, @function
EcuM_Shutdown:
.LFB31:
	.loc 1 137 0
	ret
.LFE31:
	.size	EcuM_Shutdown, .-EcuM_Shutdown
.section .text.EcuM_BswErrorHook,"ax",@progbits
	.align 1
	.global	EcuM_BswErrorHook
	.type	EcuM_BswErrorHook, @function
EcuM_BswErrorHook:
.LFB32:
	.loc 1 141 0
.LVL22:
	ret
.LFE32:
	.size	EcuM_BswErrorHook, .-EcuM_BswErrorHook
.section .text.EcuM_CheckWakeup,"ax",@progbits
	.align 1
	.global	EcuM_CheckWakeup
	.type	EcuM_CheckWakeup, @function
EcuM_CheckWakeup:
.LFB33:
	.loc 1 148 0
.LVL23:
	ret
.LFE33:
	.size	EcuM_CheckWakeup, .-EcuM_CheckWakeup
.section .text.EcuM_GeneratorCompatibilityError,"ax",@progbits
	.align 1
	.global	EcuM_GeneratorCompatibilityError
	.type	EcuM_GeneratorCompatibilityError, @function
EcuM_GeneratorCompatibilityError:
.LFB34:
	.loc 1 155 0
.LVL24:
	ret
.LFE34:
	.size	EcuM_GeneratorCompatibilityError, .-EcuM_GeneratorCompatibilityError
.section .text.EcuM_SetWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_SetWakeupEvent
	.type	EcuM_SetWakeupEvent, @function
EcuM_SetWakeupEvent:
.LFB35:
	.loc 1 162 0
.LVL25:
	ret
.LFE35:
	.size	EcuM_SetWakeupEvent, .-EcuM_SetWakeupEvent
.section .text.EcuM_ValidationWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_ValidationWakeupEvent
	.type	EcuM_ValidationWakeupEvent, @function
EcuM_ValidationWakeupEvent:
.LFB36:
	.loc 1 169 0
.LVL26:
	ret
.LFE36:
	.size	EcuM_ValidationWakeupEvent, .-EcuM_ValidationWakeupEvent
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
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "Include/EcuM_Generated_Types.h"
	.file 4 "GenData/Can_Cfg.h"
	.file 5 "../../../BSW/Can/Can.h"
	.file 6 "GenData/CanIf_Cfg.h"
	.file 7 "GenData/CanTp_Lcfg.h"
	.file 8 "GenData/FblCw_Lcfg.h"
	.file 9 "GenData/Det_Cfg.h"
	.file 10 "GenData/PduR_Lcfg.h"
	.file 11 "../../../BSW/CanIf/CanIf.h"
	.file 12 "../../../BSW/CanTp/CanTp.h"
	.file 13 "../../../BSW/CryIf/CryIf.h"
	.file 14 "../../../BSW/Crypto_30_LibCv/Crypto_30_LibCv.h"
	.file 15 "../../../BSW/Csm/Csm.h"
	.file 16 "../../../BSW/FblCw/fbl_cw.h"
	.file 17 "../../../BSW/Det/Det.h"
	.file 18 "../../../BSW/PduR/PduR.h"
	.file 19 "../../../BSW/SecMod/Sec.h"
	.file 20 "../../../BSW/WrapNv/WrapNv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa16
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/EcuM.c"
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
	.uaword	0x153
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19b
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
	.uaword	0x1cb
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
	.string	"EcuM_WakeupSourceType"
	.byte	0x3
	.byte	0x45
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"sCan_PCConfigType"
	.byte	0x1
	.byte	0x4
	.uahalf	0x9c7
	.uaword	0x282
	.uleb128 0x5
	.string	"Can_PCConfigNeverUsed"
	.byte	0x4
	.uahalf	0x9c9
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"Can_PCConfigType"
	.byte	0x4
	.uahalf	0x9ca
	.uaword	0x247
	.uleb128 0x6
	.string	"Can_ConfigType"
	.byte	0x4
	.uahalf	0x9cc
	.uaword	0x282
	.uleb128 0x6
	.string	"Can_ConfigPtrType"
	.byte	0x5
	.uahalf	0x485
	.uaword	0x2cc
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2d2
	.uleb128 0x8
	.uaword	0x29b
	.uleb128 0x4
	.string	"sCanIf_PCConfigType"
	.byte	0x1
	.byte	0x6
	.uahalf	0x665
	.uaword	0x316
	.uleb128 0x5
	.string	"CanIf_PCConfigNeverUsed"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"CanIf_PCConfigType"
	.byte	0x6
	.uahalf	0x668
	.uaword	0x2d7
	.uleb128 0x6
	.string	"CanIf_ConfigType"
	.byte	0x6
	.uahalf	0x66a
	.uaword	0x316
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"sCanTp_PCConfigType"
	.byte	0x1
	.byte	0x7
	.uahalf	0x205
	.uaword	0x399
	.uleb128 0x5
	.string	"CanTp_PCConfigNeverUsed"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"CanTp_PCConfigType"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x35a
	.uleb128 0x6
	.string	"CanTp_ConfigType"
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x399
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"sFblCw_PCConfigType"
	.byte	0x1
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0x414
	.uleb128 0x5
	.string	"FblCw_PCConfigNeverUsed"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"FblCw_PCConfigType"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x3d5
	.uleb128 0x6
	.string	"FblCw_ConfigType"
	.byte	0x8
	.uahalf	0x3e5
	.uaword	0x414
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.string	"sDet_PCConfigType"
	.byte	0x1
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x48a
	.uleb128 0x5
	.string	"Det_PCConfigNeverUsed"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"Det_PCConfigType"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x44f
	.uleb128 0x6
	.string	"Det_ConfigType"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x48a
	.uleb128 0x4
	.string	"sPduR_PCConfigType"
	.byte	0x1
	.byte	0xa
	.uahalf	0x647
	.uaword	0x4f7
	.uleb128 0x5
	.string	"PduR_PCConfigNeverUsed"
	.byte	0xa
	.uahalf	0x649
	.uaword	0x173
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"PduR_PCConfigType"
	.byte	0xa
	.uahalf	0x64a
	.uaword	0x4ba
	.uleb128 0x6
	.string	"PduR_PBConfigType"
	.byte	0xa
	.uahalf	0x64c
	.uaword	0x4f7
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_Init"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ca
	.uleb128 0xa
	.uaword	.LVL0
	.uaword	0x7d7
	.uleb128 0xa
	.uaword	.LVL1
	.uaword	0x7ef
	.uleb128 0xa
	.uaword	.LVL2
	.uaword	0x807
	.uleb128 0xa
	.uaword	.LVL3
	.uaword	0x81d
	.uleb128 0xa
	.uaword	.LVL4
	.uaword	0x834
	.uleb128 0xa
	.uaword	.LVL5
	.uaword	0x856
	.uleb128 0xa
	.uaword	.LVL6
	.uaword	0x86c
	.uleb128 0xa
	.uaword	.LVL7
	.uaword	0x884
	.uleb128 0xa
	.uaword	.LVL8
	.uaword	0x89a
	.uleb128 0xb
	.uaword	.LVL9
	.uaword	0x8b1
	.uaword	0x5ad
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.uaword	.LVL10
	.uaword	0x8da
	.uaword	0x5c0
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.uaword	.LVL11
	.uaword	0x903
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_StartupTwo"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x677
	.uleb128 0xb
	.uaword	.LVL12
	.uaword	0x911
	.uaword	0x601
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.uaword	.LVL13
	.uaword	0x92b
	.uleb128 0xb
	.uaword	.LVL14
	.uaword	0x947
	.uaword	0x61d
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.uaword	.LVL15
	.uaword	0x96e
	.uleb128 0xb
	.uaword	.LVL16
	.uaword	0x97f
	.uaword	0x639
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.uaword	.LVL17
	.uaword	0x99a
	.uaword	0x64c
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.uaword	.LVL18
	.uaword	0x9c1
	.uleb128 0xa
	.uaword	.LVL19
	.uaword	0x9d0
	.uleb128 0xa
	.uaword	.LVL20
	.uaword	0x9e0
	.uleb128 0xd
	.uaword	.LVL21
	.uaword	0x9f2
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"EcuM_Shutdown"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_BswErrorHook"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6da
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8c
	.uaword	0x18d
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"errorId"
	.byte	0x1
	.byte	0x8c
	.uaword	0x173
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_CheckWakeup"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0x93
	.uaword	0x21e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_GeneratorCompatibilityError"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x764
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9a
	.uaword	0x18d
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"instanceId"
	.byte	0x1
	.byte	0x9a
	.uaword	0x173
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_SetWakeupEvent"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x79a
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa1
	.uaword	0x21e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_ValidationWakeupEvent"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7d7
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa8
	.uaword	0x21e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CanIf_InitMemory"
	.byte	0xb
	.uahalf	0x12a
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"CanTp_InitMemory"
	.byte	0xc
	.uahalf	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Can_InitMemory"
	.byte	0x5
	.uahalf	0x617
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"CryIf_InitMemory"
	.byte	0xd
	.byte	0x8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Crypto_30_LibCv_InitMemory"
	.byte	0xe
	.uahalf	0x174
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Csm_InitMemory"
	.byte	0xf
	.uahalf	0x10a
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"FblCw_InitMemory"
	.byte	0x10
	.uahalf	0x156
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Det_InitMemory"
	.byte	0x11
	.uahalf	0x101
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"PduR_InitMemory"
	.byte	0x12
	.uahalf	0x242
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Det_Init"
	.byte	0x11
	.byte	0xe4
	.byte	0x1
	.byte	0x1
	.uaword	0x8ca
	.uleb128 0x14
	.uaword	0x8ca
	.byte	0
	.uleb128 0x8
	.uaword	0x8cf
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8d5
	.uleb128 0x8
	.uaword	0x4a3
	.uleb128 0x15
	.byte	0x1
	.string	"PduR_PreInit"
	.byte	0x12
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x8f8
	.uleb128 0x14
	.uaword	0x8f8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8fe
	.uleb128 0x8
	.uaword	0x511
	.uleb128 0x12
	.byte	0x1
	.string	"FblMain"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Can_Init"
	.byte	0x5
	.uahalf	0x628
	.byte	0x1
	.byte	0x1
	.uaword	0x92b
	.uleb128 0x14
	.uaword	0x2b2
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Crypto_30_LibCv_Init"
	.byte	0xe
	.uahalf	0x168
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"CanIf_Init"
	.byte	0xb
	.uahalf	0x13c
	.byte	0x1
	.byte	0x1
	.uaword	0x963
	.uleb128 0x14
	.uaword	0x963
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x969
	.uleb128 0x8
	.uaword	0x331
	.uleb128 0x12
	.byte	0x1
	.string	"CryIf_Init"
	.byte	0xd
	.byte	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"PduR_Init"
	.byte	0x12
	.uahalf	0x235
	.byte	0x1
	.byte	0x1
	.uaword	0x99a
	.uleb128 0x14
	.uaword	0x8f8
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"CanTp_Init"
	.byte	0xc
	.uahalf	0x122
	.byte	0x1
	.byte	0x1
	.uaword	0x9b6
	.uleb128 0x14
	.uaword	0x9b6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9bc
	.uleb128 0x8
	.uaword	0x3b4
	.uleb128 0x12
	.byte	0x1
	.string	"Csm_Init"
	.byte	0xf
	.byte	0xfd
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"SecM_Init"
	.byte	0x13
	.byte	0x97
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"WrapNv_Init"
	.byte	0x14
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"FblCw_Init"
	.byte	0x10
	.uahalf	0x168
	.byte	0x1
	.byte	0x1
	.uaword	0xa0e
	.uleb128 0x14
	.uaword	0xa0e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0xa14
	.uleb128 0x8
	.uaword	0x42f
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"wakeupSource"
.LASF0:
	.string	"moduleId"
	.extern	FblCw_Init,STT_FUNC,0
	.extern	WrapNv_Init,STT_FUNC,0
	.extern	SecM_Init,STT_FUNC,0
	.extern	Csm_Init,STT_FUNC,0
	.extern	CanTp_Init,STT_FUNC,0
	.extern	PduR_Init,STT_FUNC,0
	.extern	CryIf_Init,STT_FUNC,0
	.extern	CanIf_Init,STT_FUNC,0
	.extern	Crypto_30_LibCv_Init,STT_FUNC,0
	.extern	Can_Init,STT_FUNC,0
	.extern	FblMain,STT_FUNC,0
	.extern	PduR_PreInit,STT_FUNC,0
	.extern	Det_Init,STT_FUNC,0
	.extern	PduR_InitMemory,STT_FUNC,0
	.extern	Det_InitMemory,STT_FUNC,0
	.extern	FblCw_InitMemory,STT_FUNC,0
	.extern	Csm_InitMemory,STT_FUNC,0
	.extern	Crypto_30_LibCv_InitMemory,STT_FUNC,0
	.extern	CryIf_InitMemory,STT_FUNC,0
	.extern	Can_InitMemory,STT_FUNC,0
	.extern	CanTp_InitMemory,STT_FUNC,0
	.extern	CanIf_InitMemory,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
