/*
 * This is Compiler_Cfg.h for target platform: TriCoreHighTec/TC37x
 */

/* [COMPILER054] [COMPILER055] */
#ifndef COMPILER_CFG_H
#define COMPILER_CFG_H

/*
 * Compiler_Cfg.c is normally a system-wide header file.
 * Typically the system integrator will take the settings
 * from each module and construct this by hand.
 * The contents of "Os_Compiler_Cfg.h" can be used by
 * the system integrator for this purpose.
 */
#include <Os_Compiler_Cfg.h>

#ifndef OS_VAR_NOINIT_CORE0
  #define OS_VAR_NOINIT_CORE0 /* default */ /* Core 0 local never initialized data  */
  #define OS_VAR_CLEARED_CORE0 /* default */ /* Core 0 local data cleared after reset. */
  #define OS_VAR_NOINIT_CORE1 /* default */ /* Core 1 local never initialized data  */
  #define OS_VAR_CLEARED_CORE1 /* default */ /* Core 1 local data cleared after reset. */
  #define OS_VAR_NOINIT_CORE2 /* default */ /* Core 2 local never initialized data  */
  #define OS_VAR_CLEARED_CORE2 /* default */ /* Core 2 local data cleared after reset. */
#endif
#ifndef OS_CODE_CORE0
  #define OS_CODE_CORE0 /* default */ /* Core 0 code. */
  #define OS_CODE_CORE1 /* default */ /* Core 1 code. */
  #define OS_CODE_CORE2 /* default */ /* Core 2 code. */
#endif
#endif /* COMPILER_CFG_H */

