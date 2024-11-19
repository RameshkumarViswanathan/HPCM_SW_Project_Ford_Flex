/****************************************************************
*
*  Filename:      D:\home\user123\user\Santhosh\03_26_25_Software_2\Release\src\01_LLD\other_files\tools\BootLoader\PBL\\FblC_Array\fss_pbl.h
*  Project:       Exported definition of C-Array Flash-Driver
*  File created:  Fri Mar 29 09:01:49 2024

*
****************************************************************/

#ifndef __FBLUPDATE__
#define __FBLUPDATE__
#define FBLUPDATE_GEN_RAND 5860

#define FBLUPDATE_NUMBLOCKS 1

#define FBLUPDATE_DECRYPTDATA(a)   (vuint8)(a)

/* Definition of the structure that stores address and length info */
typedef struct _tFblUpdateBlkInfo
{
   FBL_ADDR_TYPE     blockAddress;
   FBL_MEMSIZE_TYPE  blockLength;
   V_MEMROM1  vuint8 V_MEMROM2 * V_MEMROM3 blockSource;
} tFblUpdateBlkInfo;

V_MEMROM0 extern V_MEMROM1 tFblUpdateBlkInfo V_MEMROM2 FblUpdateBlkInfo[FBLUPDATE_NUMBLOCKS];

#define FBLUPDATE_START_SEC_CONST_EXPORT
#include "MemMap.h"

#define FBLUPDATE_BLOCK0_ADDRESS	0x805A0000
#define FBLUPDATE_BLOCK0_LENGTH	0x4FF90
#define FBLUPDATE_BLOCK0_CHECKSUM	0x7520u

V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 FblUpdateBlk0[FBLUPDATE_BLOCK0_LENGTH];

#define FBLUPDATE_STOP_SEC_CONST_EXPORT
#include "MemMap.h"


#endif    /* #ifdef __FBLUPDATE__ */

