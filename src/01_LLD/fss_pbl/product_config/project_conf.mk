#--- List of sources' files to be excluded
S_BLACKLIST = $(S_BLACKLIST_SDC)

#=====================================================
# To avoid to compile specified file in - Gendata/src    
#=====================================================
# S_BLACKLIST   += Port_PBcfg.c
# S_BLACKLIST   += Mcu_PBcfg.c
# S_BLACKLIST   += Mcu_17_TimerIp_Cfg.c
  S_BLACKLIST   += Gpt_PBcfg.c
# S_BLACKLIST   += Fls_17_Dmu_PBcfg.c
# S_BLACKLIST   += Fee_PBcfg.c
# S_BLACKLIST   += Dio_Lcfg.c


#=====================================================
# To avoid to compile specified file in - Gendata     
#=====================================================
# S_BLACKLIST   += FblBmHdr_Lcfg.c
# S_BLACKLIST   += FblBm_Lcfg.c
# S_BLACKLIST   += Fbl_Lbt.c
# S_BLACKLIST   += Fbl_Fbt.c
# S_BLACKLIST   += FblCw_Lcfg.c
# S_BLACKLIST   += FblCw_PBcfg.c
# S_BLACKLIST   += BswM_Callout_Stubs.c
# S_BLACKLIST   += BswM_Lcfg.c
# S_BLACKLIST   += Can_Lcfg.c
# S_BLACKLIST   += Can_PBcfg.c
# S_BLACKLIST   += CanIf.c
# S_BLACKLIST   += CanIf_Lcfg.c
# S_BLACKLIST   += CanIf_PBcfg.c
# S_BLACKLIST   += CanSM_Lcfg.c
# S_BLACKLIST   += CanTrcv_30_GenericCan_Cfg.c
# S_BLACKLIST   += Com_Lcfg.c
# S_BLACKLIST   += Com_PBcfg.c
# S_BLACKLIST   += ComM_Lcfg.c
# S_BLACKLIST   += ComM_PBcfg.c
# S_BLACKLIST   += Dem_Lcfg.c
# S_BLACKLIST   += Dem_PBcfg.c
# S_BLACKLIST   += Det_Cfg.c
# S_BLACKLIST   += EcuM_Callout_Stubs.c
# S_BLACKLIST   += EcuM_Cfg.c
# S_BLACKLIST   += EcuM_Init_Cfg.c
# S_BLACKLIST   += EcuM_Init_PBcfg.c
# S_BLACKLIST   += EcuM_PBcfg.c
# S_BLACKLIST   += MemIf_Cfg.c
# S_BLACKLIST   += NvM_Cfg.c
# S_BLACKLIST   += Os_AccessCheck_Lcfg.c
# S_BLACKLIST   += Os_Alarm_Lcfg.c
# S_BLACKLIST   += Os_Application_Lcfg.c
# S_BLACKLIST   += Os_Barrier_Lcfg.c
# S_BLACKLIST   += Os_Core_Lcfg.c
# S_BLACKLIST   += Os_Counter_Lcfg.c
# S_BLACKLIST   += Os_Error_Lcfg.c
# S_BLACKLIST   += Os_Hal_Context_Lcfg.c
# S_BLACKLIST   += Os_Hal_Core_Lcfg.c
# S_BLACKLIST   += Os_Hal_Entry_Lcfg.c
# S_BLACKLIST   += Os_Hal_Interrupt_Lcfg.c
# S_BLACKLIST   += Os_Hal_Kernel_Lcfg.c
# S_BLACKLIST   += Os_Hal_MemoryProtection_Lcfg.c
# S_BLACKLIST   += Os_Hal_Timer_Lcfg.c
# S_BLACKLIST   += Os_Hook_Lcfg.c
# S_BLACKLIST   += Os_Ioc_Lcfg.c
# S_BLACKLIST   += Os_Isr_Lcfg.c
# S_BLACKLIST   += Os_MemoryProtection_Lcfg.c
# S_BLACKLIST   += Os_Peripheral_Lcfg.c
# S_BLACKLIST   += Os_Resource_Lcfg.c
# S_BLACKLIST   += Os_Scheduler_Lcfg.c
# S_BLACKLIST   += Os_ScheduleTable_Lcfg.c
# S_BLACKLIST   += Os_ServiceFunction_Lcfg.c
# S_BLACKLIST   += Os_Spinlock_Lcfg.c
# S_BLACKLIST   += Os_Stack_Lcfg.c
# S_BLACKLIST   += Os_Task_Lcfg.c
# S_BLACKLIST   += Os_TimingProtection_Lcfg.c
# S_BLACKLIST   += Os_Trace_Lcfg.c
# S_BLACKLIST   += Os_XSignal_Lcfg.c
# S_BLACKLIST   += PduR_Lcfg.c
# S_BLACKLIST   += PduR_PBcfg.c
# S_BLACKLIST   += Rte.c
# S_BLACKLIST   += Rte_ASILApplication_OsCore0.c
# S_BLACKLIST   += Rte_CybApplication_OsCore5.c
# S_BLACKLIST   += Rte_QMApplication_OsCore0.c
# S_BLACKLIST   += Rte_QMApplication_OsCore4.c
# S_BLACKLIST   += Rte_SystemApplication_OsCore1.c
# S_BLACKLIST   += Rte_SystemApplication_OsCore2.c
# S_BLACKLIST   += Rte_SystemApplication_OsCore3.c
# S_BLACKLIST   += vLinkGen_Lcfg.c
# S_BLACKLIST   += WdgIf_Lcfg.c
# S_BLACKLIST   += WdgM_Cfg.c
# S_BLACKLIST   += WdgM_StatusNotifications_Core0.c
  
  
#--- Mains objects files to be linked without archiving.

OBJS = $(OBJS_sdc) 
# OBJS = $(OBJS_sdc)


LAYERS =  gendata $(LAYERS_sdc) 


#--- Sources/headers root directory; no more than one for each layer.

SRC_gendata  = gendata





#--------------------------------------------------



include product_config/project_hdr.mk  


#--- Visible directories








