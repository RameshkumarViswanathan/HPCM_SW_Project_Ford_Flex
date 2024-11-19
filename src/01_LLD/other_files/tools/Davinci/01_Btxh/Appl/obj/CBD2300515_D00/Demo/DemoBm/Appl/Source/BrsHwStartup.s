	.file	"BrsHwStartup.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	  .section .brsStartup, "ax"
	  .balign 32
	  .global brsStartupEntry
	brsStartupEntry:
	  mfcr     %d8, lo:65052
	  movh.a   %a14, hi:BrsMain_CoreConfig
	  lea      %a14,[%a14]lo:BrsMain_CoreConfig
	brsStartupEntryloop:
	  ld.w	 %d9,[%a14]8
	  ld.w	 %d10,[%a14]4
	  jne      %d8, %d10, brsGetNextCoreConfig
	  mov.a    %a10, %d9
	  j        brsStartupEntry_C
	brsGetNextCoreConfig:
	  movh.a   %a12,hi:Brs_SizeOfbrsMain_CoreType
	  ld.a     %a12,[%a12]lo:Brs_SizeOfbrsMain_CoreType
	  add.a    %a14, %a12
	  j        brsStartupEntryloop
	  .previous
#NO_APP
.section .text.brsStartupEntry_C,"ax",@progbits
	.align 1
	.global	brsStartupEntry_C
	.type	brsStartupEntry_C, @function
brsStartupEntry_C:
.LFB18:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
	.loc 1 103 0
.LVL0:
.LBB30:
.LBB31:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d3, LO:65052
	# 0 "" 2
.LVL1:
#NO_APP
.LBE31:
.LBE30:
	.loc 1 165 0
	movh.a	%a15, hi:BrsMain_CoreConfig_Size
	ld.w	%d2, [%a15] lo:BrsMain_CoreConfig_Size
	jz	%d2, .L14
	mov	%d15, 0
	mov	%d8, 0
	.loc 1 167 0
	movh	%d5, hi:BrsMain_CoreConfig
	addi	%d5, %d5, lo:BrsMain_CoreConfig
	.loc 1 170 0
	addi	%d6, %d2, 1
.LVL2:
.L4:
	.loc 1 167 0
	madd	%d4, %d5, %d15, 28
	mov.a	%a15, %d4
	ld.w	%d4, [%a15] 4
	jne	%d4, %d3, .L3
.LVL3:
	.loc 1 170 0
	mov	%d8, %d15
	mov	%d15, %d6
.LVL4:
.L3:
	.loc 1 165 0 discriminator 2
	add	%d15, 1
.LVL5:
	jlt.u	%d15, %d2, .L4
	.loc 1 175 0
	jne	%d15, %d2, .L5
	j	.L2
.LVL6:
.L14:
	.loc 1 163 0
	mov	%d8, 0
.LVL7:
.L2:
	.loc 1 176 0
	call	BrsMainExceptionStartup
.LVL8:
.L5:
.LBB32:
.LBB33:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL9:
#NO_APP
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 137 0
	mov	%d15, 2944
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65028, %d15
	# 0 "" 2
#NO_APP
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL10:
#NO_APP
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65024
	# 0 "" 2
.LVL11:
#NO_APP
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL12:
#NO_APP
.LBE41:
.LBE40:
	.loc 1 187 0
	insert	%d15, %d15, 0, 0, 20
.LVL13:
.LBB42:
.LBB43:
	.loc 2 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65024, %d15
	# 0 "" 2
#NO_APP
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL14:
#NO_APP
.LBE45:
.LBE44:
	.loc 1 200 0
	movh.a	%a15, hi:BrsMain_CoreConfig
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BrsMain_CoreConfig
.LVL15:
	madd	%d4, %d15, %d8, 28
	mov.a	%a15, %d4
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
.LVL16:
	.loc 1 201 0
	addi	%d4, %d15, -4096
	sh	%d4, -6
.LVL17:
	.loc 1 203 0
	mov	%d3, 512
	jge.u	%d4, %d3, .L6
.L16:
	.loc 1 215 0 discriminator 1
	j	.L16
.L6:
	.loc 1 200 0
	sub	%d2, %d15
.LVL18:
	mov	%d3, %d2
	.loc 1 218 0
	jz	%d2, .L8
.LVL19:
	.loc 1 221 0 discriminator 1
	mov	%d15, 0
.LVL20:
	jz	%d4, .L10
	j	.L9
.LVL21:
.L12:
	.loc 1 223 0
	mov.a	%a2, %d3
	st.w	[%a2]0, %d15
.LVL22:
	.loc 1 226 0
	sh	%d15, %d3, -28
.LVL23:
	.loc 1 228 0
	extr.u	%d4, %d3, 6, 16
	insert	%d15, %d4, %d15, 16, 32-16
.LVL24:
	.loc 1 229 0
	ne	%d4, %d2, 20
	jnz	%d4, .L13
.LBB46:
.LBB47:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL25:
#NO_APP
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	.loc 2 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65084, %d15
	# 0 "" 2
#NO_APP
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL26:
#NO_APP
.L13:
.LBE51:
.LBE50:
	.loc 1 233 0 discriminator 2
	addi	%d3, %d3, 64
.LVL27:
	.loc 1 221 0 discriminator 2
	add	%d2, 1
.LVL28:
	loop	%a15, .L12
.LVL29:
.L10:
.LBB52:
.LBB53:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL30:
#NO_APP
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 2 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65080, %d15
	# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL31:
#NO_APP
.L8:
.LBE57:
.LBE56:
	.loc 1 239 0
	movh.a	%a4, hi:_Brs_ExcVect_START
	lea	%a4, [%a4] lo:_Brs_ExcVect_START
	mov.a	%a5, 0
	add.a	%a5, -1
	call	BrsHw_ExceptionTable_Init
.LVL32:
	.loc 1 246 0
	call	Brs_PreMainStartup
.LVL33:
	.loc 1 254 0
	call	BrsMainExceptionStartup
.LVL34:
	ret
.LVL35:
.L9:
	.loc 1 223 0
	mov	%d15, 0
	mov.a	%a15, %d2
.LVL36:
	st.w	[%a15]0, %d15
.LVL37:
	.loc 1 226 0
	sh	%d5, %d2, -28
	.loc 1 228 0
	extr.u	%d15, %d2, 6, 16
	insert	%d15, %d15, %d5, 16, 32-16
.LVL38:
	mov	%d2, 0
	mov.a	%a15, %d4
.LVL39:
	add.a	%a15, -1
	j	.L13
.LFE18:
	.size	brsStartupEntry_C, .-brsStartupEntry_C
	.global	Brs_SizeOfbrsMain_CoreType
.section .rodata,"a",@progbits
	.align 2
	.type	Brs_SizeOfbrsMain_CoreType, @object
	.size	Brs_SizeOfbrsMain_CoreType, 4
Brs_SizeOfbrsMain_CoreType:
	.word	28
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../../../BSW/_Common/Platform_Types.h"
	.file 4 "Include/BrsMain_Types.h"
	.file 5 "Include/BrsHw.h"
	.file 6 "GenData/vBrs_Lcfg.h"
	.file 7 "Include/BrsMain.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x84d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHwStartup.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
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
	.uaword	0x1b6
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
	.byte	0x2
	.byte	0x4
	.byte	0x2e
	.uaword	0x223
	.uleb128 0x5
	.string	"NON_ASR"
	.sleb128 0
	.uleb128 0x5
	.string	"ASR"
	.sleb128 4096
	.byte	0
	.uleb128 0x3
	.string	"brsCoreAsrType"
	.byte	0x4
	.byte	0x31
	.uaword	0x209
	.uleb128 0x3
	.string	"Brs_AddressOfConstType"
	.byte	0x4
	.byte	0x34
	.uaword	0x257
	.uleb128 0x6
	.byte	0x4
	.uaword	0x25d
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1c
	.byte	0x4
	.byte	0x39
	.uaword	0x304
	.uleb128 0x9
	.string	"LogicalCoreId"
	.byte	0x4
	.byte	0x3c
	.uaword	0x1a8
	.byte	0
	.uleb128 0x9
	.string	"PhysicalCoreId"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1a8
	.byte	0x4
	.uleb128 0x9
	.string	"StartupStackEndLabel"
	.byte	0x4
	.byte	0x42
	.uaword	0x239
	.byte	0x8
	.uleb128 0x9
	.string	"StartupStackSize"
	.byte	0x4
	.byte	0x45
	.uaword	0x1a8
	.byte	0xc
	.uleb128 0x9
	.string	"CoreIsAsr"
	.byte	0x4
	.byte	0x48
	.uaword	0x223
	.byte	0x10
	.uleb128 0x9
	.string	"ExcVecLabel"
	.byte	0x4
	.byte	0x4b
	.uaword	0x239
	.byte	0x14
	.uleb128 0x9
	.string	"IntVecLabel"
	.byte	0x4
	.byte	0x4e
	.uaword	0x239
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"brsMain_CoreType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x25e
	.uleb128 0xa
	.string	"Brs_WdtRegTypes_Tag"
	.byte	0x8
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x36a
	.uleb128 0xb
	.string	"WdtCon0Address"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x1a8
	.byte	0
	.uleb128 0xb
	.string	"WdtCon1Address"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x1a8
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"Brs_WdtRegTypes"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x31c
	.uleb128 0x3
	.string	"BRS_CSA_Element"
	.byte	0x1
	.byte	0x4e
	.uaword	0x399
	.uleb128 0xd
	.uaword	0x1a8
	.uaword	0x3a9
	.uleb128 0xe
	.uaword	0x3a9
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xf
	.string	"_mfcr"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.uaword	0x3e1
	.byte	0x3
	.uaword	0x3e1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x2
	.byte	0x6f
	.uaword	0x3f1
	.uleb128 0x11
	.string	"__res"
	.byte	0x2
	.byte	0x71
	.uaword	0x3e1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x12
	.uaword	0x3e1
	.uleb128 0x13
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"_mtcr"
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x42a
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x2
	.byte	0x87
	.uaword	0x3f1
	.uleb128 0x15
	.string	"__val"
	.byte	0x2
	.byte	0x87
	.uaword	0x3f1
	.byte	0
	.uleb128 0x13
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.byte	0x1
	.string	"brsStartupEntry_C"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e5
	.uleb128 0x17
	.string	"CurrentCoreId"
	.byte	0x1
	.byte	0x68
	.uaword	0x1a8
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"AuxVariable"
	.byte	0x1
	.byte	0x69
	.uaword	0x1a8
	.uaword	.LLST0
	.uleb128 0x18
	.string	"CurrentCoreConfig"
	.byte	0x1
	.byte	0xa3
	.uaword	0x1a8
	.uaword	.LLST1
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.uaword	0x1a8
	.uaword	.LLST2
	.uleb128 0x18
	.string	"CSA"
	.byte	0x1
	.byte	0xc2
	.uaword	0x6e5
	.uaword	.LLST3
	.uleb128 0x18
	.string	"NumberOfCSA"
	.byte	0x1
	.byte	0xc3
	.uaword	0x1a8
	.uaword	.LLST4
	.uleb128 0x18
	.string	"pcxi_val"
	.byte	0x1
	.byte	0xc4
	.uaword	0x1a8
	.uaword	.LLST5
	.uleb128 0x19
	.string	"CSAReserve"
	.byte	0x1
	.byte	0xc5
	.uaword	0x1a8
	.byte	0x14
	.uleb128 0x18
	.string	"seg_nr"
	.byte	0x1
	.byte	0xc6
	.uaword	0x1a8
	.uaword	.LLST6
	.uleb128 0x18
	.string	"seg_idx"
	.byte	0x1
	.byte	0xc6
	.uaword	0x1a8
	.uaword	.LLST7
	.uleb128 0x18
	.string	"CSAAddress"
	.byte	0x1
	.byte	0xc8
	.uaword	0x6e5
	.uaword	.LLST8
	.uleb128 0x18
	.string	"CSA_Numbers"
	.byte	0x1
	.byte	0xc9
	.uaword	0x1a8
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	0x3b5
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x68
	.uaword	0x57d
	.uleb128 0x1b
	.uaword	0x3c8
	.uahalf	0xfe1c
	.uleb128 0x1c
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x1d
	.uaword	0x3d3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x3f6
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0xb5
	.uleb128 0x1a
	.uaword	0x402
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xb5
	.uaword	0x5ae
	.uleb128 0x1b
	.uaword	0x41c
	.uahalf	0xb80
	.uleb128 0x1b
	.uaword	0x411
	.uahalf	0xfe04
	.byte	0
	.uleb128 0x1e
	.uaword	0x42a
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.byte	0xb5
	.uleb128 0x1a
	.uaword	0x3b5
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.byte	0xba
	.uaword	0x5eb
	.uleb128 0x1b
	.uaword	0x3c8
	.uahalf	0xfe00
	.uleb128 0x1c
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x1f
	.uaword	0x3d3
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x3f6
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.byte	0xbc
	.uleb128 0x1a
	.uaword	0x402
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.byte	0xbc
	.uaword	0x61e
	.uleb128 0x20
	.uaword	0x41c
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	0x411
	.uahalf	0xfe00
	.byte	0
	.uleb128 0x1e
	.uaword	0x42a
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0xbc
	.uleb128 0x1e
	.uaword	0x3f6
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0xe7
	.uleb128 0x1a
	.uaword	0x402
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0xe7
	.uaword	0x662
	.uleb128 0x20
	.uaword	0x41c
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	0x411
	.uaword	.LLST13
	.byte	0
	.uleb128 0x1e
	.uaword	0x42a
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0xe7
	.uleb128 0x1e
	.uaword	0x3f6
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xeb
	.uleb128 0x1a
	.uaword	0x402
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xeb
	.uaword	0x6a6
	.uleb128 0x20
	.uaword	0x41c
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	0x411
	.uaword	.LLST15
	.byte	0
	.uleb128 0x1e
	.uaword	0x42a
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xeb
	.uleb128 0x21
	.uaword	.LVL8
	.uaword	0x7e7
	.uleb128 0x22
	.uaword	.LVL32
	.uaword	0x806
	.uaword	0x6d2
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.uaword	.LVL33
	.uaword	0x836
	.uleb128 0x21
	.uaword	.LVL34
	.uaword	0x7e7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x382
	.uleb128 0xd
	.uaword	0x36a
	.uaword	0x6fb
	.uleb128 0xe
	.uaword	0x3a9
	.byte	0x7
	.byte	0
	.uleb128 0x24
	.string	"kBrsWdtCon0Addresses_RAM"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x71e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x6eb
	.uleb128 0x24
	.string	"kBrsWdtCon0Addresses_ROM"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x746
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x6eb
	.uleb128 0xd
	.uaword	0x304
	.uaword	0x75b
	.uleb128 0xe
	.uaword	0x3a9
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"BrsMain_CoreConfig"
	.byte	0x6
	.byte	0x42
	.uaword	0x777
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x74b
	.uleb128 0x25
	.string	"BrsMain_CoreConfig_Size"
	.byte	0x6
	.byte	0x43
	.uaword	0x79d
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x1a8
	.uleb128 0x25
	.string	"_Brs_ExcVect_START"
	.byte	0x1
	.byte	0x50
	.uaword	0x1a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Brs_SizeOfbrsMain_CoreType"
	.byte	0x1
	.byte	0x52
	.uaword	0x79d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Brs_SizeOfbrsMain_CoreType
	.uleb128 0x27
	.byte	0x1
	.string	"BrsMainExceptionStartup"
	.byte	0x7
	.uahalf	0x239
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.string	"BrsHw_ExceptionTable_Init"
	.byte	0x5
	.uahalf	0x252
	.byte	0x1
	.byte	0x1
	.uaword	0x836
	.uleb128 0x29
	.uaword	0x239
	.uleb128 0x29
	.uaword	0x239
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"Brs_PreMainStartup"
	.byte	0x7
	.uahalf	0x15c
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uaword	.LVL1
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x11
	.sleb128 -1048576
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x8
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x8
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x73
	.sleb128 0
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE18
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE18
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x8
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x8
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x11
	.sleb128 -1048576
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe38
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	Brs_PreMainStartup,STT_FUNC,0
	.extern	BrsHw_ExceptionTable_Init,STT_FUNC,0
	.extern	_Brs_ExcVect_START,STT_OBJECT,4
	.extern	BrsMainExceptionStartup,STT_FUNC,0
	.extern	BrsMain_CoreConfig,STT_OBJECT,28
	.extern	BrsMain_CoreConfig_Size,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
