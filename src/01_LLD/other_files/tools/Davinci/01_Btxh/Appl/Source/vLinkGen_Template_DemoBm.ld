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
  Pspr_Cpu2 : ORIGIN = 0x50100000 , LENGTH = 0x00010000 /* 64 KiB */
  RamDsprCpu1_FordAppl_Sdata : ORIGIN = 0x60000000 , LENGTH = 0x0000F000 /* 60 KiB */
  RamDsprCpu1_FordAppl_Bss_data : ORIGIN = 0x6000F000 , LENGTH = 0x0000F800 /* 62 KiB */
  RamDsprCpu1_FordAppl_Stack : ORIGIN = 0x6001E800 , LENGTH = 0x00007400 /* 29 KiB */
  RamDsprCpu1_FordAppl_IStack : ORIGIN = 0x60025C00 , LENGTH = 0x00007400 /* 29 KiB */
  RamDsprCpu1_FordAppl_Csa : ORIGIN = 0x6002D000 , LENGTH = 0x0000F000 /* 60 KiB */
  Pspr_Cpu1 : ORIGIN = 0x60100000 , LENGTH = 0x00010000 /* 64 KiB */
  RamDsprCpu0_XH_Buffer : ORIGIN = 0x70000000 , LENGTH = 0x00000400 /* 1024 Byte */
  RamDsprCpu0_Sys_KAM : ORIGIN = 0x70000400 , LENGTH = 0x00000040 /* 64 Byte */
  RamDsprCpu0_KernelErLog_MR : ORIGIN = 0x70000440 , LENGTH = 0x000003B8 /* 952 Byte */
  RamDsprCpu0_CalibShadow_Tbl : ORIGIN = 0x700007F8 , LENGTH = 0x00001000 /* 4 KiB */
  RamDsprCpu0_FDAppl_DataShadow : ORIGIN = 0x700017F8 , LENGTH = 0x00000400 /* 1024 Byte */
  RamDsprCpu0_NVRamSdata_Sbss : ORIGIN = 0x70001BF8 , LENGTH = 0x00000400 /* 1024 Byte */
  RamDsprCpu0_IPC : ORIGIN = 0x70001FF8 , LENGTH = 0x00000400 /* 1024 Byte */
  RamDsprCpu0_IPC_ResetSafe : ORIGIN = 0x700023F8 , LENGTH = 0x00002000 /* 8 KiB */
  RamDsprCpu0_LLDAppl_Data_Bss : ORIGIN = 0x700043F8 , LENGTH = 0x0002AC00 /* 171 KiB */
  RamDsprCpu0_LLDAppl_RamConstSection : ORIGIN = 0x7002EFF8 , LENGTH = 0x00000800 /* 2 KiB */
  RamDsprCpu0_LLDAppl_Stack : ORIGIN = 0x7002F7F8 , LENGTH = 0x00009800 /* 38 KiB */
  RamDsprCpu0_LLDAppl_IStack : ORIGIN = 0x70038FF8 , LENGTH = 0x00000100 /* 256 Byte */
  RamDsprCpu0_LLDAppl_RAMCODE : ORIGIN = 0x700390F8 , LENGTH = 0x00000800 /* 2 KiB */
  RamDsprCpu0_LLDAppl_Csa : ORIGIN = 0x700398F8 , LENGTH = 0x00000800 /* 2 KiB */
  RamDsprCpu0_Var_Eep_DummyArea : ORIGIN = 0x7003A0F8 , LENGTH = 0x000006F8 /* 2 KiB */
  RamDsprCpu0_MagicFlagArea : ORIGIN = 0x7003A7F0 , LENGTH = 0x00000010 /* 16 Byte */
  RamDsprCpu0_FlashDrvArea : ORIGIN = 0x7003A800 , LENGTH = 0x00000C00 /* 3 KiB */
  BmRom_Startup : ORIGIN = 0x80000000 , LENGTH = 0x00000300 /* 768 Byte */
  BmRomArea : ORIGIN = 0x80000300 , LENGTH = 0x00007CDE /* 31 KiB */
  BmHeader : ORIGIN = 0x80007FE0 , LENGTH = 0x00000020 /* 32 Byte */
  ApplRom_ApplVect : ORIGIN = 0x802A4000 , LENGTH = 0x00000020 /* 32 Byte */
  ApplRom_Startup : ORIGIN = 0x802A4020 , LENGTH = 0x000008E0 /* 2 KiB */
  ApplRomArea : ORIGIN = 0x802A4900 , LENGTH = 0x00040000 /* 256 KiB */
  ApplSlpSpecificArea : ORIGIN = 0x802E4900 , LENGTH = 0x00000100 /* 256 Byte */
  ApplRomBlock_ASW_INFO : ORIGIN = 0x802E4A00 , LENGTH = 0x00000100 /* 256 Byte */
  ApplBmHdrHeader : ORIGIN = 0x802E4B00 , LENGTH = 0x00000100 /* 256 Byte */
  Os_IntVect : ORIGIN = 0x802E4C00 , LENGTH = 0x00010000 /* 64 KiB */
  Region_etk_pageswitch_mbox : ORIGIN = 0x802F4C00 , LENGTH = 0x00000200 /* 512 Byte */
  Region_etkDisTab_MemClass : ORIGIN = 0x802F4E00 , LENGTH = 0x00000200 /* 512 Byte */
  RegionBlock_BMHD0 : ORIGIN = 0x802F5000 , LENGTH = 0x00000200 /* 512 Byte */
  FblHeader : ORIGIN = 0x805A0000 , LENGTH = 0x00000020 /* 32 Byte */
  FblBmHdrHeader : ORIGIN = 0x805A0020 , LENGTH = 0x00000020 /* 32 Byte */
  FblRomArea : ORIGIN = 0x805A0040 , LENGTH = 0x0004EB80 /* 315 KiB */
  FblRomStartup : ORIGIN = 0x805EEBC0 , LENGTH = 0x00000400 /* 1024 Byte */
  FblReserved : ORIGIN = 0x805EEFC0 , LENGTH = 0x00000FC0 /* 4 KiB */
  FblBlockValPresencePattern : ORIGIN = 0x805EFF80 , LENGTH = 0x00000080 /* 128 Byte */
  Rom_BM_NC_BMHD0 : ORIGIN = 0xAF400000 , LENGTH = 0x00000200 /* 512 Byte */
}

SECTIONS
{
  .BmHeaderSectionGroup :
  {
    _BmHeaderSectionGroup_START = ABSOLUTE(.);
    *(*.BmHeaderSection)
    _BmHeaderSectionGroup_END = ABSOLUTE(. - 1);
    _BmHeaderSectionGroup_LIMIT = ABSOLUTE(.);
  } > BmHeader

  _Bm_BmHeader_ALL_START = _BmHeaderSectionGroup_START;
  _Bm_BmHeader_ALL_END = _BmHeaderSectionGroup_END;
  _Bm_BmHeader_ALL_LIMIT = _BmHeaderSectionGroup_LIMIT;

  .RamConstSection : ALIGN(4)
  {
    _RamConstSection_START = ABSOLUTE(.);
    *(*.RamConstSection)
    . = ALIGN(4);
    _RamConstSection_END = ABSOLUTE(. - 1);
    _RamConstSection_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
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
  } > BmRom_Startup

  .BrsMain_Startup_Code :
  {
    _BrsMain_Startup_Code_START = ABSOLUTE(.);
    *(*.brsMainStartup)
    _BrsMain_Startup_Code_END = ABSOLUTE(. - 1);
    _BrsMain_Startup_Code_LIMIT = ABSOLUTE(.);
  } > BmRom_Startup

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
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
  _RamCodeSection_ROM_START = LOADADDR(.RamCodeSection);
  _RamCodeSection_ROM_LIMIT = LOADADDR(.RamCodeSection) + SIZEOF(.RamCodeSection);

  _FblRamCode_ALL_START = _RamCodeSection_START;
  _FblRamCode_ALL_END = _RamCodeSection_END;
  _FblRamCode_ALL_LIMIT = _RamCodeSection_LIMIT;

  .Brs_ExcVect : ALIGN(256)
  {
    _Brs_ExcVect_START = ABSOLUTE(.);
    KEEP(*(*.brsExcVect))
    KEEP(*(*.brsExcVectConst))
    . = ALIGN(8);
    _Brs_ExcVect_END = ABSOLUTE(. - 1);
    _Brs_ExcVect_LIMIT = ABSOLUTE(.);
    . += 16;
  } > BmRom_Startup

  _Brs_ExcVect_ALL_START = _Brs_ExcVect_START;
  _Brs_ExcVect_ALL_END = _Brs_ExcVect_END;
  _Brs_ExcVect_ALL_LIMIT = _Brs_ExcVect_LIMIT;

  RESETVECT = Brs_ApplicationEntry;
  _start = Brs_ApplicationEntry;

  .BMHD0 :
  {
    _BMHD0_START = ABSOLUTE(.);
    . = ALIGN(32);
    KEEP(*(*.BMHD0))
    _BMHD0_END = ABSOLUTE(. - 1);
    _BMHD0_LIMIT = ABSOLUTE(.);
  } > Rom_BM_NC_BMHD0

  _BMHD0_ALL_START = _BMHD0_START;
  _BMHD0_ALL_END = _BMHD0_END;
  _BMHD0_ALL_LIMIT = _BMHD0_LIMIT;

  _Brs_ExcVect_START = _Brs_ExcVectRam_ROM_START;

  .Brs_ExcVectRam : ALIGN(256)
  {
    _Brs_ExcVectRam_START = ABSOLUTE(.);
    KEEP(*(*.brsExcVectRam))
    . = ALIGN(8);
    _Brs_ExcVectRam_END = ABSOLUTE(. - 1);
    _Brs_ExcVectRam_LIMIT = ABSOLUTE(.);
    . += 16;
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
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
    . += 36864;
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

  .MSR_CODE :
  {
    _MSR_CODE_START = ABSOLUTE(.);
    *(*.MSR_CODE)
    _MSR_CODE_END = ABSOLUTE(. - 1);
    _MSR_CODE_LIMIT = ABSOLUTE(.);
  } > BmRomArea

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
  } > BmRomArea

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
  } > BmRomArea

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
  } > BmRomArea

  .sdata2 : FLAGS(arsl)
  {
    _sdata2_START = ABSOLUTE(.);
    *(*.sdata2)
    *(.sdata2.*)
    _sdata2_END = ABSOLUTE(. - 1);
    _sdata2_LIMIT = ABSOLUTE(.);
  } > BmRomArea

  .srodata : FLAGS(arsl)
  {
    _srodata_START = ABSOLUTE(.);
    *(*.srodata)
    *(.srodata.*)
    _srodata_END = ABSOLUTE(. - 1);
    _srodata_LIMIT = ABSOLUTE(.);
  } > BmRomArea

  .text : FLAGS(axl)
  {
    _text_START = ABSOLUTE(.);
    *(*.text)
    *(.text.*)
    _text_END = ABSOLUTE(. - 1);
    _text_LIMIT = ABSOLUTE(.);
  } > BmRomArea

  .text_vle : FLAGS(avxl)
  {
    _text_vle_START = ABSOLUTE(.);
    *(*.text_vle)
    *(.text_vle.*)
    _text_vle_END = ABSOLUTE(. - 1);
    _text_vle_LIMIT = ABSOLUTE(.);
  } > BmRomArea

  .zrodata : FLAGS(arzl)
  {
    _zrodata_START = ABSOLUTE(.);
    *(*.zrodata)
    *(.zrodata.*)
    _zrodata_END = ABSOLUTE(. - 1);
    _zrodata_LIMIT = ABSOLUTE(.);
  } > BmRomArea

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
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
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
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
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
  } > RamDsprCpu0_LLDAppl_Data_Bss AT> BmRomArea
  _zdata_ROM_START = LOADADDR(.zdata);
  _zdata_ROM_LIMIT = LOADADDR(.zdata) + SIZEOF(.zdata);

  _Data_Default_ALL_START = _bss_START;
  _Data_Default_ALL_END = _zdata_END;
  _Data_Default_ALL_LIMIT = _zdata_LIMIT;

}


