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
  .FlashDrvHeaderSectionGroup :
  {
    _FlashDrvHeaderSectionGroup_START = ABSOLUTE(.);
    *(*.FlashDrvHeaderSection)
    _FlashDrvHeaderSectionGroup_END = ABSOLUTE(. - 1);
    _FlashDrvHeaderSectionGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

  _FlashDrv_Header_ALL_START = _FlashDrvHeaderSectionGroup_START;
  _FlashDrv_Header_ALL_END = _FlashDrvHeaderSectionGroup_END;
  _FlashDrv_Header_ALL_LIMIT = _FlashDrvHeaderSectionGroup_LIMIT;

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

  __HEAP = 8;
  __HEAP_END = 8;

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

  .FlashDrv_DataGroup : ALIGN(16)
  {
    _FlashDrv_DataGroup_START = ABSOLUTE(.);
    *(*.bss)
    *(.bss.*)
    *(COMMON)
    *(*.data)
    *(.data.*)
    *(*.sdata)
    *(.sdata.*)
    *(*.zbss)
    *(*.zdata)
    *(.zdata.*)
    _FlashDrv_DataGroup_END = ABSOLUTE(. - 1);
    _FlashDrv_DataGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

  _FlashDrvGroup_ALL_START = _FlashDrv_DataGroup_START;
  _FlashDrvGroup_ALL_END = _FlashDrv_DataGroup_END;
  _FlashDrvGroup_ALL_LIMIT = _FlashDrv_DataGroup_LIMIT;

  .FlashDrv_CodeGroup : FLAGS(axl)
  {
    _FlashDrv_CodeGroup_START = ABSOLUTE(.);
    *(*.text)
    *(.text.*)
    *(*.text_vle)
    *(.text_vle.*)
    _FlashDrv_CodeGroup_END = ABSOLUTE(. - 1);
    _FlashDrv_CodeGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

  _FlashDrv_Code_ALL_START = _FlashDrv_CodeGroup_START;
  _FlashDrv_Code_ALL_END = _FlashDrv_CodeGroup_END;
  _FlashDrv_Code_ALL_LIMIT = _FlashDrv_CodeGroup_LIMIT;

  .FlashDrv_ConstGroup :
  {
    _FlashDrv_ConstGroup_START = ABSOLUTE(.);
    *(*.rodata)
    *(.rodata.*)
    *(*.sdata2)
    *(.sdata2.*)
    *(*.srodata)
    *(.srodata.*)
    *(*.zrodata)
    *(.zrodata.*)
    _FlashDrv_ConstGroup_END = ABSOLUTE(. - 1);
    _FlashDrv_ConstGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

  _FlashDrv_Const_ALL_START = _FlashDrv_ConstGroup_START;
  _FlashDrv_Const_ALL_END = _FlashDrv_ConstGroup_END;
  _FlashDrv_Const_ALL_LIMIT = _FlashDrv_ConstGroup_LIMIT;

  .FlashDrv_SpecialCodeGroup : FLAGS(axl)
  {
    _FlashDrv_SpecialCodeGroup_START = ABSOLUTE(.);
    *(*.traptab)
    _FlashDrv_SpecialCodeGroup_END = ABSOLUTE(. - 1);
    _FlashDrv_SpecialCodeGroup_LIMIT = ABSOLUTE(.);
  } > FlashDrvArea

  _FlashDrv_SpecialCode_ALL_START = _FlashDrv_SpecialCodeGroup_START;
  _FlashDrv_SpecialCode_ALL_END = _FlashDrv_SpecialCodeGroup_END;
  _FlashDrv_SpecialCode_ALL_LIMIT = _FlashDrv_SpecialCodeGroup_LIMIT;

  brsStartupEntry = 0;

  brsStartupEntry = 0;

}


