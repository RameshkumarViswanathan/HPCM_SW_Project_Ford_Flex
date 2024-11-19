/****************************************************************************
** FILE: XH_ERcrd.h
** DESCRIPTION:
** HISTORY:
*****************************************************************************/
#ifndef _XH_ERCRD_H
#define _XH_ERCRD_H
#if defined(__STDC__) && !defined(__ASSEMBLER__)
#include "Platform_Types.h" /* get U32 etc. typedefs */
typedef struct
{
uint32 PCXI; /*0x00: CSFR PCXI on entry to Trap */
uint32 A11; /*0x04: GPR A11 (Return Address) on entry to Trap */
uint32 A2; /*0x08: GPR A2 at point of Trap */
uint32 A3; /*0x0C: GPR A3 at point of Trap */
uint32 D0; /*0x10: GPR D0 at point of Trap */
uint32 D1; /*0x14: GPR D1 at point of Trap */
uint32 D2; /*0x18: GPR D2 at point of Trap */
uint32 D3; /*0x1C: GPR D3 at point of Trap */
uint32 A4; /*0x20: GPR A4 at point of Trap */
uint32 A5; /*0x24: GPR A5 at point of Trap */
uint32 A6; /*0x28: GPR A6 at point of Trap */
uint32 A7; /*0x2C: GPR A7 at point of Trap */
uint32 D4; /*0x30: GPR D4 at point of Trap */
uint32 D5; /*0x34: GPR D5 at point of Trap */
uint32 D6; /*0x38: GPR D6 at point of Trap */
uint32 D7; /*0x3C: GPR D7 at point of Trap */
} LCntxt_t; /* sizeof(LCntxt_t) = 0x40 (64) */
typedef struct
{
uint32 PCXI; /*0x00: CSFR Previous Context Ptr at point of Trap */
uint32 PSW; /*0x04: CSFR Processor Status Word at point of Trap */
uint32 A10; /*0x08: GPR A10 (Stack Pointer) at point of Trap */
uint32 A11; /*0x0C: GPR A11 (Return Address) at point of Trap */
uint32 D8; /*0x10: GPR D8 at point of Trap */
uint32 D9; /*0x14: GPR D9 at point of Trap */
uint32 D10; /*0x18: GPR D10 at point of Trap */
uint32 D11; /*0x1C: GPR D11 at point of Trap */
uint32 A12; /*0x20: GPR A12 at point of Trap */
uint32 A13; /*0x24: GPR A13 at point of Trap */
uint32 A14; /*0x28: GPR A14 at point of Trap */
uint32 A15; /*0x2C: GPR A15 at point of Trap */
uint32 D12; /*0x30: GPR D12 at point of Trap */
uint32 D13; /*0x34: GPR D13 at point of Trap */
uint32 D14; /*0x38: GPR D14 at point of Trap */
uint32 D15; /*0x3C: GPR D15 at point of Trap */
} UCntxt_t; /* sizeof(UCntxt_t) = 0x40 (64) */
typedef struct
{
U8 XH_Type; /*0x00: Exception Error MainType and Subtype */
U8 CoreID; /*0x01: CPU CoreID (0x00 for Single Core) */
U16 ErrCount; /*0x02: Count of ERcrds for current ASWID */
char ASWstring[12]; /*0x04: Application Software Version ID String */
U32 ASWID; /*0x10: Short ASWID */
U16 XH_TypeFlags[16]; /*0x14: Sticky Error Flags */
U8 ctSwChng ;/*0x34: Counter of software Changes (not saturating) */
U8 ctEPwr; /*0x35: #of error records since last PowerOn (not saturating) */
U16 TimeTagHi; /*0x36: Time of Event, upper halfword, msecs */
U32 TimeTagLo; /*0x38: Time of Event, lower fullword, msecs */
U32 SPR[4]; /*0x3C: Special Reg Data at point of Trap */
U32 A11_BkTrc[2]; /*0x4C: A11 trace 2 CSA levels before Trap */
U32 PCXI_BkTrc[2]; /*0x54: PCXI trace 2 CSA levels before Trap */
LCntxt_t LCntxt; /*0x5C: Lower Context at point of Trap */
UCntxt_t UCntxt; /*0x9C: Upper Context at point of Trap */
U32 ChkSum32; /*0xDC: 2's Complement sum of all ERcrd data */
} ERcrd_t; /* sizeof(ERcrd_t) = 0xE0 (224) */

#define ERCRD_SIZE 0xE0 /* sizeof(ERcrd_t) = 0xE0 (224) *///TODO:changed location
#elif defined(__ASSEMBLER__)
/**** structure offsets for LCntxt_t ****/
#define LCNTXT_PCXI 0x00 /* CSFR PCXI on entry to Trap */
#define LCNTXT_A11 0x04 /* GPR A11 (Return Address) on entry to Trap */
#define LCNTXT_A2 0x08 /* GPR A2 at point of Trap */
#define LCNTXT_A3 0x0C /* GPR A3 at point of Trap */
#define LCNTXT_D0 0x10 /* GPR D0 at point of Trap */
#define LCNTXT_D1 0x14 /* GPR D1 at point of Trap */
#define LCNTXT_D2 0x18 /* GPR D2 at point of Trap */
#define LCNTXT_D3 0x1C /* GPR D3 at point of Trap */
#define LCNTXT_A4 0x20 /* GPR A4 at point of Trap */
#define LCNTXT_A5 0x24 /* GPR A5 at point of Trap */
#define LCNTXT_A6 0x28 /* GPR A6 at point of Trap */
#define LCNTXT_A7 0x2C /* GPR A7 at point of Trap */
#define LCNTXT_D4 0x30 /* GPR D4 at point of Trap */
#define LCNTXT_D5 0x34 /* GPR D5 at point of Trap */
#define LCNTXT_D6 0x38 /* GPR D6 at point of Trap */
#define LCNTXT_D7 0x3C /* GPR D7 at point of Trap */
#define LCNTXT_SIZE 0x40 /* sizeof(LCntxt_t) = 0x40 (64) */
/**** structure offsets for UCntxt_t ****/
#define UCNTXT_PCXI 0x00 /* CSFR Previous Context Ptr at point of Trap */
#define UCNTXT_PSW 0x04 /* CSFR Processor Status Word at Trap */
#define UCNTXT_A10 0x08 /* GPR A10 (Stack Pointer) at point of Trap */
#define UCNTXT_A11 0x0C /* GPR A11 (Return Address) at point of Trap */
#define UCNTXT_D8 0x10 /* GPR D8 at point of Trap */
#define UCNTXT_D9 0x14 /* GPR D9 at point of Trap */
#define UCNTXT_D10 0x18 /* GPR D10 at point of Trap */
#define UCNTXT_D11 0x1C /* GPR D11 at point of Trap */
#define UCNTXT_A12 0x20 /* GPR A12 at point of Trap */
#define UCNTXT_A13 0x24 /* GPR A13 at point of Trap */
#define UCNTXT_A14 0x28 /* GPR A14 at point of Trap */
#define UCNTXT_A15 0x2C /* GPR A15 at point of Trap */
#define UCNTXT_D12 0x30 /* GPR D12 at point of Trap */
#define UCNTXT_D13 0x34 /* GPR D13 at point of Trap */
#define UCNTXT_D14 0x38 /* GPR D14 at point of Trap */
#define UCNTXT_D15 0x3C /* GPR D15 at point of Trap */
#define UCNTXT_SIZE 0x40 /* sizeof(UCntxt_t) = 0x40 (64) */
/**** structure offsets for ERcrd_t ****/
#define ERCRD_XH_Type 0x00 /* Exception Error MainType and Subtype */
#define ERCRD_CoreID 0x01 /* CPU CoreID (0x00 for Single Core) */
#define ERCRD_ErrCount 0x02 /* Count of ERcrds for current ASWID */
#define ERCRD_ASWstring 0x04 /* Application SW Version ID String */
#define ERCRD_ASWID 0x10 /* Short ASWID */
#define ERCRD_XH_TypeFlags 0x14 /* Sticky Error Flags */
#define ERCRD_ctSwChng 0x34 /* Counter of software Changes (not saturating) */
#define ERCRD_ctEPwr 0x35 /* #of error records since last PowerOn (not saturating) */
#define ERCRD_TimeTagHi 0x36 /* Time of Event, upper halfword, msecs */
#define ERCRD_TimeTagLo 0x38 /* Time of Event, lower fullword, msecs */
#define ERCRD_SPR 0x3C /* Special Reg Data at point of Trap */
#define ERCRD_A11_BkTrc 0x4C /* A11 trace 2 CSA levels before Trap */
#define ERCRD_PCXI_BkTrc 0x54 /* PCXI trace 2 CSA levels before Trap */
#define ERCRD_LCntxt 0x5C /* Lower Context at point of Trap */
#define ERCRD_UCntxt 0x9C /* Upper Context at point of Trap */
#define ERCRD_ChkSum32 0xDC /* 2's Complement sum of all ERcrd data */
#define ERCRD_SIZE 0xE0 /* sizeof(ERcrd_t) = 0xE0 (224) */
#endif /* defined(__STDC__) && !defined(__ASSEMBLER__) */
#endif /* _XH_ERCRD_H */
/************************ End File XH_ERcrd.h ********************************/