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
  .FlashDrvHeaderSectionGroup :
  {
    _FlashDrvHeaderSectionGroup_START = ABSOLUTE(.);
    *(*.FlashDrvHeaderSection)
    _FlashDrvHeaderSectionGroup_END = ABSOLUTE(. - 1);
    _FlashDrvHeaderSectionGroup_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_FlashDrvArea

  _FlashDrv_Header_ALL_START = _FlashDrvHeaderSectionGroup_START;
  _FlashDrv_Header_ALL_END = _FlashDrvHeaderSectionGroup_END;
  _FlashDrv_Header_ALL_LIMIT = _FlashDrvHeaderSectionGroup_LIMIT;

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

  __HEAP = 8;
  __HEAP_END = 8;

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
  } > RamDsprCpu0_FlashDrvArea

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
  } > RamDsprCpu0_FlashDrvArea

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
  } > RamDsprCpu0_FlashDrvArea

  _FlashDrv_Const_ALL_START = _FlashDrv_ConstGroup_START;
  _FlashDrv_Const_ALL_END = _FlashDrv_ConstGroup_END;
  _FlashDrv_Const_ALL_LIMIT = _FlashDrv_ConstGroup_LIMIT;

  .FlashDrv_SpecialCodeGroup : FLAGS(axl)
  {
    _FlashDrv_SpecialCodeGroup_START = ABSOLUTE(.);
    *(*.traptab)
    _FlashDrv_SpecialCodeGroup_END = ABSOLUTE(. - 1);
    _FlashDrv_SpecialCodeGroup_LIMIT = ABSOLUTE(.);
  } > RamDsprCpu0_FlashDrvArea

  _FlashDrv_SpecialCode_ALL_START = _FlashDrv_SpecialCodeGroup_START;
  _FlashDrv_SpecialCode_ALL_END = _FlashDrv_SpecialCodeGroup_END;
  _FlashDrv_SpecialCode_ALL_LIMIT = _FlashDrv_SpecialCodeGroup_LIMIT;

  brsStartupEntry = 0;

  brsStartupEntry = 0;

}


