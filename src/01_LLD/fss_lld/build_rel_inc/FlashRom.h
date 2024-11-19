/****************************************************************
*
*  Filename:      D:\BM_Integration\Diag_Issue\TechM_Build\CBD2300515_D00\Demo\DemoFlashDrv\Build\..\FlashRom.h
*  Project:       Exported definition of C-Array Flash-Driver
*  File created:  Mon Aug 14 12:59:12 2023

*
****************************************************************/

#ifndef __FLASHDRV__
#define __FLASHDRV__
#define FLASHDRV_GEN_RAND 13890

#define FLASHDRV_NUMBLOCKS 1

#define FLASHDRV_DECRYPTVALUE	0xCC
#define FLASHDRV_DECRYPTDATA(a)   (vuint8)((vuint8)(a) ^ (vuint8)FLASHDRV_DECRYPTVALUE)
#define FLASHDRV_BLOCK0_ADDRESS	0x70000000
#define FLASHDRV_BLOCK0_LENGTH	0x800
#define FLASHDRV_BLOCK0_CHECKSUM	0x6A89u

V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 flashDrvBlk0[FLASHDRV_BLOCK0_LENGTH];


#endif    /* #ifdef __FLASHDRV__ */

