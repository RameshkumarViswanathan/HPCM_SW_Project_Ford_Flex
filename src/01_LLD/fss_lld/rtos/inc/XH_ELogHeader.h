/****************************************************************************
** FILE: XH_ELogHeader.h
*****************************************************************************/
#ifndef XH_ELOGHEADER_H
#define XH_ELOGHEADER_H
#if defined(__STDC__) && !defined(__ASSEMBLER__)
#include "Std_Types.h"
typedef struct
{
U32 ArchVrsn; /*[0x00] ASCII CPU Architecture version ID */
U16 GSpecVrsn; /*[0x04] Generic Requirements Specification version ID */
U16 ASpecVrsn; /*[0x06] Architecture-Specific Requirements Spec version ID */
U32 CPUType; /*[0x08] ASCII CPU Type ID */
U8 ASWstring[12]; /*[0x0C] Application Software Version ID string */
U32 ASWID; /*[0x18] Short version ASWID (CRC or Checksum) */
U16 ERUpdtLmt; /*[0x1C] Max #of Error Record Updates to EEPROM */
U16 ErrCount; /*[0x1E] Count of Ercrds recorded for current ASW */
U8 N_Ercrds; /*[0x20] #of Allocated Error Records in ERcrd array */
U8 NxtERcrd; /*[0x21] Index for Next Ercrd to be filled */
U8 ctSwChng; /*[0x22] Counter of software Changes (not saturating) */
U8 ctEPwr ;/*[0x23] Number of error records since last PowerOn (not saturating) */
U32 ChkSum32; /*[0x24] 2's complement 32-bit sum of all words in
** ELog.Header, excluding ChkSum32 itself.
*/
} ELogH_t; /*[0x28] sizeof(ELogH_t) = 40 bytes
#elif defined(__ASSEMBLER__)
/**** Structure Offsets for ELogH_t ****/
#define ELOGH_ArchVrsn 0x00 /* ASCII CPU Architecture version ID */
#define ELOGH_GSpecVrsn 0x04 /* Generic Specification version ID */
#define ELOGH_ASpecVrsn 0x06 /* Architecture-Specific Spec version ID */
#define ELOGH_CPUType 0x08 /* ASCII CPU Type ID */
#define ELOGH_ASWstring 0x0C /* App Software Version ID string */
#define ELOGH_ASWID 0x18 /* Short version ASWID (CRC or Checksum) */
#define ELOGH_ERUpdtLmt 0x1C /* Max #of ERcrd Updates to EEPROM */
#define ELOGH_ErrCount 0x1E /* Count of Ercrds for current ASW */
#define ELOGH_N_Ercrds 0x20 /* #of Allocated ERcrds in ERcrd array */
#define ELOGH_NxtERcrd 0x21 /* Index for Next Ercrd to be filled */
#define ELOGH_ctSwChng 0x22 /* Counter of software Changes (not saturating) */
#define ELOGH_ctEPwr 0x23 /* #of error records since last PowerOn (not saturating) */
#define ELOGH_ChkSum32 0x24 /* 2's complement 32-bit checksum */
#define ELOGH_SIZE 0x28 /* sizeof(ELogH_t) = 0x28 (40) */
#endif /* defined(__STDC__) && !defined(__ASSEMBLER__) */
#endif /* XH_ELOGHEADER_H */
/*********************** End File XH_ELogHeader.h ***************************/