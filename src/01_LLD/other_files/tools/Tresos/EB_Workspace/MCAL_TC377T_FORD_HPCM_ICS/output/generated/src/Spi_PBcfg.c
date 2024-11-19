
/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2020)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Spi_PBCfg.c                                                   **
**                                                                            **
**  VERSION   : 17.0.0                                                        **
**                                                                            **
**  DATE, TIME: 2024-01-31, 17:30:33  !!!IGNORE-LINE!!!                   **
**                                                                            **
**  GENERATOR : Build b191017-0938      !!!IGNORE-LINE!!!                   **
**                                                                            **
**  BSW MODULE DECRIPTION : Spi.bmd                                           **
**                                                                            **
**  VARIANT   : Variant PB                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Spi configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of Spi Driver, AUTOSAR Release 4.2.2     **
**                     Specification of Spi Driver, AUTOSAR Release 4.4.0     **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
/* Module header file */
#include "Spi.h"
/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/
/* MISRA2012_RULE_4_9_JUSTIFICATION: More readble as macros. Code coplexity
reduces as well. */
#define Spi_BaudRateAndClockParam(TQ,LB,Q,A,B,C,CPH,CPOL,PAREN)                \
(                                                                  \
(uint32)(                                                         \
((uint32)TQ << 16U)|((uint32)LB << 30U)|((uint32)Q)|\
((uint32)A << 6U)|((uint32)B << 8U)|         \
((uint32)C << 10U)|((uint32)CPH << 12U)|        \
((uint32)CPOL << 13U)|((uint32)PAREN << 14U)     \
)                                                         \
)
/* MISRA2012_RULE_4_9_JUSTIFICATION: More readble as macros. Code coplexity
reduces as well. */
#define Spi_IdleLeadTrailParam(IPRE,IDLE,LPRE,LEAD,TPRE,TRAIL,PARTYP)          \
(                                                                  \
(uint32)(                                                         \
((uint32)IPRE << 1U)|((uint32)IDLE << 4U)|    \
((uint32)LPRE << 7U)|((uint32)LEAD << 10U)|   \
((uint32)TPRE << 13U)|((uint32)TRAIL << 16U)| \
((uint32)PARTYP << 19U)            \
)                                                         \
)
/*******************************************************************************
**                      Extern Declaration                                    **
*******************************************************************************/
/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/
/******************* GLOBAL CONFIGURATION MEMMAP SECTION *********************/

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32

/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
    
          
            
  /*Sequence Index Lookup*/
  static const uint8 SequenceLookupIndex[71] =
{
  /* Physical index value for Sequence SpiConf_SpiSequence_EEPROM_CMD Sequence ID 0 */
  0U,
    /* Physical index value for Sequence SpiConf_SpiSequence_EEPROM_CMD2 Sequence ID 1 */
  1U,
    /* Physical index value for Sequence SpiConf_SpiSequence_EEPROM_READ Sequence ID 2 */
  2U,
    /* Physical index value for Sequence SpiConf_SpiSequence_EEPROM_WRITE Sequence ID 3 */
  3U,
    /* Physical index value for Sequence SpiConf_SpiSequence_TLF35585 Sequence ID 4 */
  4U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_RD_DATA Sequence ID 5 */
  5U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_WR_RA Sequence ID 6 */
  6U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_WRL Sequence ID 7 */
  7U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_WRH Sequence ID 8 */
  8U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_CFG_LCK Sequence ID 9 */
  9U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_EN_CFG Sequence ID 10 */
  10U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_SW_RST Sequence ID 11 */
  11U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_NOP Sequence ID 12 */
  12U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_WR_CA Sequence ID 13 */
  13U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_ADD_DIS Sequence ID 14 */
  14U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver1_ADD_EN Sequence ID 15 */
  15U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_RD_DATA Sequence ID 16 */
  16U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_WR_RA Sequence ID 17 */
  17U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_WRL Sequence ID 18 */
  18U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_WRH Sequence ID 19 */
  19U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_CFG_LCK Sequence ID 20 */
  20U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_EN_CFG Sequence ID 21 */
  21U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_SW_RST Sequence ID 22 */
  22U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_NOP Sequence ID 23 */
  23U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_WR_CA Sequence ID 24 */
  24U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_ADD_DIS Sequence ID 25 */
  25U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver2_ADD_EN Sequence ID 26 */
  26U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_RD_DATA Sequence ID 27 */
  27U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_WR_RA Sequence ID 28 */
  28U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_WRL Sequence ID 29 */
  29U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_WRH Sequence ID 30 */
  30U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_CFG_LCK Sequence ID 31 */
  31U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_EN_CFG Sequence ID 32 */
  32U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_SW_RST Sequence ID 33 */
  33U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_NOP Sequence ID 34 */
  34U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_WR_CA Sequence ID 35 */
  35U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_ADD_DIS Sequence ID 36 */
  36U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver3_ADD_EN Sequence ID 37 */
  37U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_RD_DATA Sequence ID 38 */
  38U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_WR_RA Sequence ID 39 */
  39U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_WRL Sequence ID 40 */
  40U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_WRH Sequence ID 41 */
  41U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_CFG_LCK Sequence ID 42 */
  42U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_EN_CFG Sequence ID 43 */
  43U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_SW_RST Sequence ID 44 */
  44U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_NOP Sequence ID 45 */
  45U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_WR_CA Sequence ID 46 */
  46U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_ADD_DIS Sequence ID 47 */
  47U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver4_ADD_EN Sequence ID 48 */
  48U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_RD_DATA Sequence ID 49 */
  49U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_WR_RA Sequence ID 50 */
  50U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_WRL Sequence ID 51 */
  51U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_WRH Sequence ID 52 */
  52U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_CFG_LCK Sequence ID 53 */
  53U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_EN_CFG Sequence ID 54 */
  54U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_SW_RST Sequence ID 55 */
  55U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_NOP Sequence ID 56 */
  56U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_WR_CA Sequence ID 57 */
  57U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_ADD_DIS Sequence ID 58 */
  58U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver5_ADD_EN Sequence ID 59 */
  59U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_RD_DATA Sequence ID 60 */
  60U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_WR_RA Sequence ID 61 */
  61U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_WRL Sequence ID 62 */
  62U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_WRH Sequence ID 63 */
  63U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_CFG_LCK Sequence ID 64 */
  64U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_EN_CFG Sequence ID 65 */
  65U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_SW_RST Sequence ID 66 */
  66U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_NOP Sequence ID 67 */
  67U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_WR_CA Sequence ID 68 */
  68U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_ADD_DIS Sequence ID 69 */
  69U,
    /* Physical index value for Sequence SpiConf_SpiSequence_GateDriver6_ADD_EN Sequence ID 70 */
  70U  
};

  /*Job Index Lookup*/
static const uint16 JobLookupIndex[71] =
{
  /* Physical index value for Job SpiConf_SpiJob_EEPROM_CMD Job ID 0 */
  0U,
    /* Physical index value for Job SpiConf_SpiJob_EEPROM_CMD2 Job ID 1 */
  1U,
    /* Physical index value for Job SpiConf_SpiJob_EEPROM_READ Job ID 2 */
  2U,
    /* Physical index value for Job SpiConf_SpiJob_EEPROM_WRITE Job ID 3 */
  3U,
    /* Physical index value for Job SpiConf_SpiJob_TLF35585 Job ID 4 */
  4U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_RD_DATA Job ID 5 */
  5U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WR_RA Job ID 6 */
  6U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WRL Job ID 7 */
  7U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WRH Job ID 8 */
  8U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_CFG_LCK Job ID 9 */
  9U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_EN_CFG Job ID 10 */
  10U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_SW_RST Job ID 11 */
  11U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_NOP Job ID 12 */
  12U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WR_CA Job ID 13 */
  13U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_ADD_DIS Job ID 14 */
  14U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver1_ADD_EN Job ID 15 */
  15U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_RD_DATA Job ID 16 */
  16U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WR_RA Job ID 17 */
  17U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WRL Job ID 18 */
  18U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WRH Job ID 19 */
  19U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_CFG_LCK Job ID 20 */
  20U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_EN_CFG Job ID 21 */
  21U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_SW_RST Job ID 22 */
  22U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_NOP Job ID 23 */
  23U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WR_CA Job ID 24 */
  24U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_ADD_DIS Job ID 25 */
  25U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver2_ADD_EN Job ID 26 */
  26U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_RD_DATA Job ID 27 */
  27U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WR_RA Job ID 28 */
  28U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WRL Job ID 29 */
  29U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WRH Job ID 30 */
  30U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_CFG_LCK Job ID 31 */
  31U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_EN_CFG Job ID 32 */
  32U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_SW_RST Job ID 33 */
  33U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_NOP Job ID 34 */
  34U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WR_CA Job ID 35 */
  35U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_ADD_DIS Job ID 36 */
  36U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver3_ADD_EN Job ID 37 */
  37U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_RD_DATA Job ID 38 */
  38U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WR_RA Job ID 39 */
  39U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WRL Job ID 40 */
  40U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WRH Job ID 41 */
  41U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_CFG_LCK Job ID 42 */
  42U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_EN_CFG Job ID 43 */
  43U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_SW_RST Job ID 44 */
  44U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_NOP Job ID 45 */
  45U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WR_CA Job ID 46 */
  46U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_ADD_DIS Job ID 47 */
  47U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver4_ADD_EN Job ID 48 */
  48U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_RD_DATA Job ID 49 */
  49U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WR_RA Job ID 50 */
  50U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WRL Job ID 51 */
  51U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WRH Job ID 52 */
  52U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_CFG_LCK Job ID 53 */
  53U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_EN_CFG Job ID 54 */
  54U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_SW_RST Job ID 55 */
  55U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_NOP Job ID 56 */
  56U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WR_CA Job ID 57 */
  57U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_ADD_DIS Job ID 58 */
  58U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver5_ADD_EN Job ID 59 */
  59U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_RD_DATA Job ID 60 */
  60U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WR_RA Job ID 61 */
  61U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WRL Job ID 62 */
  62U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WRH Job ID 63 */
  63U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_CFG_LCK Job ID 64 */
  64U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_EN_CFG Job ID 65 */
  65U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_SW_RST Job ID 66 */
  66U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_NOP Job ID 67 */
  67U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WR_CA Job ID 68 */
  68U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_ADD_DIS Job ID 69 */
  69U,
    /* Physical index value for Job SpiConf_SpiJob_GateDriver6_ADD_EN Job ID 70 */
  70U  
};

  /*Channel Index Lookup*/
static const uint8 ChannelLookupIndex[70] =
{
  /* Physical index value for channel SpiConf_SpiChannel_EEPROM_8BIT channel ID 0 */
  2U,
    /* Physical index value for channel SpiConf_SpiChannel_EEPROM_16BIT channel ID 1 */
  1U,
    /* Physical index value for channel SpiConf_SpiChannel_TLF35585 channel ID 2 */
  3U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_RD_DATA channel ID 3 */
  36U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_WR_RA channel ID 4 */
  35U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_WRL channel ID 5 */
  34U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_WRH channel ID 6 */
  33U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_CFG_LCK channel ID 7 */
  32U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_EN_CFG channel ID 8 */
  31U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_SW_RST channel ID 9 */
  30U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_NOP channel ID 10 */
  29U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_WR_CA channel ID 11 */
  28U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_ADD_DIS channel ID 12 */
  27U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver1_ADD_EN channel ID 13 */
  26U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_RD_DATA channel ID 14 */
  25U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_WR_RA channel ID 15 */
  24U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_WRL channel ID 16 */
  23U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_WRH channel ID 17 */
  22U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_CFG_LCK channel ID 18 */
  21U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_EN_CFG channel ID 19 */
  20U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_SW_RST channel ID 20 */
  19U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_NOP channel ID 21 */
  18U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_WR_CA channel ID 22 */
  17U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_ADD_DIS channel ID 23 */
  16U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver2_ADD_EN channel ID 24 */
  15U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_RD_DATA channel ID 25 */
  14U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_WR_RA channel ID 26 */
  13U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_WRL channel ID 27 */
  12U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_WRH channel ID 28 */
  11U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_CFG_LCK channel ID 29 */
  10U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_EN_CFG channel ID 30 */
  9U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_SW_RST channel ID 31 */
  8U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_NOP channel ID 32 */
  7U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_WR_CA channel ID 33 */
  6U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_ADD_DIS channel ID 34 */
  5U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver3_ADD_EN channel ID 35 */
  4U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_RD_DATA channel ID 36 */
  69U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_WR_RA channel ID 37 */
  68U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_WRL channel ID 38 */
  67U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_WRH channel ID 39 */
  66U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_CFG_LCK channel ID 40 */
  65U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_EN_CFG channel ID 41 */
  64U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_SW_RST channel ID 42 */
  63U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_NOP channel ID 43 */
  62U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_WR_CA channel ID 44 */
  61U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_ADD_DIS channel ID 45 */
  60U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver4_ADD_EN channel ID 46 */
  59U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_RD_DATA channel ID 47 */
  58U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_WR_RA channel ID 48 */
  57U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_WRL channel ID 49 */
  56U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_WRH channel ID 50 */
  55U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_CFG_LCK channel ID 51 */
  54U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_EN_CFG channel ID 52 */
  53U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_SW_RST channel ID 53 */
  52U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_NOP channel ID 54 */
  51U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_WR_CA channel ID 55 */
  50U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_ADD_DIS channel ID 56 */
  49U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver5_ADD_EN channel ID 57 */
  48U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_RD_DATA channel ID 58 */
  47U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_WR_RA channel ID 59 */
  46U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_WRL channel ID 60 */
  45U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_WRH channel ID 61 */
  44U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_CFG_LCK channel ID 62 */
  43U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_EN_CFG channel ID 63 */
  42U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_SW_RST channel ID 64 */
  41U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_NOP channel ID 65 */
  40U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_WR_CA channel ID 66 */
  39U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_ADD_DIS channel ID 67 */
  38U,
    /* Physical index value for channel SpiConf_SpiChannel_GateDriver6_ADD_EN channel ID 68 */
  37U,
    /* Physical index value for channel SpiConf_SpiChannel_EEPROM_32BIT channel ID 69 */
  0U  
};

  /* Linked list for the Job[s] assigned to the sequence[s] Physical*/

static const Spi_JobType SpiConf_SpiSequence_EEPROM_CMD_JobLinkPtr_Physical[] =
{
  0U, /* Physical index value for Job SpiConf_SpiJob_EEPROM_CMD Job ID 0 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_EEPROM_CMD2_JobLinkPtr_Physical[] =
{
  1U, /* Physical index value for Job SpiConf_SpiJob_EEPROM_CMD2 Job ID 1 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_EEPROM_READ_JobLinkPtr_Physical[] =
{
  2U, /* Physical index value for Job SpiConf_SpiJob_EEPROM_READ Job ID 2 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_EEPROM_WRITE_JobLinkPtr_Physical[] =
{
  3U, /* Physical index value for Job SpiConf_SpiJob_EEPROM_WRITE Job ID 3 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_TLF35585_JobLinkPtr_Physical[] =
{
  4U, /* Physical index value for Job SpiConf_SpiJob_TLF35585 Job ID 4 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_RD_DATA_JobLinkPtr_Physical[] =
{
  5U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_RD_DATA Job ID 5 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_WR_RA_JobLinkPtr_Physical[] =
{
  6U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WR_RA Job ID 6 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_WRL_JobLinkPtr_Physical[] =
{
  7U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WRL Job ID 7 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_WRH_JobLinkPtr_Physical[] =
{
  8U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WRH Job ID 8 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_CFG_LCK_JobLinkPtr_Physical[] =
{
  9U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_CFG_LCK Job ID 9 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_EN_CFG_JobLinkPtr_Physical[] =
{
  10U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_EN_CFG Job ID 10 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_SW_RST_JobLinkPtr_Physical[] =
{
  11U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_SW_RST Job ID 11 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_NOP_JobLinkPtr_Physical[] =
{
  12U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_NOP Job ID 12 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_WR_CA_JobLinkPtr_Physical[] =
{
  13U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_WR_CA Job ID 13 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_ADD_DIS_JobLinkPtr_Physical[] =
{
  14U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_ADD_DIS Job ID 14 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver1_ADD_EN_JobLinkPtr_Physical[] =
{
  15U, /* Physical index value for Job SpiConf_SpiJob_GateDriver1_ADD_EN Job ID 15 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_RD_DATA_JobLinkPtr_Physical[] =
{
  16U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_RD_DATA Job ID 16 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_WR_RA_JobLinkPtr_Physical[] =
{
  17U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WR_RA Job ID 17 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_WRL_JobLinkPtr_Physical[] =
{
  18U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WRL Job ID 18 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_WRH_JobLinkPtr_Physical[] =
{
  19U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WRH Job ID 19 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_CFG_LCK_JobLinkPtr_Physical[] =
{
  20U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_CFG_LCK Job ID 20 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_EN_CFG_JobLinkPtr_Physical[] =
{
  21U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_EN_CFG Job ID 21 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_SW_RST_JobLinkPtr_Physical[] =
{
  22U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_SW_RST Job ID 22 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_NOP_JobLinkPtr_Physical[] =
{
  23U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_NOP Job ID 23 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_WR_CA_JobLinkPtr_Physical[] =
{
  24U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_WR_CA Job ID 24 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_ADD_DIS_JobLinkPtr_Physical[] =
{
  25U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_ADD_DIS Job ID 25 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver2_ADD_EN_JobLinkPtr_Physical[] =
{
  26U, /* Physical index value for Job SpiConf_SpiJob_GateDriver2_ADD_EN Job ID 26 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_RD_DATA_JobLinkPtr_Physical[] =
{
  27U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_RD_DATA Job ID 27 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_WR_RA_JobLinkPtr_Physical[] =
{
  28U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WR_RA Job ID 28 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_WRL_JobLinkPtr_Physical[] =
{
  29U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WRL Job ID 29 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_WRH_JobLinkPtr_Physical[] =
{
  30U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WRH Job ID 30 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_CFG_LCK_JobLinkPtr_Physical[] =
{
  31U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_CFG_LCK Job ID 31 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_EN_CFG_JobLinkPtr_Physical[] =
{
  32U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_EN_CFG Job ID 32 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_SW_RST_JobLinkPtr_Physical[] =
{
  33U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_SW_RST Job ID 33 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_NOP_JobLinkPtr_Physical[] =
{
  34U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_NOP Job ID 34 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_WR_CA_JobLinkPtr_Physical[] =
{
  35U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_WR_CA Job ID 35 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_ADD_DIS_JobLinkPtr_Physical[] =
{
  36U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_ADD_DIS Job ID 36 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver3_ADD_EN_JobLinkPtr_Physical[] =
{
  37U, /* Physical index value for Job SpiConf_SpiJob_GateDriver3_ADD_EN Job ID 37 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_RD_DATA_JobLinkPtr_Physical[] =
{
  38U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_RD_DATA Job ID 38 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_WR_RA_JobLinkPtr_Physical[] =
{
  39U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WR_RA Job ID 39 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_WRL_JobLinkPtr_Physical[] =
{
  40U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WRL Job ID 40 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_WRH_JobLinkPtr_Physical[] =
{
  41U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WRH Job ID 41 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_CFG_LCK_JobLinkPtr_Physical[] =
{
  42U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_CFG_LCK Job ID 42 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_EN_CFG_JobLinkPtr_Physical[] =
{
  43U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_EN_CFG Job ID 43 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_SW_RST_JobLinkPtr_Physical[] =
{
  44U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_SW_RST Job ID 44 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_NOP_JobLinkPtr_Physical[] =
{
  45U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_NOP Job ID 45 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_WR_CA_JobLinkPtr_Physical[] =
{
  46U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_WR_CA Job ID 46 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_ADD_DIS_JobLinkPtr_Physical[] =
{
  47U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_ADD_DIS Job ID 47 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver4_ADD_EN_JobLinkPtr_Physical[] =
{
  48U, /* Physical index value for Job SpiConf_SpiJob_GateDriver4_ADD_EN Job ID 48 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_RD_DATA_JobLinkPtr_Physical[] =
{
  49U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_RD_DATA Job ID 49 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_WR_RA_JobLinkPtr_Physical[] =
{
  50U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WR_RA Job ID 50 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_WRL_JobLinkPtr_Physical[] =
{
  51U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WRL Job ID 51 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_WRH_JobLinkPtr_Physical[] =
{
  52U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WRH Job ID 52 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_CFG_LCK_JobLinkPtr_Physical[] =
{
  53U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_CFG_LCK Job ID 53 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_EN_CFG_JobLinkPtr_Physical[] =
{
  54U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_EN_CFG Job ID 54 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_SW_RST_JobLinkPtr_Physical[] =
{
  55U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_SW_RST Job ID 55 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_NOP_JobLinkPtr_Physical[] =
{
  56U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_NOP Job ID 56 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_WR_CA_JobLinkPtr_Physical[] =
{
  57U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_WR_CA Job ID 57 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_ADD_DIS_JobLinkPtr_Physical[] =
{
  58U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_ADD_DIS Job ID 58 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver5_ADD_EN_JobLinkPtr_Physical[] =
{
  59U, /* Physical index value for Job SpiConf_SpiJob_GateDriver5_ADD_EN Job ID 59 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_RD_DATA_JobLinkPtr_Physical[] =
{
  60U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_RD_DATA Job ID 60 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_WR_RA_JobLinkPtr_Physical[] =
{
  61U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WR_RA Job ID 61 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_WRL_JobLinkPtr_Physical[] =
{
  62U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WRL Job ID 62 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_WRH_JobLinkPtr_Physical[] =
{
  63U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WRH Job ID 63 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_CFG_LCK_JobLinkPtr_Physical[] =
{
  64U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_CFG_LCK Job ID 64 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_EN_CFG_JobLinkPtr_Physical[] =
{
  65U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_EN_CFG Job ID 65 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_SW_RST_JobLinkPtr_Physical[] =
{
  66U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_SW_RST Job ID 66 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_NOP_JobLinkPtr_Physical[] =
{
  67U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_NOP Job ID 67 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_WR_CA_JobLinkPtr_Physical[] =
{
  68U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_WR_CA Job ID 68 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_ADD_DIS_JobLinkPtr_Physical[] =
{
  69U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_ADD_DIS Job ID 69 */
  
  SPI_JOB_DELIMITER
};

static const Spi_JobType SpiConf_SpiSequence_GateDriver6_ADD_EN_JobLinkPtr_Physical[] =
{
  70U, /* Physical index value for Job SpiConf_SpiJob_GateDriver6_ADD_EN Job ID 70 */
  
  SPI_JOB_DELIMITER
};
  /* Linked list for the channel[s] assigned to the job[s] Physical */

static const Spi_ChannelType SpiConf_SpiJob_EEPROM_CMD_ChannelLinkPtr_Physical[] =
{
  2U, /* Physical index value for Channel SpiConf_SpiChannel_EEPROM_8BIT Channel ID 0 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_EEPROM_CMD2_ChannelLinkPtr_Physical[] =
{
  1U, /* Physical index value for Channel SpiConf_SpiChannel_EEPROM_16BIT Channel ID 1 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_EEPROM_READ_ChannelLinkPtr_Physical[] =
{
  0U, /* Physical index value for Channel SpiConf_SpiChannel_EEPROM_32BIT Channel ID 69 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_EEPROM_WRITE_ChannelLinkPtr_Physical[] =
{
  0U, /* Physical index value for Channel SpiConf_SpiChannel_EEPROM_32BIT Channel ID 69 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_TLF35585_ChannelLinkPtr_Physical[] =
{
  3U, /* Physical index value for Channel SpiConf_SpiChannel_TLF35585 Channel ID 2 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_RD_DATA_ChannelLinkPtr_Physical[] =
{
  36U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_RD_DATA Channel ID 3 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_WR_RA_ChannelLinkPtr_Physical[] =
{
  35U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_WR_RA Channel ID 4 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_WRL_ChannelLinkPtr_Physical[] =
{
  34U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_WRL Channel ID 5 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_WRH_ChannelLinkPtr_Physical[] =
{
  33U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_WRH Channel ID 6 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  32U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_CFG_LCK Channel ID 7 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_EN_CFG_ChannelLinkPtr_Physical[] =
{
  31U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_EN_CFG Channel ID 8 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_SW_RST_ChannelLinkPtr_Physical[] =
{
  30U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_SW_RST Channel ID 9 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_NOP_ChannelLinkPtr_Physical[] =
{
  29U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_NOP Channel ID 10 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_WR_CA_ChannelLinkPtr_Physical[] =
{
  28U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_WR_CA Channel ID 11 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  27U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_ADD_DIS Channel ID 12 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver1_ADD_EN_ChannelLinkPtr_Physical[] =
{
  26U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver1_ADD_EN Channel ID 13 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_RD_DATA_ChannelLinkPtr_Physical[] =
{
  25U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_RD_DATA Channel ID 14 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_WR_RA_ChannelLinkPtr_Physical[] =
{
  24U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_WR_RA Channel ID 15 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_WRL_ChannelLinkPtr_Physical[] =
{
  23U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_WRL Channel ID 16 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_WRH_ChannelLinkPtr_Physical[] =
{
  22U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_WRH Channel ID 17 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  21U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_CFG_LCK Channel ID 18 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_EN_CFG_ChannelLinkPtr_Physical[] =
{
  20U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_EN_CFG Channel ID 19 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_SW_RST_ChannelLinkPtr_Physical[] =
{
  19U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_SW_RST Channel ID 20 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_NOP_ChannelLinkPtr_Physical[] =
{
  18U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_NOP Channel ID 21 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_WR_CA_ChannelLinkPtr_Physical[] =
{
  17U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_WR_CA Channel ID 22 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  16U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_ADD_DIS Channel ID 23 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver2_ADD_EN_ChannelLinkPtr_Physical[] =
{
  15U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver2_ADD_EN Channel ID 24 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_RD_DATA_ChannelLinkPtr_Physical[] =
{
  14U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_RD_DATA Channel ID 25 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_WR_RA_ChannelLinkPtr_Physical[] =
{
  13U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_WR_RA Channel ID 26 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_WRL_ChannelLinkPtr_Physical[] =
{
  12U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_WRL Channel ID 27 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_WRH_ChannelLinkPtr_Physical[] =
{
  11U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_WRH Channel ID 28 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  10U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_CFG_LCK Channel ID 29 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_EN_CFG_ChannelLinkPtr_Physical[] =
{
  9U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_EN_CFG Channel ID 30 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_SW_RST_ChannelLinkPtr_Physical[] =
{
  8U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_SW_RST Channel ID 31 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_NOP_ChannelLinkPtr_Physical[] =
{
  7U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_NOP Channel ID 32 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_WR_CA_ChannelLinkPtr_Physical[] =
{
  6U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_WR_CA Channel ID 33 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  5U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_ADD_DIS Channel ID 34 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver3_ADD_EN_ChannelLinkPtr_Physical[] =
{
  4U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver3_ADD_EN Channel ID 35 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_RD_DATA_ChannelLinkPtr_Physical[] =
{
  69U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_RD_DATA Channel ID 36 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_WR_RA_ChannelLinkPtr_Physical[] =
{
  68U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_WR_RA Channel ID 37 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_WRL_ChannelLinkPtr_Physical[] =
{
  67U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_WRL Channel ID 38 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_WRH_ChannelLinkPtr_Physical[] =
{
  66U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_WRH Channel ID 39 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  65U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_CFG_LCK Channel ID 40 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_EN_CFG_ChannelLinkPtr_Physical[] =
{
  64U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_EN_CFG Channel ID 41 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_SW_RST_ChannelLinkPtr_Physical[] =
{
  63U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_SW_RST Channel ID 42 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_NOP_ChannelLinkPtr_Physical[] =
{
  62U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_NOP Channel ID 43 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_WR_CA_ChannelLinkPtr_Physical[] =
{
  61U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_WR_CA Channel ID 44 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  60U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_ADD_DIS Channel ID 45 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver4_ADD_EN_ChannelLinkPtr_Physical[] =
{
  59U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver4_ADD_EN Channel ID 46 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_RD_DATA_ChannelLinkPtr_Physical[] =
{
  58U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_RD_DATA Channel ID 47 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_WR_RA_ChannelLinkPtr_Physical[] =
{
  57U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_WR_RA Channel ID 48 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_WRL_ChannelLinkPtr_Physical[] =
{
  56U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_WRL Channel ID 49 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_WRH_ChannelLinkPtr_Physical[] =
{
  55U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_WRH Channel ID 50 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  54U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_CFG_LCK Channel ID 51 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_EN_CFG_ChannelLinkPtr_Physical[] =
{
  53U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_EN_CFG Channel ID 52 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_SW_RST_ChannelLinkPtr_Physical[] =
{
  52U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_SW_RST Channel ID 53 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_NOP_ChannelLinkPtr_Physical[] =
{
  51U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_NOP Channel ID 54 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_WR_CA_ChannelLinkPtr_Physical[] =
{
  50U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_WR_CA Channel ID 55 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  49U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_ADD_DIS Channel ID 56 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver5_ADD_EN_ChannelLinkPtr_Physical[] =
{
  48U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver5_ADD_EN Channel ID 57 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_RD_DATA_ChannelLinkPtr_Physical[] =
{
  47U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_RD_DATA Channel ID 58 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_WR_RA_ChannelLinkPtr_Physical[] =
{
  46U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_WR_RA Channel ID 59 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_WRL_ChannelLinkPtr_Physical[] =
{
  45U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_WRL Channel ID 60 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_WRH_ChannelLinkPtr_Physical[] =
{
  44U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_WRH Channel ID 61 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_CFG_LCK_ChannelLinkPtr_Physical[] =
{
  43U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_CFG_LCK Channel ID 62 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_EN_CFG_ChannelLinkPtr_Physical[] =
{
  42U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_EN_CFG Channel ID 63 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_SW_RST_ChannelLinkPtr_Physical[] =
{
  41U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_SW_RST Channel ID 64 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_NOP_ChannelLinkPtr_Physical[] =
{
  40U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_NOP Channel ID 65 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_WR_CA_ChannelLinkPtr_Physical[] =
{
  39U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_WR_CA Channel ID 66 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_ADD_DIS_ChannelLinkPtr_Physical[] =
{
  38U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_ADD_DIS Channel ID 67 */
  
  SPI_CHANNEL_DELIMITER
};

static const Spi_ChannelType SpiConf_SpiJob_GateDriver6_ADD_EN_ChannelLinkPtr_Physical[] =
{
  37U, /* Physical index value for Channel SpiConf_SpiChannel_GateDriver6_ADD_EN Channel ID 68 */
  
  SPI_CHANNEL_DELIMITER
};
    /* Linked list of sequence[s] with Job[s] shared  */
static const Spi_SequenceType SpiConf_SpiSequence_EEPROM_CMD_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_EEPROM_CMD2_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_EEPROM_READ_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_EEPROM_WRITE_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_TLF35585_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver1_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver2_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver3_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver4_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver5_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_RD_DATA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_WR_RA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_WRL_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_WRH_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_CFG_LCK_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_EN_CFG_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_SW_RST_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_NOP_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_WR_CA_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_ADD_DIS_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};

static const Spi_SequenceType SpiConf_SpiSequence_GateDriver6_ADD_EN_SeqSharePtr[] =
{
  SPI_SEQUENCE_DELIMITER
};


/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/******************* GLOBAL CONFIGURATION MEMMAP SECTION *********************/
  
    
 /******************* CORE0 SEQUENCE CONFIGURATION MEMMAP SECTION *************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"

static const Spi_SequenceConfigType Spi_kSequenceConfig_Core0[] =
{
        /* Sequence:SpiConf_SpiSequence_EEPROM_CMD */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_CMD,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_EEPROM_CMD_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_EEPROM_CMD_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000001)*/
    0x01U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_EEPROM_CMD2 */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_CMD2,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_EEPROM_CMD2_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_EEPROM_CMD2_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000001)*/
    0x01U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_EEPROM_READ */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_READ,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_EEPROM_READ_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_EEPROM_READ_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000001)*/
    0x01U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_EEPROM_WRITE */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_WRITE,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_EEPROM_WRITE_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_EEPROM_WRITE_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000001)*/
    0x01U,
        
                    0U /* Sync Sequence */
                  },
    /* Synchronous Sequence[s] */
    /* Sequence:SpiConf_SpiSequence_TLF35585 */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_TLF35585,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_TLF35585_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_TLF35585_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000010)*/
    0x02U,
        
                    0U /* Sync Sequence */
                  },
    /* Synchronous Sequence[s] */
    /* Sequence:SpiConf_SpiSequence_GateDriver1_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver1_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver1_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver1_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver1_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver2_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver2_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver2_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver2_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver3_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver3_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver3_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver3_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000011)*/
    0x03U,
        
                    0U /* Sync Sequence */
                  },
    /* Synchronous Sequence[s] */
    /* Sequence:SpiConf_SpiSequence_GateDriver4_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver4_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver4_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver4_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver4_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver5_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver5_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver5_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver5_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_RD_DATA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_RD_DATA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_RD_DATA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_RD_DATA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_WR_RA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WR_RA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_WR_RA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_WR_RA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_WRL */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WRL,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_WRL_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_WRL_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_WRH */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WRH,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_WRH_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_WRH_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_CFG_LCK */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_CFG_LCK,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_CFG_LCK_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_CFG_LCK_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_EN_CFG */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_EN_CFG,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_EN_CFG_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_EN_CFG_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_SW_RST */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_SW_RST,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_SW_RST_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_SW_RST_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_NOP */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_NOP,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_NOP_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_NOP_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_WR_CA */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_WR_CA,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_WR_CA_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_WR_CA_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_ADD_DIS */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_ADD_DIS,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_ADD_DIS_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_ADD_DIS_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  },
  /* Sequence:SpiConf_SpiSequence_GateDriver6_ADD_EN */
  {
    SpiConf_SpiSequence_SpiConf_SpiSequence_GateDriver6_ADD_EN,
    /* Notification function */
    NULL_PTR,
    /* Job linked list */
    SpiConf_SpiSequence_GateDriver6_ADD_EN_JobLinkPtr_Physical,
    /* Seq linked list, with jobs shared */
    SpiConf_SpiSequence_GateDriver6_ADD_EN_SeqSharePtr,
    /* No. of jobs in Seq */
    1U,
        /* Hw Module Used (b000100)*/
    0x04U,
        
                    0U /* Sync Sequence */
                  }};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 SEQUENCE CONFIGURATION MEMMAP SECTION END *************/
    
    
    
/******************* CORE0 JOB CONFIGURATION MEMMAP SECTION *************/

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"

static const Spi_JobConfigType Spi_kJobConfig_Core0[] =
{
      /* Synchronous Job[s] */
  /* Job:SpiConf_SpiJob_EEPROM_CMD */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_EEPROM_CMD,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (0U), (0U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (0U), (0U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (0U), (0U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_EEPROM_CMD_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    SPI_CS_VIA_HW_OR_NONE,   /* CS_VIA_HW */
    (uint8)3U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL8 << 4U)|SPI_QSPI1_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_EEPROM_CMD2 */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_EEPROM_CMD2,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (0U), (0U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (0U), (0U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (0U), (0U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_EEPROM_CMD2_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    SPI_CS_VIA_HW_OR_NONE,   /* CS_VIA_HW */
    (uint8)3U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL8 << 4U)|SPI_QSPI1_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_EEPROM_READ */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_EEPROM_READ,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (0U), (0U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (0U), (0U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (0U), (0U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_EEPROM_READ_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    SPI_CS_VIA_HW_OR_NONE,   /* CS_VIA_HW */
    (uint8)3U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL8 << 4U)|SPI_QSPI1_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_EEPROM_WRITE */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_EEPROM_WRITE,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (0U), (0U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (0U), (0U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (0U), (0U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_EEPROM_WRITE_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    SPI_CS_VIA_HW_OR_NONE,   /* CS_VIA_HW */
    (uint8)3U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL8 << 4U)|SPI_QSPI1_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Synchronous Job[s] */
  /* Job:SpiConf_SpiJob_TLF35585 */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_TLF35585,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1333333.3333333333Hz */
    (0x04U), (0x00U),          /* TQ , LoopBack */
    (0x02U), (0x02U),          /*  Q , A        */
    (0x00U), (0x02U),          /*  B , C        */
    (0x00U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_TLF35585_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((14U << 4U)|(2U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL1 << 4U)|SPI_QSPI2_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Synchronous Job[s] */
  /* Job:SpiConf_SpiJob_GateDriver1_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver1_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver1_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver1_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(9U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver2_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver2_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver2_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(10U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver3_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver3_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver3_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((11U << 4U)|(11U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI3_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Synchronous Job[s] */
  /* Job:SpiConf_SpiJob_GateDriver4_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver4_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver4_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver4_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(1U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver5_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver5_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver5_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(3U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_RD_DATA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_RD_DATA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_RD_DATA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_WR_RA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_WR_RA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_WR_RA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_WRL */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_WRL,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_WRL_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_WRH */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_WRH,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_WRH_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_CFG_LCK */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_CFG_LCK,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_CFG_LCK_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_EN_CFG */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_EN_CFG,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_EN_CFG_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_SW_RST */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_SW_RST,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_SW_RST_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_NOP */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_NOP,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_NOP_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_WR_CA */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_WR_CA,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_WR_CA_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_ADD_DIS */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_ADD_DIS,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_ADD_DIS_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  },
  /* Job:SpiConf_SpiJob_GateDriver6_ADD_EN */
  {
    SpiConf_SpiJob_SpiConf_SpiJob_GateDriver6_ADD_EN,
    NULL_PTR,                   /* No Notification function */
    Spi_BaudRateAndClockParam(  /* Baudrate = 1000000.0Hz */
    (0x18U), (0x00U),          /* TQ , LoopBack */
    (0x01U), (0x00U),          /*  Q , A        */
    (0x00U), (0x01U),          /*  B , C        */
    (0x01U), (0x00U),          /*  CPH , CPOL   */
    (0x00U)                    /*  PAREN        */
    ),
  Spi_IdleLeadTrailParam(
    (2U), (4U), /* IPRE,IDLE:   IdleA/B delay = 1.0E-8s */
    (3U), (4U), /* LPRE,LEAD:   Lead delay    = 1.0E-8s */
    (3U), (4U),/* TPRE, TRAIL: Trail delay   = 1.0E-8s */
    (1U)
    ),
  SpiConf_SpiJob_GateDriver6_ADD_EN_ChannelLinkPtr_Physical, /* Channel linked list Physical*/
    (uint16)((33U << 4U)|(5U)), /* CS_VIA_GPIO */
    (uint8)0U,               /* Job Priority : 0...3*/
    (uint8)STD_LOW,              /* CS polarity */
    /* Chnl[bit:7:4],QSPI[3:0] */
    (uint8)((SPI_QSPI_CHANNEL0 << 4U)|SPI_QSPI4_INDEX),
    SPI_PARITY_UNUSED,        /* Parity support */
    (0U)                    /*Frame based CS is disabled*/
  }};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 JOB CONFIGURATION MemMap SECTION END *************/
    
    
    
/******************* CORE0 CHANNEL CONFIGURATION MEMMAP SECTION *************/

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"

static const Spi_ChannelConfigType Spi_kChannelConfig_Core0[] =
{
      /* EB Chnl[s] on QSPI1 sync core0*/
  /* Channel:SpiConf_SpiChannel_EEPROM_32BIT */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0xa0U,            /* MSB[7], DataWidth=32[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_32BIT
  },
  /* Channel:SpiConf_SpiChannel_EEPROM_16BIT */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_16BIT
  },
  /* Channel:SpiConf_SpiChannel_EEPROM_8BIT */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x88U,            /* MSB[7], DataWidth=8[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_8BIT
  },
  /* EB Chnl[s] on QSPI2 core0*/
  /* Channel:SpiConf_SpiChannel_TLF35585 */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_TLF35585
  },
  /* EB Chnl[s] on QSPI3 core0*/
  /* Channel:SpiConf_SpiChannel_GateDriver3_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver3_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver3_RD_DATA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver2_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver2_RD_DATA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver1_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver1_RD_DATA
  },
  /* EB Chnl[s] on QSPI4 core0*/
  /* Channel:SpiConf_SpiChannel_GateDriver6_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver6_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver6_RD_DATA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver5_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver5_RD_DATA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_ADD_EN */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_ADD_EN
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_ADD_DIS */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_ADD_DIS
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_WR_CA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WR_CA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_NOP */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_NOP
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_SW_RST */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_SW_RST
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_EN_CFG */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_EN_CFG
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_CFG_LCK */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_CFG_LCK
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_WRH */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WRH
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_WRL */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WRL
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_WR_RA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_WR_RA
  },
  /* Channel:SpiConf_SpiChannel_GateDriver4_RD_DATA */
  {
    0x00000000U,     /* Default data */
    0x1ffeU,         /* Number of Data Elements */
    SPI_EB_CHANNEL,  /* External Buffer Channel */
    0x90U,            /* MSB[7], DataWidth=16[6:0] */
    SpiConf_SpiChannel_SpiConf_SpiChannel_GateDriver4_RD_DATA
  }};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 JOB CONFIGURATION MemMap SECTION END *************/
    
    
      /******************* CORE0 QSPI1 CONFIGURATION MEMMAP SECTION *************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* QSPI1 */

static const Spi_QspiHwConfigType Spi_kQspiHwConfigQSPI1 =
{
  0x01000000U,               /* Active CS Level, SSOC SFR value */
  0U,                        /* Queue length can be ignored for Sync */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Tx Channel */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Rx Channel */
  0U,                        /* DMA TCS value can be ignored for Sync */
  SPI_CLK_SLEEP_DISABLE,     /* Module Sleep disabled */
  (uint8)0U,                 /* Input class, MRIS bit field in PISEL SFR */
  4U,                         /* Max Sequence Count on the QSPI */
  0U,  /* External Demultiplexer feature is disabled */
  0U /* SLSO0 Strobe delay */
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 QSPI1 CONFIGURATION MemMap SECTION END *************/
      /******************* CORE0 QSPI2 CONFIGURATION MEMMAP SECTION *************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* QSPI2 */

static const Spi_QspiHwConfigType Spi_kQspiHwConfigQSPI2 =
{
  0x00000000U,               /* Active CS Level, SSOC SFR value */
  0U,                        /* Queue length can be ignored for Sync */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Tx Channel */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Rx Channel */
  0U,                        /* DMA TCS value can be ignored for Sync */
  SPI_CLK_SLEEP_DISABLE,     /* Module Sleep disabled */
  (uint8)1U,                 /* Input class, MRIS bit field in PISEL SFR */
  1U,                         /* Max Sequence Count on the QSPI */
  0U,  /* External Demultiplexer feature is disabled */
  0U /* SLSO0 Strobe delay */
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 QSPI2 CONFIGURATION MemMap SECTION END *************/
      /******************* CORE0 QSPI3 CONFIGURATION MEMMAP SECTION *************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* QSPI3 */

static const Spi_QspiHwConfigType Spi_kQspiHwConfigQSPI3 =
{
  0x00000000U,               /* Active CS Level, SSOC SFR value */
  0U,                        /* Queue length can be ignored for Sync */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Tx Channel */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Rx Channel */
  0U,                        /* DMA TCS value can be ignored for Sync */
  SPI_CLK_SLEEP_DISABLE,     /* Module Sleep disabled */
  (uint8)1U,                 /* Input class, MRIS bit field in PISEL SFR */
  33U,                         /* Max Sequence Count on the QSPI */
  0U,  /* External Demultiplexer feature is disabled */
  0U /* SLSO0 Strobe delay */
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 QSPI3 CONFIGURATION MemMap SECTION END *************/
      /******************* CORE0 QSPI4 CONFIGURATION MEMMAP SECTION *************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* QSPI4 */

static const Spi_QspiHwConfigType Spi_kQspiHwConfigQSPI4 =
{
  0x00000000U,               /* Active CS Level, SSOC SFR value */
  0U,                        /* Queue length can be ignored for Sync */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Tx Channel */
  (uint8)SPI_DMA_CHNL_INVALID,   /* DMA Rx Channel */
  0U,                        /* DMA TCS value can be ignored for Sync */
  SPI_CLK_SLEEP_DISABLE,     /* Module Sleep disabled */
  (uint8)0U,                 /* Input class, MRIS bit field in PISEL SFR */
  33U,                         /* Max Sequence Count on the QSPI */
  0U,  /* External Demultiplexer feature is disabled */
  0U /* SLSO0 Strobe delay */
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 QSPI4 CONFIGURATION MemMap SECTION END *************/
                                                
/********************CORE0 RX/TX BUFFERS MEMMAP SECTION***********************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* Lookup table to hold the offset in buffer and total elements to be transferred for all IB channels.
Index - Represents channel number, 1st element - Offset in buffer, 2nd element - Total elements to be transmitted */

static const Spi_CoreChannelOffsetType Spi_ChannelOffsets_Core0[SPI_NUM_IB_CHANNELS_CORE0 +  SPI_NUM_EB_CHANNELS_CORE0 + 1U] =
{
  {0, 0},    /*SpiConf_SpiChannel_EEPROM_32BIT*/
  {0, 0},    /*SpiConf_SpiChannel_EEPROM_16BIT*/
  {0, 0},    /*SpiConf_SpiChannel_EEPROM_8BIT*/
  {0, 0},    /*SpiConf_SpiChannel_TLF35585*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver3_RD_DATA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver2_RD_DATA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver1_RD_DATA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver6_RD_DATA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver5_RD_DATA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_ADD_EN*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_ADD_DIS*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_WR_CA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_NOP*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_SW_RST*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_EN_CFG*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_CFG_LCK*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_WRH*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_WRL*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_WR_RA*/
  {0, 0},    /*SpiConf_SpiChannel_GateDriver4_RD_DATA*/
  {0xFFFF, 0xFFFF}
};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/********************CORE0 RX/TX BUFFERS MEMMAP SECTION***********************/
    
/******************* CORE0 Spi_Config_Core CONFIGURATION MEMMAP SECTION *************/

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/* MISRA2012_RULE_8_7_JUSTIFICATION: Spi_Config_Core0 is used outside
* of this file and therefore it is not declared as static */
/* MISRA2012_RULE_8_4_JUSTIFICATION: Agreed violation */

const Spi_CoreConfigType Spi_Config_Core0 =
{
  /* Sequence Configuration */
  Spi_kSequenceConfig_Core0,
  /* Job configuration */
  Spi_kJobConfig_Core0,
  /* Channel Configuration */
  Spi_kChannelConfig_Core0,
  Spi_ChannelOffsets_Core0,
  /* QSPI Hw configuration */
  {
    NULL_PTR,
    &Spi_kQspiHwConfigQSPI1,
    &Spi_kQspiHwConfigQSPI2,
    &Spi_kQspiHwConfigQSPI3,
    &Spi_kQspiHwConfigQSPI4,
  },
  /* Hw Map Index */      
  /*
  (000 QSPI not configured for core0)
  (001 QSPI configured as Sync for core0)
  (010 QSPI configured as Async for core0)
  (011 QSPI configured for core0)
  QSPI5 - 0
  QSPI4 - 1
  QSPI3 - 1
  QSPI2 - 1
  QSPI1 - 1
  QSPI0 - 0*/
  0x01248U,
  /* No. of Sequences configured */
  71U,
  /* No. of Jobs configured */
  71U,
  /* No. of Channels configured */
  70U
};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"
/***************** CORE0 Spi_Config_Core CONFIGURATION MemMap SECTION END *************/
          
    

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"

const Spi_ConfigType Spi_Config =
{
  {
    &Spi_Config_Core0,
    NULL_PTR,
    NULL_PTR
  },
  SequenceLookupIndex,
  JobLookupIndex,
  ChannelLookupIndex,
  /*Total number of Sequence*/
  71U,
  /*Total number of Jobs*/
  71U,
  /*Total number of Channels*/
  70U,
  /*Sync Delay*/
  65535U
};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: Identifiers declared in the same scope
shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: Macro identifiers shall be distinct
* because of AS naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: Identifiers shall be distinct from macro
names
* because of AS naming convention*/
#define SPI_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
/* MISRA2012_RULE_4_10_JUSTIFICATION: Spi_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: Declaration before #include,
* this is due to inclusion of memmap.h to specify the location to which
* the variable has to be placed. */
#include "Spi_MemMap.h"/* End Of File */
