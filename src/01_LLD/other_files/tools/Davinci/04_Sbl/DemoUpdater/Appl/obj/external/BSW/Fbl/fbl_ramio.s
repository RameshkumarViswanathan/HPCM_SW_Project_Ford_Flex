	.file	"fbl_ramio.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RamDriver_InitSync,"ax",@progbits
	.align 1
	.global	RamDriver_InitSync
	.type	RamDriver_InitSync, @function
RamDriver_InitSync:
.LFB1:
	.file 1 "../../../../external/BSW/Fbl/fbl_ramio.c"
	.loc 1 189 0
.LVL0:
	.loc 1 237 0
	mov	%d2, 0
	ret
.LFE1:
	.size	RamDriver_InitSync, .-RamDriver_InitSync
.section .text.RamDriver_DeinitSync,"ax",@progbits
	.align 1
	.global	RamDriver_DeinitSync
	.type	RamDriver_DeinitSync, @function
RamDriver_DeinitSync:
.LFB2:
	.loc 1 247 0
.LVL1:
	.loc 1 254 0
	mov	%d2, 0
	ret
.LFE2:
	.size	RamDriver_DeinitSync, .-RamDriver_DeinitSync
.section .text.RamDriver_RWriteSync,"ax",@progbits
	.align 1
	.global	RamDriver_RWriteSync
	.type	RamDriver_RWriteSync, @function
RamDriver_RWriteSync:
.LFB3:
	.loc 1 267 0
.LVL2:
.LBB6:
.LBB7:
	.loc 1 165 0
	mov	%d15, 3073
	mov	%d2, 1
	jge.u	%d4, %d15, .L10
	.loc 1 163 0
	movh	%d9, hi:flashCode
	addi	%d15, %d9, lo:flashCode
	sub	%d9, %d5, %d15
	.loc 1 166 0
	mov	%d15, 3072
	sub	%d15, %d4
	jge.u	%d15, %d9, .L5
	ret
.LVL3:
.L11:
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d9, 0
.LVL4:
.LBE7:
.LBE6:
	.loc 1 280 0
	and	%d2, %d15, 63
	jnz	%d2, .L6
	.loc 1 282 0
	call	FblLookForWatchdog
.LVL5:
.L6:
	.loc 1 286 0 discriminator 2
	mov.a	%a3, %d10
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	addsc.a	%a15, %a15, %d11, 0
.LVL6:
	st.b	[%a15]0, %d2
.LVL7:
	.loc 1 276 0 discriminator 2
	add	%d15, 1
.LVL8:
	jne	%d15, %d8, .L11
.LBB10:
.LBB8:
	.loc 1 169 0
	mov	%d2, 0
.LBE8:
.LBE10:
	ret
.LVL9:
.L5:
	mov	%d8, %d4
	mov.d	%d10, %a4
.LVL10:
	.loc 1 276 0
	mov	%d15, 0
	.loc 1 286 0
	movh	%d11, hi:flashCode
	addi	%d11, %d11, lo:flashCode
	.loc 1 276 0
	jnz	%d4, .L11
.LVL11:
.LBB11:
.LBB9:
	.loc 1 169 0
	mov	%d2, 0
.LVL12:
.L10:
.LBE9:
.LBE11:
	.loc 1 292 0
	ret
.LFE3:
	.size	RamDriver_RWriteSync, .-RamDriver_RWriteSync
.section .text.RamDriver_REraseSync,"ax",@progbits
	.align 1
	.global	RamDriver_REraseSync
	.type	RamDriver_REraseSync, @function
RamDriver_REraseSync:
.LFB4:
	.loc 1 304 0
.LVL13:
.LBB14:
.LBB15:
	.loc 1 165 0
	mov	%d15, 3073
	mov	%d2, 1
	jge.u	%d4, %d15, .L20
	.loc 1 163 0
	movh	%d10, hi:flashCode
	addi	%d15, %d10, lo:flashCode
	sub	%d10, %d5, %d15
	.loc 1 166 0
	mov	%d15, 3072
	sub	%d15, %d4
	jge.u	%d15, %d10, .L15
	ret
.LVL14:
.L21:
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d10, 0
.LVL15:
.LBE15:
.LBE14:
	.loc 1 318 0
	and	%d2, %d15, 63
	jnz	%d2, .L16
	.loc 1 320 0
	call	FblLookForWatchdog
.LVL16:
.L16:
	.loc 1 324 0 discriminator 2
	addsc.a	%a15, %a15, %d11, 0
.LVL17:
	st.b	[%a15]0, %d9
.LVL18:
	.loc 1 314 0 discriminator 2
	add	%d15, 1
.LVL19:
	jne	%d15, %d8, .L21
.LBB18:
.LBB16:
	.loc 1 169 0
	mov	%d2, 0
.LBE16:
.LBE18:
	ret
.LVL20:
.L15:
	mov	%d8, %d4
.LVL21:
	.loc 1 314 0
	mov	%d15, 0
	.loc 1 324 0
	movh	%d11, hi:flashCode
	addi	%d11, %d11, lo:flashCode
	mov	%d9, -1
	.loc 1 314 0
	jnz	%d4, .L21
.LBB19:
.LBB17:
	.loc 1 169 0
	mov	%d2, 0
.LVL22:
.L20:
.LBE17:
.LBE19:
	.loc 1 338 0
	ret
.LFE4:
	.size	RamDriver_REraseSync, .-RamDriver_REraseSync
.section .text.RamDriver_RReadSync,"ax",@progbits
	.align 1
	.global	RamDriver_RReadSync
	.type	RamDriver_RReadSync, @function
RamDriver_RReadSync:
.LFB5:
	.loc 1 351 0
.LVL23:
.LBB22:
.LBB23:
	.loc 1 165 0
	mov	%d15, 3073
	mov	%d2, 1
	jge.u	%d4, %d15, .L30
	.loc 1 163 0
	movh	%d9, hi:flashCode
	addi	%d15, %d9, lo:flashCode
	sub	%d9, %d5, %d15
	.loc 1 166 0
	mov	%d15, 3072
	sub	%d15, %d4
	jge.u	%d15, %d9, .L25
	ret
.LVL24:
.L31:
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d9, 0
.LVL25:
.LBE23:
.LBE22:
	.loc 1 364 0
	and	%d2, %d15, 63
	jnz	%d2, .L26
	.loc 1 366 0
	call	FblLookForWatchdog
.LVL26:
.L26:
	.loc 1 370 0 discriminator 2
	addsc.a	%a15, %a15, %d11, 0
.LVL27:
	ld.bu	%d2, [%a15]0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d15, 0
	st.b	[%a15]0, %d2
.LVL28:
	.loc 1 360 0 discriminator 2
	add	%d15, 1
.LVL29:
	jne	%d15, %d8, .L31
.LBB26:
.LBB24:
	.loc 1 169 0
	mov	%d2, 0
.LBE24:
.LBE26:
	ret
.LVL30:
.L25:
	mov	%d8, %d4
	mov.d	%d10, %a4
.LVL31:
	.loc 1 360 0
	mov	%d15, 0
	.loc 1 370 0
	movh	%d11, hi:flashCode
	addi	%d11, %d11, lo:flashCode
	.loc 1 360 0
	jnz	%d4, .L31
.LVL32:
.LBB27:
.LBB25:
	.loc 1 169 0
	mov	%d2, 0
.LVL33:
.L30:
.LBE25:
.LBE27:
	.loc 1 376 0
	ret
.LFE5:
	.size	RamDriver_RReadSync, .-RamDriver_RReadSync
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/v_def.h"
	.file 3 "../../../../external/BSW/Fbl/iotypes.h"
	.file 4 "../../../BSW/Fbl/fbl_flio.h"
	.file 5 "../../../BSW/Fbl/fbl_wd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6d3
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../external/BSW/Fbl/fbl_ramio.c"
	.string	"D:\\\\usr\\\\usage\\\\Delivery\\\\CBD23x\\\\CBD2300515\\\\D00\\\\external\\\\Demo\\\\DemoUpdater\\\\Appl"
	.uaword	.Ldebug_ranges0+0x60
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
	.string	"vuint8"
	.byte	0x2
	.uahalf	0x233
	.uaword	0x17b
	.uleb128 0x3
	.string	"vuint16"
	.byte	0x2
	.uahalf	0x23e
	.uaword	0x1a8
	.uleb128 0x3
	.string	"vuint32"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.string	"IO_SizeType"
	.byte	0x3
	.byte	0x42
	.uaword	0x23c
	.uleb128 0x5
	.string	"IO_PositionType"
	.byte	0x3
	.byte	0x43
	.uaword	0x23c
	.uleb128 0x5
	.string	"IO_ErrorType"
	.byte	0x3
	.byte	0x49
	.uaword	0x22c
	.uleb128 0x5
	.string	"IO_MemPtrType"
	.byte	0x3
	.byte	0x4a
	.uaword	0x25c
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.string	"RamDriver_InitSync"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x2fb
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0xbc
	.uaword	0x2c1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbe
	.uaword	0x298
	.byte	0
	.uleb128 0xa
	.uaword	0x2c3
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x31d
	.uleb128 0xb
	.uaword	0x2e4
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.uaword	0x2ef
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"RamDriver_DeinitSync"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x363
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf6
	.uaword	0x2c1
	.byte	0x1
	.byte	0x64
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf8
	.uaword	0x298
	.byte	0
	.uleb128 0xf
	.string	"RamDriver_GetOffset"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x3c3
	.uleb128 0x10
	.string	"length"
	.byte	0x1
	.byte	0x94
	.uaword	0x26e
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x94
	.uaword	0x281
	.uleb128 0x10
	.string	"pOffset"
	.byte	0x1
	.byte	0x95
	.uaword	0x3c3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x97
	.uaword	0x298
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0x98
	.uaword	0x26e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26e
	.uleb128 0x11
	.byte	0x1
	.string	"RamDriver_RWriteSync"
	.byte	0x1
	.uahalf	0x10a
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c1
	.uleb128 0x12
	.string	"writeBuffer"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x2ac
	.uaword	.LLST0
	.uleb128 0x12
	.string	"writeLength"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x26e
	.uaword	.LLST1
	.uleb128 0x12
	.string	"writeAddress"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x281
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x298
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x26e
	.uaword	.LLST3
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x26e
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x363
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x110
	.uaword	0x4b7
	.uleb128 0xb
	.uaword	0x39d
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1102
	.sleb128 0
	.uleb128 0x17
	.uaword	0x392
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	0x384
	.uaword	.LLST1
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x19
	.uaword	0x3ac
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	0x3b7
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL5
	.uaword	0x6b9
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"RamDriver_REraseSync"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a1
	.uleb128 0x12
	.string	"eraseLength"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x26e
	.uaword	.LLST9
	.uleb128 0x12
	.string	"eraseAddress"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x281
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x132
	.uaword	0x298
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x133
	.uaword	0x26e
	.uaword	.LLST11
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x26e
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	0x363
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x136
	.uaword	0x597
	.uleb128 0xb
	.uaword	0x39d
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1326
	.sleb128 0
	.uleb128 0x17
	.uaword	0x392
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	0x384
	.uaword	.LLST9
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x19
	.uaword	0x3ac
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	0x3b7
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL16
	.uaword	0x6b9
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"RamDriver_RReadSync"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x695
	.uleb128 0x12
	.string	"readBuffer"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x2ac
	.uaword	.LLST17
	.uleb128 0x12
	.string	"readLength"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x26e
	.uaword	.LLST18
	.uleb128 0x12
	.string	"readAddress"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x281
	.uaword	.LLST19
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x160
	.uaword	0x298
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x161
	.uaword	0x26e
	.uaword	.LLST20
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x26e
	.uaword	.LLST21
	.uleb128 0x16
	.uaword	0x363
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x164
	.uaword	0x68b
	.uleb128 0xb
	.uaword	0x39d
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1570
	.sleb128 0
	.uleb128 0x17
	.uaword	0x392
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	0x384
	.uaword	.LLST18
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x19
	.uaword	0x3ac
	.uaword	.LLST24
	.uleb128 0x19
	.uaword	0x3b7
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL26
	.uaword	0x6b9
	.byte	0
	.uleb128 0x1b
	.uaword	0x21d
	.uaword	0x6a6
	.uleb128 0x1c
	.uaword	0x262
	.uahalf	0xbff
	.byte	0
	.uleb128 0x1d
	.string	"flashCode"
	.byte	0x4
	.byte	0xea
	.uaword	0x695
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"FblLookForWatchdog"
	.byte	0x5
	.byte	0x6c
	.byte	0x1
	.uaword	0x21d
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL12
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL9
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL20
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL33
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL30
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"address"
.LASF2:
	.string	"offset"
.LASF0:
	.string	"result"
	.extern	FblLookForWatchdog,STT_FUNC,0
	.extern	flashCode,STT_OBJECT,3072
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
