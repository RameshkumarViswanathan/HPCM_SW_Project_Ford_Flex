	.file	"Fbl_Fbt.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	kNrOfMemDrv
.section .rodata,"a",@progbits
	.type	kNrOfMemDrv, @object
	.size	kNrOfMemDrv, 1
kNrOfMemDrv:
	.byte	2
	.global	memDrvLst
	.align 2
	.type	memDrvLst, @object
	.size	memDrvLst, 56
memDrvLst:
	.word	FlashDriver_InitSync
	.word	FlashDriver_DeinitSync
	.word	FlashDriver_REraseSync
	.word	FlashDriver_RWriteSync
	.word	FlashDriver_RReadSync
	.short	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	RamDriver_InitSync
	.word	RamDriver_DeinitSync
	.word	RamDriver_REraseSync
	.word	RamDriver_RWriteSync
	.word	RamDriver_RReadSync
	.short	1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.global	kNrOfFlashBlock
	.type	kNrOfFlashBlock, @object
	.size	kNrOfFlashBlock, 1
kNrOfFlashBlock:
	.byte	11
	.global	FlashBlock
	.align 2
	.type	FlashBlock, @object
	.size	FlashBlock, 132
FlashBlock:
	.word	1879048192
	.word	1879051263
	.byte	1
	.zero	3
	.word	-1610612736
	.word	-1610579969
	.byte	0
	.zero	3
	.word	-1610579968
	.word	-1610547201
	.byte	0
	.zero	3
	.word	-1610547200
	.word	-1610514433
	.byte	0
	.zero	3
	.word	-1610514432
	.word	-1610481665
	.byte	0
	.zero	3
	.word	-1610481664
	.word	-1610350593
	.byte	0
	.zero	3
	.word	-1610350592
	.word	-1610219521
	.byte	0
	.zero	3
	.word	-1610219520
	.word	-1610088449
	.byte	0
	.zero	3
	.word	-1610088448
	.word	-1609564161
	.byte	0
	.zero	3
	.word	-1609564160
	.word	-1609039873
	.byte	0
	.zero	3
	.word	-1609039872
	.word	-1608515585
	.byte	0
	.zero	3
.section .text,"ax",@progbits
.Letext0:
	.file 1 "../../../BSW/_Common/Platform_Types.h"
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../BSW/Fbl/fbl_def.h"
	.file 4 "../../../BSW/Fbl/iotypes.h"
	.file 5 "GenData/Fbl_Fbt.h"
	.file 6 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/GenData/Fbl_Fbt.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x56e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/GenData/Fbl_Fbt.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x1
	.byte	0x65
	.uaword	0x158
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
	.byte	0x2
	.uahalf	0x233
	.uaword	0x158
	.uleb128 0x4
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x185
	.uleb128 0x4
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x1a7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"FBL_ADDR_TYPE"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x219
	.uleb128 0x4
	.string	"tFblAddress"
	.byte	0x3
	.uahalf	0x165
	.uaword	0x239
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fa
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"IO_SizeType"
	.byte	0x4
	.byte	0x42
	.uaword	0x219
	.uleb128 0x2
	.string	"IO_PositionType"
	.byte	0x4
	.byte	0x43
	.uaword	0x219
	.uleb128 0x2
	.string	"IO_ErrorType"
	.byte	0x4
	.byte	0x49
	.uaword	0x209
	.uleb128 0x2
	.string	"IO_MemPtrType"
	.byte	0x4
	.byte	0x4a
	.uaword	0x263
	.uleb128 0x6
	.string	"tFlashBlockTag"
	.byte	0xc
	.byte	0x5
	.byte	0x40
	.uaword	0x309
	.uleb128 0x7
	.string	"begin"
	.byte	0x5
	.byte	0x41
	.uaword	0x24f
	.byte	0
	.uleb128 0x7
	.string	"end"
	.byte	0x5
	.byte	0x42
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x7
	.string	"device"
	.byte	0x5
	.byte	0x43
	.uaword	0x1fa
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"tFlashBlock"
	.byte	0x5
	.byte	0x44
	.uaword	0x2c8
	.uleb128 0x2
	.string	"tMemDrvFctInit"
	.byte	0x5
	.byte	0x46
	.uaword	0x332
	.uleb128 0x5
	.byte	0x4
	.uaword	0x338
	.uleb128 0x8
	.byte	0x1
	.uaword	0x29f
	.uaword	0x348
	.uleb128 0x9
	.uaword	0x348
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.string	"tMemDrvFctDeinit"
	.byte	0x5
	.byte	0x47
	.uaword	0x332
	.uleb128 0x2
	.string	"tMemDrvFctErase"
	.byte	0x5
	.byte	0x48
	.uaword	0x379
	.uleb128 0x5
	.byte	0x4
	.uaword	0x37f
	.uleb128 0x8
	.byte	0x1
	.uaword	0x29f
	.uaword	0x394
	.uleb128 0x9
	.uaword	0x275
	.uleb128 0x9
	.uaword	0x288
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctWrite"
	.byte	0x5
	.byte	0x49
	.uaword	0x3ab
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b1
	.uleb128 0x8
	.byte	0x1
	.uaword	0x29f
	.uaword	0x3cb
	.uleb128 0x9
	.uaword	0x2b3
	.uleb128 0x9
	.uaword	0x275
	.uleb128 0x9
	.uaword	0x288
	.byte	0
	.uleb128 0x2
	.string	"tMemDrvFctRead"
	.byte	0x5
	.byte	0x4a
	.uaword	0x3ab
	.uleb128 0x6
	.string	"tMemDrvTag"
	.byte	0x1c
	.byte	0x5
	.byte	0x4c
	.uaword	0x4bb
	.uleb128 0x7
	.string	"init"
	.byte	0x5
	.byte	0x4d
	.uaword	0x31c
	.byte	0
	.uleb128 0x7
	.string	"deinit"
	.byte	0x5
	.byte	0x4e
	.uaword	0x34a
	.byte	0x4
	.uleb128 0x7
	.string	"erase"
	.byte	0x5
	.byte	0x4f
	.uaword	0x362
	.byte	0x8
	.uleb128 0x7
	.string	"write"
	.byte	0x5
	.byte	0x50
	.uaword	0x394
	.byte	0xc
	.uleb128 0x7
	.string	"read"
	.byte	0x5
	.byte	0x51
	.uaword	0x3cb
	.byte	0x10
	.uleb128 0x7
	.string	"segmentSize"
	.byte	0x5
	.byte	0x52
	.uaword	0x209
	.byte	0x14
	.uleb128 0x7
	.string	"erasedValue"
	.byte	0x5
	.byte	0x53
	.uaword	0x1fa
	.byte	0x16
	.uleb128 0x7
	.string	"initHook"
	.byte	0x5
	.byte	0x54
	.uaword	0x149
	.byte	0x17
	.uleb128 0x7
	.string	"deinitHook"
	.byte	0x5
	.byte	0x55
	.uaword	0x149
	.byte	0x18
	.uleb128 0x7
	.string	"eraseHook"
	.byte	0x5
	.byte	0x56
	.uaword	0x149
	.byte	0x19
	.uleb128 0x7
	.string	"writeHook"
	.byte	0x5
	.byte	0x57
	.uaword	0x149
	.byte	0x1a
	.uleb128 0x7
	.string	"readHook"
	.byte	0x5
	.byte	0x58
	.uaword	0x149
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.string	"tMemDrv"
	.byte	0x5
	.byte	0x59
	.uaword	0x3e1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xb
	.uaword	0x1fa
	.uleb128 0xc
	.string	"kNrOfFlashBlock"
	.byte	0x6
	.byte	0x6b
	.uaword	0x4d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kNrOfFlashBlock
	.uleb128 0xd
	.uaword	0x309
	.uaword	0x50c
	.uleb128 0xe
	.uaword	0x269
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"FlashBlock"
	.byte	0x6
	.byte	0x31
	.uaword	0x525
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FlashBlock
	.uleb128 0xb
	.uaword	0x4fc
	.uleb128 0xd
	.uaword	0x4bb
	.uaword	0x53a
	.uleb128 0xe
	.uaword	0x269
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"memDrvLst"
	.byte	0x6
	.byte	0x6d
	.uaword	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	memDrvLst
	.uleb128 0xb
	.uaword	0x52a
	.uleb128 0xc
	.string	"kNrOfMemDrv"
	.byte	0x6
	.byte	0x8c
	.uaword	0x4d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kNrOfMemDrv
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x14
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	RamDriver_RReadSync,STT_FUNC,0
	.extern	RamDriver_RWriteSync,STT_FUNC,0
	.extern	RamDriver_REraseSync,STT_FUNC,0
	.extern	RamDriver_DeinitSync,STT_FUNC,0
	.extern	RamDriver_InitSync,STT_FUNC,0
	.extern	FlashDriver_RReadSync,STT_FUNC,0
	.extern	FlashDriver_RWriteSync,STT_FUNC,0
	.extern	FlashDriver_REraseSync,STT_FUNC,0
	.extern	FlashDriver_DeinitSync,STT_FUNC,0
	.extern	FlashDriver_InitSync,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"