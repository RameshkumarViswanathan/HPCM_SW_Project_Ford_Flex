#ifndef RTOS_TASKCOUNTERS_H
#define RTOS_TASKCOUNTERS_H
/*#############################################################################
#  FORD Motor
#  All rights reserved.
##############################################################################
#  MODULE  RTOS_MW.h		CREATED  02.02.2023 
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
# [1]    02.02.2023   Samruddhi     Initial Version                          
#############################################################################*/


void MngTSKR_idleTask_Task(void);
void MngTSKR_BGTask_Task(void);
void MngTSKR_100msOS_Task(void);
void MngTSKR_50msOS_Task(void);
void MngTSKR_30msOS_Task(void);
void MngTSKR_16msOS_Task(void);
void MngTSKR_8msOS_Task(void);
void MngTSKR_2msOS_Task(void);
void MngTSKR_1msOS_Task(void);
void MngTSKR_IPCTaskOS_Task(void);
void MngTSKR_Init_Core0_Task(void);
void MngTSKR_Init_Core1_Task(void);
void MngTSKR_BGTask_Core1_Task(void);
void MngTSKR_BGTask_Core2_Task(void);
void UpdateTaskExecutionTime(void);
#endif /* RTOS_TASKCOUNTERS_H*/