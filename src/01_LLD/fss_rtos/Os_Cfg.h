/*
 * This is Os_Cfg.h, auto-generated for:
 *   Project: Ford_Traction_Inverter_Configuration
 *   Target:  TriCoreHighTec
 *   Variant: TC37x
 *   Version: 5.0.28
 *   [$UKS 650]
 */
#ifndef OS_CFG_H
#define OS_CFG_H
/*
 * Note that only documented OS APIs are considered to be public.
 * Functions and data in OS header files that are not documented should not be used in
 * non-OS code.
 */
/* -- Start expansion of <Os_Safe_Cfg.h> -- */
/* -- Start expansion of <Os_Target_Cfg.h> -- */
#define OS_TARGET_TRICOREHIGHTEC
#define OS_TRICORE_UNTRUSTED_MASK OS_UNTRUSTED_TMASK
#define OS_TRICORE_TRUSTEDWITHPROTECTION_MASK OS_TWP_TMASK
#define OS_CAT1_TRACKER_DefaultInterruptHandler Os_RunningCat1ISR0
#define OS_CAT1_ID_DefaultInterruptHandler ((uint32)INVALID_ISR)
#define OS_INIT_SRC_GPSR06 (0x1c01U)
#define OS_INIT_SRC_GPSR05 (0x1401U)
#define OS_INIT_SRC_GPSR00 (0x401U)
#define OS_INIT_SRC_GPSR02 (0x1402U)
#define OS_INIT_SRC_GPSR01 (0x1403U)
#define OS_INIT_SRC_GPSR04 (0x1c04U)
#define OS_INIT_SRC_GPSR03 (0x1c05U)
#define OS_INIT_SRC_DMACH11 (0x406U)
#define OS_INIT_SRC_DMACH12 (0x407U)
#define OS_INIT_SRC_DMACH13 (0x408U)
#define OS_INIT_SRC_DMACH14 (0x409U)
#define OS_INIT_SRC_DMACH15 (0x40aU)
#define OS_INIT_SRC_DMACH16 (0x40bU)
#define OS_INIT_SRC_DMACH17 (0x40cU)
#define OS_INIT_SRC_DMACH18 (0x40dU)
#define OS_INIT_SRC_DMACH19 (0x40eU)
#define OS_INIT_SRC_DMACH20 (0x40fU)
#define OS_INIT_SRC_DMACH21 (0x410U)
#define OS_INIT_SRC_DMACH22 (0x411U)
#define OS_INIT_SRC_DMACH23 (0x412U)
#define OS_INIT_SRC_DMACH24 (0x413U)
#define OS_INIT_SRC_DMACH25 (0x414U)
#define OS_INIT_SRC_DMACH26 (0x415U)
#define OS_INIT_SRC_DMACH27 (0x416U)
#define OS_INIT_SRC_DMACH28 (0x417U)
#define OS_INIT_SRC_DMACH29 (0x418U)
#define OS_INIT_SRC_DMACH30 (0x419U)
#define OS_INIT_SRC_DMACH31 (0x41aU)
#define OS_INIT_SRC_DMACH32 (0x41bU)
#define OS_INIT_SRC_DMACH33 (0x41cU)
#define OS_INIT_SRC_QSPI2ERR (0x41dU)
#define OS_INIT_SRC_DMACH34 (0x41eU)
#define OS_INIT_SRC_DMACH35 (0x41fU)
#define OS_INIT_SRC_DMACH36 (0x420U)
#define OS_INIT_SRC_DMACH37 (0x421U)
#define OS_INIT_SRC_CAN0INT0 (0x422U)
#define OS_INIT_SRC_CAN0INT1 (0x423U)
#define OS_INIT_SRC_CAN0INT2 (0x424U)
#define OS_INIT_SRC_CAN0INT3 (0x425U)
#define OS_INIT_SRC_CAN0INT4 (0x426U)
#define OS_INIT_SRC_CAN0INT5 (0x427U)
#define OS_INIT_SRC_CAN0INT6 (0x428U)
#define OS_INIT_SRC_CAN0INT7 (0x429U)
#define OS_INIT_SRC_CAN0INT8 (0x42aU)
#define OS_INIT_SRC_CAN0INT9 (0x42bU)
#define OS_INIT_SRC_CAN0INT10 (0x42cU)
#define OS_INIT_SRC_CAN0INT11 (0x42dU)
#define OS_INIT_SRC_CAN0INT12 (0x42eU)
#define OS_INIT_SRC_CAN0INT13 (0x42fU)
#define OS_INIT_SRC_CAN0INT14 (0x430U)
#define OS_INIT_SRC_CAN0INT15 (0x431U)
#define OS_INIT_SRC_CAN1INT0 (0x432U)
#define OS_INIT_SRC_CAN1INT1 (0x433U)
#define OS_INIT_SRC_CAN1INT2 (0x434U)
#define OS_INIT_SRC_CAN1INT3 (0x435U)
#define OS_INIT_SRC_CAN1INT4 (0x436U)
#define OS_INIT_SRC_CAN1INT5 (0x437U)
#define OS_INIT_SRC_CAN1INT6 (0x438U)
#define OS_INIT_SRC_CAN1INT7 (0x439U)
#define OS_INIT_SRC_CAN1INT8 (0x43aU)
#define OS_INIT_SRC_CAN1INT9 (0x43bU)
#define OS_INIT_SRC_CAN1INT10 (0x43cU)
#define OS_INIT_SRC_CAN1INT11 (0x43dU)
#define OS_INIT_SRC_CAN1INT12 (0x43eU)
#define OS_INIT_SRC_CAN1INT13 (0x43fU)
#define OS_INIT_SRC_CAN1INT14 (0x440U)
#define OS_INIT_SRC_CAN1INT15 (0x441U)
#define OS_INIT_SRC_GTMATOM30 (0x442U)
#define OS_INIT_SRC_GTMATOM00 (0x443U)
#define OS_INIT_SRC_GTMATOM01 (0x444U)
#define OS_INIT_SRC_GTMATOM02 (0x445U)
#define OS_INIT_SRC_GTMATOM03 (0x446U)
#define OS_INIT_SRC_STM0SR0 (0x447U)
#define OS_INIT_SRC_STM1SR0 (0x1447U)
#define OS_INIT_SRC_STM2SR0 (0x1c47U)
#define OS_INIT_SRC_SCUERU0 (0x448U)
#define OS_VEC_Os_CrossCoreISR2 (1U)
#define OS_CORE_Os_CrossCoreISR2 (2U)
#define OS_BISR_Os_CrossCoreISR2 (1U)
#define OS_VEC_Os_CrossCoreISR1 (1U)
#define OS_CORE_Os_CrossCoreISR1 (1U)
#define OS_BISR_Os_CrossCoreISR1 (1U)
#define OS_VEC_Os_CrossCoreISR0 (1U)
#define OS_CORE_Os_CrossCoreISR0 (0U)
#define OS_BISR_Os_CrossCoreISR0 (1U)
#define OS_VEC_ISR_MpsVadc (2U)
#define OS_CORE_ISR_MpsVadc (1U)
#define OS_BISR_ISR_MpsVadc (2U)
#define OS_VEC_ISR_MotorControl (3U)
#define OS_CORE_ISR_MotorControl (1U)
#define OS_BISR_ISR_MotorControl (3U)
#define OS_VEC_ISR_InnerLoop_2 (4U)
#define OS_CORE_ISR_InnerLoop_2 (2U)
#define OS_BISR_ISR_InnerLoop_2 (4U)
#define OS_VEC_ISR_OuterLoop (5U)
#define OS_CORE_ISR_OuterLoop (2U)
#define OS_BISR_ISR_OuterLoop (5U)
#define OS_VEC_DMACH11SR_ISR (6U)
#define OS_CORE_DMACH11SR_ISR (0U)
#define OS_BISR_DMACH11SR_ISR (6U)
#define OS_VEC_DMACH12SR_ISR (7U)
#define OS_CORE_DMACH12SR_ISR (0U)
#define OS_BISR_DMACH12SR_ISR (7U)
#define OS_VEC_DMACH13SR_ISR (8U)
#define OS_CORE_DMACH13SR_ISR (0U)
#define OS_BISR_DMACH13SR_ISR (8U)
#define OS_VEC_DMACH14SR_ISR (9U)
#define OS_CORE_DMACH14SR_ISR (0U)
#define OS_BISR_DMACH14SR_ISR (9U)
#define OS_VEC_DMACH15SR_ISR (10U)
#define OS_CORE_DMACH15SR_ISR (0U)
#define OS_BISR_DMACH15SR_ISR (10U)
#define OS_VEC_DMACH16SR_ISR (11U)
#define OS_CORE_DMACH16SR_ISR (0U)
#define OS_BISR_DMACH16SR_ISR (11U)
#define OS_VEC_DMACH17SR_ISR (12U)
#define OS_CORE_DMACH17SR_ISR (0U)
#define OS_BISR_DMACH17SR_ISR (12U)
#define OS_VEC_DMACH18SR_ISR (13U)
#define OS_CORE_DMACH18SR_ISR (0U)
#define OS_BISR_DMACH18SR_ISR (13U)
#define OS_VEC_DMACH19SR_ISR (14U)
#define OS_CORE_DMACH19SR_ISR (0U)
#define OS_BISR_DMACH19SR_ISR (14U)
#define OS_VEC_DMACH20SR_ISR (15U)
#define OS_CORE_DMACH20SR_ISR (0U)
#define OS_BISR_DMACH20SR_ISR (15U)
#define OS_VEC_DMACH21SR_ISR (16U)
#define OS_CORE_DMACH21SR_ISR (0U)
#define OS_BISR_DMACH21SR_ISR (16U)
#define OS_VEC_DMACH22SR_ISR (17U)
#define OS_CORE_DMACH22SR_ISR (0U)
#define OS_BISR_DMACH22SR_ISR (17U)
#define OS_VEC_DMACH23SR_ISR (18U)
#define OS_CORE_DMACH23SR_ISR (0U)
#define OS_BISR_DMACH23SR_ISR (18U)
#define OS_VEC_DMACH24SR_ISR (19U)
#define OS_CORE_DMACH24SR_ISR (0U)
#define OS_BISR_DMACH24SR_ISR (19U)
#define OS_VEC_DMACH25SR_ISR (20U)
#define OS_CORE_DMACH25SR_ISR (0U)
#define OS_BISR_DMACH25SR_ISR (20U)
#define OS_VEC_DMACH26SR_ISR (21U)
#define OS_CORE_DMACH26SR_ISR (0U)
#define OS_BISR_DMACH26SR_ISR (21U)
#define OS_VEC_DMACH27SR_ISR (22U)
#define OS_CORE_DMACH27SR_ISR (0U)
#define OS_BISR_DMACH27SR_ISR (22U)
#define OS_VEC_DMACH28SR_ISR (23U)
#define OS_CORE_DMACH28SR_ISR (0U)
#define OS_BISR_DMACH28SR_ISR (23U)
#define OS_VEC_DMACH29SR_ISR (24U)
#define OS_CORE_DMACH29SR_ISR (0U)
#define OS_BISR_DMACH29SR_ISR (24U)
#define OS_VEC_DMACH30SR_ISR (25U)
#define OS_CORE_DMACH30SR_ISR (0U)
#define OS_BISR_DMACH30SR_ISR (25U)
#define OS_VEC_DMACH31SR_ISR (26U)
#define OS_CORE_DMACH31SR_ISR (0U)
#define OS_BISR_DMACH31SR_ISR (26U)
#define OS_VEC_DMACH32SR_ISR (27U)
#define OS_CORE_DMACH32SR_ISR (0U)
#define OS_BISR_DMACH32SR_ISR (27U)
#define OS_VEC_DMACH33SR_ISR (28U)
#define OS_CORE_DMACH33SR_ISR (0U)
#define OS_BISR_DMACH33SR_ISR (29U)
#define OS_VEC_QSPI2ERR_ISR (29U)
#define OS_CORE_QSPI2ERR_ISR (0U)
#define OS_BISR_QSPI2ERR_ISR (29U)
#define OS_VEC_DMACH34SR_ISR (30U)
#define OS_CORE_DMACH34SR_ISR (0U)
#define OS_BISR_DMACH34SR_ISR (30U)
#define OS_VEC_DMACH35SR_ISR (31U)
#define OS_CORE_DMACH35SR_ISR (0U)
#define OS_BISR_DMACH35SR_ISR (31U)
#define OS_VEC_DMACH36SR_ISR (32U)
#define OS_CORE_DMACH36SR_ISR (0U)
#define OS_BISR_DMACH36SR_ISR (32U)
#define OS_VEC_DMACH37SR_ISR (33U)
#define OS_CORE_DMACH37SR_ISR (0U)
#define OS_BISR_DMACH37SR_ISR (33U)
#define OS_VEC_CAN0SR0_ISR (34U)
#define OS_CORE_CAN0SR0_ISR (0U)
#define OS_BISR_CAN0SR0_ISR (34U)
#define OS_VEC_CAN0SR1_ISR (35U)
#define OS_CORE_CAN0SR1_ISR (0U)
#define OS_BISR_CAN0SR1_ISR (35U)
#define OS_VEC_CAN0SR2_ISR (36U)
#define OS_CORE_CAN0SR2_ISR (0U)
#define OS_BISR_CAN0SR2_ISR (36U)
#define OS_VEC_CAN0SR3_ISR (37U)
#define OS_CORE_CAN0SR3_ISR (0U)
#define OS_BISR_CAN0SR3_ISR (37U)
#define OS_VEC_CAN0SR4_ISR (38U)
#define OS_CORE_CAN0SR4_ISR (0U)
#define OS_BISR_CAN0SR4_ISR (38U)
#define OS_VEC_CAN0SR5_ISR (39U)
#define OS_CORE_CAN0SR5_ISR (0U)
#define OS_BISR_CAN0SR5_ISR (39U)
#define OS_VEC_CAN0SR6_ISR (40U)
#define OS_CORE_CAN0SR6_ISR (0U)
#define OS_BISR_CAN0SR6_ISR (40U)
#define OS_VEC_CAN0SR7_ISR (41U)
#define OS_CORE_CAN0SR7_ISR (0U)
#define OS_BISR_CAN0SR7_ISR (41U)
#define OS_VEC_CAN0SR8_ISR (42U)
#define OS_CORE_CAN0SR8_ISR (0U)
#define OS_BISR_CAN0SR8_ISR (42U)
#define OS_VEC_CAN0SR9_ISR (43U)
#define OS_CORE_CAN0SR9_ISR (0U)
#define OS_BISR_CAN0SR9_ISR (43U)
#define OS_VEC_CAN0SR10_ISR (44U)
#define OS_CORE_CAN0SR10_ISR (0U)
#define OS_BISR_CAN0SR10_ISR (44U)
#define OS_VEC_CAN0SR11_ISR (45U)
#define OS_CORE_CAN0SR11_ISR (0U)
#define OS_BISR_CAN0SR11_ISR (45U)
#define OS_VEC_CAN0SR12_ISR (46U)
#define OS_CORE_CAN0SR12_ISR (0U)
#define OS_BISR_CAN0SR12_ISR (46U)
#define OS_VEC_CAN0SR13_ISR (47U)
#define OS_CORE_CAN0SR13_ISR (0U)
#define OS_BISR_CAN0SR13_ISR (47U)
#define OS_VEC_CAN0SR14_ISR (48U)
#define OS_CORE_CAN0SR14_ISR (0U)
#define OS_BISR_CAN0SR14_ISR (48U)
#define OS_VEC_CAN0SR15_ISR (49U)
#define OS_CORE_CAN0SR15_ISR (0U)
#define OS_BISR_CAN0SR15_ISR (49U)
#define OS_VEC_CAN1SR0_ISR (50U)
#define OS_CORE_CAN1SR0_ISR (0U)
#define OS_BISR_CAN1SR0_ISR (50U)
#define OS_VEC_CAN1SR1_ISR (51U)
#define OS_CORE_CAN1SR1_ISR (0U)
#define OS_BISR_CAN1SR1_ISR (51U)
#define OS_VEC_CAN1SR2_ISR (52U)
#define OS_CORE_CAN1SR2_ISR (0U)
#define OS_BISR_CAN1SR2_ISR (52U)
#define OS_VEC_CAN1SR3_ISR (53U)
#define OS_CORE_CAN1SR3_ISR (0U)
#define OS_BISR_CAN1SR3_ISR (53U)
#define OS_VEC_CAN1SR4_ISR (54U)
#define OS_CORE_CAN1SR4_ISR (0U)
#define OS_BISR_CAN1SR4_ISR (54U)
#define OS_VEC_CAN1SR5_ISR (55U)
#define OS_CORE_CAN1SR5_ISR (0U)
#define OS_BISR_CAN1SR5_ISR (55U)
#define OS_VEC_CAN1SR6_ISR (56U)
#define OS_CORE_CAN1SR6_ISR (0U)
#define OS_BISR_CAN1SR6_ISR (56U)
#define OS_VEC_CAN1SR7_ISR (57U)
#define OS_CORE_CAN1SR7_ISR (0U)
#define OS_BISR_CAN1SR7_ISR (57U)
#define OS_VEC_CAN1SR8_ISR (58U)
#define OS_CORE_CAN1SR8_ISR (0U)
#define OS_BISR_CAN1SR8_ISR (58U)
#define OS_VEC_CAN1SR9_ISR (59U)
#define OS_CORE_CAN1SR9_ISR (0U)
#define OS_BISR_CAN1SR9_ISR (59U)
#define OS_VEC_CAN1SR10_ISR (60U)
#define OS_CORE_CAN1SR10_ISR (0U)
#define OS_BISR_CAN1SR10_ISR (60U)
#define OS_VEC_CAN1SR11_ISR (61U)
#define OS_CORE_CAN1SR11_ISR (0U)
#define OS_BISR_CAN1SR11_ISR (61U)
#define OS_VEC_CAN1SR12_ISR (62U)
#define OS_CORE_CAN1SR12_ISR (0U)
#define OS_BISR_CAN1SR12_ISR (62U)
#define OS_VEC_CAN1SR13_ISR (63U)
#define OS_CORE_CAN1SR13_ISR (0U)
#define OS_BISR_CAN1SR13_ISR (63U)
#define OS_VEC_CAN1SR14_ISR (64U)
#define OS_CORE_CAN1SR14_ISR (0U)
#define OS_BISR_CAN1SR14_ISR (64U)
#define OS_VEC_CAN1SR15_ISR (65U)
#define OS_CORE_CAN1SR15_ISR (0U)
#define OS_BISR_CAN1SR15_ISR (65U)
#define OS_VEC_WdgGptSrvISR (66U)
#define OS_CORE_WdgGptSrvISR (0U)
#define OS_BISR_WdgGptSrvISR (66U)
#define OS_VEC_GTMATOM0SR0_ISR (67U)
#define OS_CORE_GTMATOM0SR0_ISR (0U)
#define OS_BISR_GTMATOM0SR0_ISR (67U)
#define OS_VEC_GTMATOM0SR1_ISR (68U)
#define OS_CORE_GTMATOM0SR1_ISR (0U)
#define OS_BISR_GTMATOM0SR1_ISR (68U)
#define OS_VEC_GTMATOM0SR2_ISR (69U)
#define OS_CORE_GTMATOM0SR2_ISR (0U)
#define OS_BISR_GTMATOM0SR2_ISR (69U)
#define OS_VEC_GTMATOM0SR3_ISR (70U)
#define OS_CORE_GTMATOM0SR3_ISR (0U)
#define OS_BISR_GTMATOM0SR3_ISR (70U)
#define OS_VEC_OSK_OsTickISR (71U)
#define OS_CORE_OSK_OsTickISR (0U)
#define OS_BISR_OSK_OsTickISR (255U)
#define OS_VEC_SystemTimer_ISR_core1 (71U)
#define OS_CORE_SystemTimer_ISR_core1 (1U)
#define OS_BISR_SystemTimer_ISR_core1 (255U)
#define OS_VEC_SystemTimer_ISR_core2 (71U)
#define OS_CORE_SystemTimer_ISR_core2 (2U)
#define OS_BISR_SystemTimer_ISR_core2 (255U)
#define OS_VEC_SCUERUSR0_ISR (72U)
#define OS_CORE_SCUERUSR0_ISR (0U)
#define OS_BISR_SCUERUSR0_ISR (255U)
#define Os_Core0_SRN (SRC_GPSR00)
DECLARE_CAT1_ISR(Os_CrossCoreISR0);
#define Os_Core1_SRN (SRC_GPSR05)
DECLARE_CAT1_ISR(Os_CrossCoreISR1);
#define Os_Core2_SRN (SRC_GPSR06)
DECLARE_CAT1_ISR(Os_CrossCoreISR2);
#define OS_NUM_SRNS (624U)
DECLARE_CAT1_ISR(SCUERUSR0_ISR);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_0);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_1);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_2);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_3);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_4);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_5);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_6);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(RTOS_TRAP_CL_7);  /* [$TargetHT 161] */
DECLARE_CAT1_ISR(DefaultInterruptHandler);

#define OS_CAT1_TRACKER_SCUERUSR0_ISR Os_RunningCat1ISR0
#define OS_CAT1_ID_SCUERUSR0_ISR (1U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_0 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_0 (2U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_1 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_1 (3U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_2 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_2 (4U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_3 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_3 (5U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_4 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_4 (6U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_5 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_5 (7U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_6 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_6 (8U)
#define OS_CAT1_TRACKER_RTOS_TRAP_CL_7 Os_RunningCat1ISR0
#define OS_CAT1_ID_RTOS_TRAP_CL_7 (9U)




/* -- End expansion of <Os_Target_Cfg.h> -- */
#define OS_NUM_APPMODES (2U)
#define OS_NUM_APPLICATIONS (6U)
#define OS_NUM_SPINLOCKS (0U)
#define OS_NUM_TRUSTED_FUNCTIONS (31U)
#define OS_NUM_IOC_CALLBACK_FUNCTIONS (Os_const_ioc_function_count)
#define OS_NUM_EVENTS (0U)
#define OS_NUM_TASKS (16U)
#define OS_NUM_ISRS (72U)
#define OS_NUM_RESOURCES (6U)
#define OS_NUM_ALARMS (1U)
#define OS_NUM_SCHEDULETABLES (3U)
#define OS_NUM_PERIPHERALAREAS (0U)
#define OS_NUM_TRACEPOINTS (6U)
#define OS_NUM_TASKTRACEPOINTS (0U)
#define OS_NUM_INTERVALS (0U)
#define OS_NUM_TRACECATEGORIES (0U)
#define OS_TRACE_CATEGORY_ALWAYS ((Os_TraceCategoriesType)(0x80000000UL))
#define OS_TRACE_CATEGORY_NEVER  ((Os_TraceCategoriesType)(0x00000000UL))
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_TICKS2*) */
#define OS_NUM_COUNTERS (4U)
#define OSCYCLEDURATION (3.33333333333333) /* [$UKS 1224] */
#define OSCYCLESPERSECOND (300000000U) /* [$UKS 1225] */
#define OSSWTICKDURATION (10) /* [$UKS 1226] */
#define OSSWTICKSPERSECOND (100000000U) /* [$UKS 1227] */
#define OS_TICKS2NS_Counter_1ms(ticks) ((PhysicalTimeType)((ticks) * 1000000U)) /* [$UKS 843] */
#define OS_TICKS2US_Counter_1ms(ticks) ((PhysicalTimeType)((ticks) * 1000U)) /* [$UKS 843] */
#define OS_TICKS2MS_Counter_1ms(ticks) ((PhysicalTimeType)((ticks) * 1U)) /* [$UKS 843] */
#define OS_TICKS2SEC_Counter_1ms(ticks) ((PhysicalTimeType)((ticks) / 1000U)) /* [$UKS 843] */
#define OSMAXALLOWEDVALUE_Counter_1ms (100U) /* [$UKS 219] */
#define OSTICKSPERBASE_Counter_1ms (1U) /* [$UKS 220] */
#define OSTICKDURATION_Counter_1ms OS_TICKS2NS_Counter_1ms(1U) /* [$UKS 221] */
#define OSMINCYCLE_Counter_1ms (1U) /* [$UKS 222] */
#define OS_TICKS2NS_Counter_C1_100ms(ticks) ((PhysicalTimeType)((ticks) * 100000000U)) /* [$UKS 843] */
#define OS_TICKS2US_Counter_C1_100ms(ticks) ((PhysicalTimeType)((ticks) * 100000U)) /* [$UKS 843] */
#define OS_TICKS2MS_Counter_C1_100ms(ticks) ((PhysicalTimeType)((ticks) * 100U)) /* [$UKS 843] */
#define OS_TICKS2SEC_Counter_C1_100ms(ticks) ((PhysicalTimeType)((ticks) / 10U)) /* [$UKS 843] */
#define OSMAXALLOWEDVALUE_Counter_C1_100ms (10U) /* [$UKS 219] */
#define OSTICKSPERBASE_Counter_C1_100ms (1U) /* [$UKS 220] */
#define OSTICKDURATION_Counter_C1_100ms OS_TICKS2NS_Counter_C1_100ms(1U) /* [$UKS 221] */
#define OSMINCYCLE_Counter_C1_100ms (1U) /* [$UKS 222] */
#define OS_TICKS2NS_Counter_C2_100ms(ticks) ((PhysicalTimeType)((ticks) * 100000000U)) /* [$UKS 843] */
#define OS_TICKS2US_Counter_C2_100ms(ticks) ((PhysicalTimeType)((ticks) * 100000U)) /* [$UKS 843] */
#define OS_TICKS2MS_Counter_C2_100ms(ticks) ((PhysicalTimeType)((ticks) * 100U)) /* [$UKS 843] */
#define OS_TICKS2SEC_Counter_C2_100ms(ticks) ((PhysicalTimeType)((ticks) / 10U)) /* [$UKS 843] */
#define OSMAXALLOWEDVALUE_Counter_C2_100ms (10U) /* [$UKS 219] */
#define OSTICKSPERBASE_Counter_C2_100ms (1U) /* [$UKS 220] */
#define OSTICKDURATION_Counter_C2_100ms OS_TICKS2NS_Counter_C2_100ms(1U) /* [$UKS 221] */
#define OSMINCYCLE_Counter_C2_100ms (1U) /* [$UKS 222] */
#define OS_TICKS2NS_SystemTimer(ticks) ((PhysicalTimeType)((ticks) * 10U)) /* [$UKS 843] */
#define OS_TICKS2US_SystemTimer(ticks) ((PhysicalTimeType)((ticks) / 100U)) /* [$UKS 843] */
#define OS_TICKS2MS_SystemTimer(ticks) ((PhysicalTimeType)((ticks) / 100000U)) /* [$UKS 843] */
#define OS_TICKS2SEC_SystemTimer(ticks) ((PhysicalTimeType)((ticks) / 100000000U)) /* [$UKS 843] */
#define OSMAXALLOWEDVALUE_SystemTimer (4294967295U) /* [$UKS 219] */
#define OSTICKSPERBASE_SystemTimer (1U) /* [$UKS 220] */
#define OSTICKDURATION_SystemTimer OS_TICKS2NS_SystemTimer(1U) /* [$UKS 221] */
#define OSMINCYCLE_SystemTimer (1U) /* [$UKS 222] */
#define OSMAXALLOWEDVALUE OSMAXALLOWEDVALUE_SystemCounter /* [$UKS 215] */
#define OSTICKSPERBASE OSTICKSPERBASE_SystemCounter /* [$UKS 216] */
#define OSMINCYCLE OSMINCYCLE_SystemCounter /* [$UKS 218] */
#define OSTICKDURATION OSTICKDURATION_SystemCounter /* [$UKS 217] */
#define OS_NUM_CORES (3U)
#define OS_NUM_OS_CORES (3U)
#define OS_CORE_ID_MASTER (0U)  /* [$UKS 1609] */
/* [$UKS 1611] */
#define OS_CORE_ID_0 (0U)
#define OS_CORE_ID_1 (1U)
#define OS_CORE_ID_2 (2U)


extern FUNC(void, OS_CODE) TRUSTED_UserApplResetEndInit_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserApplSafetyResetEndInit_Timed_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserApplSafetySetEndInit_Timed_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserApplSetEndInit_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaCfgIntControl_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaChClrIntctEtrlFlags_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaChClrIntrFlags_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaClrErrFlags_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaDisableChIntrTrigger_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaDisableIntr_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaEnableChIntrTrigger_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaEnableHwTransfer_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaEnableIntr_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaGetTransReqLostFlag_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaGetTransferIntStatus_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaSetAdicr_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaSetDataWidth_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaSetDestAddr_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaSetSourceAddr_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserDmaSetTxCount_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserModifyPeripheral32_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtDisableOverlayRegInit_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtEnableOverlayRegInit_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtRamLckUnlck_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtSwitchPageToReferencePage_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtSwitchPageToWorkingPage_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserProtetk_setObaseTBase_protected_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserQSpi4DmaTransmit_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserReadPeripheral32_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserVD_PDN_Func_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;
extern FUNC(void, OS_CODE) TRUSTED_UserWritePeripheral32_Core0(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) /* [$UKS 1268] */;


extern FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore0(void) /* [$UKS 401] */;
extern FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore0(StatusType Error) /* [$UKS 405] */;
extern FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore0(StatusType Error) /* [$UKS 450] */;
extern FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore1(void) /* [$UKS 401] */;
extern FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore1(StatusType Error) /* [$UKS 405] */;
extern FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore1(StatusType Error) /* [$UKS 450] */;
extern FUNC(void, OS_CALLOUT_CODE) StartupHook_OsAppCore2(void) /* [$UKS 401] */;
extern FUNC(void, OS_CALLOUT_CODE) ShutdownHook_OsAppCore2(StatusType Error) /* [$UKS 405] */;
extern FUNC(void, OS_CALLOUT_CODE) ErrorHook_OsAppCore2(StatusType Error) /* [$UKS 450] */;
extern FUNC(TickType, OS_CALLOUT_CODE) Os_Cbk_Now_SystemTimer(void);
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Set_SystemTimer(TickType Match);
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_State_SystemTimer(Os_CounterStatusRefType State);
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Cancel_SystemTimer(void);
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_ISR_MpsVadc(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_ISR_MotorControl(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_ISR_InnerLoop_2(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_ISR_OuterLoop(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH11SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH12SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH13SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH14SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH15SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH16SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH17SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH18SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH19SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH20SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH21SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH22SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH23SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH24SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH25SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH26SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH27SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH28SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH29SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH30SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH31SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH32SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH33SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_QSPI2ERR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH34SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH35SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH36SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_DMACH37SR_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR0_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR1_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR2_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR3_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR4_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR5_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR6_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR7_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR8_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR9_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR10_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR11_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR12_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR13_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR14_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN0SR15_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR0_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR1_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR2_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR3_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR4_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR5_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR6_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR7_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR8_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR9_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR10_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR11_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR12_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR13_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR14_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_CAN1SR15_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_WdgGptSrvISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_GTMATOM0SR0_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_GTMATOM0SR1_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_GTMATOM0SR2_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_GTMATOM0SR3_ISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_OSK_OsTickISR(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_SystemTimer_ISR_core1(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Terminated_SystemTimer_ISR_core2(void) /* [$UKS 1281] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_ISR_MpsVadc(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_ISR_MotorControl(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_ISR_InnerLoop_2(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_ISR_OuterLoop(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH11SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH12SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH13SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH14SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH15SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH16SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH17SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH18SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH19SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH20SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH21SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH22SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH23SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH24SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH25SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH26SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH27SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH28SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH29SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH30SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH31SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH32SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH33SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_QSPI2ERR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH34SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH35SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH36SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_DMACH37SR_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR0_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR1_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR2_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR3_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR4_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR5_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR6_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR7_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR8_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR9_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR10_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR11_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR12_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR13_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR14_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN0SR15_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR0_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR1_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR2_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR3_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR4_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR5_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR6_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR7_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR8_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR9_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR10_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR11_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR12_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR13_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR14_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_CAN1SR15_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_WdgGptSrvISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_GTMATOM0SR0_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_GTMATOM0SR1_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_GTMATOM0SR2_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_GTMATOM0SR3_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_OSK_OsTickISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_SystemTimer_ISR_core1(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_SystemTimer_ISR_core2(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_SCUERUSR0_ISR(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_0(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_1(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_2(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_3(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_4(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_5(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_6(void) /* [$UKS 1142] */;
extern FUNC(void, OS_CALLOUT_CODE) Os_Cbk_Disable_RTOS_TRAP_CL_7(void) /* [$UKS 1142] */;


extern FUNC(StatusType, OS_CODE) Os_IncrementCounter_Counter_1ms(void);
extern FUNC(StatusType, OS_CODE) Os_IncrementCounter_Counter_C1_100ms(void);
extern FUNC(StatusType, OS_CODE) Os_IncrementCounter_Counter_C2_100ms(void);
extern FUNC(StatusType, OS_CODE) Os_AdvanceCounter_SystemTimer(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_BGtask_Core2(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_BGTask_Core1(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_BGTask_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskH0_100ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskH0_100ms_Core1(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskH0_100ms_Core2(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskG0_50ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskF0_30ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskE0_16ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskD0_10ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskC0_8ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskB0_2ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskA0_1ms_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_Os_Init_Task_Core2(void);
extern FUNC(void, OS_CODE) Os_Entry_Os_Init_Task_Core1(void);
extern FUNC(void, OS_CODE) Os_Entry_Os_Init_Task_Core0(void);
extern FUNC(void, OS_CODE) Os_Entry_ISR_MpsVadc(void);
extern FUNC(void, OS_CODE) Os_Entry_ISR_MotorControl(void);
extern FUNC(void, OS_CODE) Os_Entry_ISR_InnerLoop_2(void);
extern FUNC(void, OS_CODE) Os_Entry_ISR_OuterLoop(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH11SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH12SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH13SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH14SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH15SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH16SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH17SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH18SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH19SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH20SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH21SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH22SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH23SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH24SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH25SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH26SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH27SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH28SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH29SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH30SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH31SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH32SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH33SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_QSPI2ERR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH34SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH35SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH36SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_DMACH37SR_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR0_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR1_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR2_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR3_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR4_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR5_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR6_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR7_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR8_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR9_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR10_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR11_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR12_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR13_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR14_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN0SR15_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR0_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR1_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR2_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR3_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR4_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR5_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR6_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR7_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR8_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR9_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR10_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR11_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR12_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR13_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR14_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_CAN1SR15_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_WdgGptSrvISR(void);
extern FUNC(void, OS_CODE) Os_Entry_GTMATOM0SR0_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_GTMATOM0SR1_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_GTMATOM0SR2_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_GTMATOM0SR3_ISR(void);
extern FUNC(void, OS_CODE) Os_Entry_OSK_OsTickISR(void);
extern FUNC(void, OS_CODE) Os_Entry_SystemTimer_ISR_core1(void);
extern FUNC(void, OS_CODE) Os_Entry_SystemTimer_ISR_core2(void);



/* -- End expansion of <Os_Safe_Cfg.h> -- */
/* -------- Time Monitoring --------- */
#define OS_TIME_MONITORING  /* [$UKS 959] */
/* -------- Activation Monitoring --------- */
#define OS_ACTIVATION_MONITORING  /* [$UKS 1282] */

/* -------- AppMode declarations --------- */

/* ----- OS-Application declarations ----- */
#define OsAppCore0 ((ApplicationType)1U) /* [$UKS 412] */
#define OsAppCore0_untusted ((ApplicationType)2U) /* [$UKS 412] */
#define OsAppCore1 ((ApplicationType)3U) /* [$UKS 412] */
#define OsAppCore1_untrusted ((ApplicationType)4U) /* [$UKS 412] */
#define OsAppCore2 ((ApplicationType)5U) /* [$UKS 412] */
#define OsAppCore2_untrusted ((ApplicationType)6U) /* [$UKS 412] */

/* ----- Trusted function declarations ----- */
#define UserApplResetEndInit_Core0 ((TrustedFunctionIndexType)0U) /* [$UKS 969] */
#define UserApplSafetyResetEndInit_Timed_Core0 ((TrustedFunctionIndexType)1U) /* [$UKS 969] */
#define UserApplSafetySetEndInit_Timed_Core0 ((TrustedFunctionIndexType)2U) /* [$UKS 969] */
#define UserApplSetEndInit_Core0 ((TrustedFunctionIndexType)3U) /* [$UKS 969] */
#define UserDmaCfgIntControl_Core0 ((TrustedFunctionIndexType)4U) /* [$UKS 969] */
#define UserDmaChClrIntctEtrlFlags_Core0 ((TrustedFunctionIndexType)5U) /* [$UKS 969] */
#define UserDmaChClrIntrFlags_Core0 ((TrustedFunctionIndexType)6U) /* [$UKS 969] */
#define UserDmaClrErrFlags_Core0 ((TrustedFunctionIndexType)7U) /* [$UKS 969] */
#define UserDmaDisableChIntrTrigger_Core0 ((TrustedFunctionIndexType)8U) /* [$UKS 969] */
#define UserDmaDisableIntr_Core0 ((TrustedFunctionIndexType)9U) /* [$UKS 969] */
#define UserDmaEnableChIntrTrigger_Core0 ((TrustedFunctionIndexType)10U) /* [$UKS 969] */
#define UserDmaEnableHwTransfer_Core0 ((TrustedFunctionIndexType)11U) /* [$UKS 969] */
#define UserDmaEnableIntr_Core0 ((TrustedFunctionIndexType)12U) /* [$UKS 969] */
#define UserDmaGetTransReqLostFlag_Core0 ((TrustedFunctionIndexType)13U) /* [$UKS 969] */
#define UserDmaGetTransferIntStatus_Core0 ((TrustedFunctionIndexType)14U) /* [$UKS 969] */
#define UserDmaSetAdicr_Core0 ((TrustedFunctionIndexType)15U) /* [$UKS 969] */
#define UserDmaSetDataWidth_Core0 ((TrustedFunctionIndexType)16U) /* [$UKS 969] */
#define UserDmaSetDestAddr_Core0 ((TrustedFunctionIndexType)17U) /* [$UKS 969] */
#define UserDmaSetSourceAddr_Core0 ((TrustedFunctionIndexType)18U) /* [$UKS 969] */
#define UserDmaSetTxCount_Core0 ((TrustedFunctionIndexType)19U) /* [$UKS 969] */
#define UserModifyPeripheral32_Core0 ((TrustedFunctionIndexType)20U) /* [$UKS 969] */
#define UserProtDisableOverlayRegInit_Core0 ((TrustedFunctionIndexType)21U) /* [$UKS 969] */
#define UserProtEnableOverlayRegInit_Core0 ((TrustedFunctionIndexType)22U) /* [$UKS 969] */
#define UserProtRamLckUnlck_Core0 ((TrustedFunctionIndexType)23U) /* [$UKS 969] */
#define UserProtSwitchPageToReferencePage_Core0 ((TrustedFunctionIndexType)24U) /* [$UKS 969] */
#define UserProtSwitchPageToWorkingPage_Core0 ((TrustedFunctionIndexType)25U) /* [$UKS 969] */
#define UserProtetk_setObaseTBase_protected_Core0 ((TrustedFunctionIndexType)26U) /* [$UKS 969] */
#define UserQSpi4DmaTransmit_Core0 ((TrustedFunctionIndexType)27U) /* [$UKS 969] */
#define UserReadPeripheral32_Core0 ((TrustedFunctionIndexType)28U) /* [$UKS 969] */
#define UserVD_PDN_Func_Core0 ((TrustedFunctionIndexType)29U) /* [$UKS 969] */
#define UserWritePeripheral32_Core0 ((TrustedFunctionIndexType)30U) /* [$UKS 969] */

/* ----- PeripheralArea declarations ----- */

/* ----- Spinlock declarations ----- */

/* -------- Event declarations --------- */

/* -------- Task declarations --------- */
#define Task_BGtask_Core2 (&Os_const_tasks2[0])
#define OS_CORE_FOR_Task_BGtask_Core2 (2U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_BGtask_Core2 (0U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_BGtask_Core2 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_BGtask_Core2 (0U) /* [$UKS 2185] */
DeclareTask(Task_BGtask_Core2)
#define Task_BGTask_Core1 (&Os_const_tasks1[0])
#define OS_CORE_FOR_Task_BGTask_Core1 (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_BGTask_Core1 (0U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_BGTask_Core1 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_BGTask_Core1 (1U) /* [$UKS 2185] */
DeclareTask(Task_BGTask_Core1)
#define Task_BGTask_Core0 (&Os_const_tasks0[0])
#define OS_CORE_FOR_Task_BGTask_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_BGTask_Core0 (0U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_BGTask_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_BGTask_Core0 (2U) /* [$UKS 2185] */
DeclareTask(Task_BGTask_Core0)
#define TaskH0_100ms_Core0 (&Os_const_tasks0[1])
#define OS_CORE_FOR_TaskH0_100ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskH0_100ms_Core0 (1U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskH0_100ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskH0_100ms_Core0 (3U) /* [$UKS 2185] */
DeclareTask(TaskH0_100ms_Core0)
#define TaskH0_100ms_Core1 (&Os_const_tasks1[1])
#define OS_CORE_FOR_TaskH0_100ms_Core1 (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskH0_100ms_Core1 (1U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskH0_100ms_Core1 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskH0_100ms_Core1 (4U) /* [$UKS 2185] */
DeclareTask(TaskH0_100ms_Core1)
#define TaskH0_100ms_Core2 (&Os_const_tasks2[1])
#define OS_CORE_FOR_TaskH0_100ms_Core2 (2U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskH0_100ms_Core2 (1U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskH0_100ms_Core2 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskH0_100ms_Core2 (5U) /* [$UKS 2185] */
DeclareTask(TaskH0_100ms_Core2)
#define TaskG0_50ms_Core0 (&Os_const_tasks0[2])
#define OS_CORE_FOR_TaskG0_50ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskG0_50ms_Core0 (2U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskG0_50ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskG0_50ms_Core0 (6U) /* [$UKS 2185] */
DeclareTask(TaskG0_50ms_Core0)
#define TaskF0_30ms_Core0 (&Os_const_tasks0[3])
#define OS_CORE_FOR_TaskF0_30ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskF0_30ms_Core0 (3U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskF0_30ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskF0_30ms_Core0 (7U) /* [$UKS 2185] */
DeclareTask(TaskF0_30ms_Core0)
#define TaskE0_16ms_Core0 (&Os_const_tasks0[4])
#define OS_CORE_FOR_TaskE0_16ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskE0_16ms_Core0 (4U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskE0_16ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskE0_16ms_Core0 (8U) /* [$UKS 2185] */
DeclareTask(TaskE0_16ms_Core0)
#define TaskD0_10ms_Core0 (&Os_const_tasks0[5])
#define OS_CORE_FOR_TaskD0_10ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskD0_10ms_Core0 (5U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskD0_10ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskD0_10ms_Core0 (9U) /* [$UKS 2185] */
DeclareTask(TaskD0_10ms_Core0)
#define TaskC0_8ms_Core0 (&Os_const_tasks0[6])
#define OS_CORE_FOR_TaskC0_8ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskC0_8ms_Core0 (6U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskC0_8ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskC0_8ms_Core0 (10U) /* [$UKS 2185] */
DeclareTask(TaskC0_8ms_Core0)
#define TaskB0_2ms_Core0 (&Os_const_tasks0[7])
#define OS_CORE_FOR_TaskB0_2ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskB0_2ms_Core0 (7U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskB0_2ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskB0_2ms_Core0 (11U) /* [$UKS 2185] */
DeclareTask(TaskB0_2ms_Core0)
#define TaskA0_1ms_Core0 (&Os_const_tasks0[8])
#define OS_CORE_FOR_TaskA0_1ms_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskA0_1ms_Core0 (8U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskA0_1ms_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskA0_1ms_Core0 (12U) /* [$UKS 2185] */
DeclareTask(TaskA0_1ms_Core0)
#define Os_Init_Task_Core2 (&Os_const_tasks2[2])
#define OS_CORE_FOR_Os_Init_Task_Core2 (2U) /* [$UKS 1909] */
#define OS_TPL_FOR_Os_Init_Task_Core2 (2U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Os_Init_Task_Core2 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Os_Init_Task_Core2 (13U) /* [$UKS 2185] */
DeclareTask(Os_Init_Task_Core2)
#define Os_Init_Task_Core1 (&Os_const_tasks1[2])
#define OS_CORE_FOR_Os_Init_Task_Core1 (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Os_Init_Task_Core1 (2U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Os_Init_Task_Core1 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Os_Init_Task_Core1 (14U) /* [$UKS 2185] */
DeclareTask(Os_Init_Task_Core1)
#define Os_Init_Task_Core0 (&Os_const_tasks0[9])
#define OS_CORE_FOR_Os_Init_Task_Core0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_Os_Init_Task_Core0 (9U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Os_Init_Task_Core0 (0x8000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Os_Init_Task_Core0 (15U) /* [$UKS 2185] */
DeclareTask(Os_Init_Task_Core0)
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_TPL_FOR_TASK, OS_IMASK_FOR_TASK) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_TPL_FOR_TASK) */
#define OS_TPL_FOR_TASK(n) OS_TPL_FOR_##n  /* [$UKS 2008] */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_IMASK_FOR_TASK) */
#define OS_IMASK_FOR_TASK(n) OS_IMASK_FOR_##n  /* [$UKS 2010] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_CORE_FOR_TASK) */
#define OS_CORE_FOR_TASK(t) (t)->core_id /* [$UKS 1921] */

/* -------- ISR declarations --------- */
#define ISR_MpsVadc (&Os_const_isrs[0U])
#define OS_IMASK_FOR_ISR_MpsVadc (0x8002U) /* [$UKS 2009] */
#define OS_INDEX_FOR_ISR_MpsVadc (0U) /* [$UKS 2186] */
#define OS_CORE_FOR_ISR_MpsVadc (1U) /* [$UKS 1909] */
DeclareISR(ISR_MpsVadc)
#define ISR_MotorControl (&Os_const_isrs[1U])
#define OS_IMASK_FOR_ISR_MotorControl (0x8003U) /* [$UKS 2009] */
#define OS_INDEX_FOR_ISR_MotorControl (1U) /* [$UKS 2186] */
#define OS_CORE_FOR_ISR_MotorControl (1U) /* [$UKS 1909] */
DeclareISR(ISR_MotorControl)
#define ISR_InnerLoop_2 (&Os_const_isrs[2U])
#define OS_IMASK_FOR_ISR_InnerLoop_2 (0x8004U) /* [$UKS 2009] */
#define OS_INDEX_FOR_ISR_InnerLoop_2 (2U) /* [$UKS 2186] */
#define OS_CORE_FOR_ISR_InnerLoop_2 (2U) /* [$UKS 1909] */
DeclareISR(ISR_InnerLoop_2)
#define ISR_OuterLoop (&Os_const_isrs[3U])
#define OS_IMASK_FOR_ISR_OuterLoop (0x8005U) /* [$UKS 2009] */
#define OS_INDEX_FOR_ISR_OuterLoop (3U) /* [$UKS 2186] */
#define OS_CORE_FOR_ISR_OuterLoop (2U) /* [$UKS 1909] */
DeclareISR(ISR_OuterLoop)
#define DMACH11SR_ISR (&Os_const_isrs[4U])
#define OS_IMASK_FOR_DMACH11SR_ISR (0x8006U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH11SR_ISR (4U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH11SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH11SR_ISR)
#define DMACH12SR_ISR (&Os_const_isrs[5U])
#define OS_IMASK_FOR_DMACH12SR_ISR (0x8007U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH12SR_ISR (5U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH12SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH12SR_ISR)
#define DMACH13SR_ISR (&Os_const_isrs[6U])
#define OS_IMASK_FOR_DMACH13SR_ISR (0x8008U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH13SR_ISR (6U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH13SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH13SR_ISR)
#define DMACH14SR_ISR (&Os_const_isrs[7U])
#define OS_IMASK_FOR_DMACH14SR_ISR (0x8009U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH14SR_ISR (7U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH14SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH14SR_ISR)
#define DMACH15SR_ISR (&Os_const_isrs[8U])
#define OS_IMASK_FOR_DMACH15SR_ISR (0x800AU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH15SR_ISR (8U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH15SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH15SR_ISR)
#define DMACH16SR_ISR (&Os_const_isrs[9U])
#define OS_IMASK_FOR_DMACH16SR_ISR (0x800BU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH16SR_ISR (9U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH16SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH16SR_ISR)
#define DMACH17SR_ISR (&Os_const_isrs[10U])
#define OS_IMASK_FOR_DMACH17SR_ISR (0x800CU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH17SR_ISR (10U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH17SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH17SR_ISR)
#define DMACH18SR_ISR (&Os_const_isrs[11U])
#define OS_IMASK_FOR_DMACH18SR_ISR (0x800DU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH18SR_ISR (11U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH18SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH18SR_ISR)
#define DMACH19SR_ISR (&Os_const_isrs[12U])
#define OS_IMASK_FOR_DMACH19SR_ISR (0x800EU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH19SR_ISR (12U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH19SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH19SR_ISR)
#define DMACH20SR_ISR (&Os_const_isrs[13U])
#define OS_IMASK_FOR_DMACH20SR_ISR (0x800FU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH20SR_ISR (13U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH20SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH20SR_ISR)
#define DMACH21SR_ISR (&Os_const_isrs[14U])
#define OS_IMASK_FOR_DMACH21SR_ISR (0x8010U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH21SR_ISR (14U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH21SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH21SR_ISR)
#define DMACH22SR_ISR (&Os_const_isrs[15U])
#define OS_IMASK_FOR_DMACH22SR_ISR (0x8011U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH22SR_ISR (15U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH22SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH22SR_ISR)
#define DMACH23SR_ISR (&Os_const_isrs[16U])
#define OS_IMASK_FOR_DMACH23SR_ISR (0x8012U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH23SR_ISR (16U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH23SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH23SR_ISR)
#define DMACH24SR_ISR (&Os_const_isrs[17U])
#define OS_IMASK_FOR_DMACH24SR_ISR (0x8013U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH24SR_ISR (17U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH24SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH24SR_ISR)
#define DMACH25SR_ISR (&Os_const_isrs[18U])
#define OS_IMASK_FOR_DMACH25SR_ISR (0x8014U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH25SR_ISR (18U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH25SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH25SR_ISR)
#define DMACH26SR_ISR (&Os_const_isrs[19U])
#define OS_IMASK_FOR_DMACH26SR_ISR (0x8015U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH26SR_ISR (19U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH26SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH26SR_ISR)
#define DMACH27SR_ISR (&Os_const_isrs[20U])
#define OS_IMASK_FOR_DMACH27SR_ISR (0x8016U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH27SR_ISR (20U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH27SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH27SR_ISR)
#define DMACH28SR_ISR (&Os_const_isrs[21U])
#define OS_IMASK_FOR_DMACH28SR_ISR (0x8017U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH28SR_ISR (21U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH28SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH28SR_ISR)
#define DMACH29SR_ISR (&Os_const_isrs[22U])
#define OS_IMASK_FOR_DMACH29SR_ISR (0x8018U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH29SR_ISR (22U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH29SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH29SR_ISR)
#define DMACH30SR_ISR (&Os_const_isrs[23U])
#define OS_IMASK_FOR_DMACH30SR_ISR (0x8019U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH30SR_ISR (23U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH30SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH30SR_ISR)
#define DMACH31SR_ISR (&Os_const_isrs[24U])
#define OS_IMASK_FOR_DMACH31SR_ISR (0x801AU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH31SR_ISR (24U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH31SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH31SR_ISR)
#define DMACH32SR_ISR (&Os_const_isrs[25U])
#define OS_IMASK_FOR_DMACH32SR_ISR (0x801BU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH32SR_ISR (25U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH32SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH32SR_ISR)
#define DMACH33SR_ISR (&Os_const_isrs[26U])
#define OS_IMASK_FOR_DMACH33SR_ISR (0x801DU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH33SR_ISR (26U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH33SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH33SR_ISR)
#define QSPI2ERR_ISR (&Os_const_isrs[27U])
#define OS_IMASK_FOR_QSPI2ERR_ISR (0x801DU) /* [$UKS 2009] */
#define OS_INDEX_FOR_QSPI2ERR_ISR (27U) /* [$UKS 2186] */
#define OS_CORE_FOR_QSPI2ERR_ISR (0U) /* [$UKS 1909] */
DeclareISR(QSPI2ERR_ISR)
#define DMACH34SR_ISR (&Os_const_isrs[28U])
#define OS_IMASK_FOR_DMACH34SR_ISR (0x801EU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH34SR_ISR (28U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH34SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH34SR_ISR)
#define DMACH35SR_ISR (&Os_const_isrs[29U])
#define OS_IMASK_FOR_DMACH35SR_ISR (0x801FU) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH35SR_ISR (29U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH35SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH35SR_ISR)
#define DMACH36SR_ISR (&Os_const_isrs[30U])
#define OS_IMASK_FOR_DMACH36SR_ISR (0x8020U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH36SR_ISR (30U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH36SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH36SR_ISR)
#define DMACH37SR_ISR (&Os_const_isrs[31U])
#define OS_IMASK_FOR_DMACH37SR_ISR (0x8021U) /* [$UKS 2009] */
#define OS_INDEX_FOR_DMACH37SR_ISR (31U) /* [$UKS 2186] */
#define OS_CORE_FOR_DMACH37SR_ISR (0U) /* [$UKS 1909] */
DeclareISR(DMACH37SR_ISR)
#define CAN0SR0_ISR (&Os_const_isrs[32U])
#define OS_IMASK_FOR_CAN0SR0_ISR (0x8022U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR0_ISR (32U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR0_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR0_ISR)
#define CAN0SR1_ISR (&Os_const_isrs[33U])
#define OS_IMASK_FOR_CAN0SR1_ISR (0x8023U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR1_ISR (33U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR1_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR1_ISR)
#define CAN0SR2_ISR (&Os_const_isrs[34U])
#define OS_IMASK_FOR_CAN0SR2_ISR (0x8024U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR2_ISR (34U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR2_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR2_ISR)
#define CAN0SR3_ISR (&Os_const_isrs[35U])
#define OS_IMASK_FOR_CAN0SR3_ISR (0x8025U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR3_ISR (35U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR3_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR3_ISR)
#define CAN0SR4_ISR (&Os_const_isrs[36U])
#define OS_IMASK_FOR_CAN0SR4_ISR (0x8026U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR4_ISR (36U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR4_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR4_ISR)
#define CAN0SR5_ISR (&Os_const_isrs[37U])
#define OS_IMASK_FOR_CAN0SR5_ISR (0x8027U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR5_ISR (37U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR5_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR5_ISR)
#define CAN0SR6_ISR (&Os_const_isrs[38U])
#define OS_IMASK_FOR_CAN0SR6_ISR (0x8028U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR6_ISR (38U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR6_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR6_ISR)
#define CAN0SR7_ISR (&Os_const_isrs[39U])
#define OS_IMASK_FOR_CAN0SR7_ISR (0x8029U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR7_ISR (39U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR7_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR7_ISR)
#define CAN0SR8_ISR (&Os_const_isrs[40U])
#define OS_IMASK_FOR_CAN0SR8_ISR (0x802AU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR8_ISR (40U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR8_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR8_ISR)
#define CAN0SR9_ISR (&Os_const_isrs[41U])
#define OS_IMASK_FOR_CAN0SR9_ISR (0x802BU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR9_ISR (41U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR9_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR9_ISR)
#define CAN0SR10_ISR (&Os_const_isrs[42U])
#define OS_IMASK_FOR_CAN0SR10_ISR (0x802CU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR10_ISR (42U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR10_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR10_ISR)
#define CAN0SR11_ISR (&Os_const_isrs[43U])
#define OS_IMASK_FOR_CAN0SR11_ISR (0x802DU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR11_ISR (43U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR11_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR11_ISR)
#define CAN0SR12_ISR (&Os_const_isrs[44U])
#define OS_IMASK_FOR_CAN0SR12_ISR (0x802EU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR12_ISR (44U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR12_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR12_ISR)
#define CAN0SR13_ISR (&Os_const_isrs[45U])
#define OS_IMASK_FOR_CAN0SR13_ISR (0x802FU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR13_ISR (45U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR13_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR13_ISR)
#define CAN0SR14_ISR (&Os_const_isrs[46U])
#define OS_IMASK_FOR_CAN0SR14_ISR (0x8030U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR14_ISR (46U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR14_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR14_ISR)
#define CAN0SR15_ISR (&Os_const_isrs[47U])
#define OS_IMASK_FOR_CAN0SR15_ISR (0x8031U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN0SR15_ISR (47U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN0SR15_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN0SR15_ISR)
#define CAN1SR0_ISR (&Os_const_isrs[48U])
#define OS_IMASK_FOR_CAN1SR0_ISR (0x8032U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR0_ISR (48U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR0_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR0_ISR)
#define CAN1SR1_ISR (&Os_const_isrs[49U])
#define OS_IMASK_FOR_CAN1SR1_ISR (0x8033U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR1_ISR (49U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR1_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR1_ISR)
#define CAN1SR2_ISR (&Os_const_isrs[50U])
#define OS_IMASK_FOR_CAN1SR2_ISR (0x8034U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR2_ISR (50U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR2_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR2_ISR)
#define CAN1SR3_ISR (&Os_const_isrs[51U])
#define OS_IMASK_FOR_CAN1SR3_ISR (0x8035U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR3_ISR (51U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR3_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR3_ISR)
#define CAN1SR4_ISR (&Os_const_isrs[52U])
#define OS_IMASK_FOR_CAN1SR4_ISR (0x8036U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR4_ISR (52U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR4_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR4_ISR)
#define CAN1SR5_ISR (&Os_const_isrs[53U])
#define OS_IMASK_FOR_CAN1SR5_ISR (0x8037U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR5_ISR (53U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR5_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR5_ISR)
#define CAN1SR6_ISR (&Os_const_isrs[54U])
#define OS_IMASK_FOR_CAN1SR6_ISR (0x8038U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR6_ISR (54U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR6_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR6_ISR)
#define CAN1SR7_ISR (&Os_const_isrs[55U])
#define OS_IMASK_FOR_CAN1SR7_ISR (0x8039U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR7_ISR (55U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR7_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR7_ISR)
#define CAN1SR8_ISR (&Os_const_isrs[56U])
#define OS_IMASK_FOR_CAN1SR8_ISR (0x803AU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR8_ISR (56U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR8_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR8_ISR)
#define CAN1SR9_ISR (&Os_const_isrs[57U])
#define OS_IMASK_FOR_CAN1SR9_ISR (0x803BU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR9_ISR (57U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR9_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR9_ISR)
#define CAN1SR10_ISR (&Os_const_isrs[58U])
#define OS_IMASK_FOR_CAN1SR10_ISR (0x803CU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR10_ISR (58U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR10_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR10_ISR)
#define CAN1SR11_ISR (&Os_const_isrs[59U])
#define OS_IMASK_FOR_CAN1SR11_ISR (0x803DU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR11_ISR (59U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR11_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR11_ISR)
#define CAN1SR12_ISR (&Os_const_isrs[60U])
#define OS_IMASK_FOR_CAN1SR12_ISR (0x803EU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR12_ISR (60U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR12_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR12_ISR)
#define CAN1SR13_ISR (&Os_const_isrs[61U])
#define OS_IMASK_FOR_CAN1SR13_ISR (0x803FU) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR13_ISR (61U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR13_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR13_ISR)
#define CAN1SR14_ISR (&Os_const_isrs[62U])
#define OS_IMASK_FOR_CAN1SR14_ISR (0x8040U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR14_ISR (62U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR14_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR14_ISR)
#define CAN1SR15_ISR (&Os_const_isrs[63U])
#define OS_IMASK_FOR_CAN1SR15_ISR (0x8041U) /* [$UKS 2009] */
#define OS_INDEX_FOR_CAN1SR15_ISR (63U) /* [$UKS 2186] */
#define OS_CORE_FOR_CAN1SR15_ISR (0U) /* [$UKS 1909] */
DeclareISR(CAN1SR15_ISR)
#define WdgGptSrvISR (&Os_const_isrs[64U])
#define OS_IMASK_FOR_WdgGptSrvISR (0x8042U) /* [$UKS 2009] */
#define OS_INDEX_FOR_WdgGptSrvISR (64U) /* [$UKS 2186] */
#define OS_CORE_FOR_WdgGptSrvISR (0U) /* [$UKS 1909] */
DeclareISR(WdgGptSrvISR)
#define GTMATOM0SR0_ISR (&Os_const_isrs[65U])
#define OS_IMASK_FOR_GTMATOM0SR0_ISR (0x8043U) /* [$UKS 2009] */
#define OS_INDEX_FOR_GTMATOM0SR0_ISR (65U) /* [$UKS 2186] */
#define OS_CORE_FOR_GTMATOM0SR0_ISR (0U) /* [$UKS 1909] */
DeclareISR(GTMATOM0SR0_ISR)
#define GTMATOM0SR1_ISR (&Os_const_isrs[66U])
#define OS_IMASK_FOR_GTMATOM0SR1_ISR (0x8044U) /* [$UKS 2009] */
#define OS_INDEX_FOR_GTMATOM0SR1_ISR (66U) /* [$UKS 2186] */
#define OS_CORE_FOR_GTMATOM0SR1_ISR (0U) /* [$UKS 1909] */
DeclareISR(GTMATOM0SR1_ISR)
#define GTMATOM0SR2_ISR (&Os_const_isrs[67U])
#define OS_IMASK_FOR_GTMATOM0SR2_ISR (0x8045U) /* [$UKS 2009] */
#define OS_INDEX_FOR_GTMATOM0SR2_ISR (67U) /* [$UKS 2186] */
#define OS_CORE_FOR_GTMATOM0SR2_ISR (0U) /* [$UKS 1909] */
DeclareISR(GTMATOM0SR2_ISR)
#define GTMATOM0SR3_ISR (&Os_const_isrs[68U])
#define OS_IMASK_FOR_GTMATOM0SR3_ISR (0x8046U) /* [$UKS 2009] */
#define OS_INDEX_FOR_GTMATOM0SR3_ISR (68U) /* [$UKS 2186] */
#define OS_CORE_FOR_GTMATOM0SR3_ISR (0U) /* [$UKS 1909] */
DeclareISR(GTMATOM0SR3_ISR)
#define OSK_OsTickISR (&Os_const_isrs[69U])
#define OS_IMASK_FOR_OSK_OsTickISR (0x80FFU) /* [$UKS 2009] */
#define OS_INDEX_FOR_OSK_OsTickISR (69U) /* [$UKS 2186] */
#define OS_CORE_FOR_OSK_OsTickISR (0U) /* [$UKS 1909] */
DeclareISR(OSK_OsTickISR)
#define SystemTimer_ISR_core1 (&Os_const_isrs[70U])
#define OS_IMASK_FOR_SystemTimer_ISR_core1 (0x80FFU) /* [$UKS 2009] */
#define OS_INDEX_FOR_SystemTimer_ISR_core1 (70U) /* [$UKS 2186] */
#define OS_CORE_FOR_SystemTimer_ISR_core1 (1U) /* [$UKS 1909] */
DeclareISR(SystemTimer_ISR_core1)
#define SystemTimer_ISR_core2 (&Os_const_isrs[71U])
#define OS_IMASK_FOR_SystemTimer_ISR_core2 (0x80FFU) /* [$UKS 2009] */
#define OS_INDEX_FOR_SystemTimer_ISR_core2 (71U) /* [$UKS 2186] */
#define OS_CORE_FOR_SystemTimer_ISR_core2 (2U) /* [$UKS 1909] */
DeclareISR(SystemTimer_ISR_core2)
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_CORE_FOR_ISR) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_CORE_FOR_ISR) */
#define OS_CORE_FOR_ISR(i) OS_CORE_FOR_##i /* [$UKS 1922] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_IMASK_FOR_ISR) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_IMASK_FOR_ISR) */
#define OS_IMASK_FOR_ISR(n) OS_IMASK_FOR_##n  /* [$UKS 2011] */

/* -------- Resource declarations --------- */
#define RES_USER_CORE0 (&Os_const_resources[0U])
DeclareResource(RES_USER_CORE0)
#define RES_USER_CORE1 (&Os_const_resources[1U])
DeclareResource(RES_USER_CORE1)
#define RES_USER_CORE2 (&Os_const_resources[2U])
DeclareResource(RES_USER_CORE2)
#define Os_Core0_RES_SCHEDULER (&Os_const_resources[3U])
DeclareResource(Os_Core0_RES_SCHEDULER)
#define Os_Core1_RES_SCHEDULER (&Os_const_resources[4U])
DeclareResource(Os_Core1_RES_SCHEDULER)
#define Os_Core2_RES_SCHEDULER (&Os_const_resources[5U])
DeclareResource(Os_Core2_RES_SCHEDULER)
#define RES_SCHEDULER (Os_const_coreconfiguration[GetCoreID()].Os_Res_Scheduler)

/* -------- Counter declarations --------- */
#define Counter_1ms (&Os_const_counters[0U])
DeclareCounter(Counter_1ms)
#define Counter_C1_100ms (&Os_const_counters[1U])
DeclareCounter(Counter_C1_100ms)
#define Counter_C2_100ms (&Os_const_counters[2U])
DeclareCounter(Counter_C2_100ms)
#define SystemTimer (&Os_const_counters[3U])
DeclareCounter(SystemTimer)

/* -------- Alarm declaration --------- */
#define init_core0 (0U)
DeclareAlarm(init_core0)

/* -------- ScheduleTable declaration --------- */
#define FORD_ScheduleTable_Core0 (&Os_const_scheduletables[0U])
#define OS_DURATION_FORD_ScheduleTable_Core0 (101U)
DeclareScheduleTable(FORD_ScheduleTable_Core0)
#define FORD_ScheduleTable_Core1 (&Os_const_scheduletables[1U])
#define OS_DURATION_FORD_ScheduleTable_Core1 (2U)
DeclareScheduleTable(FORD_ScheduleTable_Core1)
#define FORD_ScheduleTable_Core2 (&Os_const_scheduletables[2U])
#define OS_DURATION_FORD_ScheduleTable_Core2 (2U)
DeclareScheduleTable(FORD_ScheduleTable_Core2)

/* -------- Tracepoint declarations --------- */
#define OSApp_OsAppCore0 (1U)
#define OSApp_OsAppCore0_untusted (2U)
#define OSApp_OsAppCore1 (3U)
#define OSApp_OsAppCore1_untrusted (4U)
#define OSApp_OsAppCore2 (5U)
#define OSApp_OsAppCore2_untrusted (6U)

/* -------- TaskTracepoint declarations --------- */

/* -------- Interval declarations --------- */

/* -------- Filtered APIs --------- */
#define Os_LogTracepoint(TpointID,Category) /* never */
#define Os_LogTracepointValue(TpointID,Value,Category) /* never */
#define Os_LogTracepointData(TpointID,Data,Length,Category) /* never */
#define Os_LogTaskTracepoint(TTpointID,Category) /* never */
#define Os_LogTaskTracepointValue(TTpointID,Value,Category) /* never */
#define Os_LogTaskTracepointData(TTpointID,Data,Length,Category) /* never */
#define Os_LogIntervalStart(IntervalID,Category) /* never */
#define Os_LogIntervalStartValue(IntervalID,Value,Category) /* never */
#define Os_LogIntervalStartData(IntervalID,Data,Length,Category) /* never */
#define Os_LogIntervalEnd(IntervalID,Category) /* never */
#define Os_LogIntervalEndValue(IntervalID,Value,Category) /* never */
#define Os_LogIntervalEndData(IntervalID,Data,Length,Category) /* never */
#ifndef OS_TRACE_NAMESPACE_PURE /* [$UKS 1154] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, LogTrace*, LogTaskTrace*, LogInterval*) */  #define LogTracepoint(TpointID,Category) Os_LogTracepoint(TpointID,Category)
  #define LogTracepointValue(TpointID,Value,Category) Os_LogTracepointValue(TpointID,Value,Category)
  #define LogTracepointData(TpointID,Data,Length,Category) Os_LogTracepointData(TpointID,Data,Length,Category)
  #define LogTaskTracepoint(TTpointID,Category) Os_LogTaskTracepoint(TTpointID,Category)
  #define LogTaskTracepointValue(TTpointID,Value,Category) Os_LogTaskTracepointValue(TTpointID,Value,Category)
  #define LogTaskTracepointData(TTpointID,Data,Length,Category) Os_LogTaskTracepointData(TTpointID,Data,Length,Category)
  #define LogIntervalStart(IntervalID,Category) Os_LogIntervalStart(IntervalID,Category)
  #define LogIntervalStartValue(IntervalID,Value,Category) Os_LogIntervalStartValue(IntervalID,Value,Category)
  #define LogIntervalStartData(IntervalID,Data,Length,Category) Os_LogIntervalStartData(IntervalID,Data,Length,Category)
  #define LogIntervalEnd(IntervalID,Category) Os_LogIntervalEnd(IntervalID,Category)
  #define LogIntervalEndValue(IntervalID,Value,Category) Os_LogIntervalEndValue(IntervalID,Value,Category)
  #define LogIntervalEndData(IntervalID,Data,Length,Category) Os_LogIntervalEndData(IntervalID,Data,Length,Category)
#endif

#define OS_IMASK_FOR_SCUERUSR0_ISR (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_SCUERUSR0_ISR (90U)
#define OS_CORE_FOR_SCUERUSR0_ISR (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_0 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_0 (91U)
#define OS_CORE_FOR_RTOS_TRAP_CL_0 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_1 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_1 (92U)
#define OS_CORE_FOR_RTOS_TRAP_CL_1 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_2 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_2 (93U)
#define OS_CORE_FOR_RTOS_TRAP_CL_2 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_3 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_3 (94U)
#define OS_CORE_FOR_RTOS_TRAP_CL_3 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_4 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_4 (95U)
#define OS_CORE_FOR_RTOS_TRAP_CL_4 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_5 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_5 (96U)
#define OS_CORE_FOR_RTOS_TRAP_CL_5 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_6 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_6 (97U)
#define OS_CORE_FOR_RTOS_TRAP_CL_6 (0U) /* [$UKS 1909] */
#define OS_IMASK_FOR_RTOS_TRAP_CL_7 (0x80FFU) /* [$UKS 2009] */
#define Os_Cat1_RTOS_TRAP_CL_7 (98U)
#define OS_CORE_FOR_RTOS_TRAP_CL_7 (0U) /* [$UKS 1909] */
/* [MISRA 2012 Rule 1.3] */ /*lint -estring(9023, Os_LogCat1ISRStart) */
/* [MISRA 2012 Rule 20.10] */ /*lint -esym(9024, Os_LogCat1ISRStart) */
#define Os_LogCat1ISRStart(IsrId)  /* [$UKS 1036] [$UKS 1037] [$UKS 1177] */
/* [MISRA 2012 Rule 1.3] */ /*lint -estring(9023, Os_LogCat1ISREnd) */
/* [MISRA 2012 Rule 20.10] */ /*lint -esym(9024, Os_LogCat1ISREnd) */
#define Os_LogCat1ISREnd(IsrId)  /* [$UKS 1038] [$UKS 1039] [$UKS 1178] */

#ifndef OS_TRACE_NAMESPACE_PURE /* [$UKS 1154] */
  #define LogCat1ISRStart Os_LogCat1ISRStart
  #define LogCat1ISREnd Os_LogCat1ISREnd
#endif
#endif /* OS_CFG_H */

