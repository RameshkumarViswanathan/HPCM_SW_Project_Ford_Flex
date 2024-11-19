#ifndef RTOS_INTERFACE_H
#define RTOS_INTERFACE_H
/*#############################################################################
#  FORD Motor
#  All rights reserved.
##############################################################################
#  MODULE  RTOS_Interface.h  	CREATED  02.02.2023 
##############################################################################
#  BASE MODULE  (FORD) Inverter
##############################################################################
#  VERSION  1.0		| PROJECT  1.0
##############################################################################
#  REMARKS
#		Implementation of the Class RTOS_MW

##############################################################################
#  CHANGES
# ID     dd.mm.yyyy   name          description
# ---    ----------   -----------   ---------------------------------------- 
# [1]    02.02.2023   Santhosh     Initial Version - added Core specific Idle 
#                                                     counters                         
#############################################################################*/

/* Header Include Files */
#include "Std_Types.h"
#include "Os.h"
#include "Os_Cfg.h"

 U16 idle_pct_x10_0;
 U16 idle_pct_x10_1;
 U16 idle_pct_x10_2;

 U32 t2ms_stos_time_1;
 U32 t8ms_stos_time_1;
 U32 t16ms_stos_time_1;
 U32 tIPC_stos_time_1;
 U32 t30ms_stos_time_1;
 U32 t50ms_stos_time_1;
 U32 t2ms_stos_time_1;
 U32 t100ms_stos_time_1;
 U32 t1ms_stos_time;

 U32 t2ms_stof_time_1;
 U32 t8ms_stof_time_1;
 U32 t16ms_stof_time_1;
 U32 tIPC_stof_time_1;
 U32 t30ms_stof_time_1;
 U32 t50ms_stof_time_1;
 U32 t2ms_stof_time_1;
 U32 t100ms_stof_time_1;
 U32 t1ms_stof_time;

#endif
