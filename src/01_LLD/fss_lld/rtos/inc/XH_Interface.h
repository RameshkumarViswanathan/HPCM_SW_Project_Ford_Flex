/****************************************************************************
** FILE: XH_Interface.h
** DESCRIPTION:
** HISTORY:
*****************************************************************************/
#ifndef _XH_INTERFACE_H
#define _XH_INTERFACE_H
#if defined(__STDC__) && !defined(__ASSEMBLER__)
#include "Platform_Types.h" /* get U32 etc. typedefs */
#include "XH_ELog.h" /* get ELog_t and ERcrd_t structure typedefs */
/**** Application Interface Function Prototypes ****/
/* Get Pointer to ELog data structure */
extern ELog_t * XH_GetELogPtr(void);
/* Get Pointer to most recent Error Record data structure */
extern ERcrd_t * XH_GetLastERcrd(void);
/* Get value of ELog Error Count */
extern U32 XH_GetErrCount(void);
/* Clear all Error Records from the NVRAM and EEPROM ELog data structures */
extern void XH_ClearELog(void);
/* Get Exception Handler CPU Version, as unsigned word */
/**** Application Reset Interface Macros ****/
extern void XH_NormalReset(void);
#define XH_ECU_RESET(void) XH_NormalReset()
extern void XH_EnterProgSession(void);
#define XH_PBL_ENTRY(void) XH_EnterProgSession()
extern void XH_ErrorReset(U32 main_type, U32 sub_type, U32 spr2, U32 spr3);
#define XH_ERR_RESET(main_type,sub_type,spr2,spr3) \
XH_ErrorReset((main_type), (sub_type), (spr2), (spr3))
#elif defined(__ASSEMBLER__)
/**** Application Interface Function Prototypes ****/
.extern XH_GetELogPtr /* ELog_t * XH_GetELogPtr(void); */
.extern XH_GetLastERcrd /* ERcrd_t * XH_GetLastERcrd(void); */
.extern XH_GetErrCount /* U32 XH_GetErrCount(void); */
.extern XH_ClearELog /* void XH_ClearELog(void); */
/**** Application Reset Interface Macros ****/
.extern XH_NormalReset /* void XH_NormalReset(void); */
#define XH_ECU_RESET XH_NormalReset
.extern XH_EnterProgSession /* void XH_EnterProgSession(void); */
#define XH_PBL_ENTRY XH_EnterProgSession
/* void XH_ErrorReset(U32 xh_type, U32 spr1, U32 spr2, U32 spr3); */
.extern XH_ErrorReset
#define XH_ERR_RESET XH_ErrorReset
#endif /* defined(__STDC__) && !defined(__ASSEMBLER__) */
#endif /* _XH_INTERFACE_H */
/********************** End File XH_Interface.h *****************************/