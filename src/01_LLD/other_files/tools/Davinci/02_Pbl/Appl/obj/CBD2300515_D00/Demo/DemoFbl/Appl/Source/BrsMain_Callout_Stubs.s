	.file	"BrsMain_Callout_Stubs.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BrsMain_MemoryInit_StageZero_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_MemoryInit_StageZero_Hook
	.type	BrsMain_MemoryInit_StageZero_Hook, @function
BrsMain_MemoryInit_StageZero_Hook:
.LFB14:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain_Callout_Stubs.c"
	.loc 1 105 0
.LVL0:
	ret
.LFE14:
	.size	BrsMain_MemoryInit_StageZero_Hook, .-BrsMain_MemoryInit_StageZero_Hook
.section .text.BrsMain_MemoryInit_StageHardReset_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_MemoryInit_StageHardReset_Hook
	.type	BrsMain_MemoryInit_StageHardReset_Hook, @function
BrsMain_MemoryInit_StageHardReset_Hook:
.LFB15:
	.loc 1 119 0
.LVL1:
	.loc 1 123 0
	jnz	%d4, .L2
	.loc 1 131 0
	call	BrsHwWatchdogInitPowerOn
.LVL2:
	.loc 1 137 0
	call	BrsHwPllInitPowerOn
.LVL3:
.L2:
	ret
.LFE15:
	.size	BrsMain_MemoryInit_StageHardReset_Hook, .-BrsMain_MemoryInit_StageHardReset_Hook
.section .text.BrsMain_MemoryInit_StageOne_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_MemoryInit_StageOne_Hook
	.type	BrsMain_MemoryInit_StageOne_Hook, @function
BrsMain_MemoryInit_StageOne_Hook:
.LFB16:
	.loc 1 155 0
.LVL4:
	ret
.LFE16:
	.size	BrsMain_MemoryInit_StageOne_Hook, .-BrsMain_MemoryInit_StageOne_Hook
.section .text.BrsMain_MemoryInit_StageTwo_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_MemoryInit_StageTwo_Hook
	.type	BrsMain_MemoryInit_StageTwo_Hook, @function
BrsMain_MemoryInit_StageTwo_Hook:
.LFB17:
	.loc 1 169 0
.LVL5:
	ret
.LFE17:
	.size	BrsMain_MemoryInit_StageTwo_Hook, .-BrsMain_MemoryInit_StageTwo_Hook
.section .text.BrsMain_MemoryInit_StageThree_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_MemoryInit_StageThree_Hook
	.type	BrsMain_MemoryInit_StageThree_Hook, @function
BrsMain_MemoryInit_StageThree_Hook:
.LFB18:
	.loc 1 183 0
.LVL6:
	ret
.LFE18:
	.size	BrsMain_MemoryInit_StageThree_Hook, .-BrsMain_MemoryInit_StageThree_Hook
.section .text.BrsMain_PreMainHook,"ax",@progbits
	.align 1
	.global	BrsMain_PreMainHook
	.type	BrsMain_PreMainHook, @function
BrsMain_PreMainHook:
.LFB19:
	.loc 1 197 0
.LVL7:
	ret
.LFE19:
	.size	BrsMain_PreMainHook, .-BrsMain_PreMainHook
.section .text.BrsMain_SoftwareResetECU_Hook,"ax",@progbits
	.align 1
	.global	BrsMain_SoftwareResetECU_Hook
	.type	BrsMain_SoftwareResetECU_Hook, @function
BrsMain_SoftwareResetECU_Hook:
.LFB20:
	.loc 1 212 0
	ret
.LFE20:
	.size	BrsMain_SoftwareResetECU_Hook, .-BrsMain_SoftwareResetECU_Hook
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
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "Include/BrsHw.h"
	.file 3 "../../../BSW/_Common/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x41c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoFbl/Appl/Source/BrsMain_Callout_Stubs.c"
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
	.byte	0x3
	.byte	0x6c
	.uaword	0x1c1
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
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageZero_Hook"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x258
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x1b3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageHardReset_Hook"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b5
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x1b3
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LVL2
	.uaword	0x3e4
	.uleb128 0x7
	.uaword	.LVL3
	.uaword	0x404
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageOne_Hook"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f8
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9a
	.uaword	0x1b3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageTwo_Hook"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x33b
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa8
	.uaword	0x1b3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"BrsMain_MemoryInit_StageThree_Hook"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x380
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb6
	.uaword	0x1b3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"BrsMain_PreMainHook"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b6
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc4
	.uaword	0x1b3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"BrsMain_SoftwareResetECU_Hook"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"BrsHwWatchdogInitPowerOn"
	.byte	0x2
	.uahalf	0x1d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"BrsHwPllInitPowerOn"
	.byte	0x2
	.uahalf	0x1e5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"coreId"
	.extern	BrsHwPllInitPowerOn,STT_FUNC,0
	.extern	BrsHwWatchdogInitPowerOn,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
