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
  FlashDrvArea : ORIGIN = 0x70000000 , LENGTH = 0x00000C00 /* 3 KiB */
  EepDummy : ORIGIN = 0x70001C00 , LENGTH = 0x00000100 /* 256 Byte */
  MagicFlag : ORIGIN = 0x70003C00 , LENGTH = 0x00000008 /* 8 Byte */
  Ram_StackC0 : ORIGIN = 0x70003C40 , LENGTH = 0x00009000 /* 36 KiB */
  DefaultRamArea : ORIGIN = 0x7000CC40 , LENGTH = 0x00012000 /* 72 KiB */
  BmRom_Startup : ORIGIN = 0x80000000 , LENGTH = 0x00000300 /* 768 Byte */
  BmRomArea : ORIGIN = 0x80000300 , LENGTH = 0x00007CDE /* 31 KiB */
  BmHeader : ORIGIN = 0x80007FE0 , LENGTH = 0x00000020 /* 32 Byte */
  FblHeader : ORIGIN = 0xA0020000 , LENGTH = 0x00000020 /* 32 Byte */
  FblBmHdrHeader : ORIGIN = 0xA0020020 , LENGTH = 0x00000020 /* 32 Byte */
  FblRomStartup : ORIGIN = 0xA0020040 , LENGTH = 0x00000400 /* 1024 Byte */
  FblRomArea : ORIGIN = 0xA0020440 , LENGTH = 0x0005EBC0 /* 379 KiB */
  FblReserved : ORIGIN = 0xA007F000 , LENGTH = 0x00000FC0 /* 4 KiB */
  FblBlockValPresencePattern : ORIGIN = 0xA007FFC0 , LENGTH = 0x00000040 /* 64 Byte */
  ApplVect : ORIGIN = 0xA0080000 , LENGTH = 0x00000008 /* 8 Byte */
  ApplReserved_Alignment : ORIGIN = 0xA0080008 , LENGTH = 0x000000F8 /* 248 Byte */
  ApplCoreExceptions_FirstExecInst : ORIGIN = 0xA0080100 , LENGTH = 0x00000200 /* 512 Byte */
  ApplStartupCode_FirstExecInst : ORIGIN = 0xA0080300 , LENGTH = 0x00000500 /* 1 KiB */
  ApplRomArea : ORIGIN = 0xA0080800 , LENGTH = 0x0007F300 /* 509 KiB */
  ApplBmHdrHeader : ORIGIN = 0xA00FFB00 , LENGTH = 0x00000020 /* 32 Byte */
  ApplReserved : ORIGIN = 0xA00FFB20 , LENGTH = 0x000004E0 /* 1 KiB */
  BMHD0 : ORIGIN = 0xAF400000 , LENGTH = 0x00000200 /* 512 Byte */
}

SECTIONS
{
  .FblBmHdrHeaderGroup :
  {
    _FblBmHdrHeaderGroup_START = ABSOLUTE(.);
    KEEP(*(*.BmHdrHeaderSection))
    _FblBmHdrHeaderGroup_END = ABSOLUTE(. - 1);
    _FblBmHdrHeaderGroup_LIMIT = ABSOLUTE(.);
  } > ApplBmHdrHeader

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
  } > DefaultRamArea AT> ApplRomArea
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
  } > ApplStartupCode_FirstExecInst

  .BrsMain_Startup_Code :
  {
    _BrsMain_Startup_Code_START = ABSOLUTE(.);
    *(*.brsMainStartup)
    _BrsMain_Startup_Code_END = ABSOLUTE(. - 1);
    _BrsMain_Startup_Code_LIMIT = ABSOLUTE(.);
  } > ApplStartupCode_FirstExecInst

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
  } > DefaultRamArea AT> ApplRomArea
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
  } > ApplVect

  _Appl_ApplVect_ALL_START = _APPLVECT_START;
  _Appl_ApplVect_ALL_END = _APPLVECT_END;
  _Appl_ApplVect_ALL_LIMIT = _APPLVECT_LIMIT;

  RESETVECT = Brs_ApplicationEntry;
  _start = Brs_ApplicationEntry;

  _Brs_ExcVect_START = _Brs_ExcVectRam_ROM_START;

  .Brs_ExcVectRam : ALIGN(256)
  {
    _Brs_ExcVectRam_START = ABSOLUTE(.);
    KEEP(*(*.brsExcVectRam))
    . = ALIGN(8);
    _Brs_ExcVectRam_END = ABSOLUTE(. - 1);
    _Brs_ExcVectRam_LIMIT = ABSOLUTE(.);
    . += 16;
  } > DefaultRamArea AT> ApplRomArea
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
  } > DefaultRamArea

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
  } > EepDummy

  _EepDummyVarGroup_ALL_START = _EepDummyVarGroup_START;
  _EepDummyVarGroup_ALL_END = _EepDummyVarGroup_END;
  _EepDummyVarGroup_ALL_LIMIT = _EepDummyVarGroup_LIMIT;

  .FlashDrvSectionGroup : ALIGN(16)
  {
    _FlashDrvSectionGroup_START = ABSOLUTE(.);
    *(*.FblFlashDrvSection)
    _FlashDrvSectionGroup_END = ABSOLUTE(. - 1);
    _FlashDrvSectionGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

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
  } > MagicFlag

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
  } > Ram_StackC0

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
  } > ApplRomArea

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
  } > ApplRomArea

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
  } > ApplRomArea

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
  } > ApplRomArea

  .sdata2 : FLAGS(arsl)
  {
    _sdata2_START = ABSOLUTE(.);
    *(*.sdata2)
    *(.sdata2.*)
    _sdata2_END = ABSOLUTE(. - 1);
    _sdata2_LIMIT = ABSOLUTE(.);
  } > ApplRomArea

  .srodata : FLAGS(arsl)
  {
    _srodata_START = ABSOLUTE(.);
    *(*.srodata)
    *(.srodata.*)
    _srodata_END = ABSOLUTE(. - 1);
    _srodata_LIMIT = ABSOLUTE(.);
  } > ApplRomArea

  .text : FLAGS(axl)
  {
    _text_START = ABSOLUTE(.);
    *(*.text)
    *(.text.*)
    _text_END = ABSOLUTE(. - 1);
    _text_LIMIT = ABSOLUTE(.);
  } > ApplRomArea

  .text_vle : FLAGS(avxl)
  {
    _text_vle_START = ABSOLUTE(.);
    *(*.text_vle)
    *(.text_vle.*)
    _text_vle_END = ABSOLUTE(. - 1);
    _text_vle_LIMIT = ABSOLUTE(.);
  } > ApplRomArea

  .zrodata : FLAGS(arzl)
  {
    _zrodata_START = ABSOLUTE(.);
    *(*.zrodata)
    *(.zrodata.*)
    _zrodata_END = ABSOLUTE(. - 1);
    _zrodata_LIMIT = ABSOLUTE(.);
  } > ApplRomArea

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
  } > DefaultRamArea

  .data : ALIGN(16) FLAGS(awl)
  {
    _data_START = ABSOLUTE(.);
    *(*.data)
    *(.data.*)
    . = ALIGN(4);
    _data_END = ABSOLUTE(. - 1);
    _data_LIMIT = ABSOLUTE(.);
  } > DefaultRamArea AT> ApplRomArea
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
  } > DefaultRamArea

  .sdata : ALIGN(16) FLAGS(awsl)
  {
    _sdata_START = ABSOLUTE(.);
    *(*.sdata)
    *(.sdata.*)
    . = ALIGN(4);
    _sdata_END = ABSOLUTE(. - 1);
    _sdata_LIMIT = ABSOLUTE(.);
  } > DefaultRamArea AT> ApplRomArea
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
  } > DefaultRamArea

  .zdata : ALIGN(16) FLAGS(awzl)
  {
    _zdata_START = ABSOLUTE(.);
    *(*.zdata)
    *(.zdata.*)
    . = ALIGN(4);
    _zdata_END = ABSOLUTE(. - 1);
    _zdata_LIMIT = ABSOLUTE(.);
  } > DefaultRamArea AT> ApplRomArea
  _zdata_ROM_START = LOADADDR(.zdata);
  _zdata_ROM_LIMIT = LOADADDR(.zdata) + SIZEOF(.zdata);

  _Data_Default_ALL_START = _bss_START;
  _Data_Default_ALL_END = _zdata_END;
  _Data_Default_ALL_LIMIT = _zdata_LIMIT;

}


