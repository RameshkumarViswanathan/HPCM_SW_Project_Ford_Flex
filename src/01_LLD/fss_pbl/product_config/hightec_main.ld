/* Dinkumware library preincluded header
   Copyright (C) 2012-2018 Free Software Foundation, Inc.
   Contributed by Gabor Palfi <gabor.palfi@hightec-rt.com>

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.
*/
/* This header is included implicitly at the start of every compilation.
   GCC knows the name of this header in order to preinclude it.  */
/* C11 requires to define __STDC_NO_THREADS__ if threads header
 * is not provided*/
/* C11 requires to define __STDC_NO_ATOMICS__ if stdatomics header
 * is not provided*/
/**********************************************************************************************************************

 *  EXAMPLE CODE ONLY

 *  -------------------------------------------------------------------------------------------------------------------

 *  This Example Code is only intended for illustrating an example of a possible BSW integration and BSW configuration.

 *  The Example Code has not passed any quality control measures and may be incomplete. The Example Code is neither

 *  intended nor qualified for use in series production. The Example Code as well as any of its modifications and/or

 *  implementations must be tested with diligent care and must comply with all quality requirements which are necessary

 *  according to the state of the art before their use.

 *********************************************************************************************************************/
/**********************************************************************************************************************

 * CAUTION - DO NOT EDIT

 * -------------------------------------------------------------------------------------------------------------------

 * Never manually edit the following memory definitions in this file. Only change them in the vLinkGen configuration

 * (/MICROSAR/vLinkGen/vLinkGenMemLayout/vLinkGenMemoryRegion/vLinkGenMemoryRegionBlock) and regenerate the files.

 *********************************************************************************************************************/
MEMORY
{
  RamDsprCpu2_FordAppl_Sdata : ORIGIN = 0x50000000 , LENGTH = 0x00003000 /* 12 KiB */
  RamDsprCpu2_FordAppl_Bss_Data : ORIGIN = 0x50003000 , LENGTH = 0x00003800 /* 14 KiB */
  RamDsprCpu2_FordAppl_Stack : ORIGIN = 0x50006800 , LENGTH = 0x00003000 /* 12 KiB */
  RamDsprCpu2_FordAppl_IStack : ORIGIN = 0x50009C00 , LENGTH = 0x00003400 /* 13 KiB */
  RamDsprCpu2_FordAppl_Csa : ORIGIN = 0x5000D000 , LENGTH = 0x0000B000 /* 44 KiB */
  RamDcsram_CPU2 : ORIGIN = 0x50018000 , LENGTH = 0x00004000 /* 16 KiB */
  RamDctagsram_CPU2 : ORIGIN = 0x500C0000 , LENGTH = 0x00001800 /* 6 KiB */
  RamPcpsram_CPU2 : ORIGIN = 0x50100000 , LENGTH = 0x00010000 /* 64 KiB */
  RamPcsram_CPU2 : ORIGIN = 0x50110000 , LENGTH = 0x00008000 /* 32 KiB */
  RamPctagsram_CPU2 : ORIGIN = 0x501C0000 , LENGTH = 0x00003000 /* 12 KiB */
  RamDsprCpu1_FordAppl_Sdata : ORIGIN = 0x60000000 , LENGTH = 0x0000F000 /* 60 KiB */
  RamDsprCpu1_FordAppl_Bss_data : ORIGIN = 0x6000F000 , LENGTH = 0x0000F800 /* 62 KiB */
  RamDsprCpu1_FordAppl_Stack : ORIGIN = 0x6001E800 , LENGTH = 0x00007400 /* 29 KiB */
  RamDsprCpu1_FordAppl_IStack : ORIGIN = 0x60025C00 , LENGTH = 0x00007400 /* 29 KiB */
  RamDsprCpu1_FordAppl_Csa : ORIGIN = 0x6002D000 , LENGTH = 0x0000F000 /* 60 KiB */
  RamDcsram_CPU1 : ORIGIN = 0x6003C000 , LENGTH = 0x00004000 /* 16 KiB */
  RamDctagsram_CPU1 : ORIGIN = 0x600C0000 , LENGTH = 0x00001800 /* 6 KiB */
  RamPcpsram_CPU1 : ORIGIN = 0x60100000 , LENGTH = 0x00010000 /* 64 KiB */
  RamPcsram_CPU1 : ORIGIN = 0x60110000 , LENGTH = 0x00008000 /* 32 KiB */
  RamPctagsram_CPU1 : ORIGIN = 0x601C0000 , LENGTH = 0x00003000 /* 12 KiB */
  RamDsprCpu0_FlashDrvArea : ORIGIN = 0x70000000 , LENGTH = 0x00000C00 /* 3 KiB */
  RamDsprCpu0_XH_Buffer : ORIGIN = 0x70000C00 , LENGTH = 0x00001400 /* 5 KiB */
  RamDsprCpu0_Sys_KAM : ORIGIN = 0x70002000 , LENGTH = 0x00000040 /* 64 Byte */
  RamDsprCpu0_KernelErLog_MR : ORIGIN = 0x70002040 , LENGTH = 0x00000740 /* 2 KiB */
  RamDsprCpu0_CalibShadow_Tbl : ORIGIN = 0x70002780 , LENGTH = 0x00010000 /* 64 KiB */
  RamDsprCpu0_FDAppl_DataShadow : ORIGIN = 0x70012780 , LENGTH = 0x00002000 /* 8 KiB */
  RamDsprCpu0_NVRamSdata_Sbss : ORIGIN = 0x70014780 , LENGTH = 0x00002000 /* 8 KiB */
  RamDsprCpu0_IPC : ORIGIN = 0x70016780 , LENGTH = 0x00007FC0 /* 32 KiB */
  RamDsprCpu0_IPC_ResetSafe : ORIGIN = 0x7001E740 , LENGTH = 0x00000040 /* 64 Byte */
  RamDsprCpu0_LLDAppl_Data_Bss : ORIGIN = 0x7001E780 , LENGTH = 0x00016480 /* 89 KiB */
  RamDsprCpu0_LLDAppl_RamConstSection : ORIGIN = 0x70034C00 , LENGTH = 0x00001000 /* 4 KiB */
  RamDsprCpu0_LLDAppl_Stack : ORIGIN = 0x70035C00 , LENGTH = 0x00001400 /* 5 KiB */
  RamDsprCpu0_LLDAppl_IStack : ORIGIN = 0x70037000 , LENGTH = 0x00000800 /* 2 KiB */
  RamDsprCpu0_LLDAppl_RAMCODE : ORIGIN = 0x70037800 , LENGTH = 0x00000800 /* 2 KiB */
  RamDsprCpu0_LLDAppl_Csa : ORIGIN = 0x70038000 , LENGTH = 0x00003BF0 /* 15 KiB */
  RamDsprCpu0_Var_Eep_DummyArea : ORIGIN = 0x7003BBF0 , LENGTH = 0x00000400 /* 1024 Byte */
  RamDsprCpu0_MagicFlagArea : ORIGIN = 0x7003BFF0 , LENGTH = 0x00000010 /* 16 Byte */
  RamDcsram_CPU0 : ORIGIN = 0x7003C000 , LENGTH = 0x00004000 /* 16 KiB */
  RamDctagsram_CPU0 : ORIGIN = 0x700C0000 , LENGTH = 0x00001800 /* 6 KiB */
  RamPcpsram_CPU0 : ORIGIN = 0x70100000 , LENGTH = 0x0000FFFE /* 64 KiB */
  RamPcsram_CPU0 : ORIGIN = 0x70110000 , LENGTH = 0x00008000 /* 32 KiB */
  RamPctagsram_CPU0 : ORIGIN = 0x701C0000 , LENGTH = 0x00003000 /* 12 KiB */
  BmRom_Startup : ORIGIN = 0x80000000 , LENGTH = 0x00000300 /* 768 Byte */
  BmRomArea : ORIGIN = 0x80000300 , LENGTH = 0x00007CDE /* 31 KiB */
  BmHeader : ORIGIN = 0x80007FE0 , LENGTH = 0x00000020 /* 32 Byte */
  ApplRom_ApplVect : ORIGIN = 0x80290000 , LENGTH = 0x00000020 /* 32 Byte */
  ApplRom_Startup : ORIGIN = 0x80290020 , LENGTH = 0x00000800 /* 2 KiB */
  ApplRomArea : ORIGIN = 0x80290820 , LENGTH = 0x00054000 /* 336 KiB */
  ApplBmHdrHeader : ORIGIN = 0x802E4820 , LENGTH = 0x00000100 /* 256 Byte */
  Os_IntVect : ORIGIN = 0x802E4920 , LENGTH = 0x00008000 /* 32 KiB */
  Region_etk_pageswitch_mbox : ORIGIN = 0x802EC920 , LENGTH = 0x00000200 /* 512 Byte */
  Region_etkDisTab_MemClass : ORIGIN = 0x802ECB20 , LENGTH = 0x00000200 /* 512 Byte */
  RegionBlock_BMHD0 : ORIGIN = 0x802ECD20 , LENGTH = 0x00000200 /* 512 Byte */
  SwIDBlock_HPCM : ORIGIN = 0x802ECF20 , LENGTH = 0x00000200 /* 512 Byte */
  Rom_PresencePattern1 : ORIGIN = 0x802FFF80 , LENGTH = 0x00000040 /* 64 Byte */
  Rom_PresencePattern2 : ORIGIN = 0x802FFFC0 , LENGTH = 0x00000040 /* 64 Byte */
  FblHeader : ORIGIN = 0x805A0000 , LENGTH = 0x00000020 /* 32 Byte */
  FblBmHdrHeader : ORIGIN = 0x805A0020 , LENGTH = 0x00000020 /* 32 Byte */
  FblRomArea : ORIGIN = 0x805A0040 , LENGTH = 0x0004EB80 /* 315 KiB */
  FblRomStartup : ORIGIN = 0x805EEBC0 , LENGTH = 0x00000400 /* 1024 Byte */
  FblReserved : ORIGIN = 0x805EEFC0 , LENGTH = 0x00000FC0 /* 4 KiB */
  FblBlockValPresencePattern : ORIGIN = 0x805EFF80 , LENGTH = 0x00000080 /* 128 Byte */
  RamDlmu_CPU1 : ORIGIN = 0xB0000000 , LENGTH = 0x0000FFFE /* 64 KiB */
  RamDlmu_CPU0 : ORIGIN = 0xB0010000 , LENGTH = 0x0000FFFE /* 64 KiB */
  RamDlmu_CPU2 : ORIGIN = 0xB0020000 , LENGTH = 0x0000FFFE /* 64 KiB */
}
SECTIONS
{
  .FblHeaderSectionGroup :
  {
    _FblHeaderSectionGroup_START = ABSOLUTE(.);
    *(*.FblHeaderSection)
    _FblHeaderSectionGroup_END = ABSOLUTE(. - 1);
    _FblHeaderSectionGroup_LIMIT = ABSOLUTE(.);
  } > FblBmHdrHeader
  _Fbl_FblHeader_ALL_START = _FblHeaderSectionGroup_START;
  _Fbl_FblHeader_ALL_END = _FblHeaderSectionGroup_END;
  _Fbl_FblHeader_ALL_LIMIT = _FblHeaderSectionGroup_LIMIT;
  .Fbl_PP :
  {
    _Fbl_PP_START = ABSOLUTE(.);
    KEEP(*(*.FblPresencePatternSection))
    _Fbl_PP_END = ABSOLUTE(. - 1);
    _Fbl_PP_LIMIT = ABSOLUTE(.);
  } > FblBlockValPresencePattern
  _Fbl_PresencePattern_ALL_START = _Fbl_PP_START;
  _Fbl_PresencePattern_ALL_END = _Fbl_PP_END;
  _Fbl_PresencePattern_ALL_LIMIT = _Fbl_PP_LIMIT;
  .FblBmHdrHeaderGroup :
  {
    _FblBmHdrHeaderGroup_START = ABSOLUTE(.);
    KEEP(*(*.BmHdrHeaderSection))
    _FblBmHdrHeaderGroup_END = ABSOLUTE(. - 1);
    _FblBmHdrHeaderGroup_LIMIT = ABSOLUTE(.);
  } > FblHeader
  _FblAppl_BmHdrHeader_ALL_START = _FblBmHdrHeaderGroup_START;
  _FblAppl_BmHdrHeader_ALL_END = _FblBmHdrHeaderGroup_END;
  _FblAppl_BmHdrHeader_ALL_LIMIT = _FblBmHdrHeaderGroup_LIMIT;
  .RamConstSection : ALIGN(4)
  {
    _RamConstSection_START = ABSOLUTE(.);
    *(*.RamConstSection)
    . = ALIGN(4);
    _RamConstSection_END = ABSOLUTE(. - 1);
    _RamConstSection_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _RamConstSection_ROM_START = LOADADDR(.RamConstSection);
  _RamConstSection_ROM_LIMIT = LOADADDR(.RamConstSection) + SIZEOF(.RamConstSection);
  _FblRamConst_ALL_START = _RamConstSection_START;
  _FblRamConst_ALL_END = _RamConstSection_END;
  _FblRamConst_ALL_LIMIT = _RamConstSection_LIMIT;
  .Brs_Startup_Code :
  {
    _Brs_Startup_Code_START = ABSOLUTE(.);
    . = ALIGN(8);
    KEEP(*(*.brsStartup))
    _Brs_Startup_Code_END = ABSOLUTE(. - 1);
    _Brs_Startup_Code_LIMIT = ABSOLUTE(.);
  } > FblRomStartup
  .BrsMain_Startup_Code :
  {
    _BrsMain_Startup_Code_START = ABSOLUTE(.);
    *(*.brsMainStartup)
    _BrsMain_Startup_Code_END = ABSOLUTE(. - 1);
    _BrsMain_Startup_Code_LIMIT = ABSOLUTE(.);
  } > FblRomStartup
  _Brs_Startup_Code_ALL_START = _Brs_Startup_Code_START;
  _Brs_Startup_Code_ALL_END = _BrsMain_Startup_Code_END;
  _Brs_Startup_Code_ALL_LIMIT = _BrsMain_Startup_Code_LIMIT;
  .RamCodeSection : ALIGN(4)
  {
    _RamCodeSection_START = ABSOLUTE(.);
    *(*.RamCodeCoreSection)
    . = ALIGN(4);
    _RamCodeSection_END = ABSOLUTE(. - 1);
    _RamCodeSection_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _RamCodeSection_ROM_START = LOADADDR(.RamCodeSection);
  _RamCodeSection_ROM_LIMIT = LOADADDR(.RamCodeSection) + SIZEOF(.RamCodeSection);
  _FblRamCode_ALL_START = _RamCodeSection_START;
  _FblRamCode_ALL_END = _RamCodeSection_END;
  _FblRamCode_ALL_LIMIT = _RamCodeSection_LIMIT;
  .APPLVECT : ALIGN(4)
  {
    _APPLVECT_START = ABSOLUTE(.);
    KEEP(*(*.ApplVectSection))
    _APPLVECT_END = ABSOLUTE(. - 1);
    _APPLVECT_LIMIT = ABSOLUTE(.);
  } > ApplRom_ApplVect
  _Appl_ApplVect_ALL_START = _APPLVECT_START;
  _Appl_ApplVect_ALL_END = _APPLVECT_END;
  _Appl_ApplVect_ALL_LIMIT = _APPLVECT_LIMIT;
  RESETVECT = Brs_ApplicationEntry;
  _start = Brs_ApplicationEntry;
  .Brs_ExcVectRam : ALIGN(256)
  {
    _Brs_ExcVectRam_START = ABSOLUTE(.);
    KEEP(*(*.brsExcVectRam))
    . = ALIGN(8);
    _Brs_ExcVectRam_END = ABSOLUTE(. - 1);
    _Brs_ExcVectRam_LIMIT = ABSOLUTE(.);
    . += 16;
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _Brs_ExcVectRam_ROM_START = LOADADDR(.Brs_ExcVectRam);
  _Brs_ExcVectRam_ROM_LIMIT = LOADADDR(.Brs_ExcVectRam) + SIZEOF(.Brs_ExcVectRam) - 16;
  _Brs_ExcVectRam_ALL_START = _Brs_ExcVectRam_START;
  _Brs_ExcVectRam_ALL_END = _Brs_ExcVectRam_END;
  _Brs_ExcVectRam_ALL_LIMIT = _Brs_ExcVectRam_LIMIT;
  .Brs_Shared_Const :
  {
    _Brs_Shared_Const_START = ABSOLUTE(.);
    KEEP(*(*.brsSharedConst))
    _Brs_Shared_Const_END = ABSOLUTE(. - 1);
    _Brs_Shared_Const_LIMIT = ABSOLUTE(.);
  } > BmRomArea
  _Brs_Shared_Const_ALL_START = _Brs_Shared_Const_START;
  _Brs_Shared_Const_ALL_END = _Brs_Shared_Const_END;
  _Brs_Shared_Const_ALL_LIMIT = _Brs_Shared_Const_LIMIT;
  .Brs_Shared_Var : ALIGN(16)
  {
    _Brs_Shared_Var_START = ABSOLUTE(.);
    *(*.brsSharedVar)
    _Brs_Shared_Var_END = ABSOLUTE(. - 1);
    _Brs_Shared_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss
  _Brs_Shared_Var_ALL_START = _Brs_Shared_Var_START;
  _Brs_Shared_Var_ALL_END = _Brs_Shared_Var_END;
  _Brs_Shared_Var_ALL_LIMIT = _Brs_Shared_Var_LIMIT;
  .EepDummyVarGroup : ALIGN(16)
  {
    _EepDummyVarGroup_START = ABSOLUTE(.);
    *(*.EepDummySection)
    . = ALIGN(4);
    _EepDummyVarGroup_END = ABSOLUTE(. - 1);
    _EepDummyVarGroup_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_Var_Eep_DummyArea
  _EepDummyVarGroup_ALL_START = _EepDummyVarGroup_START;
  _EepDummyVarGroup_ALL_END = _EepDummyVarGroup_END;
  _EepDummyVarGroup_ALL_LIMIT = _EepDummyVarGroup_LIMIT;
  .FlashDrvSectionGroup : ALIGN(16)
  {
    _FlashDrvSectionGroup_START = ABSOLUTE(.);
    *(*.FblFlashDrvSection)
    _FlashDrvSectionGroup_END = ABSOLUTE(. - 1);
    _FlashDrvSectionGroup_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_FlashDrvArea
  _FlashDrvSectionGroup_ALL_START = _FlashDrvSectionGroup_START;
  _FlashDrvSectionGroup_ALL_END = _FlashDrvSectionGroup_END;
  _FlashDrvSectionGroup_ALL_LIMIT = _FlashDrvSectionGroup_LIMIT;
  __HEAP = 8;
  __HEAP_END = 8;
  .MagicFlagGroup : ALIGN(16)
  {
    _MagicFlagGroup_START = ABSOLUTE(.);
    *(*.MagicFlagSection)
    . = ALIGN(4);
    _MagicFlagGroup_END = ABSOLUTE(. - 1);
    _MagicFlagGroup_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_MagicFlagArea
  _MagicFlagGroup_ALL_START = _MagicFlagGroup_START;
  _MagicFlagGroup_ALL_END = _MagicFlagGroup_END;
  _MagicFlagGroup_ALL_LIMIT = _MagicFlagGroup_LIMIT;
  .STACK_C0 : ALIGN(64)
  {
    _STACK_C0_START = ABSOLUTE(.);
    . += 5120;
    . = ALIGN(4);
    _STACK_C0_END = ABSOLUTE(. - 1);
    _STACK_C0_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Stack
  _STACK_C0_ALL_START = _STACK_C0_START;
  _STACK_C0_ALL_END = _STACK_C0_END;
  _STACK_C0_ALL_LIMIT = _STACK_C0_LIMIT;
  StartupEntry = Brs_ApplicationEntry;
  _start_tc0 = Brs_ApplicationEntry;
  _start_tc1 = Brs_ApplicationEntry;
  _start_tc2 = Brs_ApplicationEntry;
  _start_tc3 = Brs_ApplicationEntry;
  _start_tc4 = Brs_ApplicationEntry;
  _start_tc5 = Brs_ApplicationEntry;
  .RamDcsram_CPU0_Var : ALIGN(16)
  {
    _RamDcsram_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamDcsram_CPU0_Section)
    . = ALIGN(4);
    _RamDcsram_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamDcsram_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamDcsram_CPU0
  _RamDcsram_CPU0_Var_ALL_START = _RamDcsram_CPU0_Var_START;
  _RamDcsram_CPU0_Var_ALL_END = _RamDcsram_CPU0_Var_END;
  _RamDcsram_CPU0_Var_ALL_LIMIT = _RamDcsram_CPU0_Var_LIMIT;
  .RamDcsram_CPU1_Var : ALIGN(16)
  {
    _RamDcsram_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamDcsram_CPU1_Section)
    . = ALIGN(4);
    _RamDcsram_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamDcsram_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamDcsram_CPU1
  _RamDcsram_CPU1_Var_ALL_START = _RamDcsram_CPU1_Var_START;
  _RamDcsram_CPU1_Var_ALL_END = _RamDcsram_CPU1_Var_END;
  _RamDcsram_CPU1_Var_ALL_LIMIT = _RamDcsram_CPU1_Var_LIMIT;
  .RamDcsram_CPU2_Var : ALIGN(16)
  {
    _RamDcsram_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamDcsram_CPU2_Section)
    . = ALIGN(4);
    _RamDcsram_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamDcsram_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamDcsram_CPU2
  _RamDcsram_CPU2_Var_ALL_START = _RamDcsram_CPU2_Var_START;
  _RamDcsram_CPU2_Var_ALL_END = _RamDcsram_CPU2_Var_END;
  _RamDcsram_CPU2_Var_ALL_LIMIT = _RamDcsram_CPU2_Var_LIMIT;
  .RamDctagsram_CPU0_Var : ALIGN(16)
  {
    _RamDctagsram_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamDctagsramCPU0_Section)
    . = ALIGN(4);
    _RamDctagsram_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamDctagsram_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamDctagsram_CPU0
  _RamDctagsram_CPU0_Var_ALL_START = _RamDctagsram_CPU0_Var_START;
  _RamDctagsram_CPU0_Var_ALL_END = _RamDctagsram_CPU0_Var_END;
  _RamDctagsram_CPU0_Var_ALL_LIMIT = _RamDctagsram_CPU0_Var_LIMIT;
  .RamDctagsram_CPU1_Var : ALIGN(16)
  {
    _RamDctagsram_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamDctagsramCPU0_Section)
    . = ALIGN(4);
    _RamDctagsram_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamDctagsram_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamDctagsram_CPU1
  _RamDctagsram_CPU1_Var_ALL_START = _RamDctagsram_CPU1_Var_START;
  _RamDctagsram_CPU1_Var_ALL_END = _RamDctagsram_CPU1_Var_END;
  _RamDctagsram_CPU1_Var_ALL_LIMIT = _RamDctagsram_CPU1_Var_LIMIT;
  .RamDctagsram_CPU2_Var : ALIGN(16)
  {
    _RamDctagsram_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamDctagsramCPU0_Section)
    . = ALIGN(4);
    _RamDctagsram_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamDctagsram_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamDctagsram_CPU2
  _RamDctagsram_CPU2_Var_ALL_START = _RamDctagsram_CPU2_Var_START;
  _RamDctagsram_CPU2_Var_ALL_END = _RamDctagsram_CPU2_Var_END;
  _RamDctagsram_CPU2_Var_ALL_LIMIT = _RamDctagsram_CPU2_Var_LIMIT;
  .RamPcpsram_CPU0_Var : ALIGN(16)
  {
    _RamPcpsram_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamPcpsramCPU0_Section)
    . = ALIGN(4);
    _RamPcpsram_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamPcpsram_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamPcpsram_CPU0
  _RamPcpsram_CPU0_Var_ALL_START = _RamPcpsram_CPU0_Var_START;
  _RamPcpsram_CPU0_Var_ALL_END = _RamPcpsram_CPU0_Var_END;
  _RamPcpsram_CPU0_Var_ALL_LIMIT = _RamPcpsram_CPU0_Var_LIMIT;
  .RamPcpsram_CPU1_Var : ALIGN(16)
  {
    _RamPcpsram_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamPcpsramCPU1_Section)
    . = ALIGN(4);
    _RamPcpsram_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamPcpsram_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamPcpsram_CPU1
  _RamPcpsram_CPU1_Var_ALL_START = _RamPcpsram_CPU1_Var_START;
  _RamPcpsram_CPU1_Var_ALL_END = _RamPcpsram_CPU1_Var_END;
  _RamPcpsram_CPU1_Var_ALL_LIMIT = _RamPcpsram_CPU1_Var_LIMIT;
  .RamPcpsram_CPU2_Var : ALIGN(16)
  {
    _RamPcpsram_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamPcpsramCPU2_Section)
    . = ALIGN(4);
    _RamPcpsram_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamPcpsram_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamPcpsram_CPU2
  _RamPcpsram_CPU2_Var_ALL_START = _RamPcpsram_CPU2_Var_START;
  _RamPcpsram_CPU2_Var_ALL_END = _RamPcpsram_CPU2_Var_END;
  _RamPcpsram_CPU2_Var_ALL_LIMIT = _RamPcpsram_CPU2_Var_LIMIT;
  .RamPcsram_CPU0_Var : ALIGN(16)
  {
    _RamPcsram_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamPcsramCPU0_Section)
    . = ALIGN(4);
    _RamPcsram_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamPcsram_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamPcsram_CPU0
  _RamPcsram_CPU0_Var_ALL_START = _RamPcsram_CPU0_Var_START;
  _RamPcsram_CPU0_Var_ALL_END = _RamPcsram_CPU0_Var_END;
  _RamPcsram_CPU0_Var_ALL_LIMIT = _RamPcsram_CPU0_Var_LIMIT;
  .RamPcsram_CPU1_Var : ALIGN(16)
  {
    _RamPcsram_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamPcsramCPU1_Section)
    . = ALIGN(4);
    _RamPcsram_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamPcsram_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamPcsram_CPU1
  _RamPcsram_CPU1_Var_ALL_START = _RamPcsram_CPU1_Var_START;
  _RamPcsram_CPU1_Var_ALL_END = _RamPcsram_CPU1_Var_END;
  _RamPcsram_CPU1_Var_ALL_LIMIT = _RamPcsram_CPU1_Var_LIMIT;
  .RamPcsram_CPU2_Var : ALIGN(16)
  {
    _RamPcsram_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamPcsramCPU2_Section)
    . = ALIGN(4);
    _RamPcsram_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamPcsram_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamPcsram_CPU2
  _RamPcsram_CPU2_Var_ALL_START = _RamPcsram_CPU2_Var_START;
  _RamPcsram_CPU2_Var_ALL_END = _RamPcsram_CPU2_Var_END;
  _RamPcsram_CPU2_Var_ALL_LIMIT = _RamPcsram_CPU2_Var_LIMIT;
  .RamPctagsram_CPU0_Var : ALIGN(16)
  {
    _RamPctagsram_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamPctagsramCPU0_Section)
    . = ALIGN(4);
    _RamPctagsram_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamPctagsram_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamPctagsram_CPU0
  _RamPctagsram_CPU0_Var_ALL_START = _RamPctagsram_CPU0_Var_START;
  _RamPctagsram_CPU0_Var_ALL_END = _RamPctagsram_CPU0_Var_END;
  _RamPctagsram_CPU0_Var_ALL_LIMIT = _RamPctagsram_CPU0_Var_LIMIT;
  .RamPctagsram_CPU1_Var : ALIGN(16)
  {
    _RamPctagsram_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamPctagsramCPU1_Section)
    . = ALIGN(4);
    _RamPctagsram_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamPctagsram_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamPctagsram_CPU1
  _RamPctagsram_CPU1_Var_ALL_START = _RamPctagsram_CPU1_Var_START;
  _RamPctagsram_CPU1_Var_ALL_END = _RamPctagsram_CPU1_Var_END;
  _RamPctagsram_CPU1_Var_ALL_LIMIT = _RamPctagsram_CPU1_Var_LIMIT;
  .RamPctagsram_CPU2_Var : ALIGN(16)
  {
    _RamPctagsram_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamPctagsramCPU2_Section)
    . = ALIGN(4);
    _RamPctagsram_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamPctagsram_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamPctagsram_CPU2
  _RamPctagsram_CPU2_Var_ALL_START = _RamPctagsram_CPU2_Var_START;
  _RamPctagsram_CPU2_Var_ALL_END = _RamPctagsram_CPU2_Var_END;
  _RamPctagsram_CPU2_Var_ALL_LIMIT = _RamPctagsram_CPU2_Var_LIMIT;
  .RamDlmu_CPU0_Var : ALIGN(16)
  {
    _RamDlmu_CPU0_Var_START = ABSOLUTE(.);
    *(*.RamDlmuCPU0_Section)
    . = ALIGN(4);
    _RamDlmu_CPU0_Var_END = ABSOLUTE(. - 1);
    _RamDlmu_CPU0_Var_LIMIT = ABSOLUTE(.);
  } > RamDlmu_CPU0
  _RamDlmu_CPU0_Var_ALL_START = _RamDlmu_CPU0_Var_START;
  _RamDlmu_CPU0_Var_ALL_END = _RamDlmu_CPU0_Var_END;
  _RamDlmu_CPU0_Var_ALL_LIMIT = _RamDlmu_CPU0_Var_LIMIT;
  .RamDlmu_CPU1_Var : ALIGN(16)
  {
    _RamDlmu_CPU1_Var_START = ABSOLUTE(.);
    *(*.RamDlmuCPU1_Section)
    . = ALIGN(4);
    _RamDlmu_CPU1_Var_END = ABSOLUTE(. - 1);
    _RamDlmu_CPU1_Var_LIMIT = ABSOLUTE(.);
  } > RamDlmu_CPU1
  _RamDlmu_CPU1_Var_ALL_START = _RamDlmu_CPU1_Var_START;
  _RamDlmu_CPU1_Var_ALL_END = _RamDlmu_CPU1_Var_END;
  _RamDlmu_CPU1_Var_ALL_LIMIT = _RamDlmu_CPU1_Var_LIMIT;
  .RamDlmu_CPU2_Var : ALIGN(16)
  {
    _RamDlmu_CPU2_Var_START = ABSOLUTE(.);
    *(*.RamDlmuCPU2_Section)
    . = ALIGN(4);
    _RamDlmu_CPU2_Var_END = ABSOLUTE(. - 1);
    _RamDlmu_CPU2_Var_LIMIT = ABSOLUTE(.);
  } > RamDlmu_CPU2
  _RamDlmu_CPU2_Var_ALL_START = _RamDlmu_CPU2_Var_START;
  _RamDlmu_CPU2_Var_ALL_END = _RamDlmu_CPU2_Var_END;
  _RamDlmu_CPU2_Var_ALL_LIMIT = _RamDlmu_CPU2_Var_LIMIT;
  .RamDsprCpu0CalibShadowTbl_Var : ALIGN(16)
  {
    _RamDsprCpu0CalibShadowTbl_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0CalibShadowTbl_Section)
    . = ALIGN(4);
    _RamDsprCpu0CalibShadowTbl_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0CalibShadowTbl_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_CalibShadow_Tbl
  _RamDsprCpu0CalibShadowTbl_Var_ALL_START = _RamDsprCpu0CalibShadowTbl_Var_START;
  _RamDsprCpu0CalibShadowTbl_Var_ALL_END = _RamDsprCpu0CalibShadowTbl_Var_END;
  _RamDsprCpu0CalibShadowTbl_Var_ALL_LIMIT = _RamDsprCpu0CalibShadowTbl_Var_LIMIT;
  .RamDsprCpu0FDApplDataShadow_Var : ALIGN(16)
  {
    _RamDsprCpu0FDApplDataShadow_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0FDApppDataShadow_Section)
    . = ALIGN(4);
    _RamDsprCpu0FDApplDataShadow_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0FDApplDataShadow_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_FDAppl_DataShadow
  _RamDsprCpu0FDApplDataShadow_Var_ALL_START = _RamDsprCpu0FDApplDataShadow_Var_START;
  _RamDsprCpu0FDApplDataShadow_Var_ALL_END = _RamDsprCpu0FDApplDataShadow_Var_END;
  _RamDsprCpu0FDApplDataShadow_Var_ALL_LIMIT = _RamDsprCpu0FDApplDataShadow_Var_LIMIT;
  .RamDsprCpu0IPC_Var : ALIGN(16)
  {
    _RamDsprCpu0IPC_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0IPC_Section)
    . = ALIGN(4);
    _RamDsprCpu0IPC_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0IPC_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_IPC
  _RamDsprCpu0IPC_Var_ALL_START = _RamDsprCpu0IPC_Var_START;
  _RamDsprCpu0IPC_Var_ALL_END = _RamDsprCpu0IPC_Var_END;
  _RamDsprCpu0IPC_Var_ALL_LIMIT = _RamDsprCpu0IPC_Var_LIMIT;
  .RamDsprCpu0KernelErLogMR_Section_Var : ALIGN(16)
  {
    _RamDsprCpu0KernelErLogMR_Section_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0KernelErLogMR_Section)
    . = ALIGN(4);
    _RamDsprCpu0KernelErLogMR_Section_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0KernelErLogMR_Section_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_KernelErLog_MR
  _RamDsprCpu0KernelErLogMR_Section_Var_ALL_START = _RamDsprCpu0KernelErLogMR_Section_Var_START;
  _RamDsprCpu0KernelErLogMR_Section_Var_ALL_END = _RamDsprCpu0KernelErLogMR_Section_Var_END;
  _RamDsprCpu0KernelErLogMR_Section_Var_ALL_LIMIT = _RamDsprCpu0KernelErLogMR_Section_Var_LIMIT;
  .RamDsprCpu0NVRamSdataSbss_Var : ALIGN(16)
  {
    _RamDsprCpu0NVRamSdataSbss_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0NVRamSdataSbss_Section)
    . = ALIGN(4);
    _RamDsprCpu0NVRamSdataSbss_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0NVRamSdataSbss_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_NVRamSdata_Sbss
  _RamDsprCpu0NVRamSdataSbss_Var_ALL_START = _RamDsprCpu0NVRamSdataSbss_Var_START;
  _RamDsprCpu0NVRamSdataSbss_Var_ALL_END = _RamDsprCpu0NVRamSdataSbss_Var_END;
  _RamDsprCpu0NVRamSdataSbss_Var_ALL_LIMIT = _RamDsprCpu0NVRamSdataSbss_Var_LIMIT;
  .RamDsprCpu0SysKAM_Var : ALIGN(16)
  {
    _RamDsprCpu0SysKAM_Var_START = ABSOLUTE(.);
    *(*.RamDsprCpu0SysKAM_Section)
    . = ALIGN(4);
    _RamDsprCpu0SysKAM_Var_END = ABSOLUTE(. - 1);
    _RamDsprCpu0SysKAM_Var_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_Sys_KAM
  _RamDsprCpu0SysKAM_Var_ALL_START = _RamDsprCpu0SysKAM_Var_START;
  _RamDsprCpu0SysKAM_Var_ALL_END = _RamDsprCpu0SysKAM_Var_END;
  _RamDsprCpu0SysKAM_Var_ALL_LIMIT = _RamDsprCpu0SysKAM_Var_LIMIT;
  .MSR_CODE :
  {
    _MSR_CODE_START = ABSOLUTE(.);
    *(*.MSR_CODE)
    _MSR_CODE_END = ABSOLUTE(. - 1);
    _MSR_CODE_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  _MSR_CODE_ALL_START = _MSR_CODE_START;
  _MSR_CODE_ALL_END = _MSR_CODE_END;
  _MSR_CODE_ALL_LIMIT = _MSR_CODE_LIMIT;
  .MSR_CONST :
  {
    _MSR_CONST_START = ABSOLUTE(.);
    *(*.MSR_CONST)
    *(*.MSR_CONST_FAST)
    _MSR_CONST_END = ABSOLUTE(. - 1);
    _MSR_CONST_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  _MSR_CONST_ALL_START = _MSR_CONST_START;
  _MSR_CONST_ALL_END = _MSR_CONST_END;
  _MSR_CONST_ALL_LIMIT = _MSR_CONST_LIMIT;
  .MSR_PBCFG_CONST :
  {
    _MSR_PBCFG_CONST_START = ABSOLUTE(.);
    *(*.MSR_PBCFG_CONST)
    *(*.MSR_PBCFG_CONST_FAST)
    _MSR_PBCFG_CONST_END = ABSOLUTE(. - 1);
    _MSR_PBCFG_CONST_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  _MSR_PBCFG_CONST_ALL_START = _MSR_PBCFG_CONST_START;
  _MSR_PBCFG_CONST_ALL_END = _MSR_PBCFG_CONST_END;
  _MSR_PBCFG_CONST_ALL_LIMIT = _MSR_PBCFG_CONST_LIMIT;
  .rodata : FLAGS(arl)
  {
    _rodata_START = ABSOLUTE(.);
    *(*.rodata)
    *(.rodata.*)
    _rodata_END = ABSOLUTE(. - 1);
    _rodata_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  .sdata2 : FLAGS(arsl)
  {
    _sdata2_START = ABSOLUTE(.);
    *(*.sdata2)
    *(.sdata2.*)
    _sdata2_END = ABSOLUTE(. - 1);
    _sdata2_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  .srodata : FLAGS(arsl)
  {
    _srodata_START = ABSOLUTE(.);
    *(*.srodata)
    *(.srodata.*)
    _srodata_END = ABSOLUTE(. - 1);
    _srodata_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  .text : FLAGS(axl)
  {
    _text_START = ABSOLUTE(.);
    *(*.text)
    *(.text.*)
    _text_END = ABSOLUTE(. - 1);
    _text_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  .text_vle : FLAGS(avxl)
  {
    _text_vle_START = ABSOLUTE(.);
    *(*.text_vle)
    *(.text_vle.*)
    _text_vle_END = ABSOLUTE(. - 1);
    _text_vle_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  .zrodata : FLAGS(arzl)
  {
    _zrodata_START = ABSOLUTE(.);
    *(*.zrodata)
    *(.zrodata.*)
    _zrodata_END = ABSOLUTE(. - 1);
    _zrodata_LIMIT = ABSOLUTE(.);
  } > FblRomArea
  _Const_Default_ALL_START = _rodata_START;
  _Const_Default_ALL_END = _zrodata_END;
  _Const_Default_ALL_LIMIT = _zrodata_LIMIT;
  .bss : ALIGN(16) FLAGS(aw)
  {
    _bss_START = ABSOLUTE(.);
    *(*.bss)
    *(.bss.*)
    *(COMMON)
    . = ALIGN(4);
    _bss_END = ABSOLUTE(. - 1);
    _bss_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss
  .data : ALIGN(16) FLAGS(awl)
  {
    _data_START = ABSOLUTE(.);
    *(*.data)
    *(.data.*)
    . = ALIGN(4);
    _data_END = ABSOLUTE(. - 1);
    _data_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _data_ROM_START = LOADADDR(.data);
  _data_ROM_LIMIT = LOADADDR(.data) + SIZEOF(.data);
  .sbss : ALIGN(16) FLAGS(aws)
  {
    _sbss_START = ABSOLUTE(.);
    *(*.sbss)
    *(.sbss.*)
    . = ALIGN(4);
    _sbss_END = ABSOLUTE(. - 1);
    _sbss_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss
  .sdata : ALIGN(16) FLAGS(awsl)
  {
    _sdata_START = ABSOLUTE(.);
    *(*.sdata)
    *(.sdata.*)
    . = ALIGN(4);
    _sdata_END = ABSOLUTE(. - 1);
    _sdata_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _sdata_ROM_START = LOADADDR(.sdata);
  _sdata_ROM_LIMIT = LOADADDR(.sdata) + SIZEOF(.sdata);
  .zbss : ALIGN(16) FLAGS(awz)
  {
    _zbss_START = ABSOLUTE(.);
    *(*.zbss)
    *(.zbss.*)
    . = ALIGN(4);
    _zbss_END = ABSOLUTE(. - 1);
    _zbss_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss
  .zdata : ALIGN(16) FLAGS(awzl)
  {
    _zdata_START = ABSOLUTE(.);
    *(*.zdata)
    *(.zdata.*)
    . = ALIGN(4);
    _zdata_END = ABSOLUTE(. - 1);
    _zdata_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> FblRomArea
  _zdata_ROM_START = LOADADDR(.zdata);
  _zdata_ROM_LIMIT = LOADADDR(.zdata) + SIZEOF(.zdata);
  _Data_Default_ALL_START = _bss_START;
  _Data_Default_ALL_END = _zdata_END;
  _Data_Default_ALL_LIMIT = _zdata_LIMIT;
}
