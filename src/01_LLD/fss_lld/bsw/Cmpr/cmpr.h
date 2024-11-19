/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Data decompression according to Ford Software Requirement
 *                 Specification - Data Compression and Encryption Specification
 *                 (No. 31827960, Rev. 002, Vol. 01)
 *
 *                 This file implements the LZSS decompression used in ECU bootloaders.
 *                 LZSS is a dictionary compression method and uses a sliding window as
 *                 dictionary. Compression is achieved by replacing byte arrays found in
 *                 previously read data with position/length-pairs pointing in to the sliding
 *                 window. If the position/length-pair takes up more bits than the byte array
 *                 that it tries to compress, the data is left uncompressed. This is indicated
 *                 with a single bit flag, '1' indicates that data to follow is uncompressed and
 *                 '0' indicates that data to follow is a position/length-pair.
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2018 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  AUTHOR IDENTITY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Name                          Initials      Company
 *  --------------------------------------------------------------------------------------------------------------------
 *  Joern Herwig                  JHg           Vector Informatik GmbH
 *  Andre Caspari                 Ci            Vector Informatik GmbH
 *  Thomas Bezold                 TBe           Vector Informatik GmbH
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2010-04-12  JHg/Ci                   Initial release
 *  01.01.00   2012-06-22  Ci      ESCAN00057244    Compiler warning: inconsistent storage class specification
 *  01.01.01   2013-01-30  JHg     ESCAN00064518    No changes
 *  01.01.02   2016-02-08  JHg     ESCAN00088139    No changes
 *  01.01.03   2018-09-14  TBe     ESCAN00100741    Harmonized include structure
 **********************************************************************************************************************/

#ifndef __SYSSERVICE_CMPR1_FORD_H__
#define __SYSSERVICE_CMPR1_FORD_H__

/***********************************************************************************************************************
 *   VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : SysService_Cmpr1_Ford CQComponent : Implementation */
#define SYSSERVICE_CMPR1_FORD_VERSION           0x0101u
#define SYSSERVICE_CMPR1_FORD_RELEASE_VERSION   0x03u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/* Input bit buffer */
typedef struct tagLZSS_InputBuffer_T
{
   /* Pointer to buffer */
   vuint8 *   buffer;
   /* Bit position, range 0-7 */
   vuint8     bitPos;
   /* Byte length */
   vuint32    length;
   /* Bit length */
   vuint32    bitLength;
} LZSS_InputBuffer_T;

/* Output bit buffer */
typedef LZSS_InputBuffer_T LZSS_OutputBuffer_T;

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

void LZSS_Init( void );
void LZSS_ExpandData(LZSS_InputBuffer_T *inBuf, LZSS_OutputBuffer_T *outBuf);

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#endif /* __SYSSERVICE_CMPR1_FORD_H__ */

/***********************************************************************************************************************
 *  END OF FILE: CMPR.H
 **********************************************************************************************************************/
