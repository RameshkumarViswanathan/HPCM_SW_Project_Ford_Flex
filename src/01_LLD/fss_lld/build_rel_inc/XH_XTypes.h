/****************************************************************************
** FILE: XH_Types.h
** DESCRIPTON:
** HISTORY:
** 19-Feb-2010 C. Leiby (Ford)
** Preliminary implementation example for TriCore
*****************************************************************************/
#ifndef _XH_TYPES_H
#define _XH_TYPES_H
#define XHT_TRAP_MMU_MAIN 0x00 /* Memory Management Unit Trap Class */
# define XHT_TRAP_MMU_VAF 0x00 /* MMU Virtual Address Fill */
# define XHT_TRAP_MMU_VAP 0x01 /* MMU Virtual Address Protection */
#define XHT_TRAP_PROT_MAIN 0x10 /* Internal Protection Trap Class */
#define XHT_TRAP_PROT_PRIV 0x11 /* Privileged Instruction */
#define XHT_TRAP_PROT_MPR 0x12 /* Memory Protection Read Access */
#define XHT_TRAP_PROT_MPW 0x13 /* Memory Protection Write Access */
#define XHT_TRAP_PROT_MPX 0x14 /* Memory Protection Execution Access */
#define XHT_TRAP_PROT_MPP 0x15 /* Memory Protection Peripheral Access */
#define XHT_TRAP_PROT_MPN 0x16 /* Memory Protection Null Address */
#define XHT_TRAP_PROT_GRWP 0x17 /* Global Register Write Protection */
#define XHT_TRAP_IERR_MAIN 0x20 /* Instruction-Related Error Trap Class */
#define XHT_TRAP_IERR_IOPC 0x21 /* Illegal Opcode */
#define XHT_TRAP_IERR_UOPC 0x22 /* Unimplemented Opcode */
#define XHT_TRAP_IERR_OPD 0x23 /* Invalid Operand Specification */
#define XHT_TRAP_IERR_ALN 0x24 /* Data Address Alignment Error */
#define XHT_TRAP_IERR_MEM 0x25 /* Invalid Local Memory Address */
#define XHT_TRAP_CTX_MAIN 0x30 /* Context Management Trap Class */
#define XHT_TRAP_CTX_FCD 0x31 /* Free Context List Depleted */
#define XHT_TRAP_CTX_CDO 0x32 /* Call Depth Overflow */
#define XHT_TRAP_CTX_CDU 0x33 /* Call Depth Underflow */
#define XHT_TRAP_CTX_FCU 0x34 /* Free Context List Underflow (FATAL) */
#define XHT_TRAP_CTX_CSU 0x35 /* Context List Underflow */
#define XHT_TRAP_CTX_CTYP 0x36 /* Context Type Error */
#define XHT_TRAP_CTX_NEST 0x37 /* Nesting Error */
#define XHT_TRAP_BUSP_MAIN 0x40 /* Bus and Peripherals Trap Class */
#define XHT_TRAP_BUSP_PSE 0x41 /* Program Fetch Bus Error */
#define XHT_TRAP_BUSP_DSE 0x42 /* Data Access Synchronous Error */
#define XHT_TRAP_BUSP_DAE 0x43 /* Data Access Asynchronous Error */
#define XHT_TRAP_BUSP_CAE 0x44 /* Coprocessor (FPU) Asynchronous Error */
#define XHT_TRAP_BUSP_PIE 0x45 /* Program Memory Integrity Error */
#define XHT_TRAP_BUSP_DIE 0x46 /* Data Memory Integrity Error */
#define XHT_TRAP_BUSP_TAE 0x47 /* Temporal Asynchronous Error */
#define XHT_TRAP_ASSRT_MAIN 0x50 /* Assertion Trap Class */
#define XHT_TRAP_ASSRT_OVF 0x51 /* Arithmetic Overflow */
#define XHT_TRAP_ASSRT_SOVF 0x52 /* Sticky Arithmetic Overflow */
#define XHT_TRAP_SYSC_MAIN 0x60 /* System Call Trap Class */
#define XHT_TRAP_SYSC_0 0x60 /* System Call(0); */
#define XHT_TRAP_SYSC_1 0x61 /* System Call(1); */
/** : : : optional subtype codes : : : **/
#define XHT_TRAP_SYSC_15 0x6F /* System Call(15); */
#define XHT_TRAP_NMI_MAIN 0x70 /* Non-Maskable Interrupt Trap Class */
#define XHT_TRAP_NMI_ESR0 0x70 /* Emergency Stop #0 Reset pin NMI */
#define XHT_TRAP_NMI_ESR1 0x71 /* Emergency Stop #1 Reset pin NMI */
#define XHT_TRAP_NMI_EXTRST 0x72 /* SMU External Reset Alarm */
#define XHT_TRAP_NMI_WDOG 0x73 /* SMU Watchdog Alarms */
#define XHT_TRAP_NMI_PRPHW 0x74 /* SMU Peripheral Hardware Alarms */
#define XHT_TRAP_NMI_CLOCK 0x75 /* SMU Clock/Oscillator Alarms */
#define XHT_TRAP_NMI_PRPSW 0x76 /* SMU Peripheral Software Alarms */
#define XHT_TRAP_NMI_ENVRN 0x77 /* SMU Environmental (power, temperature) */
#define XHT_TRAP_NMI_CORSW 0x78 /* SMU Core Software Alarms */
#define XHT_TRAP_NMI_CORHW 0x79 /* SMU Core Hardware Alarms */
#define XHT_TRAP_NMI_SWRST 0x7A /* SMU Software Reset Request Alarms */
#define XHT_TRAP_NMI_DFLT 0x7F /* SMU Default Alarm category */
#define XHT_ERINT_1_MAIN 0x80 /* Hardware Error Interrupts Group1 */
/* No specific ERINT_2 assignments yet */
#define XHT_ERINT_2_MAIN 0x90 /* Hardware Error Interrupts Group2 */
/* No specific ERINT_2 assignments yet */
#define XHT_SWER_T1A_MAIN 0xA0 /* Tier 1 Suppl. SW Error Resets GroupA */
/* No specific SWER_T1A assignments yet */
#define XHT_SWER_T1B_MAIN 0xB0 /* Tier 1 Suppl. SW Error Resets GroupB */
/* No specific SWER_T1B assignments yet */
#define XHT_SWER_T2_MAIN 0xC0 /* Tier 2 Suppl. Software Error Resets */
#define XHT_SWER_TBD_MAIN 0xD0 /* Reserved - Usage To Be Determined */
/* No specific SWER_TBD assignments yet */
#define XHT_SWER_OS_MAIN 0xE0 /* RTOS/Scheduler SW Error Resets */
/* No specific SWER_OS assignments yet */
#define XHT_SWER_OEM_MAIN 0xF0 /* SW Error Resets invoked by OEM (Ford) */
/* No specific SWER_OEM assignments yet */
#endif /* _XH_TYPES_H */
/*************************** End File XH_Types.h ****************************/