/****************************************************************************
** FILE: XH_ELog.h
** DESCRIPTION:
** HISTORY:
*****************************************************************************/
#ifndef _XH_ELOG_H
#define _XH_ELOG_H
#include "XH_ELogHeader.h" /* get ELogH_t structure typedefs */
#include "XH_ERcrd.h" /* get ERcrd_t structure typedefs */
#define XH_N_ERCRDS 3 /* #of Ercrds allocated in array */
#define XH_GSPECVRSN 0x0005 /* XH Generic Spec Version = G-00.05 */
#define XH_ARCHVRSN 0x54313631 /* XH Architecture Version = "T161" */
#define XH_ASPECVRSN 0x0001 /* XH Arch Spec Version = T161-00.01 */
#if defined(__STDC__) && !defined(__ASSEMBLER__)
#include "Platform_Types.h" /* get U32 etc. typedefs */
typedef struct
{
ELogH_t Header; /*0x00: Error Log Header Info */
ERcrd_t ERcrd[XH_N_ERCRDS]; /*0x28: Array of XH_N_ERCRDS Error Records */
} ELog_t; /* sizeof(ELog_t) = 0x02C8 (712) */

extern ELog_t XH_ELog; /* prototype for XH_Elog, defined by Link process */
#elif defined(__ASSEMBLER__)
/**** Structure Offsets for ELog_t ****/
#define ELOG_Header 0x00 /* Error Log Header Info */
#define ELOG_ERcrd 0x28 /* Array of N_ERCRDS Error Records */
#define ELOG_SIZE ELOGH_SIZE+(ERCRD_SIZE*XH_N_ERCRDS) /* sizeof(ELog_t) */
.extern XH_ELog /* prototype for XH_Elog, a symbol defined by the Link process */
#endif /* defined(__STDC__) && !defined(__ASSEMBLER__) */
#endif /* _XH_ELOG_H */
/************************ End File XH_ELog.h ********************************/